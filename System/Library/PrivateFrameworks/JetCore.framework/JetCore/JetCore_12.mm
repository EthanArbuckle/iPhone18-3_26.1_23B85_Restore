void sub_1DB3FA7F4(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + 24, v24, &unk_1ECC45010, &unk_1DB51A940);
  if (v25 == 3)
  {
    sub_1DB30623C(v24, &unk_1ECC45010, &unk_1DB51A940);
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (v25)
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v4 = v24[0];
    sub_1DB30BE90(a1, v23);
    v23[40] = 1;
    swift_beginAccess();
    sub_1DB30C2D8(v23, v1 + 24, &unk_1ECC45010, &unk_1DB51A940);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      v7 = &unk_1ECC42BA0;
      do
      {
        sub_1DB30C4B8(v6, v23, v7, &qword_1DB50F2A0);
        sub_1DB30C4B8(v23, v20, v7, &qword_1DB50F2A0);
        v8 = v20[0];
        if (v22)
        {
          sub_1DB30BE90(a1, &v17);
          sub_1DB2FEA0C(&v17, *(*(v8 + 64) + 40));
          swift_continuation_throwingResume();
          sub_1DB30623C(v23, v7, &qword_1DB50F2A0);
        }

        else
        {
          v9 = v20[1];

          sub_1DB2FEA0C(&v21, &v17);
          v10 = v19;
          v15 = v18;
          __swift_project_boxed_opaque_existential_1(&v17, v18);
          sub_1DB30BE90(a1, v16);
          v11 = swift_allocObject();
          *(v11 + 16) = v8;
          *(v11 + 24) = v9;
          sub_1DB2FEA0C(v16, v11 + 32);
          v12 = v7;
          v13 = a1;
          v14 = *(v10 + 8);

          v14(sub_1DB401290, v11, v15, v10);
          a1 = v13;
          v7 = v12;

          sub_1DB30623C(v23, v12, &qword_1DB50F2A0);
          __swift_destroy_boxed_opaque_existential_0(&v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1DB3FAB4C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
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
    *(v5 + 32) = 1;

    os_unfair_lock_unlock(v8 + 4);
    v19 = v9;
    v10 = v9[2];
    if (v10)
    {
      v11 = (v9 + 4);
      v20 = a2;
      v21 = a3;
      do
      {
        sub_1DB30C4B8(v11, v30, a2, a3);
        sub_1DB30C4B8(v30, v27, a2, a3);
        v12 = v27[0];
        if (v29)
        {
          **(*(v27[0] + 64) + 40) = a1;

          swift_continuation_throwingResume();
          sub_1DB30623C(v30, a2, a3);
        }

        else
        {
          v13 = v27[1];

          sub_1DB2FEA0C(&v28, v24);
          v15 = v25;
          v14 = v26;
          __swift_project_boxed_opaque_existential_1(v24, v25);
          v16 = swift_allocObject();
          v16[2] = v12;
          v16[3] = v13;
          v16[4] = a1;
          v17 = *(v14 + 8);

          v18 = v14;
          a2 = v20;
          v17(a5, v16, v15, v18);

          a3 = v21;

          sub_1DB30623C(v30, v20, v21);
          __swift_destroy_boxed_opaque_existential_0(v24);
        }

        v11 += 80;
        --v10;
      }

      while (v10);
    }

    sub_1DB400E3C(v19, 0, MEMORY[0x1E69E7D48]);
  }
}

void sub_1DB3FADB8(uint64_t a1)
{
  v3 = type metadata accessor for JetPackAsset(0);
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = v5;
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45350, &unk_1DB518F60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v31 - v11);
  v13 = v1[2];
  os_unfair_lock_lock(v13 + 4);
  v14 = *(*v1 + 96);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + v14, v12, &unk_1ECC45350, &unk_1DB518F60);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1DB30623C(v12, &unk_1ECC45350, &unk_1DB518F60);
    os_unfair_lock_unlock(v13 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v16 = *v12;
    sub_1DB400F8C(a1, v9, type metadata accessor for JetPackAsset);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1DB30C2D8(v9, v1 + v14, &unk_1ECC45350, &unk_1DB518F60);
    swift_endAccess();
    os_unfair_lock_unlock(v13 + 4);
    v17 = *(v16 + 16);
    if (v17)
    {
      v31 = v16;
      v18 = v16 + 32;
      v19 = &unk_1ECC42B50;
      v32 = a1;
      do
      {
        sub_1DB30C4B8(v18, v44, v19, &qword_1DB50F240);
        sub_1DB30C4B8(v44, v41, v19, &qword_1DB50F240);
        v21 = v41[0];
        if (v43)
        {
          v20 = v37;
          sub_1DB400F8C(a1, v37, type metadata accessor for JetPackAsset);
          sub_1DB30C210(v20, *(*(v21 + 64) + 40), type metadata accessor for JetPackAsset);
          swift_continuation_throwingResume();
          sub_1DB30623C(v44, v19, &qword_1DB50F240);
        }

        else
        {
          v22 = v41[1];

          sub_1DB2FEA0C(&v42, v38);
          v23 = v39;
          v35 = v40;
          v36 = __swift_project_boxed_opaque_existential_1(v38, v39);
          v24 = v19;
          v25 = v37;
          sub_1DB400F8C(a1, v37, type metadata accessor for JetPackAsset);
          v26 = (*(v34 + 80) + 32) & ~*(v34 + 80);
          v27 = swift_allocObject();
          *(v27 + 16) = v21;
          *(v27 + 24) = v22;
          v28 = v25;
          v19 = v24;
          sub_1DB30C210(v28, v27 + v26, type metadata accessor for JetPackAsset);
          v29 = v35;
          v30 = *(v35 + 8);

          v30(sub_1DB4012A0, v27, v23, v29);

          a1 = v32;

          sub_1DB30623C(v44, v19, &qword_1DB50F240);
          __swift_destroy_boxed_opaque_existential_0(v38);
        }

        v18 += 80;
        --v17;
      }

      while (v17);
    }
  }
}

void sub_1DB3FB28C(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + 24, v32, &unk_1ECC45370, &unk_1DB518F80);
  if (v33 == 3)
  {
    sub_1DB30623C(v32, &unk_1ECC45370, &unk_1DB518F80);
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (v33)
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v4 = v32[0];
    sub_1DB3C17BC(a1, v31);
    v31[56] = 1;
    swift_beginAccess();
    sub_1DB30C2D8(v31, v1 + 24, &unk_1ECC45370, &unk_1DB518F80);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      v7 = &unk_1ECC42B70;
      do
      {
        sub_1DB30C4B8(v6, v31, v7, &qword_1DB50F260);
        sub_1DB30C4B8(v31, v28, v7, &qword_1DB50F260);
        v12 = v28[0];
        if (v30)
        {
          sub_1DB3C17BC(a1, &v24);
          v8 = *(*(v12 + 64) + 40);
          v9 = v24;
          v10 = v25;
          v11 = v26;
          *(v8 + 48) = v27;
          *(v8 + 16) = v10;
          *(v8 + 32) = v11;
          *v8 = v9;
          swift_continuation_throwingResume();
          sub_1DB30623C(v31, v7, &qword_1DB50F260);
        }

        else
        {
          v13 = v28[1];

          sub_1DB2FEA0C(&v29, v21);
          v14 = v23;
          v20 = v22;
          __swift_project_boxed_opaque_existential_1(v21, v22);
          sub_1DB3C17BC(a1, &v24);
          v15 = swift_allocObject();
          *(v15 + 16) = v12;
          *(v15 + 24) = v13;
          v16 = v25;
          *(v15 + 32) = v24;
          *(v15 + 48) = v16;
          *(v15 + 64) = v26;
          *(v15 + 80) = v27;
          v17 = v7;
          v18 = a1;
          v19 = *(v14 + 8);

          v19(sub_1DB401290, v15, v20, v14);
          a1 = v18;
          v7 = v17;

          sub_1DB30623C(v31, v17, &qword_1DB50F260);
          __swift_destroy_boxed_opaque_existential_0(v21);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1DB3FB5A8(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + 24, v32, &unk_1ECC45360, &unk_1DB518F70);
  if (v33 == 3)
  {
    sub_1DB30623C(v32, &unk_1ECC45360, &unk_1DB518F70);
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (v33)
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v4 = v32[0];
    sub_1DB3BEB60(a1, v31);
    v31[56] = 1;
    swift_beginAccess();
    sub_1DB30C2D8(v31, v1 + 24, &unk_1ECC45360, &unk_1DB518F70);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      v7 = &unk_1ECC42B60;
      do
      {
        sub_1DB30C4B8(v6, v31, v7, &qword_1DB50F250);
        sub_1DB30C4B8(v31, v28, v7, &qword_1DB50F250);
        v12 = v28[0];
        if (v30)
        {
          sub_1DB3BEB60(a1, &v24);
          v8 = *(*(v12 + 64) + 40);
          v9 = v24;
          v10 = v25;
          v11 = v26;
          *(v8 + 48) = v27;
          *(v8 + 16) = v10;
          *(v8 + 32) = v11;
          *v8 = v9;
          swift_continuation_throwingResume();
          sub_1DB30623C(v31, v7, &qword_1DB50F250);
        }

        else
        {
          v13 = v28[1];

          sub_1DB2FEA0C(&v29, v21);
          v14 = v23;
          v20 = v22;
          __swift_project_boxed_opaque_existential_1(v21, v22);
          sub_1DB3BEB60(a1, &v24);
          v15 = swift_allocObject();
          *(v15 + 16) = v12;
          *(v15 + 24) = v13;
          v16 = v25;
          *(v15 + 32) = v24;
          *(v15 + 48) = v16;
          *(v15 + 64) = v26;
          *(v15 + 80) = v27;
          v17 = v7;
          v18 = a1;
          v19 = *(v14 + 8);

          v19(sub_1DB401290, v15, v20, v14);
          a1 = v18;
          v7 = v17;

          sub_1DB30623C(v31, v17, &qword_1DB50F250);
          __swift_destroy_boxed_opaque_existential_0(v21);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1DB3FB8C4()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  swift_beginAccess();
  if (*(v0 + 32) == 3)
  {
    os_unfair_lock_unlock(v1 + 4);
  }

  else if (*(v0 + 32))
  {
    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 24);
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;
    os_unfair_lock_unlock(v1 + 4);
    v11 = v2;
    v3 = v2[2];
    if (v3)
    {
      v4 = (v2 + 4);
      do
      {
        sub_1DB30C4B8(v4, v18, &qword_1ECC429E0, &qword_1DB50F498);
        sub_1DB30C4B8(v18, v15, &qword_1ECC429E0, &qword_1DB50F498);
        v5 = v15[0];
        if (v17)
        {
          swift_continuation_throwingResume();
          sub_1DB30623C(v18, &qword_1ECC429E0, &qword_1DB50F498);
        }

        else
        {
          v6 = v15[1];

          sub_1DB2FEA0C(&v16, v12);
          v8 = v13;
          v7 = v14;
          __swift_project_boxed_opaque_existential_1(v12, v13);
          v9 = swift_allocObject();
          *(v9 + 16) = v5;
          *(v9 + 24) = v6;
          v10 = *(v7 + 8);

          v10(sub_1DB400890, v9, v8, v7);

          sub_1DB30623C(v18, &qword_1ECC429E0, &qword_1DB50F498);
          __swift_destroy_boxed_opaque_existential_0(v12);
        }

        v4 += 80;
        --v3;
      }

      while (v3);
    }

    sub_1DB30C3C4(v11, 0);
  }
}

void sub_1DB3FBB2C(uint64_t a1)
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
  *(v1 + 32) = 1;

  os_unfair_lock_unlock(v2 + 4);
  v4 = v3[2];
  if (v4)
  {
    v5 = 0;
    v6 = (v3 + 4);
    while (v5 < v4)
    {
      sub_1DB30C4B8(v6, v20, &qword_1ECC42840, &qword_1DB5142D0);
      sub_1DB30C4B8(v20, v17, &qword_1ECC42840, &qword_1DB5142D0);
      v7 = v17[0];
      if (v19)
      {
        **(*(v17[0] + 64) + 40) = a1;

        swift_continuation_throwingResume();
      }

      else
      {
        v8 = v17[1];

        sub_1DB2FEA0C(&v18, v14);
        v10 = v15;
        v9 = v16;
        __swift_project_boxed_opaque_existential_1(v14, v15);
        v11 = swift_allocObject();
        v11[2] = v7;
        v11[3] = v8;
        v11[4] = a1;
        v12 = *(v9 + 8);

        v12(sub_1DB401294, v11, v10, v9);

        __swift_destroy_boxed_opaque_existential_0(v14);
      }

      ++v5;
      sub_1DB30623C(v20, &qword_1ECC42840, &qword_1DB5142D0);
      v4 = v3[2];
      v6 += 80;
      if (v5 == v4)
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
  sub_1DB400E3C(v3, 0, MEMORY[0x1E69E7CF8]);
}

void sub_1DB3FBDE4(uint64_t a1)
{
  v33 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  v29 = *(v2 - 8);
  v28 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v26 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45340, &unk_1DB518F50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v26 - v9);
  v11 = v1[2];
  os_unfair_lock_lock(v11 + 4);
  v12 = *(*v1 + 96);
  swift_beginAccess();
  sub_1DB30C4B8(v1 + v12, v10, &unk_1ECC45340, &unk_1DB518F50);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1DB30623C(v10, &unk_1ECC45340, &unk_1DB518F50);
    os_unfair_lock_unlock(v11 + 4);
    return;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_14;
  }

  v14 = *v10;
  sub_1DB30C4B8(v33, v7, &unk_1ECC42B20, &unk_1DB50F6A0);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1DB30C2D8(v7, v1 + v12, &unk_1ECC45340, &unk_1DB518F50);
  swift_endAccess();
  os_unfair_lock_unlock(v11 + 4);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = v14 + 32;
    v27 = v14;
    while (v16 < v15)
    {
      sub_1DB30C4B8(v17, v41, &unk_1ECC42B30, &qword_1DB50F1E0);
      sub_1DB30C4B8(v41, v38, &unk_1ECC42B30, &qword_1DB50F1E0);
      v19 = v38[0];
      if (v40)
      {
        v18 = v32;
        sub_1DB30C4B8(v33, v32, &unk_1ECC42B20, &unk_1DB50F6A0);
        sub_1DB30C06C(v18, *(*(v19 + 64) + 40), &unk_1ECC42B20, &unk_1DB50F6A0);
        swift_continuation_throwingResume();
      }

      else
      {
        v34 = v38[1];

        sub_1DB2FEA0C(&v39, v35);
        v31 = v36;
        v20 = v37;
        v30 = __swift_project_boxed_opaque_existential_1(v35, v36);
        v21 = v32;
        sub_1DB30C4B8(v33, v32, &unk_1ECC42B20, &unk_1DB50F6A0);
        v22 = (*(v29 + 80) + 32) & ~*(v29 + 80);
        v23 = swift_allocObject();
        *(v23 + 16) = v19;
        *(v23 + 24) = v34;
        sub_1DB30C06C(v21, v23 + v22, &unk_1ECC42B20, &unk_1DB50F6A0);
        v24 = v20;
        v25 = *(v20 + 8);

        v25(sub_1DB401298, v23, v31, v24);

        v14 = v27;

        __swift_destroy_boxed_opaque_existential_0(v35);
      }

      ++v16;
      sub_1DB30623C(v41, &unk_1ECC42B30, &qword_1DB50F1E0);
      v15 = *(v14 + 16);
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

void sub_1DB3FC300(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
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
  *(v5 + 32) = 1;
  v24 = a1;
  os_unfair_lock_unlock(v8 + 4);
  v10 = v9[2];
  if (v10)
  {
    v11 = 0;
    v12 = (v9 + 4);
    v22 = a2;
    while (v11 < v10)
    {
      sub_1DB30C4B8(v12, v32, a2, a3);
      sub_1DB30C4B8(v32, v29, a2, a3);
      v14 = v29[0];
      if (v31)
      {
        **(*(v29[0] + 64) + 40) = v24;
        v13 = v24;
        swift_continuation_throwingResume();
      }

      else
      {
        v15 = v29[1];

        sub_1DB2FEA0C(&v30, v26);
        v17 = v27;
        v16 = v28;
        __swift_project_boxed_opaque_existential_1(v26, v27);
        v18 = swift_allocObject();
        v18[2] = v14;
        v18[3] = v15;
        v18[4] = v24;
        v19 = *(v16 + 8);
        v20 = v24;

        v21 = v16;
        a2 = v22;
        v19(a5, v18, v17, v21);

        __swift_destroy_boxed_opaque_existential_0(v26);
      }

      ++v11;
      sub_1DB30623C(v32, a2, a3);
      v10 = v9[2];
      v12 += 80;
      if (v11 == v10)
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

uint64_t sub_1DB3FC55C()
{
  sub_1DB50BCF0();
  _s7JetCore15CodeAnyHashableV4hash4intoys6HasherVz_tF_0();
  return sub_1DB50BD30();
}

uint64_t sub_1DB3FC5A0()
{
  sub_1DB50BCF0();
  _s7JetCore15CodeAnyHashableV4hash4intoys6HasherVz_tF_0();
  return sub_1DB50BD30();
}

uint64_t LRUIntentCache.__allocating_init(configuration:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  LRUIntentCache.init(configuration:)(a1);
  return v2;
}

void LRUIntentCache.init(configuration:)(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1DB50B010();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (*a1)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC452E0, qword_1DB51A750);
    v10 = sub_1DB3370CC(&qword_1ECC452E8, &qword_1ECC452E0, qword_1DB51A750);
    *&v18 = v9;
    *(&v18 + 1) = MEMORY[0x1E69E7CC8];
    v21 = v10;
    v19 = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC452F0, &qword_1DB51A798);
    v11 = swift_allocObject();
    *(v11 + 56) = 0;
    sub_1DB2FEA0C(&v18, v11 + 16);
    *(v2 + 16) = v11;
    sub_1DB3FC8F4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45300, &qword_1DB51A7A0);
    v12 = *(v5 + 72);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1DB50F8D0;
    sub_1DB50AFF0();
    sub_1DB50B000();
    *&v18 = v14;
    sub_1DB400F2C(&qword_1ECC45308, MEMORY[0x1E69E80E0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45310, &qword_1DB51A7A8);
    sub_1DB3370CC(&unk_1ECC45318, &qword_1ECC45310, &qword_1DB51A7A8);
    sub_1DB50B240();
    v15 = sub_1DB50B020();
    (*(v5 + 8))(v8, v4);
    type metadata accessor for DispatchSourceMemoryPressureWrapper();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v2 + 24) = v16;
    swift_unknownObjectRetain();
    sub_1DB3FC964();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1DB3FC8F4()
{
  result = qword_1ECC452F8;
  if (!qword_1ECC452F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECC452F8);
  }

  return result;
}

uint64_t sub_1DB3FC964()
{
  v17 = sub_1DB50A400();
  v1 = *(v17 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DB50A440();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 24);
  v11 = *(v10 + 16);
  swift_getObjectType();
  v12 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1DB400F0C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DB3330B0;
  aBlock[3] = &block_descriptor_12;
  v13 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  sub_1DB3FDFE4();
  sub_1DB50B030();
  _Block_release(v13);
  swift_unknownObjectRelease();
  (*(v1 + 8))(v4, v17);
  (*(v6 + 8))(v9, v5);

  v14 = *(v10 + 16);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1DB50B050();
  return swift_unknownObjectRelease();
}

uint64_t LRUIntentCache.deinit()
{
  v1 = v0;
  v2 = *(*(v0 + 24) + 16);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1DB50B040();
  swift_unknownObjectRelease();
  v3 = *(v1 + 16);

  v4 = *(v1 + 24);

  return v1;
}

uint64_t LRUIntentCache.__deallocating_deinit()
{
  v1 = v0;
  v2 = *(*(v0 + 24) + 16);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1DB50B040();
  swift_unknownObjectRelease();
  v3 = *(v1 + 16);

  v4 = *(v1 + 24);

  return MEMORY[0x1EEE6BDC0](v1, 32, 7);
}

uint64_t LRUIntentCache.retrieve<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[35] = a3;
  v4[36] = v3;
  v4[33] = a1;
  v4[34] = a2;
  v5 = sub_1DB50B120();
  v4[37] = v5;
  v6 = *(v5 - 8);
  v4[38] = v6;
  v7 = *(v6 + 64) + 15;
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB3FCDA8, 0, 0);
}

uint64_t sub_1DB3FCDA8()
{
  v1 = v0[36];
  v2 = v0[34];
  v3 = v2[3];
  v4 = __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = *(v3 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  (*(v5 + 16))(v7, v4, v3);
  sub_1DB50B670();
  (*(v5 + 8))(v7, v3);

  v8 = *(v1 + 16);
  *(swift_task_alloc() + 16) = v0 + 20;
  os_unfair_lock_lock(v8 + 14);
  sub_1DB3FD4B8(&v8[4]);
  os_unfair_lock_unlock(v8 + 14);
  v0[41] = v13;

  if (v13)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB3FCFDC, 0, 0);
  }

  else
  {
    (*(*(v0[35] - 8) + 56))(v0[33], 1, 1);
    v10 = v0[39];
    v9 = v0[40];
    sub_1DB3FD52C((v0 + 20));

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1DB3FCFDC()
{
  v1 = v0 + 2;
  v2 = v0[41];
  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_1DB3FD0A8;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1DB308D20(v3);
  sub_1DB30623C(v3, &unk_1ECC45020, &unk_1DB50F700);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB3FD0A8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 336) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1DB3FD438;
  }

  else
  {
    sub_1DB30C200((v1 + 232), (v1 + 200));
    v4 = sub_1DB3FD1D0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB3FD1D0()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[37];
  v4 = v0[38];
  v5 = v0[35];
  v6 = swift_dynamicCast();
  v7 = *(v5 - 8);
  v23 = *(v7 + 56);
  v23(v2, v6 ^ 1u, 1, v5);
  (*(v4 + 16))(v1, v2, v3);
  v8 = (*(v7 + 48))(v1, 1, v5);
  v9 = v0[40];
  v10 = v0[41];
  v12 = v0[38];
  v11 = v0[39];
  v13 = v0[37];
  v14 = v0[35];
  v15 = v0[33];
  if (v8 == 1)
  {
    v16 = *(v12 + 8);
    v16(v0[39], v0[37]);
    v17 = swift_task_alloc();
    *(v17 + 16) = v14;
    *(v17 + 24) = v10;
    requirementFailure(_:file:line:)(sub_1DB40062C, v17, "JetCore/LRUIntentCache.swift", 28, 2, 121);

    v23(v15, 1, 1, v14);
    v16(v9, v13);
  }

  else
  {
    v18 = v0[41];

    (*(v7 + 32))(v15, v11, v14);
    v23(v15, 0, 1, v14);
    (*(v12 + 8))(v9, v13);
  }

  v19 = v0[39];
  v20 = v0[40];
  sub_1DB3FD52C((v0 + 20));

  v21 = v0[1];

  return v21();
}

uint64_t sub_1DB3FD438()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[39];

  sub_1DB3FD52C((v0 + 20));

  v4 = v0[1];
  v5 = v0[42];

  return v4();
}

uint64_t sub_1DB3FD4B8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 40))(v2, v3, v4);
}

uint64_t sub_1DB3FD55C(uint64_t *a1)
{
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD00000000000004ELL, 0x80000001DB52D570);
  v2 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v2);

  MEMORY[0x1E1285C70](0x6C6175746361202CLL, 0xEF203A6570797420);
  v3 = *a1;
  v4 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v4);

  MEMORY[0x1E1285C70](46, 0xE100000000000000);
  return 0;
}

uint64_t LRUIntentCache.store<A>(_:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v7 = *(a5 - 8);
  v6[17] = v7;
  v8 = *(v7 + 64) + 15;
  v6[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB3FD728, 0, 0);
}

uint64_t sub_1DB3FD728()
{
  v1 = v0[16];
  v2 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45328, &unk_1DB51A7C8);
  v3 = swift_allocObject();
  v0[19] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = 0;
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  *(v3 + 56) = 0;
  v6 = v2[3];
  v7 = __swift_project_boxed_opaque_existential_1(v2, v6);
  v8 = *(v6 - 8);
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  (*(v8 + 16))(v10, v7, v6);
  sub_1DB50B670();
  (*(v8 + 8))(v10, v6);

  v11 = *(v1 + 16);
  v12 = swift_task_alloc();
  *(v12 + 16) = v0 + 2;
  *(v12 + 24) = v3;
  os_unfair_lock_lock(v11 + 14);
  sub_1DB400634(&v11[4]);
  v13 = v0[13];
  os_unfair_lock_unlock(v11 + 14);

  v19 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v0[20] = v15;
  *v15 = v0;
  v15[1] = sub_1DB3FD9D0;
  v16 = v0[18];
  v17 = v0[14];

  return v19(v16);
}

uint64_t sub_1DB3FD9D0()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_1DB3FDBCC;
  }

  else
  {
    v3 = sub_1DB3FDAE4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB3FDAE4()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[11];
  v0[10] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 7);
  (*(v3 + 16))(boxed_opaque_existential_0, v1, v4);
  sub_1DB3F8874((v0 + 7));

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  (*(v3 + 32))(v5, v1, v4);
  sub_1DB3FD52C((v0 + 2));

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DB3FDBCC()
{
  v2 = v0[18];
  v1 = v0[19];

  sub_1DB3FD52C((v0 + 2));

  v3 = v0[1];
  v4 = v0[21];

  return v3();
}

uint64_t sub_1DB3FDC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DB400ED4(a2, v10);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v9 = a3;
  v7 = *(v6 + 48);

  return v7(&v9, v10, v5, v6);
}

uint64_t sub_1DB3FDCDC()
{
  v0 = sub_1DB50B010();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(*(result + 24) + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1DB50B090();
    swift_unknownObjectRelease();
    sub_1DB3FDE0C();
    (*(v1 + 8))(v4, v0);
  }

  return result;
}

void sub_1DB3FDE0C()
{
  v1 = v0;
  v2 = sub_1DB50B010();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB50B000();
  sub_1DB400F2C(&qword_1ECC45308, MEMORY[0x1E69E80E0]);
  v7 = sub_1DB50B230();
  v8 = *(v3 + 8);
  v8(v6, v2);
  if (v7 & 1) != 0 || (sub_1DB50AFF0(), v9 = sub_1DB50B230(), v8(v6, v2), (v9))
  {
    sub_1DB50AFF0();
    v10 = sub_1DB50B230();
    v8(v6, v2);
    v11 = *(v1 + 16);
    os_unfair_lock_lock((v11 + 56));
    v12 = *(v11 + 40);
    v13 = *(v11 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v11 + 16, v12);
    (*(v13 + 32))(v10 & 1, v12, v13);
    os_unfair_lock_unlock((v11 + 56));
  }
}

uint64_t sub_1DB3FDFE4()
{
  sub_1DB50A400();
  sub_1DB400F2C(qword_1EE30E380, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45390, &qword_1DB511EF0);
  sub_1DB3370CC(&qword_1EE30E350, &unk_1ECC45390, &qword_1DB511EF0);
  return sub_1DB50B240();
}

uint64_t sub_1DB3FE0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DB30C7A0;

  return LRUIntentCache.retrieve<A>(_:)(a1, a2, a3);
}

uint64_t sub_1DB3FE184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DB306AF4;

  return LRUIntentCache.store<A>(_:operation:)(a1, a2, a3, a4, a5);
}

uint64_t sub_1DB3FE250()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1DB3FE288(uint64_t a1)
{
  sub_1DB30C4B8(v1, v19, &qword_1ECC42700, &unk_1DB50F690);
  v3 = v19[0];
  if (v21)
  {
    sub_1DB30C420(a1, &v16);
    v4 = *(*(v3 + 64) + 40);
    v5 = v18;
    v6 = v17;
    *v4 = v16;
    *(v4 + 16) = v6;
    *(v4 + 32) = v5;
    return swift_continuation_throwingResume();
  }

  else
  {
    v8 = v19[1];

    sub_1DB2FEA0C(&v20, &v16);
    v9 = *(&v17 + 1);
    v10 = v18;
    __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
    sub_1DB30C420(a1, v14);
    v11 = swift_allocObject();
    *(v11 + 16) = v3;
    *(v11 + 24) = v8;
    v12 = v14[1];
    *(v11 + 32) = v14[0];
    *(v11 + 48) = v12;
    *(v11 + 64) = v15;
    v13 = *(v10 + 8);

    v13(sub_1DB401290, v11, v9, v10);

    return __swift_destroy_boxed_opaque_existential_0(&v16);
  }
}

uint64_t sub_1DB3FE454(uint64_t a1)
{
  sub_1DB30C4B8(v1, v13, &qword_1ECC42840, &qword_1DB5142D0);
  v3 = v13[0];
  if (v15)
  {
    **(*(v13[0] + 64) + 40) = a1;

    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v13[1];

    sub_1DB2FEA0C(&v14, v10);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v5;
    v8[4] = a1;
    v9 = *(v7 + 8);

    v9(sub_1DB400AB4, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_0(v10);
  }
}

uint64_t sub_1DB3FE5A4(uint64_t a1)
{
  sub_1DB30C4B8(v1, v14, &qword_1ECC42950, &unk_1DB50F730);
  v3 = v14[0];
  if (v16)
  {
    sub_1DB30BE90(a1, &v11);
    sub_1DB2FEA0C(&v11, *(*(v3 + 64) + 40));
    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v14[1];

    sub_1DB2FEA0C(&v15, &v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_1(&v11, v12);
    sub_1DB30BE90(a1, v10);
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v5;
    sub_1DB2FEA0C(v10, v8 + 32);
    v9 = *(v7 + 8);

    v9(sub_1DB401290, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_0(&v11);
  }
}

uint64_t sub_1DB3FE700(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1DB30C4B8(v3, v17, &qword_1ECC429C0, &qword_1DB518FD0);
  v6 = v17[0];
  if (v19)
  {
    v7 = *(*(v17[0] + 64) + 40);
    *v7 = a1;
    v7[1] = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    v9 = v17[1];

    sub_1DB2FEA0C(&v18, v14);
    v10 = v15;
    v11 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v12 = swift_allocObject();
    v12[2] = v6;
    v12[3] = v9;
    v12[4] = a1;
    v12[5] = a2;
    v13 = *(v11 + 8);

    v13(sub_1DB4012B4, v12, v10, v11);

    return __swift_destroy_boxed_opaque_existential_0(v14);
  }
}

uint64_t sub_1DB3FE868(uint64_t a1)
{
  sub_1DB30C4B8(v1, v13, &qword_1ECC429D0, &unk_1DB50F740);
  v3 = v13[0];
  if (v15)
  {
    **(*(v13[0] + 64) + 40) = a1;
    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v13[1];

    sub_1DB2FEA0C(&v14, v10);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v5;
    v8[4] = a1;
    v9 = *(v7 + 8);

    v9(sub_1DB400AB8, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_0(v10);
  }
}

uint64_t sub_1DB3FE9A0()
{
  sub_1DB30C4B8(v0, v11, &qword_1ECC429E0, &qword_1DB50F498);
  v1 = v11[0];
  if (v13)
  {
    return swift_continuation_throwingResume();
  }

  v3 = v11[1];

  sub_1DB2FEA0C(&v12, v8);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;
  v7 = *(v5 + 8);

  v7(sub_1DB4012B8, v6, v4, v5);

  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t sub_1DB3FEAB0(uint64_t a1)
{
  sub_1DB30C4B8(v1, v14, &unk_1ECC45020, &unk_1DB50F700);
  v3 = v14[0];
  if (v16)
  {
    sub_1DB300B14(a1, v11);
    sub_1DB30C200(v11, *(*(v3 + 64) + 40));
    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v14[1];

    sub_1DB2FEA0C(&v15, v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    sub_1DB300B14(a1, v10);
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v5;
    sub_1DB30C200(v10, (v8 + 32));
    v9 = *(v7 + 8);

    v9(sub_1DB401290, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_0(v11);
  }
}

uint64_t sub_1DB3FEC0C(char a1)
{
  sub_1DB30C4B8(v1, v13, &unk_1ECC44FD0, &qword_1DB50F1D0);
  v3 = v13[0];
  if (v15)
  {
    **(*(v13[0] + 64) + 40) = a1 & 1;
    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v13[1];

    sub_1DB2FEA0C(&v14, v10);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v5;
    *(v8 + 32) = a1 & 1;
    v9 = *(v7 + 8);

    v9(sub_1DB400718, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_0(v10);
  }
}

uint64_t sub_1DB3FED4C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for InMemoryJetPackResourceBundle();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB30C4B8(v2, v20, qword_1ECC453B0, &qword_1DB50F720);
  v8 = v20[0];
  if (v22)
  {
    sub_1DB400F8C(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InMemoryJetPackResourceBundle);
    sub_1DB30C210(&v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *(*(v8 + 64) + 40), type metadata accessor for InMemoryJetPackResourceBundle);
    return swift_continuation_throwingResume();
  }

  else
  {
    v10 = v20[1];

    sub_1DB2FEA0C(&v21, v17);
    v11 = v18;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    sub_1DB400F8C(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InMemoryJetPackResourceBundle);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v10;
    sub_1DB30C210(v7, v14 + v13, type metadata accessor for InMemoryJetPackResourceBundle);
    v15 = *(v12 + 8);

    v15(sub_1DB400FF4, v14, v11, v12);

    return __swift_destroy_boxed_opaque_existential_0(v17);
  }
}

uint64_t sub_1DB3FEF68(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DiskJetPackResourceBundle();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB30C4B8(v2, v20, &unk_1ECC453A0, &unk_1DB50F710);
  v8 = v20[0];
  if (v22)
  {
    sub_1DB400F8C(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DiskJetPackResourceBundle);
    sub_1DB30C210(&v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *(*(v8 + 64) + 40), type metadata accessor for DiskJetPackResourceBundle);
    return swift_continuation_throwingResume();
  }

  else
  {
    v10 = v20[1];

    sub_1DB2FEA0C(&v21, v17);
    v11 = v18;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    sub_1DB400F8C(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DiskJetPackResourceBundle);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v10;
    sub_1DB30C210(v7, v14 + v13, type metadata accessor for DiskJetPackResourceBundle);
    v15 = *(v12 + 8);

    v15(sub_1DB400F74, v14, v11, v12);

    return __swift_destroy_boxed_opaque_existential_0(v17);
  }
}

uint64_t sub_1DB3FF1E4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  sub_1DB30C4B8(v7, v19, a2, a3);
  v9 = v19[0];
  if (v21)
  {
    **(*(v19[0] + 64) + 40) = a1;
    swift_unknownObjectRetain();
    return swift_continuation_throwingResume();
  }

  else
  {
    v11 = v19[1];

    sub_1DB2FEA0C(&v20, v16);
    v12 = v17;
    v13 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v14 = swift_allocObject();
    v14[2] = v9;
    v14[3] = v11;
    v14[4] = a1;
    v15 = *(v13 + 8);

    swift_unknownObjectRetain();
    v15(a5, v14, v12, v13);

    return __swift_destroy_boxed_opaque_existential_0(v16);
  }
}

uint64_t sub_1DB3FF324(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  sub_1DB30C4B8(v4, v21, &qword_1ECC428A0, &unk_1DB50F6E0);
  v8 = v21[0];
  if (v23)
  {
    sub_1DB30C1AC(a1, a2);
    v9 = *(*(v8 + 64) + 40);
    *v9 = a1;
    v9[1] = a2;
    v9[2] = a3;
    v10 = a3;
    return swift_continuation_throwingResume();
  }

  else
  {
    v12 = v21[1];

    sub_1DB2FEA0C(&v22, v18);
    v13 = v19;
    v14 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v15 = swift_allocObject();
    v15[2] = v8;
    v15[3] = v12;
    v15[4] = a1;
    v15[5] = a2;
    v15[6] = a3;
    v16 = *(v14 + 8);

    sub_1DB30C1AC(a1, a2);
    v17 = a3;
    v16(sub_1DB400DA8, v15, v13, v14);

    return __swift_destroy_boxed_opaque_existential_0(v18);
  }
}

uint64_t sub_1DB3FF498(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45380, &qword_1DB51BBA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v18[-1] - v7;
  sub_1DB30C4B8(v2, v21, &qword_1ECC42870, &unk_1DB518F90);
  v9 = v21[0];
  if (v23)
  {
    sub_1DB30C4B8(a1, v8, &unk_1ECC45380, &qword_1DB51BBA0);
    sub_1DB30C06C(v8, *(*(v9 + 64) + 40), &unk_1ECC45380, &qword_1DB51BBA0);
    return swift_continuation_throwingResume();
  }

  else
  {
    v11 = v21[1];

    sub_1DB2FEA0C(&v22, v18);
    v12 = v19;
    v13 = v20;
    v17 = __swift_project_boxed_opaque_existential_1(v18, v19);
    sub_1DB30C4B8(a1, v8, &unk_1ECC45380, &qword_1DB51BBA0);
    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = v9;
    *(v15 + 24) = v11;
    sub_1DB30C06C(v8, v15 + v14, &unk_1ECC45380, &qword_1DB51BBA0);
    v16 = *(v13 + 8);

    v16(sub_1DB400BF0, v15, v12, v13);

    return __swift_destroy_boxed_opaque_existential_0(v18);
  }
}

uint64_t sub_1DB3FF6F8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  sub_1DB30C4B8(v7, v19, a2, a3);
  v9 = v19[0];
  if (v21)
  {
    **(*(v19[0] + 64) + 40) = a1;

    return swift_continuation_throwingResume();
  }

  else
  {
    v11 = v19[1];

    sub_1DB2FEA0C(&v20, v16);
    v12 = v17;
    v13 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v14 = swift_allocObject();
    v14[2] = v9;
    v14[3] = v11;
    v14[4] = a1;
    v15 = *(v13 + 8);

    v15(a5, v14, v12, v13);

    return __swift_destroy_boxed_opaque_existential_0(v16);
  }
}

uint64_t sub_1DB3FF868(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1DB30C4B8(v5, v20, a2, a3);
  v8 = v20[0];
  if (v22)
  {
    **(*(v20[0] + 64) + 40) = a1;
    v9 = a1;
    return swift_continuation_throwingResume();
  }

  else
  {
    v11 = v20[1];

    sub_1DB2FEA0C(&v21, v17);
    v12 = v18;
    v13 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v14 = swift_allocObject();
    v14[2] = v8;
    v14[3] = v11;
    v14[4] = a1;
    v15 = *(v13 + 8);

    v16 = a1;
    v15(a5, v14, v12, v13);

    return __swift_destroy_boxed_opaque_existential_0(v17);
  }
}

uint64_t sub_1DB3FF9CC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v18[-1] - v7;
  sub_1DB30C4B8(v2, v21, &unk_1ECC42B30, &qword_1DB50F1E0);
  v9 = v21[0];
  if (v23)
  {
    sub_1DB30C4B8(a1, v8, &unk_1ECC42B20, &unk_1DB50F6A0);
    sub_1DB30C06C(v8, *(*(v9 + 64) + 40), &unk_1ECC42B20, &unk_1DB50F6A0);
    return swift_continuation_throwingResume();
  }

  else
  {
    v11 = v21[1];

    sub_1DB2FEA0C(&v22, v18);
    v12 = v19;
    v13 = v20;
    v17 = __swift_project_boxed_opaque_existential_1(v18, v19);
    sub_1DB30C4B8(a1, v8, &unk_1ECC42B20, &unk_1DB50F6A0);
    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = v9;
    *(v15 + 24) = v11;
    sub_1DB30C06C(v8, v15 + v14, &unk_1ECC42B20, &unk_1DB50F6A0);
    v16 = *(v13 + 8);

    v16(sub_1DB40071C, v15, v12, v13);

    return __swift_destroy_boxed_opaque_existential_0(v18);
  }
}

uint64_t sub_1DB3FFBFC(uint64_t a1)
{
  sub_1DB30C4B8(v1, v24, &unk_1ECC42B90, &qword_1DB50F290);
  v3 = v24[0];
  if (v26)
  {
    sub_1DB400AF8(a1, &v19);
    v4 = *(*(v3 + 64) + 40);
    *v4 = v19;
    v6 = v22;
    v5 = v23;
    v7 = v21;
    v4[1] = v20;
    v4[2] = v7;
    v4[3] = v6;
    v4[4] = v5;
    return swift_continuation_throwingResume();
  }

  else
  {
    v9 = v24[1];

    sub_1DB2FEA0C(&v25, v16);
    v10 = v17;
    v11 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    sub_1DB400AF8(a1, &v19);
    v12 = swift_allocObject();
    *(v12 + 16) = v3;
    *(v12 + 24) = v9;
    v13 = v22;
    *(v12 + 64) = v21;
    *(v12 + 80) = v13;
    *(v12 + 96) = v23;
    v14 = v20;
    *(v12 + 32) = v19;
    *(v12 + 48) = v14;
    v15 = *(v11 + 8);

    v15(sub_1DB400A84, v12, v10, v11);

    return __swift_destroy_boxed_opaque_existential_0(v16);
  }
}

uint64_t sub_1DB3FFD7C(uint64_t a1)
{
  sub_1DB30C4B8(v1, v14, &unk_1ECC42BA0, &qword_1DB50F2A0);
  v3 = v14[0];
  if (v16)
  {
    sub_1DB30BE90(a1, &v11);
    sub_1DB2FEA0C(&v11, *(*(v3 + 64) + 40));
    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v14[1];

    sub_1DB2FEA0C(&v15, &v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_1(&v11, v12);
    sub_1DB30BE90(a1, v10);
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v5;
    sub_1DB2FEA0C(v10, v8 + 32);
    v9 = *(v7 + 8);

    v9(sub_1DB400A84, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_0(&v11);
  }
}

uint64_t sub_1DB3FFF38(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for JetPackAsset(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB30C4B8(v2, v20, &unk_1ECC42B50, &qword_1DB50F240);
  v8 = v20[0];
  if (v22)
  {
    sub_1DB400F8C(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for JetPackAsset);
    sub_1DB30C210(&v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *(*(v8 + 64) + 40), type metadata accessor for JetPackAsset);
    return swift_continuation_throwingResume();
  }

  else
  {
    v10 = v20[1];

    sub_1DB2FEA0C(&v21, v17);
    v11 = v18;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    sub_1DB400F8C(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for JetPackAsset);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v10;
    sub_1DB30C210(v7, v14 + v13, type metadata accessor for JetPackAsset);
    v15 = *(v12 + 8);

    v15(sub_1DB4008B8, v14, v11, v12);

    return __swift_destroy_boxed_opaque_existential_0(v17);
  }
}

uint64_t sub_1DB400154(uint64_t a1)
{
  sub_1DB30C4B8(v1, v22, &unk_1ECC42B70, &qword_1DB50F260);
  v3 = v22[0];
  if (v24)
  {
    sub_1DB3C17BC(a1, &v18);
    v4 = *(*(v3 + 64) + 40);
    v5 = v18;
    v6 = v19;
    v7 = v20;
    *(v4 + 48) = v21;
    *(v4 + 16) = v6;
    *(v4 + 32) = v7;
    *v4 = v5;
    return swift_continuation_throwingResume();
  }

  else
  {
    v9 = v22[1];

    sub_1DB2FEA0C(&v23, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    sub_1DB3C17BC(a1, &v18);
    v12 = swift_allocObject();
    *(v12 + 16) = v3;
    *(v12 + 24) = v9;
    v13 = v19;
    *(v12 + 32) = v18;
    *(v12 + 48) = v13;
    *(v12 + 64) = v20;
    *(v12 + 80) = v21;
    v14 = *(v11 + 8);

    v14(sub_1DB400A84, v12, v10, v11);

    return __swift_destroy_boxed_opaque_existential_0(v15);
  }
}

uint64_t sub_1DB4002DC(uint64_t a1)
{
  sub_1DB30C4B8(v1, v22, &unk_1ECC42B60, &qword_1DB50F250);
  v3 = v22[0];
  if (v24)
  {
    sub_1DB3BEB60(a1, &v18);
    v4 = *(*(v3 + 64) + 40);
    v5 = v18;
    v6 = v19;
    v7 = v20;
    *(v4 + 48) = v21;
    *(v4 + 16) = v6;
    *(v4 + 32) = v7;
    *v4 = v5;
    return swift_continuation_throwingResume();
  }

  else
  {
    v9 = v22[1];

    sub_1DB2FEA0C(&v23, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    sub_1DB3BEB60(a1, &v18);
    v12 = swift_allocObject();
    *(v12 + 16) = v3;
    *(v12 + 24) = v9;
    v13 = v19;
    *(v12 + 32) = v18;
    *(v12 + 48) = v13;
    *(v12 + 64) = v20;
    *(v12 + 80) = v21;
    v14 = *(v11 + 8);

    v14(sub_1DB401290, v12, v10, v11);

    return __swift_destroy_boxed_opaque_existential_0(v15);
  }
}

uint64_t sub_1DB4004F4(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  sub_1DB30C4B8(v7, v21, a2, a3);
  v9 = v21[0];
  if (v23)
  {
    **(*(v21[0] + 64) + 40) = a1;
    v10 = a1;
    return swift_continuation_throwingResume();
  }

  else
  {
    v12 = v21[1];

    sub_1DB2FEA0C(&v22, v18);
    v13 = v19;
    v14 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v15 = swift_allocObject();
    v15[2] = v9;
    v15[3] = v12;
    v15[4] = a1;
    v16 = *(v14 + 8);
    v17 = a1;

    v16(a5, v15, v13, v14);

    return __swift_destroy_boxed_opaque_existential_0(v18);
  }
}

unint64_t sub_1DB4006C4()
{
  result = qword_1ECC45338;
  if (!qword_1ECC45338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45338);
  }

  return result;
}

uint64_t objectdestroy_30Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = sub_1DB509CA0();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DB400850()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v4 = *(v0 + 32);
  return v2(&v4);
}

uint64_t sub_1DB400890()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroy_62Tm()
{
  v1 = (type metadata accessor for JetPackAsset(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0((v0 + v3));
  v6 = v0 + v3 + v1[7];
  v7 = *(v6 + 8);

  v8 = *(v6 + 24);

  v9 = type metadata accessor for JetPackAsset.Metadata(0);
  v10 = v9[6];
  v11 = sub_1DB509DD0();
  (*(*(v11 - 8) + 8))(v6 + v10, v11);
  v12 = *(v6 + v9[8] + 8);

  v13 = *(v6 + v9[9] + 8);

  v14 = *(v0 + v3 + v1[9] + 8);

  v15 = *(v0 + v3 + v1[13] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_69Tm()
{
  v1 = v0[3];

  sub_1DB3BEB98(v0[4], v0[5]);
  if (v0[9])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 6);
  }

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1DB400AB8()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[4];
  return v2(&v4);
}

uint64_t objectdestroy_104Tm()
{
  v1 = v0[3];

  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 4);
    __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t objectdestroy_111Tm(uint64_t a1)
{
  v3 = *(v1 + 24);

  __swift_destroy_boxed_opaque_existential_0((v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t objectdestroy_132Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45380, &qword_1DB51BBA0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 24);

  v6 = sub_1DB509CA0();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DB400D44(uint64_t *a1, uint64_t *a2)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v4 = *(v2 + 24);
  return (*(v2 + 16))(v2 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));
}

uint64_t objectdestroy_153Tm()
{
  v1 = *(v0 + 24);

  sub_1DB30C158(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DB400DF4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = v3;
  return v2(&v5);
}

void sub_1DB400E3C(void *a1, unsigned __int8 a2, void (*a3)(void))
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

uint64_t objectdestroyTm_1(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DB400F2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DB400F8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_180Tm(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = (a1(0) - 8);
  v5 = *(*v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(*v4 + 64);
  v8 = *(v2 + 24);

  v9 = *(v2 + v6);

  a2(*(v2 + v6 + 8));
  v10 = v4[8];
  v11 = sub_1DB509CA0();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v2 + v6 + v10, 1, v11))
  {
    (*(v12 + 8))(v2 + v6 + v10, v11);
  }

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1DB401154(uint64_t (*a1)(void))
{
  v2 = *(a1(0) - 8);
  v3 = *(v1 + 24);
  return (*(v1 + 16))(v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)));
}

uint64_t objectdestroy_197Tm()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DB401210()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v4 = *(v0 + 32);
  return v2(&v4);
}

uint64_t objectdestroy_33Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t _CodeByKind_KeyedBy.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t _CodeByKind_KeyedBy.description.getter()
{
  swift_getAssociatedTypeWitness();
  sub_1DB50A540();
  swift_getWitnessTable();
  sub_1DB50BA10();
  return 0;
}

uint64_t _CodeByKind_KeyedBy.init(from:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1DB30BE90(a1, v15);
  type metadata accessor for CodeByKind();
  swift_getWitnessTable();
  v10 = sub_1DB50A580();
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v14[1] = a5;
    MEMORY[0x1EEE9AC00](v10);
    v14[2] = v11;
    KeyPath = swift_getKeyPath();
    v16 = v14;
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getAssociatedTypeWitness();
    a6 = sub_1DB50A520();

    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return a6;
}

uint64_t _CodeByKind_KeyedBy.encode(to:)()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for CodeByKind();
  sub_1DB50A520();
  swift_getWitnessTable();
  sub_1DB50A550();
}

uint64_t sub_1DB4016F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return CodeByKind.init(wrappedValue:)(v8, a2);
}

uint64_t sub_1DB4017EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  return sub_1DB4016F0(a1, a2);
}

uint64_t sub_1DB401810(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[6];
  v6 = a1[7];
  return _CodeByKind_KeyedBy.description.getter();
}

uint64_t sub_1DB401824@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a2[7];
  result = _CodeByKind_KeyedBy.init(from:)(a1, a2[2], a2[3], a2[4], a2[5], a2[6]);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1DB401860(uint64_t a1, void *a2)
{
  v3 = *v2;
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  return _CodeByKind_KeyedBy.encode(to:)();
}

uint64_t _CodeByKind_KeyedBy<>.init(_partiallyFrom:)(uint64_t *a1)
{
  sub_1DB30BE90(a1, v6);
  v2 = type metadata accessor for CodeByKind();
  WitnessTable = swift_getWitnessTable();
  Dictionary<>.init(_partiallyFrom:)(v6, v2, WitnessTable);
  swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  v4 = sub_1DB50A520();

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

uint64_t sub_1DB4019D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 56);
  result = _CodeByKind_KeyedBy<>.init(_partiallyFrom:)(a1);
  *a3 = result;
  return result;
}

uint64_t _CodeByKind_KeyedBy<>._partiallyEncode(to:)(void *a1)
{
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for CodeByKind();
  v3 = sub_1DB50A520();
  WitnessTable = swift_getWitnessTable();
  Dictionary<>._partiallyEncode(to:)(a1, v3, v2, WitnessTable);
}

uint64_t sub_1DB401B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return CodeByKind.init(wrappedValue:)(v8, a2);
}

uint64_t sub_1DB401C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1DB401B00(a1, a2);
}

uint64_t sub_1DB401C1C(void *a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a2 + 24);
  v5 = *(a2 + 56);
  return _CodeByKind_KeyedBy<>._partiallyEncode(to:)(a1);
}

uint64_t static _CodeByKind_KeyedBy<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return MEMORY[0x1EEE68930](a1, a2, a3, AssociatedTypeWitness, a7, a9);
}

uint64_t _CodeByKind_KeyedBy<>.hash(into:)()
{
  swift_getAssociatedTypeWitness();

  return sub_1DB50A560();
}

uint64_t _CodeByKind_KeyedBy<>.hashValue.getter()
{
  sub_1DB50BCF0();
  swift_getAssociatedTypeWitness();
  sub_1DB50A560();
  return sub_1DB50BD30();
}

uint64_t sub_1DB401E24(void *a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *v2;
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[6];
  v8 = a1[7];
  return _CodeByKind_KeyedBy<>.hashValue.getter();
}

uint64_t sub_1DB401E3C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *v3;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[6];
  v9 = a2[7];
  return _CodeByKind_KeyedBy<>.hash(into:)();
}

uint64_t sub_1DB401E74(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  sub_1DB50BCF0();
  v6 = *v3;
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[6];
  v10 = a2[7];
  _CodeByKind_KeyedBy<>.hash(into:)();
  return sub_1DB50BD30();
}

uint64_t sub_1DB401F18()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t static StaticIntent._unwrapData<A>(of:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v27 = a4;
  v7 = type metadata accessor for StaticIntent();
  v8 = sub_1DB50B120();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  v13 = *(v7 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - v17;
  (*(a3 + 40))(v29, a2, a3, v16);
  v28 = a1;
  swift_getExtendedExistentialTypeMetadata();
  v19 = swift_dynamicCast();
  v20 = *(v13 + 56);
  if (v19)
  {
    v20(v12, 0, 1, v7);
    (*(v13 + 32))(v18, v12, v7);
    v21 = *(a1 - 8);
    v22 = v27;
    (*(v21 + 32))(v27, v18, a1);
    v23 = 0;
    v24 = v22;
  }

  else
  {
    v23 = 1;
    v20(v12, 1, 1, v7);
    (*(v9 + 8))(v12, v8);
    v21 = *(a1 - 8);
    v24 = v27;
  }

  return (*(v21 + 56))(v24, v23, 1, a1);
}

uint64_t sub_1DB402290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DB402304(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1DB402370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DB4023E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_1DB402450@<W0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + 16);
  result = sub_1DB2FA5E4();
  *a3 = result;
  return result;
}

BOOL sub_1DB4024B8@<W0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_1DB2FA5E4();
  *a2 = result;
  return result;
}

uint64_t sub_1DB4024E8@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_1DB34AABC();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DB402518(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DB40256C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t static StaticIntent._unwrapData<A>(of:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v33 = a2;
  v34 = a5;
  v31 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1DB50B120();
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v29 - v10;
  v11 = type metadata accessor for StaticIntent();
  v12 = sub_1DB50B120();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - v15;
  v17 = *(v11 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v29 - v21;
  (*(a4 + 40))(v36, v33, a4, v20);
  v35 = a1;
  swift_getExtendedExistentialTypeMetadata();
  v23 = swift_dynamicCast();
  v24 = *(v17 + 56);
  if (v23)
  {
    v25 = v34;
    v24(v16, 0, 1, v11);
    (*(v17 + 32))(v22, v16, v11);
    v26 = v32;
    static Continuous._unwrapOnlyElement<A>(of:)(v22, AssociatedTypeWitness, a1, v32);
    (*(v17 + 8))(v22, v11);
    v27 = *(AssociatedTypeWitness - 8);
    if ((*(v27 + 48))(v26, 1, AssociatedTypeWitness) == 1)
    {
      (*(v29 + 8))(v26, v30);
      return (*(v27 + 56))(v25, 1, 1, AssociatedTypeWitness);
    }

    else
    {
      (*(v27 + 32))(v25, v26, AssociatedTypeWitness);
      return (*(v27 + 56))(v25, 0, 1, AssociatedTypeWitness);
    }
  }

  else
  {
    v24(v16, 1, 1, v11);
    (*(v13 + 8))(v16, v12);
    return (*(*(AssociatedTypeWitness - 8) + 56))(v34, 1, 1, AssociatedTypeWitness);
  }
}

uint64_t StaticIntent<>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  v49 = a4;
  v48 = *(a2 - 8);
  v7 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v51 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v44 - v10;
  type metadata accessor for StaticIntent.CodingKeys();
  swift_getWitnessTable();
  v11 = sub_1DB50B7C0();
  v52 = *(v11 - 8);
  v12 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v44 - v13;
  v14 = type metadata accessor for Result();
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v44 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v44 - v23;
  v47 = type metadata accessor for StaticIntent();
  v46 = *(v47 - 8);
  v25 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v45 = &v44 - v26;
  v53 = a3;
  v54 = a2;
  v58 = a2;
  v59 = a3;
  v60 = v6;
  Result.init(trying:)(sub_1DB40307C, v24);
  v27 = v15[2];
  v27(v21, v24, v14);
  v57 = v21;
  v62 = v14;
  v28 = v55;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    goto LABEL_6;
  }

  v44 = v6;
  v27(v18, v57, v62);
  v29 = v52;
  (*(v52 + 32))(v56, v18, v11);
  if ((sub_1DB50B7B0() & 1) == 0)
  {
    (*(v29 + 8))(v56, v11);
    v6 = v44;
LABEL_6:
    v34 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_1DB50BDD0();
    if (v28)
    {
      v35 = v15[1];
      v36 = v62;
      v35(v24, v62);
      v35(v57, v36);
      return __swift_destroy_boxed_opaque_existential_0(v6);
    }

    __swift_project_boxed_opaque_existential_1(v61, v61[3]);
    v37 = v51;
    v38 = v54;
    sub_1DB50BA80();
    v40 = v15[1];
    v41 = v62;
    v40(v24, v62);
    v42 = v45;
    (*(v48 + 32))(v45, v37, v38);
    __swift_destroy_boxed_opaque_existential_0(v61);
LABEL_11:
    v40(v57, v41);
    (*(v46 + 32))(v49, v42, v47);
    return __swift_destroy_boxed_opaque_existential_0(v6);
  }

  v30 = v50;
  v31 = v54;
  sub_1DB50B780();
  if (!v28)
  {
    (*(v29 + 8))(v56, v11);
    v40 = v15[1];
    v43 = v30;
    v41 = v62;
    v40(v24, v62);
    v42 = v45;
    (*(v48 + 32))(v45, v43, v31);
    v6 = v44;
    goto LABEL_11;
  }

  (*(v29 + 8))(v56, v11);
  v32 = v15[1];
  v33 = v62;
  v32(v24, v62);
  v6 = v44;
  v32(v57, v33);
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t sub_1DB402FE4(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for StaticIntent.CodingKeys();
  swift_getWitnessTable();
  return sub_1DB50BDF0();
}

uint64_t sub_1DB40307C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1DB402FE4(*(v0 + 32));
}

uint64_t StaticIntent<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v12[1] = a3;
  v4 = *(a2 + 16);
  type metadata accessor for StaticIntent.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1DB50B8C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE40();
  sub_1DB50B8A0();
  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticIntent<>.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v22 = a4;
  v21 = *(a2 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  v15 = *v14;
  sub_1DB330D60(v16, v23);
  if (v24)
  {
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v17 = sub_1DB40879C();
    __swift_destroy_boxed_opaque_existential_0(v23);
    if (v17)
    {
      v18 = JSONObject.subscript.getter(0x6174616424, 0xE500000000000000, v23);
      v25 = v15;
      (*(a3 + 8))(v23, &v25, a2, a3, v18);
      result = sub_1DB3151CC(a1);
      if (v4)
      {
        return result;
      }

      return (*(v21 + 32))(v22, v13, a2);
    }
  }

  else
  {
    sub_1DB330DD0(v23);
  }

  sub_1DB3171C0(a1, v23);
  v25 = v15;
  (*(a3 + 8))(v23, &v25, a2, a3);
  result = sub_1DB3151CC(a1);
  if (v4)
  {
    return result;
  }

  v13 = v10;
  return (*(v21 + 32))(v22, v13, a2);
}

uint64_t sub_1DB4034B8(int a1, void *__src)
{
  sub_1DB4036F0(__src);
  if (qword_1ECC42228 != -1)
  {
    swift_once();
  }

  v3 = qword_1ECC466F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB50EE90;
  v20 = sub_1DB301BC0(0, 21, 0, MEMORY[0x1E69E7CC0]);
  v5._object = 0x80000001DB52D5F0;
  v5._countAndFlagsBits = 0xD000000000000014;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  v19[3] = &type metadata for OperationCheckpoint;
  v19[0] = swift_allocObject();
  memcpy((v19[0] + 16), __src, 0x190uLL);
  sub_1DB301CDC(v19, v15);
  v16 = 0u;
  v17 = 0u;
  sub_1DB40390C(__src, v14);
  sub_1DB301D4C(v15, &v16);
  v18 = 1;
  v6 = v20;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1DB301BC0(0, *(v6 + 2) + 1, 1, v6);
    v20 = v6;
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1DB301BC0((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v9 = &v6[40 * v8];
  v10 = v16;
  v11 = v17;
  v9[64] = v18;
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  v20 = v6;
  sub_1DB30623C(v19, &qword_1ECC426B0, &qword_1DB50EEB0);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  *(v4 + 32) = v20;
  v14[0] = v3;
  LOBYTE(v16) = 3;
  OSLogger.log(contentsOf:withLevel:)(v4, &v16);
}

uint64_t sub_1DB4036F0(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = *v1;
  v4 = *(v1 + 8);
  sub_1DB40390C(__src, v9);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1DB3A6D2C(v3);
  }

  memcpy(__srca, __dst, sizeof(__srca));
  result = nullsub_8(__srca);
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v4 >= v3[2])
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = &v3[50 * v4];
  memcpy(v9, v6 + 4, sizeof(v9));
  memcpy(v6 + 4, __srca, 0x190uLL);
  result = sub_1DB30623C(v9, &qword_1ECC42980, &qword_1DB50F438);
  *v1 = v3;
  if (v3[2] == v4 + 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4 + 1;
  }

  *(v1 + 8) = v7;
  return result;
}

void sub_1DB403808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, unint64_t a48)
{
  v49 = a48 >> 61;

  if ((a48 >> 61) > 4)
  {
    if (v49 == 7)
    {
    }

    else
    {
      if (v49 == 6)
      {
      }
    }
  }
}

uint64_t JSONObject.date.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1DB330D60(v1, v5);
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(v5, v6);
    sub_1DB408C04(a1);
    return __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
    sub_1DB330DD0(v5);
    v4 = sub_1DB509DD0();
    return (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
  }
}

uint64_t DiscardOnError.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_1DB50BA00();
  return 0;
}

uint64_t sub_1DB403C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return static DiscardOnError<A>.== infix(_:_:)();
}

uint64_t DiscardOnError<A>.hashValue.getter(uint64_t a1)
{
  sub_1DB50BCF0();
  v2 = *(a1 + 16);
  sub_1DB50A5D0();
  return sub_1DB50BD30();
}

uint64_t sub_1DB403CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1DB50BCF0();
  DiscardOnError<A>.hash(into:)(v6, a2);
  return sub_1DB50BD30();
}

uint64_t DiscardOnError<A>.init(from:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1DB30BE90(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44ED0, &unk_1DB518DC0);
  if (swift_dynamicCast())
  {
    sub_1DB34A204(v7);
  }

  else
  {
    DiscardOnErrorLogUnsupportedDecoderError()();
  }

  sub_1DB30BE90(a1, v7);
  (*(a3 + 8))(v7, a2, a3);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

Swift::Void __swiftcall DiscardOnErrorLogUnsupportedDecoderError()()
{
  if (qword_1ECC42110 != -1)
  {
    swift_once();
  }

  if ([qword_1ECC45538 compareWithValue:0 andExchangeWithValue:1])
  {
    if (qword_1ECC42218 != -1)
    {
      swift_once();
    }

    v0 = qword_1ECC466E8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1DB511620;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1DB50EE90;
    v3 = MEMORY[0x1E69E6158];
    v17 = MEMORY[0x1E69E6158];
    v14 = 0xD00000000000004FLL;
    v15 = 0x80000001DB52D610;
    *(v2 + 48) = 0u;
    *(v2 + 32) = 0u;
    sub_1DB301D4C(&v14, v2 + 32);
    *(v2 + 64) = 0;
    *(v1 + 32) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1DB50EE90;
    v17 = v3;
    v14 = 0xD000000000000051;
    v15 = 0x80000001DB52D660;
    *(v4 + 48) = 0u;
    *(v4 + 32) = 0u;
    sub_1DB301D4C(&v14, v4 + 32);
    *(v4 + 64) = 0;
    *(v1 + 40) = v4;
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1DB50EE90;
    v17 = v3;
    v14 = 0xD000000000000048;
    v15 = 0x80000001DB52D6C0;
    *(v5 + 48) = 0u;
    *(v5 + 32) = 0u;
    sub_1DB301D4C(&v14, v5 + 32);
    *(v5 + 64) = 0;
    *(v1 + 48) = v5;
    v6 = sub_1DB50AF40();
    if (os_log_type_enabled(v0, v6))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v7 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v7[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v7 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v9 = swift_allocObject();
      *(v9 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      v14 = v1;
      v15 = sub_1DB31485C;
      v16 = v9;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v10 = sub_1DB50A5E0();
      v12 = v11;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1DB50EE90;
      *(v13 + 56) = v3;
      *(v13 + 64) = sub_1DB31494C();
      *(v13 + 32) = v10;
      *(v13 + 40) = v12;
      sub_1DB50A1E0();
    }
  }
}

id sub_1DB404204()
{
  result = [objc_allocWithZone(_JEAtomicFlag) initWithInitialValue_];
  qword_1ECC45538 = result;
  return result;
}

uint64_t Models.DeepLinkDestination.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(0x6575676573, 0xE500000000000000, v8);
  v10 = v6;
  static AnyActionTypes.makeInstance(byDeserializing:using:)(v8, &v10, v9);
  sub_1DB3151CC(a1);
  sub_1DB3151CC(v8);

  if (!v3)
  {
    return sub_1DB30C7A8(v9, a3);
  }

  return result;
}

uint64_t sub_1DB404360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6575676573 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB50BA30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB4043E4(uint64_t a1)
{
  v2 = sub_1DB404654();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB404420(uint64_t a1)
{
  v2 = sub_1DB404654();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.DeepLinkDestination.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC455C0, &qword_1DB51AED0);
  v21 = *(v5 - 8);
  v6 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB404654();
  sub_1DB50BDF0();
  if (!v2)
  {
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1DB50BDE0();
    v12 = sub_1DB31F3BC(0xD000000000000023, 0x80000001DB5298A0, v11);
    v14 = v13;

    if (v12)
    {
      v15 = v14;
    }

    else
    {
      v15 = &off_1F56F1850;
    }

    sub_1DB4046A8(v15, v18);
    (*(v21 + 8))(v8, v5);
    sub_1DB30C7A8(v18, v19);
    v16 = v19[1];
    *a2 = v19[0];
    *(a2 + 16) = v16;
    *(a2 + 32) = v20;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1DB404654()
{
  result = qword_1ECC455C8;
  if (!qword_1ECC455C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC455C8);
  }

  return result;
}

uint64_t sub_1DB4046A8@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  type metadata accessor for CodeByKind();
  sub_1DB50B7C0();
  swift_getWitnessTable();
  result = sub_1DB50B780();
  if (!v2)
  {
    return sub_1DB30C7A8(&v6, a2);
  }

  return result;
}

uint64_t Models.DeepLinkDestination.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC455D0, &qword_1DB51AED8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v17 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB404654();
  sub_1DB50BE40();
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_1DB50BE30();
  v10 = sub_1DB31F3BC(0xD000000000000023, 0x80000001DB5298A0, v9);
  v12 = v11;

  if (v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = &type metadata for EmptyActionKindTable;
  }

  if (v10)
  {
    v15 = v12;
  }

  else
  {
    v15 = &off_1F56F1850;
  }

  sub_1DB404938(v17[1], v14, v6, v13, v14, &_s19DeepLinkDestinationV10CodingKeysON, v15);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1DB404938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1DB30BE90(a1, v11);
  v8 = *(a7 + 8);
  CodeByKind.init(wrappedValue:)(v11, v12);
  sub_1DB50B8C0();
  v9 = type metadata accessor for CodeByKind();
  swift_getWitnessTable();
  sub_1DB50B8A0();
  return (*(*(v9 - 8) + 8))(v12, v9);
}

uint64_t Models.DeepLinkDestination.segue.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0(v1);

  return sub_1DB30C7A8(a1, v1);
}

unint64_t sub_1DB404B24()
{
  result = qword_1ECC455D8;
  if (!qword_1ECC455D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC455D8);
  }

  return result;
}

unint64_t sub_1DB404B7C()
{
  result = qword_1ECC455E0;
  if (!qword_1ECC455E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC455E0);
  }

  return result;
}

unint64_t sub_1DB404BD4()
{
  result = qword_1ECC455E8;
  if (!qword_1ECC455E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC455E8);
  }

  return result;
}

uint64_t sub_1DB404C28(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (!a1)
  {
    return !a2;
  }

  if (!a2 || (sub_1DB48F3DC(a2, a1) & 1) == 0)
  {
    return 0;
  }

  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  v25 = a3;
  while (v10)
  {
    v14 = a4;
    v15 = a2;
LABEL_14:
    v17 = __clz(__rbit64(v10)) | (v13 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v20 = *v18;
    v19 = v18[1];
    sub_1DB300B14(*(a1 + 56) + 32 * v17, v30);
    v29[0] = v20;
    v29[1] = v19;
    sub_1DB300B14(v30, v28);
    if (*(v15 + 16))
    {

      v21 = sub_1DB306160(v20, v19);
      if (v22)
      {
        sub_1DB300B14(*(v15 + 56) + 32 * v21, &v26);
      }

      else
      {
        v26 = 0u;
        v27 = 0u;
      }
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
    }

    a4 = v14;
    v10 &= v10 - 1;
    v23 = sub_1DB404E3C(v28, &v26, v25, v14);
    sub_1DB30623C(&v26, &qword_1ECC426B0, &qword_1DB50EEB0);
    sub_1DB30623C(v28, &qword_1ECC426B0, &qword_1DB50EEB0);
    result = sub_1DB30623C(v29, &qword_1ECC43438, &qword_1DB511338);
    if ((v23 & 1) == 0)
    {
      v24 = 0;
LABEL_24:

      return v24;
    }
  }

  v15 = a2;
  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v16 >= v11)
    {
      v24 = 1;
      goto LABEL_24;
    }

    v10 = *(a1 + 64 + 8 * v16);
    ++v13;
    if (v10)
    {
      v14 = a4;
      v13 = v16;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB404E3C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  sub_1DB301CDC(a1, v53);
  if (!v54)
  {
    goto LABEL_7;
  }

  sub_1DB30C200(v53, v57);
  sub_1DB301CDC(a2, v53);
  if (!v54)
  {
    __swift_destroy_boxed_opaque_existential_0(v57);
LABEL_7:
    sub_1DB30623C(v53, &qword_1ECC426B0, &qword_1DB50EEB0);
    v7 = 0;
    return v7 & 1;
  }

  sub_1DB30C200(v53, v56);
  sub_1DB300B14(v57, v53);
  sub_1DB300B14(v56, v55);
  sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
  if (swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      sub_1DB336FD4(0, &qword_1EE30C798, 0x1E69E58C0);
      v7 = sub_1DB50B0C0();

LABEL_58:
      __swift_destroy_boxed_opaque_existential_0(v56);
      __swift_destroy_boxed_opaque_existential_0(v57);
      goto LABEL_59;
    }
  }

  if (swift_dynamicCast() && swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v56);
    __swift_destroy_boxed_opaque_existential_0(v57);
    v7 = v43 ^ v50 ^ 1;
LABEL_59:
    __swift_destroy_boxed_opaque_existential_0(v55);
    __swift_destroy_boxed_opaque_existential_0(v53);
    return v7 & 1;
  }

  if (swift_dynamicCast() && swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v56);
    __swift_destroy_boxed_opaque_existential_0(v57);
    v7 = *&v43 == *&v50;
    goto LABEL_59;
  }

  v8 = MEMORY[0x1E69E6158];
  if (swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      if (v43 == v50)
      {
        v7 = 1;
      }

      else
      {
        v7 = sub_1DB50BA30();
      }

      goto LABEL_57;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC433A8, &unk_1DB511088);
  if (!swift_dynamicCast())
  {
LABEL_38:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F88, &qword_1DB511080);
    if (swift_dynamicCast())
    {
      if (swift_dynamicCast())
      {
        if (a4 < a3)
        {
          v7 = sub_1DB404C28(v43, v50, a3, a4 + 1);

LABEL_57:

          goto LABEL_58;
        }

LABEL_61:

        __swift_destroy_boxed_opaque_existential_0(v56);
        __swift_destroy_boxed_opaque_existential_0(v57);
        __swift_destroy_boxed_opaque_existential_0(v55);
        __swift_destroy_boxed_opaque_existential_0(v53);
        v7 = 0;
        return v7 & 1;
      }
    }

    if (qword_1ECC42228 != -1)
    {
      goto LABEL_71;
    }

    goto LABEL_44;
  }

  v9 = v52;
  if (!swift_dynamicCast())
  {

    goto LABEL_38;
  }

  if (a4 >= a3)
  {
    goto LABEL_61;
  }

  v8 = 0;
  v10 = 0;
  v11 = *(v52 + 16);
  v12 = *(v47 + 16);
  v38 = v47;
  v36 = v47 + 32;
  v37 = v52 + 32;
  while (1)
  {
    if (v10 == v11)
    {
      v50 = 0u;
      v51 = 0u;
      v10 = v11;
      if (v8 == v12)
      {
        goto LABEL_26;
      }

      goto LABEL_30;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *(v9 + 16))
    {
      goto LABEL_69;
    }

    sub_1DB300B14(v37 + 32 * v10++, &v50);
    if (v8 == v12)
    {
LABEL_26:
      v48 = 0u;
      v49 = 0u;
      v8 = v12;
      goto LABEL_33;
    }

LABEL_30:
    if ((v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_68;
    }

    if (v8 >= *(v38 + 16))
    {
      goto LABEL_70;
    }

    sub_1DB300B14(v36 + 32 * v8++, &v48);
LABEL_33:
    v43 = v50;
    v44 = v51;
    v45 = v48;
    v46 = v49;
    if (!*(&v51 + 1))
    {

      __swift_destroy_boxed_opaque_existential_0(v56);
      __swift_destroy_boxed_opaque_existential_0(v57);
      if (*(&v46 + 1))
      {
        sub_1DB30623C(&v45, &qword_1ECC426B0, &qword_1DB50EEB0);
        v7 = 0;
      }

      else
      {
        v7 = 1;
      }

      goto LABEL_59;
    }

    if (!*(&v46 + 1))
    {

      __swift_destroy_boxed_opaque_existential_0(v56);
      __swift_destroy_boxed_opaque_existential_0(v57);
      v14 = &v43;
      goto LABEL_65;
    }

    sub_1DB30C200(&v43, v42);
    sub_1DB30C200(&v45, v41);
    sub_1DB300B14(v42, v40);
    sub_1DB300B14(v41, v39);
    v13 = sub_1DB404E3C(v40, v39, a3, a4 + 1);
    sub_1DB30623C(v39, &qword_1ECC426B0, &qword_1DB50EEB0);
    sub_1DB30623C(v40, &qword_1ECC426B0, &qword_1DB50EEB0);
    __swift_destroy_boxed_opaque_existential_0(v41);
    __swift_destroy_boxed_opaque_existential_0(v42);
    if ((v13 & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_0(v56);
      v14 = v57;
LABEL_65:
      __swift_destroy_boxed_opaque_existential_0(v14);
      v7 = 0;
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  swift_once();
LABEL_44:
  v15 = qword_1ECC466F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DB50F8D0;
  *&v42[0] = sub_1DB301BC0(0, 64, 0, MEMORY[0x1E69E7CC0]);
  v17._object = 0x80000001DB52D710;
  v17._countAndFlagsBits = 0xD000000000000034;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  __swift_project_boxed_opaque_existential_1(v57, v58);
  DynamicType = swift_getDynamicType();
  *(&v51 + 1) = swift_getMetatypeMetadata();
  *&v50 = DynamicType;
  sub_1DB301CDC(&v50, &v48);
  v43 = 0u;
  v44 = 0u;
  sub_1DB301D4C(&v48, &v43);
  LOBYTE(v45) = 0;
  v19 = *&v42[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1DB301BC0(0, *(v19 + 2) + 1, 1, v19);
  }

  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1DB301BC0((v20 > 1), v21 + 1, 1, v19);
  }

  *(v19 + 2) = v21 + 1;
  v22 = &v19[40 * v21];
  v23 = v43;
  v24 = v44;
  v22[64] = v45;
  *(v22 + 2) = v23;
  *(v22 + 3) = v24;
  *&v42[0] = v19;
  sub_1DB30623C(&v50, &qword_1ECC426B0, &qword_1DB50EEB0);
  v25._countAndFlagsBits = 0x756F662073617720;
  v25._object = 0xEB000000002E646ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v25);
  *(v16 + 32) = *&v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1DB50EE90;
  *(&v44 + 1) = v8;
  *&v43 = 0xD000000000000059;
  *(&v43 + 1) = 0x80000001DB52D750;
  *(v26 + 48) = 0u;
  *(v26 + 32) = 0u;
  sub_1DB301D4C(&v43, v26 + 32);
  *(v26 + 64) = 0;
  *(v16 + 40) = v26;
  v27 = sub_1DB50AF40();
  if (os_log_type_enabled(v15, v27))
  {
    if (qword_1EE30EDD8 != -1)
    {
      swift_once();
    }

    v28 = off_1EE30EDE0;
    os_unfair_lock_lock(off_1EE30EDE0 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v28[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v28 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v30 = swift_allocObject();
    *(v30 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    *&v43 = v16;
    *(&v43 + 1) = sub_1DB31485C;
    *&v44 = v30;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
    sub_1DB314864();
    v31 = sub_1DB50A5E0();
    v33 = v32;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1DB50EE90;
    *(v34 + 56) = v8;
    *(v34 + 64) = sub_1DB31494C();
    *(v34 + 32) = v31;
    *(v34 + 40) = v33;
    sub_1DB50A1E0();
  }

  v7 = _isStructurallyEqual(_:to:with:at:)(v57, v56, a3, 0);
  __swift_destroy_boxed_opaque_existential_0(v56);
  __swift_destroy_boxed_opaque_existential_0(v57);
  sub_1DB30623C(v53, &qword_1ECC44C00, qword_1DB5174C8);
  return v7 & 1;
}

uint64_t sub_1DB405888()
{
  sub_1DB405A10();
  sub_1DB50AA60();
  v1 = v0;
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB405910(uint64_t a1)
{
  v2 = [*v1 objectAtIndexedSubscript_];
  sub_1DB50B200();

  return swift_unknownObjectRelease();
}

unint64_t sub_1DB405990(uint64_t a1)
{
  result = sub_1DB4059B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB4059B8()
{
  result = qword_1ECC455F0[0];
  if (!qword_1ECC455F0[0])
  {
    sub_1DB405A10();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC455F0);
  }

  return result;
}

unint64_t sub_1DB405A10()
{
  result = qword_1ECC45BD0;
  if (!qword_1ECC45BD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECC45BD0);
  }

  return result;
}

unint64_t sub_1DB405A5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_1DB35C8C0();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DB405AE4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1DB405C20(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
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
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_1DB405E3C(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(v5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v18 - v12;
  v14 = v2 + *(a2 + 36);
  v16 = *v14;
  v15 = *(v14 + 8);
  (*(v5 + 24))(a1, v6, v5, v11);
  v16(v13);
  return (*(v9 + 8))(v13, AssociatedTypeWitness);
}

char *sub_1DB405F74(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v42 = a1;
  v45 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  v5 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v37 - v6;
  v8 = sub_1DB50B120();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v37 - v10;
  v12 = *(v3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_getAssociatedTypeWitness();
  v39 = *(v17 - 8);
  v18 = *(v39 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - v20;
  v22 = (*(v2 + 16))(v3, v2, v19);
  v23 = sub_1DB3035BC(0, v22 & ~(v22 >> 63), 0, MEMORY[0x1E69E7CC0]);
  v24 = *(v12 + 16);
  v43 = v1;
  v24(v16, v1, v3);
  sub_1DB50A880();
  v25 = v38;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v44 = v21;
  v45 = v17;
  v41 = AssociatedConformanceWitness;
  sub_1DB50B170();
  v40 = *(v25 + 48);
  if (v40(v11, 1, AssociatedTypeWitness) != 1)
  {
    v28 = *(v25 + 32);
    v29 = (v25 + 8);
    do
    {
      v28(v7, v11, AssociatedTypeWitness);
      v30 = v43 + *(v42 + 36);
      v31 = *(v30 + 8);
      (*v30)(v46, v7);
      v33 = *(v23 + 2);
      v32 = *(v23 + 3);
      if (v33 >= v32 >> 1)
      {
        v23 = sub_1DB3035BC((v32 > 1), v33 + 1, 1, v23);
      }

      (*v29)(v7, AssociatedTypeWitness);
      *(v23 + 2) = v33 + 1;
      v34 = &v23[40 * v33];
      v35 = v46[0];
      v36 = v46[1];
      *(v34 + 8) = v47;
      *(v34 + 2) = v35;
      *(v34 + 3) = v36;
      sub_1DB50B170();
    }

    while (v40(v11, 1, AssociatedTypeWitness) != 1);
  }

  (*(v39 + 8))(v44, v45);
  return v23;
}

uint64_t sub_1DB40638C(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v40 = a1;
  v41 = a2;
  v5 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v34[0] = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v7 + 16);
  v8 = *(v7 + 24);
  v42 = v7;
  v38 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v11 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = v34 - v12;
  v14 = sub_1DB50B120();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v34 - v16;
  v43 = *(v9 - 8);
  v18 = *(v43 + 8);
  MEMORY[0x1EEE9AC00](v19);
  v37 = v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = swift_getAssociatedTypeWitness();
  v35 = *(v45 - 8);
  v21 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v23 = v34 - v22;
  v47 = sub_1DB50A480();
  v24 = v44;
  v34[1] = (*(v8 + 16))(v9, v8);
  v39 = sub_1DB50AA60();
  sub_1DB50A9C0();
  (*(v43 + 2))(v37, v24, v9);
  sub_1DB50A880();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = v23;
  v38 = AssociatedConformanceWitness;
  sub_1DB50B170();
  v26 = v36;
  v37 = *(v36 + 48);
  if ((v37)(v17, 1, AssociatedTypeWitness) == 1)
  {
LABEL_5:
    (*(v35 + 8))(v43, v45);
    return v47;
  }

  else
  {
    v28 = *(v26 + 32);
    v27 = v26 + 32;
    v36 = v28;
    v29 = (v27 - 24);
    while (1)
    {
      v30 = v27;
      (v36)(v13, v17, AssociatedTypeWitness);
      v31 = v44 + *(v42 + 36);
      v32 = *(v31 + 8);
      (*v31)(v46, v13);
      v40(v46);
      if (v4)
      {
        break;
      }

      sub_1DB50AA10();
      sub_1DB3151CC(v46);
      (*v29)(v13, AssociatedTypeWitness);
      sub_1DB50B170();
      v27 = v30;
      if ((v37)(v17, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_5;
      }
    }

    sub_1DB3151CC(v46);
    (*v29)(v13, AssociatedTypeWitness);
    (*(v35 + 8))(v43, v45);
  }
}

uint64_t sub_1DB40684C(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v75 = a1;
  v76 = a2;
  v66 = sub_1DB50B120();
  v69 = *(v66 - 8);
  v9 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v81 = &v56 - v10;
  v72 = *(a4 - 8);
  v11 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v64 = &v56 - v15;
  v17 = *(a3 + 16);
  v16 = *(a3 + 24);
  v77 = a3;
  v73 = *(v16 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v68 = *(AssociatedTypeWitness - 8);
  v18 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v80 = &v56 - v19;
  v20 = sub_1DB50B120();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v67 = &v56 - v22;
  v79 = *(v17 - 8);
  v23 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_getAssociatedTypeWitness();
  v58 = *(v27 - 8);
  v28 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v56 - v29;
  v83 = sub_1DB50A480();
  (*(v16 + 16))(v17, v16);
  v74 = a4;
  v31 = v27;
  v63 = sub_1DB50AA60();
  sub_1DB50A9C0();
  v32 = *(v79 + 16);
  v78 = v4;
  v32(v26, v4, v17);
  v33 = v67;
  sub_1DB50A880();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v79 = v31;
  sub_1DB50B170();
  v35 = v68;
  v36 = v68 + 48;
  v37 = AssociatedTypeWitness;
  v73 = *(v68 + 48);
  if ((v73)(v33, 1) == 1)
  {
LABEL_2:
    (*(v58 + 8))(v30, v79);
    return v83;
  }

  else
  {
    v39 = *(v35 + 32);
    v70 = (v72 + 48);
    v71 = v39;
    v62 = (v72 + 32);
    v61 = (v72 + 16);
    v60 = (v72 + 8);
    v72 = v35 + 8;
    v59 = (v69 + 8);
    v68 = v35 + 32;
    while (1)
    {
      v40 = v80;
      v71(v80, v33, v37);
      v41 = v78 + *(v77 + 36);
      v42 = *(v41 + 8);
      (*v41)(v82, v40);
      v75(v82);
      if (v6)
      {
        break;
      }

      v43 = v74;
      if ((*v70)(v81, 1, v74) == 1)
      {
        sub_1DB3151CC(v82);
        (*v72)(v80, v37);
        (*v59)(v81, v66);
      }

      else
      {
        v44 = *v62;
        v69 = 0;
        v45 = v37;
        v46 = v64;
        v44(v64, v81, v43);
        (*v61)(v65, v46, v43);
        v47 = v36;
        v48 = AssociatedConformanceWitness;
        v49 = v30;
        v50 = v43;
        v51 = v80;
        sub_1DB50AA10();
        v52 = v46;
        v53 = v45;
        v6 = v69;
        v33 = v67;
        v54 = v50;
        v30 = v49;
        AssociatedConformanceWitness = v48;
        v36 = v47;
        (*v60)(v52, v54);
        sub_1DB3151CC(v82);
        v55 = v51;
        v37 = v53;
        (*v72)(v55, v53);
      }

      sub_1DB50B170();
      if (v73(v33, 1, v37) == 1)
      {
        goto LABEL_2;
      }
    }

    sub_1DB3151CC(v82);
    (*v72)(v80, v37);
    (*(v58 + 8))(v30, v79);
  }
}

char *sub_1DB406F68(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v46 = a1;
  v47 = a2;
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  v48 = a3;
  v50 = *(v4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v7 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v40 - v8;
  v10 = sub_1DB50B120();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v40 - v12;
  v14 = *(v5 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v5;
  v20 = swift_getAssociatedTypeWitness();
  v41 = *(v20 - 8);
  v21 = *(v41 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v40 - v23;
  (*(v14 + 16))(v18, v54, v19, v22);
  sub_1DB50A880();
  v25 = v42;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v49 = v24;
  v50 = v20;
  v45 = AssociatedConformanceWitness;
  sub_1DB50B170();
  v44 = *(v25 + 48);
  if (v44(v13, 1, AssociatedTypeWitness) == 1)
  {
    v27 = MEMORY[0x1E69E7CC0];
LABEL_3:
    (*(v41 + 8))(v49, v50);
  }

  else
  {
    v29 = *(v25 + 32);
    v28 = v25 + 32;
    v43 = v29;
    v30 = (v28 - 24);
    v27 = MEMORY[0x1E69E7CC0];
    v42 = v28;
    v29(v9, v13, AssociatedTypeWitness);
    while (1)
    {
      v31 = v54 + *(v48 + 36);
      v32 = *(v31 + 8);
      (*v31)(v53, v9);
      v33 = v46(v53);
      if (v3)
      {
        break;
      }

      if (v33)
      {
        sub_1DB3171C0(v53, v51);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1DB3035BC(0, *(v27 + 2) + 1, 1, v27);
        }

        v35 = *(v27 + 2);
        v34 = *(v27 + 3);
        if (v35 >= v34 >> 1)
        {
          v27 = sub_1DB3035BC((v34 > 1), v35 + 1, 1, v27);
        }

        sub_1DB3151CC(v53);
        (*v30)(v9, AssociatedTypeWitness);
        *(v27 + 2) = v35 + 1;
        v36 = &v27[40 * v35];
        v37 = v51[0];
        v38 = v51[1];
        *(v36 + 8) = v52;
        *(v36 + 2) = v37;
        *(v36 + 3) = v38;
      }

      else
      {
        sub_1DB3151CC(v53);
        (*v30)(v9, AssociatedTypeWitness);
      }

      sub_1DB50B170();
      if (v44(v13, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_3;
      }

      v43(v9, v13, AssociatedTypeWitness);
    }

    sub_1DB3151CC(v53);
    (*v30)(v9, AssociatedTypeWitness);
    (*(v41 + 8))(v49, v50);
  }

  return v27;
}

uint64_t sub_1DB407424@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, void *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v61 = a1;
  v56 = a2;
  v57 = a3;
  v50 = a5;
  v49 = *(a4 - 8);
  v6 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v8 + 16);
  v9 = *(v8 + 24);
  v58 = v8;
  v11 = *(v9 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v12 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v45 - v13;
  v15 = sub_1DB50B120();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v45 - v17;
  v19 = *(v10 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_getAssociatedTypeWitness();
  v48 = *(v24 - 8);
  v25 = *(v48 + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v45 - v27;
  v29 = *(v49 + 16);
  v59 = a4;
  v29(v50, v61, a4, v26);
  (*(v19 + 16))(v23, v62, v10);
  sub_1DB50A880();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v60 = v28;
  v61 = v24;
  v55 = AssociatedConformanceWitness;
  sub_1DB50B170();
  v31 = v52;
  v32 = AssociatedTypeWitness;
  v53 = *(v52 + 48);
  v54 = v52 + 48;
  if (v53(v18, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v48 + 8))(v60, v61);
  }

  v34 = *(v31 + 32);
  v33 = v31 + 32;
  v35 = v50;
  v36 = (v33 - 24);
  v51 = v34;
  v52 = v49 + 8;
  v37 = (v49 + 32);
  v38 = v46;
  while (1)
  {
    v39 = v33;
    v51(v14, v18, v32);
    v40 = v62 + *(v58 + 36);
    v41 = *(v40 + 8);
    (*v40)(v63, v14);
    v42 = v64;
    v56(v35, v63);
    if (v42)
    {
      break;
    }

    v64 = 0;
    sub_1DB3151CC(v63);
    (*v36)(v14, v32);
    v43 = v59;
    (*v52)(v35, v59);
    (*v37)(v35, v38, v43);
    sub_1DB50B170();
    v33 = v39;
    if (v53(v18, 1, v32) == 1)
    {
      return (*(v48 + 8))(v60, v61);
    }
  }

  sub_1DB3151CC(v63);
  (*v36)(v14, v32);
  (*(v48 + 8))(v60, v61);
  return (*v52)(v35, v59);
}

uint64_t sub_1DB40791C(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v36 = a2;
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  v37 = a3;
  v39 = *(v4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  v7 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v31 - v8;
  v10 = sub_1DB50B120();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v31 - v12;
  v14 = *(v5 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_getAssociatedTypeWitness();
  v32 = *(v19 - 8);
  v20 = *(v32 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v31 - v22;
  (*(v14 + 16))(v18, v41, v5, v21);
  sub_1DB50A880();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v38 = v23;
  v39 = v19;
  v25 = v31;
  v34 = AssociatedConformanceWitness;
  sub_1DB50B170();
  v33 = *(v25 + 48);
  if (v33(v13, 1, AssociatedTypeWitness) != 1)
  {
    v26 = *(v25 + 32);
    v27 = (v25 + 8);
    while (1)
    {
      v26(v9, v13, AssociatedTypeWitness);
      v28 = v41 + *(v37 + 36);
      v29 = *(v28 + 8);
      (*v28)(v40, v9);
      v35(v40);
      if (v3)
      {
        break;
      }

      sub_1DB3151CC(v40);
      (*v27)(v9, AssociatedTypeWitness);
      sub_1DB50B170();
      if (v33(v13, 1, AssociatedTypeWitness) == 1)
      {
        return (*(v32 + 8))(v38, v39);
      }
    }

    sub_1DB3151CC(v40);
    (*v27)(v9, AssociatedTypeWitness);
  }

  return (*(v32 + 8))(v38, v39);
}

BOOL sub_1DB407CD4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v37 = a2;
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  v38 = a3;
  v43 = *(v4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v33 - v8;
  v10 = sub_1DB50B120();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v33 - v12;
  v14 = *(v5 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_getAssociatedTypeWitness();
  v35 = *(v19 - 8);
  v20 = *(v35 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v33 - v22;
  (*(v14 + 16))(v18, v40, v5, v21);
  v41 = v23;
  sub_1DB50A880();
  v43 = v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = (v34 + 48);
  v25 = (v34 + 32);
  v26 = (v34 + 8);
  do
  {
    sub_1DB50B170();
    v27 = (*v24)(v13, 1, AssociatedTypeWitness);
    if (v27 == 1)
    {
      break;
    }

    (*v25)(v9, v13, AssociatedTypeWitness);
    v28 = v40 + *(v38 + 36);
    v29 = *(v28 + 8);
    (*v28)(v42, v9);
    v30 = v36(v42);
    if (v3)
    {
      sub_1DB3151CC(v42);
      (*v26)(v9, AssociatedTypeWitness);
      break;
    }

    v31 = v30;
    sub_1DB3151CC(v42);
    (*v26)(v9, AssociatedTypeWitness);
  }

  while ((v31 & 1) == 0);
  (*(v35 + 8))(v41, v43);
  return v27 != 1;
}

uint64_t MetricsFieldInclusionRequest.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;

  sub_1DB330D60(a1, v13);
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
    sub_1DB300B14(v6, v12);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v13);
      result = sub_1DB3151CC(a1);
      *a3 = v10;
      a3[1] = v11;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    sub_1DB330DD0(v13);
  }

  sub_1DB315178();
  swift_allocError();
  v8 = MEMORY[0x1E69E7CC0];
  *v9 = &type metadata for MetricsFieldInclusionRequest;
  v9[1] = v8;
  v9[2] = 0;
  v9[3] = 0;
  swift_willThrow();
  return sub_1DB3151CC(a1);
}

uint64_t MetricsFieldInclusionRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v6 = sub_1DB50BA40();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_0(v10);
    *a2 = v6;
    a2[1] = v8;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t MetricsFieldInclusionRequest.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE20();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_1DB50BAC0();
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t MetricsFieldInclusionRequest.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void static MetricsFieldInclusionRequest.pageReferrer.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "pageReferrer");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

unint64_t sub_1DB4084F8()
{
  result = qword_1ECC45678;
  if (!qword_1ECC45678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45678);
  }

  return result;
}

uint64_t sub_1DB408574(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DB4085BC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

double sub_1DB40860C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_1DB300B14(v4, &v15);
  sub_1DB336FD4(0, &qword_1ECC45BF0, 0x1E695DF20);
  if (swift_dynamicCast())
  {
    v8 = v13 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v15 = 0u;
    v16 = 0u;
  }

  else
  {
    *&v15 = a1;
    *(&v15 + 1) = a2;

    v9 = v13;
    v10 = [v9 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();

    if (v10)
    {
      sub_1DB50B200();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    v15 = v13;
    v16 = v14;
    if (*(&v14 + 1))
    {
      *(a3 + 24) = &type metadata for FoundationValue;
      *(a3 + 32) = &off_1F56FB6B0;
      v11 = swift_allocObject();
      *a3 = v11;
      sub_1DB30C200(&v15, (v11 + 16));

      return result;
    }
  }

  sub_1DB30623C(&v15, &qword_1ECC426B0, &qword_1DB50EEB0);
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  return result;
}

uint64_t sub_1DB40879C()
{
  sub_1DB300B14(v0, &v9);
  sub_1DB336FD4(0, &qword_1ECC45BF0, 0x1E695DF20);
  if (swift_dynamicCast())
  {
    v1 = v7 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v9 = 0u;
    v10 = 0u;
LABEL_12:
    v5 = 0;
    goto LABEL_13;
  }

  v2 = v7;
  v3 = sub_1DB50A620();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_1DB50B200();
    swift_unknownObjectRelease();
  }

  else
  {

    v7 = 0u;
    v8 = 0u;
  }

  v9 = v7;
  v10 = v8;
  if (!*(&v8 + 1))
  {
    goto LABEL_12;
  }

  v5 = 1;
LABEL_13:
  sub_1DB30623C(&v9, &qword_1ECC426B0, &qword_1DB50EEB0);
  return v5;
}

BOOL sub_1DB4088D8()
{
  sub_1DB300B14(v0, v11);
  sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
  v1 = swift_dynamicCast();
  v2 = *MEMORY[0x1E695E4D0];
  if (v1)
  {
    v3 = v10 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (!v2)
    {
      goto LABEL_17;
    }
  }

  else if (v2)
  {
    swift_unknownObjectRelease();
    if (v10 == v2)
    {
      return 1;
    }
  }

  else
  {
    v4 = 0;
    swift_unknownObjectRelease();
  }

  sub_1DB300B14(v0, v11);
  v5 = swift_dynamicCast();
  v6 = *MEMORY[0x1E695E4C0];
  if (v5 && v10)
  {
    if (v6)
    {
      swift_unknownObjectRelease();
      return v10 == v6;
    }

    v9 = 0;
    swift_unknownObjectRelease();
    return 0;
  }

  if (!v6)
  {
LABEL_17:
    v8 = 0;
    return 1;
  }

  return 0;
}

char *sub_1DB408A14()
{
  sub_1DB300B14(v0, v5);
  sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
  if (swift_dynamicCast())
  {
  }

  else
  {
    sub_1DB300B14(v0, v6);
    sub_1DB336FD4(0, &qword_1ECC45BF0, 0x1E695DF20);
    if (swift_dynamicCast())
    {
      v7[3] = &type metadata for FoundationDictionary;
      v7[4] = &off_1F56FF4E8;
      v7[0] = v5[0];
      v1 = __swift_project_boxed_opaque_existential_1(v7, &type metadata for FoundationDictionary);
      v2 = sub_1DB4A190C(*v1);
      sub_1DB317740(v7);
      return v2;
    }
  }

  return MEMORY[0x1E69E7CC0];
}

double sub_1DB408B14@<D0>(uint64_t a1@<X8>)
{
  sub_1DB300B14(v1, v6);
  sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
  if (swift_dynamicCast())
  {
  }

  else
  {
    sub_1DB300B14(v1, v7);
    sub_1DB336FD4(0, &qword_1ECC45BF0, 0x1E695DF20);
    if (swift_dynamicCast())
    {
      v4 = v6[0];
      *(a1 + 24) = &type metadata for FoundationDictionary;
      *(a1 + 32) = &off_1F56FF4E8;
      *a1 = v4;
      return result;
    }
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1DB408C04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43838, &unk_1DB513310);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  sub_1DB300B14(v2, v31);
  if (swift_dynamicCast())
  {
    v29 = a1;
    v11 = v30;
    v12 = sub_1DB476330();
    v13 = sub_1DB50A620();

    [v12 setDateFormat_];

    v28 = v11;
    v14 = sub_1DB50A620();
    v15 = [v12 dateFromString_];

    if (v15)
    {
      sub_1DB509DB0();

      v16 = 0;
      v12 = v15;
    }

    else
    {
      v16 = 1;
    }

    v19 = sub_1DB509DD0();
    v20 = *(v19 - 8);
    v21 = *(v20 + 56);
    v21(v7, v16, 1, v19);
    sub_1DB35EA44(v7, v10);
    if ((*(v20 + 48))(v10, 1, v19) != 1)
    {
      goto LABEL_13;
    }

    sub_1DB30623C(v10, &qword_1ECC43838, &unk_1DB513310);
    v22 = sub_1DB476330();
    v23 = sub_1DB50A620();

    [v22 setDateFormat_];

    v24 = sub_1DB50A620();
    v25 = [v22 dateFromString_];

    if (v25)
    {
      sub_1DB509DB0();

      v26 = 0;
      v22 = v25;
    }

    else
    {
      v26 = 1;
    }

    v19 = sub_1DB509DD0();
    v20 = *(v19 - 8);
    v21 = *(v20 + 56);
    v21(v7, v26, 1, v19);
    sub_1DB35EA44(v7, v10);
    if ((*(v20 + 48))(v10, 1, v19) == 1)
    {
      sub_1DB30623C(v10, &qword_1ECC43838, &unk_1DB513310);

      return (v21)(v29, 1, 1, v19);
    }

    else
    {
LABEL_13:

      v27 = v29;
      (*(v20 + 32))(v29, v10, v19);
      return (v21)(v27, 0, 1, v19);
    }
  }

  else
  {
    v17 = sub_1DB509DD0();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

uint64_t BaseObjectGraph._withAllDependenciesResolved.getter()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1DB4090F8, 0, 0);
}

uint64_t sub_1DB4090F8()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1DB4091B0;
  v3 = v0[3];

  return sub_1DB40CD74((v0 + 2), &unk_1DB51B2B0, v3, v1);
}

uint64_t sub_1DB4091B0()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1DB4092E0;
  }

  else
  {
    v3 = sub_1DB4092C4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t BaseObjectGraph.__allocating_init(name:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 + 16);
  v9 = sub_1DB30BC94();
  v11 = MEMORY[0x1E12859D0](v8, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v9);
  sub_1DB307C9C(a3);

  return (*(v4 + 96))(a1, a2, &v11);
}

uint64_t sub_1DB409408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[87] = a4;
  v4[86] = a3;
  v4[85] = a2;
  v4[84] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC456B0, &qword_1DB51B3B0) - 8) + 64) + 15;
  v4[88] = swift_task_alloc();
  v6 = type metadata accessor for _ResolvedDependency();
  v4[89] = v6;
  v7 = *(v6 - 8);
  v4[90] = v7;
  v8 = *(v7 + 64) + 15;
  v4[91] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44120, &qword_1DB514148);
  v4[92] = v9;
  v10 = *(v9 - 8);
  v4[93] = v10;
  v11 = *(v10 + 64) + 15;
  v4[94] = swift_task_alloc();
  v4[95] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC456B8, &qword_1DB51B3B8) - 8) + 64) + 15;
  v4[96] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC456C0, &qword_1DB51B3C0);
  v4[97] = v13;
  v14 = *(v13 - 8);
  v4[98] = v14;
  v15 = *(v14 + 64) + 15;
  v4[99] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750) - 8) + 64) + 15;
  v4[100] = swift_task_alloc();
  v4[101] = swift_task_alloc();
  v4[102] = swift_task_alloc();
  v4[103] = swift_task_alloc();
  v4[104] = swift_task_alloc();
  v4[105] = swift_task_alloc();
  v17 = sub_1DB50A230();
  v4[106] = v17;
  v18 = *(v17 - 8);
  v4[107] = v18;
  v19 = *(v18 + 64) + 15;
  v4[108] = swift_task_alloc();
  v4[109] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB4096FC, 0, 0);
}

uint64_t sub_1DB4096FC()
{
  v105 = v0;
  if (qword_1EE30EAE8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v1 = *(v0 + 872);
    v2 = sub_1DB50A270();
    __swift_project_value_buffer(v2, qword_1EE312DE8);
    sub_1DB50A250();
    sub_1DB50A200();
    v3 = sub_1DB50A250();
    v4 = sub_1DB50B070();
    if (sub_1DB50B0E0())
    {
      v5 = *(v0 + 872);
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v3, v4, v7, "ResolveDependencies", "", v6, 2u);
      MEMORY[0x1E1288220](v6, -1, -1);
    }

    v8 = (v0 + 632);
    v9 = *(v0 + 872);
    v10 = *(v0 + 864);
    v11 = *(v0 + 856);
    v12 = *(v0 + 848);
    v13 = *(v0 + 696);
    v14 = *(v0 + 688);

    v15 = v12;
    v16 = v14;
    (*(v11 + 16))(v10, v9, v15);
    v17 = sub_1DB50A2C0();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v20 = v13;
    *(v0 + 880) = sub_1DB50A2B0();
    v21 = v13 + 64;
    v22 = -1;
    v23 = -1 << *(v13 + 32);
    if (-v23 < 64)
    {
      v22 = ~(-1 << -v23);
    }

    v24 = v22 & *(v13 + 64);
    v25 = (63 - v23) >> 6;

    v26 = 0;
    v100 = v20;
    v98 = v21;
    v99 = v16;
    if (v24)
    {
      break;
    }

LABEL_10:
    if (v25 <= v26 + 1)
    {
      v28 = v26 + 1;
    }

    else
    {
      v28 = v25;
    }

    v29 = v28 - 1;
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v25)
      {
        v24 = 0;
        *(v0 + 88) = 0;
        *(v0 + 72) = 0u;
        v26 = v29;
        *(v0 + 56) = 0u;
        goto LABEL_19;
      }

      v24 = *(v21 + 8 * v27);
      ++v26;
      if (v24)
      {
        v26 = v27;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v27 = v26;
LABEL_18:
    v30 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v31 = v30 | (v27 << 6);
    v32 = *(*(v20 + 48) + 8 * v31);
    sub_1DB300B14(*(v20 + 56) + 32 * v31, v0 + 336);
    *(v0 + 56) = v32;
    sub_1DB30C200((v0 + 336), (v0 + 64));
LABEL_19:
    v33 = *(v0 + 72);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = v33;
    *(v0 + 48) = *(v0 + 88);
    v34 = *(v0 + 16);
    if (!v34)
    {
      break;
    }

    sub_1DB30C200((v0 + 24), (v0 + 400));
    if (*(v16 + 16) && (v35 = *(v0 + 688), sub_1DB30EE50(v34), (v36 & 1) != 0))
    {
      sub_1DB300B14(v0 + 400, v0 + 432);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC456C8, &qword_1DB51B3C8);
      if (swift_dynamicCast())
      {
        v37 = *(v0 + 840);
        v101 = *(v0 + 832);
        sub_1DB2FEA0C((v0 + 96), v0 + 256);
        v38 = sub_1DB50ABA0();
        v39 = *(v38 - 8);
        (*(v39 + 56))(v37, 1, 1, v38);
        sub_1DB30BE90(v0 + 256, v0 + 296);
        v40 = swift_allocObject();
        v40[2] = 0;
        v41 = v40 + 2;
        v40[3] = 0;
        v40[4] = v34;
        sub_1DB2FEA0C((v0 + 296), (v40 + 5));
        sub_1DB30C4B8(v37, v101, &unk_1ECC46EB0, &qword_1DB50F750);
        v42 = (*(v39 + 48))(v101, 1, v38);
        v43 = *(v0 + 832);
        if (v42 == 1)
        {
          sub_1DB30623C(*(v0 + 832), &unk_1ECC46EB0, &qword_1DB50F750);
          if (*v41)
          {
            goto LABEL_25;
          }

LABEL_32:
          v45 = 0;
          v47 = 0;
        }

        else
        {
          sub_1DB50AB90();
          (*(v39 + 8))(v43, v38);
          if (!*v41)
          {
            goto LABEL_32;
          }

LABEL_25:
          v44 = v40[3];
          swift_getObjectType();
          swift_unknownObjectRetain();
          v45 = sub_1DB50AAD0();
          v47 = v46;
          swift_unknownObjectRelease();
        }

        v59 = **(v0 + 680);

        if (v47 | v45)
        {
          v60 = v0 + 528;
          *(v0 + 528) = 0;
          *(v0 + 536) = 0;
          *(v0 + 544) = v45;
          *(v0 + 552) = v47;
        }

        else
        {
          v60 = 0;
        }

        v20 = v100;
        v72 = *(v0 + 840);
        v73 = *(v0 + 736);
        *(v0 + 608) = 1;
        *(v0 + 616) = v60;
        *(v0 + 624) = v59;
        swift_task_create();

        sub_1DB30623C(v72, &unk_1ECC46EB0, &qword_1DB50F750);
        v74 = (v0 + 256);
        goto LABEL_48;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC456D0, &qword_1DB51B3D0);
      if (swift_dynamicCast())
      {
        v48 = *(v0 + 824);
        v102 = *(v0 + 816);
        sub_1DB2FEA0C((v0 + 136), v0 + 176);
        v49 = sub_1DB50ABA0();
        v50 = *(v49 - 8);
        (*(v50 + 56))(v48, 1, 1, v49);
        sub_1DB30BE90(v0 + 176, v0 + 216);
        v51 = swift_allocObject();
        v51[2] = 0;
        v52 = v51 + 2;
        v51[3] = 0;
        v51[4] = v34;
        sub_1DB2FEA0C((v0 + 216), (v51 + 5));
        sub_1DB30C4B8(v48, v102, &unk_1ECC46EB0, &qword_1DB50F750);
        v53 = (*(v50 + 48))(v102, 1, v49);
        v54 = *(v0 + 816);
        if (v53 == 1)
        {
          sub_1DB30623C(*(v0 + 816), &unk_1ECC46EB0, &qword_1DB50F750);
          if (*v52)
          {
            goto LABEL_30;
          }

LABEL_42:
          v56 = 0;
          v58 = 0;
        }

        else
        {
          sub_1DB50AB90();
          (*(v50 + 8))(v54, v49);
          if (!*v52)
          {
            goto LABEL_42;
          }

LABEL_30:
          v55 = v51[3];
          swift_getObjectType();
          swift_unknownObjectRetain();
          v56 = sub_1DB50AAD0();
          v58 = v57;
          swift_unknownObjectRelease();
        }

        v75 = **(v0 + 680);

        if (v58 | v56)
        {
          v76 = v0 + 496;
          *(v0 + 496) = 0;
          *(v0 + 504) = 0;
          *(v0 + 512) = v56;
          *(v0 + 520) = v58;
        }

        else
        {
          v76 = 0;
        }

        v20 = v100;
        v77 = *(v0 + 824);
        v78 = *(v0 + 736);
        *(v0 + 584) = 1;
        *(v0 + 592) = v76;
        *(v0 + 600) = v75;
        swift_task_create();

        sub_1DB30623C(v77, &unk_1ECC46EB0, &qword_1DB50F750);
        v74 = (v0 + 176);
LABEL_48:
        __swift_destroy_boxed_opaque_existential_0(v74);
        __swift_destroy_boxed_opaque_existential_0((v0 + 400));
        v8 = (v0 + 632);
        v16 = v99;
        goto LABEL_49;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44108, &qword_1DB521B50);
      if (swift_dynamicCast())
      {
        v61 = *(v0 + 808);
        v97 = *(v0 + 800);
        v62 = sub_1DB50ABA0();
        v63 = *(v62 - 8);
        v103 = *v8;
        (*(v63 + 56))(v61, 1, 1, v62);
        v64 = swift_allocObject();
        *(v64 + 16) = 0;
        v65 = (v64 + 16);
        *(v64 + 24) = 0;
        *(v64 + 32) = v34;
        *(v64 + 40) = v103;
        sub_1DB30C4B8(v61, v97, &unk_1ECC46EB0, &qword_1DB50F750);
        v66 = v63;
        LODWORD(v63) = (*(v63 + 48))(v97, 1, v62);
        swift_unknownObjectRetain();
        v67 = *(v0 + 800);
        if (v63 == 1)
        {
          sub_1DB30623C(*(v0 + 800), &unk_1ECC46EB0, &qword_1DB50F750);
          if (*v65)
          {
            goto LABEL_38;
          }

LABEL_53:
          v69 = 0;
          v71 = 0;
        }

        else
        {
          sub_1DB50AB90();
          (*(v66 + 8))(v67, v62);
          if (!*v65)
          {
            goto LABEL_53;
          }

LABEL_38:
          v68 = *(v64 + 24);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v69 = sub_1DB50AAD0();
          v71 = v70;
          swift_unknownObjectRelease();
        }

        v79 = **(v0 + 680);

        if (v71 | v69)
        {
          v80 = v0 + 464;
          *(v0 + 464) = 0;
          *(v0 + 472) = 0;
          *(v0 + 480) = v69;
          *(v0 + 488) = v71;
        }

        else
        {
          v80 = 0;
        }

        v16 = v99;
        v20 = v100;
        v81 = *(v0 + 808);
        v82 = *(v0 + 736);
        *(v0 + 560) = 1;
        *(v0 + 568) = v80;
        *(v0 + 576) = v79;
        swift_task_create();

        swift_unknownObjectRelease();

        sub_1DB30623C(v81, &unk_1ECC46EB0, &qword_1DB50F750);
        __swift_destroy_boxed_opaque_existential_0((v0 + 400));
        v8 = (v0 + 632);
LABEL_49:
        v21 = v98;
        goto LABEL_50;
      }

      __swift_destroy_boxed_opaque_existential_0((v0 + 400));
LABEL_50:
      __swift_destroy_boxed_opaque_existential_0((v0 + 432));
      if (!v24)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + 400));
      if (!v24)
      {
        goto LABEL_10;
      }
    }
  }

  v83 = *(v0 + 792);
  v84 = *(v0 + 736);
  v85 = *(v0 + 696);
  v86 = *(v0 + 680);

  *(v0 + 648) = v85;

  sub_1DB4C1C98(v87, &v104);
  v88 = MEMORY[0x1E69E7CC0];
  if (v104)
  {
    v89 = v104;
  }

  else
  {
    v89 = MEMORY[0x1E69E7CC0];
  }

  v90 = *v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  sub_1DB50ACC0();
  *(v0 + 904) = v89;
  *(v0 + 888) = v88;
  v91 = *(MEMORY[0x1E69E8710] + 4);
  v92 = swift_task_alloc();
  *(v0 + 896) = v92;
  *v92 = v0;
  v92[1] = sub_1DB40A250;
  v93 = *(v0 + 792);
  v94 = *(v0 + 776);
  v95 = *(v0 + 768);

  return MEMORY[0x1EEE6DAD8](v95, 0, 0, v94, v0 + 656);
}

uint64_t sub_1DB40A250()
{
  v2 = *v1;
  v3 = *(*v1 + 896);
  v8 = *v1;

  if (v0)
  {
    v4 = *(v2 + 904);
    v5 = *(v2 + 888);

    v6 = sub_1DB40A9A8;
  }

  else
  {
    v6 = sub_1DB40A374;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DB40A374()
{
  v81 = v0;
  v2 = *(v0 + 768);
  if ((*(*(v0 + 744) + 48))(v2, 1, *(v0 + 736)) == 1)
  {
    v3 = *(v0 + 904);
    v4 = *(v0 + 888);
    v5 = *(v0 + 880);
    v6 = *(v0 + 872);
    v7 = *(v0 + 856);
    v69 = *(v0 + 848);
    v70 = *(v0 + 864);
    v71 = *(v0 + 840);
    v72 = *(v0 + 832);
    v73 = *(v0 + 824);
    v74 = *(v0 + 816);
    v75 = *(v0 + 808);
    v76 = *(v0 + 800);
    v77 = *(v0 + 760);
    v78 = *(v0 + 752);
    v8 = *(v0 + 728);
    v79 = *(v0 + 704);
    v9 = *(v0 + 688);
    v10 = *(v0 + 672);
    (*(*(v0 + 784) + 8))(*(v0 + 792), *(v0 + 776));
    v80[3] = &type metadata for AsyncObjectGraphMetrics;
    v80[0] = v3;
    sub_1DB30D870(v80, &type metadata for AsyncObjectGraphMetrics);
    sub_1DB3E33EC(v4, (v0 + 648), v10);

    v11 = *(v0 + 648);

    sub_1DB40C1A4(v5, v9);

    (*(v7 + 8))(v6, v69);

    v12 = *(v0 + 8);

    return v12();
  }

  v14 = *(v0 + 760);
  v15 = *(v0 + 752);
  sub_1DB411820(v2, v14);
  sub_1DB30C4B8(v14, v15, &qword_1ECC44120, &qword_1DB514148);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(v0 + 888);
    v17 = **(v0 + 752);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v0 + 888);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_1DB302A34(0, v19[2] + 1, 1, *(v0 + 888));
    }

    v21 = v19[2];
    v20 = v19[3];
    if (v21 >= v20 >> 1)
    {
      v19 = sub_1DB302A34((v20 > 1), v21 + 1, 1, v19);
    }

    v19[2] = v21 + 1;
    v19[v21 + 4] = v17;
    v22 = 1;
  }

  else
  {
    sub_1DB382904(*(v0 + 752), *(v0 + 704));
    v22 = 0;
    v19 = *(v0 + 888);
  }

  v23 = *(v0 + 720);
  v24 = *(v0 + 712);
  v25 = *(v0 + 704);
  (*(v23 + 56))(v25, v22, 1, v24);
  v27 = *(v23 + 48);
  v26 = v23 + 48;
  if (v27(v25, 1, v24) == 1)
  {
    v28 = *(v0 + 704);
    sub_1DB30623C(*(v0 + 760), &qword_1ECC44120, &qword_1DB514148);
    sub_1DB30623C(v28, &qword_1ECC456B0, &qword_1DB51B3B0);
LABEL_32:
    *(v0 + 888) = v19;
    v66 = *(MEMORY[0x1E69E8710] + 4);
    v67 = swift_task_alloc();
    *(v0 + 896) = v67;
    *v67 = v0;
    v67[1] = sub_1DB40A250;
    v68 = *(v0 + 792);
    v47 = *(v0 + 776);
    v44 = *(v0 + 768);
    v48 = v0 + 656;
    v45 = 0;
    v46 = 0;

    return MEMORY[0x1EEE6DAD8](v44, v45, v46, v47, v48);
  }

  v29 = *(v0 + 728);
  sub_1DB382904(*(v0 + 704), v29);
  v30 = *v29;
  sub_1DB300B14((v29 + 1), v0 + 368);
  v31 = *(v0 + 648);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 664) = v31;
  v33 = sub_1DB30EE50(v30);
  v35 = *(v31 + 16);
  v36 = (v34 & 1) == 0;
  v37 = __OFADD__(v35, v36);
  v38 = v35 + v36;
  if (v37)
  {
    __break(1u);
    goto LABEL_24;
  }

  v26 = v34;
  v1 = (v0 + 664);
  if (*(v31 + 24) >= v38)
  {
    if (v32)
    {
LABEL_21:
      v41 = *v1;
      if (v26)
      {
LABEL_22:
        v42 = (v41[7] + 32 * v33);
        __swift_destroy_boxed_opaque_existential_0(v42);
        sub_1DB30C200((v0 + 368), v42);
LABEL_27:
        v51 = *(v0 + 904);
        v52 = *(v0 + 728);
        v53 = *(v0 + 712);
        *(v0 + 648) = v41;
        v54 = *(v53 + 24);
        v55 = sub_1DB50BEE0();
        v57 = v56;
        sub_1DB509920();
        v59 = v58;
        v60 = swift_isUniquelyReferenced_nonNull_native();
        v61 = *(v0 + 904);
        if ((v60 & 1) == 0)
        {
          v61 = sub_1DB30324C(0, *(v61 + 2) + 1, 1, *(v0 + 904));
        }

        v63 = *(v61 + 2);
        v62 = *(v61 + 3);
        if (v63 >= v62 >> 1)
        {
          v61 = sub_1DB30324C((v62 > 1), v63 + 1, 1, v61);
        }

        v64 = *(v0 + 760);
        sub_1DB411890(*(v0 + 728));
        sub_1DB30623C(v64, &qword_1ECC44120, &qword_1DB514148);
        *(v61 + 2) = v63 + 1;
        v65 = &v61[24 * v63];
        *(v65 + 4) = v55;
        *(v65 + 5) = v57;
        *(v65 + 6) = v59;
        *(v0 + 904) = v61;
        goto LABEL_32;
      }

LABEL_25:
      v41[(v33 >> 6) + 8] |= 1 << v33;
      *(v41[6] + 8 * v33) = v30;
      v44 = sub_1DB30C200((v0 + 368), (v41[7] + 32 * v33));
      v49 = v41[2];
      v37 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v37)
      {
        __break(1u);
        return MEMORY[0x1EEE6DAD8](v44, v45, v46, v47, v48);
      }

      v41[2] = v50;
      goto LABEL_27;
    }

LABEL_24:
    v43 = v33;
    sub_1DB311D10();
    v33 = v43;
    v41 = *v1;
    if (v26)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  sub_1DB31A6AC(v38, v32);
  v39 = *v1;
  v33 = sub_1DB30EE50(v30);
  if ((v26 & 1) == (v40 & 1))
  {
    goto LABEL_21;
  }

  return sub_1DB50BC20();
}

uint64_t sub_1DB40A9A8()
{
  v1 = v0[110];
  v2 = v0[109];
  v3 = v0[108];
  v4 = v0[107];
  v5 = v0[106];
  v6 = v0[105];
  v7 = v0[104];
  v13 = v0[103];
  v14 = v0[102];
  v15 = v0[101];
  v16 = v0[100];
  v17 = v0[96];
  v18 = v0[95];
  v8 = v0[94];
  v19 = v0[91];
  v21 = v0[88];
  v9 = v0[86];
  (*(v0[98] + 8))(v0[99], v0[97]);
  v20 = v0[82];
  v10 = v0[81];

  sub_1DB40C1A4(v1, v9);

  (*(v4 + 8))(v2, v5);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1DB40AB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[87] = a4;
  v4[86] = a3;
  v4[85] = a2;
  v4[84] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC456B0, &qword_1DB51B3B0) - 8) + 64) + 15;
  v4[88] = swift_task_alloc();
  v6 = type metadata accessor for _ResolvedDependency();
  v4[89] = v6;
  v7 = *(v6 - 8);
  v4[90] = v7;
  v8 = *(v7 + 64) + 15;
  v4[91] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44120, &qword_1DB514148);
  v4[92] = v9;
  v10 = *(v9 - 8);
  v4[93] = v10;
  v11 = *(v10 + 64) + 15;
  v4[94] = swift_task_alloc();
  v4[95] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC456B8, &qword_1DB51B3B8) - 8) + 64) + 15;
  v4[96] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC456C0, &qword_1DB51B3C0);
  v4[97] = v13;
  v14 = *(v13 - 8);
  v4[98] = v14;
  v15 = *(v14 + 64) + 15;
  v4[99] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750) - 8) + 64) + 15;
  v4[100] = swift_task_alloc();
  v4[101] = swift_task_alloc();
  v4[102] = swift_task_alloc();
  v4[103] = swift_task_alloc();
  v4[104] = swift_task_alloc();
  v4[105] = swift_task_alloc();
  v17 = sub_1DB50A230();
  v4[106] = v17;
  v18 = *(v17 - 8);
  v4[107] = v18;
  v19 = *(v18 + 64) + 15;
  v4[108] = swift_task_alloc();
  v4[109] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB40AE3C, 0, 0);
}

uint64_t sub_1DB40AE3C()
{
  v113 = v0;
  if (qword_1EE30EAE8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v1 = *(v0 + 872);
    v2 = sub_1DB50A270();
    __swift_project_value_buffer(v2, qword_1EE312DE8);
    sub_1DB50A250();
    sub_1DB50A200();
    v3 = sub_1DB50A250();
    v4 = sub_1DB50B070();
    if (sub_1DB50B0E0())
    {
      v5 = *(v0 + 872);
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v3, v4, v7, "ResolveDependencies", "", v6, 2u);
      MEMORY[0x1E1288220](v6, -1, -1);
    }

    v8 = *(v0 + 872);
    v9 = *(v0 + 864);
    v10 = *(v0 + 856);
    v11 = *(v0 + 848);
    v12 = *(v0 + 696);
    v13 = *(v0 + 688);

    (*(v10 + 16))(v9, v8, v11);
    v14 = sub_1DB50A2C0();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    v17 = v12;
    v18 = v0 + 632;
    *(v0 + 880) = sub_1DB50A2B0();
    v19 = v12 + 64;
    v20 = -1 << *(v12 + 32);
    v21 = -v20 < 64 ? ~(-1 << -v20) : -1;
    v22 = v21 & *(v12 + 64);
    v23 = (63 - v20) >> 6;
    v111 = v13;
    v24 = v13 + 56;

    v25 = 0;
    v110 = v17;
    if (v22)
    {
      break;
    }

LABEL_11:
    if (v23 <= v25 + 1)
    {
      v28 = v25 + 1;
    }

    else
    {
      v28 = v23;
    }

    v29 = v28 - 1;
    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v27 >= v23)
      {
        v26 = v18;
        v22 = 0;
        *(v0 + 88) = 0;
        *(v0 + 72) = 0u;
        v25 = v29;
        *(v0 + 56) = 0u;
        goto LABEL_20;
      }

      v22 = *(v19 + 8 * v27);
      ++v25;
      if (v22)
      {
        v26 = v18;
        v25 = v27;
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v26 = v18;
    v27 = v25;
LABEL_19:
    v30 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v31 = v30 | (v27 << 6);
    v32 = *(*(v110 + 48) + 8 * v31);
    sub_1DB300B14(*(v110 + 56) + 32 * v31, v0 + 336);
    *(v0 + 56) = v32;
    sub_1DB30C200((v0 + 336), (v0 + 64));
LABEL_20:
    v33 = *(v0 + 72);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = v33;
    *(v0 + 48) = *(v0 + 88);
    v34 = *(v0 + 16);
    if (!v34)
    {
      break;
    }

    sub_1DB30C200((v0 + 24), (v0 + 400));
    if (*(v111 + 16) && (v35 = *(v111 + 40), sub_1DB50BCF0(), MEMORY[0x1E12871F0](v34), v36 = sub_1DB50BD30(), v37 = -1 << *(v111 + 32), v38 = v36 & ~v37, ((*(v24 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) != 0))
    {
      v39 = ~v37;
      while (*(*(v111 + 48) + 8 * v38) != v34)
      {
        v38 = (v38 + 1) & v39;
        if (((*(v24 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      sub_1DB300B14(v0 + 400, v0 + 432);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC456C8, &qword_1DB51B3C8);
      if (swift_dynamicCast())
      {
        v40 = *(v0 + 840);
        v104 = *(v0 + 832);
        sub_1DB2FEA0C((v0 + 96), v0 + 256);
        v41 = sub_1DB50ABA0();
        v42 = *(v41 - 8);
        (*(v42 + 56))(v40, 1, 1, v41);
        sub_1DB30BE90(v0 + 256, v0 + 296);
        v43 = swift_allocObject();
        v43[2] = 0;
        v100 = v43 + 2;
        v43[3] = 0;
        v43[4] = v34;
        v107 = v43;
        sub_1DB2FEA0C((v0 + 296), (v43 + 5));
        sub_1DB30C4B8(v40, v104, &unk_1ECC46EB0, &qword_1DB50F750);
        v44 = (*(v42 + 48))(v104, 1, v41);
        v45 = *(v0 + 832);
        if (v44 == 1)
        {
          sub_1DB30623C(*(v0 + 832), &unk_1ECC46EB0, &qword_1DB50F750);
        }

        else
        {
          sub_1DB50AB90();
          (*(v42 + 8))(v45, v41);
        }

        if (*v100)
        {
          v52 = v107[3];
          v53 = *v100;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v54 = sub_1DB50AAD0();
          v56 = v55;
          swift_unknownObjectRelease();
        }

        else
        {
          v54 = 0;
          v56 = 0;
        }

        v62 = **(v0 + 680);

        if (v56 | v54)
        {
          v63 = v0 + 528;
          *(v0 + 528) = 0;
          *(v0 + 536) = 0;
          *(v0 + 544) = v54;
          *(v0 + 552) = v56;
        }

        else
        {
          v63 = 0;
        }

        v64 = *(v0 + 840);
        v65 = *(v0 + 736);
        *(v0 + 608) = 1;
        *(v0 + 616) = v63;
        *(v0 + 624) = v62;
        swift_task_create();

        sub_1DB30623C(v64, &unk_1ECC46EB0, &qword_1DB50F750);
        v66 = (v0 + 256);
        goto LABEL_54;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC456D0, &qword_1DB51B3D0);
      if (swift_dynamicCast())
      {
        v46 = *(v0 + 824);
        v105 = *(v0 + 816);
        sub_1DB2FEA0C((v0 + 136), v0 + 176);
        v47 = sub_1DB50ABA0();
        v48 = *(v47 - 8);
        (*(v48 + 56))(v46, 1, 1, v47);
        sub_1DB30BE90(v0 + 176, v0 + 216);
        v49 = swift_allocObject();
        v49[2] = 0;
        v101 = v49 + 2;
        v49[3] = 0;
        v49[4] = v34;
        v108 = v49;
        sub_1DB2FEA0C((v0 + 216), (v49 + 5));
        sub_1DB30C4B8(v46, v105, &unk_1ECC46EB0, &qword_1DB50F750);
        v50 = (*(v48 + 48))(v105, 1, v47);
        v51 = *(v0 + 816);
        if (v50 == 1)
        {
          sub_1DB30623C(*(v0 + 816), &unk_1ECC46EB0, &qword_1DB50F750);
        }

        else
        {
          sub_1DB50AB90();
          (*(v48 + 8))(v51, v47);
        }

        if (*v101)
        {
          v67 = v108[3];
          v68 = *v101;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v69 = sub_1DB50AAD0();
          v71 = v70;
          swift_unknownObjectRelease();
        }

        else
        {
          v69 = 0;
          v71 = 0;
        }

        v72 = **(v0 + 680);

        if (v71 | v69)
        {
          v73 = v0 + 496;
          *(v0 + 496) = 0;
          *(v0 + 504) = 0;
          *(v0 + 512) = v69;
          *(v0 + 520) = v71;
        }

        else
        {
          v73 = 0;
        }

        v74 = *(v0 + 824);
        v75 = *(v0 + 736);
        *(v0 + 584) = 1;
        *(v0 + 592) = v73;
        *(v0 + 600) = v72;
        swift_task_create();

        sub_1DB30623C(v74, &unk_1ECC46EB0, &qword_1DB50F750);
        v66 = (v0 + 176);
LABEL_54:
        __swift_destroy_boxed_opaque_existential_0(v66);
LABEL_55:
        __swift_destroy_boxed_opaque_existential_0((v0 + 400));
        v18 = v0 + 632;
        goto LABEL_56;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44108, &qword_1DB521B50);
      v18 = v26;
      if (swift_dynamicCast())
      {
        v57 = *(v0 + 808);
        v98 = *(v0 + 800);
        v58 = sub_1DB50ABA0();
        v106 = *(v58 - 8);
        v109 = *(v0 + 632);
        (*(v106 + 56))(v57, 1, 1, v58);
        v59 = swift_allocObject();
        *(v59 + 16) = 0;
        v102 = (v59 + 16);
        *(v59 + 24) = 0;
        *(v59 + 32) = v34;
        v99 = v59;
        *(v59 + 40) = v109;
        sub_1DB30C4B8(v57, v98, &unk_1ECC46EB0, &qword_1DB50F750);
        v60 = v58;
        LODWORD(v58) = (*(v106 + 48))(v98, 1, v58);
        swift_unknownObjectRetain();
        v61 = *(v0 + 800);
        if (v58 == 1)
        {
          sub_1DB30623C(*(v0 + 800), &unk_1ECC46EB0, &qword_1DB50F750);
        }

        else
        {
          sub_1DB50AB90();
          (*(v106 + 8))(v61, v60);
        }

        if (*v102)
        {
          v76 = *(v99 + 24);
          v77 = *v102;
          swift_getObjectType();
          swift_unknownObjectRetain();
          v78 = sub_1DB50AAD0();
          v80 = v79;
          swift_unknownObjectRelease();
        }

        else
        {
          v78 = 0;
          v80 = 0;
        }

        v103 = **(v0 + 680);

        if (v80 | v78)
        {
          v81 = v0 + 464;
          *(v0 + 464) = 0;
          *(v0 + 472) = 0;
          *(v0 + 480) = v78;
          *(v0 + 488) = v80;
        }

        else
        {
          v81 = 0;
        }

        v82 = *(v0 + 808);
        v83 = *(v0 + 736);
        *(v0 + 560) = 1;
        *(v0 + 568) = v81;
        *(v0 + 576) = v103;
        swift_task_create();

        swift_unknownObjectRelease();

        sub_1DB30623C(v82, &unk_1ECC46EB0, &qword_1DB50F750);
        goto LABEL_55;
      }

      __swift_destroy_boxed_opaque_existential_0((v0 + 400));
LABEL_56:
      __swift_destroy_boxed_opaque_existential_0((v0 + 432));
      if (!v22)
      {
        goto LABEL_11;
      }
    }

    else
    {
LABEL_9:
      __swift_destroy_boxed_opaque_existential_0((v0 + 400));
      v18 = v26;
      if (!v22)
      {
        goto LABEL_11;
      }
    }
  }

  v84 = *(v0 + 792);
  v85 = *(v0 + 736);
  v86 = *(v0 + 696);
  v87 = *(v0 + 680);

  *(v0 + 648) = v86;

  sub_1DB4C1C98(v88, &v112);
  v89 = MEMORY[0x1E69E7CC0];
  if (v112)
  {
    v90 = v112;
  }

  else
  {
    v90 = MEMORY[0x1E69E7CC0];
  }

  v91 = *v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  sub_1DB50ACC0();
  *(v0 + 904) = v90;
  *(v0 + 888) = v89;
  v92 = *(MEMORY[0x1E69E8710] + 4);
  v93 = swift_task_alloc();
  *(v0 + 896) = v93;
  *v93 = v0;
  v93[1] = sub_1DB40BA4C;
  v94 = *(v0 + 792);
  v95 = *(v0 + 776);
  v96 = *(v0 + 768);

  return MEMORY[0x1EEE6DAD8](v96, 0, 0, v95, v0 + 656);
}

uint64_t sub_1DB40BA4C()
{
  v2 = *v1;
  v3 = *(*v1 + 896);
  v8 = *v1;

  if (v0)
  {
    v4 = *(v2 + 904);
    v5 = *(v2 + 888);

    v6 = sub_1DB411C90;
  }

  else
  {
    v6 = sub_1DB40BB70;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DB40BB70()
{
  v81 = v0;
  v2 = *(v0 + 768);
  if ((*(*(v0 + 744) + 48))(v2, 1, *(v0 + 736)) == 1)
  {
    v3 = *(v0 + 904);
    v4 = *(v0 + 888);
    v5 = *(v0 + 880);
    v6 = *(v0 + 872);
    v7 = *(v0 + 856);
    v69 = *(v0 + 848);
    v70 = *(v0 + 864);
    v71 = *(v0 + 840);
    v72 = *(v0 + 832);
    v73 = *(v0 + 824);
    v74 = *(v0 + 816);
    v75 = *(v0 + 808);
    v76 = *(v0 + 800);
    v77 = *(v0 + 760);
    v78 = *(v0 + 752);
    v8 = *(v0 + 728);
    v79 = *(v0 + 704);
    v9 = *(v0 + 688);
    v10 = *(v0 + 672);
    (*(*(v0 + 784) + 8))(*(v0 + 792), *(v0 + 776));
    v80[3] = &type metadata for AsyncObjectGraphMetrics;
    v80[0] = v3;
    sub_1DB30D870(v80, &type metadata for AsyncObjectGraphMetrics);
    sub_1DB3E33EC(v4, (v0 + 648), v10);

    v11 = *(v0 + 648);

    sub_1DB40C1A4(v5, v9);

    (*(v7 + 8))(v6, v69);

    v12 = *(v0 + 8);

    return v12();
  }

  v14 = *(v0 + 760);
  v15 = *(v0 + 752);
  sub_1DB411820(v2, v14);
  sub_1DB30C4B8(v14, v15, &qword_1ECC44120, &qword_1DB514148);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(v0 + 888);
    v17 = **(v0 + 752);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v0 + 888);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_1DB302A34(0, v19[2] + 1, 1, *(v0 + 888));
    }

    v21 = v19[2];
    v20 = v19[3];
    if (v21 >= v20 >> 1)
    {
      v19 = sub_1DB302A34((v20 > 1), v21 + 1, 1, v19);
    }

    v19[2] = v21 + 1;
    v19[v21 + 4] = v17;
    v22 = 1;
  }

  else
  {
    sub_1DB382904(*(v0 + 752), *(v0 + 704));
    v22 = 0;
    v19 = *(v0 + 888);
  }

  v23 = *(v0 + 720);
  v24 = *(v0 + 712);
  v25 = *(v0 + 704);
  (*(v23 + 56))(v25, v22, 1, v24);
  v27 = *(v23 + 48);
  v26 = v23 + 48;
  if (v27(v25, 1, v24) == 1)
  {
    v28 = *(v0 + 704);
    sub_1DB30623C(*(v0 + 760), &qword_1ECC44120, &qword_1DB514148);
    sub_1DB30623C(v28, &qword_1ECC456B0, &qword_1DB51B3B0);
LABEL_32:
    *(v0 + 888) = v19;
    v66 = *(MEMORY[0x1E69E8710] + 4);
    v67 = swift_task_alloc();
    *(v0 + 896) = v67;
    *v67 = v0;
    v67[1] = sub_1DB40BA4C;
    v68 = *(v0 + 792);
    v47 = *(v0 + 776);
    v44 = *(v0 + 768);
    v48 = v0 + 656;
    v45 = 0;
    v46 = 0;

    return MEMORY[0x1EEE6DAD8](v44, v45, v46, v47, v48);
  }

  v29 = *(v0 + 728);
  sub_1DB382904(*(v0 + 704), v29);
  v30 = *v29;
  sub_1DB300B14((v29 + 1), v0 + 368);
  v31 = *(v0 + 648);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 664) = v31;
  v33 = sub_1DB30EE50(v30);
  v35 = *(v31 + 16);
  v36 = (v34 & 1) == 0;
  v37 = __OFADD__(v35, v36);
  v38 = v35 + v36;
  if (v37)
  {
    __break(1u);
    goto LABEL_24;
  }

  v26 = v34;
  v1 = (v0 + 664);
  if (*(v31 + 24) >= v38)
  {
    if (v32)
    {
LABEL_21:
      v41 = *v1;
      if (v26)
      {
LABEL_22:
        v42 = (v41[7] + 32 * v33);
        __swift_destroy_boxed_opaque_existential_0(v42);
        sub_1DB30C200((v0 + 368), v42);
LABEL_27:
        v51 = *(v0 + 904);
        v52 = *(v0 + 728);
        v53 = *(v0 + 712);
        *(v0 + 648) = v41;
        v54 = *(v53 + 24);
        v55 = sub_1DB50BEE0();
        v57 = v56;
        sub_1DB509920();
        v59 = v58;
        v60 = swift_isUniquelyReferenced_nonNull_native();
        v61 = *(v0 + 904);
        if ((v60 & 1) == 0)
        {
          v61 = sub_1DB30324C(0, *(v61 + 2) + 1, 1, *(v0 + 904));
        }

        v63 = *(v61 + 2);
        v62 = *(v61 + 3);
        if (v63 >= v62 >> 1)
        {
          v61 = sub_1DB30324C((v62 > 1), v63 + 1, 1, v61);
        }

        v64 = *(v0 + 760);
        sub_1DB411890(*(v0 + 728));
        sub_1DB30623C(v64, &qword_1ECC44120, &qword_1DB514148);
        *(v61 + 2) = v63 + 1;
        v65 = &v61[24 * v63];
        *(v65 + 4) = v55;
        *(v65 + 5) = v57;
        *(v65 + 6) = v59;
        *(v0 + 904) = v61;
        goto LABEL_32;
      }

LABEL_25:
      v41[(v33 >> 6) + 8] |= 1 << v33;
      *(v41[6] + 8 * v33) = v30;
      v44 = sub_1DB30C200((v0 + 368), (v41[7] + 32 * v33));
      v49 = v41[2];
      v37 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v37)
      {
        __break(1u);
        return MEMORY[0x1EEE6DAD8](v44, v45, v46, v47, v48);
      }

      v41[2] = v50;
      goto LABEL_27;
    }

LABEL_24:
    v43 = v33;
    sub_1DB311D10();
    v33 = v43;
    v41 = *v1;
    if (v26)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  sub_1DB31A6AC(v38, v32);
  v39 = *v1;
  v33 = sub_1DB30EE50(v30);
  if ((v26 & 1) == (v40 & 1))
  {
    goto LABEL_21;
  }

  return sub_1DB50BC20();
}

uint64_t sub_1DB40C1A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DB50A280();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1DB50A230();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EE30EAE8 != -1)
  {
    swift_once();
  }

  v13 = sub_1DB50A270();
  __swift_project_value_buffer(v13, qword_1EE312DE8);

  v14 = sub_1DB50A250();
  sub_1DB50A2A0();
  v21 = sub_1DB50B060();
  if (sub_1DB50B0E0())
  {

    sub_1DB50A2D0();

    if ((*(v4 + 88))(v7, v3) == *MEMORY[0x1E69E93E8])
    {
      v15 = 0;
      v16 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v7, v3);
      v16 = "count=%ld";
      v15 = 1;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    *(v17 + 1) = v15;
    *(v17 + 2) = 2048;
    *(v17 + 4) = *(a2 + 16);

    v18 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v14, v21, v18, "ResolveDependencies", v16, v17, 0xCu);
    MEMORY[0x1E1288220](v17, -1, -1);
  }

  else
  {
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t BaseObjectGraph._downcast<A>(to:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;

    return v6;
  }

  else
  {
    swift_beginAccess();
    v9 = v3[3];
    v8 = v3[4];
    v11 = v3[2];
    v10 = *(a2 + 96);

    return v10(v9, v8, &v11);
  }
}

uint64_t BaseObjectGraph._injectIfAvailable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB40C548, 0, 0);
}

uint64_t sub_1DB40C548()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = sub_1DB50B120();
  *v3 = v0;
  v3[1] = sub_1DB3A02D8;
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);

  return sub_1DB40CD74(v6, &unk_1DB51B2D0, v2, v4);
}

uint64_t static BaseObjectGraph.current.getter()
{
  if (qword_1EE30EAE0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DB50BEB0();
  v2 = BaseObjectGraph._downcast<A>(to:)(v1, v0);

  return v2;
}

uint64_t sub_1DB40C6BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v9 = *(v23 + 64);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v22 - v11;
  (*(v4 + 16))(v7, a1, a2, v10);
  sub_1DB50A880();
  swift_getAssociatedConformanceWitness();
  sub_1DB50B170();
  if (v28)
  {
    v13 = MEMORY[0x1E69E7CC0];
    do
    {
      v26[0] = v28;
      v26[1] = v29;
      v27 = v30;
      v24 = 60;
      v25 = 0xE100000000000000;
      v14 = sub_1DB50BEE0();
      MEMORY[0x1E1285C70](v14);

      MEMORY[0x1E1285C70](62, 0xE100000000000000);
      v15 = v24;
      v16 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DB302404(0, *(v13 + 2) + 1, 1, v13);
      }

      v18 = *(v13 + 2);
      v17 = *(v13 + 3);
      if (v18 >= v17 >> 1)
      {
        v13 = sub_1DB302404((v17 > 1), v18 + 1, 1, v13);
      }

      sub_1DB30BF1C(v26);
      *(v13 + 2) = v18 + 1;
      v19 = &v13[16 * v18];
      *(v19 + 4) = v15;
      *(v19 + 5) = v16;
      sub_1DB50B170();
    }

    while (v28);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  (*(v23 + 8))(v12, AssociatedTypeWitness);
  *&v28 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43100, &unk_1DB511B70);
  sub_1DB367EE0(&qword_1EE30C840, &qword_1ECC43100, &unk_1DB511B70);
  v20 = sub_1DB50A5E0();

  return v20;
}

uint64_t sub_1DB40C9E8()
{
  v0 = sub_1DB50A270();
  __swift_allocate_value_buffer(v0, qword_1EE312DE8);
  __swift_project_value_buffer(v0, qword_1EE312DE8);
  return sub_1DB50A260();
}

void *BaseObjectGraph.__allocating_init(name:dependencies:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = swift_allocObject();
  v7 = *a3;
  result[3] = a1;
  result[4] = a2;
  result[2] = v7;
  return result;
}

void *BaseObjectGraph.init(name:dependencies:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v3[3] = a1;
  v3[4] = a2;
  v3[2] = v4;
  return v3;
}

uint64_t BaseObjectGraph.__allocating_init(_:)(void *a1)
{
  swift_beginAccess();
  v4 = a1[3];
  v3 = a1[4];
  v8 = a1[2];
  v5 = *(v1 + 96);

  v6 = v5(v4, v3, &v8);

  return v6;
}

uint64_t sub_1DB40CB68()
{
  v0 = sub_1DB30BC94();
  v6 = MEMORY[0x1E12859D0](0, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v0);
  sub_1DB307C9C(MEMORY[0x1E69E7CC0]);
  type metadata accessor for BaseObjectGraph();
  v1 = swift_allocObject();
  v1[3] = 0xD00000000000001BLL;
  v1[4] = 0x80000001DB52D920;
  v1[2] = v6;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC456D8, &qword_1DB51B3F0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_1DB50BEA0();
  qword_1EE30EAD0 = result;
  return result;
}

uint64_t sub_1DB40CC30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC456A0, &qword_1DB51B388);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  result = sub_1DB50BEA0();
  qword_1EE312DE0 = result;
  return result;
}

uint64_t sub_1DB40CCB4()
{
  if (qword_1EE30EAE0 != -1)
  {
    swift_once();
  }

  return sub_1DB50BEC0();
}

uint64_t sub_1DB40CD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB40CD9C, 0, 0);
}

uint64_t sub_1DB40CD9C()
{
  if (qword_1EE30EAE0 != -1)
  {
    swift_once();
  }

  v0[2] = v0[7];
  v1 = *(MEMORY[0x1E69E8950] + 4);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1DB40CEB4;
  v3 = v0[5];
  v4 = v0[3];
  v5 = v0[4];
  v8 = v0[6];

  return MEMORY[0x1EEE6DE98](v4, v0 + 2, v5, v3, 0, 0, 0xD00000000000001DLL, 0x80000001DB52D7F0);
}

uint64_t sub_1DB40CEB4()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB40CFE8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1DB40D000(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 32);
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
}

uint64_t sub_1DB40D060()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_1DB40D0AC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

void *sub_1DB40D154()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1DB324338(*(v1 + 16), 0);
  v4 = sub_1DB324740(&v6, v3 + 4, v2, v1);

  sub_1DB2FEA60();
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1DB40D228(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v10 = v2[2];

  DependencyDictionary.replace<A>(dependencies:)(a1, a2);
  swift_beginAccess();
  v8 = v2[3];
  v9 = v2[4];

  MEMORY[0x1E1285C70](1528834848, 0xE400000000000000);
  v6 = sub_1DB40C6BC(a1, a2);
  MEMORY[0x1E1285C70](v6);

  MEMORY[0x1E1285C70](93, 0xE100000000000000);
  return (*(v5 + 96))(v8, v9, &v10);
}

uint64_t sub_1DB40D33C(uint64_t *a1)
{
  v2 = *v1;
  v10 = v1[2];
  v3 = *a1;
  v4 = v2;
  sub_1DB300B14((a1 + 1), v8);

  sub_1DB381A90(v8, v3, v9);
  sub_1DB30623C(v9, &qword_1ECC426B0, &qword_1DB50EEB0);
  swift_beginAccess();
  v5 = v1[4];
  *&v8[0] = v1[3];
  *(&v8[0] + 1) = v5;

  MEMORY[0x1E1285C70](2108192, 0xE300000000000000);
  v6 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v6);

  return (*(v4 + 96))(*&v8[0], *(&v8[0] + 1), &v10);
}

uint64_t sub_1DB40D468(void *a1, void (*a2)(uint64_t, uint64_t (*)@<X0>(void *a1@<X0>, void *a2@<X8>), void, uint64_t, void *))
{
  v5 = v2[2];
  v6 = a1[2];
  v7 = *v2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15[0] = v5;
  a2(v6, sub_1DB381A80, 0, isUniquelyReferenced_nonNull_native, v15);

  v9 = v15[0];

  swift_beginAccess();
  v10 = v2[4];
  v16 = v2[3];
  v17 = v10;

  MEMORY[0x1E1285C70](2108192, 0xE300000000000000);
  swift_beginAccess();
  v11 = a1[3];
  v12 = a1[4];

  MEMORY[0x1E1285C70](v11, v12);

  v13 = v16;
  v16 = v9;
  return (*(v7 + 96))(v13, v17, &v16);
}

uint64_t sub_1DB40D614(uint64_t a1)
{
  v3 = *v1;
  v8 = v1[2];

  DependencyDictionary.remove(dependencyFor:)(a1);
  swift_beginAccess();
  v6 = v1[3];
  v7 = v1[4];

  MEMORY[0x1E1285C70](2108704, 0xE300000000000000);
  v4 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v4);

  return (*(v3 + 96))(v6, v7, &v8);
}

uint64_t sub_1DB40D738(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a6;
  v29 = a7;
  v27 = a5;
  v25 = a4;
  v30 = *v7;
  v11 = sub_1DB50B340();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - v14;
  v16 = sub_1DB50B510();
  v26 = *(v16 - 8);
  v17 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v25 - v18;
  v33 = v7[2];

  v25(a1, a2, a3);
  MEMORY[0x1E1285DC0](a2, a3);
  swift_getWitnessTable();
  sub_1DB50B650();
  (*(v12 + 8))(v15, v11);
  swift_getWitnessTable();
  sub_1DB301E30();
  v20 = sub_1DB50A900();
  v22 = v21;
  (*(v26 + 8))(v19, v16);
  swift_beginAccess();
  v23 = v7[4];
  v31 = v7[3];
  v32 = v23;

  MEMORY[0x1E1285C70](v28, v29);
  MEMORY[0x1E1285C70](v20, v22);

  MEMORY[0x1E1285C70](93, 0xE100000000000000);
  return (*(v30 + 96))(v31, v32, &v33);
}

uint64_t sub_1DB40DA1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42DA8, &qword_1DB50FA88);
  result = sub_1DB50A6C0();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_1DB40DA70(uint64_t a1, uint64_t a2)
{
  sub_1DB50B320();

  v32[0] = 0xD000000000000015;
  v32[1] = 0x80000001DB52D810;
  v5 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v5);

  MEMORY[0x1E1285C70](0x20646E756F66203ELL, 0xEC00000022206E69);
  swift_beginAccess();
  v6 = v2[3];
  v7 = v2[4];

  MEMORY[0x1E1285C70](v6, v7);

  MEMORY[0x1E1285C70](11810, 0xE200000000000000);
  v33 = 0xD000000000000015;
  v34 = 0x80000001DB52D810;
  v8 = v2[2];
  v32[0] = v8;

  v9 = DependencyDictionary.types<A>(compatibleWith:)(a1, a2);

  if (*(v9 + 2))
  {
    v32[2] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45680, &qword_1DB51C740);
    sub_1DB41114C();
    v10 = sub_1DB50A5E0();
    v12 = v11;

    sub_1DB50B320();

    strcpy(v32, " Did you mean ");
    HIBYTE(v32[1]) = -18;
    MEMORY[0x1E1285C70](v10, v12);

    MEMORY[0x1E1285C70](63, 0xE100000000000000);
    MEMORY[0x1E1285C70](v32[0], v32[1]);

    MEMORY[0x1E1285C70](0xD000000000000034, 0x80000001DB52D830);
    MEMORY[0x1E1285C70](0xD000000000000023, 0x80000001DB52D870);
    return v33;
  }

  v13 = *(v8 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (!v13)
  {
    goto LABEL_6;
  }

  v15 = sub_1DB324338(*(v8 + 16), 0);
  v16 = sub_1DB324740(v32, v15 + 4, v13, v8);

  sub_1DB2FEA60();
  if (v16 != v13)
  {
    __break(1u);
LABEL_6:
    v15 = v14;
  }

  v32[0] = v15;

  sub_1DB4102CC(v32);

  v17 = v32[0];
  v18 = *(v32[0] + 2);
  if (v18)
  {
    sub_1DB34130C(0, v18, 0);
    v19 = 32;
    v20 = v14;
    do
    {
      v21 = *&v17[v19];
      v32[0] = 60;
      v32[1] = 0xE100000000000000;
      v22 = sub_1DB50BEE0();
      MEMORY[0x1E1285C70](v22);

      MEMORY[0x1E1285C70](62, 0xE100000000000000);
      v23 = v32[0];
      v24 = v32[1];
      v26 = *(v20 + 2);
      v25 = *(v20 + 3);
      if (v26 >= v25 >> 1)
      {
        sub_1DB34130C((v25 > 1), v26 + 1, 1);
      }

      *(v20 + 2) = v26 + 1;
      v27 = &v20[16 * v26];
      *(v27 + 4) = v23;
      *(v27 + 5) = v24;
      v19 += 8;
      --v18;
    }

    while (v18);
  }

  else
  {

    v20 = MEMORY[0x1E69E7CC0];
  }

  v32[0] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43100, &unk_1DB511B70);
  sub_1DB367EE0(&qword_1EE30C840, &qword_1ECC43100, &unk_1DB511B70);
  v28 = sub_1DB50A5E0();
  v30 = v29;

  strcpy(v32, " Candidates: ");
  HIWORD(v32[1]) = -4864;
  MEMORY[0x1E1285C70](v28, v30);

  MEMORY[0x1E1285C70](v32[0], v32[1]);

  return v33;
}

uint64_t sub_1DB40DF1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v4);

  result = MEMORY[0x1E1285C70](62, 0xE100000000000000);
  *a2 = 60;
  a2[1] = 0xE100000000000000;
  return result;
}

void sub_1DB40DF90(uint64_t a1, uint64_t a2)
{
  sub_1DB40DA70(a1, a2);
  sub_1DB50B580();
  __break(1u);
}

uint64_t sub_1DB40E030()
{
  v1 = *v0;
  v5 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](8744, 0xE200000000000000);
  swift_beginAccess();
  v3 = v0[3];
  v2 = v0[4];

  MEMORY[0x1E1285C70](v3, v2);

  MEMORY[0x1E1285C70](2112290, 0xE300000000000000);
  MEMORY[0x1E1285C70](0xD000000000000014, 0x80000001DB52D8A0);
  MEMORY[0x1E1285C70](41, 0xE100000000000000);
  return v5;
}

uint64_t BaseObjectGraph.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t BaseObjectGraph.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t BaseObjectGraph._inject<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1DB50B120();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  BaseObjectGraph._injectIfAvailable<A>(_:)();
  v11 = *(a2 - 8);
  if ((*(v11 + 48))(v10, 1, a2) == 1)
  {
    (*(v7 + 8))(v10, v6);
    sub_1DB40DF90(a1, a2);
  }

  return (*(v11 + 32))(a3, v10, a2);
}

uint64_t BaseObjectGraph._hasDependency<A>(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);

  LOBYTE(a2) = sub_1DB37D0E0(a1, a2);

  return a2 & 1;
}

uint64_t BaseObjectGraph._dependencyPersonality<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v8 = *(v3 + 16);

  sub_1DB37D214(a1, a2, a3);
}

uint64_t BaseObjectGraph.dependencies<A>(compatibleWith:)()
{
  v3 = *(v0 + 16);

  v1 = sub_1DB37DAF8();

  return v1;
}

uint64_t sub_1DB40E45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB40E480, 0, 0);
}

uint64_t sub_1DB40E480()
{
  v0[2] = *(v0[4] + 16);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1DB40E528;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];

  return sub_1DB37ECE8(v4, v2, v3);
}

uint64_t sub_1DB40E528()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1DB40E63C;
  }

  else
  {
    v3 = sub_1DB2FEB3C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t BaseObjectGraph._inject<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v7 = sub_1DB50B120();
  v4[6] = v7;
  v8 = *(v7 - 8);
  v4[7] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v4[8] = v10;
  v11 = swift_task_alloc();
  v4[9] = v11;
  *v11 = v4;
  v11[1] = sub_1DB40E76C;

  return BaseObjectGraph._injectIfAvailable<A>(_:)(v10, a2, a3);
}

uint64_t sub_1DB40E76C()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1DB411C88;
  }

  else
  {
    v3 = sub_1DB411C8C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t BaseObjectGraph._withDependenciesResolved<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[7] = *v3;
  v5 = sub_1DB50B340();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v8 = sub_1DB50B510();
  v4[11] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB40E9B4, 0, 0);
}

uint64_t sub_1DB40E9B4()
{
  v1 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[6];
  v8 = v0[3];
  MEMORY[0x1E1285DC0](v0[4], v0[5]);
  swift_getWitnessTable();
  sub_1DB50B650();
  (*(v4 + 8))(v3, v6);
  sub_1DB30BC94();
  swift_getWitnessTable();
  v9 = sub_1DB50AE00();
  v0[13] = v9;
  v10 = swift_task_alloc();
  v0[14] = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = v7;
  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = sub_1DB40EB68;
  v12 = v0[6];

  return sub_1DB40CD74((v0 + 2), &unk_1DB51B2F8, v10, v5);
}

uint64_t sub_1DB40EB68()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v8 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_1DB40ED04;
  }

  else
  {
    v5 = *(v2 + 104);
    v6 = *(v2 + 112);

    v4 = sub_1DB40EC8C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB40EC8C()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[2];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1DB40ED04()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[10];

  v5 = v0[1];
  v6 = v0[16];

  return v5();
}

uint64_t sub_1DB40ED90(uint64_t a1, uint64_t a2, void *a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v3[11] = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1DB40EDDC, 0, 0);
}

uint64_t sub_1DB40EDDC()
{
  v1 = v0[9];
  v2 = v0[10];
  swift_beginAccess();
  v0[12] = v2[3];
  v0[13] = v2[4];
  v3 = v2[2];
  v0[7] = v1;

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44120, &qword_1DB514148);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *(v5 + 16) = v0 + 7;
  *(v5 + 24) = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC456A8, &qword_1DB51B3A0);
  v7 = *(MEMORY[0x1E69E88A0] + 4);
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_1DB40EF2C;

  return MEMORY[0x1EEE6DD58](v0 + 5, v4, v6, 0, 0, &unk_1DB51B398, v5, v4);
}

uint64_t sub_1DB40EF2C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  v2[16] = v0;

  v5 = v2[14];
  if (v0)
  {
    v6 = v2[13];

    v7 = sub_1DB40F134;
  }

  else
  {

    v7 = sub_1DB40F074;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DB40F074()
{
  v10 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 104);
  if (*(v0 + 48))
  {
    v3 = *(v0 + 104);

    swift_willThrow();
  }

  else
  {
    v6 = *(v0 + 88);
    v5 = *(v0 + 96);
    v7 = *(v0 + 64);
    v9 = *(v0 + 40);
    *v7 = (*(v6 + 96))(v5, v2, &v9);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DB40F14C(uint64_t a1, void *a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v2[10] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB40F194, 0, 0);
}

uint64_t sub_1DB40F194()
{
  v1 = v0[9];
  swift_beginAccess();
  v0[11] = v1[3];
  v0[12] = v1[4];
  v2 = v1[2];

  v0[7] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44120, &qword_1DB514148);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *(v4 + 16) = v0 + 7;
  *(v4 + 24) = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC456A8, &qword_1DB51B3A0);
  v6 = *(MEMORY[0x1E69E88A0] + 4);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1DB40F2E4;

  return MEMORY[0x1EEE6DD58](v0 + 5, v3, v5, 0, 0, &unk_1DB51B400, v4, v3);
}

uint64_t sub_1DB40F2E4()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  v2[15] = v0;

  v5 = v2[13];
  if (v0)
  {
    v6 = v2[12];

    v7 = sub_1DB40F4EC;
  }

  else
  {

    v7 = sub_1DB40F42C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DB40F42C()
{
  v10 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 96);
  if (*(v0 + 48))
  {
    v3 = *(v0 + 96);

    swift_willThrow();
  }

  else
  {
    v6 = *(v0 + 80);
    v5 = *(v0 + 88);
    v7 = *(v0 + 64);
    v9 = *(v0 + 40);
    *v7 = (*(v6 + 96))(v5, v2, &v9);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DB40F504(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DB30C7A0;

  return sub_1DB40F14C(a1, v1);
}

uint64_t sub_1DB40F5E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DB30C7A0;

  return sub_1DB40E45C(a1, v5, v6, v4);
}

uint64_t _s7JetCore15BaseObjectGraphC10injectSyncyxxmAA0G10DependencyRzlF_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1DB50B120();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - v10;
  v14[1] = *(v3 + 16);
  DependencyDictionary.subscript.getter(a1, a2, v14 - v10);
  v12 = *(a2 - 8);
  if ((*(v12 + 48))(v11, 1, a2) == 1)
  {
    (*(v8 + 8))(v11, v7);
    sub_1DB40DF90(a1, a2);
  }

  return (*(v12 + 32))(a3, v11, a2);
}

uint64_t BaseObjectGraph.injectSyncThrowing<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return sub_1DB40F8C4(a1, a2, a3);
}

{
  return sub_1DB40F8C4(a1, a2, a3);
}

uint64_t BaseObjectGraph.injectIfAvailableSyncThrowing<A>(_:)()
{
  return sub_1DB40FA88();
}

{
  return sub_1DB40FA88();
}

uint64_t sub_1DB40F8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = sub_1DB50B120();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15[-v11];
  v16 = a2;
  v17 = v3;
  v18 = a1;
  result = sub_1DB40CCB4();
  if (!v4)
  {
    v14 = *(a2 - 8);
    if ((*(v14 + 48))(v12, 1, a2) == 1)
    {
      (*(v9 + 8))(v12, v8);
      sub_1DB40DF90(a1, a2);
    }

    return (*(v14 + 32))(a3, v12, a2);
  }

  return result;
}

uint64_t BaseObjectGraph.injectAsyncThrowing<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v7 = sub_1DB50B120();
  v4[6] = v7;
  v8 = *(v7 - 8);
  v4[7] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v4[8] = v10;
  v11 = swift_task_alloc();
  v4[9] = v11;
  *v11 = v4;
  v11[1] = sub_1DB40FC00;

  return BaseObjectGraph.injectIfAvailableAsyncThrowing<A>(_:)(v10, a2, a3);
}

uint64_t sub_1DB40FC00()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1DB40FE38;
  }

  else
  {
    v3 = sub_1DB40FD14;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB40FD14()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v6 = v0[6];
    v7 = v0[7];
    v8 = v1;
    v9 = v0[5];
    v10 = v0[3];
    (*(v7 + 8))(v8, v6);
    sub_1DB40DF90(v10, v2);
  }

  (*(v3 + 32))(v0[2], v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB40FE38()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t BaseObjectGraph.injectIfAvailableAsyncThrowing<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB40FEC0, 0, 0);
}

uint64_t sub_1DB40FEC0()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = sub_1DB50B120();
  *v3 = v0;
  v3[1] = sub_1DB40FFB0;
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);

  return sub_1DB40CD74(v6, &unk_1DB51B318, v2, v4);
}

uint64_t sub_1DB40FFB0()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB411CB0, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1DB4100EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB410110, 0, 0);
}

uint64_t sub_1DB410110()
{
  v0[2] = *(v0[4] + 16);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1DB4101B8;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];

  return sub_1DB37ECE8(v4, v2, v3);
}

uint64_t sub_1DB4101B8()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1DB411C84;
  }

  else
  {
    v3 = sub_1DB3F253C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB4102CC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DB411080(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1DB410338(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1DB410338(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DB50B8D0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1DB50A9E0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1DB410548(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1DB410430(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DB410430(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = result - a3;
LABEL_6:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = sub_1DB50BEE0();
      v14 = v13;
      if (v12 == sub_1DB50BEE0() && v14 == v15)
      {

LABEL_5:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v17 = sub_1DB50BA30();

      if ((v17 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v10;
      result = v10[1];
      *v10 = result;
      v10[1] = v18;
      --v10;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DB410548(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v109 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_105:
    v7 = *v109;
    if (!*v109)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_107:
      v100 = *(v9 + 2);
      if (v100 >= 2)
      {
        while (1)
        {
          v101 = *v6;
          if (!*v6)
          {
            goto LABEL_141;
          }

          v6 = (v100 - 1);
          v102 = *&v9[16 * v100];
          v103 = *&v9[16 * v100 + 24];
          sub_1DB410C24((v101 + 8 * v102), (v101 + 8 * *&v9[16 * v100 + 16]), (v101 + 8 * v103), v7);
          if (v5)
          {
          }

          if (v103 < v102)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1DB410FB4(v9);
          }

          if (v100 - 2 >= *(v9 + 2))
          {
            goto LABEL_131;
          }

          v104 = &v9[16 * v100];
          *v104 = v102;
          *(v104 + 1) = v103;
          result = sub_1DB410F28(v100 - 1);
          v100 = *(v9 + 2);
          v6 = a3;
          if (v100 <= 1)
          {
          }
        }
      }
    }

LABEL_137:
    result = sub_1DB410FB4(v9);
    v9 = result;
    goto LABEL_107;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 >= v7)
    {
      goto LABEL_32;
    }

    v12 = *v6;
    v13 = *(*v6 + 8 * v11);
    v14 = *(*v6 + 8 * v8);
    v15 = sub_1DB50BEE0();
    v17 = v16;
    v19 = 0;
    if (v15 != sub_1DB50BEE0() || v17 != v18)
    {
      v19 = sub_1DB50BA30();
    }

    v11 = v10 + 2;
    if (v10 + 2 >= v7)
    {
      goto LABEL_24;
    }

    v21 = v5;
    v106 = v10;
    v22 = (v12 + 8 * v10 + 16);
    while (1)
    {
      v24 = v11;
      v26 = *(v22 - 1);
      v25 = *v22;
      v27 = sub_1DB50BEE0();
      v29 = v28;
      if (v27 == sub_1DB50BEE0() && v29 == v30)
      {

        if (v19)
        {
          v5 = v21;
          v6 = a3;
          v11 = v24;
          v10 = v106;
          goto LABEL_25;
        }

        goto LABEL_13;
      }

      v23 = sub_1DB50BA30();

      if ((v19 ^ v23))
      {
        break;
      }

LABEL_13:
      v11 = (v24 + 1);
      ++v22;
      if (v7 == v24 + 1)
      {
        v11 = v7;
        v5 = v21;
        v6 = a3;
        goto LABEL_23;
      }
    }

    v5 = v21;
    v6 = a3;
    v11 = v24;
LABEL_23:
    v10 = v106;
LABEL_24:
    if (v19)
    {
LABEL_25:
      if (v11 < v10)
      {
        goto LABEL_134;
      }

      if (v10 < v11)
      {
        v32 = 8 * v11 - 8;
        v33 = 8 * v10;
        v34 = v11;
        v35 = v10;
        do
        {
          if (v35 != --v34)
          {
            v36 = *v6;
            if (!*v6)
            {
              goto LABEL_140;
            }

            v37 = *(v36 + v33);
            *(v36 + v33) = *(v36 + v32);
            *(v36 + v32) = v37;
          }

          ++v35;
          v32 -= 8;
          v33 += 8;
        }

        while (v35 < v34);
      }
    }

LABEL_32:
    v38 = v6[1];
    if (v11 >= v38)
    {
      goto LABEL_54;
    }

    if (__OFSUB__(v11, v10))
    {
      goto LABEL_133;
    }

    if (v11 - v10 >= a4)
    {
LABEL_54:
      if (v11 < v10)
      {
        goto LABEL_132;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v113 = v11;
      if ((result & 1) == 0)
      {
        result = sub_1DB3039BC(0, *(v9 + 2) + 1, 1, v9);
        v9 = result;
      }

      v55 = *(v9 + 2);
      v54 = *(v9 + 3);
      v56 = v55 + 1;
      if (v55 >= v54 >> 1)
      {
        result = sub_1DB3039BC((v54 > 1), v55 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 2) = v56;
      v57 = &v9[16 * v55];
      *(v57 + 4) = v10;
      *(v57 + 5) = v11;
      v58 = *v109;
      if (!*v109)
      {
        goto LABEL_142;
      }

      if (!v55)
      {
LABEL_3:
        v7 = v6[1];
        v8 = v113;
        if (v113 >= v7)
        {
          goto LABEL_105;
        }

        continue;
      }

      while (1)
      {
        v59 = v56 - 1;
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v60 = *(v9 + 4);
          v61 = *(v9 + 5);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_74:
          if (v63)
          {
            goto LABEL_121;
          }

          v76 = &v9[16 * v56];
          v78 = *v76;
          v77 = *(v76 + 1);
          v79 = __OFSUB__(v77, v78);
          v80 = v77 - v78;
          v81 = v79;
          if (v79)
          {
            goto LABEL_124;
          }

          v82 = &v9[16 * v59 + 32];
          v84 = *v82;
          v83 = *(v82 + 1);
          v70 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v70)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v80, v85))
          {
            goto LABEL_128;
          }

          if (v80 + v85 >= v62)
          {
            if (v62 < v85)
            {
              v59 = v56 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v86 = &v9[16 * v56];
        v88 = *v86;
        v87 = *(v86 + 1);
        v70 = __OFSUB__(v87, v88);
        v80 = v87 - v88;
        v81 = v70;
LABEL_88:
        if (v81)
        {
          goto LABEL_123;
        }

        v89 = &v9[16 * v59];
        v91 = *(v89 + 4);
        v90 = *(v89 + 5);
        v70 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v70)
        {
          goto LABEL_126;
        }

        if (v92 < v80)
        {
          goto LABEL_3;
        }

LABEL_95:
        v97 = v59 - 1;
        if (v59 - 1 >= v56)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v6)
        {
          goto LABEL_139;
        }

        v98 = *&v9[16 * v97 + 32];
        v7 = *&v9[16 * v59 + 40];
        sub_1DB410C24((*v6 + 8 * v98), (*v6 + 8 * *&v9[16 * v59 + 32]), (*v6 + 8 * v7), v58);
        if (v5)
        {
        }

        if (v7 < v98)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1DB410FB4(v9);
        }

        if (v97 >= *(v9 + 2))
        {
          goto LABEL_118;
        }

        v99 = &v9[16 * v97];
        *(v99 + 4) = v98;
        *(v99 + 5) = v7;
        result = sub_1DB410F28(v59);
        v56 = *(v9 + 2);
        if (v56 <= 1)
        {
          goto LABEL_3;
        }
      }

      v64 = &v9[16 * v56 + 32];
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_119;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_120;
      }

      v71 = &v9[16 * v56];
      v73 = *v71;
      v72 = *(v71 + 1);
      v70 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v70)
      {
        goto LABEL_122;
      }

      v70 = __OFADD__(v62, v74);
      v75 = v62 + v74;
      if (v70)
      {
        goto LABEL_125;
      }

      if (v75 >= v67)
      {
        v93 = &v9[16 * v59 + 32];
        v95 = *v93;
        v94 = *(v93 + 1);
        v70 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v70)
        {
          goto LABEL_129;
        }

        if (v62 < v96)
        {
          v59 = v56 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

    break;
  }

  v39 = (v10 + a4);
  if (__OFADD__(v10, a4))
  {
    goto LABEL_135;
  }

  if (v39 >= v38)
  {
    v39 = v6[1];
  }

  if (v39 < v10)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v11 == v39)
  {
    goto LABEL_54;
  }

  v105 = v5;
  v107 = v10;
  v40 = *v6;
  v41 = *v6 + 8 * v11 - 8;
  v42 = (v10 - v11);
  v111 = v39;
LABEL_43:
  v112 = v11;
  v43 = *(v40 + 8 * v11);
  v7 = v42;
  v44 = v41;
  while (1)
  {
    v45 = *v44;
    v46 = sub_1DB50BEE0();
    v48 = v47;
    if (v46 == sub_1DB50BEE0() && v48 == v49)
    {

LABEL_42:
      v11 = v112 + 1;
      v41 += 8;
      --v42;
      if ((v112 + 1) == v111)
      {
        v11 = v111;
        v5 = v105;
        v10 = v107;
        v6 = a3;
        goto LABEL_54;
      }

      goto LABEL_43;
    }

    v51 = sub_1DB50BA30();

    if ((v51 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v40)
    {
      break;
    }

    v52 = *v44;
    *v44 = v44[1];
    v44[1] = v52;
    --v44;
    if (__CFADD__(v7++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_1DB410C24(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_47;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6;
      v17 = *v4;
      v18 = sub_1DB50BEE0();
      v20 = v19;
      v22 = v18 == sub_1DB50BEE0() && v20 == v21;
      if (v22)
      {
        break;
      }

      v23 = sub_1DB50BA30();

      if ((v23 & 1) == 0)
      {
        goto LABEL_22;
      }

      v15 = v6;
      v22 = v7 == v6;
      v6 += 8;
      if (!v22)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

LABEL_22:
    v15 = v4;
    v22 = v7 == v4;
    v4 += 8;
    if (v22)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_30:
    v35 = v6;
    v24 = v6 - 8;
    v5 -= 8;
    v25 = v14;
    while (1)
    {
      v26 = *(v25 - 1);
      v25 -= 8;
      v6 = v24;
      v27 = *v24;
      v28 = sub_1DB50BEE0();
      v30 = v29;
      if (v28 == sub_1DB50BEE0() && v30 == v31)
      {
      }

      else
      {
        v33 = sub_1DB50BA30();

        if (v33)
        {
          if (v5 + 8 != v35)
          {
            *v5 = *v6;
          }

          if (v14 <= v4 || v6 <= v7)
          {
            break;
          }

          goto LABEL_30;
        }
      }

      v24 = v6;
      if (v5 + 8 != v14)
      {
        *v5 = *v25;
      }

      v5 -= 8;
      v14 = v25;
      if (v25 <= v4)
      {
        v14 = v25;
        v6 = v35;
        break;
      }
    }
  }

LABEL_47:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_1DB410F28(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DB410FB4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1DB410FC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DB306AF4;

  return sub_1DB409408(a1, a2, v8, a4);
}

uint64_t sub_1DB411094(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DB30C7A0;

  return sub_1DB40AB48(a1, a2, v8, a4);
}

unint64_t sub_1DB41114C()
{
  result = qword_1ECC45688;
  if (!qword_1ECC45688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC45680, &qword_1DB51C740);
    sub_1DB367EE0(&qword_1ECC45690, &qword_1ECC45698, &qword_1DB51B2D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC45688);
  }

  return result;
}

uint64_t sub_1DB4111E8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DB30C7A0;

  return sub_1DB40ED90(a1, v5, v4);
}

uint64_t sub_1DB4112E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DB30C7A0;

  return sub_1DB4100EC(a1, v5, v6, v4);
}

uint64_t dispatch thunk of BaseObjectGraph.performAsCurrent<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 112);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1DB306AF4;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_1DB411758(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DB30C7A0;

  return sub_1DB411094(a1, a2, v7, v6);
}

uint64_t sub_1DB411820(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44120, &qword_1DB514148);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB411890(uint64_t a1)
{
  v2 = type metadata accessor for _ResolvedDependency();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DB4118EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DB30C7A0;

  return sub_1DB380CC0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DB4119B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DB30C7A0;

  return sub_1DB3809E8(a1, v4, v5, v6, (v1 + 5));
}

uint64_t objectdestroy_34Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DB411AB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DB30C7A0;

  return sub_1DB3807EC(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1DB411B74(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DB30C7A0;

  return sub_1DB410FC8(a1, a2, v7, v6);
}

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

double ComponentModel.contextMenu.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t ComponentTypes.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC456E0, &qword_1DB51B448);
  swift_getTupleTypeMetadata2();
  v7 = sub_1DB50A9D0();
  v8 = sub_1DB4EA020(v7, a1, v6, a2);

  a3[2] = v8;
  return result;
}

uint64_t ComponentTypes.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC456E0, &qword_1DB51B448);
  swift_getTupleTypeMetadata2();
  v9 = sub_1DB50A9D0();
  v10 = sub_1DB4EA020(v9, a3, v8, a4);

  a5[2] = v10;
  return result;
}

uint64_t ComponentTypes.registering(_:toKind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v11 = *(a4 + 16);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = *(v5 + 16);
  *a5 = *v5;
  *(a5 + 16) = v14;
  (*(v15 + 16))(v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v11);
  v19[1] = a1;
  v19[2] = a2;
  v19[3] = a3;

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC456E0, &qword_1DB51B448);
  v17 = *(a4 + 24);
  sub_1DB50A540();
  return sub_1DB50A5A0();
}

void ComponentTypes.makeInstance(ofKind:byDeserializing:using:)(uint64_t a1@<X1>, uint64_t *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v78 = a1;
  v65 = a4;
  v7 = sub_1DB50B3E0();
  v64 = *(v7 - 8);
  v8 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v61 - v12;
  v14 = *a2;
  v15 = *v4;
  v66 = v4[1];
  v16 = v4[2];
  v17 = a3[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC456E0, &qword_1DB51B448);
  v18 = a3[3];
  sub_1DB50A590();
  v19 = v72;
  if (v72)
  {
    v21 = v73;
    v20 = v74;
    goto LABEL_3;
  }

  v63 = v13;
  v62 = v10;
  if (!v15)
  {
    v37 = a3[4];
LABEL_14:
    sub_1DB50A910();
    v38 = v72;
    v39 = v73;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC456E8, &qword_1DB51B450) | 0x6000000000000000;
    sub_1DB315178();
    swift_allocError();
    *v41 = v38;
    v41[1] = v39;
    v41[2] = v40;
    v41[3] = 0;
LABEL_15:
    swift_willThrow();
    return;
  }

  v24 = (*(v66 + 16))(v15);
  v25 = a3[4];
  sub_1DB50A910();
  if (!*(v24 + 16))
  {

    goto LABEL_13;
  }

  v26 = sub_1DB306160(v72, v73);
  v28 = v27;

  if ((v28 & 1) == 0)
  {
LABEL_13:

    goto LABEL_14;
  }

  v29 = *(*(v24 + 56) + 16 * v26);

  v30 = dynamic_cast_existential_2_conditional(v29);
  if (v30)
  {
    v19 = v30;
    v21 = v31;
    v20 = v32;
LABEL_3:
    sub_1DB3171C0(v78, v69);
    v68[0] = v14;
    v22 = *(v20 + 8);
    *&v75 = v19;
    *(&v75 + 1) = v21;
    v76 = v20;
    __swift_allocate_boxed_opaque_existential_0(&v72);

    v23 = v67;
    v22(v69, v68, v19, v20);
    if (v23)
    {
      __swift_deallocate_boxed_opaque_existential_0(&v72);
    }

    else
    {
      v67 = v75;
      v33 = v75;
      v34 = __swift_project_boxed_opaque_existential_1(&v72, v75);
      v35 = v65;
      *(v65 + 24) = v67;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v35);
      (*(*(v33 - 8) + 16))(boxed_opaque_existential_0, v34, v33);
      __swift_destroy_boxed_opaque_existential_0(&v72);
    }

    return;
  }

  v44 = dynamic_cast_existential_2_conditional(v29);
  v45 = v67;
  if (!v44)
  {
    sub_1DB315178();
    swift_allocError();
    v55 = MEMORY[0x1E69E7CC0];
    *v56 = v29;
    v56[1] = v55;
    v56[2] = 0;
    v56[3] = 0;
    goto LABEL_15;
  }

  v46 = v42;
  v47 = v43;
  sub_1DB3171C0(v78, &v72);
  v69[0] = v14;

  v76 = _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(v69);
  v77 = MEMORY[0x1E69E7CC0];
  v68[3] = &type metadata for _JSONObjectDecoder;
  v68[4] = sub_1DB34A154();
  v68[0] = swift_allocObject();
  sub_1DB34A1A8(&v72, v68[0] + 16);
  *&v70 = v44;
  *(&v70 + 1) = v46;
  v71 = v47;
  __swift_allocate_boxed_opaque_existential_0(v69);
  sub_1DB50ADB0();
  if (v45)
  {
    sub_1DB34A204(&v72);
    __swift_deallocate_boxed_opaque_existential_0(v69);
    v72 = v45;
    v48 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    v49 = v63;
    if (swift_dynamicCast())
    {

      v50 = v64;
      v51 = v62;
      (*(v64 + 32))(v62, v49, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC470F0, &unk_1DB50F4B0);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1DB50EE90;
      *(v52 + 32) = swift_allocError();
      (*(v50 + 16))(v53, v51, v7);
      sub_1DB315178();
      swift_allocError();
      *v54 = v44;
      v54[1] = v52;
      v54[2] = 0;
      v54[3] = 0;
      swift_willThrow();
      (*(v50 + 8))(v51, v7);
    }
  }

  else
  {
    v67 = v70;
    v57 = v70;
    v58 = __swift_project_boxed_opaque_existential_1(v69, v70);
    v59 = v65;
    *(v65 + 24) = v67;
    v60 = __swift_allocate_boxed_opaque_existential_0(v59);
    (*(*(v57 - 8) + 16))(v60, v58, v57);
    sub_1DB34A204(&v72);
    __swift_destroy_boxed_opaque_existential_0(v69);
  }
}

uint64_t sub_1DB41268C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB4126C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB412710(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1DB412794(uint64_t a1, uint64_t a2)
{
  sub_1DB50B320();

  MEMORY[0x1E1285C70](a1, a2);
  MEMORY[0x1E1285C70](10592, 0xE200000000000000);
  return 0xD000000000000026;
}

uint64_t sub_1DB412824(uint64_t a1, uint64_t a2)
{
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD000000000000030, 0x80000001DB52DA80);
  MEMORY[0x1E1285C70](a1, a2);
  MEMORY[0x1E1285C70](10592, 0xE200000000000000);
  return 0;
}

uint64_t Models.AdamID.init(from:)()
{
  sub_1DB414030();
  v0 = sub_1DB50B1F0();
  return _s7JetCore6ModelsO6AdamIDV8rawValueAESS_tcfC_0(v0, v1);
}

uint64_t Models.AdamID.init(from:)(void *a1)
{
  v2 = [a1 description];
  v3 = sub_1DB50A650();
  v5 = v4;

  v6 = _s7JetCore6ModelsO6AdamIDV8rawValueAESS_tcfC_0(v3, v5);
  return v6;
}

uint64_t Models.AdamID.uint64.getter(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v23[0] = result;
      v23[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v7 = 0;
            v15 = v23 + 1;
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                break;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                break;
              }

              v10 = __CFADD__(10 * v7, v16);
              v7 = 10 * v7 + v16;
              if (v10)
              {
                break;
              }

              ++v15;
              if (!--v3)
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
        if (v3)
        {
          v7 = 0;
          v18 = v23;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              break;
            }

            if (!is_mul_ok(v7, 0xAuLL))
            {
              break;
            }

            v10 = __CFADD__(10 * v7, v19);
            v7 = 10 * v7 + v19;
            if (v10)
            {
              break;
            }

            ++v18;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v3)
      {
        if (--v3)
        {
          v7 = 0;
          v11 = v23 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            if (!is_mul_ok(v7, 0xAuLL))
            {
              break;
            }

            v10 = 10 * v7 >= v12;
            v7 = 10 * v7 - v12;
            if (!v10)
            {
              break;
            }

            ++v11;
            if (!--v3)
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

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v7, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v10 = __CFADD__(10 * v7, v14);
                v7 = 10 * v7 + v14;
                if (v10)
                {
                  goto LABEL_63;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v17 = *result - 48;
              if (v17 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                goto LABEL_63;
              }

              v10 = __CFADD__(10 * v7, v17);
              v7 = 10 * v7 + v17;
              if (v10)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        v7 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                goto LABEL_63;
              }

              v10 = 10 * v7 >= v9;
              v7 = 10 * v7 - v9;
              if (!v10)
              {
                goto LABEL_63;
              }

              ++v8;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v3) = 0;
LABEL_64:
          v24 = v3;
          v20 = v3;
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

  v21 = result;

  v7 = sub_1DB4132E4(v21, a2, 10);
  v20 = v22;

LABEL_65:
  if (v20)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}