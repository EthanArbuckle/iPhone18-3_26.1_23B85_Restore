void sub_1DB3CBD24(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v47;
  if (v47)
  {
    sub_1DB50B320();

    *&v47 = 0xD000000000000030;
    *(&v47 + 1) = 0x80000001DB52CEA0;
    v9 = sub_1DB50BEE0();
    MEMORY[0x1E1285C70](v9);

    v8(&v47);
    sub_1DB365724(v8);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    sub_1DB50B320();

    *&v47 = 0xD000000000000030;
    *(&v47 + 1) = 0x80000001DB52CEA0;
    v10 = sub_1DB50BEE0();
    MEMORY[0x1E1285C70](v10);

    v11 = v47;
    v12 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v13 = sub_1DB50B0F0();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v47 = v15;
      *v14 = 136446722;
      v16 = sub_1DB50B350();
      v18 = sub_1DB3D4EE8(v16, v17, &v47);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2050;
      *(v14 + 14) = a4;
      *(v14 + 22) = 2082;
      v19 = sub_1DB3D4EE8(v11, *(&v11 + 1), &v47);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_1DB2F5000, v13, v12, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v15, -1, -1);
      MEMORY[0x1E1288220](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v20 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1DB50EE90;
      v53 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v52 = MEMORY[0x1E69E6A70];
      *&v50 = a1;
      *(&v50 + 1) = a2;
      v51 = a3;
      sub_1DB301CDC(&v50, v46);
      v47 = 0u;
      v48 = 0u;
      sub_1DB301D4C(v46, &v47);
      v49 = 0;
      v23 = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1DB301BC0(0, *(v23 + 2) + 1, 1, v23);
        v53 = v23;
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1DB301BC0((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[40 * v25];
      v27 = v47;
      v28 = v48;
      v26[64] = v49;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      v53 = v23;
      sub_1DB301DBC(&v50);
      v29._countAndFlagsBits = 58;
      v29._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v52 = MEMORY[0x1E69E6810];
      *&v50 = a4;
      sub_1DB301CDC(&v50, v46);
      v47 = 0u;
      v48 = 0u;
      sub_1DB301D4C(v46, &v47);
      v49 = 0;
      v30 = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1DB301BC0(0, *(v30 + 2) + 1, 1, v30);
        v53 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1DB301BC0((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v47;
      v35 = v48;
      v33[64] = v49;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v53 = v30;
      sub_1DB301DBC(&v50);
      v36._countAndFlagsBits = 0xD00000000000001BLL;
      v36._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *&v47 = 0;
      *(&v47 + 1) = 0xE000000000000000;
      sub_1DB50B320();

      *&v47 = 0xD000000000000030;
      *(&v47 + 1) = 0x80000001DB52CEA0;
      v37 = sub_1DB50BEE0();
      MEMORY[0x1E1285C70](v37);

      v52 = MEMORY[0x1E69E6158];
      v50 = v47;
      sub_1DB301CDC(&v50, v46);
      v47 = 0u;
      v48 = 0u;
      sub_1DB301D4C(v46, &v47);
      v49 = 0;
      v38 = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1DB301BC0(0, *(v38 + 2) + 1, 1, v38);
      }

      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_1DB301BC0((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      v41 = &v38[40 * v40];
      v42 = v47;
      v43 = v48;
      v41[64] = v49;
      *(v41 + 2) = v42;
      *(v41 + 3) = v43;
      v53 = v38;
      sub_1DB301DBC(&v50);
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v44);
      *(v21 + 32) = v53;
      *&v47 = v20;
      LOBYTE(v50) = 0;
      OSLogger.log(contentsOf:withLevel:)(v21, &v50);
      goto LABEL_26;
    }

    sub_1DB50B320();

    v45 = sub_1DB50BEE0();
    MEMORY[0x1E1285C70](v45);

    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3CC438(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD00000000000001ALL;
    *(&v41 + 1) = 0x80000001DB52CD10;
    v8(&v41);
    sub_1DB365724(v8);
  }

  else
  {
    if (qword_1ECC420E8 != -1)
    {
      swift_once();
    }

    if (byte_1ECC44F38 == 1)
    {
      v9 = sub_1DB50AF30();
      sub_1DB3D6CE4();
      v10 = sub_1DB50B0F0();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1DB50B350();
        v15 = sub_1DB3D4EE8(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1DB3D4EE8(0xD00000000000001ALL, 0x80000001DB52CD10, &v41);
        _os_log_impl(&dword_1DB2F5000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E1288220](v12, -1, -1);
        MEMORY[0x1E1288220](v11, -1, -1);
      }
    }

    else if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v16 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1DB50EE90;
      v48 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1DB301CDC(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1DB301D4C(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1DB301BC0(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1DB301BC0((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1DB301DBC(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1DB301CDC(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1DB301D4C(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1DB301BC0(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1DB301BC0((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1DB301DBC(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD00000000000001ALL;
      v45 = 0x80000001DB52CD10;
      sub_1DB301CDC(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1DB301D4C(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1DB301BC0(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1DB301BC0((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1DB301DBC(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1DB50B580();
      __break(1u);
    }
  }
}

void sub_1DB3CCA10(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD000000000000022;
    *(&v41 + 1) = 0x80000001DB52CF10;
    v8(&v41);
    sub_1DB365724(v8);
  }

  else
  {
    if (qword_1ECC420E8 != -1)
    {
      swift_once();
    }

    if (byte_1ECC44F38 == 1)
    {
      v9 = sub_1DB50AF30();
      sub_1DB3D6CE4();
      v10 = sub_1DB50B0F0();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1DB50B350();
        v15 = sub_1DB3D4EE8(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1DB3D4EE8(0xD000000000000022, 0x80000001DB52CF10, &v41);
        _os_log_impl(&dword_1DB2F5000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E1288220](v12, -1, -1);
        MEMORY[0x1E1288220](v11, -1, -1);
      }
    }

    else if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v16 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1DB50EE90;
      v48 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1DB301CDC(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1DB301D4C(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1DB301BC0(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1DB301BC0((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1DB301DBC(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1DB301CDC(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1DB301D4C(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1DB301BC0(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1DB301BC0((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1DB301DBC(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD000000000000022;
      v45 = 0x80000001DB52CF10;
      sub_1DB301CDC(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1DB301D4C(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1DB301BC0(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1DB301BC0((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1DB301DBC(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1DB50B580();
      __break(1u);
    }
  }
}

void sub_1DB3CCFE8(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD000000000000019;
    *(&v41 + 1) = 0x80000001DB52AA80;
    v8(&v41);
    sub_1DB365724(v8);
  }

  else
  {
    if (qword_1ECC420E8 != -1)
    {
      swift_once();
    }

    if (byte_1ECC44F38 == 1)
    {
      v9 = sub_1DB50AF30();
      sub_1DB3D6CE4();
      v10 = sub_1DB50B0F0();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1DB50B350();
        v15 = sub_1DB3D4EE8(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1DB3D4EE8(0xD000000000000019, 0x80000001DB52AA80, &v41);
        _os_log_impl(&dword_1DB2F5000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E1288220](v12, -1, -1);
        MEMORY[0x1E1288220](v11, -1, -1);
      }
    }

    else if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v16 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1DB50EE90;
      v48 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1DB301CDC(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1DB301D4C(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1DB301BC0(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1DB301BC0((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1DB301DBC(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1DB301CDC(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1DB301D4C(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1DB301BC0(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1DB301BC0((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1DB301DBC(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD000000000000019;
      v45 = 0x80000001DB52AA80;
      sub_1DB301CDC(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1DB301D4C(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1DB301BC0(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1DB301BC0((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1DB301DBC(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1DB50B580();
      __break(1u);
    }
  }
}

void sub_1DB3CD5C0(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD000000000000027;
    *(&v41 + 1) = 0x80000001DB52CCC0;
    v8(&v41);
    sub_1DB365724(v8);
  }

  else
  {
    if (qword_1ECC420E8 != -1)
    {
      swift_once();
    }

    if (byte_1ECC44F38 == 1)
    {
      v9 = sub_1DB50AF30();
      sub_1DB3D6CE4();
      v10 = sub_1DB50B0F0();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1DB50B350();
        v15 = sub_1DB3D4EE8(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1DB3D4EE8(0xD000000000000027, 0x80000001DB52CCC0, &v41);
        _os_log_impl(&dword_1DB2F5000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E1288220](v12, -1, -1);
        MEMORY[0x1E1288220](v11, -1, -1);
      }
    }

    else if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v16 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1DB50EE90;
      v48 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1DB301CDC(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1DB301D4C(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1DB301BC0(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1DB301BC0((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1DB301DBC(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1DB301CDC(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1DB301D4C(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1DB301BC0(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1DB301BC0((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1DB301DBC(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD000000000000027;
      v45 = 0x80000001DB52CCC0;
      sub_1DB301CDC(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1DB301D4C(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1DB301BC0(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1DB301BC0((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1DB301DBC(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1DB50B580();
      __break(1u);
    }
  }
}

void sub_1DB3CDB98(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD000000000000034;
    *(&v41 + 1) = 0x80000001DB52CC40;
    v8(&v41);
    sub_1DB365724(v8);
  }

  else
  {
    if (qword_1ECC420E8 != -1)
    {
      swift_once();
    }

    if (byte_1ECC44F38 == 1)
    {
      v9 = sub_1DB50AF30();
      sub_1DB3D6CE4();
      v10 = sub_1DB50B0F0();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1DB50B350();
        v15 = sub_1DB3D4EE8(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1DB3D4EE8(0xD000000000000034, 0x80000001DB52CC40, &v41);
        _os_log_impl(&dword_1DB2F5000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E1288220](v12, -1, -1);
        MEMORY[0x1E1288220](v11, -1, -1);
      }
    }

    else if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v16 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1DB50EE90;
      v48 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1DB301CDC(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1DB301D4C(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1DB301BC0(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1DB301BC0((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1DB301DBC(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1DB301CDC(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1DB301D4C(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1DB301BC0(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1DB301BC0((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1DB301DBC(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD000000000000034;
      v45 = 0x80000001DB52CC40;
      sub_1DB301CDC(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1DB301D4C(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1DB301BC0(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1DB301BC0((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1DB301DBC(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1DB50B580();
      __break(1u);
    }
  }
}

void sub_1DB3CE170(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD000000000000032;
    *(&v41 + 1) = 0x80000001DB52CC80;
    v8(&v41);
    sub_1DB365724(v8);
  }

  else
  {
    if (qword_1ECC420E8 != -1)
    {
      swift_once();
    }

    if (byte_1ECC44F38 == 1)
    {
      v9 = sub_1DB50AF30();
      sub_1DB3D6CE4();
      v10 = sub_1DB50B0F0();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1DB50B350();
        v15 = sub_1DB3D4EE8(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1DB3D4EE8(0xD000000000000032, 0x80000001DB52CC80, &v41);
        _os_log_impl(&dword_1DB2F5000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E1288220](v12, -1, -1);
        MEMORY[0x1E1288220](v11, -1, -1);
      }
    }

    else if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v16 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1DB50EE90;
      v48 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1DB301CDC(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1DB301D4C(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1DB301BC0(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1DB301BC0((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1DB301DBC(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1DB301CDC(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1DB301D4C(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1DB301BC0(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1DB301BC0((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1DB301DBC(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD000000000000032;
      v45 = 0x80000001DB52CC80;
      sub_1DB301CDC(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1DB301D4C(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1DB301BC0(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1DB301BC0((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1DB301DBC(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1DB50B580();
      __break(1u);
    }
  }
}

void sub_1DB3CE748(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD00000000000002ALL;
    *(&v41 + 1) = 0x80000001DB52CEE0;
    v8(&v41);
    sub_1DB365724(v8);
  }

  else
  {
    if (qword_1ECC420E8 != -1)
    {
      swift_once();
    }

    if (byte_1ECC44F38 == 1)
    {
      v9 = sub_1DB50AF30();
      sub_1DB3D6CE4();
      v10 = sub_1DB50B0F0();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1DB50B350();
        v15 = sub_1DB3D4EE8(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1DB3D4EE8(0xD00000000000002ALL, 0x80000001DB52CEE0, &v41);
        _os_log_impl(&dword_1DB2F5000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E1288220](v12, -1, -1);
        MEMORY[0x1E1288220](v11, -1, -1);
      }
    }

    else if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v16 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1DB50EE90;
      v48 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1DB301CDC(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1DB301D4C(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1DB301BC0(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1DB301BC0((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1DB301DBC(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1DB301CDC(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1DB301D4C(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1DB301BC0(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1DB301BC0((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1DB301DBC(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD00000000000002ALL;
      v45 = 0x80000001DB52CEE0;
      sub_1DB301CDC(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1DB301D4C(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1DB301BC0(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1DB301BC0((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1DB301DBC(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1DB50B580();
      __break(1u);
    }
  }
}

void sub_1DB3CED20(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v43;
  if (v43)
  {
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD000000000000014, 0x80000001DB52CC20);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    v8(&v43);
    sub_1DB365724(v8);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD000000000000014, 0x80000001DB52CC20);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    v9 = v43;
    v10 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v11 = sub_1DB50B0F0();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v43 = v13;
      *v12 = 136446722;
      v14 = sub_1DB50B350();
      v16 = sub_1DB3D4EE8(v14, v15, &v43);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2050;
      *(v12 + 14) = a4;
      *(v12 + 22) = 2082;
      v17 = sub_1DB3D4EE8(v9, *(&v9 + 1), &v43);

      *(v12 + 24) = v17;
      _os_log_impl(&dword_1DB2F5000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v13, -1, -1);
      MEMORY[0x1E1288220](v12, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v18 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1DB50EE90;
      v49 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v20);
      v48 = MEMORY[0x1E69E6A70];
      *&v46 = a1;
      *(&v46 + 1) = a2;
      v47 = a3;
      sub_1DB301CDC(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1DB301D4C(v42, &v43);
      v45 = 0;
      v21 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1DB301BC0(0, *(v21 + 2) + 1, 1, v21);
        v49 = v21;
      }

      v23 = *(v21 + 2);
      v22 = *(v21 + 3);
      if (v23 >= v22 >> 1)
      {
        v21 = sub_1DB301BC0((v22 > 1), v23 + 1, 1, v21);
      }

      *(v21 + 2) = v23 + 1;
      v24 = &v21[40 * v23];
      v25 = v43;
      v26 = v44;
      v24[64] = v45;
      *(v24 + 2) = v25;
      *(v24 + 3) = v26;
      v49 = v21;
      sub_1DB301DBC(&v46);
      v27._countAndFlagsBits = 58;
      v27._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v27);
      v48 = MEMORY[0x1E69E6810];
      *&v46 = a4;
      sub_1DB301CDC(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1DB301D4C(v42, &v43);
      v45 = 0;
      v28 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1DB301BC0(0, *(v28 + 2) + 1, 1, v28);
        v49 = v28;
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_1DB301BC0((v29 > 1), v30 + 1, 1, v28);
      }

      *(v28 + 2) = v30 + 1;
      v31 = &v28[40 * v30];
      v32 = v43;
      v33 = v44;
      v31[64] = v45;
      *(v31 + 2) = v32;
      *(v31 + 3) = v33;
      v49 = v28;
      sub_1DB301DBC(&v46);
      v34._countAndFlagsBits = 0xD00000000000001BLL;
      v34._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v34);
      *&v43 = 0;
      *(&v43 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
      MEMORY[0x1E1285C70](0xD000000000000014, 0x80000001DB52CC20);
      MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

      MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

      v48 = MEMORY[0x1E69E6158];
      v46 = v43;
      sub_1DB301CDC(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1DB301D4C(v42, &v43);
      v45 = 0;
      v35 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1DB301BC0(0, *(v35 + 2) + 1, 1, v35);
        v49 = v35;
      }

      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      if (v37 >= v36 >> 1)
      {
        v35 = sub_1DB301BC0((v36 > 1), v37 + 1, 1, v35);
      }

      *(v35 + 2) = v37 + 1;
      v38 = &v35[40 * v37];
      v39 = v43;
      v40 = v44;
      v38[64] = v45;
      *(v38 + 2) = v39;
      *(v38 + 3) = v40;
      v49 = v35;
      sub_1DB301DBC(&v46);
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v41);
      *(v19 + 32) = v49;
      *&v43 = v18;
      LOBYTE(v46) = 0;
      OSLogger.log(contentsOf:withLevel:)(v19, &v46);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD000000000000014, 0x80000001DB52CC20);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3CF598(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v43;
  if (v43)
  {
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD000000000000013, 0x80000001DB52CBE0);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    v8(&v43);
    sub_1DB365724(v8);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD000000000000013, 0x80000001DB52CBE0);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    v9 = v43;
    v10 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v11 = sub_1DB50B0F0();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v43 = v13;
      *v12 = 136446722;
      v14 = sub_1DB50B350();
      v16 = sub_1DB3D4EE8(v14, v15, &v43);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2050;
      *(v12 + 14) = a4;
      *(v12 + 22) = 2082;
      v17 = sub_1DB3D4EE8(v9, *(&v9 + 1), &v43);

      *(v12 + 24) = v17;
      _os_log_impl(&dword_1DB2F5000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v13, -1, -1);
      MEMORY[0x1E1288220](v12, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v18 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1DB50EE90;
      v49 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v20);
      v48 = MEMORY[0x1E69E6A70];
      *&v46 = a1;
      *(&v46 + 1) = a2;
      v47 = a3;
      sub_1DB301CDC(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1DB301D4C(v42, &v43);
      v45 = 0;
      v21 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1DB301BC0(0, *(v21 + 2) + 1, 1, v21);
        v49 = v21;
      }

      v23 = *(v21 + 2);
      v22 = *(v21 + 3);
      if (v23 >= v22 >> 1)
      {
        v21 = sub_1DB301BC0((v22 > 1), v23 + 1, 1, v21);
      }

      *(v21 + 2) = v23 + 1;
      v24 = &v21[40 * v23];
      v25 = v43;
      v26 = v44;
      v24[64] = v45;
      *(v24 + 2) = v25;
      *(v24 + 3) = v26;
      v49 = v21;
      sub_1DB301DBC(&v46);
      v27._countAndFlagsBits = 58;
      v27._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v27);
      v48 = MEMORY[0x1E69E6810];
      *&v46 = a4;
      sub_1DB301CDC(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1DB301D4C(v42, &v43);
      v45 = 0;
      v28 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1DB301BC0(0, *(v28 + 2) + 1, 1, v28);
        v49 = v28;
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_1DB301BC0((v29 > 1), v30 + 1, 1, v28);
      }

      *(v28 + 2) = v30 + 1;
      v31 = &v28[40 * v30];
      v32 = v43;
      v33 = v44;
      v31[64] = v45;
      *(v31 + 2) = v32;
      *(v31 + 3) = v33;
      v49 = v28;
      sub_1DB301DBC(&v46);
      v34._countAndFlagsBits = 0xD00000000000001BLL;
      v34._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v34);
      *&v43 = 0;
      *(&v43 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
      MEMORY[0x1E1285C70](0xD000000000000013, 0x80000001DB52CBE0);
      MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

      MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

      v48 = MEMORY[0x1E69E6158];
      v46 = v43;
      sub_1DB301CDC(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1DB301D4C(v42, &v43);
      v45 = 0;
      v35 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1DB301BC0(0, *(v35 + 2) + 1, 1, v35);
        v49 = v35;
      }

      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      if (v37 >= v36 >> 1)
      {
        v35 = sub_1DB301BC0((v36 > 1), v37 + 1, 1, v35);
      }

      *(v35 + 2) = v37 + 1;
      v38 = &v35[40 * v37];
      v39 = v43;
      v40 = v44;
      v38[64] = v45;
      *(v38 + 2) = v39;
      *(v38 + 3) = v40;
      v49 = v35;
      sub_1DB301DBC(&v46);
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v41);
      *(v19 + 32) = v49;
      *&v43 = v18;
      LOBYTE(v46) = 0;
      OSLogger.log(contentsOf:withLevel:)(v19, &v46);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD000000000000013, 0x80000001DB52CBE0);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3CFE10(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v43;
  if (v43)
  {
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52CB20);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    v8(&v43);
    sub_1DB365724(v8);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52CB20);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    v9 = v43;
    v10 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v11 = sub_1DB50B0F0();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v43 = v13;
      *v12 = 136446722;
      v14 = sub_1DB50B350();
      v16 = sub_1DB3D4EE8(v14, v15, &v43);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2050;
      *(v12 + 14) = a4;
      *(v12 + 22) = 2082;
      v17 = sub_1DB3D4EE8(v9, *(&v9 + 1), &v43);

      *(v12 + 24) = v17;
      _os_log_impl(&dword_1DB2F5000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v13, -1, -1);
      MEMORY[0x1E1288220](v12, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v18 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1DB50EE90;
      v49 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v20);
      v48 = MEMORY[0x1E69E6A70];
      *&v46 = a1;
      *(&v46 + 1) = a2;
      v47 = a3;
      sub_1DB301CDC(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1DB301D4C(v42, &v43);
      v45 = 0;
      v21 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1DB301BC0(0, *(v21 + 2) + 1, 1, v21);
        v49 = v21;
      }

      v23 = *(v21 + 2);
      v22 = *(v21 + 3);
      if (v23 >= v22 >> 1)
      {
        v21 = sub_1DB301BC0((v22 > 1), v23 + 1, 1, v21);
      }

      *(v21 + 2) = v23 + 1;
      v24 = &v21[40 * v23];
      v25 = v43;
      v26 = v44;
      v24[64] = v45;
      *(v24 + 2) = v25;
      *(v24 + 3) = v26;
      v49 = v21;
      sub_1DB301DBC(&v46);
      v27._countAndFlagsBits = 58;
      v27._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v27);
      v48 = MEMORY[0x1E69E6810];
      *&v46 = a4;
      sub_1DB301CDC(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1DB301D4C(v42, &v43);
      v45 = 0;
      v28 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1DB301BC0(0, *(v28 + 2) + 1, 1, v28);
        v49 = v28;
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_1DB301BC0((v29 > 1), v30 + 1, 1, v28);
      }

      *(v28 + 2) = v30 + 1;
      v31 = &v28[40 * v30];
      v32 = v43;
      v33 = v44;
      v31[64] = v45;
      *(v31 + 2) = v32;
      *(v31 + 3) = v33;
      v49 = v28;
      sub_1DB301DBC(&v46);
      v34._countAndFlagsBits = 0xD00000000000001BLL;
      v34._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v34);
      *&v43 = 0;
      *(&v43 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
      MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52CB20);
      MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

      MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

      v48 = MEMORY[0x1E69E6158];
      v46 = v43;
      sub_1DB301CDC(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1DB301D4C(v42, &v43);
      v45 = 0;
      v35 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1DB301BC0(0, *(v35 + 2) + 1, 1, v35);
        v49 = v35;
      }

      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      if (v37 >= v36 >> 1)
      {
        v35 = sub_1DB301BC0((v36 > 1), v37 + 1, 1, v35);
      }

      *(v35 + 2) = v37 + 1;
      v38 = &v35[40 * v37];
      v39 = v43;
      v40 = v44;
      v38[64] = v45;
      *(v38 + 2) = v39;
      *(v38 + 3) = v40;
      v49 = v35;
      sub_1DB301DBC(&v46);
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v41);
      *(v19 + 32) = v49;
      *&v43 = v18;
      LOBYTE(v46) = 0;
      OSLogger.log(contentsOf:withLevel:)(v19, &v46);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52CB20);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3D0694(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v43;
  if (v43)
  {
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD000000000000023, 0x80000001DB52CB60);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    v8(&v43);
    sub_1DB365724(v8);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD000000000000023, 0x80000001DB52CB60);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    v9 = v43;
    v10 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v11 = sub_1DB50B0F0();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v43 = v13;
      *v12 = 136446722;
      v14 = sub_1DB50B350();
      v16 = sub_1DB3D4EE8(v14, v15, &v43);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2050;
      *(v12 + 14) = a4;
      *(v12 + 22) = 2082;
      v17 = sub_1DB3D4EE8(v9, *(&v9 + 1), &v43);

      *(v12 + 24) = v17;
      _os_log_impl(&dword_1DB2F5000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v13, -1, -1);
      MEMORY[0x1E1288220](v12, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v18 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1DB50EE90;
      v49 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v20);
      v48 = MEMORY[0x1E69E6A70];
      *&v46 = a1;
      *(&v46 + 1) = a2;
      v47 = a3;
      sub_1DB301CDC(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1DB301D4C(v42, &v43);
      v45 = 0;
      v21 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1DB301BC0(0, *(v21 + 2) + 1, 1, v21);
        v49 = v21;
      }

      v23 = *(v21 + 2);
      v22 = *(v21 + 3);
      if (v23 >= v22 >> 1)
      {
        v21 = sub_1DB301BC0((v22 > 1), v23 + 1, 1, v21);
      }

      *(v21 + 2) = v23 + 1;
      v24 = &v21[40 * v23];
      v25 = v43;
      v26 = v44;
      v24[64] = v45;
      *(v24 + 2) = v25;
      *(v24 + 3) = v26;
      v49 = v21;
      sub_1DB301DBC(&v46);
      v27._countAndFlagsBits = 58;
      v27._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v27);
      v48 = MEMORY[0x1E69E6810];
      *&v46 = a4;
      sub_1DB301CDC(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1DB301D4C(v42, &v43);
      v45 = 0;
      v28 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1DB301BC0(0, *(v28 + 2) + 1, 1, v28);
        v49 = v28;
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_1DB301BC0((v29 > 1), v30 + 1, 1, v28);
      }

      *(v28 + 2) = v30 + 1;
      v31 = &v28[40 * v30];
      v32 = v43;
      v33 = v44;
      v31[64] = v45;
      *(v31 + 2) = v32;
      *(v31 + 3) = v33;
      v49 = v28;
      sub_1DB301DBC(&v46);
      v34._countAndFlagsBits = 0xD00000000000001BLL;
      v34._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v34);
      *&v43 = 0;
      *(&v43 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
      MEMORY[0x1E1285C70](0xD000000000000023, 0x80000001DB52CB60);
      MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

      MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

      v48 = MEMORY[0x1E69E6158];
      v46 = v43;
      sub_1DB301CDC(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1DB301D4C(v42, &v43);
      v45 = 0;
      v35 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1DB301BC0(0, *(v35 + 2) + 1, 1, v35);
        v49 = v35;
      }

      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      if (v37 >= v36 >> 1)
      {
        v35 = sub_1DB301BC0((v36 > 1), v37 + 1, 1, v35);
      }

      *(v35 + 2) = v37 + 1;
      v38 = &v35[40 * v37];
      v39 = v43;
      v40 = v44;
      v38[64] = v45;
      *(v38 + 2) = v39;
      *(v38 + 3) = v40;
      v49 = v35;
      sub_1DB301DBC(&v46);
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v41);
      *(v19 + 32) = v49;
      *&v43 = v18;
      LOBYTE(v46) = 0;
      OSLogger.log(contentsOf:withLevel:)(v19, &v46);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD000000000000023, 0x80000001DB52CB60);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3D0F0C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v43;
  if (v43)
  {
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52CB90);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    v8(&v43);
    sub_1DB365724(v8);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52CB90);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    v9 = v43;
    v10 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v11 = sub_1DB50B0F0();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v43 = v13;
      *v12 = 136446722;
      v14 = sub_1DB50B350();
      v16 = sub_1DB3D4EE8(v14, v15, &v43);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2050;
      *(v12 + 14) = a4;
      *(v12 + 22) = 2082;
      v17 = sub_1DB3D4EE8(v9, *(&v9 + 1), &v43);

      *(v12 + 24) = v17;
      _os_log_impl(&dword_1DB2F5000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v13, -1, -1);
      MEMORY[0x1E1288220](v12, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v18 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1DB50EE90;
      v49 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v20);
      v48 = MEMORY[0x1E69E6A70];
      *&v46 = a1;
      *(&v46 + 1) = a2;
      v47 = a3;
      sub_1DB301CDC(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1DB301D4C(v42, &v43);
      v45 = 0;
      v21 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1DB301BC0(0, *(v21 + 2) + 1, 1, v21);
        v49 = v21;
      }

      v23 = *(v21 + 2);
      v22 = *(v21 + 3);
      if (v23 >= v22 >> 1)
      {
        v21 = sub_1DB301BC0((v22 > 1), v23 + 1, 1, v21);
      }

      *(v21 + 2) = v23 + 1;
      v24 = &v21[40 * v23];
      v25 = v43;
      v26 = v44;
      v24[64] = v45;
      *(v24 + 2) = v25;
      *(v24 + 3) = v26;
      v49 = v21;
      sub_1DB301DBC(&v46);
      v27._countAndFlagsBits = 58;
      v27._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v27);
      v48 = MEMORY[0x1E69E6810];
      *&v46 = a4;
      sub_1DB301CDC(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1DB301D4C(v42, &v43);
      v45 = 0;
      v28 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1DB301BC0(0, *(v28 + 2) + 1, 1, v28);
        v49 = v28;
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_1DB301BC0((v29 > 1), v30 + 1, 1, v28);
      }

      *(v28 + 2) = v30 + 1;
      v31 = &v28[40 * v30];
      v32 = v43;
      v33 = v44;
      v31[64] = v45;
      *(v31 + 2) = v32;
      *(v31 + 3) = v33;
      v49 = v28;
      sub_1DB301DBC(&v46);
      v34._countAndFlagsBits = 0xD00000000000001BLL;
      v34._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v34);
      *&v43 = 0;
      *(&v43 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
      MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52CB90);
      MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

      MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

      v48 = MEMORY[0x1E69E6158];
      v46 = v43;
      sub_1DB301CDC(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1DB301D4C(v42, &v43);
      v45 = 0;
      v35 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1DB301BC0(0, *(v35 + 2) + 1, 1, v35);
        v49 = v35;
      }

      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      if (v37 >= v36 >> 1)
      {
        v35 = sub_1DB301BC0((v36 > 1), v37 + 1, 1, v35);
      }

      *(v35 + 2) = v37 + 1;
      v38 = &v35[40 * v37];
      v39 = v43;
      v40 = v44;
      v38[64] = v45;
      *(v38 + 2) = v39;
      *(v38 + 3) = v40;
      v49 = v35;
      sub_1DB301DBC(&v46);
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v41);
      *(v19 + 32) = v49;
      *&v43 = v18;
      LOBYTE(v46) = 0;
      OSLogger.log(contentsOf:withLevel:)(v19, &v46);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52CB90);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3D1784(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v43;
  if (v43)
  {
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD00000000000001DLL, 0x80000001DB52CBC0);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    v8(&v43);
    sub_1DB365724(v8);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD00000000000001DLL, 0x80000001DB52CBC0);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    v9 = v43;
    v10 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v11 = sub_1DB50B0F0();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v43 = v13;
      *v12 = 136446722;
      v14 = sub_1DB50B350();
      v16 = sub_1DB3D4EE8(v14, v15, &v43);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2050;
      *(v12 + 14) = a4;
      *(v12 + 22) = 2082;
      v17 = sub_1DB3D4EE8(v9, *(&v9 + 1), &v43);

      *(v12 + 24) = v17;
      _os_log_impl(&dword_1DB2F5000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v13, -1, -1);
      MEMORY[0x1E1288220](v12, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v18 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1DB50EE90;
      v49 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v20);
      v48 = MEMORY[0x1E69E6A70];
      *&v46 = a1;
      *(&v46 + 1) = a2;
      v47 = a3;
      sub_1DB301CDC(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1DB301D4C(v42, &v43);
      v45 = 0;
      v21 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1DB301BC0(0, *(v21 + 2) + 1, 1, v21);
        v49 = v21;
      }

      v23 = *(v21 + 2);
      v22 = *(v21 + 3);
      if (v23 >= v22 >> 1)
      {
        v21 = sub_1DB301BC0((v22 > 1), v23 + 1, 1, v21);
      }

      *(v21 + 2) = v23 + 1;
      v24 = &v21[40 * v23];
      v25 = v43;
      v26 = v44;
      v24[64] = v45;
      *(v24 + 2) = v25;
      *(v24 + 3) = v26;
      v49 = v21;
      sub_1DB301DBC(&v46);
      v27._countAndFlagsBits = 58;
      v27._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v27);
      v48 = MEMORY[0x1E69E6810];
      *&v46 = a4;
      sub_1DB301CDC(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1DB301D4C(v42, &v43);
      v45 = 0;
      v28 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1DB301BC0(0, *(v28 + 2) + 1, 1, v28);
        v49 = v28;
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_1DB301BC0((v29 > 1), v30 + 1, 1, v28);
      }

      *(v28 + 2) = v30 + 1;
      v31 = &v28[40 * v30];
      v32 = v43;
      v33 = v44;
      v31[64] = v45;
      *(v31 + 2) = v32;
      *(v31 + 3) = v33;
      v49 = v28;
      sub_1DB301DBC(&v46);
      v34._countAndFlagsBits = 0xD00000000000001BLL;
      v34._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v34);
      *&v43 = 0;
      *(&v43 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
      MEMORY[0x1E1285C70](0xD00000000000001DLL, 0x80000001DB52CBC0);
      MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

      MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

      v48 = MEMORY[0x1E69E6158];
      v46 = v43;
      sub_1DB301CDC(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1DB301D4C(v42, &v43);
      v45 = 0;
      v35 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1DB301BC0(0, *(v35 + 2) + 1, 1, v35);
        v49 = v35;
      }

      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      if (v37 >= v36 >> 1)
      {
        v35 = sub_1DB301BC0((v36 > 1), v37 + 1, 1, v35);
      }

      *(v35 + 2) = v37 + 1;
      v38 = &v35[40 * v37];
      v39 = v43;
      v40 = v44;
      v38[64] = v45;
      *(v38 + 2) = v39;
      *(v38 + 3) = v40;
      v49 = v35;
      sub_1DB301DBC(&v46);
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v41);
      *(v19 + 32) = v49;
      *&v43 = v18;
      LOBYTE(v46) = 0;
      OSLogger.log(contentsOf:withLevel:)(v19, &v46);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD00000000000001DLL, 0x80000001DB52CBC0);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3D1FFC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v43;
  if (v43)
  {
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD00000000000001ALL, 0x80000001DB52CC00);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    v8(&v43);
    sub_1DB365724(v8);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v43 = 0;
    *(&v43 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD00000000000001ALL, 0x80000001DB52CC00);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    v9 = v43;
    v10 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v11 = sub_1DB50B0F0();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v43 = v13;
      *v12 = 136446722;
      v14 = sub_1DB50B350();
      v16 = sub_1DB3D4EE8(v14, v15, &v43);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2050;
      *(v12 + 14) = a4;
      *(v12 + 22) = 2082;
      v17 = sub_1DB3D4EE8(v9, *(&v9 + 1), &v43);

      *(v12 + 24) = v17;
      _os_log_impl(&dword_1DB2F5000, v11, v10, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v13, -1, -1);
      MEMORY[0x1E1288220](v12, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v18 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1DB50EE90;
      v49 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v20);
      v48 = MEMORY[0x1E69E6A70];
      *&v46 = a1;
      *(&v46 + 1) = a2;
      v47 = a3;
      sub_1DB301CDC(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1DB301D4C(v42, &v43);
      v45 = 0;
      v21 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1DB301BC0(0, *(v21 + 2) + 1, 1, v21);
        v49 = v21;
      }

      v23 = *(v21 + 2);
      v22 = *(v21 + 3);
      if (v23 >= v22 >> 1)
      {
        v21 = sub_1DB301BC0((v22 > 1), v23 + 1, 1, v21);
      }

      *(v21 + 2) = v23 + 1;
      v24 = &v21[40 * v23];
      v25 = v43;
      v26 = v44;
      v24[64] = v45;
      *(v24 + 2) = v25;
      *(v24 + 3) = v26;
      v49 = v21;
      sub_1DB301DBC(&v46);
      v27._countAndFlagsBits = 58;
      v27._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v27);
      v48 = MEMORY[0x1E69E6810];
      *&v46 = a4;
      sub_1DB301CDC(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1DB301D4C(v42, &v43);
      v45 = 0;
      v28 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1DB301BC0(0, *(v28 + 2) + 1, 1, v28);
        v49 = v28;
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_1DB301BC0((v29 > 1), v30 + 1, 1, v28);
      }

      *(v28 + 2) = v30 + 1;
      v31 = &v28[40 * v30];
      v32 = v43;
      v33 = v44;
      v31[64] = v45;
      *(v31 + 2) = v32;
      *(v31 + 3) = v33;
      v49 = v28;
      sub_1DB301DBC(&v46);
      v34._countAndFlagsBits = 0xD00000000000001BLL;
      v34._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v34);
      *&v43 = 0;
      *(&v43 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
      MEMORY[0x1E1285C70](0xD00000000000001ALL, 0x80000001DB52CC00);
      MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

      MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

      v48 = MEMORY[0x1E69E6158];
      v46 = v43;
      sub_1DB301CDC(&v46, v42);
      v43 = 0u;
      v44 = 0u;
      sub_1DB301D4C(v42, &v43);
      v45 = 0;
      v35 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1DB301BC0(0, *(v35 + 2) + 1, 1, v35);
        v49 = v35;
      }

      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      if (v37 >= v36 >> 1)
      {
        v35 = sub_1DB301BC0((v36 > 1), v37 + 1, 1, v35);
      }

      *(v35 + 2) = v37 + 1;
      v38 = &v35[40 * v37];
      v39 = v43;
      v40 = v44;
      v38[64] = v45;
      *(v38 + 2) = v39;
      *(v38 + 3) = v40;
      v49 = v35;
      sub_1DB301DBC(&v46);
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v41);
      *(v19 + 32) = v49;
      *&v43 = v18;
      LOBYTE(v46) = 0;
      OSLogger.log(contentsOf:withLevel:)(v19, &v46);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
    MEMORY[0x1E1285C70](0xD00000000000001ALL, 0x80000001DB52CC00);
    MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3D2874(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD000000000000079;
    *(&v41 + 1) = 0x80000001DB52CE00;
    v8(&v41);
    sub_1DB365724(v8);
  }

  else
  {
    if (qword_1ECC420E8 != -1)
    {
      swift_once();
    }

    if (byte_1ECC44F38 == 1)
    {
      v9 = sub_1DB50AF30();
      sub_1DB3D6CE4();
      v10 = sub_1DB50B0F0();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1DB50B350();
        v15 = sub_1DB3D4EE8(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1DB3D4EE8(0xD000000000000079, 0x80000001DB52CE00, &v41);
        _os_log_impl(&dword_1DB2F5000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E1288220](v12, -1, -1);
        MEMORY[0x1E1288220](v11, -1, -1);
      }
    }

    else if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v16 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1DB50EE90;
      v48 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1DB301CDC(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1DB301D4C(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1DB301BC0(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1DB301BC0((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1DB301DBC(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1DB301CDC(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1DB301D4C(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1DB301BC0(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1DB301BC0((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1DB301DBC(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD000000000000079;
      v45 = 0x80000001DB52CE00;
      sub_1DB301CDC(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1DB301D4C(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1DB301BC0(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1DB301BC0((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1DB301DBC(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1DB50B580();
      __break(1u);
    }
  }
}

void sub_1DB3D2E4C(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD00000000000002ALL;
    *(&v41 + 1) = 0x80000001DB52CDD0;
    v8(&v41);
    sub_1DB365724(v8);
  }

  else
  {
    if (qword_1ECC420E8 != -1)
    {
      swift_once();
    }

    if (byte_1ECC44F38 == 1)
    {
      v9 = sub_1DB50AF30();
      sub_1DB3D6CE4();
      v10 = sub_1DB50B0F0();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1DB50B350();
        v15 = sub_1DB3D4EE8(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1DB3D4EE8(0xD00000000000002ALL, 0x80000001DB52CDD0, &v41);
        _os_log_impl(&dword_1DB2F5000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E1288220](v12, -1, -1);
        MEMORY[0x1E1288220](v11, -1, -1);
      }
    }

    else if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v16 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1DB50EE90;
      v48 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1DB301CDC(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1DB301D4C(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1DB301BC0(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1DB301BC0((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1DB301DBC(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1DB301CDC(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1DB301D4C(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1DB301BC0(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1DB301BC0((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1DB301DBC(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD00000000000002ALL;
      v45 = 0x80000001DB52CDD0;
      sub_1DB301CDC(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1DB301D4C(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1DB301BC0(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1DB301BC0((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1DB301DBC(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1DB50B580();
      __break(1u);
    }
  }
}

void sub_1DB3D3424(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v10 = v45;
  if (v45)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000022, 0x80000001DB52CD60);
    *&v48 = a5;
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0xD00000000000003BLL, 0x80000001DB52CD90);
    v10(&v45);
    sub_1DB365724(v10);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000022, 0x80000001DB52CD60);
    *&v48 = a5;
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0xD00000000000003BLL, 0x80000001DB52CD90);
    v11 = v45;
    v12 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v13 = sub_1DB50B0F0();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v45 = v15;
      *v14 = 136446722;
      v16 = sub_1DB50B350();
      v18 = sub_1DB3D4EE8(v16, v17, &v45);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2050;
      *(v14 + 14) = a4;
      *(v14 + 22) = 2082;
      v19 = sub_1DB3D4EE8(v11, *(&v11 + 1), &v45);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_1DB2F5000, v13, v12, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v15, -1, -1);
      MEMORY[0x1E1288220](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v20 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1DB50EE90;
      v51 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v50 = MEMORY[0x1E69E6A70];
      *&v48 = a1;
      *(&v48 + 1) = a2;
      v49 = a3;
      sub_1DB301CDC(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1DB301D4C(v44, &v45);
      v47 = 0;
      v23 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1DB301BC0(0, *(v23 + 2) + 1, 1, v23);
        v51 = v23;
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1DB301BC0((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[40 * v25];
      v27 = v45;
      v28 = v46;
      v26[64] = v47;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      v51 = v23;
      sub_1DB301DBC(&v48);
      v29._countAndFlagsBits = 58;
      v29._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v50 = MEMORY[0x1E69E6810];
      *&v48 = a4;
      sub_1DB301CDC(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1DB301D4C(v44, &v45);
      v47 = 0;
      v30 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1DB301BC0(0, *(v30 + 2) + 1, 1, v30);
        v51 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1DB301BC0((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v45;
      v35 = v46;
      v33[64] = v47;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v51 = v30;
      sub_1DB301DBC(&v48);
      v36._countAndFlagsBits = 0xD00000000000001BLL;
      v36._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *&v45 = 0;
      *(&v45 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0xD000000000000022, 0x80000001DB52CD60);
      *&v48 = a5;
      sub_1DB50B530();
      MEMORY[0x1E1285C70](0xD00000000000003BLL, 0x80000001DB52CD90);
      v50 = MEMORY[0x1E69E6158];
      v48 = v45;
      sub_1DB301CDC(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1DB301D4C(v44, &v45);
      v47 = 0;
      v37 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1DB301BC0(0, *(v37 + 2) + 1, 1, v37);
        v51 = v37;
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1DB301BC0((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[40 * v39];
      v41 = v45;
      v42 = v46;
      v40[64] = v47;
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
      v51 = v37;
      sub_1DB301DBC(&v48);
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      *(v21 + 32) = v51;
      *&v45 = v20;
      LOBYTE(v48) = 0;
      OSLogger.log(contentsOf:withLevel:)(v21, &v48);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000022, 0x80000001DB52CD60);
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0xD00000000000003BLL, 0x80000001DB52CD90);
    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3D3C0C(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v8 = v41;
  if (v41)
  {
    *&v41 = 0xD000000000000029;
    *(&v41 + 1) = 0x80000001DB52CD30;
    v8(&v41);
    sub_1DB365724(v8);
  }

  else
  {
    if (qword_1ECC420E8 != -1)
    {
      swift_once();
    }

    if (byte_1ECC44F38 == 1)
    {
      v9 = sub_1DB50AF30();
      sub_1DB3D6CE4();
      v10 = sub_1DB50B0F0();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *&v41 = v12;
        *v11 = 136446722;
        v13 = sub_1DB50B350();
        v15 = sub_1DB3D4EE8(v13, v14, &v41);

        *(v11 + 4) = v15;
        *(v11 + 12) = 2050;
        *(v11 + 14) = a4;
        *(v11 + 22) = 2082;
        *(v11 + 24) = sub_1DB3D4EE8(0xD000000000000029, 0x80000001DB52CD30, &v41);
        _os_log_impl(&dword_1DB2F5000, v10, v9, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E1288220](v12, -1, -1);
        MEMORY[0x1E1288220](v11, -1, -1);
      }
    }

    else if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v16 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1DB50EE90;
      v48 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      v47 = MEMORY[0x1E69E6A70];
      v44 = a1;
      v45 = a2;
      v46 = a3;
      sub_1DB301CDC(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1DB301D4C(v40, &v41);
      v43 = 0;
      v19 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1DB301BC0(0, *(v19 + 2) + 1, 1, v19);
        v48 = v19;
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_1DB301BC0((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[40 * v21];
      v23 = v41;
      v24 = v42;
      v22[64] = v43;
      *(v22 + 2) = v23;
      *(v22 + 3) = v24;
      v48 = v19;
      sub_1DB301DBC(&v44);
      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v47 = MEMORY[0x1E69E6810];
      v44 = a4;
      sub_1DB301CDC(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1DB301D4C(v40, &v41);
      v43 = 0;
      v26 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1DB301BC0(0, *(v26 + 2) + 1, 1, v26);
        v48 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1DB301BC0((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v41;
      v31 = v42;
      v29[64] = v43;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v48 = v26;
      sub_1DB301DBC(&v44);
      v32._countAndFlagsBits = 0xD00000000000001BLL;
      v32._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v47 = MEMORY[0x1E69E6158];
      v44 = 0xD000000000000029;
      v45 = 0x80000001DB52CD30;
      sub_1DB301CDC(&v44, v40);
      v41 = 0u;
      v42 = 0u;
      sub_1DB301D4C(v40, &v41);
      v43 = 0;
      v33 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1DB301BC0(0, *(v33 + 2) + 1, 1, v33);
        v48 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1DB301BC0((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v41;
      v38 = v42;
      v36[64] = v43;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v48 = v33;
      sub_1DB301DBC(&v44);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *(v17 + 32) = v48;
      *&v41 = v16;
      LOBYTE(v44) = 0;
      OSLogger.log(contentsOf:withLevel:)(v17, &v44);
    }

    else
    {
      sub_1DB50B580();
      __break(1u);
    }
  }
}

void requirementFailure(_:file:line:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  v11 = sub_1DB50BEB0();
  v12 = v52;
  if (v52)
  {
    *&v52 = (a1)(v11);
    *(&v52 + 1) = v13;
    v12(&v52);
    sub_1DB365724(v12);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    v11 = swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    v14 = a1();
    v16 = v15;
    v17 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v18 = sub_1DB50B0F0();
    if (os_log_type_enabled(v18, v17))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v52 = v20;
      *v19 = 136446722;
      v21 = sub_1DB50B350();
      v23 = sub_1DB3D4EE8(v21, v22, &v52);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2050;
      *(v19 + 14) = a6;
      *(v19 + 22) = 2082;
      v24 = sub_1DB3D4EE8(v14, v16, &v52);

      *(v19 + 24) = v24;
      _os_log_impl(&dword_1DB2F5000, v18, v17, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v20, -1, -1);
      MEMORY[0x1E1288220](v19, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v25 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1DB50EE90;
      v59 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v27);
      v58 = MEMORY[0x1E69E6A70];
      v55 = a3;
      v56 = a4;
      v57 = a5;
      sub_1DB301CDC(&v55, v51);
      v52 = 0u;
      v53 = 0u;
      sub_1DB301D4C(v51, &v52);
      v54 = 0;
      v28 = v59;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1DB301BC0(0, *(v28 + 2) + 1, 1, v28);
        v59 = v28;
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_1DB301BC0((v29 > 1), v30 + 1, 1, v28);
      }

      *(v28 + 2) = v30 + 1;
      v31 = &v28[40 * v30];
      v32 = v52;
      v33 = v53;
      v31[64] = v54;
      *(v31 + 2) = v32;
      *(v31 + 3) = v33;
      v59 = v28;
      sub_1DB301DBC(&v55);
      v34._countAndFlagsBits = 58;
      v34._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v34);
      v58 = MEMORY[0x1E69E6810];
      v55 = a6;
      sub_1DB301CDC(&v55, v51);
      v52 = 0u;
      v53 = 0u;
      sub_1DB301D4C(v51, &v52);
      v54 = 0;
      v35 = v59;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1DB301BC0(0, *(v35 + 2) + 1, 1, v35);
        v59 = v35;
      }

      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      if (v37 >= v36 >> 1)
      {
        v35 = sub_1DB301BC0((v36 > 1), v37 + 1, 1, v35);
      }

      *(v35 + 2) = v37 + 1;
      v38 = &v35[40 * v37];
      v39 = v52;
      v40 = v53;
      v38[64] = v54;
      *(v38 + 2) = v39;
      *(v38 + 3) = v40;
      v59 = v35;
      sub_1DB301DBC(&v55);
      v41._object = 0x80000001DB52C9D0;
      v41._countAndFlagsBits = 0xD00000000000001BLL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v41);
      v42 = a1();
      v58 = MEMORY[0x1E69E6158];
      v55 = v42;
      v56 = v43;
      sub_1DB301CDC(&v55, v51);
      v52 = 0u;
      v53 = 0u;
      sub_1DB301D4C(v51, &v52);
      v54 = 0;
      v44 = v59;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_1DB301BC0(0, *(v44 + 2) + 1, 1, v44);
        v59 = v44;
      }

      v46 = *(v44 + 2);
      v45 = *(v44 + 3);
      if (v46 >= v45 >> 1)
      {
        v44 = sub_1DB301BC0((v45 > 1), v46 + 1, 1, v44);
      }

      *(v44 + 2) = v46 + 1;
      v47 = &v44[40 * v46];
      v48 = v52;
      v49 = v53;
      v47[64] = v54;
      *(v47 + 2) = v48;
      *(v47 + 3) = v49;
      v59 = v44;
      sub_1DB301DBC(&v55);
      v50._countAndFlagsBits = 0;
      v50._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v50);
      *(v26 + 32) = v59;
      *&v52 = v25;
      LOBYTE(v55) = 0;
      OSLogger.log(contentsOf:withLevel:)(v26, &v55);
      goto LABEL_26;
    }

    (a1)(v11);
    sub_1DB50B580();
    __break(1u);
  }
}

uint64_t withUnsatisfiedRequirementHandler(_:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB3D4824, 0, 0);
}

uint64_t sub_1DB3D4824()
{
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_allocObject();
  *(v0 + 64) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v0 + 16) = sub_1DB3D6D30;
  *(v0 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *(v4 + 16) = *(v0 + 48);
  v5 = *(MEMORY[0x1E69E8950] + 4);

  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1DB3D49B0;

  return MEMORY[0x1EEE6DE98](v6, v0 + 16, &unk_1DB518E00, v4, 0, 0, 0xD00000000000001ALL, 0x80000001DB52C9F0);
}

uint64_t sub_1DB3D49B0()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v5 = sub_1DB3D4B04;
  }

  else
  {
    v5 = sub_1DB2FEB3C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DB3D4B1C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DB306AF4;

  return v6();
}

uint64_t withUnsatisfiedRequirementHandler(_:perform:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44F40, &qword_1DB518E08);
  v7 = swift_task_localValuePush();
  a3(v7);
  swift_task_localValuePop();
}

uint64_t sub_1DB3D4D10()
{
  has_internal_content = os_variant_has_internal_content();
  v1 = JEGestaltGetBuildVersion();
  sub_1DB50A650();

  if (has_internal_content)
  {
    v2 = sub_1DB3D541C();

    v4 = (v2 & 1) == 0;
  }

  else
  {

    v4 = 2;
  }

  byte_1ECC44F38 = v4;
  return result;
}

uint64_t static RequirementFailurePolicy.active.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1ECC420E8 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = byte_1ECC44F38;
  return result;
}

uint64_t sub_1DB3D4E04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44F58, &unk_1DB518EB0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1DB50BEA0();
  qword_1ECC67960 = result;
  return result;
}

uint64_t RequirementFailurePolicy.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

uint64_t sub_1DB3D4EE8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DB3D4FB4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1DB300B14(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1DB3D4FB4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1DB3D50C0(a5, a6);
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
    result = sub_1DB50B440();
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

uint64_t sub_1DB3D50C0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DB3D510C(a1, a2);
  sub_1DB3D523C(&unk_1F56EF1E8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1DB3D510C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1DB412DFC(v5, 0);
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

  result = sub_1DB50B440();
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
        v10 = sub_1DB50A7C0();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1DB412DFC(v10, 0);
        result = sub_1DB50B300();
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

uint64_t sub_1DB3D523C(uint64_t result)
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

  result = sub_1DB3D5328(result, v12, 1, v3);
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

char *sub_1DB3D5328(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44F50, &qword_1DB518EA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1DB3D541C()
{

  v0 = sub_1DB50A7B0();
  if (!v1)
  {
LABEL_13:

    return 0;
  }

  v2 = v0;
  v3 = v1;
  while (1)
  {
    v5 = v3 == 0xE100000000000000;
    v6 = v3 == 0xE100000000000000 && v2 == 65;
    if (!v6)
    {
      if (sub_1DB50BA30())
      {
        goto LABEL_4;
      }

      if (v2 == 90 && v3 == 0xE100000000000000)
      {
        break;
      }
    }

    if ((sub_1DB50BA30() & 1) == 0)
    {

      if (!v6)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }

LABEL_4:

    v2 = sub_1DB50A7B0();
    v3 = v4;
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  v5 = 1;
LABEL_15:
  if (sub_1DB50BA30())
  {
    goto LABEL_19;
  }

  v8 = !v5;
  if (v2 != 69)
  {
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
LABEL_19:

    return 1;
  }

  v9 = sub_1DB50BA30();

  return v9 & 1;
}

void sub_1DB3D5598(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v11 = v46;
  if (v46)
  {
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    *&v49 = a5;
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1E1285C70](0xD000000000000017, 0x80000001DB52CA10);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);
    v11(&v46);
    sub_1DB365724(v11);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    *&v49 = a5;
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1E1285C70](0xD000000000000017, 0x80000001DB52CA10);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);
    v12 = v46;
    v13 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v14 = sub_1DB50B0F0();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v46 = v16;
      *v15 = 136446722;
      v17 = sub_1DB50B350();
      v19 = sub_1DB3D4EE8(v17, v18, &v46);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2050;
      *(v15 + 14) = a4;
      *(v15 + 22) = 2082;
      v20 = sub_1DB3D4EE8(v12, *(&v12 + 1), &v46);

      *(v15 + 24) = v20;
      _os_log_impl(&dword_1DB2F5000, v14, v13, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v16, -1, -1);
      MEMORY[0x1E1288220](v15, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v21 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1DB50EE90;
      v52 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v23);
      v51 = MEMORY[0x1E69E6A70];
      *&v49 = a1;
      *(&v49 + 1) = a2;
      v50 = a3;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v24 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1DB301BC0(0, *(v24 + 2) + 1, 1, v24);
        v52 = v24;
      }

      v26 = *(v24 + 2);
      v25 = *(v24 + 3);
      if (v26 >= v25 >> 1)
      {
        v24 = sub_1DB301BC0((v25 > 1), v26 + 1, 1, v24);
      }

      *(v24 + 2) = v26 + 1;
      v27 = &v24[40 * v26];
      v28 = v46;
      v29 = v47;
      v27[64] = v48;
      *(v27 + 2) = v28;
      *(v27 + 3) = v29;
      v52 = v24;
      sub_1DB301DBC(&v49);
      v30._countAndFlagsBits = 58;
      v30._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v30);
      v51 = MEMORY[0x1E69E6810];
      *&v49 = a4;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v31 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1DB301BC0(0, *(v31 + 2) + 1, 1, v31);
        v52 = v31;
      }

      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      if (v33 >= v32 >> 1)
      {
        v31 = sub_1DB301BC0((v32 > 1), v33 + 1, 1, v31);
      }

      *(v31 + 2) = v33 + 1;
      v34 = &v31[40 * v33];
      v35 = v46;
      v36 = v47;
      v34[64] = v48;
      *(v34 + 2) = v35;
      *(v34 + 3) = v36;
      v52 = v31;
      sub_1DB301DBC(&v49);
      v37._countAndFlagsBits = 0xD00000000000001BLL;
      v37._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
      *&v49 = a5;
      sub_1DB50B530();
      MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
      MEMORY[0x1E1285C70](0xD000000000000017, 0x80000001DB52CA10);
      MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);
      v51 = MEMORY[0x1E69E6158];
      v49 = v46;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v38 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1DB301BC0(0, *(v38 + 2) + 1, 1, v38);
        v52 = v38;
      }

      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_1DB301BC0((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      v41 = &v38[40 * v40];
      v42 = v46;
      v43 = v47;
      v41[64] = v48;
      *(v41 + 2) = v42;
      *(v41 + 3) = v43;
      v52 = v38;
      sub_1DB301DBC(&v49);
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v44);
      *(v22 + 32) = v52;
      *&v46 = v21;
      LOBYTE(v49) = 0;
      OSLogger.log(contentsOf:withLevel:)(v22, &v49);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1E1285C70](0xD000000000000017, 0x80000001DB52CA10);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);

    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3D5E60(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v10 = v45;
  if (v45)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v48 = a5;
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0xD000000000000017, 0x80000001DB52CA10);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
    v10(&v45);
    sub_1DB365724(v10);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v48 = a5;
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0xD000000000000017, 0x80000001DB52CA10);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
    v11 = v45;
    v12 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v13 = sub_1DB50B0F0();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v45 = v15;
      *v14 = 136446722;
      v16 = sub_1DB50B350();
      v18 = sub_1DB3D4EE8(v16, v17, &v45);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2050;
      *(v14 + 14) = a4;
      *(v14 + 22) = 2082;
      v19 = sub_1DB3D4EE8(v11, *(&v11 + 1), &v45);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_1DB2F5000, v13, v12, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v15, -1, -1);
      MEMORY[0x1E1288220](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v20 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1DB50EE90;
      v51 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v50 = MEMORY[0x1E69E6A70];
      *&v48 = a1;
      *(&v48 + 1) = a2;
      v49 = a3;
      sub_1DB301CDC(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1DB301D4C(v44, &v45);
      v47 = 0;
      v23 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1DB301BC0(0, *(v23 + 2) + 1, 1, v23);
        v51 = v23;
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1DB301BC0((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[40 * v25];
      v27 = v45;
      v28 = v46;
      v26[64] = v47;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      v51 = v23;
      sub_1DB301DBC(&v48);
      v29._countAndFlagsBits = 58;
      v29._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v50 = MEMORY[0x1E69E6810];
      *&v48 = a4;
      sub_1DB301CDC(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1DB301D4C(v44, &v45);
      v47 = 0;
      v30 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1DB301BC0(0, *(v30 + 2) + 1, 1, v30);
        v51 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1DB301BC0((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v45;
      v35 = v46;
      v33[64] = v47;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v51 = v30;
      sub_1DB301DBC(&v48);
      v36._countAndFlagsBits = 0xD00000000000001BLL;
      v36._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *&v45 = 0;
      *(&v45 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
      swift_getObjectType();
      *&v48 = a5;
      sub_1DB50BA00();
      MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
      MEMORY[0x1E1285C70](0xD000000000000017, 0x80000001DB52CA10);
      MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
      v50 = MEMORY[0x1E69E6158];
      v48 = v45;
      sub_1DB301CDC(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1DB301D4C(v44, &v45);
      v47 = 0;
      v37 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1DB301BC0(0, *(v37 + 2) + 1, 1, v37);
        v51 = v37;
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1DB301BC0((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[40 * v39];
      v41 = v45;
      v42 = v46;
      v40[64] = v47;
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
      v51 = v37;
      sub_1DB301DBC(&v48);
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      *(v21 + 32) = v51;
      *&v45 = v20;
      LOBYTE(v48) = 0;
      OSLogger.log(contentsOf:withLevel:)(v21, &v48);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0xD000000000000017, 0x80000001DB52CA10);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
    swift_unknownObjectRelease();
    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3D66F0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  v10 = sub_1DB50BEB0();
  v11 = v51;
  if (v51)
  {
    *&v51 = (a5)(v10);
    *(&v51 + 1) = v12;
    v11(&v51);
    sub_1DB365724(v11);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    v10 = swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    v13 = a5();
    v15 = v14;
    v16 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v17 = sub_1DB50B0F0();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v51 = v19;
      *v18 = 136446722;
      v20 = sub_1DB50B350();
      v22 = sub_1DB3D4EE8(v20, v21, &v51);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2050;
      *(v18 + 14) = a4;
      *(v18 + 22) = 2082;
      v23 = sub_1DB3D4EE8(v13, v15, &v51);

      *(v18 + 24) = v23;
      _os_log_impl(&dword_1DB2F5000, v17, v16, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v19, -1, -1);
      MEMORY[0x1E1288220](v18, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v24 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1DB50EE90;
      v58 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v26._countAndFlagsBits = 0;
      v26._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v26);
      v57 = MEMORY[0x1E69E6A70];
      v54 = a1;
      v55 = a2;
      v56 = a3;
      sub_1DB301CDC(&v54, v50);
      v51 = 0u;
      v52 = 0u;
      sub_1DB301D4C(v50, &v51);
      v53 = 0;
      v27 = v58;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1DB301BC0(0, *(v27 + 2) + 1, 1, v27);
        v58 = v27;
      }

      v29 = *(v27 + 2);
      v28 = *(v27 + 3);
      if (v29 >= v28 >> 1)
      {
        v27 = sub_1DB301BC0((v28 > 1), v29 + 1, 1, v27);
      }

      *(v27 + 2) = v29 + 1;
      v30 = &v27[40 * v29];
      v31 = v51;
      v32 = v52;
      v30[64] = v53;
      *(v30 + 2) = v31;
      *(v30 + 3) = v32;
      v58 = v27;
      sub_1DB301DBC(&v54);
      v33._countAndFlagsBits = 58;
      v33._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      v57 = MEMORY[0x1E69E6810];
      v54 = a4;
      sub_1DB301CDC(&v54, v50);
      v51 = 0u;
      v52 = 0u;
      sub_1DB301D4C(v50, &v51);
      v53 = 0;
      v34 = v58;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1DB301BC0(0, *(v34 + 2) + 1, 1, v34);
        v58 = v34;
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      if (v36 >= v35 >> 1)
      {
        v34 = sub_1DB301BC0((v35 > 1), v36 + 1, 1, v34);
      }

      *(v34 + 2) = v36 + 1;
      v37 = &v34[40 * v36];
      v38 = v51;
      v39 = v52;
      v37[64] = v53;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      v58 = v34;
      sub_1DB301DBC(&v54);
      v40._object = 0x80000001DB52C9D0;
      v40._countAndFlagsBits = 0xD00000000000001BLL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v40);
      v41 = a5();
      v57 = MEMORY[0x1E69E6158];
      v54 = v41;
      v55 = v42;
      sub_1DB301CDC(&v54, v50);
      v51 = 0u;
      v52 = 0u;
      sub_1DB301D4C(v50, &v51);
      v53 = 0;
      v43 = v58;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_1DB301BC0(0, *(v43 + 2) + 1, 1, v43);
        v58 = v43;
      }

      v45 = *(v43 + 2);
      v44 = *(v43 + 3);
      if (v45 >= v44 >> 1)
      {
        v43 = sub_1DB301BC0((v44 > 1), v45 + 1, 1, v43);
      }

      *(v43 + 2) = v45 + 1;
      v46 = &v43[40 * v45];
      v47 = v51;
      v48 = v52;
      v46[64] = v53;
      *(v46 + 2) = v47;
      *(v46 + 3) = v48;
      v58 = v43;
      sub_1DB301DBC(&v54);
      v49._countAndFlagsBits = 0;
      v49._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v49);
      *(v25 + 32) = v58;
      *&v51 = v24;
      LOBYTE(v54) = 0;
      OSLogger.log(contentsOf:withLevel:)(v25, &v54);
      goto LABEL_26;
    }

    (a5)(v10);
    sub_1DB50B580();
    __break(1u);
  }
}

unint64_t sub_1DB3D6CE4()
{
  result = qword_1EE30E300;
  if (!qword_1EE30E300)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE30E300);
  }

  return result;
}

uint64_t sub_1DB3D6D30(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_1DB3D6D60(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DB306AF4;

  return sub_1DB3D4B1C(a1, v5);
}

unint64_t sub_1DB3D6E1C()
{
  result = qword_1ECC44F48;
  if (!qword_1ECC44F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44F48);
  }

  return result;
}

void sub_1DB3D6E80(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v11 = v46;
  if (v46)
  {
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    *&v49 = a5;
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1E1285C70](0xD000000000000010, 0x80000001DB52CB00);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);
    v11(&v46);
    sub_1DB365724(v11);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    *&v49 = a5;
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1E1285C70](0xD000000000000010, 0x80000001DB52CB00);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);
    v12 = v46;
    v13 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v14 = sub_1DB50B0F0();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v46 = v16;
      *v15 = 136446722;
      v17 = sub_1DB50B350();
      v19 = sub_1DB3D4EE8(v17, v18, &v46);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2050;
      *(v15 + 14) = a4;
      *(v15 + 22) = 2082;
      v20 = sub_1DB3D4EE8(v12, *(&v12 + 1), &v46);

      *(v15 + 24) = v20;
      _os_log_impl(&dword_1DB2F5000, v14, v13, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v16, -1, -1);
      MEMORY[0x1E1288220](v15, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v21 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1DB50EE90;
      v52 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v23);
      v51 = MEMORY[0x1E69E6A70];
      *&v49 = a1;
      *(&v49 + 1) = a2;
      v50 = a3;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v24 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1DB301BC0(0, *(v24 + 2) + 1, 1, v24);
        v52 = v24;
      }

      v26 = *(v24 + 2);
      v25 = *(v24 + 3);
      if (v26 >= v25 >> 1)
      {
        v24 = sub_1DB301BC0((v25 > 1), v26 + 1, 1, v24);
      }

      *(v24 + 2) = v26 + 1;
      v27 = &v24[40 * v26];
      v28 = v46;
      v29 = v47;
      v27[64] = v48;
      *(v27 + 2) = v28;
      *(v27 + 3) = v29;
      v52 = v24;
      sub_1DB301DBC(&v49);
      v30._countAndFlagsBits = 58;
      v30._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v30);
      v51 = MEMORY[0x1E69E6810];
      *&v49 = a4;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v31 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1DB301BC0(0, *(v31 + 2) + 1, 1, v31);
        v52 = v31;
      }

      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      if (v33 >= v32 >> 1)
      {
        v31 = sub_1DB301BC0((v32 > 1), v33 + 1, 1, v31);
      }

      *(v31 + 2) = v33 + 1;
      v34 = &v31[40 * v33];
      v35 = v46;
      v36 = v47;
      v34[64] = v48;
      *(v34 + 2) = v35;
      *(v34 + 3) = v36;
      v52 = v31;
      sub_1DB301DBC(&v49);
      v37._countAndFlagsBits = 0xD00000000000001BLL;
      v37._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
      *&v49 = a5;
      sub_1DB50B530();
      MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
      MEMORY[0x1E1285C70](0xD000000000000010, 0x80000001DB52CB00);
      MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);
      v51 = MEMORY[0x1E69E6158];
      v49 = v46;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v38 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1DB301BC0(0, *(v38 + 2) + 1, 1, v38);
        v52 = v38;
      }

      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_1DB301BC0((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      v41 = &v38[40 * v40];
      v42 = v46;
      v43 = v47;
      v41[64] = v48;
      *(v41 + 2) = v42;
      *(v41 + 3) = v43;
      v52 = v38;
      sub_1DB301DBC(&v49);
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v44);
      *(v22 + 32) = v52;
      *&v46 = v21;
      LOBYTE(v49) = 0;
      OSLogger.log(contentsOf:withLevel:)(v22, &v49);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1E1285C70](0xD000000000000010, 0x80000001DB52CB00);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);

    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3D774C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v10 = v45;
  if (v45)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v48 = a5;
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0xD000000000000010, 0x80000001DB52CB00);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
    v10(&v45);
    sub_1DB365724(v10);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v48 = a5;
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0xD000000000000010, 0x80000001DB52CB00);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
    v11 = v45;
    v12 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v13 = sub_1DB50B0F0();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v45 = v15;
      *v14 = 136446722;
      v16 = sub_1DB50B350();
      v18 = sub_1DB3D4EE8(v16, v17, &v45);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2050;
      *(v14 + 14) = a4;
      *(v14 + 22) = 2082;
      v19 = sub_1DB3D4EE8(v11, *(&v11 + 1), &v45);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_1DB2F5000, v13, v12, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v15, -1, -1);
      MEMORY[0x1E1288220](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v20 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1DB50EE90;
      v51 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v50 = MEMORY[0x1E69E6A70];
      *&v48 = a1;
      *(&v48 + 1) = a2;
      v49 = a3;
      sub_1DB301CDC(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1DB301D4C(v44, &v45);
      v47 = 0;
      v23 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1DB301BC0(0, *(v23 + 2) + 1, 1, v23);
        v51 = v23;
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1DB301BC0((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[40 * v25];
      v27 = v45;
      v28 = v46;
      v26[64] = v47;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      v51 = v23;
      sub_1DB301DBC(&v48);
      v29._countAndFlagsBits = 58;
      v29._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v50 = MEMORY[0x1E69E6810];
      *&v48 = a4;
      sub_1DB301CDC(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1DB301D4C(v44, &v45);
      v47 = 0;
      v30 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1DB301BC0(0, *(v30 + 2) + 1, 1, v30);
        v51 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1DB301BC0((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v45;
      v35 = v46;
      v33[64] = v47;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v51 = v30;
      sub_1DB301DBC(&v48);
      v36._countAndFlagsBits = 0xD00000000000001BLL;
      v36._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *&v45 = 0;
      *(&v45 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
      swift_getObjectType();
      *&v48 = a5;
      sub_1DB50BA00();
      MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
      MEMORY[0x1E1285C70](0xD000000000000010, 0x80000001DB52CB00);
      MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
      v50 = MEMORY[0x1E69E6158];
      v48 = v45;
      sub_1DB301CDC(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1DB301D4C(v44, &v45);
      v47 = 0;
      v37 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1DB301BC0(0, *(v37 + 2) + 1, 1, v37);
        v51 = v37;
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1DB301BC0((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[40 * v39];
      v41 = v45;
      v42 = v46;
      v40[64] = v47;
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
      v51 = v37;
      sub_1DB301DBC(&v48);
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      *(v21 + 32) = v51;
      *&v45 = v20;
      LOBYTE(v48) = 0;
      OSLogger.log(contentsOf:withLevel:)(v21, &v48);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0xD000000000000010, 0x80000001DB52CB00);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
    swift_unknownObjectRelease();
    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3D7FF0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v11 = v46;
  if (v46)
  {
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    *&v49 = a5;
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1E1285C70](0x746E6F434E4F534ALL, 0xEB00000000747865);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);
    v11(&v46);
    sub_1DB365724(v11);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    *&v49 = a5;
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1E1285C70](0x746E6F434E4F534ALL, 0xEB00000000747865);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);
    v12 = v46;
    v13 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v14 = sub_1DB50B0F0();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v46 = v16;
      *v15 = 136446722;
      v17 = sub_1DB50B350();
      v19 = sub_1DB3D4EE8(v17, v18, &v46);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2050;
      *(v15 + 14) = a4;
      *(v15 + 22) = 2082;
      v20 = sub_1DB3D4EE8(v12, *(&v12 + 1), &v46);

      *(v15 + 24) = v20;
      _os_log_impl(&dword_1DB2F5000, v14, v13, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v16, -1, -1);
      MEMORY[0x1E1288220](v15, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v21 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1DB50EE90;
      v52 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v23);
      v51 = MEMORY[0x1E69E6A70];
      *&v49 = a1;
      *(&v49 + 1) = a2;
      v50 = a3;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v24 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1DB301BC0(0, *(v24 + 2) + 1, 1, v24);
        v52 = v24;
      }

      v26 = *(v24 + 2);
      v25 = *(v24 + 3);
      if (v26 >= v25 >> 1)
      {
        v24 = sub_1DB301BC0((v25 > 1), v26 + 1, 1, v24);
      }

      *(v24 + 2) = v26 + 1;
      v27 = &v24[40 * v26];
      v28 = v46;
      v29 = v47;
      v27[64] = v48;
      *(v27 + 2) = v28;
      *(v27 + 3) = v29;
      v52 = v24;
      sub_1DB301DBC(&v49);
      v30._countAndFlagsBits = 58;
      v30._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v30);
      v51 = MEMORY[0x1E69E6810];
      *&v49 = a4;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v31 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1DB301BC0(0, *(v31 + 2) + 1, 1, v31);
        v52 = v31;
      }

      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      if (v33 >= v32 >> 1)
      {
        v31 = sub_1DB301BC0((v32 > 1), v33 + 1, 1, v31);
      }

      *(v31 + 2) = v33 + 1;
      v34 = &v31[40 * v33];
      v35 = v46;
      v36 = v47;
      v34[64] = v48;
      *(v34 + 2) = v35;
      *(v34 + 3) = v36;
      v52 = v31;
      sub_1DB301DBC(&v49);
      v37._countAndFlagsBits = 0xD00000000000001BLL;
      v37._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
      *&v49 = a5;
      sub_1DB50B530();
      MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
      MEMORY[0x1E1285C70](0x746E6F434E4F534ALL, 0xEB00000000747865);
      MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);
      v51 = MEMORY[0x1E69E6158];
      v49 = v46;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v38 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1DB301BC0(0, *(v38 + 2) + 1, 1, v38);
        v52 = v38;
      }

      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_1DB301BC0((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      v41 = &v38[40 * v40];
      v42 = v46;
      v43 = v47;
      v41[64] = v48;
      *(v41 + 2) = v42;
      *(v41 + 3) = v43;
      v52 = v38;
      sub_1DB301DBC(&v49);
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v44);
      *(v22 + 32) = v52;
      *&v46 = v21;
      LOBYTE(v49) = 0;
      OSLogger.log(contentsOf:withLevel:)(v22, &v49);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1E1285C70](0x746E6F434E4F534ALL, 0xEB00000000747865);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);

    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3D88C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v10 = v45;
  if (v45)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v48 = a5;
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0x746E6F434E4F534ALL, 0xEB00000000747865);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
    v10(&v45);
    sub_1DB365724(v10);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v48 = a5;
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0x746E6F434E4F534ALL, 0xEB00000000747865);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
    v11 = v45;
    v12 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v13 = sub_1DB50B0F0();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v45 = v15;
      *v14 = 136446722;
      v16 = sub_1DB50B350();
      v18 = sub_1DB3D4EE8(v16, v17, &v45);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2050;
      *(v14 + 14) = a4;
      *(v14 + 22) = 2082;
      v19 = sub_1DB3D4EE8(v11, *(&v11 + 1), &v45);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_1DB2F5000, v13, v12, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v15, -1, -1);
      MEMORY[0x1E1288220](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v20 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1DB50EE90;
      v51 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v50 = MEMORY[0x1E69E6A70];
      *&v48 = a1;
      *(&v48 + 1) = a2;
      v49 = a3;
      sub_1DB301CDC(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1DB301D4C(v44, &v45);
      v47 = 0;
      v23 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1DB301BC0(0, *(v23 + 2) + 1, 1, v23);
        v51 = v23;
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1DB301BC0((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[40 * v25];
      v27 = v45;
      v28 = v46;
      v26[64] = v47;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      v51 = v23;
      sub_1DB301DBC(&v48);
      v29._countAndFlagsBits = 58;
      v29._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v50 = MEMORY[0x1E69E6810];
      *&v48 = a4;
      sub_1DB301CDC(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1DB301D4C(v44, &v45);
      v47 = 0;
      v30 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1DB301BC0(0, *(v30 + 2) + 1, 1, v30);
        v51 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1DB301BC0((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v45;
      v35 = v46;
      v33[64] = v47;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v51 = v30;
      sub_1DB301DBC(&v48);
      v36._countAndFlagsBits = 0xD00000000000001BLL;
      v36._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *&v45 = 0;
      *(&v45 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
      swift_getObjectType();
      *&v48 = a5;
      sub_1DB50BA00();
      MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
      MEMORY[0x1E1285C70](0x746E6F434E4F534ALL, 0xEB00000000747865);
      MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
      v50 = MEMORY[0x1E69E6158];
      v48 = v45;
      sub_1DB301CDC(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1DB301D4C(v44, &v45);
      v47 = 0;
      v37 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1DB301BC0(0, *(v37 + 2) + 1, 1, v37);
        v51 = v37;
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1DB301BC0((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[40 * v39];
      v41 = v45;
      v42 = v46;
      v40[64] = v47;
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
      v51 = v37;
      sub_1DB301DBC(&v48);
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      *(v21 + 32) = v51;
      *&v45 = v20;
      LOBYTE(v48) = 0;
      OSLogger.log(contentsOf:withLevel:)(v21, &v48);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0x746E6F434E4F534ALL, 0xEB00000000747865);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
    swift_unknownObjectRelease();
    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3D9158(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v11 = v46;
  if (v46)
  {
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    *&v49 = a5;
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1E1285C70](0xD000000000000015, 0x80000001DB52CAE0);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);
    v11(&v46);
    sub_1DB365724(v11);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    *&v49 = a5;
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1E1285C70](0xD000000000000015, 0x80000001DB52CAE0);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);
    v12 = v46;
    v13 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v14 = sub_1DB50B0F0();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v46 = v16;
      *v15 = 136446722;
      v17 = sub_1DB50B350();
      v19 = sub_1DB3D4EE8(v17, v18, &v46);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2050;
      *(v15 + 14) = a4;
      *(v15 + 22) = 2082;
      v20 = sub_1DB3D4EE8(v12, *(&v12 + 1), &v46);

      *(v15 + 24) = v20;
      _os_log_impl(&dword_1DB2F5000, v14, v13, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v16, -1, -1);
      MEMORY[0x1E1288220](v15, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v21 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1DB50EE90;
      v52 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v23);
      v51 = MEMORY[0x1E69E6A70];
      *&v49 = a1;
      *(&v49 + 1) = a2;
      v50 = a3;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v24 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1DB301BC0(0, *(v24 + 2) + 1, 1, v24);
        v52 = v24;
      }

      v26 = *(v24 + 2);
      v25 = *(v24 + 3);
      if (v26 >= v25 >> 1)
      {
        v24 = sub_1DB301BC0((v25 > 1), v26 + 1, 1, v24);
      }

      *(v24 + 2) = v26 + 1;
      v27 = &v24[40 * v26];
      v28 = v46;
      v29 = v47;
      v27[64] = v48;
      *(v27 + 2) = v28;
      *(v27 + 3) = v29;
      v52 = v24;
      sub_1DB301DBC(&v49);
      v30._countAndFlagsBits = 58;
      v30._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v30);
      v51 = MEMORY[0x1E69E6810];
      *&v49 = a4;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v31 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1DB301BC0(0, *(v31 + 2) + 1, 1, v31);
        v52 = v31;
      }

      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      if (v33 >= v32 >> 1)
      {
        v31 = sub_1DB301BC0((v32 > 1), v33 + 1, 1, v31);
      }

      *(v31 + 2) = v33 + 1;
      v34 = &v31[40 * v33];
      v35 = v46;
      v36 = v47;
      v34[64] = v48;
      *(v34 + 2) = v35;
      *(v34 + 3) = v36;
      v52 = v31;
      sub_1DB301DBC(&v49);
      v37._countAndFlagsBits = 0xD00000000000001BLL;
      v37._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
      *&v49 = a5;
      sub_1DB50B530();
      MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
      MEMORY[0x1E1285C70](0xD000000000000015, 0x80000001DB52CAE0);
      MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);
      v51 = MEMORY[0x1E69E6158];
      v49 = v46;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v38 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1DB301BC0(0, *(v38 + 2) + 1, 1, v38);
        v52 = v38;
      }

      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_1DB301BC0((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      v41 = &v38[40 * v40];
      v42 = v46;
      v43 = v47;
      v41[64] = v48;
      *(v41 + 2) = v42;
      *(v41 + 3) = v43;
      v52 = v38;
      sub_1DB301DBC(&v49);
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v44);
      *(v22 + 32) = v52;
      *&v46 = v21;
      LOBYTE(v49) = 0;
      OSLogger.log(contentsOf:withLevel:)(v22, &v49);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1E1285C70](0xD000000000000015, 0x80000001DB52CAE0);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);

    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3D9A20(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v10 = v45;
  if (v45)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v48 = a5;
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0xD000000000000015, 0x80000001DB52CAE0);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
    v10(&v45);
    sub_1DB365724(v10);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v48 = a5;
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0xD000000000000015, 0x80000001DB52CAE0);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
    v11 = v45;
    v12 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v13 = sub_1DB50B0F0();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v45 = v15;
      *v14 = 136446722;
      v16 = sub_1DB50B350();
      v18 = sub_1DB3D4EE8(v16, v17, &v45);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2050;
      *(v14 + 14) = a4;
      *(v14 + 22) = 2082;
      v19 = sub_1DB3D4EE8(v11, *(&v11 + 1), &v45);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_1DB2F5000, v13, v12, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v15, -1, -1);
      MEMORY[0x1E1288220](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v20 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1DB50EE90;
      v51 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v50 = MEMORY[0x1E69E6A70];
      *&v48 = a1;
      *(&v48 + 1) = a2;
      v49 = a3;
      sub_1DB301CDC(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1DB301D4C(v44, &v45);
      v47 = 0;
      v23 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1DB301BC0(0, *(v23 + 2) + 1, 1, v23);
        v51 = v23;
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1DB301BC0((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[40 * v25];
      v27 = v45;
      v28 = v46;
      v26[64] = v47;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      v51 = v23;
      sub_1DB301DBC(&v48);
      v29._countAndFlagsBits = 58;
      v29._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v50 = MEMORY[0x1E69E6810];
      *&v48 = a4;
      sub_1DB301CDC(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1DB301D4C(v44, &v45);
      v47 = 0;
      v30 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1DB301BC0(0, *(v30 + 2) + 1, 1, v30);
        v51 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1DB301BC0((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v45;
      v35 = v46;
      v33[64] = v47;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v51 = v30;
      sub_1DB301DBC(&v48);
      v36._countAndFlagsBits = 0xD00000000000001BLL;
      v36._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *&v45 = 0;
      *(&v45 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
      swift_getObjectType();
      *&v48 = a5;
      sub_1DB50BA00();
      MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
      MEMORY[0x1E1285C70](0xD000000000000015, 0x80000001DB52CAE0);
      MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
      v50 = MEMORY[0x1E69E6158];
      v48 = v45;
      sub_1DB301CDC(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1DB301D4C(v44, &v45);
      v47 = 0;
      v37 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1DB301BC0(0, *(v37 + 2) + 1, 1, v37);
        v51 = v37;
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1DB301BC0((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[40 * v39];
      v41 = v45;
      v42 = v46;
      v40[64] = v47;
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
      v51 = v37;
      sub_1DB301DBC(&v48);
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      *(v21 + 32) = v51;
      *&v45 = v20;
      LOBYTE(v48) = 0;
      OSLogger.log(contentsOf:withLevel:)(v21, &v48);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0xD000000000000015, 0x80000001DB52CAE0);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
    swift_unknownObjectRelease();
    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3DA2B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v11 = v46;
  if (v46)
  {
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    *&v49 = a5;
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB52CAC0);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);
    v11(&v46);
    sub_1DB365724(v11);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    *&v49 = a5;
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB52CAC0);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);
    v12 = v46;
    v13 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v14 = sub_1DB50B0F0();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v46 = v16;
      *v15 = 136446722;
      v17 = sub_1DB50B350();
      v19 = sub_1DB3D4EE8(v17, v18, &v46);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2050;
      *(v15 + 14) = a4;
      *(v15 + 22) = 2082;
      v20 = sub_1DB3D4EE8(v12, *(&v12 + 1), &v46);

      *(v15 + 24) = v20;
      _os_log_impl(&dword_1DB2F5000, v14, v13, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v16, -1, -1);
      MEMORY[0x1E1288220](v15, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v21 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1DB50EE90;
      v52 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v23);
      v51 = MEMORY[0x1E69E6A70];
      *&v49 = a1;
      *(&v49 + 1) = a2;
      v50 = a3;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v24 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1DB301BC0(0, *(v24 + 2) + 1, 1, v24);
        v52 = v24;
      }

      v26 = *(v24 + 2);
      v25 = *(v24 + 3);
      if (v26 >= v25 >> 1)
      {
        v24 = sub_1DB301BC0((v25 > 1), v26 + 1, 1, v24);
      }

      *(v24 + 2) = v26 + 1;
      v27 = &v24[40 * v26];
      v28 = v46;
      v29 = v47;
      v27[64] = v48;
      *(v27 + 2) = v28;
      *(v27 + 3) = v29;
      v52 = v24;
      sub_1DB301DBC(&v49);
      v30._countAndFlagsBits = 58;
      v30._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v30);
      v51 = MEMORY[0x1E69E6810];
      *&v49 = a4;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v31 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1DB301BC0(0, *(v31 + 2) + 1, 1, v31);
        v52 = v31;
      }

      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      if (v33 >= v32 >> 1)
      {
        v31 = sub_1DB301BC0((v32 > 1), v33 + 1, 1, v31);
      }

      *(v31 + 2) = v33 + 1;
      v34 = &v31[40 * v33];
      v35 = v46;
      v36 = v47;
      v34[64] = v48;
      *(v34 + 2) = v35;
      *(v34 + 3) = v36;
      v52 = v31;
      sub_1DB301DBC(&v49);
      v37._countAndFlagsBits = 0xD00000000000001BLL;
      v37._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
      *&v49 = a5;
      sub_1DB50B530();
      MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
      MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB52CAC0);
      MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);
      v51 = MEMORY[0x1E69E6158];
      v49 = v46;
      sub_1DB301CDC(&v49, v45);
      v46 = 0u;
      v47 = 0u;
      sub_1DB301D4C(v45, &v46);
      v48 = 0;
      v38 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1DB301BC0(0, *(v38 + 2) + 1, 1, v38);
        v52 = v38;
      }

      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_1DB301BC0((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      v41 = &v38[40 * v40];
      v42 = v46;
      v43 = v47;
      v41[64] = v48;
      *(v41 + 2) = v42;
      *(v41 + 3) = v43;
      v52 = v38;
      sub_1DB301DBC(&v49);
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v44);
      *(v22 + 32) = v52;
      *&v46 = v21;
      LOBYTE(v49) = 0;
      OSLogger.log(contentsOf:withLevel:)(v22, &v49);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
    MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB52CAC0);
    MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);

    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3DAB78(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v10 = v45;
  if (v45)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v48 = a5;
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB52CAC0);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
    v10(&v45);
    sub_1DB365724(v10);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    *&v48 = a5;
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB52CAC0);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
    v11 = v45;
    v12 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v13 = sub_1DB50B0F0();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v45 = v15;
      *v14 = 136446722;
      v16 = sub_1DB50B350();
      v18 = sub_1DB3D4EE8(v16, v17, &v45);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2050;
      *(v14 + 14) = a4;
      *(v14 + 22) = 2082;
      v19 = sub_1DB3D4EE8(v11, *(&v11 + 1), &v45);

      *(v14 + 24) = v19;
      _os_log_impl(&dword_1DB2F5000, v13, v12, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v15, -1, -1);
      MEMORY[0x1E1288220](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v20 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1DB50EE90;
      v51 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v50 = MEMORY[0x1E69E6A70];
      *&v48 = a1;
      *(&v48 + 1) = a2;
      v49 = a3;
      sub_1DB301CDC(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1DB301D4C(v44, &v45);
      v47 = 0;
      v23 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1DB301BC0(0, *(v23 + 2) + 1, 1, v23);
        v51 = v23;
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1DB301BC0((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[40 * v25];
      v27 = v45;
      v28 = v46;
      v26[64] = v47;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      v51 = v23;
      sub_1DB301DBC(&v48);
      v29._countAndFlagsBits = 58;
      v29._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v50 = MEMORY[0x1E69E6810];
      *&v48 = a4;
      sub_1DB301CDC(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1DB301D4C(v44, &v45);
      v47 = 0;
      v30 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1DB301BC0(0, *(v30 + 2) + 1, 1, v30);
        v51 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1DB301BC0((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v45;
      v35 = v46;
      v33[64] = v47;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v51 = v30;
      sub_1DB301DBC(&v48);
      v36._countAndFlagsBits = 0xD00000000000001BLL;
      v36._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *&v45 = 0;
      *(&v45 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
      swift_getObjectType();
      *&v48 = a5;
      sub_1DB50BA00();
      MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
      MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB52CAC0);
      MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
      v50 = MEMORY[0x1E69E6158];
      v48 = v45;
      sub_1DB301CDC(&v48, v44);
      v45 = 0u;
      v46 = 0u;
      sub_1DB301D4C(v44, &v45);
      v47 = 0;
      v37 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1DB301BC0(0, *(v37 + 2) + 1, 1, v37);
        v51 = v37;
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1DB301BC0((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[40 * v39];
      v41 = v45;
      v42 = v46;
      v40[64] = v47;
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
      v51 = v37;
      sub_1DB301DBC(&v48);
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      *(v21 + 32) = v51;
      *&v45 = v20;
      LOBYTE(v48) = 0;
      OSLogger.log(contentsOf:withLevel:)(v21, &v48);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    swift_getObjectType();
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB52CAC0);
    MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
    swift_unknownObjectRelease();
    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3DB408(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v12 = v47;
  if (v47)
  {
    *&v47 = 0;
    *(&v47 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000017, 0x80000001DB52CE80);
    *&v50 = a5;
    *(&v50 + 1) = a6;
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x7865206572612060, 0xEF64657473756168);
    v12(&v47);
    sub_1DB365724(v12);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v47 = 0;
    *(&v47 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000017, 0x80000001DB52CE80);
    *&v50 = a5;
    *(&v50 + 1) = a6;
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x7865206572612060, 0xEF64657473756168);
    v13 = v47;
    v14 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v15 = sub_1DB50B0F0();
    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v47 = v17;
      *v16 = 136446722;
      v18 = sub_1DB50B350();
      v20 = sub_1DB3D4EE8(v18, v19, &v47);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2050;
      *(v16 + 14) = a4;
      *(v16 + 22) = 2082;
      v21 = sub_1DB3D4EE8(v13, *(&v13 + 1), &v47);

      *(v16 + 24) = v21;
      _os_log_impl(&dword_1DB2F5000, v15, v14, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v17, -1, -1);
      MEMORY[0x1E1288220](v16, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v22 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1DB50EE90;
      v53 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v24._countAndFlagsBits = 0;
      v24._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v24);
      v52 = MEMORY[0x1E69E6A70];
      *&v50 = a1;
      *(&v50 + 1) = a2;
      v51 = a3;
      sub_1DB301CDC(&v50, v46);
      v47 = 0u;
      v48 = 0u;
      sub_1DB301D4C(v46, &v47);
      v49 = 0;
      v25 = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1DB301BC0(0, *(v25 + 2) + 1, 1, v25);
        v53 = v25;
      }

      v27 = *(v25 + 2);
      v26 = *(v25 + 3);
      if (v27 >= v26 >> 1)
      {
        v25 = sub_1DB301BC0((v26 > 1), v27 + 1, 1, v25);
      }

      *(v25 + 2) = v27 + 1;
      v28 = &v25[40 * v27];
      v29 = v47;
      v30 = v48;
      v28[64] = v49;
      *(v28 + 2) = v29;
      *(v28 + 3) = v30;
      v53 = v25;
      sub_1DB301DBC(&v50);
      v31._countAndFlagsBits = 58;
      v31._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v31);
      v52 = MEMORY[0x1E69E6810];
      *&v50 = a4;
      sub_1DB301CDC(&v50, v46);
      v47 = 0u;
      v48 = 0u;
      sub_1DB301D4C(v46, &v47);
      v49 = 0;
      v32 = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1DB301BC0(0, *(v32 + 2) + 1, 1, v32);
        v53 = v32;
      }

      v34 = *(v32 + 2);
      v33 = *(v32 + 3);
      if (v34 >= v33 >> 1)
      {
        v32 = sub_1DB301BC0((v33 > 1), v34 + 1, 1, v32);
      }

      *(v32 + 2) = v34 + 1;
      v35 = &v32[40 * v34];
      v36 = v47;
      v37 = v48;
      v35[64] = v49;
      *(v35 + 2) = v36;
      *(v35 + 3) = v37;
      v53 = v32;
      sub_1DB301DBC(&v50);
      v38._countAndFlagsBits = 0xD00000000000001BLL;
      v38._object = 0x80000001DB52C9D0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v38);
      *&v47 = 0;
      *(&v47 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0xD000000000000017, 0x80000001DB52CE80);
      *&v50 = a5;
      *(&v50 + 1) = a6;
      sub_1DB50B530();
      MEMORY[0x1E1285C70](0x7865206572612060, 0xEF64657473756168);
      v52 = MEMORY[0x1E69E6158];
      v50 = v47;
      sub_1DB301CDC(&v50, v46);
      v47 = 0u;
      v48 = 0u;
      sub_1DB301D4C(v46, &v47);
      v49 = 0;
      v39 = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_1DB301BC0(0, *(v39 + 2) + 1, 1, v39);
        v53 = v39;
      }

      v41 = *(v39 + 2);
      v40 = *(v39 + 3);
      if (v41 >= v40 >> 1)
      {
        v39 = sub_1DB301BC0((v40 > 1), v41 + 1, 1, v39);
      }

      *(v39 + 2) = v41 + 1;
      v42 = &v39[40 * v41];
      v43 = v47;
      v44 = v48;
      v42[64] = v49;
      *(v42 + 2) = v43;
      *(v42 + 3) = v44;
      v53 = v39;
      sub_1DB301DBC(&v50);
      v45._countAndFlagsBits = 0;
      v45._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v45);
      *(v23 + 32) = v53;
      *&v47 = v22;
      LOBYTE(v50) = 0;
      OSLogger.log(contentsOf:withLevel:)(v23, &v50);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000017, 0x80000001DB52CE80);
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x7865206572612060, 0xEF64657473756168);

    sub_1DB50B580();
    __break(1u);
  }
}

void sub_1DB3DBC04(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_1ECC420F0 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v16 = v51;
  if (v51)
  {
    *&v51 = 0;
    *(&v51 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    v54 = v51;
    MEMORY[0x1E1285C70](0xD00000000000001BLL, 0x80000001DB52CCF0);
    *&v52 = a7;
    *(&v52 + 1) = a8;
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x7865206572612060, 0xEF64657473756168);
    v16(&v51);
    sub_1DB365724(v16);
LABEL_26:

    return;
  }

  if (qword_1ECC420E8 != -1)
  {
    swift_once();
  }

  if (byte_1ECC44F38 == 1)
  {
    *&v51 = 0;
    *(&v51 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    v54 = v51;
    MEMORY[0x1E1285C70](0xD00000000000001BLL, 0x80000001DB52CCF0);
    *&v51 = a5;
    *(&v51 + 1) = a6;
    *&v52 = a7;
    *(&v52 + 1) = a8;
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x7865206572612060, 0xEF64657473756168);
    v17 = v54;
    v18 = sub_1DB50AF30();
    sub_1DB3D6CE4();
    v19 = sub_1DB50B0F0();
    if (os_log_type_enabled(v19, v18))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v51 = v21;
      *v20 = 136446722;
      v22 = sub_1DB50B350();
      v24 = sub_1DB3D4EE8(v22, v23, &v51);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2050;
      *(v20 + 14) = a4;
      *(v20 + 22) = 2082;
      v25 = sub_1DB3D4EE8(v17, *(&v17 + 1), &v51);

      *(v20 + 24) = v25;
      _os_log_impl(&dword_1DB2F5000, v19, v18, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E1288220](v21, -1, -1);
      MEMORY[0x1E1288220](v20, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1ECC44F38 == 2)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v49 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1DB50EE90;
      v57 = sub_1DB301BC0(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v27);
      v56 = MEMORY[0x1E69E6A70];
      *&v54 = a1;
      *(&v54 + 1) = a2;
      v55 = a3;
      sub_1DB301CDC(&v54, v50);
      v51 = 0u;
      v52 = 0u;
      sub_1DB301D4C(v50, &v51);
      v53 = 0;
      v28 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1DB301BC0(0, *(v28 + 2) + 1, 1, v28);
        v57 = v28;
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_1DB301BC0((v29 > 1), v30 + 1, 1, v28);
      }

      *(v28 + 2) = v30 + 1;
      v31 = &v28[40 * v30];
      v32 = v51;
      v33 = v52;
      v31[64] = v53;
      *(v31 + 2) = v32;
      *(v31 + 3) = v33;
      v57 = v28;
      sub_1DB301DBC(&v54);
      v34._countAndFlagsBits = 58;
      v34._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v34);
      v56 = MEMORY[0x1E69E6810];
      *&v54 = a4;
      sub_1DB301CDC(&v54, v50);
      v51 = 0u;
      v52 = 0u;
      sub_1DB301D4C(v50, &v51);
      v53 = 0;
      v35 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1DB301BC0(0, *(v35 + 2) + 1, 1, v35);
        v57 = v35;
      }

      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      if (v37 >= v36 >> 1)
      {
        v35 = sub_1DB301BC0((v36 > 1), v37 + 1, 1, v35);
      }

      *(v35 + 2) = v37 + 1;
      v38 = &v35[40 * v37];
      v39 = v51;
      v40 = v52;
      v38[64] = v53;
      *(v38 + 2) = v39;
      *(v38 + 3) = v40;
      v57 = v35;
      sub_1DB301DBC(&v54);
      v41._object = 0x80000001DB52C9D0;
      v41._countAndFlagsBits = 0xD00000000000001BLL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v41);
      *&v51 = 0;
      *(&v51 + 1) = 0xE000000000000000;
      sub_1DB50B320();
      v54 = v51;
      MEMORY[0x1E1285C70](0xD00000000000001BLL, 0x80000001DB52CCF0);
      *&v51 = a5;
      *(&v51 + 1) = a6;
      *&v52 = a7;
      *(&v52 + 1) = a8;
      sub_1DB50B530();
      MEMORY[0x1E1285C70](0x7865206572612060, 0xEF64657473756168);
      v56 = MEMORY[0x1E69E6158];
      sub_1DB301CDC(&v54, v50);
      v51 = 0u;
      v52 = 0u;
      sub_1DB301D4C(v50, &v51);
      v53 = 0;
      v42 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_1DB301BC0(0, *(v42 + 2) + 1, 1, v42);
        v57 = v42;
      }

      v44 = *(v42 + 2);
      v43 = *(v42 + 3);
      if (v44 >= v43 >> 1)
      {
        v42 = sub_1DB301BC0((v43 > 1), v44 + 1, 1, v42);
      }

      *(v42 + 2) = v44 + 1;
      v45 = &v42[40 * v44];
      v46 = v51;
      v47 = v52;
      v45[64] = v53;
      *(v45 + 2) = v46;
      *(v45 + 3) = v47;
      v57 = v42;
      sub_1DB301DBC(&v54);
      v48._countAndFlagsBits = 0;
      v48._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v48);
      *(v26 + 32) = v57;
      *&v51 = v49;
      LOBYTE(v54) = 0;
      OSLogger.log(contentsOf:withLevel:)(v26, &v54);
      goto LABEL_26;
    }

    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD00000000000001BLL, 0x80000001DB52CCF0);
    sub_1DB50B530();
    MEMORY[0x1E1285C70](0x7865206572612060, 0xEF64657473756168);

    sub_1DB50B580();
    __break(1u);
  }
}

uint64_t sub_1DB3DC428()
{
  v2 = sub_1DB509CA0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v23 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v23 - v14;
  sub_1DB509B60();
  sub_1DB3DC6BC(v15);
  if (v1)
  {
    (*(v3 + 8))(v12, v2);
  }

  else
  {
    v23[1] = v0;
    v16 = *(v3 + 8);
    v16(v12, v2);
    v17 = sub_1DB509B90();
    v16(v15, v2);
    sub_1DB509B60();
    sub_1DB3DC6BC(v9);
    v16(v6, v2);
    v18 = sub_1DB509B90();
    v16(v9, v2);
    v19 = *(v17 + 16);
    if (*(v18 + 16) >= v19)
    {
      if (v19)
      {
        v20 = 0;
        while (1)
        {
          v21 = *(v17 + v20 + 32) == *(v18 + v20 + 32) && *(v17 + v20 + 40) == *(v18 + v20 + 40);
          if (!v21 && (sub_1DB50BA30() & 1) == 0)
          {
            break;
          }

          v20 += 16;
          if (!--v19)
          {
            goto LABEL_14;
          }
        }

        LOBYTE(v2) = 0;
      }

      else
      {
LABEL_14:
        LOBYTE(v2) = 1;
      }
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

void sub_1DB3DC6BC(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = sub_1DB509EE0();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v42 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DB509F00();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DB509CA0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v40 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v40 - v16;
  v17 = sub_1DB509B90();
  v47 = *(v17 + 16);
  if (v47)
  {
    v18 = 0;
    v45 = (v8 + 32);
    v19 = (v8 + 8);
    v20 = (v17 + 40);
    v21 = MEMORY[0x1E69E7CC0];
    v46 = v17;
    while (v18 < *(v17 + 16))
    {
      v23 = *(v20 - 1);
      v22 = *v20;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1DB302404(0, *(v21 + 16) + 1, 1, v21);
      }

      v25 = *(v21 + 16);
      v24 = *(v21 + 24);
      if (v25 >= v24 >> 1)
      {
        v21 = sub_1DB302404((v24 > 1), v25 + 1, 1, v21);
      }

      *(v21 + 16) = v25 + 1;
      v26 = v21 + 16 * v25;
      *(v26 + 32) = v23;
      *(v26 + 40) = v22;
      v27 = objc_opt_self();
      v28 = sub_1DB50A980();

      v29 = [v27 fileURLWithPathComponents_];

      if (!v29)
      {

        goto LABEL_13;
      }

      ++v18;
      v30 = v49;
      sub_1DB509C20();

      v31 = v48;
      (*v45)(v48, v30, v7);
      v32 = v51;
      sub_1DB509B60();
      v33 = v50;
      sub_1DB509BE0();
      v34 = *v19;
      (*v19)(v32, v7);
      v21 = sub_1DB509B90();
      v34(v33, v7);
      v34(v31, v7);
      v20 += 2;
      v17 = v46;
      if (v47 == v18)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v35 = objc_opt_self();
    v36 = sub_1DB50A980();

    v37 = [v35 fileURLWithPathComponents_];

    if (v37)
    {
      sub_1DB509C20();
    }

    else
    {
LABEL_13:
      sub_1DB509ED0();
      sub_1DB34DB68(MEMORY[0x1E69E7CC0]);
      sub_1DB3DCB68();
      v38 = v41;
      v39 = v44;
      sub_1DB509B00();
      sub_1DB509EF0();
      (*(v43 + 8))(v38, v39);
      swift_willThrow();
    }
  }
}

unint64_t sub_1DB3DCB68()
{
  result = qword_1ECC44F60;
  if (!qword_1ECC44F60)
  {
    sub_1DB509F00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44F60);
  }

  return result;
}

void sub_1DB3DCBD0(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    *(v1 + 24) = a1;
    *(v1 + 32) = 2;
    v4 = a1;
    os_unfair_lock_unlock(v2 + 4);
    v5 = v3[2];
    if (v5)
    {
      v20 = v3;
      v6 = (v3 + 4);
      v7 = &unk_1ECC44FC0;
      do
      {
        sub_1DB30C4B8(v6, v28, v7, &unk_1DB50F4E0);
        sub_1DB30C4B8(v28, v25, v7, &unk_1DB50F4E0);
        if (v27)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
          swift_allocError();
          *v8 = a1;
          v9 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1DB30623C(v28, v7, &unk_1DB50F4E0);
        }

        else
        {

          v10 = v7;
          v12 = v25[2];
          v11 = v25[3];
          sub_1DB2FEA0C(&v26, v22);
          v13 = v23;
          v14 = v24;
          __swift_project_boxed_opaque_existential_1(v22, v23);
          v15 = swift_allocObject();
          v15[2] = v12;
          v15[3] = v11;
          v15[4] = a1;
          v16 = *(v14 + 8);
          v17 = a1;

          v16(sub_1DB3E2E68, v15, v13, v14);
          v7 = v10;

          sub_1DB30623C(v28, v10, &unk_1DB50F4E0);
          __swift_destroy_boxed_opaque_existential_0(v22);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
      v18 = MEMORY[0x1E69E7D48];
      v19 = v20;
    }

    else
    {
      v18 = MEMORY[0x1E69E7D48];
      v19 = v3;
    }

    sub_1DB3E30AC(v19, 0, v18);
  }
}

void sub_1DB3DCE84(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 40) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 40))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    v4 = *(v1 + 32);
    sub_1DB3E30E8(v3, v4, 0);
    v5 = a1;
    *(v1 + 24) = a1;
    *(v1 + 32) = 0;
    *(v1 + 40) = 2;
    sub_1DB30C340(v3, v4, 0);
    os_unfair_lock_unlock(v2 + 4);
    v6 = v3[2];
    if (v6)
    {
      v20 = v3;
      v21 = v4;
      v7 = (v3 + 4);
      v8 = &unk_1DB518FD0;
      do
      {
        sub_1DB30C4B8(v7, v29, &qword_1ECC429C0, v8);
        sub_1DB30C4B8(v29, v26, &qword_1ECC429C0, v8);
        if (v28)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
          swift_allocError();
          *v9 = a1;
          v10 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1DB30623C(v29, &qword_1ECC429C0, v8);
        }

        else
        {

          v12 = v26[2];
          v11 = v26[3];
          sub_1DB2FEA0C(&v27, v23);
          v13 = v24;
          v14 = v25;
          __swift_project_boxed_opaque_existential_1(v23, v24);
          v15 = swift_allocObject();
          v15[2] = v12;
          v15[3] = v11;
          v15[4] = a1;
          v16 = v8;
          v17 = *(v14 + 8);
          v18 = a1;

          v17(sub_1DB3E31BC, v15, v13, v14);
          v8 = v16;
          v4 = v21;

          sub_1DB30623C(v29, &qword_1ECC429C0, v16);
          __swift_destroy_boxed_opaque_existential_0(v23);
        }

        v7 += 80;
        --v6;
      }

      while (v6);
      v19 = v20;
    }

    else
    {
      v19 = v3;
    }

    sub_1DB30C340(v19, v4, 0);
  }
}

void sub_1DB3DD13C(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    sub_1DB3E2FCC(v3, 0);
    v4 = a1;
    *(v1 + 24) = a1;
    *(v1 + 32) = 2;
    sub_1DB30C3C4(v3, 0);
    os_unfair_lock_unlock(v2 + 4);
    v18 = v3;
    v5 = v3[2];
    if (v5)
    {
      v6 = (v3 + 4);
      v7 = &unk_1ECC44FD0;
      do
      {
        sub_1DB30C4B8(v6, v26, v7, &qword_1DB50F1D0);
        sub_1DB30C4B8(v26, v23, v7, &qword_1DB50F1D0);
        if (v25)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
          swift_allocError();
          *v8 = a1;
          v9 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1DB30623C(v26, v7, &qword_1DB50F1D0);
        }

        else
        {

          v10 = v7;
          v12 = v23[2];
          v11 = v23[3];
          sub_1DB2FEA0C(&v24, v20);
          v13 = v21;
          v14 = v22;
          __swift_project_boxed_opaque_existential_1(v20, v21);
          v15 = swift_allocObject();
          v15[2] = v12;
          v15[3] = v11;
          v15[4] = a1;
          v16 = *(v14 + 8);
          v17 = a1;

          v16(sub_1DB3E31BC, v15, v13, v14);
          v7 = v10;

          sub_1DB30623C(v26, v10, &qword_1DB50F1D0);
          __swift_destroy_boxed_opaque_existential_0(v20);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }

    sub_1DB30C3C4(v18, 0);
  }
}

void sub_1DB3DD3E0(void *a1)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42BE0, &unk_1DB518FC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v28 - v7);
  v9 = v1[2];
  os_unfair_lock_lock(v9 + 4);
  v10 = *(*v1 + 96);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + v10, v8, &unk_1ECC42BE0, &unk_1DB518FC0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1DB30623C(v8, &unk_1ECC42BE0, &unk_1DB518FC0);
    os_unfair_lock_unlock(v9 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v12 = *v8;
    v13 = v29;
    *v5 = v29;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v14 = v13;
    sub_1DB30C2D8(v5, v1 + v10, &unk_1ECC42BE0, &unk_1DB518FC0);
    swift_endAccess();
    os_unfair_lock_unlock(v9 + 4);
    v15 = *(v12 + 16);
    if (v15)
    {
      v28[1] = v12;
      v16 = v12 + 32;
      do
      {
        sub_1DB30C4B8(v16, v38, qword_1ECC453B0, &qword_1DB50F720);
        sub_1DB30C4B8(v38, v33, qword_1ECC453B0, &qword_1DB50F720);
        if (v37)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
          swift_allocError();
          v17 = v29;
          *v18 = v29;
          v19 = v17;
          swift_continuation_throwingResumeWithError();
          sub_1DB30623C(v38, qword_1ECC453B0, &qword_1DB50F720);
        }

        else
        {

          v20 = v34;
          v21 = v35;
          sub_1DB2FEA0C(&v36, v30);
          v22 = v31;
          v23 = v32;
          __swift_project_boxed_opaque_existential_1(v30, v31);
          v24 = swift_allocObject();
          v24[2] = v20;
          v24[3] = v21;
          v25 = v29;
          v24[4] = v29;
          v26 = *(v23 + 8);
          v27 = v25;

          v26(sub_1DB3E31BC, v24, v22, v23);

          sub_1DB30623C(v38, qword_1ECC453B0, &qword_1DB50F720);
          __swift_destroy_boxed_opaque_existential_0(v30);
        }

        v16 += 80;
        --v15;
      }

      while (v15);
    }
  }
}

void sub_1DB3DD7A0(void *a1)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42BD0, &unk_1DB518FB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v28 - v7);
  v9 = v1[2];
  os_unfair_lock_lock(v9 + 4);
  v10 = *(*v1 + 96);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + v10, v8, &unk_1ECC42BD0, &unk_1DB518FB0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1DB30623C(v8, &unk_1ECC42BD0, &unk_1DB518FB0);
    os_unfair_lock_unlock(v9 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v12 = *v8;
    v13 = v29;
    *v5 = v29;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v14 = v13;
    sub_1DB30C2D8(v5, v1 + v10, &unk_1ECC42BD0, &unk_1DB518FB0);
    swift_endAccess();
    os_unfair_lock_unlock(v9 + 4);
    v15 = *(v12 + 16);
    if (v15)
    {
      v28[1] = v12;
      v16 = v12 + 32;
      do
      {
        sub_1DB30C4B8(v16, v38, &unk_1ECC453A0, &unk_1DB50F710);
        sub_1DB30C4B8(v38, v33, &unk_1ECC453A0, &unk_1DB50F710);
        if (v37)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
          swift_allocError();
          v17 = v29;
          *v18 = v29;
          v19 = v17;
          swift_continuation_throwingResumeWithError();
          sub_1DB30623C(v38, &unk_1ECC453A0, &unk_1DB50F710);
        }

        else
        {

          v20 = v34;
          v21 = v35;
          sub_1DB2FEA0C(&v36, v30);
          v22 = v31;
          v23 = v32;
          __swift_project_boxed_opaque_existential_1(v30, v31);
          v24 = swift_allocObject();
          v24[2] = v20;
          v24[3] = v21;
          v25 = v29;
          v24[4] = v29;
          v26 = *(v23 + 8);
          v27 = v25;

          v26(sub_1DB3E31BC, v24, v22, v23);

          sub_1DB30623C(v38, &unk_1ECC453A0, &unk_1DB50F710);
          __swift_destroy_boxed_opaque_existential_0(v30);
        }

        v16 += 80;
        --v15;
      }

      while (v15);
    }
  }
}

void sub_1DB3DDB60(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    *(v1 + 24) = a1;
    *(v1 + 32) = 2;
    v4 = a1;
    os_unfair_lock_unlock(v2 + 4);
    v18 = v3;
    v5 = v3[2];
    if (v5)
    {
      v6 = (v3 + 4);
      v7 = &qword_1ECC428D0;
      do
      {
        sub_1DB30C4B8(v6, v26, v7, &qword_1DB50F350);
        sub_1DB30C4B8(v26, v23, v7, &qword_1DB50F350);
        if (v25)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
          swift_allocError();
          *v8 = a1;
          v9 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1DB30623C(v26, v7, &qword_1DB50F350);
        }

        else
        {

          v10 = v7;
          v12 = v23[2];
          v11 = v23[3];
          sub_1DB2FEA0C(&v24, v20);
          v13 = v21;
          v14 = v22;
          __swift_project_boxed_opaque_existential_1(v20, v21);
          v15 = swift_allocObject();
          v15[2] = v12;
          v15[3] = v11;
          v15[4] = a1;
          v16 = *(v14 + 8);
          v17 = a1;

          v16(sub_1DB3E31BC, v15, v13, v14);
          v7 = v10;

          sub_1DB30623C(v26, v10, &qword_1DB50F350);
          __swift_destroy_boxed_opaque_existential_0(v20);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }

    sub_1DB3E30AC(v18, 0, MEMORY[0x1E69E7D60]);
  }
}

void sub_1DB3DDDFC(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    sub_1DB3E2FF0(v3, 0);
    v4 = a1;
    *(v1 + 24) = a1;
    *(v1 + 32) = 2;
    sub_1DB3E30AC(v3, 0, MEMORY[0x1E69E7D60]);
    os_unfair_lock_unlock(v2 + 4);
    v18 = v3;
    v5 = v3[2];
    if (v5)
    {
      v6 = (v3 + 4);
      v7 = &unk_1ECC428C0;
      do
      {
        sub_1DB30C4B8(v6, v26, v7, &unk_1DB50F6F0);
        sub_1DB30C4B8(v26, v23, v7, &unk_1DB50F6F0);
        if (v25)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
          swift_allocError();
          *v8 = a1;
          v9 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1DB30623C(v26, v7, &unk_1DB50F6F0);
        }

        else
        {

          v10 = v7;
          v12 = v23[2];
          v11 = v23[3];
          sub_1DB2FEA0C(&v24, v20);
          v13 = v21;
          v14 = v22;
          __swift_project_boxed_opaque_existential_1(v20, v21);
          v15 = swift_allocObject();
          v15[2] = v12;
          v15[3] = v11;
          v15[4] = a1;
          v16 = *(v14 + 8);
          v17 = a1;

          v16(sub_1DB3E31BC, v15, v13, v14);
          v7 = v10;

          sub_1DB30623C(v26, v10, &unk_1DB50F6F0);
          __swift_destroy_boxed_opaque_existential_0(v20);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }

    sub_1DB3E30AC(v18, 0, MEMORY[0x1E69E7D60]);
  }
}

void sub_1DB3DE0F8(void *a1)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42BB0, &unk_1DB50F6C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v28 - v7);
  v9 = v1[2];
  os_unfair_lock_lock(v9 + 4);
  v10 = *(*v1 + 96);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + v10, v8, &unk_1ECC42BB0, &unk_1DB50F6C0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1DB30623C(v8, &unk_1ECC42BB0, &unk_1DB50F6C0);
    os_unfair_lock_unlock(v9 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v12 = *v8;
    v13 = v29;
    *v5 = v29;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v14 = v13;
    sub_1DB30C2D8(v5, v1 + v10, &unk_1ECC42BB0, &unk_1DB50F6C0);
    swift_endAccess();
    os_unfair_lock_unlock(v9 + 4);
    v15 = *(v12 + 16);
    if (v15)
    {
      v28[1] = v12;
      v16 = v12 + 32;
      do
      {
        sub_1DB30C4B8(v16, v38, &qword_1ECC42870, &unk_1DB518F90);
        sub_1DB30C4B8(v38, v33, &qword_1ECC42870, &unk_1DB518F90);
        if (v37)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
          swift_allocError();
          v17 = v29;
          *v18 = v29;
          v19 = v17;
          swift_continuation_throwingResumeWithError();
          sub_1DB30623C(v38, &qword_1ECC42870, &unk_1DB518F90);
        }

        else
        {

          v20 = v34;
          v21 = v35;
          sub_1DB2FEA0C(&v36, v30);
          v22 = v31;
          v23 = v32;
          __swift_project_boxed_opaque_existential_1(v30, v31);
          v24 = swift_allocObject();
          v24[2] = v20;
          v24[3] = v21;
          v25 = v29;
          v24[4] = v29;
          v26 = *(v23 + 8);
          v27 = v25;

          v26(sub_1DB3E31BC, v24, v22, v23);

          sub_1DB30623C(v38, &qword_1ECC42870, &unk_1DB518F90);
          __swift_destroy_boxed_opaque_existential_0(v30);
        }

        v16 += 80;
        --v15;
      }

      while (v15);
    }
  }
}

void sub_1DB3DE4B8(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  v3 = *(v1 + 32);
  if (*(v1 + 48) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 48))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 24);
    v5 = *(v1 + 40);
    sub_1DB3E3028(v4, *(v1 + 32), v5, 0);
    v6 = a1;
    *(v1 + 24) = a1;
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 48) = 2;
    v20 = v5;
    v21 = v3;
    sub_1DB30C0D4(v4, v3, v5, 0);
    os_unfair_lock_unlock(v2 + 4);
    v22 = v4;
    v7 = v4[2];
    if (v7)
    {
      v8 = (v4 + 4);
      v9 = &qword_1ECC428A0;
      do
      {
        sub_1DB30C4B8(v8, v30, v9, &unk_1DB50F6E0);
        sub_1DB30C4B8(v30, v27, v9, &unk_1DB50F6E0);
        if (v29)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
          swift_allocError();
          *v10 = a1;
          v11 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1DB30623C(v30, v9, &unk_1DB50F6E0);
        }

        else
        {

          v13 = v27[2];
          v12 = v27[3];
          sub_1DB2FEA0C(&v28, v24);
          v14 = v25;
          v15 = v26;
          __swift_project_boxed_opaque_existential_1(v24, v25);
          v16 = v9;
          v17 = swift_allocObject();
          v17[2] = v13;
          v17[3] = v12;
          v17[4] = a1;
          v18 = *(v15 + 8);
          v19 = a1;

          v18(sub_1DB3E31BC, v17, v14, v15);

          v9 = v16;

          sub_1DB30623C(v30, v16, &unk_1DB50F6E0);
          __swift_destroy_boxed_opaque_existential_0(v24);
        }

        v8 += 80;
        --v7;
      }

      while (v7);
    }

    sub_1DB30C0D4(v22, v21, v20, 0);
  }
}

void sub_1DB3DE7B4(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (*(v5 + 32) == 3)
  {
    os_unfair_lock_unlock(v8 + 4);
  }

  else if (*(v5 + 32))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v9 = *(v5 + 24);
    *(v5 + 24) = a1;
    *(v5 + 32) = 2;
    v10 = a1;
    os_unfair_lock_unlock(v8 + 4);
    v23 = v9;
    v11 = v9[2];
    if (v11)
    {
      v12 = v23 + 32;
      v24 = a2;
      do
      {
        sub_1DB30C4B8(v12, v33, a2, a3);
        sub_1DB30C4B8(v33, v30, a2, a3);
        if (v32)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
          swift_allocError();
          *v13 = a1;
          v14 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1DB30623C(v33, a2, a3);
        }

        else
        {

          v15 = v30[2];
          v16 = v30[3];
          sub_1DB2FEA0C(&v31, v27);
          v18 = v28;
          v17 = v29;
          __swift_project_boxed_opaque_existential_1(v27, v28);
          v19 = swift_allocObject();
          v19[2] = v15;
          v19[3] = v16;
          v19[4] = a1;
          v20 = a3;
          v21 = *(v17 + 8);
          v22 = a1;

          v21(a5, v19, v18, v17);
          a3 = v20;
          a2 = v24;

          sub_1DB30623C(v33, v24, a3);
          __swift_destroy_boxed_opaque_existential_0(v27);
        }

        v12 += 80;
        --v11;
      }

      while (v11);
    }

    sub_1DB30C3E8(v23, 0);
  }
}

void sub_1DB3DEA54(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + 24, v25, &unk_1ECC45000, &unk_1DB51A930);
  if (v26 == 3)
  {
    sub_1DB30623C(v25, &unk_1ECC45000, &unk_1DB51A930);
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (v26)
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v3 = v25[0];
    v23[0] = a1;
    v24 = 2;
    swift_beginAccess();
    v4 = a1;
    sub_1DB30C2D8(v23, v1 + 24, &unk_1ECC45000, &unk_1DB51A930);
    swift_endAccess();
    os_unfair_lock_unlock(v2 + 4);
    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = v3 + 32;
      do
      {
        sub_1DB30C4B8(v6, v23, &unk_1ECC42B90, &qword_1DB50F290);
        sub_1DB30C4B8(v23, v20, &unk_1ECC42B90, &qword_1DB50F290);
        if (v22)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
          swift_allocError();
          *v7 = a1;
          v8 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1DB30623C(v23, &unk_1ECC42B90, &qword_1DB50F290);
        }

        else
        {

          v10 = v20[2];
          v9 = v20[3];
          sub_1DB2FEA0C(&v21, v17);
          v11 = v18;
          v12 = v19;
          __swift_project_boxed_opaque_existential_1(v17, v18);
          v13 = swift_allocObject();
          v13[2] = v10;
          v13[3] = v9;
          v13[4] = a1;
          v14 = *(v12 + 8);
          v15 = a1;

          v14(sub_1DB3E31BC, v13, v11, v12);

          sub_1DB30623C(v23, &unk_1ECC42B90, &qword_1DB50F290);
          __swift_destroy_boxed_opaque_existential_0(v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1DB3DED44(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + 24, v25, &unk_1ECC45010, &unk_1DB51A940);
  if (v26 == 3)
  {
    sub_1DB30623C(v25, &unk_1ECC45010, &unk_1DB51A940);
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (v26)
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v3 = v25[0];
    v23[0] = a1;
    v24 = 2;
    swift_beginAccess();
    v4 = a1;
    sub_1DB30C2D8(v23, v1 + 24, &unk_1ECC45010, &unk_1DB51A940);
    swift_endAccess();
    os_unfair_lock_unlock(v2 + 4);
    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = v3 + 32;
      do
      {
        sub_1DB30C4B8(v6, v23, &unk_1ECC42BA0, &qword_1DB50F2A0);
        sub_1DB30C4B8(v23, v20, &unk_1ECC42BA0, &qword_1DB50F2A0);
        if (v22)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
          swift_allocError();
          *v7 = a1;
          v8 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1DB30623C(v23, &unk_1ECC42BA0, &qword_1DB50F2A0);
        }

        else
        {

          v10 = v20[2];
          v9 = v20[3];
          sub_1DB2FEA0C(&v21, v17);
          v11 = v18;
          v12 = v19;
          __swift_project_boxed_opaque_existential_1(v17, v18);
          v13 = swift_allocObject();
          v13[2] = v10;
          v13[3] = v9;
          v13[4] = a1;
          v14 = *(v12 + 8);
          v15 = a1;

          v14(sub_1DB3E31BC, v13, v11, v12);

          sub_1DB30623C(v23, &unk_1ECC42BA0, &qword_1DB50F2A0);
          __swift_destroy_boxed_opaque_existential_0(v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1DB3DF094(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (*(v5 + 32) == 3)
  {
    os_unfair_lock_unlock(v8 + 4);
  }

  else if (*(v5 + 32))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v9 = *(v5 + 24);
    *(v5 + 24) = a1;
    *(v5 + 32) = 2;
    v10 = a1;
    os_unfair_lock_unlock(v8 + 4);
    v23 = v9;
    v11 = v9[2];
    if (v11)
    {
      v12 = v23 + 32;
      v24 = a2;
      do
      {
        sub_1DB30C4B8(v12, v33, a2, a3);
        sub_1DB30C4B8(v33, v30, a2, a3);
        if (v32)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
          swift_allocError();
          *v13 = a1;
          v14 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1DB30623C(v33, a2, a3);
        }

        else
        {

          v15 = v30[2];
          v16 = v30[3];
          sub_1DB2FEA0C(&v31, v27);
          v18 = v28;
          v17 = v29;
          __swift_project_boxed_opaque_existential_1(v27, v28);
          v19 = swift_allocObject();
          v19[2] = v15;
          v19[3] = v16;
          v19[4] = a1;
          v20 = a3;
          v21 = *(v17 + 8);
          v22 = a1;

          v21(a5, v19, v18, v17);
          a3 = v20;
          a2 = v24;

          sub_1DB30623C(v33, v24, a3);
          __swift_destroy_boxed_opaque_existential_0(v27);
        }

        v12 += 80;
        --v11;
      }

      while (v11);
    }

    sub_1DB3E30AC(v23, 0, MEMORY[0x1E69E7D48]);
  }
}

void sub_1DB3DF318(void *a1)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45350, &unk_1DB518F60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v28 - v7);
  v9 = v1[2];
  os_unfair_lock_lock(v9 + 4);
  v10 = *(*v1 + 96);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + v10, v8, &unk_1ECC45350, &unk_1DB518F60);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1DB30623C(v8, &unk_1ECC45350, &unk_1DB518F60);
    os_unfair_lock_unlock(v9 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v12 = *v8;
    v13 = v29;
    *v5 = v29;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v14 = v13;
    sub_1DB30C2D8(v5, v1 + v10, &unk_1ECC45350, &unk_1DB518F60);
    swift_endAccess();
    os_unfair_lock_unlock(v9 + 4);
    v15 = *(v12 + 16);
    if (v15)
    {
      v28[1] = v12;
      v16 = v12 + 32;
      do
      {
        sub_1DB30C4B8(v16, v38, &unk_1ECC42B50, &qword_1DB50F240);
        sub_1DB30C4B8(v38, v33, &unk_1ECC42B50, &qword_1DB50F240);
        if (v37)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
          swift_allocError();
          v17 = v29;
          *v18 = v29;
          v19 = v17;
          swift_continuation_throwingResumeWithError();
          sub_1DB30623C(v38, &unk_1ECC42B50, &qword_1DB50F240);
        }

        else
        {

          v20 = v34;
          v21 = v35;
          sub_1DB2FEA0C(&v36, v30);
          v22 = v31;
          v23 = v32;
          __swift_project_boxed_opaque_existential_1(v30, v31);
          v24 = swift_allocObject();
          v24[2] = v20;
          v24[3] = v21;
          v25 = v29;
          v24[4] = v29;
          v26 = *(v23 + 8);
          v27 = v25;

          v26(sub_1DB3E31BC, v24, v22, v23);

          sub_1DB30623C(v38, &unk_1ECC42B50, &qword_1DB50F240);
          __swift_destroy_boxed_opaque_existential_0(v30);
        }

        v16 += 80;
        --v15;
      }

      while (v15);
    }
  }
}

void sub_1DB3DF6D8(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + 24, v25, &unk_1ECC45370, &unk_1DB518F80);
  if (v26 == 3)
  {
    sub_1DB30623C(v25, &unk_1ECC45370, &unk_1DB518F80);
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (v26)
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v3 = v25[0];
    v23[0] = a1;
    v24 = 2;
    swift_beginAccess();
    v4 = a1;
    sub_1DB30C2D8(v23, v1 + 24, &unk_1ECC45370, &unk_1DB518F80);
    swift_endAccess();
    os_unfair_lock_unlock(v2 + 4);
    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = v3 + 32;
      do
      {
        sub_1DB30C4B8(v6, v23, &unk_1ECC42B70, &qword_1DB50F260);
        sub_1DB30C4B8(v23, v20, &unk_1ECC42B70, &qword_1DB50F260);
        if (v22)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
          swift_allocError();
          *v7 = a1;
          v8 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1DB30623C(v23, &unk_1ECC42B70, &qword_1DB50F260);
        }

        else
        {

          v10 = v20[2];
          v9 = v20[3];
          sub_1DB2FEA0C(&v21, v17);
          v11 = v18;
          v12 = v19;
          __swift_project_boxed_opaque_existential_1(v17, v18);
          v13 = swift_allocObject();
          v13[2] = v10;
          v13[3] = v9;
          v13[4] = a1;
          v14 = *(v12 + 8);
          v15 = a1;

          v14(sub_1DB3E31BC, v13, v11, v12);

          sub_1DB30623C(v23, &unk_1ECC42B70, &qword_1DB50F260);
          __swift_destroy_boxed_opaque_existential_0(v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1DB3DF9C8(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + 24, v25, &unk_1ECC45360, &unk_1DB518F70);
  if (v26 == 3)
  {
    sub_1DB30623C(v25, &unk_1ECC45360, &unk_1DB518F70);
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (v26)
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v3 = v25[0];
    v23[0] = a1;
    v24 = 2;
    swift_beginAccess();
    v4 = a1;
    sub_1DB30C2D8(v23, v1 + 24, &unk_1ECC45360, &unk_1DB518F70);
    swift_endAccess();
    os_unfair_lock_unlock(v2 + 4);
    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = v3 + 32;
      do
      {
        sub_1DB30C4B8(v6, v23, &unk_1ECC42B60, &qword_1DB50F250);
        sub_1DB30C4B8(v23, v20, &unk_1ECC42B60, &qword_1DB50F250);
        if (v22)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
          swift_allocError();
          *v7 = a1;
          v8 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1DB30623C(v23, &unk_1ECC42B60, &qword_1DB50F250);
        }

        else
        {

          v10 = v20[2];
          v9 = v20[3];
          sub_1DB2FEA0C(&v21, v17);
          v11 = v18;
          v12 = v19;
          __swift_project_boxed_opaque_existential_1(v17, v18);
          v13 = swift_allocObject();
          v13[2] = v10;
          v13[3] = v9;
          v13[4] = a1;
          v14 = *(v12 + 8);
          v15 = a1;

          v14(sub_1DB3E31BC, v13, v11, v12);

          sub_1DB30623C(v23, &unk_1ECC42B60, &qword_1DB50F250);
          __swift_destroy_boxed_opaque_existential_0(v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1DB3DFCB8(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    *(v1 + 24) = a1;
    *(v1 + 32) = 2;
    v4 = a1;
    os_unfair_lock_unlock(v2 + 4);
    v18 = v3;
    v5 = v3[2];
    if (v5)
    {
      v6 = (v3 + 4);
      v7 = &qword_1ECC429E0;
      do
      {
        sub_1DB30C4B8(v6, v26, v7, &qword_1DB50F498);
        sub_1DB30C4B8(v26, v23, v7, &qword_1DB50F498);
        if (v25)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
          swift_allocError();
          *v8 = a1;
          v9 = a1;
          swift_continuation_throwingResumeWithError();
          sub_1DB30623C(v26, v7, &qword_1DB50F498);
        }

        else
        {

          v10 = v7;
          v12 = v23[2];
          v11 = v23[3];
          sub_1DB2FEA0C(&v24, v20);
          v13 = v21;
          v14 = v22;
          __swift_project_boxed_opaque_existential_1(v20, v21);
          v15 = swift_allocObject();
          v15[2] = v12;
          v15[3] = v11;
          v15[4] = a1;
          v16 = *(v14 + 8);
          v17 = a1;

          v16(sub_1DB3E31BC, v15, v13, v14);
          v7 = v10;

          sub_1DB30623C(v26, v10, &qword_1DB50F498);
          __swift_destroy_boxed_opaque_existential_0(v20);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }

    sub_1DB30C3C4(v18, 0);
  }
}

void sub_1DB3DFF70(void *a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
    return;
  }

  if (*(v1 + 32))
  {
    goto LABEL_14;
  }

  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
  *(v1 + 32) = 2;
  v4 = a1;
  os_unfair_lock_unlock(v2 + 4);
  v5 = v3[2];
  if (v5)
  {
    v6 = 0;
    v7 = (v3 + 4);
    v8 = &qword_1DB5142D0;
    v19 = v3;
    while (v6 < v5)
    {
      sub_1DB30C4B8(v7, v27, &qword_1ECC42840, v8);
      sub_1DB30C4B8(v27, v24, &qword_1ECC42840, v8);
      if (v26)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
        swift_allocError();
        *v9 = a1;
        v10 = a1;
        swift_continuation_throwingResumeWithError();
      }

      else
      {

        v11 = v24[2];
        v12 = v24[3];
        sub_1DB2FEA0C(&v25, v21);
        v13 = v22;
        v14 = v23;
        __swift_project_boxed_opaque_existential_1(v21, v22);
        v15 = swift_allocObject();
        v15[2] = v11;
        v15[3] = v12;
        v15[4] = a1;
        v16 = v8;
        v17 = *(v14 + 8);
        v18 = a1;

        v17(sub_1DB3E31BC, v15, v13, v14);
        v8 = v16;
        v3 = v19;

        __swift_destroy_boxed_opaque_existential_0(v21);
      }

      ++v6;
      sub_1DB30623C(v27, &qword_1ECC42840, v8);
      v5 = v3[2];
      v7 += 80;
      if (v6 == v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    sub_1DB50B580();
    __break(1u);
    return;
  }

LABEL_11:
  sub_1DB3E30AC(v3, 0, MEMORY[0x1E69E7CF8]);
}

void sub_1DB3E0244(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (*(v5 + 32) == 3)
  {
    os_unfair_lock_unlock(v8 + 4);
    return;
  }

  if (*(v5 + 32))
  {
    goto LABEL_14;
  }

  v9 = *(v5 + 24);
  *(v5 + 24) = a1;
  *(v5 + 32) = 2;
  v10 = a1;
  os_unfair_lock_unlock(v8 + 4);
  v11 = v9[2];
  if (v11)
  {
    v12 = 0;
    v13 = (v9 + 4);
    v24 = v9;
    v25 = a3;
    while (v12 < v11)
    {
      sub_1DB30C4B8(v13, v34, a2, a3);
      sub_1DB30C4B8(v34, v31, a2, a3);
      if (v33)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
        swift_allocError();
        *v14 = a1;
        v15 = a1;
        swift_continuation_throwingResumeWithError();
      }

      else
      {

        v16 = v31[2];
        v17 = v31[3];
        sub_1DB2FEA0C(&v32, v28);
        v19 = v29;
        v18 = v30;
        __swift_project_boxed_opaque_existential_1(v28, v29);
        v20 = swift_allocObject();
        v20[2] = v16;
        v20[3] = v17;
        v20[4] = a1;
        v21 = a2;
        v22 = *(v18 + 8);
        v23 = a1;

        v22(a5, v20, v19, v18);
        a2 = v21;
        v9 = v24;
        a3 = v25;

        __swift_destroy_boxed_opaque_existential_0(v28);
      }

      ++v12;
      sub_1DB30623C(v34, a2, a3);
      v11 = v9[2];
      v13 += 80;
      if (v12 == v11)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    sub_1DB50B580();
    __break(1u);
    return;
  }

LABEL_11:
  sub_1DB30C3E8(v9, 0);
}

void sub_1DB3E04B4(void *a1)
{
  v31 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45340, &unk_1DB518F50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v29 - v7);
  v9 = v1[2];
  os_unfair_lock_lock(v9 + 4);
  v10 = *(*v1 + 96);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + v10, v8, &unk_1ECC45340, &unk_1DB518F50);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1DB30623C(v8, &unk_1ECC45340, &unk_1DB518F50);
    os_unfair_lock_unlock(v9 + 4);
    return;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_14;
  }

  v12 = *v8;
  v13 = v31;
  *v5 = v31;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  v14 = v13;
  sub_1DB30C2D8(v5, v1 + v10, &unk_1ECC45340, &unk_1DB518F50);
  swift_endAccess();
  os_unfair_lock_unlock(v9 + 4);
  v15 = *(v12 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = v12 + 32;
    v30 = v12;
    while (v16 < v15)
    {
      sub_1DB30C4B8(v17, v40, &unk_1ECC42B30, &qword_1DB50F1E0);
      sub_1DB30C4B8(v40, v35, &unk_1ECC42B30, &qword_1DB50F1E0);
      if (v39)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
        swift_allocError();
        v18 = v31;
        *v19 = v31;
        v20 = v18;
        swift_continuation_throwingResumeWithError();
      }

      else
      {

        v21 = v36;
        v22 = v37;
        sub_1DB2FEA0C(&v38, v32);
        v23 = v33;
        v24 = v34;
        __swift_project_boxed_opaque_existential_1(v32, v33);
        v25 = swift_allocObject();
        v25[2] = v21;
        v25[3] = v22;
        v26 = v31;
        v25[4] = v31;
        v27 = *(v24 + 8);
        v28 = v26;

        v27(sub_1DB3E31BC, v25, v23, v24);
        v12 = v30;

        __swift_destroy_boxed_opaque_existential_0(v32);
      }

      ++v16;
      sub_1DB30623C(v40, &unk_1ECC42B30, &qword_1DB50F1E0);
      v15 = *(v12 + 16);
      v17 += 80;
      if (v16 == v15)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    sub_1DB50B580();
    __break(1u);
    return;
  }

LABEL_11:
}

uint64_t sub_1DB3E08A8(uint64_t result)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  v3 = v1;
  for (i = result + 32; ; i += 40)
  {
    sub_1DB30C420(i, &v25);
    v6 = v25;
    sub_1DB300B14(&v26, v23);
    v7 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    v22 = *v3;
    *v3 = 0x8000000000000000;
    v10 = sub_1DB30EE50(v6);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      break;
    }

    v16 = v11;
    if (v9[3] < v15)
    {
      sub_1DB31A6AC(v15, isUniquelyReferenced_nonNull_native);
      v10 = sub_1DB30EE50(v6);
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v18 = v22;
      if (v16)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v21 = v10;
    sub_1DB311D10();
    v10 = v21;
    v18 = v22;
    if (v16)
    {
LABEL_3:
      v5 = 32 * v10;
      sub_1DB30C200((v18[7] + 32 * v10), v24);
      sub_1DB30C200(v23, (v18[7] + v5));
      goto LABEL_4;
    }

LABEL_11:
    v18[(v10 >> 6) + 8] |= 1 << v10;
    *(v18[6] + 8 * v10) = v6;
    sub_1DB30C200(v23, (v18[7] + 32 * v10));
    v19 = v18[2];
    v14 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (v14)
    {
      goto LABEL_17;
    }

    v18[2] = v20;
    memset(v24, 0, sizeof(v24));
LABEL_4:
    *v3 = v18;
    sub_1DB30623C(v24, &qword_1ECC426B0, &qword_1DB50EEB0);
    result = sub_1DB30BF1C(&v25);
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

uint64_t sub_1DB3E0A84()
{
  v14 = sub_1DB50AFA0();
  v0 = *(v14 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DB50AF80();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = sub_1DB50A440();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v13[1] = sub_1DB357BD4();
  sub_1DB50A430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC448E8, &unk_1DB518F40);
  v9 = *(v5 + 72);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DB50EE90;
  sub_1DB50AF70();
  v15 = v11;
  sub_1DB35A9C4(&qword_1EE30C810, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F80, &qword_1DB512400);
  sub_1DB3370CC(&qword_1EE30C838, &unk_1ECC44F80, &qword_1DB512400);
  sub_1DB50B240();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8098], v14);
  result = sub_1DB50AFD0();
  qword_1ECC67968 = result;
  return result;
}

void sub_1DB3E0D64(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  sub_1DB357BD4();
  v6 = *(a1 + 16);
  sub_1DB50AF90();
  dispatch_group_leave(a4);
}

unint64_t sub_1DB3E0DE0(unint64_t result, uint64_t a2, void (*a3)(uint64_t (*)(uint64_t a1), uint64_t))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 + 16 * result;
  v6 = swift_allocObject();
  *(v6 + 16) = *(v5 + 32);

  a3(sub_1DB3E2E28, v6);
}

uint64_t sub_1DB3E0E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = swift_allocObject();
  v14[2] = a6;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1DB3E2F28;
  *(v15 + 24) = v14;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a5 = sub_1DB302884(0, a5[2] + 1, 1, a5);
  }

  v17 = a5[2];
  v16 = a5[3];
  if (v17 >= v16 >> 1)
  {
    a5 = sub_1DB302884((v16 > 1), v17 + 1, 1, a5);
  }

  a5[2] = v17 + 1;
  v18 = &a5[2 * v17];
  v18[4] = sub_1DB3E2F34;
  v18[5] = v15;
  a7[3] = &type metadata for StandaloneObjectGraphBuilder;
  a7[4] = &off_1F56F8D18;

  *a7 = a4;
  a7[1] = a5;
  return result;
}

char *sub_1DB3E0FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for Promise();
  sub_1DB40CCB4();
  v7 = swift_allocObject();
  *(v7 + 16) = a5;
  *(v7 + 24) = a4;
  v10[3] = &type metadata for SyncTaskScheduler;
  v10[4] = &protocol witness table for SyncTaskScheduler;
  v8 = Promise.map<A>(on:_:)(v10, sub_1DB3E2FB0, v7);

  __swift_destroy_boxed_opaque_existential_0(v10);
  return v8;
}

uint64_t sub_1DB3E10C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *(*(a3 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  return Dependency.init<A>(satisfying:with:)(a2, v10, a3, a4);
}

uint64_t sub_1DB3E11A4(__darwin_time_t a1, uint64_t a2)
{
  v79 = a1;
  v3 = sub_1DB50A400();
  v78 = *(v3 - 8);
  v4 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DB50AF80();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1DB50A440();
  v77 = *(v9 - 8);
  v10 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DB50AFA0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = a2;
  if (*(a2 + 16))
  {
    v68 = *(a2 + 16);
    v74 = v9;
    v75 = v6;
    v73 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F70, &qword_1DB518F20);
    v18 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    v20 = MEMORY[0x1E69E7CC0];
    *(v18 + 16) = v19;
    *(v18 + 24) = v20;
    v72 = v18;
    *(v18 + 32) = 0;
    v21 = sub_1DB357BD4();
    v80 = "ors array required";
    (*(v14 + 104))(v17, *MEMORY[0x1E69E8098], v13);
    _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
    aBlock.tv_sec = v20;
    sub_1DB35A9C4(&qword_1EE30C810, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F80, &qword_1DB512400);
    v22 = v20;
    sub_1DB3370CC(&qword_1EE30C838, &unk_1ECC44F80, &qword_1DB512400);
    sub_1DB50B240();
    v71 = v12;
    v67 = v21;
    v23 = sub_1DB50AFD0();
    v24 = dispatch_group_create();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44F90, &qword_1DB518F28);
    v25 = swift_allocObject();
    *(v25 + 24) = 0;
    *(v25 + 16) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44F98, &qword_1DB518F30);
    v26 = swift_allocObject();
    *(v26 + 24) = 0;
    *(v26 + 16) = v20;
    if (qword_1EE30EAE0 != -1)
    {
      swift_once();
    }

    v27 = v79;
    aBlock.tv_sec = v79;
    type metadata accessor for BaseObjectGraph();

    swift_task_localValuePush();
    sub_1DB4C1C98(*(v27 + 16), &aBlock);
    swift_task_localValuePop();
    if (aBlock.tv_sec)
    {
      tv_sec = aBlock.tv_sec;
    }

    else
    {
      tv_sec = v20;
    }

    type metadata accessor for _AsyncObjectGraphMetricsBox();
    v29 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44FA0, &qword_1DB518F38);
    v30 = swift_allocObject();
    *(v30 + 24) = 0;
    *(v30 + 16) = tv_sec;
    *(v29 + 16) = v30;
    v31 = swift_allocObject();
    v31[2] = v24;
    v31[3] = v27;
    v31[4] = v29;
    v31[5] = v25;
    v31[6] = v26;
    v31[7] = v23;
    v32 = v76;
    v70 = v23;
    v69 = v24;
    v80 = v29;
    if (v68 == 1)
    {
      v34 = *(v76 + 32);
      v33 = *(v76 + 40);

      v35 = v24;

      v36 = v23;
      dispatch_group_enter(v35);
      static MonotonicTime.now.getter(&aBlock);
      v37 = v26;
      v39 = aBlock.tv_sec;
      tv_nsec = aBlock.tv_nsec;
      aBlock.tv_sec = v27;
      v34(v87, &aBlock);

      v40 = swift_allocObject();
      v40[2] = v39;
      v40[3] = tv_nsec;
      v40[4] = v80;
      v40[5] = v25;
      v40[6] = v35;
      v41 = swift_allocObject();
      *(v41 + 16) = v37;
      *(v41 + 24) = v35;
      v87[3] = v67;
      v87[4] = &protocol witness table for OS_dispatch_queue;
      v42 = v36;
      v87[0] = v36;
      aBlock.tv_sec = sub_1DB3E2DDC;
      aBlock.tv_nsec = v40;
      v82 = sub_1DB3E2DE0;
      v83 = v41;
      sub_1DB30BE90(v87, &v84);
      v86 = 0;
      v43 = v35;
      v44 = v80;
      v45 = v43;

      v46 = v37;
      v32 = v76;

      v47 = v42;

      sub_1DB307EB8(&aBlock);

      sub_1DB30623C(&aBlock, &qword_1ECC42700, &unk_1DB50F690);
      __swift_destroy_boxed_opaque_existential_0(v87);

      v48 = v73;
      v49 = v27;
      v50 = v71;
      v51 = &property descriptor for MetricsData.excludingFields;
    }

    else
    {

      v54 = v24;

      v68 = v25;

      v67 = v26;

      v55 = v23;

      dispatch_group_enter(v54);
      v50 = v71;
      if (qword_1ECC420F8 != -1)
      {
        swift_once();
      }

      v66[1] = qword_1ECC67968;
      v56 = swift_allocObject();
      v56[2] = v32;
      v56[3] = sub_1DB3E25E8;
      v56[4] = v31;
      v56[5] = v54;
      v84 = sub_1DB3E2E10;
      v85 = v56;
      aBlock.tv_sec = MEMORY[0x1E69E9820];
      aBlock.tv_nsec = 1107296256;
      v82 = sub_1DB3330B0;
      v83 = &block_descriptor_15;
      v57 = _Block_copy(&aBlock);
      v58 = v54;

      _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
      v87[0] = v22;
      sub_1DB35A9C4(qword_1EE30E380, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45390, &qword_1DB511EF0);
      sub_1DB3370CC(&qword_1EE30E350, &unk_1ECC45390, &qword_1DB511EF0);
      v59 = v75;
      v48 = v73;
      sub_1DB50B240();
      MEMORY[0x1E12864B0](0, v50, v59, v57);
      _Block_release(v57);
      v51 = &property descriptor for MetricsData.excludingFields;

      (*(v78 + 8))(v59, v48);
      (*(v77 + 8))(v50, v74);

      v49 = v79;
      v44 = v80;
      v25 = v68;
      v46 = v67;
    }

    v60 = swift_allocObject();
    v60[2] = v46;
    v60[3] = v25;
    v60[4] = v44;
    v60[5] = v49;
    v52 = v72;
    v60[6] = v32;
    v60[7] = v52;
    v84 = sub_1DB3E2DE8;
    v85 = v60;
    aBlock.tv_sec = MEMORY[0x1E69E9820];
    aBlock.tv_nsec = v51[241];
    v82 = sub_1DB3330B0;
    v83 = &block_descriptor_10;
    v61 = _Block_copy(&aBlock);

    _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
    v87[0] = MEMORY[0x1E69E7CC0];
    sub_1DB35A9C4(qword_1EE30E380, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45390, &qword_1DB511EF0);
    sub_1DB3370CC(&qword_1EE30E350, &unk_1ECC45390, &qword_1DB511EF0);
    v62 = v75;
    sub_1DB50B240();
    v63 = v70;
    v64 = v69;
    sub_1DB50AF60();
    _Block_release(v61);

    (*(v78 + 8))(v62, v48);
    (*(v77 + 8))(v50, v74);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F70, &qword_1DB518F20);
    v52 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v53 = swift_allocObject();
    *(v53 + 16) = 0;
    *(v52 + 16) = v53;
    *(v52 + 24) = v79;
    *(v52 + 32) = 1;
  }

  return v52;
}

uint64_t sub_1DB3E1D5C(void (*a1)(uint64_t), int a2, dispatch_group_t group, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  dispatch_group_enter(group);
  static MonotonicTime.now.getter(&v22);
  tv_sec = v22.tv_sec;
  tv_nsec = v22.tv_nsec;
  a1(a4);
  v17 = swift_allocObject();
  v17[2] = tv_sec;
  v17[3] = tv_nsec;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = group;
  v18 = swift_allocObject();
  *(v18 + 16) = a7;
  *(v18 + 24) = group;
  v26[3] = sub_1DB357BD4();
  v26[4] = &protocol witness table for OS_dispatch_queue;
  v26[0] = a8;
  v22.tv_sec = sub_1DB3E31B4;
  v22.tv_nsec = v17;
  v23 = sub_1DB3E31B8;
  v24 = v18;
  sub_1DB30BE90(v26, v25);
  v25[40] = 0;
  v19 = group;

  v20 = a8;

  sub_1DB307EB8(&v22);

  sub_1DB30623C(&v22, &qword_1ECC42700, &unk_1DB50F690);
  return __swift_destroy_boxed_opaque_existential_0(v26);
}