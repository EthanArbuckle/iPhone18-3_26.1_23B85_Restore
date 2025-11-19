void sub_1DB30A498(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45340, &unk_1DB518F50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v25 - v12);
  v14 = v1[2];
  os_unfair_lock_lock(v14 + 4);
  v15 = *(*v1 + 96);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + v15, v13, &unk_1ECC45340, &unk_1DB518F50);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v24 = *v13;
    os_unfair_lock_unlock(v14 + 4);
    sub_1DB3E2BCC(v24);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1DB30C06C(v13, v6, &unk_1ECC42B20, &unk_1DB50F6A0);
    os_unfair_lock_unlock(v14 + 4);
    sub_1DB3FF9CC(v6);
    sub_1DB30623C(v6, &unk_1ECC42B20, &unk_1DB50F6A0);
  }

  else
  {
    v17 = *v13;
    sub_1DB30C4B8(a1, v26, &unk_1ECC42B30, &qword_1DB50F1E0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1DB303BBC(0, v17[2] + 1, 1, v17);
    }

    v19 = v17[2];
    v18 = v17[3];
    if (v19 >= v18 >> 1)
    {
      v17 = sub_1DB303BBC((v18 > 1), v19 + 1, 1, v17);
    }

    v17[2] = v19 + 1;
    v20 = &v17[10 * v19];
    v20[2] = v26[0];
    v21 = v26[1];
    v22 = v26[2];
    v23 = v27[0];
    *(v20 + 89) = *(v27 + 9);
    v20[4] = v22;
    v20[5] = v23;
    v20[3] = v21;
    *v10 = v17;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1DB30C2D8(v10, v1 + v15, &unk_1ECC45340, &unk_1DB518F50);
    swift_endAccess();
    os_unfair_lock_unlock(v14 + 4);
  }
}

void sub_1DB30A780(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + 24, v21, &unk_1ECC45000, &unk_1DB51A930);
  if (v22 > 1u)
  {
    v12 = *&v21[0];
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3E2BFC(v12);
  }

  else if (v22)
  {
    v18 = v21[2];
    *v19 = v21[3];
    *&v19[16] = v21[4];
    v16 = v21[0];
    v17 = v21[1];
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FFBFC(&v16);
    sub_1DB30C018(&v16);
  }

  else
  {
    v4 = *&v21[0];
    sub_1DB30C4B8(a1, &v16, &unk_1ECC42B90, &qword_1DB50F290);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1DB303D04(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v13 = v4;
      v14 = v4[2];
      v15 = sub_1DB303D04((v6 > 1), v5 + 1, 1, v13);
      v5 = v14;
      v4 = v15;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v16;
    v9 = v17;
    v10 = v18;
    v11 = *v19;
    *(v8 + 89) = *&v19[9];
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    *&v16 = v4;
    v20 = 0;
    swift_beginAccess();
    sub_1DB30C2D8(&v16, v1 + 24, &unk_1ECC45000, &unk_1DB51A930);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1DB30A960(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + 24, v19, &unk_1ECC45010, &unk_1DB51A940);
  if (v20 > 1u)
  {
    v12 = *&v19[0];
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3E2C2C(v12);
  }

  else if (v20)
  {
    sub_1DB2FEA0C(v19, v16);
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FFD7C(v16);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    v4 = *&v19[0];
    sub_1DB30C4B8(a1, v16, &unk_1ECC42BA0, &qword_1DB50F2A0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1DB303D28(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v13 = v4;
      v14 = v4[2];
      v15 = sub_1DB303D28((v6 > 1), v5 + 1, 1, v13);
      v5 = v14;
      v4 = v15;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v16[0];
    v9 = v16[1];
    v10 = v17;
    v11 = v18[0];
    *(v8 + 89) = *(v18 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    *&v16[0] = v4;
    BYTE8(v17) = 0;
    swift_beginAccess();
    sub_1DB30C2D8(v16, v1 + 24, &unk_1ECC45010, &unk_1DB51A940);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1DB30AB2C(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    v14 = *(v1 + 24);
    if (*(v1 + 32) == 2)
    {
      v15 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2C5C(v4);
      v16 = v4;
      v17 = 2;
    }

    else
    {
      v19 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2C5C(v4);
      v16 = v4;
      v17 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    v18 = v4;
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FFED8(v18);
    v16 = v4;
    v17 = 1;
LABEL_12:
    sub_1DB30C3E8(v16, v17);
    return;
  }

  sub_1DB30C4B8(a1, v23, &unk_1ECC44FF0, &qword_1DB50F270);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DB303D4C(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v20 = v4;
    v21 = v4[2];
    v22 = sub_1DB303D4C((v6 > 1), v5 + 1, 1, v20);
    v5 = v21;
    v4 = v22;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v23[0];
  v9 = v23[1];
  v10 = v23[2];
  v11 = v24[0];
  *(v8 + 89) = *(v24 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1DB30C3E8(v12, v13);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1DB30ACE0(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    v14 = *(v1 + 24);
    if (*(v1 + 32) == 2)
    {
      v15 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2C8C(v4);
      v16 = MEMORY[0x1E69E7D48];
      v17 = v4;
      v18 = 2;
    }

    else
    {
      v20 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2C8C(v4);
      v16 = MEMORY[0x1E69E7D48];
      v17 = v4;
      v18 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    v19 = *(v1 + 24);

    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3FFF08(v4);
    v16 = MEMORY[0x1E69E7D48];
    v17 = v4;
    v18 = 1;
LABEL_12:
    sub_1DB30C47C(v17, v18, v16);
    return;
  }

  sub_1DB30C4B8(a1, v24, &unk_1ECC42B80, &qword_1DB50F280);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DB303D70(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v21 = v4;
    v22 = v4[2];
    v23 = sub_1DB303D70((v6 > 1), v5 + 1, 1, v21);
    v5 = v22;
    v4 = v23;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v24[0];
  v9 = v24[1];
  v10 = v24[2];
  v11 = v25[0];
  *(v8 + 89) = *(v25 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1DB30C47C(v12, v13, MEMORY[0x1E69E7D48]);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1DB30AEE4(uint64_t a1)
{
  v3 = type metadata accessor for JetPackAsset(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45350, &unk_1DB518F60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v25 - v12);
  v14 = v1[2];
  os_unfair_lock_lock(v14 + 4);
  v15 = *(*v1 + 96);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + v15, v13, &unk_1ECC45350, &unk_1DB518F60);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v24 = *v13;
    os_unfair_lock_unlock(v14 + 4);
    sub_1DB3E2CBC(v24);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1DB30C210(v13, v6, type metadata accessor for JetPackAsset);
    os_unfair_lock_unlock(v14 + 4);
    sub_1DB3FFF38(v6);
    sub_1DB30C278(v6, type metadata accessor for JetPackAsset);
  }

  else
  {
    v17 = *v13;
    sub_1DB30C4B8(a1, v26, &unk_1ECC42B50, &qword_1DB50F240);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1DB303D94(0, v17[2] + 1, 1, v17);
    }

    v19 = v17[2];
    v18 = v17[3];
    if (v19 >= v18 >> 1)
    {
      v17 = sub_1DB303D94((v18 > 1), v19 + 1, 1, v17);
    }

    v17[2] = v19 + 1;
    v20 = &v17[10 * v19];
    v20[2] = v26[0];
    v21 = v26[1];
    v22 = v26[2];
    v23 = v27[0];
    *(v20 + 89) = *(v27 + 9);
    v20[4] = v22;
    v20[5] = v23;
    v20[3] = v21;
    *v10 = v17;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1DB30C2D8(v10, v1 + v15, &unk_1ECC45350, &unk_1DB518F60);
    swift_endAccess();
    os_unfair_lock_unlock(v14 + 4);
  }
}

void sub_1DB30B1C0(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + 24, v20, &unk_1ECC45370, &unk_1DB518F80);
  if (v22 > 1u)
  {
    v12 = *&v20[0];
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3E2CEC(v12);
  }

  else if (v22)
  {
    v16 = v20[0];
    v17 = v20[1];
    v18 = v20[2];
    *&v19[0] = v21;
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB400154(&v16);
    sub_1DB30BFC4(&v16);
  }

  else
  {
    v4 = *&v20[0];
    sub_1DB30C4B8(a1, &v16, &unk_1ECC42B70, &qword_1DB50F260);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1DB303DB8(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v13 = v4;
      v14 = v4[2];
      v15 = sub_1DB303DB8((v6 > 1), v5 + 1, 1, v13);
      v5 = v14;
      v4 = v15;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v16;
    v9 = v17;
    v10 = v18;
    v11 = v19[0];
    *(v8 + 89) = *(v19 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    *&v16 = v4;
    BYTE8(v19[0]) = 0;
    swift_beginAccess();
    sub_1DB30C2D8(&v16, v1 + 24, &unk_1ECC45370, &unk_1DB518F80);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1DB30B3A0(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + 24, v20, &unk_1ECC45360, &unk_1DB518F70);
  if (v22 > 1u)
  {
    v12 = *&v20[0];
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB3E2D1C(v12);
  }

  else if (v22)
  {
    v16 = v20[0];
    v17 = v20[1];
    v18 = v20[2];
    *&v19[0] = v21;
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB4002DC(&v16);
    sub_1DB30BF70(&v16);
  }

  else
  {
    v4 = *&v20[0];
    sub_1DB30C4B8(a1, &v16, &unk_1ECC42B60, &qword_1DB50F250);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1DB303DDC(0, v4[2] + 1, 1, v4);
    }

    v5 = v4[2];
    v6 = v4[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v13 = v4;
      v14 = v4[2];
      v15 = sub_1DB303DDC((v6 > 1), v5 + 1, 1, v13);
      v5 = v14;
      v4 = v15;
    }

    v4[2] = v7;
    v8 = &v4[10 * v5];
    v8[2] = v16;
    v9 = v17;
    v10 = v18;
    v11 = v19[0];
    *(v8 + 89) = *(v19 + 9);
    v8[4] = v10;
    v8[5] = v11;
    v8[3] = v9;
    *&v16 = v4;
    BYTE8(v19[0]) = 0;
    swift_beginAccess();
    sub_1DB30C2D8(&v16, v1 + 24, &unk_1ECC45360, &unk_1DB518F70);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
  }
}

void sub_1DB30B580(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    v14 = *(v1 + 24);
    if (*(v1 + 32) == 2)
    {
      v15 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2D4C(v4);
      v16 = v4;
      v17 = 2;
    }

    else
    {
      v19 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2D4C(v4);
      v16 = v4;
      v17 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    v18 = v4;
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB400464(v18);
    v16 = v4;
    v17 = 1;
LABEL_12:
    sub_1DB30C3E8(v16, v17);
    return;
  }

  sub_1DB30C4B8(a1, v23, &unk_1ECC42B40, &qword_1DB50F200);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DB304420(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v20 = v4;
    v21 = v4[2];
    v22 = sub_1DB304420((v6 > 1), v5 + 1, 1, v20);
    v5 = v21;
    v4 = v22;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v23[0];
  v9 = v23[1];
  v10 = v23[2];
  v11 = v24[0];
  *(v8 + 89) = *(v24 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1DB30C3E8(v12, v13);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1DB30B734(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    v14 = *(v1 + 24);
    if (*(v1 + 32) == 2)
    {
      v15 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2D7C(v4);
      v16 = v4;
      v17 = 2;
    }

    else
    {
      v19 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2D7C(v4);
      v16 = v4;
      v17 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    v18 = v4;
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB400494(v18);
    v16 = v4;
    v17 = 1;
LABEL_12:
    sub_1DB30C3E8(v16, v17);
    return;
  }

  sub_1DB30C4B8(a1, v23, &qword_1ECC42850, &unk_1DB50F6B0);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DB304648(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v20 = v4;
    v21 = v4[2];
    v22 = sub_1DB304648((v6 > 1), v5 + 1, 1, v20);
    v5 = v21;
    v4 = v22;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v23[0];
  v9 = v23[1];
  v10 = v23[2];
  v11 = v24[0];
  *(v8 + 89) = *(v24 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1DB30C3E8(v12, v13);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1DB30B8E8(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    v14 = *(v1 + 24);
    if (*(v1 + 32) == 2)
    {
      v15 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2DAC(v4);
      v16 = v4;
      v17 = 2;
    }

    else
    {
      v19 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1DB3E2DAC(v4);
      v16 = v4;
      v17 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    v18 = v4;
    os_unfair_lock_unlock(v3 + 4);
    sub_1DB4004C4(v18);
    v16 = v4;
    v17 = 1;
LABEL_12:
    sub_1DB30C3E8(v16, v17);
    return;
  }

  sub_1DB30C4B8(a1, v23, &unk_1ECC44FE0, &qword_1DB50F1F0);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DB30466C(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v20 = v4;
    v21 = v4[2];
    v22 = sub_1DB30466C((v6 > 1), v5 + 1, 1, v20);
    v5 = v21;
    v4 = v22;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v23[0];
  v9 = v23[1];
  v10 = v23[2];
  v11 = v24[0];
  *(v8 + 89) = *(v24 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1DB30C3E8(v12, v13);
  os_unfair_lock_unlock(v3 + 4);
}

uint64_t sub_1DB30BB08(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v14[3] = &type metadata for SyncTaskScheduler;
  v14[4] = &protocol witness table for SyncTaskScheduler;
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  *(v6 + 32) = 0;
  sub_1DB30BE90(v14, v13);
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v6;
  sub_1DB2FEA0C(v13, (v9 + 5));
  v11[0] = sub_1DB30C520;
  v11[1] = v9;
  v11[2] = sub_1DB30C534;
  v11[3] = v6;
  sub_1DB30BE90(v14, v12);
  v12[40] = 0;
  swift_retain_n();

  sub_1DB308088(v11);

  sub_1DB30623C(v11, &unk_1ECC44FC0, &unk_1DB50F4E0);
  __swift_destroy_boxed_opaque_existential_0(v14);
  return v6;
}

unint64_t sub_1DB30BC94()
{
  result = qword_1EE30EB00[0];
  if (!qword_1EE30EB00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE30EB00);
  }

  return result;
}

char *sub_1DB30BD18()
{
  v1 = (*(*(*(v0 + 24) - 8) + 80) + 40) & ~*(*(*(v0 + 24) - 8) + 80);
  type metadata accessor for Promise();
  return _s7JetCore7PromiseC8resolved7toValueACyxGx_tFZ_0(v0 + v1);
}

uint64_t sub_1DB30BD80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  return sub_1DB307BFC(a1, v2 + ((*(*(v2[3] - 8) + 80) + 48) & ~*(*(v2[3] - 8) + 80)), v2[3], v2[5], a2);
}

uint64_t sub_1DB30BDD4(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v4 = *a1;
  a2(&v3, &v4);
  sub_1DB3F8328(v3);
}

uint64_t sub_1DB30BE80(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1DB30BDD4(a1, *(v1 + 16));
}

uint64_t sub_1DB30BE90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DB30C06C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_1DB30C0D4(void *a1, unint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 == 2 || a4 == 3)
    {

      goto LABEL_6;
    }
  }

  else if (a4)
  {
    if (a4 == 1)
    {
      sub_1DB30C158(a1, a2);
      a1 = a3;

LABEL_6:
    }
  }

  else
  {
  }
}

uint64_t sub_1DB30C158(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1DB30C1AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

_OWORD *sub_1DB30C200(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1DB30C210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DB30C278(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DB30C2D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_1DB30C340(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2 || a3 == 3)
    {
    }
  }

  else
  {
    if (!a3)
    {

      goto LABEL_6;
    }

    if (a3 == 1)
    {

LABEL_6:
    }
  }
}

void sub_1DB30C3C4(void *a1, char a2)
{
  if (a2 == 3 || a2 == 2)
  {
  }

  else if (!a2)
  {
  }
}

void sub_1DB30C3E8(id a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2 || a2 == 3)
    {
      goto LABEL_4;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
LABEL_4:
    }
  }

  else
  {
  }
}

void sub_1DB30C47C(void *a1, unsigned __int8 a2, void (*a3)(void))
{
  if (a2 > 1u)
  {
    if (a2 == 2 || a2 == 3)
    {
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      a3();
    }
  }

  else
  {
  }
}

uint64_t sub_1DB30C4B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DB30C53C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DB306AF4;

  return sub_1DB306EA4(a1, v4, v5, v6);
}

uint64_t sub_1DB30C5F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DB306AF4;

  return sub_1DB418BEC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DB30C6CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DB30C7A0;

  return sub_1DB3069EC(a1, v7, v9, v8);
}

uint64_t static ActionDispatcher.Builder.buildBlock(_:)(uint64_t a1)
{
  v2[3] = a1;
  ActionDispatcher.init()(v2);
  type metadata accessor for ActionDispatcher();
  sub_1DB50AA60();
  swift_getWitnessTable();
  return sub_1DB50A8F0();
}

uint64_t sub_1DB30C868(uint64_t a1, uint64_t *a2)
{
  v4 = *(v2 + 16);
  v5 = type metadata accessor for ActionDispatcher();
  return ActionDispatcher.add(contentsOf:)(a2, v5);
}

void static ActionDispatcher.Builder.buildExpression<A>(_:)(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  ActionDispatcher.init()(v8);
  v6 = type metadata accessor for ActionDispatcher();
  ActionDispatcher.adding<A>(_:)(a1, v6, a2, a3);
  v7 = v8[2];
}

uint64_t static ActionDispatcher.Builder.buildOptional(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (*a1)
  {
    *a2 = v2;
    a2[1] = v3;
    a2[2] = v4;
  }

  else
  {
    ActionDispatcher.init()(a2);
  }

  return sub_1DB30C9C0(v2, v3, v4);
}

uint64_t sub_1DB30C9C0(uint64_t result, uint64_t a2, void *a3)
{
  if (result)
  {
    v3 = a3;
  }

  return result;
}

uint64_t sub_1DB30CA10@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  v4 = v3;
}

uint64_t getEnumTagSinglePayload for JetDebugTooling(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for JetDebugTooling(_WORD *result, int a2, int a3)
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

uint64_t sub_1DB30CB78@<X0>(__int128 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  swift_unknownObjectWeakInit();
  sub_1DB2FEA0C(a1, a4);
  swift_unknownObjectWeakAssign();
  result = swift_unknownObjectRelease();
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
  return result;
}

BOOL sub_1DB30CBE8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong != 0;
}

uint64_t sub_1DB30CC24(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = v2[4];
    v18 = v2[3];
    v17 = __swift_project_boxed_opaque_existential_1(v2, v18);
    v13 = v2[6];
    v12 = v2[7];
    (*(v6 + 16))(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
    v14 = (*(v6 + 80) + 56) & ~*(v6 + 80);
    v15 = swift_allocObject();
    *(v15 + 2) = *(a2 + 16);
    *(v15 + 3) = v5;
    *(v15 + 4) = v13;
    *(v15 + 5) = v12;
    *(v15 + 6) = v10;
    (*(v6 + 32))(&v15[v14], v8, v5);
    v16 = *(v11 + 8);

    swift_unknownObjectRetain();
    v16(sub_1DB30D00C, v15, v18, v11);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t EventEmitter.addObserver<A>(on:target:method:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1DB30BE90(a1, v15);
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();

  sub_1DB30CB78(v15, a3, a4, v16);
  v11 = *(a7 + 24);
  v12 = type metadata accessor for MethodEventObserver();
  WitnessTable = swift_getWitnessTable();
  v11(v16, v12, WitnessTable, a5, a7);
  return (*(*(v12 - 8) + 8))(v16, v12);
}

uint64_t sub_1DB30CF2C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB30CF74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1DB30CFBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB30D00C()
{
  v1 = v0;
  v2 = (*(*(*(v0 + 3) - 8) + 80) + 56) & ~*(*(*(v0 + 3) - 8) + 80);
  v3 = *(v0 + 4);
  v4 = *(v0 + 5);
  v5 = v3(*(v1 + 6));
  v5(&v1[v2]);
}

uint64_t MetricsContextEnableRequirements.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

unint64_t sub_1DB30D128()
{
  result = qword_1ECC42CF8;
  if (!qword_1ECC42CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC42CF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricsContextEnableRequirements(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MetricsContextEnableRequirements(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t MetricsFieldsContext.Property.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t MetricsFieldsContext.Property.key.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MetricsFieldsContext.Property.key.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static MetricsFieldsContext.Property.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DB50BA30();
  }
}

JetCore::MetricsFieldsContext __swiftcall MetricsFieldsContext.init()()
{
  v1 = v0;
  result.storage._rawValue = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
  v1->storage._rawValue = result.storage._rawValue;
  return result;
}

uint64_t MetricsFieldsContext.addValue<A>(_:forProperty:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  v9[3] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v9);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);

  return sub_1DB30D454(v9, v5, v6);
}

uint64_t sub_1DB30D454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1DB30C200(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1DB31D16C(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_1DB30623C(a1, &qword_1ECC426B0, &qword_1DB50EEB0);
    sub_1DB30F708(a2, a3, v10);

    return sub_1DB30623C(v10, &qword_1ECC426B0, &qword_1DB50EEB0);
  }

  return result;
}

uint64_t sub_1DB30D524(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1DB30C200(a1, v8);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    sub_1DB31D5C8(v8, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1DB314BE8(a2);
    *v2 = v7;
  }

  else
  {
    sub_1DB30623C(a1, &qword_1ECC426B0, &qword_1DB50EEB0);
    sub_1DB30F860(a2, v8);
    sub_1DB314BE8(a2);
    return sub_1DB30623C(v8, &qword_1ECC426B0, &qword_1DB50EEB0);
  }

  return result;
}

uint64_t sub_1DB30D5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F20, qword_1DB5105D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for JetPackAsset(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_1DB30623C(a1, &qword_1ECC46F20, qword_1DB5105D0);
    sub_1DB30F904(a2, a3, v10);

    return sub_1DB30623C(v10, &qword_1ECC46F20, qword_1DB5105D0);
  }

  else
  {
    sub_1DB314B58(a1, v14);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1DB31D714(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1DB30D7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1DB2FEA0C(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1DB31D9C4(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_1DB30623C(a1, &qword_1ECC42DE8, &qword_1DB50FAC8);
    sub_1DB30FBD0(a2, a3, v10);

    return sub_1DB30623C(v10, &qword_1ECC42DE8, &qword_1DB50FAC8);
  }

  return result;
}

_OWORD *sub_1DB30D870(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1DB30C200(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_1DB31DB18(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_1DB30623C(a1, &qword_1ECC426B0, &qword_1DB50EEB0);
    v8 = *v2;
    v9 = sub_1DB30EE50(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_1DB311D10();
        v14 = v16;
      }

      sub_1DB30C200((*(v14 + 56) + 32 * v11), v17);
      sub_1DB310538(v11, v14);
      *v3 = v14;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    return sub_1DB30623C(v17, &qword_1ECC426B0, &qword_1DB50EEB0);
  }

  return result;
}

uint64_t sub_1DB30D974(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1DB31E0C8(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1DB314BE8(a2);
    *v2 = v17;
  }

  else
  {
    v9 = *v2;
    v10 = sub_1DB30EDA8(a2);
    if (v11)
    {
      v12 = v10;
      v13 = *v3;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v18 = *v3;
      if (!v14)
      {
        sub_1DB312B60();
        v15 = v18;
      }

      sub_1DB314BE8(*(v15 + 48) + 40 * v12);
      v16 = *(*(v15 + 56) + 8 * v12);

      sub_1DB310DB8(v12, v15);
      result = sub_1DB314BE8(a2);
      *v3 = v15;
    }

    else
    {

      return sub_1DB314BE8(a2);
    }
  }

  return result;
}

uint64_t MetricsFieldsContext.addingValue<A>(_:forProperty:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *a2;
  v9 = a2[1];
  *a4 = *v4;
  v11[0] = v8;
  v11[1] = v9;

  return MetricsFieldsContext.addValue<A>(_:forProperty:)(a1, v11, a3);
}

Swift::Void __swiftcall MetricsFieldsContext.merge(_:)(JetCore::MetricsFieldsContext a1)
{
  v2 = *a1.storage._rawValue;

  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  *v1 = 0x8000000000000000;
  sub_1DB314534(v2, sub_1DB313340, 0, isUniquelyReferenced_nonNull_native, &v7);

  v5 = v7;
  v6 = *v1;

  *v1 = v5;
}

JetCore::MetricsFieldsContext __swiftcall MetricsFieldsContext.merging(_:)(JetCore::MetricsFieldsContext a1)
{
  v3 = v1;
  v4 = *a1.storage._rawValue;
  v5 = *v2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v5;
  sub_1DB314534(v4, sub_1DB313340, 0, isUniquelyReferenced_nonNull_native, &v9);

  v7 = v9;

  *v3 = v7;
  return result;
}

uint64_t MetricsFieldsContext.removeValue<A>(forProperty:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1DB306160(*a1, a1[1]);
  if (v5)
  {
    v6 = v4;
    v7 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v12 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1DB3112DC();
      v9 = v12;
    }

    v10 = *(*(v9 + 48) + 16 * v6 + 8);

    sub_1DB30C200((*(v9 + 56) + 32 * v6), v13);
    sub_1DB30FD60(v6, v9);
    *v2 = v9;
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  return sub_1DB30623C(v13, &qword_1ECC426B0, &qword_1DB50EEB0);
}

uint64_t MetricsFieldsContext.removingValue<A>(forProperty:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  *a2 = *v2;
  v7[0] = v4;
  v7[1] = v5;

  return MetricsFieldsContext.removeValue<A>(forProperty:)(v7);
}

Swift::Void __swiftcall MetricsFieldsContext.removeAll()()
{
  v1 = *v0;

  *v0 = MEMORY[0x1E69E7CC8];
}

uint64_t MetricsFieldsContext.containsValue<A>(forProperty:)(uint64_t *a1)
{
  v2 = *v1;
  if (*(v2 + 16) && (v3 = sub_1DB306160(*a1, a1[1]), (v4 & 1) != 0))
  {
    sub_1DB300B14(*(v2 + 56) + 32 * v3, v7);
    v5 = 1;
  }

  else
  {
    v5 = 0;
    memset(v7, 0, sizeof(v7));
  }

  sub_1DB30623C(v7, &qword_1ECC426B0, &qword_1DB50EEB0);
  return v5;
}

uint64_t MetricsFieldsContext.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return sub_1DB30DE34(a1, a2, sub_1DB31485C, a3);
}

{
  return sub_1DB30DE34(a1, a2, sub_1DB314CB0, a3);
}

uint64_t sub_1DB30DE34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = sub_1DB50B120();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v45 - v12;
  v14 = *v4;
  if (*(v14 + 16) && (v16 = *a1, v15 = a1[1], v17 = sub_1DB306160(v16, v15), (v18 & 1) != 0))
  {
    sub_1DB300B14(*(v14 + 56) + 32 * v17, &v49);
    sub_1DB30C200(&v49, v54);
    sub_1DB300B14(v54, &v49);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v54);
      v19 = *(a2 - 8);
      v20 = *(v19 + 56);
      v20(v13, 0, 1, a2);
      (*(v19 + 32))(a4, v13, a2);
      return (v20)(a4, 0, 1, a2);
    }

    else
    {
      v23 = *(a2 - 8);
      v24 = *(v23 + 56);
      v46 = v23 + 56;
      v47 = v24;
      v24(v13, 1, 1, a2);
      (*(v10 + 8))(v13, v9);
      if (qword_1ECC42228 != -1)
      {
        swift_once();
      }

      v25 = qword_1ECC466F0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1DB50F8D0;
      v53 = sub_1DB301BC0(0, 27, 0, MEMORY[0x1E69E7CC0]);
      v27._object = 0x80000001DB5295A0;
      v27._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v27);
      v52[3] = type metadata accessor for MetricsFieldsContext.Property();
      v52[0] = v16;
      v52[1] = v15;
      sub_1DB30C4B8(v52, v48, &qword_1ECC426B0, &qword_1DB50EEB0);
      v49 = 0u;
      v50 = 0u;

      sub_1DB301D4C(v48, &v49);
      v51 = 1;
      v28 = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1DB301BC0(0, *(v28 + 2) + 1, 1, v28);
        v53 = v28;
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_1DB301BC0((v29 > 1), v30 + 1, 1, v28);
      }

      *(v28 + 2) = v30 + 1;
      v31 = &v28[40 * v30];
      v32 = v49;
      v33 = v50;
      v31[64] = v51;
      *(v31 + 2) = v32;
      *(v31 + 3) = v33;
      v53 = v28;
      sub_1DB30623C(v52, &qword_1ECC426B0, &qword_1DB50EEB0);
      v34._countAndFlagsBits = 0;
      v34._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v34);
      *(v26 + 32) = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
      v35 = swift_allocObject();
      v45 = xmmword_1DB50EE90;
      *(v35 + 16) = xmmword_1DB50EE90;
      v36 = MEMORY[0x1E69E6158];
      *(&v50 + 1) = MEMORY[0x1E69E6158];
      *&v49 = 0xD000000000000027;
      *(&v49 + 1) = 0x80000001DB5295C0;
      *(v35 + 48) = 0u;
      *(v35 + 32) = 0u;
      sub_1DB301D4C(&v49, v35 + 32);
      *(v35 + 64) = 0;
      *(v26 + 40) = v35;
      v37 = sub_1DB50AF40();
      if (os_log_type_enabled(v25, v37))
      {
        if (qword_1EE30EDD8 != -1)
        {
          swift_once();
        }

        v38 = off_1EE30EDE0;
        os_unfair_lock_lock(off_1EE30EDE0 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v38[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v38 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v40 = swift_allocObject();
        *(v40 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v49 = v26;
        *(&v49 + 1) = a3;
        *&v50 = v40;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
        sub_1DB314864();
        v41 = sub_1DB50A5E0();
        v43 = v42;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
        v44 = swift_allocObject();
        *(v44 + 16) = v45;
        *(v44 + 56) = v36;
        *(v44 + 64) = sub_1DB31494C();
        *(v44 + 32) = v41;
        *(v44 + 40) = v43;
        sub_1DB50A1E0();
      }

      __swift_destroy_boxed_opaque_existential_0(v54);
      return v47(a4, 1, 1, a2);
    }
  }

  else
  {
    v22 = *(*(a2 - 8) + 56);

    return v22(a4, 1, 1, a2);
  }
}

id static MetricsFieldsContext.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1DB30E590(*a1);
  v3 = objc_allocWithZone(MEMORY[0x1E695DF20]);
  v4 = sub_1DB50A490();

  v5 = [v3 initWithDictionary_];

  sub_1DB30E590(v2);
  v6 = sub_1DB50A490();

  v7 = [v5 isEqualToDictionary_];

  return v7;
}

uint64_t sub_1DB30E590(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42DB8, &unk_1DB50FEA0);
    v2 = sub_1DB50B610();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1DB300B14(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_1DB30C200(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1DB30C200(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1DB30C200(v32, v33);
    v17 = *(v2 + 40);
    result = sub_1DB50B270();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_1DB30C200(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1DB30E894(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D98, &unk_1DB50FE90);
    v4 = sub_1DB50B610();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v14 >= v8)
    {

      return v4;
    }

    v7 = *(a1 + 64 + 8 * v14);
    ++v10;
    if (v7)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v16 = (v14 << 10) | (16 * v15);
        v17 = (*(a1 + 48) + v16);
        v19 = *v17;
        v18 = v17[1];
        v27 = *(*(a1 + 56) + v16);

        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42DA8, &qword_1DB50FA88);
        swift_dynamicCast();
        result = sub_1DB306160(v19, v18);
        if (v20)
        {
          v11 = (v4[6] + 16 * result);
          v12 = v11[1];
          *v11 = v19;
          v11[1] = v18;
          v13 = result;

          *(v4[7] + 8 * v13) = v28;
          v10 = v14;
          if (!v7)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v4[2] >= v4[3])
          {
            goto LABEL_20;
          }

          *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v4[6] + 16 * result);
          *v21 = v19;
          v21[1] = v18;
          *(v4[7] + 8 * result) = v28;
          v22 = v4[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v4[2] = v24;
          v10 = v14;
          if (!v7)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v10;
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

id sub_1DB30EAB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1DB30E590(*a1);
  v3 = objc_allocWithZone(MEMORY[0x1E695DF20]);
  v4 = sub_1DB50A490();

  v5 = [v3 initWithDictionary_];

  sub_1DB30E590(v2);
  v6 = sub_1DB50A490();

  v7 = [v5 isEqualToDictionary_];

  return v7;
}

unint64_t sub_1DB30ED08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  sub_1DB50BCF0();
  sub_1DB50A740();
  sub_1DB50A740();
  v10 = sub_1DB50BD30();

  return sub_1DB30F0B8(a1, a2, a3, a4, v10);
}

unint64_t sub_1DB30EDA8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1DB50B270();

  return sub_1DB30F1B8(a1, v5);
}

unint64_t sub_1DB30EDEC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1DB50B560();
  v5 = sub_1DB50A5C0();

  return sub_1DB30F280(a1, v5);
}

unint64_t sub_1DB30EE50(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](a1);
  v4 = sub_1DB50BD30();

  return sub_1DB30F418(a1, v4);
}

unint64_t sub_1DB30EEBC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1DB50BCF0();
  sub_1DB50A740();
  v6 = sub_1DB50BD30();
  return sub_1DB3067A8(a1, a2, v6);
}

unint64_t sub_1DB30EF30(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1DB50A650();
  sub_1DB50BCF0();
  sub_1DB50A740();
  v4 = sub_1DB50BD30();

  return sub_1DB30F604(a1, v4);
}

unint64_t sub_1DB30EFC0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1DB50BCF0();
  v4 = *(a1 + 16);
  MEMORY[0x1E12871F0](v4);
  if (v4)
  {
    v5 = (a1 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      sub_1DB50A740();

      v5 += 2;
      --v4;
    }

    while (v4);
  }

  v8 = sub_1DB50BD30();

  return sub_1DB30F484(a1, v8);
}

unint64_t sub_1DB30F070(unsigned __int16 a1)
{
  v3 = MEMORY[0x1E12871D0](*(v1 + 40), a1, 2);

  return sub_1DB30F594(a1, v3);
}

unint64_t sub_1DB30F0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_1DB50BA30() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_1DB50BA30() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_1DB30F1B8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1DB314C3C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1E1286770](v9, a1);
      sub_1DB314BE8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1DB30F280(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_1DB50B560();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = sub_1DB50A610();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1DB30F418(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1DB30F484(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = *(a1 + 16);
    v9 = *(v2 + 48);
    v10 = (a1 + 40);
    do
    {
      v11 = *(v9 + 8 * v5);
      if (*(v11 + 16) == v8)
      {
        if (!v8 || v11 == a1)
        {
          return v5;
        }

        v12 = (v11 + 40);
        v13 = v10;
        v14 = v8;
        while (1)
        {
          v15 = *(v12 - 1) == *(v13 - 1) && *v12 == *v13;
          if (!v15 && (sub_1DB50BA30() & 1) == 0)
          {
            break;
          }

          v12 += 2;
          v13 += 2;
          if (!--v14)
          {
            return v5;
          }
        }
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1DB30F594(unsigned __int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 2 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1DB30F604(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1DB50A650();
      v9 = v8;
      if (v7 == sub_1DB50A650() && v9 == v10)
      {
        break;
      }

      v12 = sub_1DB50BA30();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

double sub_1DB30F708@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1DB306160(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DB3112DC();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1DB30C200((*(v12 + 56) + 32 * v9), a3);
    sub_1DB30FD60(v9, v12);
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

unint64_t _s7JetCore16ScalarDictionaryV11removeValue6forKeyAC0F0OSgSS_tF_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  result = sub_1DB306160(a1, a2);
  if (v8)
  {
    v9 = result;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v16 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DB3119D4();
      v12 = v16;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56) + 24 * v9;
    v15 = *(v14 + 16);
    *a3 = *v14;
    *(a3 + 16) = v15;
    result = sub_1DB3101C4(v9, v12);
    *v4 = v12;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = -1;
  }

  return result;
}

double sub_1DB30F860@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1DB30EDA8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DB311B6C();
      v11 = v13;
    }

    sub_1DB314BE8(*(v11 + 48) + 40 * v8);
    sub_1DB30C200((*(v11 + 56) + 32 * v8), a2);
    sub_1DB310394(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1DB30F904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1DB306160(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DB311E8C();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for JetPackAsset(0);
    v22 = *(v15 - 8);
    sub_1DB314B58(v14 + *(v22 + 72) * v9, a3);
    sub_1DB3106CC(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for JetPackAsset(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

double sub_1DB30FA84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = v5;
  v10 = *v5;
  v11 = sub_1DB30EEBC(a1, a2);
  if (v12)
  {
    v13 = v11;
    v14 = *v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v8;
    v19 = *v8;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DB3120E4(a3, a4);
      v16 = v19;
    }

    v17 = *(*(v16 + 48) + 16 * v13 + 8);

    sub_1DB2FEA0C((*(v16 + 56) + 40 * v13), a5);
    sub_1DB3108B8(v13, v16);
    *v8 = v16;
  }

  else
  {
    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DB30FB48(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1DB30EE50(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v13 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1DB31227C();
    v9 = v13;
  }

  v10 = v6;
  v11 = *(*(v9 + 56) + 8 * v6);
  sub_1DB310A74(v10, v9);
  *v2 = v9;
  return v11;
}

double sub_1DB30FBD0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1DB306160(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DB3123D8();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1DB2FEA0C((*(v12 + 56) + 40 * v9), a3);
    sub_1DB3108B8(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

unint64_t sub_1DB30FC7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  result = sub_1DB30EEBC(a1, a2);
  if (v8)
  {
    v9 = result;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v21 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DB312CF4();
      v12 = v21;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56) + 48 * v9;
    v15 = *v14;
    v20 = *(v14 + 8);
    v16 = *(v14 + 24);
    v17 = *(v14 + 32);
    v18 = *(v14 + 40);
    result = sub_1DB310F5C(v9, v12);
    v19 = v20;
    *v4 = v12;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0uLL;
  }

  *a3 = v15;
  *(a3 + 8) = v19;
  *(a3 + 24) = v16;
  *(a3 + 32) = v17;
  *(a3 + 40) = v18;
  return result;
}

uint64_t sub_1DB30FD60(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DB50B260() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1DB50BCF0();

      sub_1DB50A740();
      v14 = sub_1DB50BD30();

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

void sub_1DB30FF10(int64_t a1, uint64_t a2)
{
  v4 = sub_1DB50B560();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_1DB50B260();
    v14 = v12;
    v40 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v41 = *(v15 + 56);
    v38 = (v15 - 8);
    v39 = v16;
    do
    {
      v17 = v9;
      v18 = v41 * v11;
      v19 = v14;
      v20 = v15;
      v39(v8, *(a2 + 48) + v41 * v11, v4);
      v21 = *(a2 + 40);
      v22 = sub_1DB50A5C0();
      (*v38)(v8, v4);
      v14 = v19;
      v23 = v22 & v19;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v26 = *(a2 + 48);
          v27 = v26 + v41 * a1;
          v28 = v26 + v18 + v41;
          v29 = v41 * a1 < v18 || v27 >= v28;
          v15 = v20;
          if (v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v30 = v41 * a1 == v18;
            v9 = v17;
            if (!v30)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v31 = *(a2 + 56);
          v32 = (v31 + 32 * a1);
          v33 = (v31 + 32 * v11);
          if (a1 != v11 || v32 >= v33 + 2)
          {
            v34 = v33[1];
            *v32 = *v33;
            v32[1] = v34;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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

uint64_t sub_1DB3101C4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DB50B260() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1DB50BCF0();

      sub_1DB50A740();
      v14 = sub_1DB50BD30();

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
        if (24 * v3 < (24 * v6) || v20 >= v21 + 24 || v3 != v6)
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

uint64_t sub_1DB310394(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DB50B260() + 1) & ~v5;
    do
    {
      sub_1DB314C3C(*(a2 + 48) + 40 * v6, v26);
      v10 = *(a2 + 40);
      v11 = sub_1DB50B270();
      result = sub_1DB314BE8(v26);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 40 * v3;
          v17 = (v15 + 40 * v6);
          if (v3 != v6 || v16 >= v17 + 40)
          {
            v18 = *v17;
            v19 = v17[1];
            *(v16 + 32) = *(v17 + 4);
            *v16 = v18;
            *(v16 + 16) = v19;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 32 * v3);
          v22 = (v20 + 32 * v6);
          if (v3 != v6 || v21 >= v22 + 2)
          {
            v9 = v22[1];
            *v21 = *v22;
            v21[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
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

  return result;
}

uint64_t sub_1DB310538(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DB50B260() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      sub_1DB50BCF0();
      MEMORY[0x1E12871F0](v11);
      result = sub_1DB50BD30();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v3);
        v18 = (v16 + 32 * v6);
        if (v3 != v6 || v17 >= v18 + 2)
        {
          v9 = v18[1];
          *v17 = *v18;
          v17[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1DB3106CC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DB50B260() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1DB50BCF0();

      sub_1DB50A740();
      v13 = sub_1DB50BD30();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for JetPackAsset(0) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1DB3108B8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DB50B260() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_1DB50BCF0();

      sub_1DB50A740();
      v15 = sub_1DB50BD30();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
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

LABEL_4:
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

  return result;
}

uint64_t sub_1DB310A74(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DB50B260() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_1DB50BCF0();
      MEMORY[0x1E12871F0](v10);
      result = sub_1DB50BD30();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1DB310C08(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DB50B260() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1DB50BCF0();

      sub_1DB50A740();
      v13 = sub_1DB50BD30();

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
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
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

uint64_t sub_1DB310DB8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DB50B260() + 1) & ~v5;
    do
    {
      sub_1DB314C3C(*(a2 + 48) + 40 * v6, v25);
      v9 = *(a2 + 40);
      v10 = sub_1DB50B270();
      result = sub_1DB314BE8(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 8 * v3);
          v21 = (v19 + 8 * v6);
          if (v3 != v6 || v20 >= v21 + 1)
          {
            *v20 = *v21;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

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

uint64_t sub_1DB310F5C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DB50B260() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_1DB50BCF0();

      sub_1DB50A740();
      v15 = sub_1DB50BD30();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 48 * v3);
        v22 = (v20 + 48 * v6);
        if (48 * v3 < (48 * v6) || v21 >= v22 + 3 || v3 != v6)
        {
          v9 = *v22;
          v10 = v22[2];
          v21[1] = v22[1];
          v21[2] = v10;
          *v21 = v9;
          v3 = v6;
        }
      }

LABEL_4:
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

  return result;
}

uint64_t sub_1DB31112C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DB50B260() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1DB50BCF0();

      sub_1DB50A740();
      v13 = sub_1DB50BD30();

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
        v19 = (v18 + v3);
        v20 = (v18 + v6);
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

void *sub_1DB3112DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E20, &unk_1DB50FB00);
  v2 = *v0;
  v3 = sub_1DB50B5F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1DB300B14(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1DB30C200(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1DB311480()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D10, &qword_1DB50F9E8);
  v2 = *v0;
  v3 = sub_1DB50B5F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1DB3115E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D98, &unk_1DB50FE90);
  v2 = *v0;
  v3 = sub_1DB50B5F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1DB311750()
{
  v1 = v0;
  v27 = sub_1DB50B560();
  v29 = *(v27 - 8);
  v2 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v26 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D30, &qword_1DB50FA10);
  v4 = *v0;
  v5 = sub_1DB50B5F0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25[0] = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v25[1] = v29 + 32;
    v25[2] = v29 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v30 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v29;
        v21 = *(v29 + 72) * v19;
        v22 = v26;
        v23 = v27;
        (*(v29 + 16))(v26, *(v4 + 48) + v21, v27);
        v19 *= 32;
        sub_1DB300B14(*(v4 + 56) + v19, v31);
        v24 = v28;
        (*(v20 + 32))(*(v28 + 48) + v21, v22, v23);
        result = sub_1DB30C200(v31, (*(v24 + 56) + v19));
        v14 = v30;
      }

      while (v30);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v25[0];
        v6 = v28;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v30 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1DB3119D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D38, &qword_1DB50FA18);
  v2 = *v0;
  v3 = sub_1DB50B5F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 16);
        *v25 = v21;
        v25[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v26;

        result = sub_1DB314BBC(v23, v24, v26);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1DB311B6C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42DB8, &unk_1DB50FEA0);
  v2 = *v0;
  v3 = sub_1DB50B5F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_1DB314C3C(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1DB300B14(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1DB30C200(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1DB311D10()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42DC8, &qword_1DB50FAA8);
  v2 = *v0;
  v3 = sub_1DB50B5F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1DB300B14(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_1DB30C200(v19, (*(v4 + 56) + 32 * v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1DB311E8C()
{
  v1 = v0;
  v2 = type metadata accessor for JetPackAsset(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D18, &unk_1DB50F9F0);
  v5 = *v0;
  v6 = sub_1DB50B5F0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_1DB314AF4(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_1DB314B58(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

void *sub_1DB3120E4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1DB50B5F0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v3;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v23 = *v21;
        v22 = v21[1];
        v24 = 40 * v19;
        sub_1DB30BE90(*(v4 + 56) + 40 * v19, v27);
        v25 = (*(v6 + 48) + v20);
        *v25 = v23;
        v25[1] = v22;
        sub_1DB2FEA0C(v27, *(v6 + 56) + v24);
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v3 = v26;
        goto LABEL_21;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v3 = v6;
  }

  return result;
}

void *sub_1DB31227C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42DD8, &qword_1DB50FAB8);
  v2 = *v0;
  v3 = sub_1DB50B5F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1DB3123D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42DB0, &unk_1DB50FA90);
  v2 = *v0;
  v3 = sub_1DB50B5F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_1DB30BE90(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1DB2FEA0C(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1DB312580()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D90, &unk_1DB50FA70);
  v2 = *v0;
  v3 = sub_1DB50B5F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1DB3126F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D88, &unk_1DB50FE80);
  v2 = *v0;
  v3 = sub_1DB50B5F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;

        result = sub_1DB30C1AC(v18, *(&v18 + 1));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1DB312874()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D80, &unk_1DB50FA60);
  v2 = *v0;
  v3 = sub_1DB50B5F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_1DB30C1AC(v22, *(&v22 + 1));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1DB3129F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D28, &qword_1DB50FA08);
  v2 = *v0;
  v3 = sub_1DB50B5F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1DB312B60()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D50, &qword_1DB50FA30);
  v2 = *v0;
  v3 = sub_1DB50B5F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        sub_1DB314C3C(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1DB312CF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42DD0, &qword_1DB50FAB0);
  v29 = v0;
  v1 = *v0;
  v2 = sub_1DB50B5F0();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = 16 * v16;
        v18 = (*(v1 + 48) + 16 * v16);
        v19 = *v18;
        v20 = v18[1];
        v16 *= 48;
        v21 = *(v1 + 56) + v16;
        v22 = *v21;
        v23 = *(v21 + 8);
        v25 = *(v21 + 16);
        v24 = *(v21 + 24);
        v26 = *(v21 + 32);
        LOBYTE(v21) = *(v21 + 40);
        v27 = (*(v3 + 48) + v17);
        *v27 = v19;
        v27[1] = v20;
        v28 = *(v3 + 56) + v16;
        *v28 = v22;
        *(v28 + 8) = v23;
        *(v28 + 16) = v25;
        *(v28 + 24) = v24;
        *(v28 + 32) = v26;
        *(v28 + 40) = v21;
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v29 = v3;
  }

  return result;
}

void *sub_1DB312ED0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D40, &qword_1DB50FA20);
  v2 = *v0;
  v3 = sub_1DB50B5F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_1DB313038()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42DF8, &qword_1DB50FEB0);
  v2 = *v0;
  v3 = sub_1DB50B5F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = (*(v4 + 48) + 32 * v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v20;
        v23[3] = v21;
        *(*(v4 + 56) + 8 * v17) = v22;

        result = v22;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1DB3131D0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1DB50B5F0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v23 = *v21;
        v22 = v21[1];
        v19 *= 24;
        v24 = *(v4 + 56) + v19;
        v25 = *(v24 + 16);
        v26 = (*(v6 + 48) + v20);
        v27 = *v24;
        *v26 = v23;
        v26[1] = v22;
        v28 = *(v6 + 56) + v19;
        *v28 = v27;
        *(v28 + 16) = v25;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_1DB313340@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_1DB300B14((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

unint64_t sub_1DB31338C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42DF8, &qword_1DB50FEB0);
    v3 = sub_1DB50B610();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_1DB30ED08(v5, v6, v7, v8);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 32 * result);
      *v13 = v5;
      v13[1] = v6;
      v13[2] = v7;
      v13[3] = v8;
      *(v3[7] + 8 * result) = v10;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DB3134B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D10, &qword_1DB50F9E8);
    v3 = sub_1DB50B610();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_1DB306160(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DB3135C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E20, &unk_1DB50FB00);
    v3 = sub_1DB50B610();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DB30C4B8(v4, &v13, &unk_1ECC46BD0, &qword_1DB519760);
      v5 = v13;
      v6 = v14;
      result = sub_1DB306160(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1DB30C200(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DB3136F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D90, &unk_1DB50FA70);
    v3 = sub_1DB50B610();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1DB306160(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DB313804(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42DB8, &unk_1DB50FEA0);
    v3 = sub_1DB50B610();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DB30C4B8(v4, v13, &qword_1ECC42DC0, &qword_1DB50FAA0);
      result = sub_1DB30EDA8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1DB30C200(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DB313988(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = sub_1DB50B610();
    v10 = a1 + 32;

    while (1)
    {
      sub_1DB30C4B8(v10, &v18, a4, a5);
      result = sub_1DB30EEBC(v18, v19);
      if (v12)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v9[6] + 16 * result);
      v14 = v19;
      *v13 = v18;
      v13[1] = v14;
      result = sub_1DB2FEA0C(&v20, v9[7] + 40 * result);
      v15 = v9[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v9[2] = v17;
      v10 += 56;
      if (!--v5)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DB313AA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E00, &qword_1DB50FAE0);
    v3 = sub_1DB50B610();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1DB30EEBC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DB313BA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D40, &qword_1DB50FA20);
    v3 = sub_1DB50B610();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1DB306160(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DB313CA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42DB0, &unk_1DB50FA90);
    v3 = sub_1DB50B610();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DB30C4B8(v4, &v13, &qword_1ECC42DF0, &unk_1DB50FAD0);
      v5 = v13;
      v6 = v14;
      result = sub_1DB306160(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1DB2FEA0C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DB313DD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D48, &qword_1DB50FA28);
    v3 = sub_1DB50B610();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v15 = *(i - 1);
      v7 = *i;

      result = sub_1DB306160(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[7] + 24 * result;
      *v11 = v15;
      *(v11 + 16) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DB313EF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D88, &unk_1DB50FE80);
    v3 = sub_1DB50B610();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v5 = *(i - 1);
      v7 = *i;

      sub_1DB30C1AC(v5, v7);
      result = sub_1DB30EFC0(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DB313FFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D80, &unk_1DB50FA60);
    v3 = sub_1DB50B610();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_1DB30C1AC(v7, v8);
      result = sub_1DB306160(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DB314114(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D78, &qword_1DB50FA58);
    v3 = sub_1DB50B610();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1DB306160(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DB314218(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D70, &qword_1DB50FA50);
    v3 = sub_1DB50B610();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1DB30EF30(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DB314310(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D28, &qword_1DB50FA08);
    v3 = sub_1DB50B610();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1DB306160(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DB31440C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D50, &qword_1DB50FA30);
    v3 = sub_1DB50B610();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DB30C4B8(v4, v13, &qword_1ECC42D58, &qword_1DB50FA38);
      result = sub_1DB30EDA8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      *(v3[7] + 8 * result) = v15;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DB314534(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  sub_1DB3AF664(&v45);
  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
    goto LABEL_25;
  }

  v13 = v45;
  sub_1DB30C200(v46, v44);
  v14 = *a5;
  result = sub_1DB306160(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_1DB319570(v20, a4 & 1);
    v22 = *a5;
    result = sub_1DB306160(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1DB50BC20();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_1DB3112DC();
    result = v27;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    v26 = (v24[7] + 32 * v25);
    __swift_destroy_boxed_opaque_existential_0(v26);
    sub_1DB30C200(v44, v26);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v28 = (v24[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_1DB30C200(v44, (v24[7] + 32 * result));
  v29 = v24[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v24[2] = v30;
LABEL_15:
    sub_1DB3AF664(&v45);
    v12 = *(&v45 + 1);
    if (*(&v45 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v45;
        sub_1DB30C200(v46, v44);
        v33 = *a5;
        result = sub_1DB306160(v13, v12);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_1DB319570(v37, 1);
          v38 = *a5;
          result = sub_1DB306160(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;

          v32 = (v40[7] + 32 * v31);
          __swift_destroy_boxed_opaque_existential_0(v32);
          sub_1DB30C200(v44, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_1DB30C200(v44, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_1DB3AF664(&v45);
        v12 = *(&v45 + 1);
      }

      while (*(&v45 + 1));
    }

LABEL_25:
    sub_1DB2FEA60();
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1DB314864()
{
  result = qword_1EE30E2F0;
  if (!qword_1EE30E2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC42D00, &unk_1DB511AC0);
    sub_1DB3148E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30E2F0);
  }

  return result;
}

unint64_t sub_1DB3148E8()
{
  result = qword_1EE30E358;
  if (!qword_1EE30E358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC457F0, &unk_1DB50F8F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30E358);
  }

  return result;
}

unint64_t sub_1DB31494C()
{
  result = qword_1EE30E370;
  if (!qword_1EE30E370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30E370);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OpaqueMetatype(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for OpaqueMetatype(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB314A34()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for DependencyCycleError.Creator(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DependencyCycleError.Creator(uint64_t result, int a2, int a3)
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

uint64_t sub_1DB314AF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JetPackAsset(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB314B58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JetPackAsset(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB314BBC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3 || a3 == 5 || a3 == 4)
  {
  }

  return result;
}

uint64_t Array<A>.init(deserializing:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = v5;
  v6 = JSONArray.map<A>(_:)(sub_1DB314EE8, v8, a3);
  sub_1DB314F08(a1);

  return v6;
}

{
  v7 = *a2;
  JSONObject.array.getter(&v12);
  if (*(&v13 + 1))
  {
    v15[0] = v12;
    v15[1] = v13;
    v16 = v14;
    sub_1DB315220(v15, &v12);
    v17 = v7;
    v8 = Array<A>.init(tryDeserializing:using:)(&v12, &v17, a3, a4);
    sub_1DB3151CC(a1);
    sub_1DB314F08(v15);
  }

  else
  {

    sub_1DB30623C(&v12, &qword_1ECC42E28, &qword_1DB50FB20);
    v8 = sub_1DB50AA60();
    sub_1DB315178();
    swift_allocError();
    v9 = MEMORY[0x1E69E7CC0];
    *v10 = v8;
    v10[1] = v9;
    v10[2] = 0;
    v10[3] = 0;
    swift_willThrow();
    sub_1DB3151CC(a1);
  }

  return v8;
}

uint64_t sub_1DB314E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DB3171C0(a1, v9);
  v10 = a2;
  v7 = *(a4 + 8);

  return v7(v9, &v10, a3, a4);
}

uint64_t Array<A>.init(tryDeserializing:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = v5;
  v6 = JSONArray.compactMap<A>(_:)(sub_1DB314FD0, v8, a3);

  sub_1DB314F08(a1);
  return v6;
}

uint64_t sub_1DB314FD0(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_1DB3171C0(a1, v8);
  v7 = v4;
  v5 = *(v3 + 16);

  return v5(v8, &v7, v2, v3);
}

unint64_t sub_1DB315178()
{
  result = qword_1ECC42E30;
  if (!qword_1ECC42E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC42E30);
  }

  return result;
}

uint64_t Array<A>.init(tryDeserializing:using:)(uint64_t a1, void **a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  sub_1DB30C4B8(a1, &v21, &qword_1ECC42E38, &qword_1DB50FB80);
  if (!*(&v22 + 1))
  {

    sub_1DB30623C(&v21, &qword_1ECC42E38, &qword_1DB50FB80);
    goto LABEL_5;
  }

  v8 = __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
  sub_1DB300B14(v8, &v17);
  sub_1DB315520();
  if (swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_0(&v21);

LABEL_5:
    v9 = sub_1DB50A480();
    sub_1DB3151CC(a1);
    return v9;
  }

  __swift_destroy_boxed_opaque_existential_0(&v21);
  JSONObject.array.getter(&v17);
  if (*(&v18 + 1))
  {
    v21 = v17;
    v22 = v18;
    v23 = v19;
    sub_1DB315220(&v21, &v17);
    v20 = v7;
    v9 = Array<A>.init(tryDeserializing:using:)(&v17, &v20, a3, a4);
    sub_1DB3151CC(a1);
    sub_1DB314F08(&v21);
  }

  else
  {
    sub_1DB30623C(&v17, &qword_1ECC42E28, &qword_1DB50FB20);
    v10 = sub_1DB50AA60();
    sub_1DB31556C(0xD000000000000027, 0x80000001DB529830, v7, &v21);

    sub_1DB30C4B8(&v21, &v17, &qword_1ECC42E48, &qword_1DB50FB90);
    v11 = *(&v18 + 1);
    if (*(&v18 + 1))
    {
      v12 = v19;
      __swift_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
      sub_1DB315178();
      v13 = swift_allocError();
      v14 = MEMORY[0x1E69E7CC0];
      *v15 = v10;
      v15[1] = v14;
      v15[2] = 0;
      v15[3] = 0;
      (*(v12 + 8))(v10, v13, v11, v12);

      __swift_destroy_boxed_opaque_existential_0(&v17);
    }

    else
    {
      sub_1DB30623C(&v17, &qword_1ECC42E48, &qword_1DB50FB90);
    }

    v9 = sub_1DB50A480();
    sub_1DB3151CC(a1);
    sub_1DB30623C(&v21, &qword_1ECC42E48, &qword_1DB50FB90);
  }

  return v9;
}

unint64_t sub_1DB315520()
{
  result = qword_1ECC42E40;
  if (!qword_1ECC42E40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECC42E40);
  }

  return result;
}

double sub_1DB31556C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16))
  {
    v8 = sub_1DB306160(a1, a2);
    if (v9)
    {
      sub_1DB300B14(*(a3 + 56) + 32 * v8, &v33);
      sub_1DB30C200(&v33, v37);
      sub_1DB300B14(v37, v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E90, &unk_1DB50FF30);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v37);
        sub_1DB2FEA0C(&v33, a4);
        return result;
      }

      v35 = 0;
      v33 = 0u;
      v34 = 0u;
      sub_1DB30623C(&v33, &qword_1ECC42E48, &qword_1DB50FB90);
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v11 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1DB50F8D0;
      v32 = sub_1DB301BC0(0, 28, 0, MEMORY[0x1E69E7CC0]);
      v13._object = 0x80000001DB529860;
      v13._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v13);
      v36[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E98, &unk_1DB50FB70);
      v36[0] = a1;
      v36[1] = a2;
      sub_1DB30C4B8(v36, v31, &qword_1ECC426B0, &qword_1DB50EEB0);
      v33 = 0u;
      v34 = 0u;

      sub_1DB301D4C(v31, &v33);
      LOBYTE(v35) = 0;
      v14 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1DB301BC0(0, *(v14 + 2) + 1, 1, v14);
        v32 = v14;
      }

      v16 = *(v14 + 2);
      v15 = *(v14 + 3);
      if (v16 >= v15 >> 1)
      {
        v14 = sub_1DB301BC0((v15 > 1), v16 + 1, 1, v14);
      }

      *(v14 + 2) = v16 + 1;
      v17 = &v14[40 * v16];
      v18 = v33;
      v19 = v34;
      v17[64] = v35;
      *(v17 + 2) = v18;
      *(v17 + 3) = v19;
      v32 = v14;
      sub_1DB30623C(v36, &qword_1ECC426B0, &qword_1DB50EEB0);
      v20._countAndFlagsBits = 96;
      v20._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v20);
      *(v12 + 32) = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1DB50EE90;
      v22 = MEMORY[0x1E69E6158];
      *(&v34 + 1) = MEMORY[0x1E69E6158];
      *&v33 = 0xD000000000000027;
      *(&v33 + 1) = 0x80000001DB5295C0;
      *(v21 + 48) = 0u;
      *(v21 + 32) = 0u;
      sub_1DB301D4C(&v33, v21 + 32);
      *(v21 + 64) = 0;
      *(v12 + 40) = v21;
      v23 = sub_1DB50AF40();
      if (os_log_type_enabled(v11, v23))
      {
        if (qword_1EE30EDD8 != -1)
        {
          swift_once();
        }

        v24 = off_1EE30EDE0;
        os_unfair_lock_lock(off_1EE30EDE0 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v24[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v24 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v26 = swift_allocObject();
        *(v26 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v33 = v12;
        *(&v33 + 1) = sub_1DB314CB0;
        *&v34 = v26;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
        sub_1DB314864();
        v27 = sub_1DB50A5E0();
        v29 = v28;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1DB50EE90;
        *(v30 + 56) = v22;
        *(v30 + 64) = sub_1DB31494C();
        *(v30 + 32) = v27;
        *(v30 + 40) = v29;
        sub_1DB50A1E0();
      }

      __swift_destroy_boxed_opaque_existential_0(v37);
    }
  }

  *(a4 + 32) = 0;
  result = 0.0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  return result;
}

uint64_t sub_1DB315A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v6 = sub_1DB306160(a1, a2);
    if (v7)
    {
      sub_1DB300B14(*(a3 + 56) + 32 * v6, &v30);
      sub_1DB30C200(&v30, v35);
      sub_1DB300B14(v35, &v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E68, &qword_1DB516CD0);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v35);
        return v33[0];
      }

      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v9 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1DB50F8D0;
      v34 = sub_1DB301BC0(0, 28, 0, MEMORY[0x1E69E7CC0]);
      v11._object = 0x80000001DB529860;
      v11._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v11);
      v33[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E70, &qword_1DB50FB60);
      v33[0] = a1;
      v33[1] = a2;
      sub_1DB30C4B8(v33, v29, &qword_1ECC426B0, &qword_1DB50EEB0);
      v30 = 0u;
      v31 = 0u;

      sub_1DB301D4C(v29, &v30);
      v32 = 0;
      v12 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1DB301BC0(0, *(v12 + 2) + 1, 1, v12);
        v34 = v12;
      }

      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
      if (v14 >= v13 >> 1)
      {
        v12 = sub_1DB301BC0((v13 > 1), v14 + 1, 1, v12);
      }

      *(v12 + 2) = v14 + 1;
      v15 = &v12[40 * v14];
      v16 = v30;
      v17 = v31;
      v15[64] = v32;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
      v34 = v12;
      sub_1DB30623C(v33, &qword_1ECC426B0, &qword_1DB50EEB0);
      v18._countAndFlagsBits = 96;
      v18._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      *(v10 + 32) = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1DB50EE90;
      v20 = MEMORY[0x1E69E6158];
      *(&v31 + 1) = MEMORY[0x1E69E6158];
      *&v30 = 0xD000000000000027;
      *(&v30 + 1) = 0x80000001DB5295C0;
      *(v19 + 48) = 0u;
      *(v19 + 32) = 0u;
      sub_1DB301D4C(&v30, v19 + 32);
      *(v19 + 64) = 0;
      *(v10 + 40) = v19;
      v21 = sub_1DB50AF40();
      if (os_log_type_enabled(v9, v21))
      {
        if (qword_1EE30EDD8 != -1)
        {
          swift_once();
        }

        v22 = off_1EE30EDE0;
        os_unfair_lock_lock(off_1EE30EDE0 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v22[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v22 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v24 = swift_allocObject();
        *(v24 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v30 = v10;
        *(&v30 + 1) = sub_1DB314CB0;
        *&v31 = v24;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
        sub_1DB314864();
        v25 = sub_1DB50A5E0();
        v27 = v26;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1DB50EE90;
        *(v28 + 56) = v20;
        *(v28 + 64) = sub_1DB31494C();
        *(v28 + 32) = v25;
        *(v28 + 40) = v27;
        sub_1DB50A1E0();
      }

      __swift_destroy_boxed_opaque_existential_0(v35);
    }
  }

  return 0;
}

uint64_t sub_1DB315EC4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  if (*(a3 + 16) && (v7 = result, result = sub_1DB306160(result, a2), (v8 & 1) != 0))
  {
    sub_1DB300B14(*(a3 + 56) + 32 * result, &v31);
    sub_1DB30C200(&v31, v37);
    sub_1DB300B14(v37, &v31);
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_0(v37);
      v9 = v34;
    }

    else
    {
      v34 = xmmword_1DB50FB10;
      sub_1DB3171A0(0, 0xF000000000000007);
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v10 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1DB50F8D0;
      v36 = sub_1DB301BC0(0, 28, 0, MEMORY[0x1E69E7CC0]);
      v12._object = 0x80000001DB529860;
      v12._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v12);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E88, &qword_1DB50FB68);
      *&v34 = v7;
      *(&v34 + 1) = a2;
      sub_1DB30C4B8(&v34, v30, &qword_1ECC426B0, &qword_1DB50EEB0);
      v31 = 0u;
      v32 = 0u;

      sub_1DB301D4C(v30, &v31);
      v33 = 0;
      v13 = v36;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DB301BC0(0, *(v13 + 2) + 1, 1, v13);
        v36 = v13;
      }

      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      if (v15 >= v14 >> 1)
      {
        v13 = sub_1DB301BC0((v14 > 1), v15 + 1, 1, v13);
      }

      *(v13 + 2) = v15 + 1;
      v16 = &v13[40 * v15];
      v17 = v31;
      v18 = v32;
      v16[64] = v33;
      *(v16 + 2) = v17;
      *(v16 + 3) = v18;
      v36 = v13;
      sub_1DB30623C(&v34, &qword_1ECC426B0, &qword_1DB50EEB0);
      v19._countAndFlagsBits = 96;
      v19._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      *(v11 + 32) = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1DB50EE90;
      v21 = MEMORY[0x1E69E6158];
      *(&v32 + 1) = MEMORY[0x1E69E6158];
      *&v31 = 0xD000000000000027;
      *(&v31 + 1) = 0x80000001DB5295C0;
      *(v20 + 48) = 0u;
      *(v20 + 32) = 0u;
      sub_1DB301D4C(&v31, v20 + 32);
      *(v20 + 64) = 0;
      *(v11 + 40) = v20;
      v22 = sub_1DB50AF40();
      if (os_log_type_enabled(v10, v22))
      {
        if (qword_1EE30EDD8 != -1)
        {
          swift_once();
        }

        v23 = off_1EE30EDE0;
        os_unfair_lock_lock(off_1EE30EDE0 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v23[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v23 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v25 = swift_allocObject();
        *(v25 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v31 = v11;
        *(&v31 + 1) = sub_1DB314CB0;
        *&v32 = v25;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
        sub_1DB314864();
        v26 = sub_1DB50A5E0();
        v28 = v27;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1DB50EE90;
        *(v29 + 56) = v21;
        *(v29 + 64) = sub_1DB31494C();
        *(v29 + 32) = v26;
        *(v29 + 40) = v28;
        sub_1DB50A1E0();
      }

      result = __swift_destroy_boxed_opaque_existential_0(v37);
      v9 = xmmword_1DB50FB10;
    }
  }

  else
  {
    v9 = xmmword_1DB50FB10;
  }

  *a4 = v9;
  return result;
}

uint64_t sub_1DB316378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v6 = sub_1DB306160(a1, a2);
    if (v7)
    {
      sub_1DB300B14(*(a3 + 56) + 32 * v6, &v30);
      sub_1DB30C200(&v30, v35);
      sub_1DB300B14(v35, &v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E58, &unk_1DB50FF10);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v35);
        return v33[0];
      }

      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v9 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1DB50F8D0;
      v34 = sub_1DB301BC0(0, 28, 0, MEMORY[0x1E69E7CC0]);
      v11._object = 0x80000001DB529860;
      v11._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v11);
      v33[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E60, &qword_1DB50FB58);
      v33[0] = a1;
      v33[1] = a2;
      sub_1DB30C4B8(v33, v29, &qword_1ECC426B0, &qword_1DB50EEB0);
      v30 = 0u;
      v31 = 0u;

      sub_1DB301D4C(v29, &v30);
      v32 = 0;
      v12 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1DB301BC0(0, *(v12 + 2) + 1, 1, v12);
        v34 = v12;
      }

      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
      if (v14 >= v13 >> 1)
      {
        v12 = sub_1DB301BC0((v13 > 1), v14 + 1, 1, v12);
      }

      *(v12 + 2) = v14 + 1;
      v15 = &v12[40 * v14];
      v16 = v30;
      v17 = v31;
      v15[64] = v32;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
      v34 = v12;
      sub_1DB30623C(v33, &qword_1ECC426B0, &qword_1DB50EEB0);
      v18._countAndFlagsBits = 96;
      v18._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      *(v10 + 32) = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1DB50EE90;
      v20 = MEMORY[0x1E69E6158];
      *(&v31 + 1) = MEMORY[0x1E69E6158];
      *&v30 = 0xD000000000000027;
      *(&v30 + 1) = 0x80000001DB5295C0;
      *(v19 + 48) = 0u;
      *(v19 + 32) = 0u;
      sub_1DB301D4C(&v30, v19 + 32);
      *(v19 + 64) = 0;
      *(v10 + 40) = v19;
      v21 = sub_1DB50AF40();
      if (os_log_type_enabled(v9, v21))
      {
        if (qword_1EE30EDD8 != -1)
        {
          swift_once();
        }

        v22 = off_1EE30EDE0;
        os_unfair_lock_lock(off_1EE30EDE0 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v22[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v22 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v24 = swift_allocObject();
        *(v24 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v30 = v10;
        *(&v30 + 1) = sub_1DB314CB0;
        *&v31 = v24;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
        sub_1DB314864();
        v25 = sub_1DB50A5E0();
        v27 = v26;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1DB50EE90;
        *(v28 + 56) = v20;
        *(v28 + 64) = sub_1DB31494C();
        *(v28 + 32) = v25;
        *(v28 + 40) = v27;
        sub_1DB50A1E0();
      }

      __swift_destroy_boxed_opaque_existential_0(v35);
    }
  }

  return 0;
}

uint64_t sub_1DB316804@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16))
  {
    v7 = result;
    result = sub_1DB306160(result, a2);
    if (v8)
    {
      sub_1DB300B14(*(a3 + 56) + 32 * result, &v31);
      sub_1DB30C200(&v31, v38);
      sub_1DB300B14(v38, &v31);
      if (swift_dynamicCast())
      {
        result = __swift_destroy_boxed_opaque_existential_0(v38);
        v9 = v35;
        *a4 = v34;
        *(a4 + 16) = v9;
        return result;
      }

      v34 = 0uLL;
      v35 = 0;

      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v10 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1DB50F8D0;
      v37 = sub_1DB301BC0(0, 28, 0, MEMORY[0x1E69E7CC0]);
      v12._object = 0x80000001DB529860;
      v12._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v12);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E50, &qword_1DB50FB50);
      *&v34 = v7;
      *(&v34 + 1) = a2;
      sub_1DB30C4B8(&v34, v30, &qword_1ECC426B0, &qword_1DB50EEB0);
      v31 = 0u;
      v32 = 0u;

      sub_1DB301D4C(v30, &v31);
      v33 = 0;
      v13 = v37;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DB301BC0(0, *(v13 + 2) + 1, 1, v13);
        v37 = v13;
      }

      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      if (v15 >= v14 >> 1)
      {
        v13 = sub_1DB301BC0((v14 > 1), v15 + 1, 1, v13);
      }

      *(v13 + 2) = v15 + 1;
      v16 = &v13[40 * v15];
      v17 = v31;
      v18 = v32;
      v16[64] = v33;
      *(v16 + 2) = v17;
      *(v16 + 3) = v18;
      v37 = v13;
      sub_1DB30623C(&v34, &qword_1ECC426B0, &qword_1DB50EEB0);
      v19._countAndFlagsBits = 96;
      v19._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      *(v11 + 32) = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1DB50EE90;
      v21 = MEMORY[0x1E69E6158];
      *(&v32 + 1) = MEMORY[0x1E69E6158];
      *&v31 = 0xD000000000000027;
      *(&v31 + 1) = 0x80000001DB5295C0;
      *(v20 + 48) = 0u;
      *(v20 + 32) = 0u;
      sub_1DB301D4C(&v31, v20 + 32);
      *(v20 + 64) = 0;
      *(v11 + 40) = v20;
      v22 = sub_1DB50AF40();
      if (os_log_type_enabled(v10, v22))
      {
        if (qword_1EE30EDD8 != -1)
        {
          swift_once();
        }

        v23 = off_1EE30EDE0;
        os_unfair_lock_lock(off_1EE30EDE0 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v23[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v23 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v25 = swift_allocObject();
        *(v25 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v31 = v11;
        *(&v31 + 1) = sub_1DB31485C;
        *&v32 = v25;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
        sub_1DB314864();
        v26 = sub_1DB50A5E0();
        v28 = v27;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1DB50EE90;
        *(v29 + 56) = v21;
        *(v29 + 64) = sub_1DB31494C();
        *(v29 + 32) = v26;
        *(v29 + 40) = v28;
        sub_1DB50A1E0();
      }

      result = __swift_destroy_boxed_opaque_existential_0(v38);
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

uint64_t sub_1DB316CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v6 = sub_1DB306160(a1, a2);
    if (v7)
    {
      sub_1DB300B14(*(a3 + 56) + 32 * v6, &v30);
      sub_1DB30C200(&v30, v35);
      sub_1DB300B14(v35, &v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E78, &unk_1DB50FF20);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v35);
        return v33[0];
      }

      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v9 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1DB50F8D0;
      v34 = sub_1DB301BC0(0, 28, 0, MEMORY[0x1E69E7CC0]);
      v11._object = 0x80000001DB529860;
      v11._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v11);
      v33[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E80, &unk_1DB5118E0);
      v33[0] = a1;
      v33[1] = a2;
      sub_1DB30C4B8(v33, v29, &qword_1ECC426B0, &qword_1DB50EEB0);
      v30 = 0u;
      v31 = 0u;

      sub_1DB301D4C(v29, &v30);
      v32 = 0;
      v12 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1DB301BC0(0, *(v12 + 2) + 1, 1, v12);
        v34 = v12;
      }

      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
      if (v14 >= v13 >> 1)
      {
        v12 = sub_1DB301BC0((v13 > 1), v14 + 1, 1, v12);
      }

      *(v12 + 2) = v14 + 1;
      v15 = &v12[40 * v14];
      v16 = v30;
      v17 = v31;
      v15[64] = v32;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
      v34 = v12;
      sub_1DB30623C(v33, &qword_1ECC426B0, &qword_1DB50EEB0);
      v18._countAndFlagsBits = 96;
      v18._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      *(v10 + 32) = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1DB50EE90;
      v20 = MEMORY[0x1E69E6158];
      *(&v31 + 1) = MEMORY[0x1E69E6158];
      *&v30 = 0xD000000000000027;
      *(&v30 + 1) = 0x80000001DB5295C0;
      *(v19 + 48) = 0u;
      *(v19 + 32) = 0u;
      sub_1DB301D4C(&v30, v19 + 32);
      *(v19 + 64) = 0;
      *(v10 + 40) = v19;
      v21 = sub_1DB50AF40();
      if (os_log_type_enabled(v9, v21))
      {
        if (qword_1EE30EDD8 != -1)
        {
          swift_once();
        }

        v22 = off_1EE30EDE0;
        os_unfair_lock_lock(off_1EE30EDE0 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v22[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v22 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v24 = swift_allocObject();
        *(v24 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v30 = v10;
        *(&v30 + 1) = sub_1DB314CB0;
        *&v31 = v24;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
        sub_1DB314864();
        v25 = sub_1DB50A5E0();
        v27 = v26;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1DB50EE90;
        *(v28 + 56) = v20;
        *(v28 + 64) = sub_1DB31494C();
        *(v28 + 32) = v25;
        *(v28 + 40) = v27;
        sub_1DB50A1E0();
      }

      __swift_destroy_boxed_opaque_existential_0(v35);
    }
  }

  return 0;
}

uint64_t sub_1DB31713C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = Array<A>.init(deserializing:using:)(a1, a2, *(a3 + 16), *(a4 - 8));
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1DB317170@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = Array<A>.init(tryDeserializing:using:)(a1, a2, *(a3 + 16), *(a4 - 8));
  *a5 = result;
  return result;
}

uint64_t sub_1DB3171A0(uint64_t a1, uint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    return sub_1DB3171B4(a1, a2);
  }

  return a1;
}

uint64_t sub_1DB3171B4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
  }

  return result;
}

uint64_t Array<A>.init(_partiallyDeserializing:using:)(uint64_t a1, void **a2, uint64_t a3, uint64_t a4)
{
  sub_1DB3171C0(a1, v11);
  v10 = *a2;

  v8 = Array<A>.init(tryDeserializing:using:)(v11, &v10, a3, a4);

  sub_1DB3151CC(a1);
  return v8;
}

uint64_t sub_1DB31729C@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = Array<A>.init(_partiallyDeserializing:using:)(a1, a2, *(a3 + 16), *(a4 - 8));
  *a5 = result;
  return result;
}

uint64_t Dictionary<>.init(_partiallyDeserializing:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1DB30C4B8(a1, &v23, &qword_1ECC42E38, &qword_1DB50FB80);
  if (!*(&v24 + 1))
  {
    sub_1DB30623C(&v23, &qword_1ECC42E38, &qword_1DB50FB80);
    goto LABEL_5;
  }

  v8 = __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
  sub_1DB300B14(v8, &v20);
  sub_1DB315520();
  if (swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_0(&v23);
LABEL_5:
    v9 = sub_1DB50A470();
    v10 = *a2;

    sub_1DB3151CC(a1);
    return v9;
  }

  __swift_destroy_boxed_opaque_existential_0(&v23);
  sub_1DB30C4B8(a1, v18, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v19)
  {
    __swift_project_boxed_opaque_existential_1(v18, v19);
    sub_1DB408B14(&v20);
    __swift_destroy_boxed_opaque_existential_0(v18);
    if (*(&v21 + 1))
    {
      v23 = v20;
      v24 = v21;
      v25 = v22;
      sub_1DB3176E4(&v23, &v20);
      v18[0] = *a2;

      v9 = Dictionary<>.init(tryDeserializing:using:)(&v20, v18, a3, a4);

      sub_1DB3151CC(a1);
      sub_1DB317740(&v23);
      return v9;
    }
  }

  else
  {
    sub_1DB30623C(v18, &qword_1ECC42E38, &qword_1DB50FB80);
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
  }

  sub_1DB30623C(&v20, &qword_1ECC42EA0, &qword_1DB50FB88);
  v11 = sub_1DB50A540();
  sub_1DB31556C(0xD000000000000027, 0x80000001DB529830, *a2, &v23);
  sub_1DB30C4B8(&v23, &v20, &qword_1ECC42E48, &qword_1DB50FB90);
  v12 = *(&v21 + 1);
  if (*(&v21 + 1))
  {
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(&v20, *(&v21 + 1));
    sub_1DB315178();
    v14 = swift_allocError();
    v15 = MEMORY[0x1E69E7CC0];
    *v16 = v11;
    v16[1] = v15;
    v16[2] = 0;
    v16[3] = 0;
    (*(v13 + 8))(v11, v14, v12, v13);

    __swift_destroy_boxed_opaque_existential_0(&v20);
  }

  else
  {
    sub_1DB30623C(&v20, &qword_1ECC42E48, &qword_1DB50FB90);
  }

  v9 = sub_1DB50A470();

  sub_1DB3151CC(a1);
  sub_1DB30623C(&v23, &qword_1ECC42E48, &qword_1DB50FB90);
  return v9;
}

uint64_t sub_1DB317608@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = Dictionary<>.init(_partiallyDeserializing:using:)(a1, a2, *(a3 + 24), *(a4 - 8));
  *a5 = result;
  return result;
}

uint64_t Optional<A>.init(_partiallyDeserializing:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1DB3171C0(a1, v11);
  v10 = *a2;
  v8 = *(a4 + 16);

  v8(v11, &v10, a3, a4);

  return sub_1DB3151CC(a1);
}

uint64_t OpenCodingKey.stringValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_1DB50B8F0();
  }

  return a1;
}

uint64_t OpenCodingKey.intValue.getter(uint64_t result, unint64_t a2, char a3)
{
  if (a3)
  {
    v4 = HIBYTE(a2) & 0xF;
    v5 = result & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v6)
    {
      return 0;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v28 = result;
      sub_1DB3184A4(result, a2, 1);
      v9 = sub_1DB317F24(v28, a2, 10);
      v27 = v29;
      sub_1DB3184B4(v28, a2, 1);
LABEL_65:
      if (v27)
      {
        return 0;
      }

      else
      {
        return v9;
      }
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v30[0] = result;
      v30[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v4)
        {
          v8 = v4 - 1;
          if (v4 != 1)
          {
            v9 = 0;
            v19 = v30 + 1;
            while (1)
            {
              v20 = *v19 - 48;
              if (v20 > 9)
              {
                break;
              }

              v21 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                break;
              }

              v9 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                break;
              }

              ++v19;
              if (!--v8)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v4)
        {
          v9 = 0;
          v24 = v30;
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              break;
            }

            v26 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              break;
            }

            v9 = v26 + v25;
            if (__OFADD__(v26, v25))
            {
              break;
            }

            ++v24;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v4)
      {
        v8 = v4 - 1;
        if (v4 != 1)
        {
          v9 = 0;
          v13 = v30 + 1;
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              break;
            }

            v15 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              break;
            }

            v9 = v15 - v14;
            if (__OFSUB__(v15, v14))
            {
              break;
            }

            ++v13;
            if (!--v8)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1DB50B440();
      }

      v7 = *result;
      if (v7 == 43)
      {
        if (v5 >= 1)
        {
          v8 = v5 - 1;
          if (v5 != 1)
          {
            v9 = 0;
            if (result)
            {
              v16 = (result + 1);
              while (1)
              {
                v17 = *v16 - 48;
                if (v17 > 9)
                {
                  goto LABEL_63;
                }

                v18 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  goto LABEL_63;
                }

                v9 = v18 + v17;
                if (__OFADD__(v18, v17))
                {
                  goto LABEL_63;
                }

                ++v16;
                if (!--v8)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v7 != 45)
      {
        if (v5)
        {
          v9 = 0;
          if (result)
          {
            while (1)
            {
              v22 = *result - 48;
              if (v22 > 9)
              {
                goto LABEL_63;
              }

              v23 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                goto LABEL_63;
              }

              v9 = v23 + v22;
              if (__OFADD__(v23, v22))
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v9 = 0;
        LOBYTE(v8) = 1;
        goto LABEL_64;
      }

      if (v5 >= 1)
      {
        v8 = v5 - 1;
        if (v5 != 1)
        {
          v9 = 0;
          if (result)
          {
            v10 = (result + 1);
            while (1)
            {
              v11 = *v10 - 48;
              if (v11 > 9)
              {
                goto LABEL_63;
              }

              v12 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                goto LABEL_63;
              }

              v9 = v12 - v11;
              if (__OFSUB__(v12, v11))
              {
                goto LABEL_63;
              }

              ++v10;
              if (!--v8)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v8) = 0;
LABEL_64:
          v31 = v8;
          v27 = v8;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  return result;
}

uint64_t OpenCodingKey.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
  {
    sub_1DB3184C4();
    return sub_1DB50B1F0();
  }
}

uint64_t sub_1DB317B94()
{
  v1 = *v0;
  if (*(v0 + 16) == 1)
  {
    v2 = v0[1];
    v3 = *v0;

    return v3;
  }

  else
  {
    v5 = *v0;
    return sub_1DB50B8F0();
  }
}

uint64_t sub_1DB317BFC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
  return result;
}

uint64_t sub_1DB317C30@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_1DB317C3C()
{
  v1 = *v0;
  if (*(v0 + 16) == 1)
  {
    v2 = v0[1];
    v3 = *v0;

    return v3;
  }

  else
  {
    v5 = *v0;
    sub_1DB3184C4();
    return sub_1DB50B1F0();
  }
}

uint64_t sub_1DB317CA4(uint64_t a1)
{
  v2 = sub_1DB3053A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DB317CE0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - v13;
  v15 = *(v7 + 16);
  v15(&v20 - v13, v12);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2 = sub_1DB302510(0, a2[2] + 1, 1, a2);
    v21 = a2;
  }

  v18 = a2[2];
  v17 = a2[3];
  if (v18 >= v17 >> 1)
  {
    a2 = sub_1DB302510((v17 > 1), v18 + 1, 1, a2);
    v21 = a2;
  }

  (v15)(v10, v14, a3);
  sub_1DB317E8C(v18, v10, &v21, a3, a4);
  (*(v7 + 8))(v14, a3);
  return a2;
}

uint64_t sub_1DB317E8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1DB2FEA0C(&v12, v10 + 40 * a1 + 32);
}

unsigned __int8 *sub_1DB317F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a1;
  v62 = a2;

  result = sub_1DB50A860();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1DB412E70();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1DB50B440();
      v7 = v60;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_124;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_124;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_125;
          }

          goto LABEL_64;
        }

LABEL_124:
        v17 = 0;
        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = 0;
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        while (1)
        {
          v31 = *result;
          if (v31 < 0x30 || v31 >= v28)
          {
            if (v31 < 0x41 || v31 >= v29)
            {
              v17 = 0;
              if (v31 < 0x61 || v31 >= v30)
              {
                goto LABEL_125;
              }

              v32 = -87;
            }

            else
            {
              v32 = -55;
            }
          }

          else
          {
            v32 = -48;
          }

          v33 = v27 * a3;
          if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
          {
            goto LABEL_124;
          }

          v27 = v33 + (v31 + v32);
          if (__OFADD__(v33, (v31 + v32)))
          {
            goto LABEL_124;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_125;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_124;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_124;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_64:
        v17 = 0;
LABEL_125:

        return v17;
      }

      goto LABEL_124;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v36 = HIBYTE(v5) & 0xF;
  v61 = v6;
  v62 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v27 = 0;
        v53 = a3 + 48;
        v54 = a3 + 55;
        v55 = a3 + 87;
        if (a3 > 10)
        {
          v53 = 58;
        }

        else
        {
          v55 = 97;
          v54 = 65;
        }

        v56 = &v61;
        while (1)
        {
          v57 = *v56;
          if (v57 < 0x30 || v57 >= v53)
          {
            if (v57 < 0x41 || v57 >= v54)
            {
              v17 = 0;
              if (v57 < 0x61 || v57 >= v55)
              {
                goto LABEL_125;
              }

              v58 = -87;
            }

            else
            {
              v58 = -55;
            }
          }

          else
          {
            v58 = -48;
          }

          v59 = v27 * a3;
          if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
          {
            goto LABEL_124;
          }

          v27 = v59 + (v57 + v58);
          if (__OFADD__(v59, (v57 + v58)))
          {
            goto LABEL_124;
          }

          v56 = (v56 + 1);
          if (!--v36)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v27 = 0;
        v38 = a3 + 48;
        v39 = a3 + 55;
        v40 = a3 + 87;
        if (a3 > 10)
        {
          v38 = 58;
        }

        else
        {
          v40 = 97;
          v39 = 65;
        }

        v41 = &v61 + 1;
        while (1)
        {
          v42 = *v41;
          if (v42 < 0x30 || v42 >= v38)
          {
            if (v42 < 0x41 || v42 >= v39)
            {
              v17 = 0;
              if (v42 < 0x61 || v42 >= v40)
              {
                goto LABEL_125;
              }

              v43 = -87;
            }

            else
            {
              v43 = -55;
            }
          }

          else
          {
            v43 = -48;
          }

          v44 = v27 * a3;
          if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
          {
            goto LABEL_124;
          }

          v27 = v44 - (v42 + v43);
          if (__OFSUB__(v44, (v42 + v43)))
          {
            goto LABEL_124;
          }

          ++v41;
          if (!--v37)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    goto LABEL_128;
  }

  if (v36)
  {
    v45 = v36 - 1;
    if (v45)
    {
      v27 = 0;
      v46 = a3 + 48;
      v47 = a3 + 55;
      v48 = a3 + 87;
      if (a3 > 10)
      {
        v46 = 58;
      }

      else
      {
        v48 = 97;
        v47 = 65;
      }

      v49 = &v61 + 1;
      do
      {
        v50 = *v49;
        if (v50 < 0x30 || v50 >= v46)
        {
          if (v50 < 0x41 || v50 >= v47)
          {
            v17 = 0;
            if (v50 < 0x61 || v50 >= v48)
            {
              goto LABEL_125;
            }

            v51 = -87;
          }

          else
          {
            v51 = -55;
          }
        }

        else
        {
          v51 = -48;
        }

        v52 = v27 * a3;
        if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
        {
          goto LABEL_124;
        }

        v27 = v52 + (v50 + v51);
        if (__OFADD__(v52, (v50 + v51)))
        {
          goto LABEL_124;
        }

        ++v49;
        --v45;
      }

      while (v45);
LABEL_123:
      v17 = v27;
      goto LABEL_125;
    }

    goto LABEL_124;
  }

LABEL_130:
  __break(1u);
  return result;
}

uint64_t sub_1DB3184A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1DB3184B4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1DB3184C4()
{
  result = qword_1ECC42EA8;
  if (!qword_1ECC42EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC42EA8);
  }

  return result;
}

unint64_t sub_1DB31851C()
{
  result = qword_1ECC42EB0;
  if (!qword_1ECC42EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC42EB0);
  }

  return result;
}

unint64_t sub_1DB318574()
{
  result = qword_1ECC42EB8;
  if (!qword_1ECC42EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC42EB8);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DB3185E8(uint64_t a1, unsigned int a2)
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

uint64_t sub_1DB318630(uint64_t result, unsigned int a2, unsigned int a3)
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

Swift::Bool __swiftcall jet_debug_tooling_os_variant_has_internal_content()()
{
  if (qword_1EE30EDD8 != -1)
  {
    swift_once();
  }

  v0 = off_1EE30EDE0;
  os_unfair_lock_lock(off_1EE30EDE0 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v0[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v0 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
  }

  return os_unfair_lock_opaque_low & 1;
}

BOOL sub_1DB318708()
{
  result = sub_1DB31872C();
  byte_1EE30E198 = result;
  return result;
}

BOOL sub_1DB31872C()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_1DB50A4B0();
  if (*(v2 + 16))
  {
    sub_1DB306160(0xD00000000000001BLL, 0x80000001DB529880);
    v4 = v3;

    if (v4)
    {
      return 1;
    }
  }

  else
  {
  }

  v6 = sub_1DB50A620();
  v7 = NSClassFromString(v6);

  return v7 != 0;
}

uint64_t static JetDebugTooling.isRunningFromTest.getter()
{
  if (qword_1EE30E190 != -1)
  {
    swift_once();
  }

  return byte_1EE30E198;
}

uint64_t sub_1DB31887C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC42EC0, &qword_1DB50FD80);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 2;
  off_1EE30EDE0 = result;
  return result;
}

uint64_t IntentOutcome.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  v10 = 1;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    (*(v9 + 32))(a2, v6, v8);
    v10 = 0;
  }

  return (*(v9 + 56))(a2, v10, 1, v8);
}

uint64_t static IntentOutcome<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v32 = a1;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for IntentOutcome();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v33 = &v28 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v18 = &v28 - v17;
  v19 = *(v16 + 48);
  v31 = v10;
  v20 = *(v10 + 16);
  v20(&v28 - v17, v32, v9);
  v20(&v18[v19], a2, v9);
  v32 = v6;
  v21 = *(v6 + 48);
  if (v21(v18, 1, a3) == 1)
  {
    v22 = 1;
    if (v21(&v18[v19], 1, a3) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v20(v33, v18, v9);
    if (v21(&v18[v19], 1, a3) != 1)
    {
      v23 = v32;
      v24 = v29;
      (*(v32 + 32))(v29, &v18[v19], a3);
      v25 = v33;
      v22 = sub_1DB50A610();
      v26 = *(v23 + 8);
      v26(v24, a3);
      v26(v25, a3);
LABEL_8:
      v14 = v31;
      goto LABEL_9;
    }

    (*(v32 + 8))(v33, a3);
  }

  v22 = 0;
  v9 = TupleTypeMetadata2;
LABEL_9:
  (*(v14 + 8))(v18, v9);
  return v22 & 1;
}

uint64_t sub_1DB318D90(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1DB318DEC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_1DB318F6C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t AllowedFieldsTreatmentFilter.Definition.eventType.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

JetCore::AllowedFieldsTreatmentFilter::Definition __swiftcall AllowedFieldsTreatmentFilter.Definition.init(eventType:fieldNames:)(JetCore::MetricsEventType eventType, Swift::OpaquePointer fieldNames)
{
  v3 = *(eventType.rawValue._countAndFlagsBits + 8);
  *v2 = *eventType.rawValue._countAndFlagsBits;
  v2[1] = v3;
  v2[2] = eventType.rawValue._object;
  result.eventType = eventType;
  result.fieldNames = fieldNames;
  return result;
}

JetCore::AllowedFieldsTreatmentFilter __swiftcall AllowedFieldsTreatmentFilter.init(_:)(JetCore::AllowedFieldsTreatmentFilter result)
{
  *v1 = *result.allowed.eventType.rawValue._countAndFlagsBits;
  *(v1 + 8) = *(result.allowed.eventType.rawValue._countAndFlagsBits + 8);
  return result;
}

JetCore::LintedMetricsEvent __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AllowedFieldsTreatmentFilter.treat(_:on:)(JetCore::LintedMetricsEvent _, Swift::String_optional on)
{
  v4 = v2;
  v6 = *_.fields._rawValue;
  v5 = *(_.fields._rawValue + 1);
  if (!*(*_.fields._rawValue + 16))
  {
    goto LABEL_27;
  }

  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = sub_1DB306160(0x707954746E657665, 0xE900000000000065);
  if ((v11 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_1DB300B14(*(v6 + 56) + 32 * v10, &v46);
  v12 = MEMORY[0x1E69E6158];
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  v42 = v9;
  v43 = v4;
  if (v45[0] != __PAIR128__(v8, v7) && (sub_1DB50BA30() & 1) == 0)
  {

LABEL_27:
    *v4 = v6;
    v4[1] = v5;

LABEL_28:

    goto LABEL_33;
  }

  v41 = v5;
  v47 = v12;
  v46 = v45[0];
  sub_1DB30C200(&v46, v45);
  v13 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = v13;
  sub_1DB31D16C(v45, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v15 = v48;
  v44 = *(v9 + 16);
  if (!v44)
  {
    v18 = v43;
LABEL_25:
    *v18 = v15;
    v18[1] = v41;
    goto LABEL_28;
  }

  v16 = 0;
  v17 = (v9 + 40);
  v18 = v43;
  while (v16 < *(v9 + 16))
  {
    if (*(v6 + 16))
    {
      v20 = *(v17 - 1);
      v19 = *v17;

      v21 = sub_1DB306160(v20, v19);
      if (v22)
      {
        sub_1DB300B14(*(v6 + 56) + 32 * v21, v45);
        sub_1DB30C200(v45, &v46);
        sub_1DB300B14(&v46, v45);
        v23 = swift_isUniquelyReferenced_nonNull_native();
        v48 = v15;
        v24 = sub_1DB306160(v20, v19);
        v26 = v15[2];
        v27 = (v25 & 1) == 0;
        v28 = __OFADD__(v26, v27);
        v29 = v26 + v27;
        if (v28)
        {
          goto LABEL_30;
        }

        v30 = v25;
        if (v15[3] >= v29)
        {
          if (v23)
          {
            goto LABEL_18;
          }

          v34 = v24;
          sub_1DB3112DC();
          v24 = v34;
          if ((v30 & 1) == 0)
          {
            goto LABEL_21;
          }

LABEL_19:
          v32 = v24;

          v15 = v48;
          v33 = (v48[7] + 32 * v32);
          __swift_destroy_boxed_opaque_existential_0(v33);
          sub_1DB30C200(v45, v33);
          __swift_destroy_boxed_opaque_existential_0(&v46);
        }

        else
        {
          sub_1DB319570(v29, v23);
          v24 = sub_1DB306160(v20, v19);
          if ((v30 & 1) != (v31 & 1))
          {
            goto LABEL_32;
          }

LABEL_18:
          if (v30)
          {
            goto LABEL_19;
          }

LABEL_21:
          v15 = v48;
          v48[(v24 >> 6) + 8] |= 1 << v24;
          v35 = (v15[6] + 16 * v24);
          *v35 = v20;
          v35[1] = v19;
          sub_1DB30C200(v45, (v15[7] + 32 * v24));
          __swift_destroy_boxed_opaque_existential_0(&v46);
          v36 = v15[2];
          v28 = __OFADD__(v36, 1);
          v37 = v36 + 1;
          if (v28)
          {
            goto LABEL_31;
          }

          v15[2] = v37;
        }

        v9 = v42;
        v18 = v43;
        goto LABEL_9;
      }
    }

LABEL_9:
    ++v16;
    v17 += 2;
    if (v44 == v16)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  v38 = sub_1DB50BC20();
  __break(1u);
LABEL_33:
  result.issues._rawValue = v39;
  result.fields._rawValue = v38;
  return result;
}