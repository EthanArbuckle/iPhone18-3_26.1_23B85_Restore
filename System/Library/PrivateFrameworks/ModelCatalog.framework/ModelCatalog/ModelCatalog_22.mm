void sub_18E3EE960()
{
  sub_18E1C575C();
  v78 = *MEMORY[0x1E69E9840];
  sub_18E245EE8();
  sub_18E1C5D78();

  sub_18E292F20(v1);
  v2 = 0;
  v65 = *(v0 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  v66 = v0;
  v64 = v0 + 32;
  while (1)
  {
    if (v2 == v65)
    {

      v46 = *(v3 + 16);
      if (!v46)
      {
LABEL_40:

        v62 = *MEMORY[0x1E69E9840];
        sub_18E1C5544();
        return;
      }

      v47 = MEMORY[0x1E69E7CC0];
      v68 = v3;
      v48 = v3 + 32;
      while (1)
      {
        sub_18E1E8C38(v48, &v75);
        sub_18E1C551C(&v75, &v73);
        sub_18E2706EC(&qword_1EABE0EA0, &qword_18E49D250);
        sub_18E2706EC(&unk_1EABE33F0, &unk_18E49D240);
        if (swift_dynamicCast())
        {
          if (*(&v71 + 1))
          {
            sub_18E1C551C(&v70, &v73);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v69[0] = v47;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v59 = *(v47 + 16);
              sub_18E1CC468();
              sub_18E211EDC();
              v47 = v60;
              v69[0] = v60;
            }

            v50 = *(v47 + 24);
            if (*(v47 + 16) >= v50 >> 1)
            {
              sub_18E1C8C60(v50);
              sub_18E211EDC();
              v47 = v61;
              v69[0] = v61;
            }

            sub_18E274828(&v73, v74);
            sub_18E1C5780();
            v52 = *(v51 + 64);
            MEMORY[0x1EEE9AC00](v53);
            sub_18E1C4EDC();
            v55 = sub_18E1CAED4(v54);
            v57 = v56(v55);
            sub_18E2218AC(v57, v58, v69);
            sub_18E1C9934(&v73);
            goto LABEL_39;
          }
        }

        else
        {
          v72 = 0;
          v70 = 0u;
          v71 = 0u;
        }

        sub_18E1E8EEC(&v70, &qword_1EABE1018, &unk_18E4AAB70);
LABEL_39:
        v48 += 40;
        if (!--v46)
        {
          goto LABEL_40;
        }
      }
    }

    if (v2 >= *(v66 + 16))
    {
      __break(1u);
    }

    sub_18E1E8C38(v64 + 40 * v2, &v75);
    v4 = v77;
    sub_18E1E15F4(&v75, v76);
    v5 = *(v4 + 88);
    v6 = sub_18E1CDA2C();
    v8 = v7(v6, v4);
    v9 = *(v8 + 16);
    if (v9)
    {
      v67 = v2;
      v68 = 0;
      *&v73 = MEMORY[0x1E69E7CC0];
      sub_18E26F338(0, v9, 0);
      v10 = v73;
      v11 = *(v73 + 16);
      v12 = 32;
      do
      {
        v13 = *(v8 + v12);
        *&v73 = v10;
        v14 = *(v10 + 24);
        if (v11 >= v14 >> 1)
        {
          v15 = sub_18E1C8C60(v14);
          sub_18E26F338(v15, v11 + 1, 1);
          v10 = v73;
        }

        *(v10 + 16) = v11 + 1;
        *(v10 + v11 + 32) = v13;
        v12 += 3;
        ++v11;
        --v9;
      }

      while (v9);

      v2 = v67;
    }

    else
    {

      v10 = MEMORY[0x1E69E7CC0];
    }

    v16 = *(v10 + 16);
    v17 = sub_18E2871E8();
    *&v73 = MEMORY[0x193ACC550](v16, &type metadata for UseCaseIdentifier, v17);
    v18 = *(v10 + 16);
    if (v18)
    {
      v19 = (v10 + 32);
      do
      {
        v20 = *v19++;
        sub_18E27523C(v69, v20);
        --v18;
      }

      while (v18);
    }

    v21 = *(v73 + 32) & 0x3F;
    sub_18E1CF974();
    v23 = (v22 + 63) >> 6;

    if (v21 <= 0xD)
    {
      break;
    }

    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
      break;
    }

    swift_slowAlloc();

    sub_18E1D4950();
    v31 = sub_18E3F64D4(v40, v41, v42, v43, v44);
    v30 = v23;

    if (v23)
    {
      goto LABEL_43;
    }

    sub_18E1C6164();
    MEMORY[0x193ACD400]();
LABEL_17:
    v32 = v31[2];

    if (v32)
    {
      sub_18E1C551C(&v75, &v73);
      v33 = swift_isUniquelyReferenced_nonNull_native();
      *&v70 = v3;
      if ((v33 & 1) == 0)
      {
        v34 = *(v3 + 16);
        v35 = sub_18E1CC468();
        sub_18E22429C(v35, v36, v37);
        v3 = v70;
      }

      v39 = *(v3 + 16);
      v38 = *(v3 + 24);
      if (v39 >= v38 >> 1)
      {
        v45 = sub_18E1C8C60(v38);
        sub_18E22429C(v45, v39 + 1, 1);
        v3 = v70;
      }

      *(v3 + 16) = v39 + 1;
      sub_18E1C551C(&v73, v3 + 40 * v39 + 32);
    }

    else
    {
      sub_18E1C9934(&v75);
    }

    ++v2;
  }

  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  sub_18E3F1C90(0, v23, &v63 - ((8 * v23 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_18E1D4950();
  v29 = sub_18E3F68E8(v25, v26, v27, v28);
  v30 = v23;
  if (!v23)
  {
    v31 = v29;

    goto LABEL_17;
  }

  swift_willThrow();

  __break(1u);
LABEL_43:

  sub_18E1C6164();
  MEMORY[0x193ACD400]();
  __break(1u);
}

BOOL sub_18E3EEF88(void *a1, uint64_t a2)
{
  v38 = a2;
  if (qword_1ED6A94F8 != -1)
  {
    swift_once();
  }

  v3 = sub_18E44E83C();
  sub_18E1C95EC(v3, qword_1ED6A98C0);
  sub_18E1E8C38(a1, v40);
  v4 = sub_18E44E80C();
  v5 = sub_18E44EDFC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v43 = v7;
    *v6 = 136315138;
    v9 = v41;
    v8 = v42;
    sub_18E1E15F4(v40, v41);
    v10 = (*(*(v8 + 8) + 24))(v9);
    v12 = v11;
    sub_18E1C9934(v40);
    v13 = sub_18E1C9624(v10, v12, &v43);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_18E1C1000, v4, v5, "checking resource readiness: fetching asset for %s", v6, 0xCu);
    sub_18E1C9934(v7);
    MEMORY[0x193ACD400](v7, -1, -1);
    MEMORY[0x193ACD400](v6, -1, -1);
  }

  else
  {

    sub_18E1C9934(v40);
  }

  v14 = a1[3];
  v15 = a1[4];
  sub_18E1E15F4(a1, v14);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v37 - v19;
  v21 = v39;
  v40[0] = v38;
  (*(v15 + 40))(v40, v14, v15);
  if (v21)
  {
    sub_18E1E8C38(a1, v40);
    v22 = v21;
    v23 = sub_18E44E80C();
    v24 = sub_18E44EE2C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v43 = v27;
      *v25 = 136315394;
      v29 = v41;
      v28 = v42;
      sub_18E1E15F4(v40, v41);
      v30 = (*(*(v28 + 8) + 24))(v29);
      v32 = v31;
      sub_18E1C9934(v40);
      v33 = sub_18E1C9624(v30, v32, &v43);

      *(v25 + 4) = v33;
      *(v25 + 12) = 2112;
      v34 = v21;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v35;
      *v26 = v35;
      _os_log_impl(&dword_18E1C1000, v23, v24, "resource %s is not ready: %@", v25, 0x16u);
      sub_18E1E8EEC(v26, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v26, -1, -1);
      sub_18E1C9934(v27);
      MEMORY[0x193ACD400](v27, -1, -1);
      MEMORY[0x193ACD400](v25, -1, -1);
    }

    else
    {

      sub_18E1C9934(v40);
    }
  }

  else
  {
    (*(v17 + 8))(v20, AssociatedTypeWitness);
  }

  return v21 != 0;
}

BOOL static CatalogIndex.notReady(resources:coherentAssetLock:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = (a1 + 32);
  v5 = v3 + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = v4 + 5;
    v7 = sub_18E3EF44C(v4, a2);
    v4 = v6;
  }

  while (!v7);
  return v5 != 0;
}

BOOL sub_18E3EF44C(void *a1, uint64_t a2)
{
  v38 = a2;
  if (qword_1ED6A94F8 != -1)
  {
    swift_once();
  }

  v3 = sub_18E44E83C();
  sub_18E1C95EC(v3, qword_1ED6A98C0);
  sub_18E1E8C38(a1, v40);
  v4 = sub_18E44E80C();
  v5 = sub_18E44EDFC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v43 = v7;
    *v6 = 136315138;
    v9 = v41;
    v8 = v42;
    sub_18E1E15F4(v40, v41);
    v10 = (*(*(v8 + 8) + 24))(v9);
    v12 = v11;
    sub_18E1C9934(v40);
    v13 = sub_18E1C9624(v10, v12, &v43);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_18E1C1000, v4, v5, "checking resource readiness: fetching asset for %s", v6, 0xCu);
    sub_18E1C9934(v7);
    MEMORY[0x193ACD400](v7, -1, -1);
    MEMORY[0x193ACD400](v6, -1, -1);
  }

  else
  {

    sub_18E1C9934(v40);
  }

  v14 = a1[3];
  v15 = a1[4];
  sub_18E1E15F4(a1, v14);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v37 - v19;
  v21 = v39;
  (*(v15 + 48))(v38, v14, v15);
  if (v21)
  {
    sub_18E1E8C38(a1, v40);
    v22 = v21;
    v23 = sub_18E44E80C();
    v24 = sub_18E44EE2C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v43 = v27;
      *v25 = 136315394;
      v29 = v41;
      v28 = v42;
      sub_18E1E15F4(v40, v41);
      v30 = (*(*(v28 + 8) + 24))(v29);
      v32 = v31;
      sub_18E1C9934(v40);
      v33 = sub_18E1C9624(v30, v32, &v43);

      *(v25 + 4) = v33;
      *(v25 + 12) = 2112;
      v34 = v21;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v35;
      *v26 = v35;
      _os_log_impl(&dword_18E1C1000, v23, v24, "resource %s is not ready: %@", v25, 0x16u);
      sub_18E1E8EEC(v26, &unk_1EABE9120, &qword_18E4E3A90);
      MEMORY[0x193ACD400](v26, -1, -1);
      sub_18E1C9934(v27);
      MEMORY[0x193ACD400](v27, -1, -1);
      MEMORY[0x193ACD400](v25, -1, -1);
    }

    else
    {

      sub_18E1C9934(v40);
    }
  }

  else
  {
    (*(v17 + 8))(v20, AssociatedTypeWitness);
  }

  return v21 != 0;
}

uint64_t sub_18E3EF8A0()
{
  v0 = sub_18E44E29C();
  v2 = v1;
  if (v0 == sub_18E44E29C() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_18E44F3CC();
  }

  return v5 & 1;
}

void sub_18E3EF938()
{
  sub_18E1CADE0();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_18E1C5534();
  if (v7 == v8)
  {
LABEL_7:
    sub_18E1C5AD8(v6);
    if (v3)
    {
      sub_18E2706EC(&qword_1EABE2AE0, &unk_18E4AF6C0);
      v9 = sub_18E1DD5E0();
      sub_18E1C8D48(v9);
      sub_18E1C6250(v10);
      if (v1)
      {
LABEL_9:
        v11 = sub_18E1CB0D4();
        sub_18E26DEA0(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E7CC0];
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 16 * v2);
    goto LABEL_12;
  }

  sub_18E1E1CA8();
  if (!v7)
  {
    sub_18E1C5E88();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_18E3EF9F0()
{
  sub_18E1E2C04();
  if (v4)
  {
    sub_18E1D4CDC();
    if (v6 != v7)
    {
      sub_18E2168C8();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_18E1E6570();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_18E1E2F74(v2, v5, &qword_1EABE0E20, &unk_18E4E24C0);
  sub_18E1CD5E0();
  v9 = sub_18E44E2BC();
  sub_18E1D7EA8(v9);
  v11 = *(v10 + 80);
  sub_18E1C96E4();
  if (v1)
  {
    v13 = sub_18E1C97A8(v12);
    sub_18E26DE88(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_18E1E66F8();
  }
}

void sub_18E3EFAB8()
{
  sub_18E1CADE0();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_18E1C5534();
  if (v7 == v8)
  {
LABEL_7:
    sub_18E1C5AD8(v6);
    if (v3)
    {
      sub_18E2706EC(&qword_1EABE9040, &qword_18E4E2650);
      v9 = sub_18E1DD5E0();
      sub_18E1C8D48(v9);
      sub_18E1C6250(v10);
      if (v1)
      {
LABEL_9:
        v11 = sub_18E1CB0D4();
        sub_18E26DEE4(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E7CC0];
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy((v3 + 32), (v0 + 32), 3 * v2);
    goto LABEL_12;
  }

  sub_18E1E1CA8();
  if (!v7)
  {
    sub_18E1C5E88();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_18E3EFBA0()
{
  sub_18E1CADE0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_18E1C5534();
  if (v6 == v7)
  {
LABEL_7:
    sub_18E1C5AD8(v5);
    if (v2)
    {
      sub_18E2706EC(&qword_1EABE90C0, &qword_18E4E2698);
      v8 = sub_18E1DD5E0();
      sub_18E1C8D48(v8);
      sub_18E1C6250(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_18E1CB0D4();
        sub_18E26DF34(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_18E2706EC(&qword_1EABE90C8, &unk_18E4E26A0);
    sub_18E1CFC20();
    goto LABEL_12;
  }

  sub_18E1E1CA8();
  if (!v6)
  {
    sub_18E1C5E88();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_18E3EFC60()
{
  sub_18E1E2C04();
  if (v4)
  {
    sub_18E1D4CDC();
    if (v6 != v7)
    {
      sub_18E2168C8();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_18E1E6570();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_18E1E2F74(v2, v5, &qword_1EABE90B8, &qword_18E4E2688);
  sub_18E1CD5E0();
  v9 = type metadata accessor for SupportedLanguagesAndRegions.SupportedLanguageAndRegion();
  sub_18E1D7EA8(v9);
  v11 = *(v10 + 80);
  sub_18E1C96E4();
  if (v1)
  {
    v13 = sub_18E1C97A8(v12);
    sub_18E26DF54(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_18E1E66F8();
  }
}

void sub_18E3EFD28()
{
  sub_18E1E2C04();
  if (v4)
  {
    sub_18E1D4CDC();
    if (v6 != v7)
    {
      sub_18E2168C8();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_18E1E6570();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_18E1E2F74(v2, v5, &qword_1EABE90B0, &qword_18E4E2680);
  sub_18E1CD5E0();
  v9 = type metadata accessor for AvailableUseCases.AvailableUseCase();
  sub_18E1D7EA8(v9);
  v11 = *(v10 + 80);
  sub_18E1C96E4();
  if (v1)
  {
    v13 = sub_18E1C97A8(v12);
    sub_18E26DF6C(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_18E1E66F8();
  }
}

void sub_18E3EFE18()
{
  sub_18E1CADE0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_18E1C5534();
  if (v6 == v7)
  {
LABEL_7:
    sub_18E1C5AD8(v5);
    if (v2)
    {
      sub_18E2706EC(&qword_1EABE9098, &qword_18E4E2668);
      v8 = sub_18E1CA780();
      sub_18E1D61B8(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_18E1CB0D4();
        sub_18E26DFA8(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_18E223D80();
    goto LABEL_12;
  }

  sub_18E1E1CA8();
  if (!v6)
  {
    sub_18E1C5E88();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_18E3EFEC8()
{
  sub_18E1CADE0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_18E1C5534();
  if (v6 == v7)
  {
LABEL_7:
    sub_18E1C5AD8(v5);
    if (v2)
    {
      sub_18E2706EC(&qword_1EABE90A0, &qword_18E4E2670);
      v8 = sub_18E1DD5E0();
      sub_18E1C8D48(v8);
      sub_18E1C6250(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_18E1CB0D4();
        sub_18E26DFCC(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_18E2706EC(&unk_1EABE1150, &qword_18E49CE38);
    sub_18E1CFC20();
    goto LABEL_12;
  }

  sub_18E1E1CA8();
  if (!v6)
  {
    sub_18E1C5E88();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_18E3EFF88()
{
  sub_18E1E2C04();
  if (v4)
  {
    sub_18E1D4CDC();
    if (v6 != v7)
    {
      sub_18E2168C8();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_18E1E6570();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_18E1E2F74(v2, v5, &qword_1EABE1258, &qword_18E4E2660);
  sub_18E1CD5E0();
  v9 = type metadata accessor for UseCaseIdentifier.Metadata.Enablement.Criteria();
  sub_18E1D7EA8(v9);
  v11 = *(v10 + 80);
  sub_18E1C96E4();
  if (v1)
  {
    v13 = sub_18E1C97A8(v12);
    sub_18E26DFEC(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_18E1E66F8();
  }
}

void sub_18E3F0050()
{
  sub_18E1CADE0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_18E1C5534();
  if (v6 == v7)
  {
LABEL_7:
    sub_18E1C5AD8(v5);
    if (v2)
    {
      sub_18E2706EC(&qword_1EABE9090, &qword_18E4E2658);
      v8 = swift_allocObject();
      sub_18E1D61B8(v8);
      if (v1)
      {
LABEL_9:
        v9 = sub_18E1CB0D4();
        sub_18E26E0C4(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_18E223D80();
    goto LABEL_12;
  }

  sub_18E1E1CA8();
  if (!v6)
  {
    sub_18E1C5E88();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_18E3F0140()
{
  sub_18E1CE958();
  if ((v6 & 1) == 0)
  {
    v7 = v3;
    goto LABEL_7;
  }

  sub_18E1C5534();
  if (v8 == v9)
  {
LABEL_7:
    v10 = *(v0 + 16);
    if (v7 <= v10)
    {
      v11 = *(v0 + 16);
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      sub_18E2706EC(v4, v5);
      v12 = swift_allocObject();
      v13 = j__malloc_size_1(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 24);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v10, v12 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    sub_18E1CFB1C();
    goto LABEL_15;
  }

  sub_18E1E1CA8();
  if (!v8)
  {
    sub_18E1C5E88();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_18E3F02B4()
{
  sub_18E1CE958();
  if ((v6 & 1) == 0)
  {
    v7 = v3;
    goto LABEL_7;
  }

  sub_18E1C5534();
  if (v8 == v9)
  {
LABEL_7:
    v10 = *(v0 + 16);
    if (v7 <= v10)
    {
      v11 = *(v0 + 16);
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      sub_18E2706EC(v4, v5);
      v12 = sub_18E1DD5E0();
      v13 = j__malloc_size_1(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 32);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v10, v12 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    sub_18E1CFB1C();
    goto LABEL_15;
  }

  sub_18E1E1CA8();
  if (!v8)
  {
    sub_18E1C5E88();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_18E3F0384(char a1, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, int64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  sub_18E1C5534();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      sub_18E2706EC(a5, a6);
      v15 = swift_allocObject();
      v16 = j__malloc_size_1(v15);
      v15[2] = v13;
      v15[3] = 2 * v16 - 64;
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), v13);
    goto LABEL_15;
  }

  sub_18E1E1CA8();
  if (!v11)
  {
    sub_18E1C5E88();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_18E3F0464(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_18E2706EC(&qword_1EABE0E38, &qword_18E49D1E0);
  v4 = sub_18E1DD5E0();
  v5 = j__malloc_size_1(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

size_t sub_18E3F04D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_18E2706EC(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size_1(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18E3F05D4(uint64_t *a1)
{
  v2 = *(sub_18E44E2BC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_18E1CA880(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_18E3F067C(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_18E3F067C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_18E44F38C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_18E44E2BC();
        v6 = sub_18E44ECCC();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_18E44E2BC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_18E3F0ACC(v8, v9, a1, v4);
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
    return sub_18E3F07AC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_18E3F07AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_18E44E2BC();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v41 - v16;
  v43 = a2;
  if (a3 != a2)
  {
    v18 = v15;
    v19 = *a4;
    v21 = *(v14 + 16);
    v20 = v14 + 16;
    v22 = *(v20 + 56);
    v52 = (v20 - 8);
    v53 = v21;
    v54 = v20;
    v49 = (v20 + 16);
    v50 = v19;
    v23 = v19 + v22 * (a3 - 1);
    v48 = -v22;
    v24 = a1 - a3;
    v42 = v22;
    v25 = v19 + v22 * a3;
    while (2)
    {
      v46 = v23;
      v47 = a3;
      v44 = v25;
      v45 = v24;
      v26 = v23;
      while (1)
      {
        v27 = v53;
        v53(v17, v25, v8);
        v27(v18, v26, v8);
        v28 = sub_18E44E29C();
        v29 = v17;
        v30 = v18;
        v32 = v31;
        if (v28 == sub_18E44E29C() && v32 == v33)
        {
          break;
        }

        v35 = sub_18E44F3CC();

        v36 = *v52;
        (*v52)(v30, v8);
        result = (v36)(v29, v8);
        v18 = v30;
        v17 = v29;
        if (v35)
        {
          if (!v50)
          {
            __break(1u);
            return result;
          }

          v37 = *v49;
          v38 = v51;
          (*v49)(v51, v25, v8);
          swift_arrayInitWithTakeFrontToBack();
          result = (v37)(v26, v38, v8);
          v26 += v48;
          v25 += v48;
          if (!__CFADD__(v24++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v40 = *v52;
      (*v52)(v30, v8);
      result = (v40)(v29, v8);
      v18 = v30;
      v17 = v29;
LABEL_14:
      a3 = v47 + 1;
      v23 = v46 + v42;
      v24 = v45 - 1;
      v25 = v44 + v42;
      if (v47 + 1 != v43)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_18E3F0ACC(unint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v147 = a1;
  v8 = sub_18E44E2BC();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v152 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v165 = &v143 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v143 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v161 = &v143 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v160 = &v143 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v22);
  v27 = &v143 - v23;
  v158 = v24;
  v159 = a3;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = MEMORY[0x1E69E7CC0];
LABEL_114:
    v170 = *v147;
    if (!v170)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_150;
  }

  v166 = v25;
  v143 = a4;
  v29 = 0;
  v170 = v24 + 16;
  v168 = (v24 + 32);
  v169 = (v24 + 8);
  v30 = MEMORY[0x1E69E7CC0];
  v162 = v8;
  v154 = v16;
  v144 = v26;
  v146 = &v143 - v23;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v149 = v29;
    if (v29 + 1 < v28)
    {
      v164 = v28;
      v145 = v30;
      v33 = v27;
      v34 = *v159;
      v35 = *(v24 + 72);
      v36 = v26;
      v157 = v29 + 1;
      v37 = v29;
      v38 = &v34[v35 * (v29 + 1)];
      v39 = *(v24 + 16);
      v39(v33, v38, v8);
      v40 = &v34[v35 * v37];
      v41 = v146;
      v156 = v39;
      v39(v36, v40, v8);
      LODWORD(v163) = sub_18E3EF8A0();
      if (v5)
      {
        v142 = *v169;
        (*v169)(v36, v8);
        (v142)(v41, v8);
LABEL_124:

        return;
      }

      v148 = 0;
      v30 = v169;
      v42 = *v169;
      (*v169)(v36, v8);
      v155 = v42;
      (v42)(v41, v8);
      v43 = v149 + 2;
      v44 = &v34[v35 * (v149 + 2)];
      v32 = v157;
      v45 = v35;
      v167 = v35;
      v46 = v164;
      while (1)
      {
        v47 = v43;
        if (v32 + 1 >= v46)
        {
          break;
        }

        v48 = v32;
        v49 = v162;
        v5 = v156;
        (v156)(v160, v44, v162);
        v5(v161, v38, v49);
        v50 = sub_18E44E29C();
        v52 = v51;
        if (v50 == sub_18E44E29C() && v52 == v53)
        {
          v55 = 0;
        }

        else
        {
          v55 = sub_18E44F3CC();
        }

        v56 = v162;
        v30 = v155;
        (v155)(v161, v162);
        (v30)(v160, v56);
        v45 = v167;
        v44 += v167;
        v38 += v167;
        v32 = v48 + 1;
        v43 = v47 + 1;
        v46 = v164;
        if ((v163 ^ v55))
        {
          goto LABEL_16;
        }
      }

      v32 = v46;
LABEL_16:
      if (v163)
      {
        v31 = v149;
        if (v32 < v149)
        {
          goto LABEL_149;
        }

        v5 = v148;
        if (v149 >= v32)
        {
          v24 = v158;
          v30 = v145;
          v8 = v162;
          v16 = v154;
          goto LABEL_39;
        }

        if (v46 >= v47)
        {
          v57 = v47;
        }

        else
        {
          v57 = v46;
        }

        v58 = v45 * (v57 - 1);
        v59 = v45 * v57;
        v60 = v149;
        v61 = v149 * v45;
        v62 = v32;
        do
        {
          if (v60 != --v62)
          {
            v63 = *v159;
            if (!*v159)
            {
              goto LABEL_154;
            }

            v64 = v162;
            v164 = *v168;
            v164(v152, &v63[v61], v162);
            v65 = v61 < v58 || &v63[v61] >= &v63[v59];
            if (v65)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v61 != v58)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v164(&v63[v58], v152, v64);
            v5 = v148;
            v45 = v167;
          }

          ++v60;
          v58 -= v45;
          v59 -= v45;
          v61 += v45;
        }

        while (v60 < v62);
      }

      else
      {
        v5 = v148;
      }

      v24 = v158;
      v30 = v145;
      v8 = v162;
      v16 = v154;
      v31 = v149;
    }

LABEL_39:
    v66 = v159[1];
    if (v32 < v66)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_146;
      }

      if (v32 - v31 < v143)
      {
        break;
      }
    }

LABEL_62:
    if (v32 < v31)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v132 = *(v30 + 2);
      sub_18E3EF938();
      v30 = v133;
    }

    v89 = *(v30 + 2);
    v88 = *(v30 + 3);
    v90 = v89 + 1;
    v157 = v32;
    if (v89 >= v88 >> 1)
    {
      sub_18E3EF938();
      v30 = v134;
    }

    *(v30 + 2) = v90;
    v91 = v30 + 32;
    v92 = &v30[16 * v89 + 32];
    v93 = v157;
    *v92 = v149;
    *(v92 + 1) = v93;
    v167 = *v147;
    if (!v167)
    {
      goto LABEL_155;
    }

    if (v89)
    {
      while (1)
      {
        v94 = v90 - 1;
        v95 = &v91[16 * v90 - 16];
        v96 = &v30[16 * v90];
        if (v90 >= 4)
        {
          break;
        }

        if (v90 == 3)
        {
          v97 = *(v30 + 4);
          v98 = *(v30 + 5);
          v107 = __OFSUB__(v98, v97);
          v99 = v98 - v97;
          v100 = v107;
LABEL_82:
          if (v100)
          {
            goto LABEL_132;
          }

          v112 = *v96;
          v111 = *(v96 + 1);
          v113 = __OFSUB__(v111, v112);
          v114 = v111 - v112;
          v115 = v113;
          if (v113)
          {
            goto LABEL_135;
          }

          v116 = *(v95 + 1);
          v117 = v116 - *v95;
          if (__OFSUB__(v116, *v95))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v114, v117))
          {
            goto LABEL_140;
          }

          if (v114 + v117 >= v99)
          {
            if (v99 < v117)
            {
              v94 = v90 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v90 < 2)
        {
          goto LABEL_134;
        }

        v119 = *v96;
        v118 = *(v96 + 1);
        v107 = __OFSUB__(v118, v119);
        v114 = v118 - v119;
        v115 = v107;
LABEL_97:
        if (v115)
        {
          goto LABEL_137;
        }

        v121 = *v95;
        v120 = *(v95 + 1);
        v107 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v107)
        {
          goto LABEL_139;
        }

        if (v122 < v114)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v94 - 1 >= v90)
        {
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
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
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
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v159)
        {
          goto LABEL_152;
        }

        v126 = v30;
        v127 = &v91[16 * v94 - 16];
        v30 = *v127;
        v128 = &v91[16 * v94];
        v129 = *(v128 + 1);
        sub_18E3F1688(&(*v159)[*(v158 + 72) * *v127], &(*v159)[*(v158 + 72) * *v128], &(*v159)[*(v158 + 72) * v129], v167);
        if (v5)
        {
          goto LABEL_124;
        }

        if (v129 < v30)
        {
          goto LABEL_127;
        }

        v130 = *(v126 + 2);
        if (v94 > v130)
        {
          goto LABEL_128;
        }

        *v127 = v30;
        *(v127 + 1) = v129;
        if (v94 >= v130)
        {
          goto LABEL_129;
        }

        v90 = v130 - 1;
        sub_18E2F03D0(v128 + 16, v130 - 1 - v94, &v91[16 * v94]);
        v30 = v126;
        *(v126 + 2) = v130 - 1;
        v131 = v130 > 2;
        v16 = v154;
        if (!v131)
        {
          goto LABEL_111;
        }
      }

      v101 = &v91[16 * v90];
      v102 = *(v101 - 8);
      v103 = *(v101 - 7);
      v107 = __OFSUB__(v103, v102);
      v104 = v103 - v102;
      if (v107)
      {
        goto LABEL_130;
      }

      v106 = *(v101 - 6);
      v105 = *(v101 - 5);
      v107 = __OFSUB__(v105, v106);
      v99 = v105 - v106;
      v100 = v107;
      if (v107)
      {
        goto LABEL_131;
      }

      v108 = *(v96 + 1);
      v109 = v108 - *v96;
      if (__OFSUB__(v108, *v96))
      {
        goto LABEL_133;
      }

      v107 = __OFADD__(v99, v109);
      v110 = v99 + v109;
      if (v107)
      {
        goto LABEL_136;
      }

      if (v110 >= v104)
      {
        v124 = *v95;
        v123 = *(v95 + 1);
        v107 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v107)
        {
          goto LABEL_144;
        }

        if (v99 < v125)
        {
          v94 = v90 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v24 = v158;
    v28 = v159[1];
    v29 = v157;
    v8 = v162;
    v26 = v144;
    v27 = v146;
    if (v157 >= v28)
    {
      goto LABEL_114;
    }
  }

  v67 = (v31 + v143);
  if (__OFADD__(v31, v143))
  {
    goto LABEL_147;
  }

  if (v67 >= v66)
  {
    v67 = v159[1];
  }

  if (v67 < v31)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v30 = sub_18E2F02E0(v30);
LABEL_116:
    v135 = v30 + 16;
    v136 = *(v30 + 2);
    while (v136 >= 2)
    {
      if (!*v159)
      {
        goto LABEL_153;
      }

      v137 = v30;
      v30 += 16 * v136;
      v138 = *v30;
      v139 = &v135[2 * v136];
      v140 = *(v139 + 1);
      sub_18E3F1688(&(*v159)[*(v158 + 72) * *v30], &(*v159)[*(v158 + 72) * *v139], &(*v159)[*(v158 + 72) * v140], v170);
      if (v5)
      {
        break;
      }

      if (v140 < v138)
      {
        goto LABEL_141;
      }

      if (v136 - 2 >= *v135)
      {
        goto LABEL_142;
      }

      *v30 = v138;
      *(v30 + 1) = v140;
      v141 = *v135 - v136;
      if (*v135 < v136)
      {
        goto LABEL_143;
      }

      v136 = *v135 - 1;
      sub_18E2F03D0(v139 + 16, v141, v139);
      *v135 = v136;
      v30 = v137;
    }

    goto LABEL_124;
  }

  if (v32 == v67)
  {
    goto LABEL_62;
  }

  v145 = v30;
  v148 = v5;
  v68 = *v159;
  v69 = *(v24 + 72);
  v167 = *(v24 + 16);
  v70 = &v68[v69 * (v32 - 1)];
  v163 = -v69;
  v164 = v68;
  v71 = (v31 - v32);
  v150 = v69;
  v151 = v67;
  v72 = &v68[v32 * v69];
  v73 = v166;
LABEL_48:
  v156 = v70;
  v157 = v32;
  v153 = v72;
  v155 = v71;
  while (1)
  {
    v74 = v167;
    (v167)(v73, v72, v8);
    v74(v16, v70, v8);
    v75 = v16;
    v76 = sub_18E44E29C();
    v77 = v8;
    v79 = v78;
    if (v76 == sub_18E44E29C() && v79 == v80)
    {

      v87 = *v169;
      (*v169)(v75, v77);
      (v87)(v73, v77);
      v8 = v77;
      v16 = v75;
      goto LABEL_60;
    }

    v82 = v73;
    v83 = sub_18E44F3CC();

    v84 = *v169;
    (*v169)(v75, v77);
    (v84)(v82, v77);
    v8 = v77;
    v16 = v75;
    if ((v83 & 1) == 0)
    {
      v73 = v166;
LABEL_60:
      v32 = v157 + 1;
      v70 = &v156[v150];
      v71 = v155 - 1;
      v72 = &v153[v150];
      if (v157 + 1 == v151)
      {
        v32 = v151;
        v5 = v148;
        v30 = v145;
        v31 = v149;
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    if (!v164)
    {
      break;
    }

    v85 = *v168;
    v86 = v165;
    (*v168)(v165, v72, v77);
    swift_arrayInitWithTakeFrontToBack();
    v85(v70, v86, v77);
    v70 += v163;
    v72 += v163;
    v65 = __CFADD__(v71++, 1);
    v73 = v166;
    if (v65)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

uint64_t sub_18E3F1688(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_18E44E2BC();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v72 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v71 = &v65 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v65 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v22 = a2 - a1 == 0x8000000000000000 && v21 == -1;
  if (v22)
  {
    goto LABEL_72;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_73;
  }

  v25 = (a2 - a1) / v21;
  v78 = a1;
  v77 = a4;
  v73 = (v18 + 8);
  v74 = (v18 + 16);
  v26 = v23 / v21;
  if (v25 < v23 / v21)
  {
    v69 = &v65 - v19;
    v71 = v16;
    sub_18E26DE88(a1, (a2 - a1) / v21, a4);
    v72 = (a4 + v25 * v21);
    v76 = v72;
    v27 = a4;
    v28 = v21;
    v68 = v8;
    v70 = a3;
    while (1)
    {
      if (v27 >= v72 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v30 = a1;
      v31 = *v74;
      v32 = v69;
      v33 = a2;
      (*v74)(v69, a2, v8);
      v75 = v27;
      v34 = v71;
      v31();
      v35 = sub_18E44E29C();
      v37 = v36;
      if (v35 == sub_18E44E29C() && v37 == v38)
      {

        v45 = *v73;
        (*v73)(v34, v8);
        v45(v32, v8);
      }

      else
      {
        v40 = sub_18E44F3CC();

        v41 = *v73;
        (*v73)(v34, v8);
        v41(v32, v8);
        if (v40)
        {
          v42 = v33;
          a2 = v33 + v28;
          v43 = v30;
          if (v30 < v33 || v30 >= a2)
          {
            v8 = v68;
            swift_arrayInitWithTakeFrontToBack();
            a3 = v70;
          }

          else
          {
            a3 = v70;
            v8 = v68;
            if (v30 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v75;
          goto LABEL_40;
        }
      }

      v27 = v75 + v28;
      v43 = v30;
      v46 = v30 < v75 || v30 >= v27;
      a2 = v33;
      if (v46)
      {
        v8 = v68;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v70;
      }

      else
      {
        a3 = v70;
        v8 = v68;
        if (v30 != v75)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v77 = v27;
LABEL_40:
      a1 = v43 + v28;
      v78 = a1;
    }
  }

  sub_18E26DE88(a2, v23 / v21, a4);
  v75 = a4;
  v47 = a4 + v26 * v21;
  v48 = -v21;
  v49 = v47;
  v69 = -v21;
LABEL_42:
  v70 = a2;
  v68 = a2 + v48;
  v50 = a3;
  v66 = v49;
  while (1)
  {
    if (v47 <= v75)
    {
      v78 = v70;
      v76 = v49;
      goto LABEL_70;
    }

    if (v70 <= a1)
    {
      break;
    }

    v67 = v49;
    v51 = v47 + v48;
    v52 = *v74;
    (*v74)(v71, v47 + v48, v8);
    (v52)(v72, v68, v8);
    v53 = sub_18E44E29C();
    v55 = v54;
    if (v53 == sub_18E44E29C() && v55 == v56)
    {
      v58 = 0;
    }

    else
    {
      v58 = sub_18E44F3CC();
    }

    v59 = (v50 + v69);
    v60 = *v73;
    (*v73)(v72, v8);
    v60(v71, v8);
    if (v58)
    {
      v62 = v50 < v70 || v59 >= v70;
      a3 = v59;
      if (v62)
      {
        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        v49 = v67;
        v48 = v69;
      }

      else
      {
        v64 = v67;
        v63 = v68;
        v49 = v67;
        v22 = v50 == v70;
        a2 = v68;
        v48 = v69;
        if (!v22)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v63;
          v49 = v64;
        }
      }

      goto LABEL_42;
    }

    if (v50 < v47 || v59 >= v47)
    {
      swift_arrayInitWithTakeFrontToBack();
      v50 = v59;
      v47 = v51;
      v49 = v51;
      v48 = v69;
    }

    else
    {
      v49 = v51;
      v22 = v47 == v50;
      v50 = v59;
      v47 = v51;
      v48 = v69;
      if (!v22)
      {
        swift_arrayInitWithTakeBackToFront();
        v50 = v59;
        v47 = v51;
        v49 = v51;
      }
    }
  }

  v78 = v70;
  v76 = v66;
LABEL_70:
  sub_18E2F02F4(&v78, &v77, &v76);
  return 1;
}

uint64_t sub_18E3F1C90(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_18E4AF940;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_18E3F1CF4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_18E2706EC(&qword_1EABE8FE0, &qword_18E4E1A28);
  result = sub_18E44EFCC();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_31:

    *v2 = v6;
    return result;
  }

  v32 = v2;
  v33 = v3;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      sub_18E3F1C90(0, (v31 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(v3 + 48) + 24 * (v14 | (v7 << 6));
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = *(v6 + 40);
    sub_18E44F48C();
    sub_18E44EB4C();
    if (v20 != 2)
    {
      sub_18E44F4AC();
    }

    sub_18E44F4AC();
    result = sub_18E44F4CC();
    v22 = -1 << *(v6 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = *(v6 + 48) + 24 * v25;
    *v30 = v18;
    *(v30 + 8) = v19;
    *(v30 + 16) = v20;
    ++*(v6 + 16);
    v3 = v33;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v13 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_25;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_18E3F1F8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_18E2706EC(&qword_1EABE8FD8, &qword_18E4E1A20);
  result = sub_18E44EFCC();
  v6 = result;
  if (!*(v3 + 16))
  {
    v40 = result;
LABEL_35:

    *v2 = v40;
    return result;
  }

  v7 = 0;
  v42 = v2;
  v43 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  v44 = v3;
  v45 = result;
  if (!v10)
  {
LABEL_9:
    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v7 >= v11)
      {
        break;
      }

      v15 = v43[v7];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v46 = (v15 - 1) & v15;
        goto LABEL_14;
      }
    }

    v40 = v6;
    v41 = 1 << *(v3 + 32);
    if (v41 >= 64)
    {
      sub_18E3F1C90(0, (v41 + 63) >> 6, v43);
    }

    else
    {
      *v43 = -1 << v41;
    }

    v2 = v42;
    *(v3 + 16) = 0;
    goto LABEL_35;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v46 = (v10 - 1) & v10;
LABEL_14:
    v16 = *(v3 + 48) + ((v13 | (v7 << 6)) << 6);
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v57[0] = *(v16 + 17);
    *(v57 + 3) = *(v16 + 20);
    v20 = *(v16 + 24);
    v21 = *(v16 + 32);
    v22 = *(v16 + 40);
    v50 = *(v16 + 48);
    v49 = *(v16 + 56);
    v23 = *(v16 + 57);
    v24 = *(v6 + 40);
    sub_18E44F48C();
    v48 = v18;
    sub_18E44EB4C();
    v47 = v19;
    if (v19 != 2)
    {
      sub_18E44F4AC();
    }

    sub_18E44F4AC();
    v25 = v23;
    v26 = v20;
    v27 = v22;
    if (v22)
    {
      *&v51 = v20;
      *(&v51 + 1) = v21;
      v28 = v21;
      v29 = v50;
      *&v52 = v27;
      *(&v52 + 1) = v50;
      v30 = v49;
      sub_18E44F4AC();
      v53[0] = v26;
      v53[1] = v28;
      v53[2] = v27;
      v53[3] = v50;
      v54 = v49;
      sub_18E327BB0(v53, v55);
      CostProfile.hash(into:)();
      v55[0] = v51;
      v55[1] = v52;
      v56 = v49;
      sub_18E292124(v55);
    }

    else
    {
      sub_18E44F4AC();
      v28 = v21;
      v29 = v50;
      v30 = v49;
    }

    MEMORY[0x193ACCC20](v25);
    result = sub_18E44F4CC();
    v6 = v45;
    v31 = -1 << *(v45 + 32);
    v32 = result & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v12 + 8 * (v32 >> 6))) == 0)
    {
      break;
    }

    v34 = __clz(__rbit64((-1 << v32) & ~*(v12 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
    *(v12 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    v39 = *(v45 + 48) + (v34 << 6);
    *v39 = v17;
    *(v39 + 8) = v48;
    *(v39 + 16) = v47;
    *(v39 + 17) = v57[0];
    *(v39 + 20) = *(v57 + 3);
    *(v39 + 24) = v26;
    *(v39 + 32) = v28;
    *(v39 + 40) = v27;
    *(v39 + 48) = v29;
    *(v39 + 56) = v30;
    *(v39 + 57) = v25;
    ++*(v45 + 16);
    v3 = v44;
    v10 = v46;
    if (!v46)
    {
      goto LABEL_9;
    }
  }

  v35 = 0;
  v36 = (63 - v31) >> 6;
  while (++v33 != v36 || (v35 & 1) == 0)
  {
    v37 = v33 == v36;
    if (v33 == v36)
    {
      v33 = 0;
    }

    v35 |= v37;
    v38 = *(v12 + 8 * v33);
    if (v38 != -1)
    {
      v34 = __clz(__rbit64(~v38)) + (v33 << 6);
      goto LABEL_28;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_18E3F2328(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_18E2706EC(&qword_1EABE90A8, &qword_18E4E2678);
  result = sub_18E44EFCC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v45 = v1;
    v46 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v47 = v11;
    v48 = result;
    v49 = v3;
    v50 = result + 56;
    if (v10)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v10));
        v54 = (v10 - 1) & v10;
LABEL_14:
        v15 = *(v3 + 48) + 40 * (v12 | (v7 << 6));
        v16 = *v15;
        v17 = *(v15 + 8);
        v55 = *(v15 + 16);
        v53 = *(v15 + 24);
        v52 = *(v15 + 32);
        v18 = *(v6 + 40);
        sub_18E44F48C();
        v51 = v16;
        sub_18E1C6DAC(v16);
        sub_18E44EB4C();

        v19 = v17 + 64;
        v20 = 1 << *(v17 + 32);
        if (v20 < 64)
        {
          v21 = ~(-1 << v20);
        }

        else
        {
          v21 = -1;
        }

        v22 = v21 & *(v17 + 64);
        v23 = (v20 + 63) >> 6;
        v56 = v17;

        v24 = 0;
        v25 = 0;
        if (v22)
        {
          while (1)
          {
            v26 = v25;
LABEL_23:
            v27 = __clz(__rbit64(v22));
            v22 &= v22 - 1;
            v28 = (v26 << 10) | (16 * v27);
            v29 = (*(v56 + 48) + v28);
            v30 = *v29;
            v31 = v29[1];
            v32 = (*(v56 + 56) + v28);
            v33 = *v32;
            v34 = v32[1];
            memcpy(__dst, __src, sizeof(__dst));

            sub_18E44EB4C();

            sub_18E44EB4C();

            result = sub_18E44F4CC();
            v24 ^= result;
            if (!v22)
            {
              goto LABEL_19;
            }
          }
        }

        while (1)
        {
LABEL_19:
          v26 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            __break(1u);
            goto LABEL_46;
          }

          if (v26 >= v23)
          {
            break;
          }

          v22 = *(v19 + 8 * v26);
          ++v25;
          if (v22)
          {
            v25 = v26;
            goto LABEL_23;
          }
        }

        MEMORY[0x193ACCC20](v24);
        sub_18E44F4AC();
        if (v55)
        {
          sub_18E2917A4(__src, v55);
        }

        v6 = v48;
        v3 = v49;
        sub_18E44F4AC();
        if (v53)
        {
          sub_18E2917A4(__src, v53);
        }

        sub_18E44F4AC();
        result = sub_18E44F4CC();
        v35 = -1 << *(v48 + 32);
        v36 = result & ~v35;
        v37 = v36 >> 6;
        if (((-1 << v36) & ~*(v50 + 8 * (v36 >> 6))) == 0)
        {
          break;
        }

        v38 = __clz(__rbit64((-1 << v36) & ~*(v50 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
        v10 = v54;
LABEL_38:
        *(v50 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
        v43 = *(v48 + 48) + 40 * v38;
        *v43 = v51;
        *(v43 + 8) = v56;
        *(v43 + 16) = v55;
        *(v43 + 24) = v53;
        *(v43 + 32) = v52;
        ++*(v48 + 16);
        v11 = v47;
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v39 = 0;
      v40 = (63 - v35) >> 6;
      v10 = v54;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v50 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_38;
        }
      }
    }

    else
    {
LABEL_9:
      v13 = v7;
      while (1)
      {
        v7 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v7 >= v11)
        {
          v44 = 1 << *(v3 + 32);
          if (v44 >= 64)
          {
            sub_18E3F1C90(0, (v44 + 63) >> 6, v46);
          }

          else
          {
            *v46 = -1 << v44;
          }

          v2 = v45;
          *(v3 + 16) = 0;
          goto LABEL_44;
        }

        v14 = v46[v7];
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v54 = (v14 - 1) & v14;
          goto LABEL_14;
        }
      }

LABEL_46:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_44:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_18E3F2774(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_18E2706EC(&qword_1EABE9078, &qword_18E4E2620);
  result = sub_18E44EFCC();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_31:
    v36 = v6;

    *v2 = v36;
    return result;
  }

  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v37 = v1;
  v38 = (v9 + 63) >> 6;
  v12 = result + 56;
  v39 = v3;
  v40 = result;
  if (!v11)
  {
LABEL_9:
    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v38)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
        goto LABEL_14;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      v35 = v6;
      sub_18E3F1C90(0, (v34 + 63) >> 6, v8);
      v6 = v35;
    }

    else
    {
      *v8 = -1 << v34;
    }

    v2 = v37;
    *(v3 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v11));
    v41 = (v11 - 1) & v11;
LABEL_14:
    v16 = *(v3 + 48) + 56 * (v13 | (v7 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = *(v16 + 24);
    v21 = *(v16 + 32);
    v22 = *(v16 + 40);
    v23 = *(v16 + 48);
    v24 = *(v6 + 40);
    sub_18E44F48C();
    sub_18E44EB4C();
    sub_18E44EB4C();
    sub_18E44EB4C();
    sub_18E44F4AC();
    if (v23 != 15)
    {
      sub_18E44EB4C();
    }

    result = sub_18E44F4CC();
    v6 = v40;
    v25 = -1 << *(v40 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = *(v40 + 48) + 56 * v28;
    *v33 = v17;
    *(v33 + 8) = v18;
    *(v33 + 16) = v19;
    *(v33 + 24) = v20;
    *(v33 + 32) = v21;
    *(v33 + 40) = v22;
    *(v33 + 48) = v23;
    ++*(v40 + 16);
    v3 = v39;
    v11 = v41;
    if (!v41)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v12 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_25;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_18E3F2C50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_18E2706EC(&qword_1EABE9060, &unk_18E4E2608);
  result = sub_18E44EFCC();
  v6 = result;
  if (*(v3 + 16))
  {
    v25 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    if (!v11)
    {
      goto LABEL_8;
    }

    do
    {
LABEL_12:
      v15 = *(v6 + 40);
      sub_18E44F48C();
      sub_18E44EB4C();
      result = sub_18E44F4CC();
      v16 = -1 << *(v6 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v13 + 8 * (v17 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v16) >> 6;
        while (++v18 != v21 || (v20 & 1) == 0)
        {
          v22 = v18 == v21;
          if (v18 == v21)
          {
            v18 = 0;
          }

          v20 |= v22;
          v23 = *(v13 + 8 * v18);
          if (v23 != -1)
          {
            v19 = __clz(__rbit64(~v23)) + (v18 << 6);
            goto LABEL_21;
          }
        }

LABEL_29:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v13 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
      v11 &= v11 - 1;
      *(v13 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      ++*(v6 + 16);
    }

    while (v11);
    while (1)
    {
LABEL_8:
      v14 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v14 >= v12)
      {
        break;
      }

      v11 = v8[v14];
      ++v7;
      if (v11)
      {
        v7 = v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v3 + 32);
    if (v24 >= 64)
    {
      sub_18E3F1C90(0, (v24 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v24;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_18E3F2E80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_18E2706EC(&qword_1EABE9058, &qword_18E4E2600);
  result = sub_18E44EFCC();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_18E3F1C90(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_18E44F48C();
    sub_18E1C6DAC(v17);
    sub_18E44EB4C();

    result = sub_18E44F4CC();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_18E3F30E8()
{
  sub_18E1E6AB4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_18E1CA234();
  if (!(!v24 & v13) || (v10 & 1) == 0)
  {
    if (v10)
    {
      sub_18E3F1CF4(v11 + 1);
    }

    else
    {
      if (v12 > v11)
      {
        sub_18E3F4178();
        goto LABEL_24;
      }

      sub_18E3F4BF8(v11 + 1);
    }

    v14 = *v0;
    v15 = *(*v0 + 40);
    sub_18E44F48C();
    sub_18E44EB4C();
    if (v5 != 2)
    {
      sub_18E44F4AC();
    }

    sub_18E44F4AC();
    sub_18E44F4CC();
    v16 = v14 + 56;
    v17 = *(v14 + 32);
    sub_18E1C5B14();
    v3 = v19 & ~v18;
    if ((*(v14 + 56 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3))
    {
      v20 = ~v18;
      v21 = *(v14 + 48);
      do
      {
        v22 = v21 + 24 * v3;
        v23 = *(v22 + 16);
        v24 = *v22 == v9 && *(v22 + 8) == v7;
        if (v24 || (sub_18E44F3CC() & 1) != 0)
        {
          if (v23 == 2)
          {
            if (v5 == 2)
            {
              goto LABEL_27;
            }
          }

          else if (v5 != 2 && ((v23 ^ v5) & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        v3 = (v3 + 1) & v20;
      }

      while (((*(v16 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3) & 1) != 0);
    }
  }

LABEL_24:
  v25 = *v1;
  sub_18E1E3A70();
  sub_18E1C8610(v26);
  v28 = v27 + 24 * v3;
  *v28 = v9;
  *(v28 + 8) = v7;
  *(v28 + 16) = v5;
  sub_18E1CEA30(v29);
  if (v32)
  {
    __break(1u);
LABEL_27:
    sub_18E44F40C();
    __break(1u);
  }

  else
  {
    *(v30 + 16) = v31;
    sub_18E1E28A4();
  }
}

void sub_18E3F32A0(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v6 = a1[1];
  v44 = *a1;
  v45 = v6;
  v46[0] = a1[2];
  *(v46 + 10) = *(a1 + 42);
  sub_18E1CA234();
  if (!(!v11 & v10) || (v7 & 1) == 0)
  {
    if (v7)
    {
      v12 = sub_18E2287EC(v8);
      sub_18E3F1F8C(v12);
      goto LABEL_11;
    }

    if (v9 <= v8)
    {
      v22 = sub_18E2287EC(v8);
      sub_18E3F4E68(v22);
LABEL_11:
      v23 = *v2;
      v24 = *(*v2 + 40);
      v25 = a1[1];
      v41 = *a1;
      v42 = v25;
      v43[0] = a1[2];
      *(v43 + 10) = *(a1 + 42);
      sub_18E44F48C();
      ExecutionContext.hash(into:)();
      sub_18E44F4CC();
      v26 = *(v23 + 32);
      sub_18E1C5B14();
      v29 = ~v28;
      while (1)
      {
        a2 = v27 & v29;
        if (((*(v23 + 56 + (((v27 & v29) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v27 & v29)) & 1) == 0)
        {
          goto LABEL_8;
        }

        v30 = (*(v23 + 48) + (a2 << 6));
        v31 = *(v30 + 42);
        v32 = v30[2];
        v33 = *v30;
        v42 = v30[1];
        v43[0] = v32;
        v41 = v33;
        *(v43 + 10) = v31;
        v34 = v30[1];
        v36 = *v30;
        v37 = v34;
        v38[0] = v30[2];
        *(v38 + 10) = *(v30 + 42);
        sub_18E27418C(&v41, v39);
        v35 = static ExecutionContext.== infix(_:_:)(&v36);
        v39[0] = v36;
        v39[1] = v37;
        v40[0] = v38[0];
        *(v40 + 10) = *(v38 + 10);
        sub_18E2741E8(v39);
        if (v35)
        {
          goto LABEL_16;
        }

        v27 = a2 + 1;
      }
    }

    sub_18E3F42DC();
  }

LABEL_8:
  v13 = *v3;
  sub_18E1E3A70();
  sub_18E1C8610(v14);
  v16 = (v15 + (a2 << 6));
  v17 = v45;
  *v16 = v44;
  v16[1] = v17;
  v16[2] = v46[0];
  *(v16 + 42) = *(v46 + 10);
  sub_18E1CEA30(v18);
  if (v21)
  {
    __break(1u);
LABEL_16:
    sub_18E44F40C();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v20;
  }
}

void sub_18E3F346C(__int128 *a1, unint64_t a2)
{
  sub_18E1CA234();
  v48 = v2;
  v49 = v8;
  if (!(!v25 & v9) || (v5 & 1) == 0)
  {
    if (v5)
    {
      sub_18E3F2328(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_18E3F445C();
        goto LABEL_56;
      }

      sub_18E3F51A4(v6 + 1);
    }

    v10 = *v2;
    v11 = *(*v2 + 40);
    v12 = a1[1];
    v55 = *a1;
    v56 = v12;
    v57 = *(a1 + 32);
    sub_18E44F48C();
    RawAvailableUseCases.RawAvailableUseCase.hash(into:)(v54);
    sub_18E44F4CC();
    v13 = *(v10 + 32);
    sub_18E1C5B14();
    a2 = v15 & ~v14;
    if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v52 = ~v14;
      v46 = *(a1 + 32);
      v53 = *a1;
      v50 = *(a1 + 2);
      v51 = *(a1 + 1);
      v47 = *(a1 + 3);
      do
      {
        v16 = *(v10 + 48) + 40 * a2;
        v18 = *(v16 + 8);
        v17 = *(v16 + 16);
        v19 = *(v16 + 24);
        v20 = *(v16 + 32);
        v21 = sub_18E1C6DAC(*v16);
        v23 = v22;
        v25 = v21 == sub_18E1C6DAC(v53) && v23 == v24;
        if (v25)
        {
        }

        else
        {
          v26 = sub_18E44F3CC();

          if ((v26 & 1) == 0)
          {
            goto LABEL_49;
          }
        }

        sub_18E26D86C(v18, v51);
        if ((v27 & 1) == 0)
        {
          goto LABEL_49;
        }

        if (v17)
        {
          if (!v50)
          {
            goto LABEL_49;
          }

          v28 = *(v17 + 16);
          if (v28 != *(v50 + 16))
          {
            goto LABEL_49;
          }

          if (v28)
          {
            v29 = v17 == v50;
          }

          else
          {
            v29 = 1;
          }

          if (!v29)
          {
            v30 = (v17 + 40);
            v31 = (v50 + 40);
            while (v28)
            {
              v32 = *(v30 - 1) == *(v31 - 1) && *v30 == *v31;
              if (!v32 && (sub_18E44F3CC() & 1) == 0)
              {
                goto LABEL_49;
              }

              v30 += 2;
              v31 += 2;
              if (!--v28)
              {
                goto LABEL_36;
              }
            }

            __break(1u);
            __break(1u);
            goto LABEL_59;
          }
        }

        else if (v50)
        {
          goto LABEL_49;
        }

LABEL_36:
        if (v19)
        {
          if (!v47)
          {
            goto LABEL_49;
          }

          v33 = *(v19 + 16);
          if (v33 != *(v47 + 16))
          {
            goto LABEL_49;
          }

          if (v33 && v19 != v47)
          {
            v34 = (v19 + 40);
            v35 = (v47 + 40);
            while (1)
            {
              v36 = *(v34 - 1) == *(v35 - 1) && *v34 == *v35;
              if (!v36 && (sub_18E44F3CC() & 1) == 0)
              {
                break;
              }

              v34 += 2;
              v35 += 2;
              if (!--v33)
              {
                goto LABEL_48;
              }
            }

LABEL_49:

            goto LABEL_50;
          }

LABEL_48:
        }

        else
        {

          if (v47)
          {
            goto LABEL_50;
          }
        }

        if (((v20 ^ v46) & 1) == 0)
        {
          goto LABEL_60;
        }

LABEL_50:
        a2 = (a2 + 1) & v52;
      }

      while (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_56:
  v37 = *v48;
  sub_18E1E3A70();
  sub_18E1C8610(v38);
  v40 = v39 + 40 * a2;
  v41 = *(v49 + 16);
  *v40 = *v49;
  *(v40 + 16) = v41;
  *(v40 + 32) = *(v49 + 32);
  sub_18E1CEA30(v42);
  if (v45)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    sub_18E44F40C();
    __break(1u);
  }

  else
  {
    *(v43 + 16) = v44;
  }
}

void sub_18E3F3840(uint64_t *a1, unint64_t a2)
{
  sub_18E1CA234();
  v54 = v2;
  v55 = v8;
  if (!(!v29 & v9) || (v5 & 1) == 0)
  {
    if (v5)
    {
      sub_18E3F2774(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_18E3F45E8();
        goto LABEL_75;
      }

      sub_18E3F55CC(v6 + 1);
    }

    v59 = *v2;
    v10 = *(*v2 + 40);
    sub_18E44F48C();
    v11 = *a1;
    v12 = a1[1];
    v13 = a1[2];
    v14 = a1[3];
    v15 = a1[4];
    v16 = a1[5];
    v17 = *(a1 + 48);
    sub_18E44EB4C();
    v60 = v14;
    sub_18E44EB4C();
    v57 = v15;
    sub_18E44EB4C();
    sub_18E44F4AC();
    if (v17 != 15)
    {
      RequestResourcesKey.rawValue.getter();
      sub_18E44EB4C();
    }

    sub_18E44F4CC();
    v18 = *(v59 + 32);
    sub_18E1C5B14();
    a2 = v20 & ~v19;
    if ((*(v59 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v56 = v17;
      v58 = ~v19;
      sub_18E1CA5A4();
      v52 = v21;
      v53 = v22;
      do
      {
        v23 = *(v59 + 48) + 56 * a2;
        v24 = *(v23 + 16);
        v25 = *(v23 + 24);
        v26 = *(v23 + 32);
        v27 = *(v23 + 40);
        v28 = *(v23 + 48);
        v29 = *v23 == v11 && *(v23 + 8) == v12;
        if (v29 || (v30 = *(v23 + 8), (sub_18E44F3CC() & 1) != 0))
        {
          v31 = v24 == v13 && v25 == v60;
          if (v31 || (sub_18E44F3CC() & 1) != 0)
          {
            v32 = v26 == v57 && v27 == v16;
            if (v32 || (sub_18E44F3CC() & 1) != 0)
            {
              if (v28 == 15)
              {
                if (v56 == 15)
                {
                  goto LABEL_79;
                }
              }

              else
              {
                v33 = v56;
                v34 = 0xEF31765F65677261;
                switch(v28)
                {
                  case 1:
                    break;
                  case 2:
                    sub_18E23466C();
                    goto LABEL_49;
                  case 3:
                    sub_18E23466C();
                    goto LABEL_40;
                  case 4:
                    sub_18E23466C();
                    goto LABEL_47;
                  case 5:
                    sub_18E23466C();
                    goto LABEL_43;
                  case 6:
                    v34 = 0xED00007974656661;
                    break;
                  case 7:
                    sub_18E1C54AC();
                    v34 = 0xEF31765F65677261;
                    break;
                  case 8:
                    sub_18E1C54AC();
LABEL_49:
                    v34 = 0xEF32765F65677261;
                    break;
                  case 9:
                    sub_18E1C54AC();
LABEL_40:
                    v34 = 0xEF33765F65677261;
                    break;
                  case 10:
                    sub_18E1C54AC();
LABEL_47:
                    v34 = 0xEF34765F65677261;
                    break;
                  case 11:
                    sub_18E1C54AC();
LABEL_43:
                    v34 = 0xEF35765F65677261;
                    break;
                  case 12:
                    v34 = v53;
                    break;
                  case 13:
                    sub_18E1E6940();
                    v34 = 0x800000018E45B3C0;
                    break;
                  case 14:
                    sub_18E1E6940();
                    v34 = 0x800000018E45B3E0;
                    break;
                  default:
                    v34 = v52;
                    break;
                }

                v37 = v33;
                sub_18E1C9064();
                v38 = v28 | 0xEF31765F00000000;
                switch(v37)
                {
                  case 0:
                    v36 = 0xD000000000000016;
                    v38 = v52;
                    break;
                  case 1:
                    break;
                  case 2:
                    sub_18E1C9064();
                    goto LABEL_68;
                  case 3:
                    sub_18E1C9064();
                    goto LABEL_59;
                  case 4:
                    sub_18E1C9064();
                    goto LABEL_66;
                  case 5:
                    sub_18E1C9064();
                    goto LABEL_62;
                  case 6:
                    v36 = 0x735F6D6C65646F63;
                    v38 = 0xED00007974656661;
                    break;
                  case 7:
                    sub_18E1C8BD8();
                    v38 = v38 | 0xEF31765F00000000;
                    break;
                  case 8:
                    sub_18E1C8BD8();
LABEL_68:
                    v38 = v38 | 0xEF32765F00000000;
                    break;
                  case 9:
                    sub_18E1C8BD8();
LABEL_59:
                    v38 = v38 | 0xEF33765F00000000;
                    break;
                  case 10:
                    sub_18E1C8BD8();
LABEL_66:
                    v38 = v38 | 0xEF34765F00000000;
                    break;
                  case 11:
                    sub_18E1C8BD8();
LABEL_62:
                    v38 = v38 | 0xEF35765F00000000;
                    break;
                  case 12:
                    v36 = 0xD000000000000016;
                    v38 = v53;
                    break;
                  case 13:
                    sub_18E1E6940();
                    v36 = v40 - 1;
                    v38 = 0x800000018E45B3C0;
                    break;
                  case 14:
                    sub_18E1E6940();
                    v36 = v39 - 2;
                    v38 = 0x800000018E45B3E0;
                    break;
                  default:
                    goto LABEL_74;
                }

                if (v35 == v36 && v34 == v38)
                {
                  goto LABEL_78;
                }

                v42 = sub_18E44F3CC();

                if (v42)
                {
                  goto LABEL_79;
                }
              }
            }
          }
        }

LABEL_74:
        a2 = (a2 + 1) & v58;
      }

      while (((*(v59 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_75:
  v43 = *v54;
  sub_18E1E3A70();
  sub_18E1C8610(v44);
  v46 = v45 + 56 * a2;
  v47 = *(v55 + 16);
  *v46 = *v55;
  *(v46 + 16) = v47;
  *(v46 + 32) = *(v55 + 32);
  *(v46 + 48) = *(v55 + 48);
  sub_18E1CEA30(v48);
  if (v51)
  {
    __break(1u);
LABEL_78:

LABEL_79:
    sub_18E44F40C();
    __break(1u);
  }

  else
  {
    *(v49 + 16) = v50;
  }
}

void sub_18E3F3DB4(char a1)
{
  LOBYTE(v2) = a1;
  sub_18E1CA234();
  if (!(!v7 & v6) || (v3 & 1) == 0)
  {
    if (v3)
    {
      v8 = sub_18E2287EC(v4);
      sub_18E3F2C50(v8);
      goto LABEL_9;
    }

    if (v5 <= v4)
    {
      v9 = sub_18E2287EC(v4);
      sub_18E3F5A9C(v9);
LABEL_9:
      v10 = *v1;
      v11 = *(*v1 + 40);
      sub_18E44F48C();
      sub_18E1CEB2C();
      sub_18E44F4CC();
      v12 = *(v10 + 32);
      sub_18E1C5B14();
      v2 = v13 & ~v14;
      if ((*(v10 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2))
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    sub_18E3F4778();
  }

LABEL_10:
  v15 = *v1;
  sub_18E1E3A70();
  *(v17 + 56) |= v16 << v2;
  sub_18E1CEA30(v18);
  if (!v21)
  {
    *(v19 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_13:
  sub_18E44F40C();
  __break(1u);
}

void sub_18E3F3EA4()
{
  sub_18E1E6AB4();
  v2 = v1;
  v4 = v3;
  sub_18E1CA234();
  if (!(!v26 & v8) || (v5 & 1) == 0)
  {
    if (v5)
    {
      sub_18E3F2E80(v6 + 1);
      goto LABEL_11;
    }

    if (v7 <= v6)
    {
      sub_18E3F5C9C(v6 + 1);
LABEL_11:
      v16 = *v0;
      v17 = *(*v0 + 40);
      sub_18E44F48C();
      sub_18E1C6DAC(v4);
      sub_18E44EB4C();

      sub_18E44F4CC();
      v18 = *(v16 + 32);
      sub_18E1C5B14();
      v21 = ~v20;
      while (1)
      {
        v2 = v19 & v21;
        if (((*(v16 + 56 + (((v19 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v21)) & 1) == 0)
        {
          goto LABEL_8;
        }

        v22 = sub_18E1C6DAC(*(*(v16 + 48) + v2));
        v24 = v23;
        v26 = v22 == sub_18E1C6DAC(v4) && v24 == v25;
        if (v26)
        {
          goto LABEL_20;
        }

        sub_18E1CBE3C();
        v27 = sub_18E44F3CC();

        if (v27)
        {
          goto LABEL_21;
        }

        v19 = v2 + 1;
      }
    }

    sub_18E3F4884();
  }

LABEL_8:
  v9 = *v0;
  sub_18E1E3A70();
  sub_18E1C8610(v10);
  *(v11 + v2) = v4;
  sub_18E1CEA30(v12);
  if (v15)
  {
    __break(1u);
LABEL_20:

LABEL_21:
    sub_18E44F40C();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v14;
    sub_18E1E28A4();
  }
}

void sub_18E3F4028()
{
  v1 = v0;
  sub_18E2706EC(&qword_1EABE8FE8, &unk_18E4E1A30);
  v2 = *v0;
  v3 = sub_18E44EFBC();
  if (*(v2 + 16))
  {
    v4 = *(v3 + 32);
    sub_18E1CF974();
    v7 = (v6 + 63) >> 6;
    if (v3 != v2 || v5 >= v2 + 56 + 8 * v7)
    {
      memmove(v5, (v2 + 56), 8 * v7);
    }

    v9 = 0;
    *(v3 + 16) = *(v2 + 16);
    v10 = *(v2 + 32);
    sub_18E1CF974();
    v12 = *(v2 + 56);
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
        v19 = v16 | (v9 << 6);
        v20 = (*(v2 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = (*(v3 + 48) + 16 * v19);
        *v22 = *v20;
        v22[1] = v21;
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v2 + 56 + 8 * v9);
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

    *v1 = v3;
  }
}

void *sub_18E3F4178()
{
  v1 = v0;
  sub_18E2706EC(&qword_1EABE8FE0, &qword_18E4E1A28);
  v2 = *v0;
  v3 = sub_18E44EFBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 3 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + 8 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        LOBYTE(v18) = *(v18 + 16);
        v21 = *(v4 + 48) + 8 * v17;
        *v21 = v20;
        *(v21 + 8) = v19;
        *(v21 + 16) = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_18E3F42DC()
{
  v1 = v0;
  sub_18E2706EC(&qword_1EABE8FD8, &qword_18E4E1A20);
  v2 = *v0;
  v3 = sub_18E44EFBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = (*(v2 + 48) + (v17 << 6));
        v20 = v18[1];
        v19 = v18[2];
        v21 = *v18;
        *&v24[10] = *(v18 + 42);
        v23[1] = v20;
        *v24 = v19;
        v23[0] = v21;
        memmove((*(v4 + 48) + (v17 << 6)), v18, 0x3AuLL);
        result = sub_18E27418C(v23, &v22);
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_18E3F445C()
{
  v1 = v0;
  sub_18E2706EC(&qword_1EABE90A8, &qword_18E4E2678);
  v2 = *v0;
  v3 = sub_18E44EFBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 5 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + 8 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        LOBYTE(v18) = *(v18 + 32);
        v23 = *(v4 + 48) + 8 * v17;
        *v23 = v19;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_18E3F45E8()
{
  v1 = v0;
  sub_18E2706EC(&qword_1EABE9078, &qword_18E4E2620);
  v2 = *v0;
  v3 = sub_18E44EFBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 56 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(v18 + 40);
        LOBYTE(v18) = *(v18 + 48);
        v25 = *(v4 + 48) + v17;
        *v25 = v20;
        *(v25 + 8) = v19;
        *(v25 + 16) = v21;
        *(v25 + 24) = v22;
        *(v25 + 32) = v23;
        *(v25 + 40) = v24;
        *(v25 + 48) = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_18E3F4778()
{
  v1 = v0;
  sub_18E2706EC(&qword_1EABE9060, &unk_18E4E2608);
  v2 = *v0;
  v3 = sub_18E44EFBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    v12 = (v9 + 63) >> 6;
    if (v11)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_17;
      }

      v11 = *(v2 + 56 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        do
        {
LABEL_15:
          v11 &= v11 - 1;
        }

        while (v11);
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v4;
  }

  return result;
}

void *sub_18E3F4884()
{
  v1 = v0;
  sub_18E2706EC(&qword_1EABE9058, &qword_18E4E2600);
  v2 = *v0;
  v3 = sub_18E44EFBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_18E3F49C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_18E2706EC(&qword_1EABE8FE8, &unk_18E4E1A30);
  result = sub_18E44EFCC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_18E44F48C();

        sub_18E44EB4C();
        result = sub_18E44F4CC();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_18E3F4BF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_18E2706EC(&qword_1EABE8FE0, &qword_18E4E1A28);
  result = sub_18E44EFCC();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = *(v3 + 48) + 24 * (v14 | (v7 << 6));
        v18 = *v17;
        v19 = *(v17 + 8);
        v20 = *(v17 + 16);
        v21 = *(v6 + 40);
        sub_18E44F48C();

        sub_18E44EB4C();
        if (v20 != 2)
        {
          sub_18E44F4AC();
        }

        sub_18E44F4AC();
        result = sub_18E44F4CC();
        v22 = -1 << *(v6 + 32);
        v23 = result & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
        {
          break;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
        *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v30 = *(v6 + 48) + 24 * v25;
        *v30 = v18;
        *(v30 + 8) = v19;
        *(v30 + 16) = v20;
        ++*(v6 + 16);
        v3 = v32;
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v13 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_25;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v31;
          goto LABEL_29;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_18E3F4E68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_18E2706EC(&qword_1EABE8FD8, &qword_18E4E1A20);
  result = sub_18E44EFCC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = *(v3 + 56);
    v42 = v2;
    v43 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v8;
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    v44 = v3;
    if ((v10 & v8) != 0)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = (*(v3 + 48) + ((v14 | (v7 << 6)) << 6));
        v18 = *v17;
        v19 = *(v17 + 42);
        v20 = v17[2];
        v54 = v17[1];
        *v55 = v20;
        *&v55[10] = v19;
        v53 = v18;
        v21 = *(v6 + 40);
        sub_18E44F48C();
        v22 = v54;
        sub_18E27418C(&v53, v51);
        sub_18E44EB4C();
        if (v22 != 2)
        {
          sub_18E44F4AC();
        }

        sub_18E44F4AC();
        v23 = *&v55[8];
        if (*&v55[8])
        {
          v24 = v55[24];
          v25 = *&v55[16];
          v45 = v11;
          v26 = v12;
          v27 = v6;
          v28 = *(&v54 + 1);
          v29 = *v55;
          v46 = __PAIR128__(*v55, *(&v54 + 1));
          v47 = *&v55[8];
          v48 = v55[24];
          sub_18E44F4AC();
          v49[0] = v28;
          v49[1] = v29;
          v6 = v27;
          v12 = v26;
          v49[2] = v23;
          v49[3] = v25;
          v3 = v44;
          v11 = v45;
          v50 = v24;
          sub_18E327BB0(v49, v51);
          CostProfile.hash(into:)();
          v51[0] = v46;
          v51[1] = v47;
          v52 = v48;
          sub_18E292124(v51);
        }

        else
        {
          sub_18E44F4AC();
        }

        MEMORY[0x193ACCC20](v55[25]);
        result = sub_18E44F4CC();
        v30 = -1 << *(v6 + 32);
        v31 = result & ~v30;
        v32 = v31 >> 6;
        if (((-1 << v31) & ~*(v13 + 8 * (v31 >> 6))) == 0)
        {
          break;
        }

        v33 = __clz(__rbit64((-1 << v31) & ~*(v13 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
        *(v13 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
        v38 = (*(v6 + 48) + (v33 << 6));
        v39 = v53;
        v40 = v54;
        v41 = *v55;
        *(v38 + 42) = *&v55[10];
        v38[1] = v40;
        v38[2] = v41;
        *v38 = v39;
        ++*(v6 + 16);
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v34 = 0;
      v35 = (63 - v30) >> 6;
      while (++v32 != v35 || (v34 & 1) == 0)
      {
        v36 = v32 == v35;
        if (v32 == v35)
        {
          v32 = 0;
        }

        v34 |= v36;
        v37 = *(v13 + 8 * v32);
        if (v37 != -1)
        {
          v33 = __clz(__rbit64(~v37)) + (v32 << 6);
          goto LABEL_28;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v42;
          goto LABEL_32;
        }

        v16 = *(v43 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_32:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_18E3F51A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_18E2706EC(&qword_1EABE90A8, &qword_18E4E2678);
  result = sub_18E44EFCC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v46 = v2;
    v47 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v48 = v11;
    v49 = v3;
    v50 = result + 56;
    v51 = result;
    if (v10)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v10));
        v53 = (v10 - 1) & v10;
LABEL_14:
        v15 = *(v3 + 48) + 40 * (v12 | (v7 << 6));
        v16 = *v15;
        v18 = *(v15 + 8);
        v17 = *(v15 + 16);
        v19 = *(v15 + 24);
        v54 = *(v15 + 32);
        v20 = *(v6 + 40);
        sub_18E44F48C();
        v52 = v16;
        sub_18E1C6DAC(v16);
        v55 = v19;

        v56 = v17;

        sub_18E44EB4C();

        v21 = v18 + 64;
        v22 = 1 << *(v18 + 32);
        if (v22 < 64)
        {
          v23 = ~(-1 << v22);
        }

        else
        {
          v23 = -1;
        }

        v24 = v23 & *(v18 + 64);
        v25 = (v22 + 63) >> 6;
        v57 = v18;

        v26 = 0;
        v27 = 0;
        if (v24)
        {
          while (1)
          {
            v28 = v27;
LABEL_23:
            v29 = __clz(__rbit64(v24));
            v24 &= v24 - 1;
            v30 = (v28 << 10) | (16 * v29);
            v31 = (*(v57 + 48) + v30);
            v33 = *v31;
            v32 = v31[1];
            v34 = (*(v57 + 56) + v30);
            v35 = *v34;
            v36 = v34[1];
            memcpy(__dst, __src, sizeof(__dst));

            sub_18E44EB4C();

            sub_18E44EB4C();

            result = sub_18E44F4CC();
            v26 ^= result;
            if (!v24)
            {
              goto LABEL_19;
            }
          }
        }

        while (1)
        {
LABEL_19:
          v28 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            __break(1u);
            goto LABEL_44;
          }

          if (v28 >= v25)
          {
            break;
          }

          v24 = *(v21 + 8 * v28);
          ++v27;
          if (v24)
          {
            v27 = v28;
            goto LABEL_23;
          }
        }

        MEMORY[0x193ACCC20](v26);
        sub_18E44F4AC();
        if (v56)
        {
          sub_18E2917A4(__src, v56);
        }

        v3 = v49;
        sub_18E44F4AC();
        if (v55)
        {
          sub_18E2917A4(__src, v55);
        }

        sub_18E44F4AC();
        result = sub_18E44F4CC();
        v6 = v51;
        v37 = -1 << *(v51 + 32);
        v38 = result & ~v37;
        v39 = v38 >> 6;
        if (((-1 << v38) & ~*(v50 + 8 * (v38 >> 6))) == 0)
        {
          break;
        }

        v40 = __clz(__rbit64((-1 << v38) & ~*(v50 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_38:
        *(v50 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
        v45 = *(v51 + 48) + 40 * v40;
        *v45 = v52;
        *(v45 + 8) = v57;
        *(v45 + 16) = v56;
        *(v45 + 24) = v55;
        *(v45 + 32) = v54;
        ++*(v51 + 16);
        v11 = v48;
        v10 = v53;
        if (!v53)
        {
          goto LABEL_9;
        }
      }

      v41 = 0;
      v42 = (63 - v37) >> 6;
      while (++v39 != v42 || (v41 & 1) == 0)
      {
        v43 = v39 == v42;
        if (v39 == v42)
        {
          v39 = 0;
        }

        v41 |= v43;
        v44 = *(v50 + 8 * v39);
        if (v44 != -1)
        {
          v40 = __clz(__rbit64(~v44)) + (v39 << 6);
          goto LABEL_38;
        }
      }
    }

    else
    {
LABEL_9:
      v13 = v7;
      while (1)
      {
        v7 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v46;
          goto LABEL_42;
        }

        v14 = *(v47 + 8 * v7);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v53 = (v14 - 1) & v14;
          goto LABEL_14;
        }
      }

LABEL_44:
      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_42:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_18E3F55CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_18E2706EC(&qword_1EABE9078, &qword_18E4E2620);
  result = sub_18E44EFCC();
  v6 = result;
  if (*(v3 + 16))
  {
    v35 = v1;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v36 = (v9 + 63) >> 6;
    v12 = result + 56;
    v37 = v3;
    v38 = result;
    if (v11)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v11));
        v39 = (v11 - 1) & v11;
LABEL_14:
        v16 = *(v3 + 48) + 56 * (v13 | (v7 << 6));
        v17 = *v16;
        v18 = *(v16 + 8);
        v19 = *(v16 + 16);
        v20 = *(v16 + 24);
        v22 = *(v16 + 32);
        v21 = *(v16 + 40);
        v23 = *(v16 + 48);
        v24 = *(v6 + 40);
        sub_18E44F48C();

        sub_18E44EB4C();
        sub_18E44EB4C();
        sub_18E44EB4C();
        sub_18E44F4AC();
        if (v23 != 15)
        {
          sub_18E44EB4C();
        }

        result = sub_18E44F4CC();
        v6 = v38;
        v25 = -1 << *(v38 + 32);
        v26 = result & ~v25;
        v27 = v26 >> 6;
        if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
        {
          break;
        }

        v28 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
        *(v12 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
        v33 = *(v38 + 48) + 56 * v28;
        *v33 = v17;
        *(v33 + 8) = v18;
        v11 = v39;
        *(v33 + 16) = v19;
        *(v33 + 24) = v20;
        *(v33 + 32) = v22;
        *(v33 + 40) = v21;
        *(v33 + 48) = v23;
        ++*(v38 + 16);
        v3 = v37;
        if (!v39)
        {
          goto LABEL_9;
        }
      }

      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v12 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_25;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v36)
        {
          v34 = v6;

          v2 = v35;
          goto LABEL_29;
        }

        v15 = *(v8 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v39 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v34 = result;

LABEL_29:
    *v2 = v34;
  }

  return result;
}

uint64_t sub_18E3F5A9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_18E2706EC(&qword_1EABE9060, &unk_18E4E2608);
  result = sub_18E44EFCC();
  v6 = result;
  if (*(v3 + 16))
  {
    v23 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (!v10)
    {
      goto LABEL_8;
    }

    do
    {
LABEL_12:
      v14 = *(v6 + 40);
      sub_18E44F48C();
      sub_18E44EB4C();
      result = sub_18E44F4CC();
      v15 = -1 << *(v6 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v12 + 8 * (v16 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v15) >> 6;
        while (++v17 != v20 || (v19 & 1) == 0)
        {
          v21 = v17 == v20;
          if (v17 == v20)
          {
            v17 = 0;
          }

          v19 |= v21;
          v22 = *(v12 + 8 * v17);
          if (v22 != -1)
          {
            v18 = __clz(__rbit64(~v22)) + (v17 << 6);
            goto LABEL_21;
          }
        }

        goto LABEL_27;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v12 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
      v10 &= v10 - 1;
      *(v12 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      ++*(v6 + 16);
    }

    while (v10);
LABEL_8:
    while (1)
    {
      v13 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v13 >= v11)
      {

        v2 = v23;
        goto LABEL_25;
      }

      v10 = *(v3 + 56 + 8 * v13);
      ++v7;
      if (v10)
      {
        v7 = v13;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_18E3F5C9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_18E2706EC(&qword_1EABE9058, &qword_18E4E2600);
  result = sub_18E44EFCC();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_18E44F48C();
        sub_18E1C6DAC(v16);
        sub_18E44EB4C();

        result = sub_18E44F4CC();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

void sub_18E3F5ED4()
{
  sub_18E1E6AB4();
  v4 = v3;
  if (!v2)
  {
LABEL_5:

    goto LABEL_6;
  }

  v5 = v2;
  if (*(v3 + 16) == v2)
  {
LABEL_6:
    sub_18E1E28A4();
    return;
  }

  v6 = v1;
  v7 = v0;
  sub_18E2706EC(&qword_1EABE8FE8, &unk_18E4E1A30);
  sub_18E1CDA2C();
  v8 = sub_18E44EFDC();
  v9 = v8;
  if (v6 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *v7;
  }

  v11 = 0;
  v12 = v8 + 56;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_18E44F48C();

    sub_18E44EB4C();
    v20 = sub_18E44F4CC();
    v21 = -1 << *(v9 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_29;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v17;
    v29[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_30;
    }

    v4 = v31;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= v6)
    {
      goto LABEL_5;
    }

    v15 = v7[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_18E3F60D4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_18E2706EC(&qword_1EABE9060, &unk_18E4E2608);
  result = sub_18E44EFDC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
LABEL_15:
    v14 = *(v9 + 40);
    sub_18E44F48C();
    sub_18E44EB4C();
    result = sub_18E44F4CC();
    v15 = -1 << *(v9 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v12 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v12 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_24;
        }
      }

      goto LABEL_28;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v12 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v12 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_29;
    }

    v10 &= v10 - 1;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v10 = a1[v13];
    ++v11;
    if (v10)
    {
      v11 = v13;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_18E3F62B8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_18E2706EC(&qword_1EABE9058, &qword_18E4E2600);
  result = sub_18E44EFDC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    sub_18E44F48C();
    sub_18E1C6DAC(v16);
    sub_18E44EB4C();

    result = sub_18E44F4CC();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + v21) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void *sub_18E3F64D4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);

    return v10;
  }

  return result;
}

uint64_t sub_18E3F656C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_18E3F65E4(int64_t a1, char a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    sub_18E3F0384(isUniquelyReferenced_nonNull_native, v7, a2 & 1, v5, &qword_1EABE0DF8, &qword_18E49D1A0, sub_18E26DF84);
    *v2 = v8;
  }
}

uint64_t sub_18E3F6670(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v30 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_15:
    v31 = 0;
    v18 = 0;
    v19 = 1 << *(a3 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(a3 + 56);
    v22 = (v19 + 63) >> 6;
    while (v21)
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_26:
      v26 = v23 | (v18 << 6);
      v27 = *(v4 + 40);
      sub_18E44F48C();
      sub_18E44EB4C();
      result = sub_18E44F4CC();
      v28 = result & ~(-1 << *(v4 + 32));
      if ((*(v4 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        *(v30 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        v17 = __OFADD__(v31++, 1);
        if (v17)
        {
          __break(1u);
          goto LABEL_30;
        }
      }
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {
        goto LABEL_30;
      }

      v25 = *(a3 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_26;
      }
    }
  }

  else
  {
    v31 = 0;
    v6 = 0;
    v4 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
LABEL_11:
      v9 &= v9 - 1;
      v12 = *(a3 + 40);
      sub_18E44F48C();
      sub_18E44EB4C();
      result = sub_18E44F4CC();
      v13 = result & ~(-1 << *(a3 + 32));
      v14 = v13 >> 6;
      v15 = *(a3 + 56 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if ((v16 & v15) != 0)
      {
        v30[v14] |= v16;
        v17 = __OFADD__(v31++, 1);
        if (v17)
        {
          __break(1u);
          goto LABEL_15;
        }
      }
    }

    while (1)
    {
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
LABEL_30:

        return sub_18E3F60D4(v30, a2, v31, a3);
      }

      v9 = *(v4 + 8 * v11);
      ++v6;
      if (v9)
      {
        v6 = v11;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18E3F68E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v54 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_26:
    v55 = 0;
    v28 = 0;
    v29 = v5 + 56;
    v30 = 1 << *(v5 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(v5 + 56);
    v33 = (v30 + 63) >> 6;
    v34 = v4 + 56;
    v51 = v33;
LABEL_30:
    while (v32)
    {
      v35 = __clz(__rbit64(v32));
      v57 = (v32 - 1) & v32;
LABEL_37:
      v53 = v35 | (v28 << 6);
      v38 = *(*(v5 + 48) + v53);
      v39 = *(v4 + 40);
      sub_18E44F48C();
      sub_18E1C6DAC(v38);
      sub_18E44EB4C();

      result = sub_18E44F4CC();
      v40 = ~(-1 << *(v4 + 32));
      while (1)
      {
        v41 = result & v40;
        if (((*(v34 + (((result & v40) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v40)) & 1) == 0)
        {
          v32 = v57;
          v5 = a3;
          v4 = a4;
          v33 = v51;
          goto LABEL_30;
        }

        v42 = sub_18E1C6DAC(*(*(a4 + 48) + v41));
        v44 = v43;
        if (v42 == sub_18E1C6DAC(v38) && v44 == v45)
        {
          break;
        }

        v47 = sub_18E44F3CC();

        result = v41 + 1;
        if (v47)
        {
          goto LABEL_47;
        }
      }

LABEL_47:
      *(v54 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
      v32 = v57;
      v27 = __OFADD__(v55++, 1);
      v5 = a3;
      v4 = a4;
      v33 = v51;
      if (v27)
      {
        __break(1u);
        goto LABEL_50;
      }
    }

    v36 = v28;
    while (1)
    {
      v28 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v28 >= v33)
      {
        goto LABEL_50;
      }

      v37 = *(v29 + 8 * v28);
      ++v36;
      if (v37)
      {
        v35 = __clz(__rbit64(v37));
        v57 = (v37 - 1) & v37;
        goto LABEL_37;
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v55 = 0;
    v56 = a3 + 56;
    v49 = v11;
    v50 = a4 + 56;
LABEL_6:
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_13:
      v15 = *(*(v4 + 48) + (v12 | (v6 << 6)));
      v16 = *(v5 + 40);
      sub_18E44F48C();
      sub_18E1C6DAC(v15);
      sub_18E44EB4C();

      result = sub_18E44F4CC();
      v17 = ~(-1 << *(v5 + 32));
      while (1)
      {
        v18 = result & v17;
        v19 = (result & v17) >> 6;
        v20 = 1 << (result & v17);
        if ((v20 & *(v56 + 8 * v19)) == 0)
        {
          v5 = a3;
          v4 = a4;
          v11 = v49;
          v7 = v50;
          v10 = v52;
          goto LABEL_6;
        }

        v21 = sub_18E1C6DAC(*(*(a3 + 48) + v18));
        v23 = v22;
        if (v21 == sub_18E1C6DAC(v15) && v23 == v24)
        {
          break;
        }

        v26 = sub_18E44F3CC();

        result = v18 + 1;
        if (v26)
        {
          goto LABEL_23;
        }
      }

LABEL_23:
      v10 = v52;
      v54[v19] |= v20;
      v27 = __OFADD__(v55++, 1);
      v5 = a3;
      v4 = a4;
      v11 = v49;
      v7 = v50;
      if (v27)
      {
        __break(1u);
        goto LABEL_26;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
LABEL_50:

        return sub_18E3F62B8(v54, a2, v55, v5);
      }

      v14 = *(v7 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v52 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18E3F6D08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18E3F6D50(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

unint64_t sub_18E3F6D6C()
{
  result = qword_1EABE9050;
  if (!qword_1EABE9050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE9050);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResourceReadinessStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t dispatch thunk of CatalogIndex.resources(with:)()
{
  return (*(*v0 + 272))();
}

{
  return (*(*v0 + 280))();
}

_BYTE *sub_18E3F70CC(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_18E3F7178()
{
  result = qword_1EABE9068;
  if (!qword_1EABE9068)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EABE9068);
  }

  return result;
}

uint64_t DownloadStatus.hashValue.getter()
{
  v1 = *v0;
  sub_18E44F48C();
  MEMORY[0x193ACCC20](v1);
  return sub_18E44F4CC();
}

uint64_t AssetSetSubscription.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AssetSetSubscription.expiration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AssetSetSubscription() + 28);

  return sub_18E3F73B4(v3, a1);
}

uint64_t type metadata accessor for AssetSetSubscription()
{
  result = qword_1EABDFA40;
  if (!qword_1EABDFA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18E3F73B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E2706EC(&qword_1EABE90D0, &qword_18E4E26C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AssetSetSubscription.init(name:assetSets:usageAliases:expiration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  v7 = a6 + *(type metadata accessor for AssetSetSubscription() + 28);

  return sub_18E3F7474(a5, v7);
}

uint64_t sub_18E3F7474(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E2706EC(&qword_1EABE90D0, &qword_18E4E26C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL static AssetSetSubscription.== infix(_:_:)(void *a1, void *a2)
{
  v4 = sub_18E44E65C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18E2706EC(&qword_1EABE90D0, &qword_18E4E26C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = sub_18E2706EC(&qword_1EABE90D8, &qword_18E4E26C8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  v17 = *a1 == *a2 && a1[1] == a2[1];
  if (!v17 && (sub_18E44F3CC() & 1) == 0)
  {
    return 0;
  }

  v18 = a1[2];
  v19 = a2[2];
  sub_18E26D9F0();
  if ((v20 & 1) == 0)
  {
    return 0;
  }

  sub_18E26D86C(a1[3], a2[3]);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

  v22 = *(type metadata accessor for AssetSetSubscription() + 28);
  v23 = *(v13 + 48);
  sub_18E3F73B4(a1 + v22, v16);
  sub_18E3F73B4(a2 + v22, &v16[v23]);
  sub_18E1C6AC8(v16);
  if (v17)
  {
    sub_18E1C6AC8(&v16[v23]);
    if (v17)
    {
      sub_18E275468(v16, &qword_1EABE90D0, &qword_18E4E26C0);
      return 1;
    }

    goto LABEL_16;
  }

  sub_18E3F73B4(v16, v12);
  sub_18E1C6AC8(&v16[v23]);
  if (v24)
  {
    (*(v5 + 8))(v12, v4);
LABEL_16:
    sub_18E275468(v16, &qword_1EABE90D8, &qword_18E4E26C8);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v23], v4);
  sub_18E3F77B8();
  v26 = sub_18E44EA1C();
  v27 = *(v5 + 8);
  v27(v8, v4);
  v27(v12, v4);
  sub_18E275468(v16, &qword_1EABE90D0, &qword_18E4E26C0);
  return (v26 & 1) != 0;
}

unint64_t sub_18E3F77B8()
{
  result = qword_1EABE90E0;
  if (!qword_1EABE90E0)
  {
    sub_18E44E65C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE90E0);
  }

  return result;
}

unint64_t sub_18E3F7854()
{
  result = qword_1EABE90E8;
  if (!qword_1EABE90E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE90E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DownloadStatus(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

void sub_18E3F79B0()
{
  sub_18E3F7A5C();
  if (v0 <= 0x3F)
  {
    sub_18E266314();
    if (v1 <= 0x3F)
    {
      sub_18E3F7AD0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_18E3F7A5C()
{
  if (!qword_1EABDF760)
  {
    sub_18E2707F8(&unk_1EABE1150, &qword_18E49CE38);
    v0 = sub_18E44E9DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EABDF760);
    }
  }
}

void sub_18E3F7AD0()
{
  if (!qword_1EABE0048)
  {
    sub_18E44E65C();
    v0 = sub_18E44EEFC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EABE0048);
    }
  }
}

uint64_t sub_18E3F7B28(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF9 && *(a1 + 25))
    {
      v2 = *a1 + 248;
    }

    else
    {
      v3 = *(a1 + 24);
      v4 = v3 >= 8;
      v2 = v3 - 8;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18E3F7B64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 7;
    }
  }

  return result;
}

uint64_t dispatch thunk of SubscriptionManagerProviding.downloadStatus(subscribers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_18E3F7F24;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SubscriptionManagerProviding.updateAssets(subscribers:detailedProgress:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_18E3F7E30;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_18E3F7E30()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t GuardrailResultInfo.useCaseIdentifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

void GuardrailResultInfo.instanceType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t GuardrailResultInfo.userRequestID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GuardrailResultInfo() + 28);
  v4 = sub_18E44E6AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for GuardrailResultInfo()
{
  result = qword_1EABE04C8;
  if (!qword_1EABE04C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GuardrailResultInfo.init(markedUnsafe:useCaseIdentifier:instanceType:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = *(a4 + 8);
  v11 = a5 + *(type metadata accessor for GuardrailResultInfo() + 28);
  result = sub_18E44E69C();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = v9;
  *(a5 + 32) = v10;
  return result;
}

uint64_t GuardrailResultInfo.init(markedUnsafe:useCaseIdentifier:instanceType:userRequestID:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a4;
  v9 = *(a4 + 8);
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = v8;
  *(a6 + 32) = v9;
  v10 = *(type metadata accessor for GuardrailResultInfo() + 28);
  v11 = sub_18E44E6AC();
  v12 = *(*(v11 - 8) + 32);

  return v12(a6 + v10, a5, v11);
}

uint64_t sub_18E3F8164()
{
  result = sub_18E44E6AC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t AvailableUseCases.AvailableUseCase.language.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AvailableUseCases.AvailableUseCase() + 20);

  return sub_18E29205C(v3, a1);
}

uint64_t type metadata accessor for AvailableUseCases.AvailableUseCase()
{
  result = qword_1EABDFB10;
  if (!qword_1EABDFB10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AvailableUseCases.AvailableUseCase.presentAssets.getter()
{
  v1 = *(v0 + *(type metadata accessor for AvailableUseCases.AvailableUseCase() + 24));
}

uint64_t AvailableUseCases.AvailableUseCase.missingAssets.getter()
{
  v1 = *(v0 + *(type metadata accessor for AvailableUseCases.AvailableUseCase() + 28));
}

uint64_t static AvailableUseCases.AvailableUseCase.== infix(_:_:)(char *a1, char *a2)
{
  v4 = *a2;
  v5 = sub_18E1C6DAC(*a1);
  v7 = v6;
  if (v5 == sub_18E1C6DAC(v4) && v7 == v8)
  {
  }

  else
  {
    v10 = sub_18E44F3CC();

    if ((v10 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v11 = type metadata accessor for AvailableUseCases.AvailableUseCase();
  if ((sub_18E2AE620(&a1[v11[5]], &a2[v11[5]]) & 1) == 0)
  {
    goto LABEL_19;
  }

  v12 = v11[6];
  v13 = *&a1[v12];
  v14 = *&a2[v12];
  if (v13)
  {
    if (!v14 || (sub_18E290008(v13, v14) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v14)
  {
    goto LABEL_19;
  }

  v15 = v11[7];
  v16 = *&a1[v15];
  v17 = *&a2[v15];
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_17;
    }

LABEL_19:
    v18 = 0;
    return v18 & 1;
  }

  if (!v17 || (sub_18E290008(v16, v17) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  v18 = a1[v11[8]] ^ a2[v11[8]] ^ 1;
  return v18 & 1;
}

void static AvailableUseCases.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_18E290524();
}

void sub_18E3F84AC()
{
  sub_18E2AE9A4();
  if (v0 <= 0x3F)
  {
    sub_18E3F8550();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18E3F8550()
{
  if (!qword_1EABDF6D8)
  {
    sub_18E2707F8(&unk_1EABE1160, &qword_18E49DDA0);
    v0 = sub_18E44EEFC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EABDF6D8);
    }
  }
}

uint64_t LocalCatalogClient.__allocating_init(resources:resourceBundles:statusBlock:informationBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  LocalCatalogClient.init(resources:resourceBundles:statusBlock:informationBlock:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

void *LocalCatalogClient.init(resources:resourceBundles:statusBlock:informationBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  type metadata accessor for CatalogIndex();
  CatalogIndex.__allocating_init(resources:resourceBundles:)();
  v6[2] = v12;
  v6[3] = a3;
  v6[4] = a4;
  v6[5] = a5;
  v6[6] = a6;
  type metadata accessor for UseCaseAvailabilityInfo();
  sub_18E2871E8();

  v6[7] = sub_18E44E9AC();
  v13 = objc_allocWithZone(type metadata accessor for SiriResourceAvailabilityInfo());
  v14 = SiriResourceAvailabilityInfo.init(enoughStorage:diskSpaceRequired:)(1, 0);

  v7[8] = v14;
  return v7;
}

uint64_t sub_18E3F8808()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_18E3F8830()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

uint64_t sub_18E3F8858(char *a1, void *a2)
{
  v3 = v2;
  v5 = *a1;
  swift_beginAccess();
  v6 = a2;
  v7 = *(v3 + 56);
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + 56);
  sub_18E26FE48(v6, v5);
  *(v3 + 56) = v9;
  return swift_endAccess();
}

uint64_t sub_18E3F88E0(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x1EEE6DFA0](sub_18E3F8900, 0, 0);
}

void sub_18E3F8900()
{
  v1 = *(v0 + 40);
  v2 = type metadata accessor for UseCaseAvailabilityInfo();
  sub_18E2871E8();
  v42 = v2;
  v3 = sub_18E44E9AC();
  v4 = *(v1 + 16);
  v41 = v0;
  if (!v4)
  {
LABEL_24:
    v40 = *(v41 + 8);

    v40(v3);
    return;
  }

  v5 = (*(v0 + 40) + 32);
  v6 = *(v0 + 48);
  swift_beginAccess();
  while (1)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *(v6 + 56);
    if (*(v9 + 16))
    {
      v10 = *(v6 + 56);

      v11 = sub_18E26DBE8(v7);
      if (v12)
      {
        v13 = *(*(v9 + 56) + 8 * v11);

        v14 = v13;
        swift_isUniquelyReferenced_nonNull_native();
        v15 = sub_18E1C78D8();
        sub_18E1C8064(v15, v16);
        if (v19)
        {
          goto LABEL_32;
        }

        v20 = v17;
        v21 = v18;
        sub_18E2706EC(&qword_1EABE0E78, &qword_18E49D220);
        v3 = v43;
        if (sub_18E1C51B4())
        {
          v22 = sub_18E26DBE8(v7);
          if ((v21 & 1) != (v23 & 1))
          {
            goto LABEL_27;
          }

          v20 = v22;
        }

        if ((v21 & 1) == 0)
        {
          sub_18E1C83A8();

          v39 = *(v43 + 16);
          v19 = __OFADD__(v39, 1);
          v38 = v39 + 1;
          if (v19)
          {
            goto LABEL_33;
          }

          goto LABEL_22;
        }

        v24 = *(v43 + 56);
        v25 = *(v24 + 8 * v20);
        *(v24 + 8 * v20) = v14;

        goto LABEL_23;
      }
    }

    objc_allocWithZone(v42);
    v26 = UseCaseAvailabilityInfo.init(resourcesReady:enoughStorage:diskSpaceRequired:)();
    swift_isUniquelyReferenced_nonNull_native();
    v27 = sub_18E1C78D8();
    sub_18E1C8064(v27, v28);
    if (v19)
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      return;
    }

    v31 = v29;
    v32 = v30;
    sub_18E2706EC(&qword_1EABE0E78, &qword_18E49D220);
    v3 = v43;
    if (sub_18E1C51B4())
    {
      break;
    }

LABEL_16:
    if ((v32 & 1) == 0)
    {
      sub_18E1C83A8();
      v37 = *(v43 + 16);
      v19 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v19)
      {
        goto LABEL_31;
      }

LABEL_22:
      *(v3 + 16) = v38;
      goto LABEL_23;
    }

    v35 = *(v43 + 56);
    v36 = *(v35 + 8 * v31);
    *(v35 + 8 * v31) = v26;

LABEL_23:
    if (!--v4)
    {
      goto LABEL_24;
    }
  }

  v33 = sub_18E26DBE8(v7);
  if ((v32 & 1) == (v34 & 1))
  {
    v31 = v33;
    goto LABEL_16;
  }

LABEL_27:

  sub_18E44F41C();
}

void sub_18E3F8BC0(void *a1)
{
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
  v2 = a1;
}

uint64_t LocalCatalogClient.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  return v0;
}

uint64_t LocalCatalogClient.__deallocating_deinit()
{
  LocalCatalogClient.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t sub_18E3F8D78(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18E3F8E10;

  return sub_18E3F88E0(a1);
}

uint64_t sub_18E3F8E10(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

unint64_t sub_18E3F8F34()
{
  result = qword_1EABE05F0;
  if (!qword_1EABE05F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EABE05F0);
  }

  return result;
}

uint64_t dispatch thunk of LocalCatalogClient.useCaseResourceAvailability(by:)(uint64_t a1)
{
  sub_18E1C6A30();
  v7 = (*(v3 + 272) + **(v3 + 272));
  v4 = *(*(v3 + 272) + 4);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_18E3F9360;

  return v7(a1);
}

uint64_t sub_18E3F9360(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

id UseCaseIdentifierWrapper.__allocating_init(useCaseIdentifier:)(_BYTE *a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC12ModelCatalog24UseCaseIdentifierWrapper_useCaseIdentifier] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id UseCaseIdentifierWrapper.init(useCaseIdentifier:)(_BYTE *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC12ModelCatalog24UseCaseIdentifierWrapper_useCaseIdentifier] = *a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t static UseCaseIdentifierWrapper.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EABE90F0 = a1;
  return result;
}

uint64_t sub_18E3F96B4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EABE90F0;
  return result;
}

uint64_t sub_18E3F9700(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EABE90F0 = v1;
  return result;
}

Swift::Void __swiftcall UseCaseIdentifierWrapper.encode(with:)(NSCoder with)
{
  v3 = sub_18E44E27C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_18E44E26C();
  v11 = *(v1 + OBJC_IVAR____TtC12ModelCatalog24UseCaseIdentifierWrapper_useCaseIdentifier);
  sub_18E233620();
  v6 = sub_18E44E25C();
  v8 = v7;

  sub_18E25BD94();
  sub_18E2523A0(v6, v8);
  v9 = sub_18E25BDDC(v6, v8);
  v10 = sub_18E44EA8C();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  sub_18E1FDFE0(v6, v8);
}

id UseCaseIdentifierWrapper.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_18E25BD94();
  v3 = sub_18E44EEBC();
  if (v3)
  {
    v4 = v3;
    v5 = sub_18E44E24C();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    sub_18E44E23C();
    v8 = MEMORY[0x193ACBD40](v4);
    v10 = v9;
    sub_18E200894();
    sub_18E44E22C();
    sub_18E1FDFE0(v8, v10);

    v11 = objc_allocWithZone(ObjectType);
    v11[OBJC_IVAR____TtC12ModelCatalog24UseCaseIdentifierWrapper_useCaseIdentifier] = v15;
    v14.receiver = v11;
    v14.super_class = ObjectType;
    v12 = objc_msgSendSuper2(&v14, sel_init);

    swift_getObjectType();
    sub_18E1C6D24();
  }

  else
  {

    swift_getObjectType();
    sub_18E1C6D24();
    return 0;
  }

  return v12;
}

id UseCaseIdentifierWrapper.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR____TtC12ModelCatalog24UseCaseIdentifierWrapper_useCaseIdentifier);
  v5 = objc_allocWithZone(ObjectType);
  v5[OBJC_IVAR____TtC12ModelCatalog24UseCaseIdentifierWrapper_useCaseIdentifier] = v4;
  v7.receiver = v5;
  v7.super_class = ObjectType;
  result = objc_msgSendSuper2(&v7, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

unint64_t UseCaseIdentifierWrapper.description.getter()
{
  sub_18E44EFFC();

  v1 = sub_18E1C6DAC(*(v0 + OBJC_IVAR____TtC12ModelCatalog24UseCaseIdentifierWrapper_useCaseIdentifier));
  MEMORY[0x193ACC300](v1);

  MEMORY[0x193ACC300](32032, 0xE200000000000000);
  return 0xD000000000000015;
}

uint64_t UseCaseIdentifierWrapper.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12ModelCatalog24UseCaseIdentifierWrapper_useCaseIdentifier);
  sub_18E44F48C();
  sub_18E1C6DAC(v1);
  sub_18E44EB4C();

  return sub_18E44F4CC();
}

id UseCaseIdentifierWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UseCaseIdentifierWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double serverConfigurationFor(serverBundleConfigID:variant:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_18E1C77B0();
  v7 = a1 == 0xD000000000000040 && v6 == a2;
  if (v7 || (sub_18E1C51D4() & 1) != 0)
  {
    v8 = sub_18E1C6D44();
    static Catalog.Resource.LLM.ServerConfiguration.AccessibilityMagnifier(variant:)(v8);
  }

  else
  {
    sub_18E1C77B0();
    v11 = a1 == 0xD000000000000039 && v10 == a2;
    if (v11 || (sub_18E1C51D4() & 1) != 0)
    {
      v12 = sub_18E1C6D44();
      static Catalog.Resource.LLM.ServerConfiguration.AnswerSynthesisServer(variant:)(v12);
    }

    else
    {
      sub_18E1C77B0();
      v14 = a1 == 0xD000000000000033 && v13 == a2;
      if (v14 || (sub_18E1C8078() & 1) != 0)
      {
        v15 = sub_18E1C6D44();
        static Catalog.Resource.LLM.ServerConfiguration.InstructServerAutograder(variant:)(v15);
      }

      else
      {
        sub_18E1C77B0();
        v17 = a1 == 0xD00000000000002DLL && v16 == a2;
        if (v17 || (sub_18E1C51D4() & 1) != 0)
        {
          v18 = sub_18E1C6D44();
          static Catalog.Resource.LLM.ServerConfiguration.InstructServerBase(variant:)(v18);
        }

        else
        {
          sub_18E1C77B0();
          v20 = a1 == 0xD00000000000003ALL && v19 == a2;
          if (v20 || (sub_18E1C51D4() & 1) != 0)
          {
            v21 = sub_18E1C6D44();
            static Catalog.Resource.LLM.ServerConfiguration.ServerBulletsTransform(variant:)(v21);
          }

          else
          {
            sub_18E1C77B0();
            v23 = a1 == 0xD000000000000035 && v22 == a2;
            if (v23 || (sub_18E1C51D4() & 1) != 0)
            {
              v24 = sub_18E1C6D44();
              static Catalog.Resource.LLM.ServerConfiguration.ServerConciseTone(variant:)(v24);
            }

            else
            {
              sub_18E1C77B0();
              v26 = a1 == 0xD00000000000003BLL && v25 == a2;
              if (v26 || (sub_18E1C51D4() & 1) != 0)
              {
                v27 = sub_18E1C6D44();
                static Catalog.Resource.LLM.ServerConfiguration.ServerDescribeYourEdit(variant:)(v27);
              }

              else
              {
                sub_18E1C77B0();
                v29 = a1 == 0xD00000000000003ELL && v28 == a2;
                if (v29 || (sub_18E1C51D4() & 1) != 0)
                {
                  v30 = sub_18E1C6D44();
                  static Catalog.Resource.LLM.ServerConfiguration.ServerFitnessWorkoutVoice(variant:)(v30);
                }

                else
                {
                  sub_18E1C77B0();
                  sub_18E1C54C8();
                  v32 = v7 && v31 == a2;
                  if (v32 || (sub_18E1C51D4() & 1) != 0)
                  {
                    v33 = sub_18E1C6D44();
                    static Catalog.Resource.LLM.ServerConfiguration.ServerFriendlyTone(variant:)(v33);
                  }

                  else
                  {
                    sub_18E1C77B0();
                    v35 = a1 == 0xD000000000000041 && v34 == a2;
                    if (v35 || (sub_18E1C51D4() & 1) != 0)
                    {
                      v36 = sub_18E1C6D44();
                      static Catalog.Resource.LLM.ServerConfiguration.JournalFollowUpPrompts(variant:)(v36);
                    }

                    else
                    {
                      sub_18E1C83D8();
                      v38 = v7 && v37 == a2;
                      if (v38 || (sub_18E1C51D4() & 1) != 0)
                      {
                        v39 = sub_18E1C6D44();
                        static Catalog.Resource.LLM.ServerConfiguration.LWPlannerV1(variant:)(v39);
                      }

                      else
                      {
                        sub_18E1C83D8();
                        v41 = v7 && v40 == a2;
                        if (v41 || (sub_18E1C51D4() & 1) != 0)
                        {
                          v42 = sub_18E1C6D44();
                          static Catalog.Resource.LLM.ServerConfiguration.ServerMagicRewrite(variant:)(v42);
                        }

                        else
                        {
                          sub_18E1C77B0();
                          v44 = a1 == 0xD000000000000043 && v43 == a2;
                          if (v44 || (sub_18E1C51D4() & 1) != 0)
                          {
                            v45 = sub_18E1C6D44();
                            static Catalog.Resource.LLM.ServerConfiguration.ServerMailReplyLongFormBasic(variant:)(v45);
                          }

                          else
                          {
                            sub_18E1C77B0();
                            v47 = a1 == 0xD000000000000045 && v46 == a2;
                            if (v47 || (sub_18E1C51D4() & 1) != 0)
                            {
                              v48 = sub_18E1C6D44();
                              static Catalog.Resource.LLM.ServerConfiguration.ServerMailReplyLongFormRewrite(variant:)(v48);
                            }

                            else
                            {
                              sub_18E1C83D8();
                              v50 = v7 && v49 == a2;
                              if (v50 || (sub_18E1C51D4() & 1) != 0)
                              {
                                v51 = sub_18E1C6D44();
                                static Catalog.Resource.LLM.ServerConfiguration.ServerMailReplyQA(variant:)(v51);
                              }

                              else
                              {
                                sub_18E1C77B0();
                                v53 = a1 == 0xD00000000000003ELL && v52 == a2;
                                if (v53 || (sub_18E1C51D4() & 1) != 0)
                                {
                                  v54 = sub_18E1C6D44();
                                  static Catalog.Resource.LLM.ServerConfiguration.MessagesUserRequest(variant:)(v54);
                                }

                                else
                                {
                                  sub_18E1C77B0();
                                  v56 = a1 == 0xD000000000000031 && v55 == a2;
                                  if (v56 || (sub_18E1C51D4() & 1) != 0)
                                  {
                                    v57 = sub_18E1C6D44();
                                    static Catalog.Resource.LLM.ServerConfiguration.MMGuardSafetyGuardrailServer(variant:)(v57);
                                  }

                                  else
                                  {
                                    sub_18E1C77B0();
                                    v59 = a1 == 0xD00000000000003FLL && v58 == a2;
                                    if (v59 || (sub_18E1C51D4() & 1) != 0)
                                    {
                                      v60 = sub_18E1C6D44();
                                      static Catalog.Resource.LLM.ServerConfiguration.OpenEndedInteraction(variant:)(v60);
                                    }

                                    else
                                    {
                                      sub_18E1C77B0();
                                      v62 = a1 == 0xD00000000000003ELL && v61 == a2;
                                      if (v62 || (sub_18E1C51D4() & 1) != 0)
                                      {
                                        v63 = sub_18E1C6D44();
                                        static Catalog.Resource.LLM.ServerConfiguration.OpenEndedReflection(variant:)(v63);
                                      }

                                      else
                                      {
                                        sub_18E1C77B0();
                                        v65 = a1 == 0xD00000000000003ALL && v64 == a2;
                                        if (v65 || (sub_18E1C51D4() & 1) != 0)
                                        {
                                          v66 = sub_18E1C6D44();
                                          static Catalog.Resource.LLM.ServerConfiguration.OpenEndedSchema(variant:)(v66);
                                        }

                                        else
                                        {
                                          sub_18E1C77B0();
                                          v68 = a1 == 0xD000000000000038 && v67 == a2;
                                          if (v68 || (sub_18E1C51D4() & 1) != 0)
                                          {
                                            v69 = sub_18E1C6D44();
                                            static Catalog.Resource.LLM.ServerConfiguration.OpenEndedTone(variant:)(v69);
                                          }

                                          else
                                          {
                                            sub_18E1C77B0();
                                            v71 = a1 == 0xD00000000000003DLL && v70 == a2;
                                            if (v71 || (sub_18E1C51D4() & 1) != 0)
                                            {
                                              v72 = sub_18E1C6D44();
                                              static Catalog.Resource.LLM.ServerConfiguration.OpenEndedToneBase(variant:)(v72);
                                            }

                                            else
                                            {
                                              sub_18E1C77B0();
                                              v74 = a1 == 0xD000000000000047 && v73 == a2;
                                              if (v74 || (sub_18E1C51D4() & 1) != 0)
                                              {
                                                v75 = sub_18E1C6D44();
                                                static Catalog.Resource.LLM.ServerConfiguration.OpenEndedToneQueryResponse(variant:)(v75);
                                              }

                                              else
                                              {
                                                sub_18E1C77B0();
                                                v77 = a1 == 0xD00000000000004ALL && v76 == a2;
                                                if (v77 || (sub_18E1C51D4() & 1) != 0)
                                                {
                                                  v78 = sub_18E1C6D44();
                                                  static Catalog.Resource.LLM.ServerConfiguration.OpenEndedToneQueryResponseV2(variant:)(v78);
                                                }

                                                else
                                                {
                                                  sub_18E1C77B0();
                                                  v80 = a1 == 0xD000000000000041 && v79 == a2;
                                                  if (v80 || (sub_18E1C51D4() & 1) != 0)
                                                  {
                                                    v81 = sub_18E1C6D44();
                                                    static Catalog.Resource.LLM.ServerConfiguration.ServerPersonalizedSmartReply(variant:)(v81);
                                                  }

                                                  else
                                                  {
                                                    sub_18E1C83D8();
                                                    v83 = v7 && v82 == a2;
                                                    if (v83 || (sub_18E1C51D4() & 1) != 0)
                                                    {
                                                      v84 = sub_18E1C6D44();
                                                      static Catalog.Resource.LLM.ServerConfiguration.PhotosCommon(variant:)(v84);
                                                    }

                                                    else
                                                    {
                                                      sub_18E1C77B0();
                                                      v86 = a1 == 0xD000000000000047 && v85 == a2;
                                                      if (v86 || (sub_18E1C51D4() & 1) != 0)
                                                      {
                                                        v87 = sub_18E1C6D44();
                                                        static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationAssetCuration(variant:)(v87);
                                                      }

                                                      else
                                                      {
                                                        sub_18E1C77B0();
                                                        v89 = a1 == 0xD00000000000004ALL && v88 == a2;
                                                        if (v89 || (sub_18E1C51D4() & 1) != 0)
                                                        {
                                                          v90 = sub_18E1C6D44();
                                                          static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationAssetCurationV2(variant:)(v90);
                                                        }

                                                        else
                                                        {
                                                          sub_18E1C77B0();
                                                          v92 = a1 == 0xD000000000000046 && v91 == a2;
                                                          if (v92 || (sub_18E1C51D4() & 1) != 0)
                                                          {
                                                            v93 = sub_18E1C6D44();
                                                            static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationGlobalTraits(variant:)(v93);
                                                          }

                                                          else
                                                          {
                                                            sub_18E1C77B0();
                                                            sub_18E1C54C8();
                                                            v95 = v7 && v94 == a2;
                                                            if (v95 || (sub_18E1C51D4() & 1) != 0)
                                                            {
                                                              v96 = sub_18E1C6D44();
                                                              static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationGlobalTraitsV2(variant:)(v96);
                                                            }

                                                            else
                                                            {
                                                              sub_18E1C83D8();
                                                              v98 = v7 && v97 == a2;
                                                              if (v98 || (sub_18E1C51D4() & 1) != 0)
                                                              {
                                                                v99 = sub_18E1C6D44();
                                                                static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationGlobalTraitsV3(variant:)(v99);
                                                              }

                                                              else
                                                              {
                                                                sub_18E1C77B0();
                                                                v101 = a1 == 0xD00000000000004CLL && v100 == a2;
                                                                if (v101 || (sub_18E1C51D4() & 1) != 0)
                                                                {
                                                                  v102 = sub_18E1C6D44();
                                                                  static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationQueryUnderstanding(variant:)(v102);
                                                                }

                                                                else
                                                                {
                                                                  sub_18E1C77B0();
                                                                  sub_18E1C54C8();
                                                                  v104 = v7 && v103 == a2;
                                                                  if (v104 || (sub_18E1C51D4() & 1) != 0)
                                                                  {
                                                                    v105 = sub_18E1C6D44();
                                                                    static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationQueryUnderstandingV2(variant:)(v105);
                                                                  }

                                                                  else
                                                                  {
                                                                    sub_18E1C83D8();
                                                                    v107 = v7 && v106 == a2;
                                                                    if (v107 || (sub_18E1C51D4() & 1) != 0)
                                                                    {
                                                                      v108 = sub_18E1C6D44();
                                                                      static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationQueryUnderstandingV3(variant:)(v108);
                                                                    }

                                                                    else
                                                                    {
                                                                      sub_18E1C77B0();
                                                                      sub_18E1C54C8();
                                                                      v110 = v7 && v109 == a2;
                                                                      if (v110 || (sub_18E1C51D4() & 1) != 0)
                                                                      {
                                                                        v111 = sub_18E1C6D44();
                                                                        static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationStoryteller(variant:)(v111);
                                                                      }

                                                                      else
                                                                      {
                                                                        sub_18E1C77B0();
                                                                        v113 = a1 == 0xD000000000000047 && v112 == a2;
                                                                        if (v113 || (sub_18E1C51D4() & 1) != 0)
                                                                        {
                                                                          v114 = sub_18E1C6D44();
                                                                          static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationStorytellerV2(variant:)(v114);
                                                                        }

                                                                        else
                                                                        {
                                                                          sub_18E1C77B0();
                                                                          v116 = a1 == 0xD000000000000030 && v115 == a2;
                                                                          if (v116 || (sub_18E1C51D4() & 1) != 0)
                                                                          {
                                                                            v117 = sub_18E1C6D44();
                                                                            static Catalog.Resource.LLM.ServerConfiguration.Planner(variant:)(v117);
                                                                          }

                                                                          else
                                                                          {
                                                                            sub_18E1C77B0();
                                                                            v119 = a1 == 0xD000000000000033 && v118 == a2;
                                                                            if (v119 || (sub_18E1C8078() & 1) != 0)
                                                                            {
                                                                              v120 = sub_18E1C6D44();
                                                                              static Catalog.Resource.LLM.ServerConfiguration.PlannerV2(variant:)(v120);
                                                                            }

                                                                            else
                                                                            {
                                                                              sub_18E1C77B0();
                                                                              v122 = a1 == 0xD000000000000033 && v121 == a2;
                                                                              if (v122 || (sub_18E1C8078() & 1) != 0)
                                                                              {
                                                                                v123 = sub_18E1C6D44();
                                                                                static Catalog.Resource.LLM.ServerConfiguration.PlannerV3(variant:)(v123);
                                                                              }

                                                                              else
                                                                              {
                                                                                sub_18E1C77B0();
                                                                                v125 = a1 == 0xD000000000000033 && v124 == a2;
                                                                                if (v125 || (sub_18E1C8078() & 1) != 0)
                                                                                {
                                                                                  v126 = sub_18E1C6D44();
                                                                                  static Catalog.Resource.LLM.ServerConfiguration.PlannerV7(variant:)(v126);
                                                                                }

                                                                                else
                                                                                {
                                                                                  sub_18E1C77B0();
                                                                                  v128 = a1 == 0xD000000000000033 && v127 == a2;
                                                                                  if (v128 || (sub_18E1C8078() & 1) != 0)
                                                                                  {
                                                                                    v129 = sub_18E1C6D44();
                                                                                    static Catalog.Resource.LLM.ServerConfiguration.PlannerV8(variant:)(v129);
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    sub_18E1C77B0();
                                                                                    v131 = a1 == 0xD000000000000033 && v130 == a2;
                                                                                    if (v131 || (sub_18E1C8078() & 1) != 0)
                                                                                    {
                                                                                      v132 = sub_18E1C6D44();
                                                                                      static Catalog.Resource.LLM.ServerConfiguration.PlannerV9(variant:)(v132);
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      sub_18E1C77B0();
                                                                                      v134 = a1 == 0xD000000000000039 && v133 == a2;
                                                                                      if (v134 || (sub_18E1C51D4() & 1) != 0)
                                                                                      {
                                                                                        v135 = sub_18E1C6D44();
                                                                                        static Catalog.Resource.LLM.ServerConfiguration.ServerPQAVerification(variant:)(v135);
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        sub_18E1C77B0();
                                                                                        v137 = a1 == 0xD00000000000003ALL && v136 == a2;
                                                                                        if (v137 || (sub_18E1C51D4() & 1) != 0)
                                                                                        {
                                                                                          v138 = sub_18E1C6D44();
                                                                                          static Catalog.Resource.LLM.ServerConfiguration.ServerProfessionalTone(variant:)(v138);
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          sub_18E1C77B0();
                                                                                          v140 = a1 == 0xD00000000000003CLL && v139 == a2;
                                                                                          if (v140 || (sub_18E1C51D4() & 1) != 0)
                                                                                          {
                                                                                            v141 = sub_18E1C6D44();
                                                                                            static Catalog.Resource.LLM.ServerConfiguration.ServerProofreadingReview(variant:)(v141);
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            sub_18E1C77B0();
                                                                                            v143 = a1 == 0xD000000000000048 && v142 == a2;
                                                                                            if (v143 || (sub_18E1C51D4() & 1) != 0)
                                                                                            {
                                                                                              v144 = sub_18E1C6D44();
                                                                                              static Catalog.Resource.LLM.ServerConfiguration.RemindersAutoCategorizeList(variant:)(v144);
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              sub_18E1C77B0();
                                                                                              v146 = a1 == 0xD00000000000003CLL && v145 == a2;
                                                                                              if (v146 || (sub_18E1C51D4() & 1) != 0)
                                                                                              {
                                                                                                v147 = sub_18E1C6D44();
                                                                                                static Catalog.Resource.LLM.ServerConfiguration.ResponseGeneration(variant:)(v147);
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                sub_18E1C77B0();
                                                                                                sub_18E1C5E1C();
                                                                                                v149 = v7 && v148 == a2;
                                                                                                if (v149 || (sub_18E1C51D4() & 1) != 0)
                                                                                                {
                                                                                                  v150 = sub_18E1C6D44();
                                                                                                  static Catalog.Resource.LLM.ServerConfiguration.ResponseGenerationV2(variant:)(v150);
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  sub_18E1C77B0();
                                                                                                  sub_18E1C5E1C();
                                                                                                  v152 = v7 && v151 == a2;
                                                                                                  if (v152 || (sub_18E1C51D4() & 1) != 0)
                                                                                                  {
                                                                                                    v153 = sub_18E1C6D44();
                                                                                                    static Catalog.Resource.LLM.ServerConfiguration.ResponseGenerationV3(variant:)(v153);
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    sub_18E1C77B0();
                                                                                                    sub_18E1C5E1C();
                                                                                                    v155 = v7 && v154 == a2;
                                                                                                    if (v155 || (sub_18E1C51D4() & 1) != 0)
                                                                                                    {
                                                                                                      v156 = sub_18E1C6D44();
                                                                                                      static Catalog.Resource.LLM.ServerConfiguration.ResponseGenerationV7(variant:)(v156);
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      sub_18E1C77B0();
                                                                                                      sub_18E1C5E1C();
                                                                                                      v158 = v7 && v157 == a2;
                                                                                                      if (v158 || (sub_18E1C51D4() & 1) != 0)
                                                                                                      {
                                                                                                        v159 = sub_18E1C6D44();
                                                                                                        static Catalog.Resource.LLM.ServerConfiguration.ResponseGenerationV8(variant:)(v159);
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        sub_18E1C77B0();
                                                                                                        v161 = a1 == 0xD000000000000043 && v160 == a2;
                                                                                                        if (v161 || (sub_18E1C51D4() & 1) != 0)
                                                                                                        {
                                                                                                          v162 = sub_18E1C6D44();
                                                                                                          static Catalog.Resource.LLM.ServerConfiguration.SearchQueryUnderstandingServer(variant:)(v162);
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          sub_18E1C77B0();
                                                                                                          v164 = a1 == 0xD000000000000041 && v163 == a2;
                                                                                                          if (v164 || (sub_18E1C51D4() & 1) != 0)
                                                                                                          {
                                                                                                            v165 = sub_18E1C6D44();
                                                                                                            static Catalog.Resource.LLM.ServerConfiguration.ShortcutsAskAFMAction(variant:)(v165);
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            sub_18E1C83D8();
                                                                                                            v167 = v7 && v166 == a2;
                                                                                                            if (v167 || (sub_18E1C51D4() & 1) != 0)
                                                                                                            {
                                                                                                              v168 = sub_18E1C6D44();
                                                                                                              static Catalog.Resource.LLM.ServerConfiguration.ShortcutsAskAFMActionV2(variant:)(v168);
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              sub_18E1C77B0();
                                                                                                              v170 = a1 == 0xD00000000000003ELL && v169 == a2;
                                                                                                              if (v170 || (sub_18E1C51D4() & 1) != 0)
                                                                                                              {
                                                                                                                v171 = sub_18E1C6D44();
                                                                                                                static Catalog.Resource.LLM.ServerConfiguration.ServerStructuredExtraction(variant:)(v171);
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                sub_18E1C77B0();
                                                                                                                v173 = a1 == 0xD000000000000037 && v172 == a2;
                                                                                                                if (v173 || (sub_18E1C51D4() & 1) != 0)
                                                                                                                {
                                                                                                                  v174 = sub_18E1C6D44();
                                                                                                                  static Catalog.Resource.LLM.ServerConfiguration.STXMultimodal(variant:)(v174);
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  sub_18E1C77B0();
                                                                                                                  v176 = a1 == 0xD000000000000042 && v175 == a2;
                                                                                                                  if (v176 || (sub_18E1C51D4() & 1) != 0)
                                                                                                                  {
                                                                                                                    v177 = sub_18E1C6D44();
                                                                                                                    static Catalog.Resource.LLM.ServerConfiguration.SuperAutofillMultimodal(variant:)(v177);
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    sub_18E1C77B0();
                                                                                                                    v179 = a1 == 0xD000000000000039 && v178 == a2;
                                                                                                                    if (v179 || (sub_18E1C51D4() & 1) != 0)
                                                                                                                    {
                                                                                                                      v180 = sub_18E1C6D44();
                                                                                                                      static Catalog.Resource.LLM.ServerConfiguration.ServerTablesTransform(variant:)(v180);
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      sub_18E1C77B0();
                                                                                                                      v182 = a1 == 0xD00000000000003CLL && v181 == a2;
                                                                                                                      if (v182 || (sub_18E1C51D4() & 1) != 0)
                                                                                                                      {
                                                                                                                        v183 = sub_18E1C6D44();
                                                                                                                        static Catalog.Resource.LLM.ServerConfiguration.ServerTakeawaysTransform(variant:)(v183);
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        sub_18E1C77B0();
                                                                                                                        v185 = a1 == 0xD000000000000038 && v184 == a2;
                                                                                                                        if (v185 || (sub_18E1C51D4() & 1) != 0)
                                                                                                                        {
                                                                                                                          v186 = sub_18E1C6D44();
                                                                                                                          static Catalog.Resource.LLM.ServerConfiguration.SummarizationTextSummarizer(variant:)(v186);
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          sub_18E1C77B0();
                                                                                                                          v188 = a1 == 0xD00000000000003CLL && v187 == a2;
                                                                                                                          if (v188 || (sub_18E1C51D4() & 1) != 0)
                                                                                                                          {
                                                                                                                            v189 = sub_18E1C6D44();
                                                                                                                            static Catalog.Resource.LLM.ServerConfiguration.VisualIntelligence(variant:)(v189);
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            sub_18E1C77B0();
                                                                                                                            v191 = a1 == 0xD000000000000038 && v190 == a2;
                                                                                                                            if (v191 || (sub_18E1C51D4() & 1) != 0)
                                                                                                                            {
                                                                                                                              v192 = sub_18E1C6D44();
                                                                                                                              static Catalog.Resource.LLM.ServerConfiguration.FinancialInsights(variant:)(v192);
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              sub_18E1C77B0();
                                                                                                                              v194 = a1 == 0xD000000000000033 && v193 == a2;
                                                                                                                              if (v194 || (sub_18E1C8078() & 1) != 0)
                                                                                                                              {
                                                                                                                                v195 = sub_18E1C6D44();
                                                                                                                                static Catalog.Resource.LLM.ServerConfiguration.PhotosMemoriesCreationBase(variant:)(v195);
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                sub_18E1C77B0();
                                                                                                                                v197 = a1 == 0xD00000000000003DLL && v196 == a2;
                                                                                                                                if (v197 || (sub_18E1C51D4() & 1) != 0)
                                                                                                                                {
                                                                                                                                  v198 = sub_18E1C6D44();
                                                                                                                                  static Catalog.Resource.LLM.ServerConfiguration.SummarizationTextSummarizerAjaxBase(variant:)(v198);
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  *(a3 + 32) = 0;
                                                                                                                                  result = 0.0;
                                                                                                                                  *a3 = 0u;
                                                                                                                                  *(a3 + 16) = 0u;
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
        }
      }
    }
  }

  return result;
}

double sub_18E3FAAFC@<D0>(_OWORD *a1@<X8>)
{
  v3 = sub_18E44E24C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_18E44E23C();
  v6 = *(v1 + OBJC_IVAR____TtC12ModelCatalog23DebugInformationWrapper_data);
  v7 = *(v1 + OBJC_IVAR____TtC12ModelCatalog23DebugInformationWrapper_data + 8);
  sub_18E3FB460();
  sub_18E44E22C();

  result = *&v9;
  *a1 = v9;
  a1[1] = v10;
  return result;
}

id DebugInformationWrapper.__allocating_init(info:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = sub_18E44E27C();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_18E44E26C();
  v16 = v2;
  v17 = v3;
  v18 = v4;
  v19 = v5;
  sub_18E3FADFC();
  v9 = sub_18E44E25C();
  v11 = v10;

  sub_18E30A338(v2);

  v12 = objc_allocWithZone(v1);
  v13 = &v12[OBJC_IVAR____TtC12ModelCatalog23DebugInformationWrapper_data];
  *v13 = v9;
  v13[1] = v11;
  v15.receiver = v12;
  v15.super_class = v1;
  return objc_msgSendSuper2(&v15, sel_init);
}

unint64_t sub_18E3FADFC()
{
  result = qword_1EABDFB88;
  if (!qword_1EABDFB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFB88);
  }

  return result;
}

uint64_t static DebugInformationWrapper.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EABE9100 = a1;
  return result;
}

uint64_t sub_18E3FAF6C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EABE9100;
  return result;
}

uint64_t sub_18E3FAFB8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EABE9100 = v1;
  return result;
}

Swift::Void __swiftcall DebugInformationWrapper.encode(with:)(NSCoder with)
{
  sub_18E25BD94();
  v3 = v1 + OBJC_IVAR____TtC12ModelCatalog23DebugInformationWrapper_data;
  v4 = *(v1 + OBJC_IVAR____TtC12ModelCatalog23DebugInformationWrapper_data);
  v5 = *(v3 + 8);
  sub_18E2523A0(v4, v5);
  v6 = sub_18E25BDDC(v4, v5);
  v7 = sub_18E44EA8C();
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];
}

id DebugInformationWrapper.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_18E25BD94();
  v3 = sub_18E44EEBC();
  if (v3)
  {
    v4 = v3;
    v5 = sub_18E305458(v4);
    v7 = v6;
    v8 = objc_allocWithZone(ObjectType);
    v9 = &v8[OBJC_IVAR____TtC12ModelCatalog23DebugInformationWrapper_data];
    *v9 = v5;
    v9[1] = v7;
    v12.receiver = v8;
    v12.super_class = ObjectType;
    v10 = objc_msgSendSuper2(&v12, sel_init);

    swift_getObjectType();
    sub_18E1C6D58();
  }

  else
  {

    swift_getObjectType();
    sub_18E1C6D58();
    return 0;
  }

  return v10;
}

id DebugInformationWrapper.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = v1 + OBJC_IVAR____TtC12ModelCatalog23DebugInformationWrapper_data;
  v5 = *(v1 + OBJC_IVAR____TtC12ModelCatalog23DebugInformationWrapper_data);
  v6 = *(v4 + 8);
  v7 = objc_allocWithZone(ObjectType);
  v8 = &v7[OBJC_IVAR____TtC12ModelCatalog23DebugInformationWrapper_data];
  *v8 = v5;
  v8[1] = v6;
  sub_18E2523A0(v5, v6);
  v10.receiver = v7;
  v10.super_class = ObjectType;
  result = objc_msgSendSuper2(&v10, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

id DebugInformationWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DebugInformationWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_18E3FB460()
{
  result = qword_1EABDFB78;
  if (!qword_1EABDFB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFB78);
  }

  return result;
}

uint64_t GenerativePlaygroundFFKey.hashValue.getter()
{
  sub_18E44F48C();
  MEMORY[0x193ACCC20](0);
  return sub_18E44F4CC();
}

void *sub_18E3FB5A8()
{
  result = sub_18E44E9AC();
  off_1EABE0C80 = result;
  return result;
}

uint64_t featureFlagsKeys.getter()
{
  if (qword_1EABE0C78 != -1)
  {
    swift_once();
  }
}

unint64_t sub_18E3FB648()
{
  result = qword_1EABE9130;
  if (!qword_1EABE9130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE9130);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GenerativePlaygroundFFKey(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t CatalogClientProtocol.queryResource(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CatalogIndex();
  if (qword_1ED6A8360 != -1)
  {
    swift_once();
  }

  result = static CatalogIndex.resolveResourceQueryURI(uri:variantResolverMappings:)();
  if (!v3)
  {
    (*(a3 + 8))(result);
  }

  return result;
}

void CatalogClientProtocol.queryResource(with:)()
{
  sub_18E1C570C();
  v2 = sub_18E44E54C();
  v3 = sub_18E1C4EAC(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_18E1C58B4();
  ResourceQuery.toURI()();
  if (!v0)
  {
    v6 = *(v1 + 40);
    v7 = sub_18E1D61F8();
    v8(v7);
    v9 = sub_18E1C8D64();
    v10(v9);
  }
}

uint64_t sub_18E3FB910()
{
  sub_18E1C52F0();
  v0 = swift_task_alloc();
  v1 = sub_18E1C2960(v0);
  *v1 = v2;
  v3 = sub_18E1C69A4(v1);

  return CatalogClientProtocol.availableUseCases(useCaseIdentifiers:includeAssetsInformation:)(v3);
}

uint64_t sub_18E3FB9C0()
{
  sub_18E1C52F0();
  v0 = swift_task_alloc();
  v1 = sub_18E1C5EA8(v0);
  *v1 = v2;
  sub_18E1C5950(v1);

  return CatalogClientProtocol.generativeExperiencesEssentialResourcesReady()();
}

uint64_t sub_18E3FBA70()
{
  sub_18E1C52F0();
  v0 = swift_task_alloc();
  v1 = sub_18E1C5EA8(v0);
  *v1 = v2;
  sub_18E1C5950(v1);

  return CatalogClientProtocol.generativeExperiencesEssentialResourcesReady()();
}

uint64_t sub_18E3FBAF0()
{
  sub_18E1C52F0();
  v0 = swift_task_alloc();
  v1 = sub_18E1C5EA8(v0);
  *v1 = v2;
  sub_18E1C5950(v1);

  return CatalogClientProtocol.acquireCoherenceToken(identifiers:)();
}

uint64_t sub_18E3FBB80()
{
  sub_18E1C52F0();
  sub_18E3FBC3C();
  v1 = sub_18E44E9AC();
  v2 = type metadata accessor for AcquireCoherenceTokenResponse();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC12ModelCatalog29AcquireCoherenceTokenResponse_tokens] = v1;
  v0[1].receiver = v3;
  v0[1].super_class = v2;
  objc_msgSendSuper2(v0 + 1, sel_init);
  sub_18E1C6500();

  return v4();
}

unint64_t sub_18E3FBC3C()
{
  result = qword_1ED6A80D0;
  if (!qword_1ED6A80D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED6A80D0);
  }

  return result;
}

uint64_t sub_18E3FBC80()
{
  sub_18E1C52F0();
  v0 = swift_task_alloc();
  v1 = sub_18E1C2960(v0);
  *v1 = v2;
  v3 = sub_18E1C69A4(v1);

  return CatalogClientProtocol.supportedLanguagesAndRegions(resourceBundleQuery:)(v3);
}

uint64_t sub_18E3FBD18()
{
  v0 = swift_task_alloc();
  v1 = sub_18E1C2960(v0);
  *v1 = v2;
  sub_18E1C8F08(v1);

  return CatalogClientProtocol.availableUseCases()();
}

uint64_t CatalogClientProtocol.availableUseCases()()
{
  sub_18E1CF270();
  sub_18E1CAF5C();
  v3 = *(sub_18E1C809C(v0, v1, v2) + 192);
  sub_18E1C5E28();
  v19 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = sub_18E1C2960(v7);
  *v8 = v9;
  v8[1] = sub_18E3FD860;
  sub_18E1C2A80();

  return v15(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_18E3FBEC0()
{
  sub_18E1C52F0();
  v0 = swift_task_alloc();
  v1 = sub_18E1C2960(v0);
  *v1 = v2;
  v3 = sub_18E1C69A4(v1);

  return CatalogClientProtocol.availableUseCases(useCaseIdentifiers:includeAssetsInformation:)(v3);
}

uint64_t sub_18E3FBF48()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_18E1C52E0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t CatalogClientProtocol.requestDownloadForSettings()()
{
  v0 = sub_18E2706EC(&qword_1EABE1028, &unk_18E4E2B80);
  v1 = sub_18E1C4EAC(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  (*(v5 + 104))(&v7 - v4, *MEMORY[0x1E69E8650]);
  return sub_18E44ED8C();
}

uint64_t CatalogClientProtocol.requestDownloadForUseCases(useCases:)()
{
  v0 = sub_18E2706EC(&qword_1EABE1030, &qword_18E49DB18);
  v1 = sub_18E1C4EAC(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  (*(v5 + 104))(&v7 - v4, *MEMORY[0x1E69E8650]);
  return sub_18E44ED8C();
}

uint64_t sub_18E3FC274()
{
  sub_18E1C52F0();
  v0 = swift_task_alloc();
  v1 = sub_18E1C5EA8(v0);
  *v1 = v2;
  sub_18E1C5950(v1);

  return CatalogClientProtocol.donateSafetyFailure(useCaseIdentifier:userIdentifier:)();
}

uint64_t sub_18E3FC2F8()
{
  sub_18E1C52F0();
  v0 = swift_task_alloc();
  v1 = sub_18E1C5EA8(v0);
  *v1 = v2;
  v3 = sub_18E1C5950(v1);

  return CatalogClientProtocol.donateSafetyFailure(safetyFailure:)(v3);
}

uint64_t sub_18E3FC37C()
{
  sub_18E1C52F0();
  v0 = swift_task_alloc();
  v1 = sub_18E1C5EA8(v0);
  *v1 = v2;
  v3 = sub_18E1C5950(v1);

  return CatalogClientProtocol.donateSafetyFailure(safetyFailure:)(v3);
}

uint64_t sub_18E3FC3FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18E2891D0;

  return CatalogClientProtocol.generativeExperiencesEssentialResourcesReady()();
}

uint64_t sub_18E3FC488()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18E2891D0;

  return CatalogClientProtocol.generativeExperiencesEssentialResourcesReady()();
}

uint64_t sub_18E3FC514()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18E2891D4;

  return CatalogClientProtocol.useCaseResourceAvailability(by:)();
}

uint64_t sub_18E3FC5B0()
{
  sub_18E1C52F0();
  type metadata accessor for UseCaseAvailabilityInfo();
  sub_18E2871E8();
  sub_18E44E9AC();
  sub_18E1C6500();

  return v0();
}

uint64_t sub_18E3FC688()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18E2891D4;

  return CatalogClientProtocol.acquireCoherenceToken(identifiers:)();
}

uint64_t sub_18E3FC714(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18E3FD860;

  return CatalogClientProtocol.supportedLanguagesAndRegions(resourceBundleQuery:)(a1);
}

uint64_t sub_18E3FC7AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18E3FD860;

  return CatalogClientProtocol.availableUseCases()();
}

uint64_t sub_18E3FC85C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18E3FD860;

  return CatalogClientProtocol.availableUseCases(useCaseIdentifiers:includeAssetsInformation:)(a1);
}

uint64_t sub_18E3FC918()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18E3FD860;

  return CatalogClientProtocol.donateSafetyFailure(safetyFailure:)(v1);
}

uint64_t sub_18E3FC9A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18E3FD860;

  return CatalogClientProtocol.donateSafetyFailure(safetyFailure:)(v1);
}

uint64_t dispatch thunk of CatalogClientProtocol.queryResource(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 40))();
}

{
  return (*(a3 + 56))();
}

uint64_t dispatch thunk of CatalogClientProtocol.generativeExperiencesEssentialResourcesReady()()
{
  sub_18E1CAF5C();
  v2 = *(sub_18E1CA244(v0, v1) + 128);
  sub_18E1C64A0();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = sub_18E1C5EA8(v6);
  *v7 = v8;
  v9 = sub_18E1C8624(v7);

  return v10(v9);
}

uint64_t dispatch thunk of CatalogClientProtocol.enoughStorageForGenerativeExperiencesEssentialResources()()
{
  sub_18E1CAF5C();
  v2 = *(sub_18E1CA244(v0, v1) + 144);
  sub_18E1C64A0();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = sub_18E1C5EA8(v6);
  *v7 = v8;
  v9 = sub_18E1C8624(v7);

  return v10(v9);
}

uint64_t dispatch thunk of CatalogClientProtocol.useCaseResourceAvailability(by:)()
{
  sub_18E1CF270();
  sub_18E1CAF5C();
  v3 = *(sub_18E1C809C(v0, v1, v2) + 152);
  sub_18E1C5E28();
  v19 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = sub_18E1C5EA8(v7);
  *v8 = v9;
  sub_18E1C51F0(v8);
  sub_18E1C2A80();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t dispatch thunk of CatalogClientProtocol.acquireCoherenceToken(identifiers:)()
{
  sub_18E1CF270();
  sub_18E1CAF5C();
  v3 = *(sub_18E1C809C(v0, v1, v2) + 168);
  sub_18E1C5E28();
  v19 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = sub_18E1C5EA8(v7);
  *v8 = v9;
  sub_18E1C51F0(v8);
  sub_18E1C2A80();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t dispatch thunk of CatalogClientProtocol.supportedLanguagesAndRegions(resourceBundleQuery:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 176);
  sub_18E1C64A0();
  v16 = (v9 + *v9);
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  v13 = sub_18E1C2960(v12);
  *v13 = v14;
  v13[1] = sub_18E3FD860;

  return v16(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CatalogClientProtocol.availableUseCases()()
{
  sub_18E1CF270();
  sub_18E1CAF5C();
  v3 = *(sub_18E1C809C(v0, v1, v2) + 184);
  sub_18E1C5E28();
  v19 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = sub_18E1C2960(v7);
  *v8 = v9;
  sub_18E1C8F08(v8);
  sub_18E1C2A80();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t dispatch thunk of CatalogClientProtocol.availableUseCases(useCaseIdentifiers:includeAssetsInformation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + 192);
  sub_18E1C5E28();
  v18 = (v11 + *v11);
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  v15 = sub_18E1C2960(v14);
  *v15 = v16;
  v15[1] = sub_18E3FBF48;

  return v18(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of CatalogClientProtocol.regulatoryDomains()()
{
  sub_18E1CAF5C();
  v2 = *(sub_18E1CA244(v0, v1) + 216);
  sub_18E1C64A0();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = sub_18E1C5EA8(v6);
  *v7 = v8;
  v9 = sub_18E1C8624(v7);

  return v10(v9);
}

uint64_t dispatch thunk of CatalogClientProtocol.donateSafetyFailure(useCaseIdentifier:userIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 224);
  sub_18E1C64A0();
  v16 = (v9 + *v9);
  v11 = *(v10 + 4);
  v12 = swift_task_alloc();
  v13 = sub_18E1C5EA8(v12);
  *v13 = v14;
  sub_18E1C5950(v13);

  return v16(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CatalogClientProtocol.donateSafetyFailure(safetyFailure:)()
{
  sub_18E1CF270();
  sub_18E1CAF5C();
  v3 = *(sub_18E1C809C(v0, v1, v2) + 232);
  sub_18E1C5E28();
  v19 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = sub_18E1C5EA8(v7);
  *v8 = v9;
  sub_18E1C51F0(v8);
  sub_18E1C2A80();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t dispatch thunk of CatalogClientProtocol.donateGenerativeGuardrailResult(guardrailResultInfo:)()
{
  sub_18E1CF270();
  sub_18E1CAF5C();
  v3 = *(sub_18E1C809C(v0, v1, v2) + 240);
  sub_18E1C5E28();
  v19 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = sub_18E1C5EA8(v7);
  *v8 = v9;
  sub_18E1C51F0(v8);
  sub_18E1C2A80();

  return v13(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t static Obfuscation.readObfuscatedData(fileURL:fallback:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = sub_18E44E54C();
  v6 = sub_18E1C4EAC(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C4EDC();
  sub_18E44E4BC();
  v9 = [objc_opt_self() defaultManager];
  sub_18E44E4DC();
  v10 = sub_18E44EA8C();

  v11 = [v9 fileExistsAtPath_];

  if (!v11)
  {
    if (a2)
    {
      v14 = sub_18E44E58C();
      if (!v2)
      {
        v3 = v14;
        v15 = sub_18E1C80B0();
        v16(v15);
        return v3;
      }
    }

    else
    {
      v3 = sub_18E44E4DC();
      v18 = v17;
      sub_18E3FDB10();
      swift_allocError();
      *v19 = v3;
      *(v19 + 8) = v18;
      *(v19 + 16) = 1;
      swift_willThrow();
    }

LABEL_8:
    v20 = sub_18E1C80B0();
    v21(v20);
    return v3;
  }

  v12 = sub_18E44E58C();
  if (v2)
  {
    goto LABEL_8;
  }

  v3 = sub_18E252178(v12, v13);
  v23 = sub_18E1C80B0();
  v24(v23);
  v25 = sub_18E1C6004();
  sub_18E1FDFE0(v25, v26);
  return v3;
}

unint64_t sub_18E3FDB10()
{
  result = qword_1ED6A7C98;
  if (!qword_1ED6A7C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7C98);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Obfuscation(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_18E3FDC10()
{
  result = qword_1EABE9140;
  if (!qword_1EABE9140)
  {
    sub_18E44E91C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE9140);
  }

  return result;
}

uint64_t AssetLock.init(resources:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v69 = a2;
  type metadata accessor for RunningBoardAssertedAssetSets();
  sub_18E1CD8AC();
  swift_allocObject();
  v5 = sub_18E424EF8();
  sub_18E425CA4(a1);
  v7 = v6;

  v8 = 0;
  v75 = *(v7 + 16);
  v9 = (v7 + 48);
  v73 = 136315394;
  v71 = v7;
  v72 = v5;
  while (1)
  {
    if (v75 == v8)
    {

      *v69 = v5;
      return result;
    }

    if (v8 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_16;
    }

    v79 = v8;
    v3 = *(v9 - 2);
    v2 = *(v9 - 1);
    v76 = v9;
    v10 = *v9;
    v11 = objc_opt_self();

    v12 = [v11 sharedManager];
    sub_18E1E3678();
    v13 = sub_18E44EA8C();
    v14 = sub_18E44E97C();
    v15 = [v12 retrieveAssetSet:v13 usages:v14];

    if (!v15)
    {
      break;
    }

    v16 = qword_1ED6A8AB0;
    v17 = v15;
    if (v16 != -1)
    {
      sub_18E1C6D78();
      swift_once();
    }

    v18 = sub_18E44E83C();
    sub_18E1CE8B4(v18, qword_1ED6A9870);

    v19 = sub_18E44E80C();
    v20 = sub_18E44EE2C();

    if (os_log_type_enabled(v19, v20))
    {
      sub_18E1C9700();
      v21 = swift_slowAlloc();
      sub_18E1CA638();
      v74 = swift_slowAlloc();
      sub_18E1D4A78(v74, v22, v23, v24, v25, v26, v27, v28, v69, v70, v71, v72, v73);
      v29 = sub_18E1E3678();
      v32 = sub_18E1C9624(v29, v30, v31);

      *(v21 + 4) = v32;
      *(v21 + 12) = 2080;

      v33 = sub_18E44E99C();
      v34 = v17;
      v35 = v3;
      v37 = v36;

      v38 = sub_18E1C9624(v33, v37, &v77);
      v3 = v35;
      v17 = v34;

      *(v21 + 14) = v38;
      v5 = v72;
      _os_log_impl(&dword_18E1C1000, v19, v20, "Successfully retrieved asset set: %s, with usages: %s", v21, 0x16u);
      swift_arrayDestroy();
      v7 = v71;
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    v39 = sub_18E1E3678();
    sub_18E425730(v39, v40, v10, v17);

    v9 = v76 + 3;
    v8 = v79 + 1;
  }

  if (qword_1ED6A8AB0 == -1)
  {
    goto LABEL_12;
  }

LABEL_16:
  sub_18E1C6D78();
  swift_once();
LABEL_12:
  v42 = sub_18E44E83C();
  sub_18E1CE8B4(v42, qword_1ED6A9870);

  v43 = sub_18E44E80C();
  v44 = sub_18E44EE0C();

  if (os_log_type_enabled(v43, v44))
  {
    sub_18E1C9700();
    v45 = swift_slowAlloc();
    sub_18E1CA638();
    v46 = swift_slowAlloc();
    sub_18E1D4A78(v46, v47, v48, v49, v50, v51, v52, v53, v69, v70, v71, v72, v73);
    v54 = sub_18E1E3678();
    v57 = sub_18E1C9624(v54, v55, v56);
    v79 = v3;
    v58 = v57;

    *(v45 + 4) = v58;
    *(v45 + 12) = 2080;

    v59 = sub_18E44E99C();
    v61 = v60;

    v62 = sub_18E1C9624(v59, v61, &v77);

    *(v45 + 14) = v62;
    v3 = v79;
    _os_log_impl(&dword_18E1C1000, v43, v44, "Failed to retrieve asset set: %s, with usages: %s", v45, 0x16u);
    swift_arrayDestroy();
    sub_18E1C6164();
    MEMORY[0x193ACD400]();
    sub_18E1C6164();
    MEMORY[0x193ACD400]();
  }

  v77 = v3;
  v78 = v2;

  v63 = sub_18E1E890C();
  MEMORY[0x193ACC300](v63, 0xEA0000000000203ALL);
  v64 = sub_18E44E99C();
  MEMORY[0x193ACC300](v64);

  v65 = v77;
  v66 = v78;
  sub_18E3FDB10();
  sub_18E1D0098();
  v67 = swift_allocError();
  *v68 = v65;
  v68[1] = v66;
  sub_18E1E3830(v67, v68);
  swift_willThrow();
}

void sub_18E3FE1D0()
{
  sub_18E1C575C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_18E2706EC(&qword_1EABE1060, &qword_18E4E3890);
  sub_18E1C5B08(v8);
  v10 = *(v9 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v28 - v12;
  v14 = sub_18E1D43C0();
  sub_18E202008(v14, v15, &qword_1EABE1060, &qword_18E4E3890);
  v16 = sub_18E44ED4C();
  v17 = sub_18E1CAF28(v13, 1, v16);

  if (v17 == 1)
  {
    sub_18E1E8EEC(v13, &qword_1EABE1060, &qword_18E4E3890);
  }

  else
  {
    sub_18E44ED3C();
    sub_18E1C82B8(v16);
    (*(v18 + 8))(v13, v16);
  }

  v20 = *(v1 + 16);
  v19 = *(v1 + 24);
  swift_unknownObjectRetain();

  if (v20)
  {
    swift_getObjectType();
    v21 = sub_18E44ECFC();
    v23 = v22;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      v24 = sub_18E44EB1C() + 32;
      sub_18E1CD8AC();
      v25 = swift_allocObject();
      *(v25 + 16) = v3;
      *(v25 + 24) = v1;

      if (v23 | v21)
      {
        v29[0] = 0;
        v29[1] = 0;
        v26 = v29;
        v29[2] = v21;
        v29[3] = v23;
      }

      else
      {
        v26 = 0;
      }

      v28[1] = 7;
      v28[2] = v26;
      v28[3] = v24;
      sub_18E221F10();
      swift_task_create();

      sub_18E1E8EEC(v5, &qword_1EABE1060, &qword_18E4E3890);

      goto LABEL_14;
    }
  }

  else
  {
    v21 = 0;
    v23 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_18E1E8EEC(v5, &qword_1EABE1060, &qword_18E4E3890);
  sub_18E1CD8AC();
  v27 = swift_allocObject();
  *(v27 + 16) = v3;
  *(v27 + 24) = v1;
  if (v23 | v21)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v21;
    v29[7] = v23;
  }

  sub_18E221F10();
  swift_task_create();
LABEL_14:
  sub_18E1C5544();
}

void AssetContents.metadataURL.getter()
{
  sub_18E1C575C();
  v1 = v0;
  v3 = v2;
  v4 = sub_18E44E46C();
  v5 = sub_18E1C4EAC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C4EDC();
  v12 = v11 - v10;
  v13 = sub_18E44E54C();
  v14 = sub_18E1C4EAC(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_18E1C4EDC();
  v21 = v20 - v19;
  (*(v1 + 8))(v3, v1);
  sub_18E1D4DD8();
  (*(v7 + 104))(v12, *MEMORY[0x1E6968F70], v4);
  sub_18E24D39C();
  sub_18E44E52C();
  (*(v7 + 8))(v12, v4);
  (*(v16 + 8))(v21, v13);
  sub_18E1C5544();
}

uint64_t sub_18E3FE658()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

uint64_t AssetBackedResource.fetchAsset()(uint64_t a1, uint64_t a2)
{
  sub_18E2706EC(&qword_1EABE0E38, &qword_18E49D1E0);
  sub_18E1CADEC();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_18E49D9B0;
  v6 = *(a2 + 8);
  *(v5 + 32) = (*(v6 + 24))(a1, v6);
  *(v5 + 40) = v7;
  type metadata accessor for CoherentAssetLock();
  sub_18E1CADEC();
  swift_allocObject();
  result = sub_18E1FD9F4(v5, 0);
  if (!v2)
  {
    if ((*(v6 + 64))(a1, v6))
    {
      v9 = sub_18E1D7EB4();
      v10(v9);
    }

    else
    {
      sub_18E204B54();
      v11 = sub_18E1D7EB4();
      v12(v11);
      sub_18E1D04C8();
    }
  }

  return result;
}

uint64_t sub_18E3FE8DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a1;
  v62 = a2;
  v3 = type metadata accessor for AppleDeviceTrackingAssetContents(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v50 - v9;
  v54 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v50 - v11;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v50 - v15;
  v17 = sub_18E44E46C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_18E44E54C();
  v58 = *(v22 - 8);
  v23 = *(v58 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v57 = &v50 - v27;
  v28 = *(v2 + 40);
  v55 = *(v2 + 32);
  v56 = v28;
  v29 = *(v2 + 56);
  v30 = memcpy(__dst, v2, sizeof(__dst));
  if (v29)
  {
    v32 = *(v2 + 200);
    v31 = *(v2 + 208);
    v33 = *MEMORY[0x1E6968F58];
    v52 = v18;
    v34 = *(v18 + 104);
    v53 = v17;
    v51 = v34;
    v34(v21, v33, v17);
    v54 = v22;
    sub_18E201DC8(v16, 1, 1, v22);
    sub_18E44E51C();
    v35 = v32 == 0x636972656E6567 && v31 == 0xE700000000000000;
    if (v35 || (sub_18E44F3CC() & 1) != 0)
    {
      v36 = v56;

      v37 = v58;
      v38 = v55;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v36 = v44;
      v37 = v58;
    }

    v64 = v38;
    v65 = v36;
    v45 = v53;
    v51(v21, *MEMORY[0x1E6968F70], v53);
    sub_18E24D39C();
    v43 = v57;
    sub_18E44E53C();
    (*(v52 + 8))(v21, v45);

    v39 = v54;
    (*(v37 + 8))(v26, v54);
    v56 = sub_18E44E9AC();
    v40 = v63;
  }

  else
  {
    v39 = v22;
    MEMORY[0x1EEE9AC00](v30);
    *(&v50 - 2) = __dst;
    v40 = v63;
    v41 = v67;
    result = sub_18E4257EC(sub_18E43F158);
    if (v41)
    {
      return result;
    }

    v56 = *&v12[*(v54 + 48)];
    v37 = v58;
    v43 = v57;
    (*(v58 + 32))();
  }

  v46 = v59;
  (*(v37 + 16))(v59, v43, v39);
  v47 = v43;
  v48 = v60;
  sub_18E249148(v46, v60, type metadata accessor for AppleDeviceTrackingAssetContents);
  v49 = v61;
  sub_18E249148(v48, v61, type metadata accessor for AppleDeviceTrackingAssetContents);

  sub_18E434048(0, 0, 1, v49, v56, v40, 0, v62);
  sub_18E2491F8(v48, type metadata accessor for AppleDeviceTrackingAssetContents);
  sub_18E2491F8(v46, type metadata accessor for AppleDeviceTrackingAssetContents);
  return (*(v37 + 8))(v47, v39);
}

uint64_t sub_18E3FEF3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a1;
  v62 = a2;
  v3 = type metadata accessor for DiffusionAdapterAssetContents(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v50 - v9;
  v54 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v50 - v11;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v50 - v15;
  v17 = sub_18E44E46C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_18E44E54C();
  v58 = *(v22 - 8);
  v23 = *(v58 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v57 = &v50 - v27;
  v28 = *(v2 + 40);
  v55 = *(v2 + 32);
  v56 = v28;
  v29 = *(v2 + 56);
  v30 = memcpy(__dst, v2, sizeof(__dst));
  if (v29)
  {
    v32 = *(v2 + 200);
    v31 = *(v2 + 208);
    v33 = *MEMORY[0x1E6968F58];
    v52 = v18;
    v34 = *(v18 + 104);
    v53 = v17;
    v51 = v34;
    v34(v21, v33, v17);
    v54 = v22;
    sub_18E201DC8(v16, 1, 1, v22);
    sub_18E44E51C();
    v35 = v32 == 0x636972656E6567 && v31 == 0xE700000000000000;
    if (v35 || (sub_18E44F3CC() & 1) != 0)
    {
      v36 = v56;

      v37 = v58;
      v38 = v55;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v36 = v44;
      v37 = v58;
    }

    v64 = v38;
    v65 = v36;
    v45 = v53;
    v51(v21, *MEMORY[0x1E6968F70], v53);
    sub_18E24D39C();
    v43 = v57;
    sub_18E44E53C();
    (*(v52 + 8))(v21, v45);

    v39 = v54;
    (*(v37 + 8))(v26, v54);
    v56 = sub_18E44E9AC();
    v40 = v63;
  }

  else
  {
    v39 = v22;
    MEMORY[0x1EEE9AC00](v30);
    *(&v50 - 2) = __dst;
    v40 = v63;
    v41 = v67;
    result = sub_18E4257EC(sub_18E43EFE8);
    if (v41)
    {
      return result;
    }

    v56 = *&v12[*(v54 + 48)];
    v37 = v58;
    v43 = v57;
    (*(v58 + 32))();
  }

  v46 = v59;
  (*(v37 + 16))(v59, v43, v39);
  v47 = v43;
  v48 = v60;
  sub_18E249148(v46, v60, type metadata accessor for DiffusionAdapterAssetContents);
  v49 = v61;
  sub_18E249148(v48, v61, type metadata accessor for DiffusionAdapterAssetContents);

  sub_18E432E78(0, 0, 1, v49, v56, v40, 0, v62);
  sub_18E2491F8(v48, type metadata accessor for DiffusionAdapterAssetContents);
  sub_18E2491F8(v46, type metadata accessor for DiffusionAdapterAssetContents);
  return (*(v37 + 8))(v47, v39);
}

uint64_t sub_18E3FF59C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a1;
  v62 = a2;
  v3 = type metadata accessor for DiffusionModelAssetContents(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v50 - v9;
  v54 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v50 - v11;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v50 - v15;
  v17 = sub_18E44E46C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_18E44E54C();
  v58 = *(v22 - 8);
  v23 = *(v58 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v57 = &v50 - v27;
  v28 = *(v2 + 40);
  v55 = *(v2 + 32);
  v56 = v28;
  v29 = *(v2 + 56);
  v30 = memcpy(__dst, v2, sizeof(__dst));
  if (v29)
  {
    v32 = *(v2 + 200);
    v31 = *(v2 + 208);
    v33 = *MEMORY[0x1E6968F58];
    v52 = v18;
    v34 = *(v18 + 104);
    v53 = v17;
    v51 = v34;
    v34(v21, v33, v17);
    v54 = v22;
    sub_18E201DC8(v16, 1, 1, v22);
    sub_18E44E51C();
    v35 = v32 == 0x636972656E6567 && v31 == 0xE700000000000000;
    if (v35 || (sub_18E44F3CC() & 1) != 0)
    {
      v36 = v56;

      v37 = v58;
      v38 = v55;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v36 = v44;
      v37 = v58;
    }

    v64 = v38;
    v65 = v36;
    v45 = v53;
    v51(v21, *MEMORY[0x1E6968F70], v53);
    sub_18E24D39C();
    v43 = v57;
    sub_18E44E53C();
    (*(v52 + 8))(v21, v45);

    v39 = v54;
    (*(v37 + 8))(v26, v54);
    v56 = sub_18E44E9AC();
    v40 = v63;
  }

  else
  {
    v39 = v22;
    MEMORY[0x1EEE9AC00](v30);
    *(&v50 - 2) = __dst;
    v40 = v63;
    v41 = v67;
    result = sub_18E4257EC(sub_18E43EF1C);
    if (v41)
    {
      return result;
    }

    v56 = *&v12[*(v54 + 48)];
    v37 = v58;
    v43 = v57;
    (*(v58 + 32))();
  }

  v46 = v59;
  (*(v37 + 16))(v59, v43, v39);
  v47 = v43;
  v48 = v60;
  sub_18E249148(v46, v60, type metadata accessor for DiffusionModelAssetContents);
  v49 = v61;
  sub_18E249148(v48, v61, type metadata accessor for DiffusionModelAssetContents);

  sub_18E42FD7C(0, 0, 1, v49, v56, v40, 0, v62);
  sub_18E2491F8(v48, type metadata accessor for DiffusionModelAssetContents);
  sub_18E2491F8(v46, type metadata accessor for DiffusionModelAssetContents);
  return (*(v37 + 8))(v47, v39);
}

uint64_t sub_18E3FFBFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a1;
  v62 = a2;
  v3 = type metadata accessor for DisabledUseCaseListAssetContents(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v50 - v9;
  v54 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v50 - v11;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v50 - v15;
  v17 = sub_18E44E46C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_18E44E54C();
  v58 = *(v22 - 8);
  v23 = *(v58 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v57 = &v50 - v27;
  v28 = *(v2 + 40);
  v55 = *(v2 + 32);
  v56 = v28;
  v29 = *(v2 + 56);
  v30 = memcpy(__dst, v2, sizeof(__dst));
  if (v29)
  {
    v32 = *(v2 + 200);
    v31 = *(v2 + 208);
    v33 = *MEMORY[0x1E6968F58];
    v52 = v18;
    v34 = *(v18 + 104);
    v53 = v17;
    v51 = v34;
    v34(v21, v33, v17);
    v54 = v22;
    sub_18E201DC8(v16, 1, 1, v22);
    sub_18E44E51C();
    v35 = v32 == 0x636972656E6567 && v31 == 0xE700000000000000;
    if (v35 || (sub_18E44F3CC() & 1) != 0)
    {
      v36 = v56;

      v37 = v58;
      v38 = v55;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v36 = v44;
      v37 = v58;
    }

    v64 = v38;
    v65 = v36;
    v45 = v53;
    v51(v21, *MEMORY[0x1E6968F70], v53);
    sub_18E24D39C();
    v43 = v57;
    sub_18E44E53C();
    (*(v52 + 8))(v21, v45);

    v39 = v54;
    (*(v37 + 8))(v26, v54);
    v56 = sub_18E44E9AC();
    v40 = v63;
  }

  else
  {
    v39 = v22;
    MEMORY[0x1EEE9AC00](v30);
    *(&v50 - 2) = __dst;
    v40 = v63;
    v41 = v67;
    result = sub_18E4257EC(sub_18E43EE50);
    if (v41)
    {
      return result;
    }

    v56 = *&v12[*(v54 + 48)];
    v37 = v58;
    v43 = v57;
    (*(v58 + 32))();
  }

  v46 = v59;
  (*(v37 + 16))(v59, v43, v39);
  v47 = v43;
  v48 = v60;
  sub_18E249148(v46, v60, type metadata accessor for DisabledUseCaseListAssetContents);
  v49 = v61;
  sub_18E249148(v48, v61, type metadata accessor for DisabledUseCaseListAssetContents);

  sub_18E4344BC(0, 0, 1, v49, v56, v40, 0, v62);
  sub_18E2491F8(v48, type metadata accessor for DisabledUseCaseListAssetContents);
  sub_18E2491F8(v46, type metadata accessor for DisabledUseCaseListAssetContents);
  return (*(v37 + 8))(v47, v39);
}

uint64_t sub_18E40025C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a1;
  v62 = a2;
  v3 = type metadata accessor for EmbeddingDenyListAssetContents(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v50 - v9;
  v54 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v50 - v11;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v50 - v15;
  v17 = sub_18E44E46C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_18E44E54C();
  v58 = *(v22 - 8);
  v23 = *(v58 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v57 = &v50 - v27;
  v28 = *(v2 + 40);
  v55 = *(v2 + 32);
  v56 = v28;
  v29 = *(v2 + 56);
  v30 = memcpy(__dst, v2, sizeof(__dst));
  if (v29)
  {
    v32 = *(v2 + 200);
    v31 = *(v2 + 208);
    v33 = *MEMORY[0x1E6968F58];
    v52 = v18;
    v34 = *(v18 + 104);
    v53 = v17;
    v51 = v34;
    v34(v21, v33, v17);
    v54 = v22;
    sub_18E201DC8(v16, 1, 1, v22);
    sub_18E44E51C();
    v35 = v32 == 0x636972656E6567 && v31 == 0xE700000000000000;
    if (v35 || (sub_18E44F3CC() & 1) != 0)
    {
      v36 = v56;

      v37 = v58;
      v38 = v55;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v36 = v44;
      v37 = v58;
    }

    v64 = v38;
    v65 = v36;
    v45 = v53;
    v51(v21, *MEMORY[0x1E6968F70], v53);
    sub_18E24D39C();
    v43 = v57;
    sub_18E44E53C();
    (*(v52 + 8))(v21, v45);

    v39 = v54;
    (*(v37 + 8))(v26, v54);
    v56 = sub_18E44E9AC();
    v40 = v63;
  }

  else
  {
    v39 = v22;
    MEMORY[0x1EEE9AC00](v30);
    *(&v50 - 2) = __dst;
    v40 = v63;
    v41 = v67;
    result = sub_18E4257EC(sub_18E43ED84);
    if (v41)
    {
      return result;
    }

    v56 = *&v12[*(v54 + 48)];
    v37 = v58;
    v43 = v57;
    (*(v58 + 32))();
  }

  v46 = v59;
  (*(v37 + 16))(v59, v43, v39);
  v47 = v43;
  v48 = v60;
  sub_18E249148(v46, v60, type metadata accessor for EmbeddingDenyListAssetContents);
  v49 = v61;
  sub_18E249148(v48, v61, type metadata accessor for EmbeddingDenyListAssetContents);

  sub_18E4332EC(0, 0, 1, v49, v56, v40, 0, v62);
  sub_18E2491F8(v48, type metadata accessor for EmbeddingDenyListAssetContents);
  sub_18E2491F8(v46, type metadata accessor for EmbeddingDenyListAssetContents);
  return (*(v37 + 8))(v47, v39);
}

uint64_t sub_18E4008BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a1;
  v62 = a2;
  v3 = type metadata accessor for EmbeddingPreprocessorAssetContents(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v50 - v9;
  v54 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v50 - v11;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v50 - v15;
  v17 = sub_18E44E46C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_18E44E54C();
  v58 = *(v22 - 8);
  v23 = *(v58 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v57 = &v50 - v27;
  v28 = *(v2 + 40);
  v55 = *(v2 + 32);
  v56 = v28;
  v29 = *(v2 + 56);
  v30 = memcpy(__dst, v2, sizeof(__dst));
  if (v29)
  {
    v32 = *(v2 + 200);
    v31 = *(v2 + 208);
    v33 = *MEMORY[0x1E6968F58];
    v52 = v18;
    v34 = *(v18 + 104);
    v53 = v17;
    v51 = v34;
    v34(v21, v33, v17);
    v54 = v22;
    sub_18E201DC8(v16, 1, 1, v22);
    sub_18E44E51C();
    v35 = v32 == 0x636972656E6567 && v31 == 0xE700000000000000;
    if (v35 || (sub_18E44F3CC() & 1) != 0)
    {
      v36 = v56;

      v37 = v58;
      v38 = v55;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v36 = v44;
      v37 = v58;
    }

    v64 = v38;
    v65 = v36;
    v45 = v53;
    v51(v21, *MEMORY[0x1E6968F70], v53);
    sub_18E24D39C();
    v43 = v57;
    sub_18E44E53C();
    (*(v52 + 8))(v21, v45);

    v39 = v54;
    (*(v37 + 8))(v26, v54);
    v56 = sub_18E44E9AC();
    v40 = v63;
  }

  else
  {
    v39 = v22;
    MEMORY[0x1EEE9AC00](v30);
    *(&v50 - 2) = __dst;
    v40 = v63;
    v41 = v67;
    result = sub_18E4257EC(sub_18E43ED68);
    if (v41)
    {
      return result;
    }

    v56 = *&v12[*(v54 + 48)];
    v37 = v58;
    v43 = v57;
    (*(v58 + 32))();
  }

  v46 = v59;
  (*(v37 + 16))(v59, v43, v39);
  v47 = v43;
  v48 = v60;
  sub_18E249148(v46, v60, type metadata accessor for EmbeddingPreprocessorAssetContents);
  v49 = v61;
  sub_18E249148(v48, v61, type metadata accessor for EmbeddingPreprocessorAssetContents);

  sub_18E43568C(0, 0, 1, v49, v56, v40, 0, v62);
  sub_18E2491F8(v48, type metadata accessor for EmbeddingPreprocessorAssetContents);
  sub_18E2491F8(v46, type metadata accessor for EmbeddingPreprocessorAssetContents);
  return (*(v37 + 8))(v47, v39);
}

uint64_t sub_18E400F1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a1;
  v62 = a2;
  v3 = type metadata accessor for HandwritingSynthesizerAssetContents(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v50 - v9;
  v54 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v50 - v11;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v50 - v15;
  v17 = sub_18E44E46C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_18E44E54C();
  v58 = *(v22 - 8);
  v23 = *(v58 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v57 = &v50 - v27;
  v28 = *(v2 + 40);
  v55 = *(v2 + 32);
  v56 = v28;
  v29 = *(v2 + 56);
  v30 = memcpy(__dst, v2, sizeof(__dst));
  if (v29)
  {
    v32 = *(v2 + 200);
    v31 = *(v2 + 208);
    v33 = *MEMORY[0x1E6968F58];
    v52 = v18;
    v34 = *(v18 + 104);
    v53 = v17;
    v51 = v34;
    v34(v21, v33, v17);
    v54 = v22;
    sub_18E201DC8(v16, 1, 1, v22);
    sub_18E44E51C();
    v35 = v32 == 0x636972656E6567 && v31 == 0xE700000000000000;
    if (v35 || (sub_18E44F3CC() & 1) != 0)
    {
      v36 = v56;

      v37 = v58;
      v38 = v55;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v36 = v44;
      v37 = v58;
    }

    v64 = v38;
    v65 = v36;
    v45 = v53;
    v51(v21, *MEMORY[0x1E6968F70], v53);
    sub_18E24D39C();
    v43 = v57;
    sub_18E44E53C();
    (*(v52 + 8))(v21, v45);

    v39 = v54;
    (*(v37 + 8))(v26, v54);
    v56 = sub_18E44E9AC();
    v40 = v63;
  }

  else
  {
    v39 = v22;
    MEMORY[0x1EEE9AC00](v30);
    *(&v50 - 2) = __dst;
    v40 = v63;
    v41 = v67;
    result = sub_18E4257EC(sub_18E43EC9C);
    if (v41)
    {
      return result;
    }

    v56 = *&v12[*(v54 + 48)];
    v37 = v58;
    v43 = v57;
    (*(v58 + 32))();
  }

  v46 = v59;
  (*(v37 + 16))(v59, v43, v39);
  v47 = v43;
  v48 = v60;
  sub_18E249148(v46, v60, type metadata accessor for HandwritingSynthesizerAssetContents);
  v49 = v61;
  sub_18E249148(v48, v61, type metadata accessor for HandwritingSynthesizerAssetContents);

  sub_18E435F74(0, 0, 1, v49, v56, v40, 0, v62);
  sub_18E2491F8(v48, type metadata accessor for HandwritingSynthesizerAssetContents);
  sub_18E2491F8(v46, type metadata accessor for HandwritingSynthesizerAssetContents);
  return (*(v37 + 8))(v47, v39);
}

uint64_t sub_18E40157C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a1;
  v62 = a2;
  v3 = type metadata accessor for ImageCuratedPromptsAssetContents(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v50 - v9;
  v54 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v50 - v11;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v50 - v15;
  v17 = sub_18E44E46C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_18E44E54C();
  v58 = *(v22 - 8);
  v23 = *(v58 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v57 = &v50 - v27;
  v28 = *(v2 + 40);
  v55 = *(v2 + 32);
  v56 = v28;
  v29 = *(v2 + 56);
  v30 = memcpy(__dst, v2, sizeof(__dst));
  if (v29)
  {
    v32 = *(v2 + 200);
    v31 = *(v2 + 208);
    v33 = *MEMORY[0x1E6968F58];
    v52 = v18;
    v34 = *(v18 + 104);
    v53 = v17;
    v51 = v34;
    v34(v21, v33, v17);
    v54 = v22;
    sub_18E201DC8(v16, 1, 1, v22);
    sub_18E44E51C();
    v35 = v32 == 0x636972656E6567 && v31 == 0xE700000000000000;
    if (v35 || (sub_18E44F3CC() & 1) != 0)
    {
      v36 = v56;

      v37 = v58;
      v38 = v55;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v36 = v44;
      v37 = v58;
    }

    v64 = v38;
    v65 = v36;
    v45 = v53;
    v51(v21, *MEMORY[0x1E6968F70], v53);
    sub_18E24D39C();
    v43 = v57;
    sub_18E44E53C();
    (*(v52 + 8))(v21, v45);

    v39 = v54;
    (*(v37 + 8))(v26, v54);
    v56 = sub_18E44E9AC();
    v40 = v63;
  }

  else
  {
    v39 = v22;
    MEMORY[0x1EEE9AC00](v30);
    *(&v50 - 2) = __dst;
    v40 = v63;
    v41 = v67;
    result = sub_18E4257EC(sub_18E43EBD0);
    if (v41)
    {
      return result;
    }

    v56 = *&v12[*(v54 + 48)];
    v37 = v58;
    v43 = v57;
    (*(v58 + 32))();
  }

  v46 = v59;
  (*(v37 + 16))(v59, v43, v39);
  v47 = v43;
  v48 = v60;
  sub_18E249148(v46, v60, type metadata accessor for ImageCuratedPromptsAssetContents);
  v49 = v61;
  sub_18E249148(v48, v61, type metadata accessor for ImageCuratedPromptsAssetContents);

  sub_18E434930(0, 0, 1, v49, v56, v40, 0, v62);
  sub_18E2491F8(v48, type metadata accessor for ImageCuratedPromptsAssetContents);
  sub_18E2491F8(v46, type metadata accessor for ImageCuratedPromptsAssetContents);
  return (*(v37 + 8))(v47, v39);
}

uint64_t sub_18E401BDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a1;
  v62 = a2;
  v3 = type metadata accessor for ImageFilterAssetContents(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v50 - v9;
  v54 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v50 - v11;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v50 - v15;
  v17 = sub_18E44E46C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_18E44E54C();
  v58 = *(v22 - 8);
  v23 = *(v58 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v57 = &v50 - v27;
  v28 = *(v2 + 40);
  v55 = *(v2 + 32);
  v56 = v28;
  v29 = *(v2 + 56);
  v30 = memcpy(__dst, v2, sizeof(__dst));
  if (v29)
  {
    v32 = *(v2 + 200);
    v31 = *(v2 + 208);
    v33 = *MEMORY[0x1E6968F58];
    v52 = v18;
    v34 = *(v18 + 104);
    v53 = v17;
    v51 = v34;
    v34(v21, v33, v17);
    v54 = v22;
    sub_18E201DC8(v16, 1, 1, v22);
    sub_18E44E51C();
    v35 = v32 == 0x636972656E6567 && v31 == 0xE700000000000000;
    if (v35 || (sub_18E44F3CC() & 1) != 0)
    {
      v36 = v56;

      v37 = v58;
      v38 = v55;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v36 = v44;
      v37 = v58;
    }

    v64 = v38;
    v65 = v36;
    v45 = v53;
    v51(v21, *MEMORY[0x1E6968F70], v53);
    sub_18E24D39C();
    v43 = v57;
    sub_18E44E53C();
    (*(v52 + 8))(v21, v45);

    v39 = v54;
    (*(v37 + 8))(v26, v54);
    v56 = sub_18E44E9AC();
    v40 = v63;
  }

  else
  {
    v39 = v22;
    MEMORY[0x1EEE9AC00](v30);
    *(&v50 - 2) = __dst;
    v40 = v63;
    v41 = v67;
    result = sub_18E4257EC(sub_18E43EB04);
    if (v41)
    {
      return result;
    }

    v56 = *&v12[*(v54 + 48)];
    v37 = v58;
    v43 = v57;
    (*(v58 + 32))();
  }

  v46 = v59;
  (*(v37 + 16))(v59, v43, v39);
  v47 = v43;
  v48 = v60;
  sub_18E249148(v46, v60, type metadata accessor for ImageFilterAssetContents);
  v49 = v61;
  sub_18E249148(v48, v61, type metadata accessor for ImageFilterAssetContents);

  sub_18E4313C0(0, 0, 1, v49, v56, v40, 0, v62);
  sub_18E2491F8(v48, type metadata accessor for ImageFilterAssetContents);
  sub_18E2491F8(v46, type metadata accessor for ImageFilterAssetContents);
  return (*(v37 + 8))(v47, v39);
}

uint64_t sub_18E40223C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a1;
  v62 = a2;
  v3 = type metadata accessor for ImageMagicCleanUpAssetContents(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v50 - v9;
  v54 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v50 - v11;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v50 - v15;
  v17 = sub_18E44E46C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_18E44E54C();
  v58 = *(v22 - 8);
  v23 = *(v58 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v57 = &v50 - v27;
  v28 = *(v2 + 40);
  v55 = *(v2 + 32);
  v56 = v28;
  v29 = *(v2 + 56);
  v30 = memcpy(__dst, v2, sizeof(__dst));
  if (v29)
  {
    v32 = *(v2 + 200);
    v31 = *(v2 + 208);
    v33 = *MEMORY[0x1E6968F58];
    v52 = v18;
    v34 = *(v18 + 104);
    v53 = v17;
    v51 = v34;
    v34(v21, v33, v17);
    v54 = v22;
    sub_18E201DC8(v16, 1, 1, v22);
    sub_18E44E51C();
    v35 = v32 == 0x636972656E6567 && v31 == 0xE700000000000000;
    if (v35 || (sub_18E44F3CC() & 1) != 0)
    {
      v36 = v56;

      v37 = v58;
      v38 = v55;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v36 = v44;
      v37 = v58;
    }

    v64 = v38;
    v65 = v36;
    v45 = v53;
    v51(v21, *MEMORY[0x1E6968F70], v53);
    sub_18E24D39C();
    v43 = v57;
    sub_18E44E53C();
    (*(v52 + 8))(v21, v45);

    v39 = v54;
    (*(v37 + 8))(v26, v54);
    v56 = sub_18E44E9AC();
    v40 = v63;
  }

  else
  {
    v39 = v22;
    MEMORY[0x1EEE9AC00](v30);
    *(&v50 - 2) = __dst;
    v40 = v63;
    v41 = v67;
    result = sub_18E4257EC(sub_18E43EA38);
    if (v41)
    {
      return result;
    }

    v56 = *&v12[*(v54 + 48)];
    v37 = v58;
    v43 = v57;
    (*(v58 + 32))();
  }

  v46 = v59;
  (*(v37 + 16))(v59, v43, v39);
  v47 = v43;
  v48 = v60;
  sub_18E249148(v46, v60, type metadata accessor for ImageMagicCleanUpAssetContents);
  v49 = v61;
  sub_18E249148(v48, v61, type metadata accessor for ImageMagicCleanUpAssetContents);

  sub_18E433760(0, 0, 1, v49, v56, v40, 0, v62);
  sub_18E2491F8(v48, type metadata accessor for ImageMagicCleanUpAssetContents);
  sub_18E2491F8(v46, type metadata accessor for ImageMagicCleanUpAssetContents);
  return (*(v37 + 8))(v47, v39);
}

uint64_t sub_18E40289C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a1;
  v62 = a2;
  v3 = type metadata accessor for ImageScalerAssetContents(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v50 - v9;
  v54 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v50 - v11;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v50 - v15;
  v17 = sub_18E44E46C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_18E44E54C();
  v58 = *(v22 - 8);
  v23 = *(v58 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v57 = &v50 - v27;
  v28 = *(v2 + 40);
  v55 = *(v2 + 32);
  v56 = v28;
  v29 = *(v2 + 56);
  v30 = memcpy(__dst, v2, sizeof(__dst));
  if (v29)
  {
    v32 = *(v2 + 200);
    v31 = *(v2 + 208);
    v33 = *MEMORY[0x1E6968F58];
    v52 = v18;
    v34 = *(v18 + 104);
    v53 = v17;
    v51 = v34;
    v34(v21, v33, v17);
    v54 = v22;
    sub_18E201DC8(v16, 1, 1, v22);
    sub_18E44E51C();
    v35 = v32 == 0x636972656E6567 && v31 == 0xE700000000000000;
    if (v35 || (sub_18E44F3CC() & 1) != 0)
    {
      v36 = v56;

      v37 = v58;
      v38 = v55;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v36 = v44;
      v37 = v58;
    }

    v64 = v38;
    v65 = v36;
    v45 = v53;
    v51(v21, *MEMORY[0x1E6968F70], v53);
    sub_18E24D39C();
    v43 = v57;
    sub_18E44E53C();
    (*(v52 + 8))(v21, v45);

    v39 = v54;
    (*(v37 + 8))(v26, v54);
    v56 = sub_18E44E9AC();
    v40 = v63;
  }

  else
  {
    v39 = v22;
    MEMORY[0x1EEE9AC00](v30);
    *(&v50 - 2) = __dst;
    v40 = v63;
    v41 = v67;
    result = sub_18E4257EC(sub_18E43E96C);
    if (v41)
    {
      return result;
    }

    v56 = *&v12[*(v54 + 48)];
    v37 = v58;
    v43 = v57;
    (*(v58 + 32))();
  }

  v46 = v59;
  (*(v37 + 16))(v59, v43, v39);
  v47 = v43;
  v48 = v60;
  sub_18E249148(v46, v60, type metadata accessor for ImageScalerAssetContents);
  v49 = v61;
  sub_18E249148(v48, v61, type metadata accessor for ImageScalerAssetContents);

  sub_18E431834(0, 0, 1, v49, v56, v40, 0, v62);
  sub_18E2491F8(v48, type metadata accessor for ImageScalerAssetContents);
  sub_18E2491F8(v46, type metadata accessor for ImageScalerAssetContents);
  return (*(v37 + 8))(v47, v39);
}

uint64_t sub_18E402EFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a1;
  v62 = a2;
  v3 = type metadata accessor for ImageSpatialPhotosReliveAssetContents(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v50 - v9;
  v54 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v50 - v11;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v50 - v15;
  v17 = sub_18E44E46C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_18E44E54C();
  v58 = *(v22 - 8);
  v23 = *(v58 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v57 = &v50 - v27;
  v28 = *(v2 + 40);
  v55 = *(v2 + 32);
  v56 = v28;
  v29 = *(v2 + 56);
  v30 = memcpy(__dst, v2, sizeof(__dst));
  if (v29)
  {
    v32 = *(v2 + 200);
    v31 = *(v2 + 208);
    v33 = *MEMORY[0x1E6968F58];
    v52 = v18;
    v34 = *(v18 + 104);
    v53 = v17;
    v51 = v34;
    v34(v21, v33, v17);
    v54 = v22;
    sub_18E201DC8(v16, 1, 1, v22);
    sub_18E44E51C();
    v35 = v32 == 0x636972656E6567 && v31 == 0xE700000000000000;
    if (v35 || (sub_18E44F3CC() & 1) != 0)
    {
      v36 = v56;

      v37 = v58;
      v38 = v55;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v36 = v44;
      v37 = v58;
    }

    v64 = v38;
    v65 = v36;
    v45 = v53;
    v51(v21, *MEMORY[0x1E6968F70], v53);
    sub_18E24D39C();
    v43 = v57;
    sub_18E44E53C();
    (*(v52 + 8))(v21, v45);

    v39 = v54;
    (*(v37 + 8))(v26, v54);
    v56 = sub_18E44E9AC();
    v40 = v63;
  }

  else
  {
    v39 = v22;
    MEMORY[0x1EEE9AC00](v30);
    *(&v50 - 2) = __dst;
    v40 = v63;
    v41 = v67;
    result = sub_18E4257EC(sub_18E43E8A0);
    if (v41)
    {
      return result;
    }

    v56 = *&v12[*(v54 + 48)];
    v37 = v58;
    v43 = v57;
    (*(v58 + 32))();
  }

  v46 = v59;
  (*(v37 + 16))(v59, v43, v39);
  v47 = v43;
  v48 = v60;
  sub_18E249148(v46, v60, type metadata accessor for ImageSpatialPhotosReliveAssetContents);
  v49 = v61;
  sub_18E249148(v48, v61, type metadata accessor for ImageSpatialPhotosReliveAssetContents);

  sub_18E4363E8(0, 0, 1, v49, v56, v40, 0, v62);
  sub_18E2491F8(v48, type metadata accessor for ImageSpatialPhotosReliveAssetContents);
  sub_18E2491F8(v46, type metadata accessor for ImageSpatialPhotosReliveAssetContents);
  return (*(v37 + 8))(v47, v39);
}

uint64_t sub_18E40355C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a1;
  v62 = a2;
  v3 = type metadata accessor for ImageTokenizerAssetContents(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v50 - v9;
  v54 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v50 - v11;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v50 - v15;
  v17 = sub_18E44E46C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_18E44E54C();
  v58 = *(v22 - 8);
  v23 = *(v58 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v57 = &v50 - v27;
  v28 = *(v2 + 40);
  v55 = *(v2 + 32);
  v56 = v28;
  v29 = *(v2 + 56);
  v30 = memcpy(__dst, v2, sizeof(__dst));
  if (v29)
  {
    v32 = *(v2 + 200);
    v31 = *(v2 + 208);
    v33 = *MEMORY[0x1E6968F58];
    v52 = v18;
    v34 = *(v18 + 104);
    v53 = v17;
    v51 = v34;
    v34(v21, v33, v17);
    v54 = v22;
    sub_18E201DC8(v16, 1, 1, v22);
    sub_18E44E51C();
    v35 = v32 == 0x636972656E6567 && v31 == 0xE700000000000000;
    if (v35 || (sub_18E44F3CC() & 1) != 0)
    {
      v36 = v56;

      v37 = v58;
      v38 = v55;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v36 = v44;
      v37 = v58;
    }

    v64 = v38;
    v65 = v36;
    v45 = v53;
    v51(v21, *MEMORY[0x1E6968F70], v53);
    sub_18E24D39C();
    v43 = v57;
    sub_18E44E53C();
    (*(v52 + 8))(v21, v45);

    v39 = v54;
    (*(v37 + 8))(v26, v54);
    v56 = sub_18E44E9AC();
    v40 = v63;
  }

  else
  {
    v39 = v22;
    MEMORY[0x1EEE9AC00](v30);
    *(&v50 - 2) = __dst;
    v40 = v63;
    v41 = v67;
    result = sub_18E4257EC(sub_18E43E7D4);
    if (v41)
    {
      return result;
    }

    v56 = *&v12[*(v54 + 48)];
    v37 = v58;
    v43 = v57;
    (*(v58 + 32))();
  }

  v46 = v59;
  (*(v37 + 16))(v59, v43, v39);
  v47 = v43;
  v48 = v60;
  sub_18E249148(v46, v60, type metadata accessor for ImageTokenizerAssetContents);
  v49 = v61;
  sub_18E249148(v48, v61, type metadata accessor for ImageTokenizerAssetContents);

  sub_18E43211C(0, 0, 1, v49, v56, v40, 0, v62);
  sub_18E2491F8(v48, type metadata accessor for ImageTokenizerAssetContents);
  sub_18E2491F8(v46, type metadata accessor for ImageTokenizerAssetContents);
  return (*(v37 + 8))(v47, v39);
}

uint64_t sub_18E403BBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a1;
  v62 = a2;
  v3 = type metadata accessor for LLMAdapterAssetContents(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v50 - v9;
  v54 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v50 - v11;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v50 - v15;
  v17 = sub_18E44E46C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_18E44E54C();
  v58 = *(v22 - 8);
  v23 = *(v58 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v57 = &v50 - v27;
  v28 = *(v2 + 40);
  v55 = *(v2 + 32);
  v56 = v28;
  v29 = *(v2 + 56);
  v30 = memcpy(__dst, v2, sizeof(__dst));
  if (v29)
  {
    v32 = *(v2 + 200);
    v31 = *(v2 + 208);
    v33 = *MEMORY[0x1E6968F58];
    v52 = v18;
    v34 = *(v18 + 104);
    v53 = v17;
    v51 = v34;
    v34(v21, v33, v17);
    v54 = v22;
    sub_18E201DC8(v16, 1, 1, v22);
    sub_18E44E51C();
    v35 = v32 == 0x636972656E6567 && v31 == 0xE700000000000000;
    if (v35 || (sub_18E44F3CC() & 1) != 0)
    {
      v36 = v56;

      v37 = v58;
      v38 = v55;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v36 = v44;
      v37 = v58;
    }

    v64 = v38;
    v65 = v36;
    v45 = v53;
    v51(v21, *MEMORY[0x1E6968F70], v53);
    sub_18E24D39C();
    v43 = v57;
    sub_18E44E53C();
    (*(v52 + 8))(v21, v45);

    v39 = v54;
    (*(v37 + 8))(v26, v54);
    v56 = sub_18E44E9AC();
    v40 = v63;
  }

  else
  {
    v39 = v22;
    MEMORY[0x1EEE9AC00](v30);
    *(&v50 - 2) = __dst;
    v40 = v63;
    v41 = v67;
    result = sub_18E4257EC(sub_18E43E708);
    if (v41)
    {
      return result;
    }

    v56 = *&v12[*(v54 + 48)];
    v37 = v58;
    v43 = v57;
    (*(v58 + 32))();
  }

  v46 = v59;
  (*(v37 + 16))(v59, v43, v39);
  v47 = v43;
  v48 = v60;
  sub_18E249148(v46, v60, type metadata accessor for LLMAdapterAssetContents);
  v49 = v61;
  sub_18E249148(v48, v61, type metadata accessor for LLMAdapterAssetContents);

  sub_18E430F4C(0, 0, 1, v49, v56, v40, 0, v62);
  sub_18E2491F8(v48, type metadata accessor for LLMAdapterAssetContents);
  sub_18E2491F8(v46, type metadata accessor for LLMAdapterAssetContents);
  return (*(v37 + 8))(v47, v39);
}

uint64_t sub_18E40421C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a1;
  v62 = a2;
  v3 = type metadata accessor for LLMAdapterMetadataOverrideAssetContents(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v50 - v9;
  v54 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v50 - v11;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v50 - v15;
  v17 = sub_18E44E46C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_18E44E54C();
  v58 = *(v22 - 8);
  v23 = *(v58 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v57 = &v50 - v27;
  v28 = *(v2 + 40);
  v55 = *(v2 + 32);
  v56 = v28;
  v29 = *(v2 + 56);
  v30 = memcpy(__dst, v2, sizeof(__dst));
  if (v29)
  {
    v32 = *(v2 + 200);
    v31 = *(v2 + 208);
    v33 = *MEMORY[0x1E6968F58];
    v52 = v18;
    v34 = *(v18 + 104);
    v53 = v17;
    v51 = v34;
    v34(v21, v33, v17);
    v54 = v22;
    sub_18E201DC8(v16, 1, 1, v22);
    sub_18E44E51C();
    v35 = v32 == 0x636972656E6567 && v31 == 0xE700000000000000;
    if (v35 || (sub_18E44F3CC() & 1) != 0)
    {
      v36 = v56;

      v37 = v58;
      v38 = v55;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v36 = v44;
      v37 = v58;
    }

    v64 = v38;
    v65 = v36;
    v45 = v53;
    v51(v21, *MEMORY[0x1E6968F70], v53);
    sub_18E24D39C();
    v43 = v57;
    sub_18E44E53C();
    (*(v52 + 8))(v21, v45);

    v39 = v54;
    (*(v37 + 8))(v26, v54);
    v56 = sub_18E44E9AC();
    v40 = v63;
  }

  else
  {
    v39 = v22;
    MEMORY[0x1EEE9AC00](v30);
    *(&v50 - 2) = __dst;
    v40 = v63;
    v41 = v67;
    result = sub_18E4257EC(sub_18E43E63C);
    if (v41)
    {
      return result;
    }

    v56 = *&v12[*(v54 + 48)];
    v37 = v58;
    v43 = v57;
    (*(v58 + 32))();
  }

  v46 = v59;
  (*(v37 + 16))(v59, v43, v39);
  v47 = v43;
  v48 = v60;
  sub_18E249148(v46, v60, type metadata accessor for LLMAdapterMetadataOverrideAssetContents);
  v49 = v61;
  sub_18E249148(v48, v61, type metadata accessor for LLMAdapterMetadataOverrideAssetContents);

  sub_18E43685C(0, 0, 1, v49, v56, v40, 0, v62);
  sub_18E2491F8(v48, type metadata accessor for LLMAdapterMetadataOverrideAssetContents);
  sub_18E2491F8(v46, type metadata accessor for LLMAdapterMetadataOverrideAssetContents);
  return (*(v37 + 8))(v47, v39);
}

uint64_t sub_18E40487C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a1;
  v62 = a2;
  v3 = type metadata accessor for LLMDraftModelAssetContents(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v50 - v9;
  v54 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v50 - v11;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v50 - v15;
  v17 = sub_18E44E46C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_18E44E54C();
  v58 = *(v22 - 8);
  v23 = *(v58 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v57 = &v50 - v27;
  v28 = *(v2 + 40);
  v55 = *(v2 + 32);
  v56 = v28;
  v29 = *(v2 + 56);
  v30 = memcpy(__dst, v2, sizeof(__dst));
  if (v29)
  {
    v32 = *(v2 + 200);
    v31 = *(v2 + 208);
    v33 = *MEMORY[0x1E6968F58];
    v52 = v18;
    v34 = *(v18 + 104);
    v53 = v17;
    v51 = v34;
    v34(v21, v33, v17);
    v54 = v22;
    sub_18E201DC8(v16, 1, 1, v22);
    sub_18E44E51C();
    v35 = v32 == 0x636972656E6567 && v31 == 0xE700000000000000;
    if (v35 || (sub_18E44F3CC() & 1) != 0)
    {
      v36 = v56;

      v37 = v58;
      v38 = v55;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v36 = v44;
      v37 = v58;
    }

    v64 = v38;
    v65 = v36;
    v45 = v53;
    v51(v21, *MEMORY[0x1E6968F70], v53);
    sub_18E24D39C();
    v43 = v57;
    sub_18E44E53C();
    (*(v52 + 8))(v21, v45);

    v39 = v54;
    (*(v37 + 8))(v26, v54);
    v56 = sub_18E44E9AC();
    v40 = v63;
  }

  else
  {
    v39 = v22;
    MEMORY[0x1EEE9AC00](v30);
    *(&v50 - 2) = __dst;
    v40 = v63;
    v41 = v67;
    result = sub_18E4257EC(sub_18E43E570);
    if (v41)
    {
      return result;
    }

    v56 = *&v12[*(v54 + 48)];
    v37 = v58;
    v43 = v57;
    (*(v58 + 32))();
  }

  v46 = v59;
  (*(v37 + 16))(v59, v43, v39);
  v47 = v43;
  v48 = v60;
  sub_18E249148(v46, v60, type metadata accessor for LLMDraftModelAssetContents);
  v49 = v61;
  sub_18E249148(v48, v61, type metadata accessor for LLMDraftModelAssetContents);

  sub_18E42F908(0, 0, 1, v49, v56, v40, 0, v62);
  sub_18E2491F8(v48, type metadata accessor for LLMDraftModelAssetContents);
  sub_18E2491F8(v46, type metadata accessor for LLMDraftModelAssetContents);
  return (*(v37 + 8))(v47, v39);
}

uint64_t sub_18E404EDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a1;
  v62 = a2;
  v3 = type metadata accessor for LLMModelAssetContents(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v50 - v9;
  v54 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v50 - v11;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v50 - v15;
  v17 = sub_18E44E46C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_18E44E54C();
  v58 = *(v22 - 8);
  v23 = *(v58 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v57 = &v50 - v27;
  v28 = *(v2 + 40);
  v55 = *(v2 + 32);
  v56 = v28;
  v29 = *(v2 + 56);
  v30 = memcpy(__dst, v2, sizeof(__dst));
  if (v29)
  {
    v32 = *(v2 + 200);
    v31 = *(v2 + 208);
    v33 = *MEMORY[0x1E6968F58];
    v52 = v18;
    v34 = *(v18 + 104);
    v53 = v17;
    v51 = v34;
    v34(v21, v33, v17);
    v54 = v22;
    sub_18E201DC8(v16, 1, 1, v22);
    sub_18E44E51C();
    v35 = v32 == 0x636972656E6567 && v31 == 0xE700000000000000;
    if (v35 || (sub_18E44F3CC() & 1) != 0)
    {
      v36 = v56;

      v37 = v58;
      v38 = v55;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v36 = v44;
      v37 = v58;
    }

    v64 = v38;
    v65 = v36;
    v45 = v53;
    v51(v21, *MEMORY[0x1E6968F70], v53);
    sub_18E24D39C();
    v43 = v57;
    sub_18E44E53C();
    (*(v52 + 8))(v21, v45);

    v39 = v54;
    (*(v37 + 8))(v26, v54);
    v56 = sub_18E44E9AC();
    v40 = v63;
  }

  else
  {
    v39 = v22;
    MEMORY[0x1EEE9AC00](v30);
    *(&v50 - 2) = __dst;
    v40 = v63;
    v41 = v67;
    result = sub_18E4257EC(sub_18E43E4A4);
    if (v41)
    {
      return result;
    }

    v56 = *&v12[*(v54 + 48)];
    v37 = v58;
    v43 = v57;
    (*(v58 + 32))();
  }

  v46 = v59;
  (*(v37 + 16))(v59, v43, v39);
  v47 = v43;
  v48 = v60;
  sub_18E249148(v46, v60, type metadata accessor for LLMModelAssetContents);
  v49 = v61;
  sub_18E249148(v48, v61, type metadata accessor for LLMModelAssetContents);

  sub_18E430664(0, 0, 1, v49, v56, v40, 0, v62);
  sub_18E2491F8(v48, type metadata accessor for LLMModelAssetContents);
  sub_18E2491F8(v46, type metadata accessor for LLMModelAssetContents);
  return (*(v37 + 8))(v47, v39);
}

uint64_t sub_18E40553C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a1;
  v62 = a2;
  v3 = type metadata accessor for ServerConfigurationAssetContents(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v50 - v9;
  v54 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v50 - v11;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v50 - v15;
  v17 = sub_18E44E46C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_18E44E54C();
  v58 = *(v22 - 8);
  v23 = *(v58 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v57 = &v50 - v27;
  v28 = *(v2 + 40);
  v55 = *(v2 + 32);
  v56 = v28;
  v29 = *(v2 + 56);
  v30 = memcpy(__dst, v2, sizeof(__dst));
  if (v29)
  {
    v32 = *(v2 + 200);
    v31 = *(v2 + 208);
    v33 = *MEMORY[0x1E6968F58];
    v52 = v18;
    v34 = *(v18 + 104);
    v53 = v17;
    v51 = v34;
    v34(v21, v33, v17);
    v54 = v22;
    sub_18E201DC8(v16, 1, 1, v22);
    sub_18E44E51C();
    v35 = v32 == 0x636972656E6567 && v31 == 0xE700000000000000;
    if (v35 || (sub_18E44F3CC() & 1) != 0)
    {
      v36 = v56;

      v37 = v58;
      v38 = v55;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v36 = v44;
      v37 = v58;
    }

    v64 = v38;
    v65 = v36;
    v45 = v53;
    v51(v21, *MEMORY[0x1E6968F70], v53);
    sub_18E24D39C();
    v43 = v57;
    sub_18E44E53C();
    (*(v52 + 8))(v21, v45);

    v39 = v54;
    (*(v37 + 8))(v26, v54);
    v56 = sub_18E44E9AC();
    v40 = v63;
  }

  else
  {
    v39 = v22;
    MEMORY[0x1EEE9AC00](v30);
    *(&v50 - 2) = __dst;
    v40 = v63;
    v41 = v67;
    result = sub_18E4257EC(sub_18E43E3D8);
    if (v41)
    {
      return result;
    }

    v56 = *&v12[*(v54 + 48)];
    v37 = v58;
    v43 = v57;
    (*(v58 + 32))();
  }

  v46 = v59;
  (*(v37 + 16))(v59, v43, v39);
  v47 = v43;
  v48 = v60;
  sub_18E249148(v46, v60, type metadata accessor for ServerConfigurationAssetContents);
  v49 = v61;
  sub_18E249148(v48, v61, type metadata accessor for ServerConfigurationAssetContents);

  sub_18E434DA4(0, 0, 1, v49, v56, v40, 0, v62);
  sub_18E2491F8(v48, type metadata accessor for ServerConfigurationAssetContents);
  sub_18E2491F8(v46, type metadata accessor for ServerConfigurationAssetContents);
  return (*(v37 + 8))(v47, v39);
}

uint64_t sub_18E405B9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a1;
  v62 = a2;
  v3 = type metadata accessor for ModelConfigurationReplacementAssetContents(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v50 - v9;
  v54 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v50 - v11;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v50 - v15;
  v17 = sub_18E44E46C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_18E44E54C();
  v58 = *(v22 - 8);
  v23 = *(v58 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v57 = &v50 - v27;
  v28 = *(v2 + 40);
  v55 = *(v2 + 32);
  v56 = v28;
  v29 = *(v2 + 56);
  v30 = memcpy(__dst, v2, sizeof(__dst));
  if (v29)
  {
    v32 = *(v2 + 200);
    v31 = *(v2 + 208);
    v33 = *MEMORY[0x1E6968F58];
    v52 = v18;
    v34 = *(v18 + 104);
    v53 = v17;
    v51 = v34;
    v34(v21, v33, v17);
    v54 = v22;
    sub_18E201DC8(v16, 1, 1, v22);
    sub_18E44E51C();
    v35 = v32 == 0x636972656E6567 && v31 == 0xE700000000000000;
    if (v35 || (sub_18E44F3CC() & 1) != 0)
    {
      v36 = v56;

      v37 = v58;
      v38 = v55;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v36 = v44;
      v37 = v58;
    }

    v64 = v38;
    v65 = v36;
    v45 = v53;
    v51(v21, *MEMORY[0x1E6968F70], v53);
    sub_18E24D39C();
    v43 = v57;
    sub_18E44E53C();
    (*(v52 + 8))(v21, v45);

    v39 = v54;
    (*(v37 + 8))(v26, v54);
    v56 = sub_18E44E9AC();
    v40 = v63;
  }

  else
  {
    v39 = v22;
    MEMORY[0x1EEE9AC00](v30);
    *(&v50 - 2) = __dst;
    v40 = v63;
    v41 = v67;
    result = sub_18E4257EC(sub_18E43E30C);
    if (v41)
    {
      return result;
    }

    v56 = *&v12[*(v54 + 48)];
    v37 = v58;
    v43 = v57;
    (*(v58 + 32))();
  }

  v46 = v59;
  (*(v37 + 16))(v59, v43, v39);
  v47 = v43;
  v48 = v60;
  sub_18E249148(v46, v60, type metadata accessor for ModelConfigurationReplacementAssetContents);
  v49 = v61;
  sub_18E249148(v48, v61, type metadata accessor for ModelConfigurationReplacementAssetContents);

  sub_18E42F494(0, 0, 1, v49, v56, v40, 0, v62);
  sub_18E2491F8(v48, type metadata accessor for ModelConfigurationReplacementAssetContents);
  sub_18E2491F8(v46, type metadata accessor for ModelConfigurationReplacementAssetContents);
  return (*(v37 + 8))(v47, v39);
}

uint64_t sub_18E4061FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a1;
  v62 = a2;
  v3 = type metadata accessor for MotionAdapterAssetContents(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v50 - v9;
  v54 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v50 - v11;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v50 - v15;
  v17 = sub_18E44E46C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_18E44E54C();
  v58 = *(v22 - 8);
  v23 = *(v58 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v57 = &v50 - v27;
  v28 = *(v2 + 40);
  v55 = *(v2 + 32);
  v56 = v28;
  v29 = *(v2 + 56);
  v30 = memcpy(__dst, v2, sizeof(__dst));
  if (v29)
  {
    v32 = *(v2 + 200);
    v31 = *(v2 + 208);
    v33 = *MEMORY[0x1E6968F58];
    v52 = v18;
    v34 = *(v18 + 104);
    v53 = v17;
    v51 = v34;
    v34(v21, v33, v17);
    v54 = v22;
    sub_18E201DC8(v16, 1, 1, v22);
    sub_18E44E51C();
    v35 = v32 == 0x636972656E6567 && v31 == 0xE700000000000000;
    if (v35 || (sub_18E44F3CC() & 1) != 0)
    {
      v36 = v56;

      v37 = v58;
      v38 = v55;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v36 = v44;
      v37 = v58;
    }

    v64 = v38;
    v65 = v36;
    v45 = v53;
    v51(v21, *MEMORY[0x1E6968F70], v53);
    sub_18E24D39C();
    v43 = v57;
    sub_18E44E53C();
    (*(v52 + 8))(v21, v45);

    v39 = v54;
    (*(v37 + 8))(v26, v54);
    v56 = sub_18E44E9AC();
    v40 = v63;
  }

  else
  {
    v39 = v22;
    MEMORY[0x1EEE9AC00](v30);
    *(&v50 - 2) = __dst;
    v40 = v63;
    v41 = v67;
    result = sub_18E4257EC(sub_18E43E240);
    if (v41)
    {
      return result;
    }

    v56 = *&v12[*(v54 + 48)];
    v37 = v58;
    v43 = v57;
    (*(v58 + 32))();
  }

  v46 = v59;
  (*(v37 + 16))(v59, v43, v39);
  v47 = v43;
  v48 = v60;
  sub_18E249148(v46, v60, type metadata accessor for MotionAdapterAssetContents);
  v49 = v61;
  sub_18E249148(v48, v61, type metadata accessor for MotionAdapterAssetContents);

  sub_18E431CA8(0, 0, 1, v49, v56, v40, 0, v62);
  sub_18E2491F8(v48, type metadata accessor for MotionAdapterAssetContents);
  sub_18E2491F8(v46, type metadata accessor for MotionAdapterAssetContents);
  return (*(v37 + 8))(v47, v39);
}

uint64_t sub_18E40685C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a1;
  v62 = a2;
  v3 = type metadata accessor for MotionAssetContents(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v50 - v9;
  v54 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v50 - v11;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v50 - v15;
  v17 = sub_18E44E46C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_18E44E54C();
  v58 = *(v22 - 8);
  v23 = *(v58 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v57 = &v50 - v27;
  v28 = *(v2 + 40);
  v55 = *(v2 + 32);
  v56 = v28;
  v29 = *(v2 + 56);
  v30 = memcpy(__dst, v2, sizeof(__dst));
  if (v29)
  {
    v32 = *(v2 + 200);
    v31 = *(v2 + 208);
    v33 = *MEMORY[0x1E6968F58];
    v52 = v18;
    v34 = *(v18 + 104);
    v53 = v17;
    v51 = v34;
    v34(v21, v33, v17);
    v54 = v22;
    sub_18E201DC8(v16, 1, 1, v22);
    sub_18E44E51C();
    v35 = v32 == 0x636972656E6567 && v31 == 0xE700000000000000;
    if (v35 || (sub_18E44F3CC() & 1) != 0)
    {
      v36 = v56;

      v37 = v58;
      v38 = v55;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v36 = v44;
      v37 = v58;
    }

    v64 = v38;
    v65 = v36;
    v45 = v53;
    v51(v21, *MEMORY[0x1E6968F70], v53);
    sub_18E24D39C();
    v43 = v57;
    sub_18E44E53C();
    (*(v52 + 8))(v21, v45);

    v39 = v54;
    (*(v37 + 8))(v26, v54);
    v56 = sub_18E44E9AC();
    v40 = v63;
  }

  else
  {
    v39 = v22;
    MEMORY[0x1EEE9AC00](v30);
    *(&v50 - 2) = __dst;
    v40 = v63;
    v41 = v67;
    result = sub_18E4257EC(sub_18E43E174);
    if (v41)
    {
      return result;
    }

    v56 = *&v12[*(v54 + 48)];
    v37 = v58;
    v43 = v57;
    (*(v58 + 32))();
  }

  v46 = v59;
  (*(v37 + 16))(v59, v43, v39);
  v47 = v43;
  v48 = v60;
  sub_18E249148(v46, v60, type metadata accessor for MotionAssetContents);
  v49 = v61;
  sub_18E249148(v48, v61, type metadata accessor for MotionAssetContents);

  sub_18E4301F0(0, 0, 1, v49, v56, v40, 0, v62);
  sub_18E2491F8(v48, type metadata accessor for MotionAssetContents);
  sub_18E2491F8(v46, type metadata accessor for MotionAssetContents);
  return (*(v37 + 8))(v47, v39);
}

uint64_t sub_18E406EBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a1;
  v62 = a2;
  v3 = type metadata accessor for PromptAllowListAssetContents(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v50 - v9;
  v54 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v50 - v11;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v50 - v15;
  v17 = sub_18E44E46C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_18E44E54C();
  v58 = *(v22 - 8);
  v23 = *(v58 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v57 = &v50 - v27;
  v28 = *(v2 + 40);
  v55 = *(v2 + 32);
  v56 = v28;
  v29 = *(v2 + 56);
  v30 = memcpy(__dst, v2, sizeof(__dst));
  if (v29)
  {
    v32 = *(v2 + 200);
    v31 = *(v2 + 208);
    v33 = *MEMORY[0x1E6968F58];
    v52 = v18;
    v34 = *(v18 + 104);
    v53 = v17;
    v51 = v34;
    v34(v21, v33, v17);
    v54 = v22;
    sub_18E201DC8(v16, 1, 1, v22);
    sub_18E44E51C();
    v35 = v32 == 0x636972656E6567 && v31 == 0xE700000000000000;
    if (v35 || (sub_18E44F3CC() & 1) != 0)
    {
      v36 = v56;

      v37 = v58;
      v38 = v55;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v36 = v44;
      v37 = v58;
    }

    v64 = v38;
    v65 = v36;
    v45 = v53;
    v51(v21, *MEMORY[0x1E6968F70], v53);
    sub_18E24D39C();
    v43 = v57;
    sub_18E44E53C();
    (*(v52 + 8))(v21, v45);

    v39 = v54;
    (*(v37 + 8))(v26, v54);
    v56 = sub_18E44E9AC();
    v40 = v63;
  }

  else
  {
    v39 = v22;
    MEMORY[0x1EEE9AC00](v30);
    *(&v50 - 2) = __dst;
    v40 = v63;
    v41 = v67;
    result = sub_18E4257EC(sub_18E43E0A8);
    if (v41)
    {
      return result;
    }

    v56 = *&v12[*(v54 + 48)];
    v37 = v58;
    v43 = v57;
    (*(v58 + 32))();
  }

  v46 = v59;
  (*(v37 + 16))(v59, v43, v39);
  v47 = v43;
  v48 = v60;
  sub_18E249148(v46, v60, type metadata accessor for PromptAllowListAssetContents);
  v49 = v61;
  sub_18E249148(v48, v61, type metadata accessor for PromptAllowListAssetContents);

  sub_18E432590(0, 0, 1, v49, v56, v40, 0, v62);
  sub_18E2491F8(v48, type metadata accessor for PromptAllowListAssetContents);
  sub_18E2491F8(v46, type metadata accessor for PromptAllowListAssetContents);
  return (*(v37 + 8))(v47, v39);
}

uint64_t sub_18E40751C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a1;
  v62 = a2;
  v3 = type metadata accessor for SecureAnalyticsAssetContents(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v50 - v9;
  v54 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v50 - v11;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v50 - v15;
  v17 = sub_18E44E46C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_18E44E54C();
  v58 = *(v22 - 8);
  v23 = *(v58 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v57 = &v50 - v27;
  v28 = *(v2 + 40);
  v55 = *(v2 + 32);
  v56 = v28;
  v29 = *(v2 + 56);
  v30 = memcpy(__dst, v2, sizeof(__dst));
  if (v29)
  {
    v32 = *(v2 + 200);
    v31 = *(v2 + 208);
    v33 = *MEMORY[0x1E6968F58];
    v52 = v18;
    v34 = *(v18 + 104);
    v53 = v17;
    v51 = v34;
    v34(v21, v33, v17);
    v54 = v22;
    sub_18E201DC8(v16, 1, 1, v22);
    sub_18E44E51C();
    v35 = v32 == 0x636972656E6567 && v31 == 0xE700000000000000;
    if (v35 || (sub_18E44F3CC() & 1) != 0)
    {
      v36 = v56;

      v37 = v58;
      v38 = v55;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v36 = v44;
      v37 = v58;
    }

    v64 = v38;
    v65 = v36;
    v45 = v53;
    v51(v21, *MEMORY[0x1E6968F70], v53);
    sub_18E24D39C();
    v43 = v57;
    sub_18E44E53C();
    (*(v52 + 8))(v21, v45);

    v39 = v54;
    (*(v37 + 8))(v26, v54);
    v56 = sub_18E44E9AC();
    v40 = v63;
  }

  else
  {
    v39 = v22;
    MEMORY[0x1EEE9AC00](v30);
    *(&v50 - 2) = __dst;
    v40 = v63;
    v41 = v67;
    result = sub_18E4257EC(sub_18E43DFDC);
    if (v41)
    {
      return result;
    }

    v56 = *&v12[*(v54 + 48)];
    v37 = v58;
    v43 = v57;
    (*(v58 + 32))();
  }

  v46 = v59;
  (*(v37 + 16))(v59, v43, v39);
  v47 = v43;
  v48 = v60;
  sub_18E249148(v46, v60, type metadata accessor for SecureAnalyticsAssetContents);
  v49 = v61;
  sub_18E249148(v48, v61, type metadata accessor for SecureAnalyticsAssetContents);

  sub_18E432A04(0, 0, 1, v49, v56, v40, 0, v62);
  sub_18E2491F8(v48, type metadata accessor for SecureAnalyticsAssetContents);
  sub_18E2491F8(v46, type metadata accessor for SecureAnalyticsAssetContents);
  return (*(v37 + 8))(v47, v39);
}

uint64_t sub_18E407B7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a1;
  v62 = a2;
  v3 = type metadata accessor for TokenInputDenyListAssetContents(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v50 - v9;
  v54 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v50 - v11;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v50 - v15;
  v17 = sub_18E44E46C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_18E44E54C();
  v58 = *(v22 - 8);
  v23 = *(v58 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v57 = &v50 - v27;
  v28 = *(v2 + 40);
  v55 = *(v2 + 32);
  v56 = v28;
  v29 = *(v2 + 56);
  v30 = memcpy(__dst, v2, sizeof(__dst));
  if (v29)
  {
    v32 = *(v2 + 200);
    v31 = *(v2 + 208);
    v33 = *MEMORY[0x1E6968F58];
    v52 = v18;
    v34 = *(v18 + 104);
    v53 = v17;
    v51 = v34;
    v34(v21, v33, v17);
    v54 = v22;
    sub_18E201DC8(v16, 1, 1, v22);
    sub_18E44E51C();
    v35 = v32 == 0x636972656E6567 && v31 == 0xE700000000000000;
    if (v35 || (sub_18E44F3CC() & 1) != 0)
    {
      v36 = v56;

      v37 = v58;
      v38 = v55;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v36 = v44;
      v37 = v58;
    }

    v64 = v38;
    v65 = v36;
    v45 = v53;
    v51(v21, *MEMORY[0x1E6968F70], v53);
    sub_18E24D39C();
    v43 = v57;
    sub_18E44E53C();
    (*(v52 + 8))(v21, v45);

    v39 = v54;
    (*(v37 + 8))(v26, v54);
    v56 = sub_18E44E9AC();
    v40 = v63;
  }

  else
  {
    v39 = v22;
    MEMORY[0x1EEE9AC00](v30);
    *(&v50 - 2) = __dst;
    v40 = v63;
    v41 = v67;
    result = sub_18E4257EC(sub_18E43DF10);
    if (v41)
    {
      return result;
    }

    v56 = *&v12[*(v54 + 48)];
    v37 = v58;
    v43 = v57;
    (*(v58 + 32))();
  }

  v46 = v59;
  (*(v37 + 16))(v59, v43, v39);
  v47 = v43;
  v48 = v60;
  sub_18E249148(v46, v60, type metadata accessor for TokenInputDenyListAssetContents);
  v49 = v61;
  sub_18E249148(v48, v61, type metadata accessor for TokenInputDenyListAssetContents);

  sub_18E433BD4(0, 0, 1, v49, v56, v40, 0, v62);
  sub_18E2491F8(v48, type metadata accessor for TokenInputDenyListAssetContents);
  sub_18E2491F8(v46, type metadata accessor for TokenInputDenyListAssetContents);
  return (*(v37 + 8))(v47, v39);
}

uint64_t sub_18E4081DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a1;
  v62 = a2;
  v3 = type metadata accessor for TokenOutputDenyListAssetContents(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v50 - v9;
  v54 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v50 - v11;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v50 - v15;
  v17 = sub_18E44E46C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_18E44E54C();
  v58 = *(v22 - 8);
  v23 = *(v58 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v57 = &v50 - v27;
  v28 = *(v2 + 40);
  v55 = *(v2 + 32);
  v56 = v28;
  v29 = *(v2 + 56);
  v30 = memcpy(__dst, v2, sizeof(__dst));
  if (v29)
  {
    v32 = *(v2 + 200);
    v31 = *(v2 + 208);
    v33 = *MEMORY[0x1E6968F58];
    v52 = v18;
    v34 = *(v18 + 104);
    v53 = v17;
    v51 = v34;
    v34(v21, v33, v17);
    v54 = v22;
    sub_18E201DC8(v16, 1, 1, v22);
    sub_18E44E51C();
    v35 = v32 == 0x636972656E6567 && v31 == 0xE700000000000000;
    if (v35 || (sub_18E44F3CC() & 1) != 0)
    {
      v36 = v56;

      v37 = v58;
      v38 = v55;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v36 = v44;
      v37 = v58;
    }

    v64 = v38;
    v65 = v36;
    v45 = v53;
    v51(v21, *MEMORY[0x1E6968F70], v53);
    sub_18E24D39C();
    v43 = v57;
    sub_18E44E53C();
    (*(v52 + 8))(v21, v45);

    v39 = v54;
    (*(v37 + 8))(v26, v54);
    v56 = sub_18E44E9AC();
    v40 = v63;
  }

  else
  {
    v39 = v22;
    MEMORY[0x1EEE9AC00](v30);
    *(&v50 - 2) = __dst;
    v40 = v63;
    v41 = v67;
    result = sub_18E4257EC(sub_18E43DEA0);
    if (v41)
    {
      return result;
    }

    v56 = *&v12[*(v54 + 48)];
    v37 = v58;
    v43 = v57;
    (*(v58 + 32))();
  }

  v46 = v59;
  (*(v37 + 16))(v59, v43, v39);
  v47 = v43;
  v48 = v60;
  sub_18E249148(v46, v60, type metadata accessor for TokenOutputDenyListAssetContents);
  v49 = v61;
  sub_18E249148(v48, v61, type metadata accessor for TokenOutputDenyListAssetContents);

  sub_18E435218(0, 0, 1, v49, v56, v40, 0, v62);
  sub_18E2491F8(v48, type metadata accessor for TokenOutputDenyListAssetContents);
  sub_18E2491F8(v46, type metadata accessor for TokenOutputDenyListAssetContents);
  return (*(v37 + 8))(v47, v39);
}

uint64_t sub_18E40883C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a1;
  v62 = a2;
  v3 = type metadata accessor for TokenOutputRetainListAssetContents(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v50 - v9;
  v54 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v50 - v11;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v50 - v15;
  v17 = sub_18E44E46C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_18E44E54C();
  v58 = *(v22 - 8);
  v23 = *(v58 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v57 = &v50 - v27;
  v28 = *(v2 + 40);
  v55 = *(v2 + 32);
  v56 = v28;
  v29 = *(v2 + 56);
  v30 = memcpy(__dst, v2, sizeof(__dst));
  if (v29)
  {
    v32 = *(v2 + 200);
    v31 = *(v2 + 208);
    v33 = *MEMORY[0x1E6968F58];
    v52 = v18;
    v34 = *(v18 + 104);
    v53 = v17;
    v51 = v34;
    v34(v21, v33, v17);
    v54 = v22;
    sub_18E201DC8(v16, 1, 1, v22);
    sub_18E44E51C();
    v35 = v32 == 0x636972656E6567 && v31 == 0xE700000000000000;
    if (v35 || (sub_18E44F3CC() & 1) != 0)
    {
      v36 = v56;

      v37 = v58;
      v38 = v55;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v36 = v44;
      v37 = v58;
    }

    v64 = v38;
    v65 = v36;
    v45 = v53;
    v51(v21, *MEMORY[0x1E6968F70], v53);
    sub_18E24D39C();
    v43 = v57;
    sub_18E44E53C();
    (*(v52 + 8))(v21, v45);

    v39 = v54;
    (*(v37 + 8))(v26, v54);
    v56 = sub_18E44E9AC();
    v40 = v63;
  }

  else
  {
    v39 = v22;
    MEMORY[0x1EEE9AC00](v30);
    *(&v50 - 2) = __dst;
    v40 = v63;
    v41 = v67;
    result = sub_18E4257EC(sub_18E43DE30);
    if (v41)
    {
      return result;
    }

    v56 = *&v12[*(v54 + 48)];
    v37 = v58;
    v43 = v57;
    (*(v58 + 32))();
  }

  v46 = v59;
  (*(v37 + 16))(v59, v43, v39);
  v47 = v43;
  v48 = v60;
  sub_18E249148(v46, v60, type metadata accessor for TokenOutputRetainListAssetContents);
  v49 = v61;
  sub_18E249148(v48, v61, type metadata accessor for TokenOutputRetainListAssetContents);

  sub_18E435B00(0, 0, 1, v49, v56, v40, 0, v62);
  sub_18E2491F8(v48, type metadata accessor for TokenOutputRetainListAssetContents);
  sub_18E2491F8(v46, type metadata accessor for TokenOutputRetainListAssetContents);
  return (*(v37 + 8))(v47, v39);
}

uint64_t sub_18E408E9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a1;
  v62 = a2;
  v3 = type metadata accessor for TokenizerAssetContents(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v60 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v50 - v9;
  v54 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v50 - v11;
  v13 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v50 - v15;
  v17 = sub_18E44E46C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_18E44E54C();
  v58 = *(v22 - 8);
  v23 = *(v58 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v57 = &v50 - v27;
  v28 = *(v2 + 40);
  v55 = *(v2 + 32);
  v56 = v28;
  v29 = *(v2 + 56);
  v30 = memcpy(__dst, v2, sizeof(__dst));
  if (v29)
  {
    v32 = *(v2 + 200);
    v31 = *(v2 + 208);
    v33 = *MEMORY[0x1E6968F58];
    v52 = v18;
    v34 = *(v18 + 104);
    v53 = v17;
    v51 = v34;
    v34(v21, v33, v17);
    v54 = v22;
    sub_18E201DC8(v16, 1, 1, v22);
    sub_18E44E51C();
    v35 = v32 == 0x636972656E6567 && v31 == 0xE700000000000000;
    if (v35 || (sub_18E44F3CC() & 1) != 0)
    {
      v36 = v56;

      v37 = v58;
      v38 = v55;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v36 = v44;
      v37 = v58;
    }

    v64 = v38;
    v65 = v36;
    v45 = v53;
    v51(v21, *MEMORY[0x1E6968F70], v53);
    sub_18E24D39C();
    v43 = v57;
    sub_18E44E53C();
    (*(v52 + 8))(v21, v45);

    v39 = v54;
    (*(v37 + 8))(v26, v54);
    v56 = sub_18E44E9AC();
    v40 = v63;
  }

  else
  {
    v39 = v22;
    MEMORY[0x1EEE9AC00](v30);
    *(&v50 - 2) = __dst;
    v40 = v63;
    v41 = v67;
    result = sub_18E4257EC(sub_18E43DD64);
    if (v41)
    {
      return result;
    }

    v56 = *&v12[*(v54 + 48)];
    v37 = v58;
    v43 = v57;
    (*(v58 + 32))();
  }

  v46 = v59;
  (*(v37 + 16))(v59, v43, v39);
  v47 = v43;
  v48 = v60;
  sub_18E249148(v46, v60, type metadata accessor for TokenizerAssetContents);
  v49 = v61;
  sub_18E249148(v48, v61, type metadata accessor for TokenizerAssetContents);

  sub_18E430AD8(0, 0, 1, v49, v56, v40, 0, v62);
  sub_18E2491F8(v48, type metadata accessor for TokenizerAssetContents);
  sub_18E2491F8(v46, type metadata accessor for TokenizerAssetContents);
  return (*(v37 + 8))(v47, v39);
}

void AssetBackedResource<>.fetchLockedAsset(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E1C62A0();
  a19 = v22;
  a20 = v23;
  v111 = v21;
  v101 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v108 = v31;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_18E1C5838();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v104 = AssociatedTypeWitness;
  v33 = swift_getAssociatedTypeWitness();
  v34 = sub_18E1C4EAC(v33);
  v105 = v35;
  v106 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_18E1C64E0();
  v102 = v38;
  MEMORY[0x1EEE9AC00](v39);
  sub_18E1D84B0();
  v103 = v40;
  v96 = sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00);
  sub_18E1C4EEC(v96);
  v42 = *(v41 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v43);
  sub_18E1CAF50();
  v98 = v44;
  v45 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v45);
  v47 = *(v46 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v48);
  sub_18E1CAF50();
  v97 = v49;
  v50 = sub_18E44E46C();
  v51 = sub_18E1C4EAC(v50);
  v99 = v52;
  v100 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v51);
  sub_18E1C4EDC();
  sub_18E1C561C();
  v112 = sub_18E44E54C();
  v55 = sub_18E1C4EAC(v112);
  v110 = v56;
  v58 = *(v57 + 64);
  v59 = MEMORY[0x1EEE9AC00](v55);
  v61 = &v95 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v63 = &v95 - v62;
  v64 = *v30;
  v65 = v26;
  v66 = *(v26 + 8);
  v67 = *(v66 + 64);
  v109 = v20;
  v68 = v28;
  v69 = v67(v28, v66);
  if (v69)
  {
    v101 = v64;
    v96 = v28;
    v70 = *MEMORY[0x1E6968F58];
    v71 = v99;
    v72 = v100;
    v98 = *(v99 + 104);
    (v98)(AssociatedTypeWitness, v70, v100);
    sub_18E201DC8(v97, 1, 1, v112);
    sub_18E44E51C();
    v113 = (*(v66 + 24))(v96, v66);
    v114 = v73;
    (v98)(AssociatedTypeWitness, *MEMORY[0x1E6968F70], v72);
    sub_18E24D39C();
    sub_18E44E53C();
    (*(v71 + 8))(AssociatedTypeWitness, v72);

    v74 = v110;
    v75 = v112;
    (*(v110 + 8))(v61, v112);
    v109 = sub_18E44E9AC();
    v76 = v75;
LABEL_5:
    (*(v74 + 16))(v61, v63, v76);
    v85 = v106;
    v84 = AssociatedConformanceWitness;
    v86 = swift_getAssociatedConformanceWitness();
    v87 = v103;
    v88 = v61;
    v89 = v63;
    v90 = v74;
    (*(v86 + 24))(v88, v85, v86);
    v91 = swift_checkMetadataState();
    v113 = 0;
    v114 = 0;
    v115 = 1;
    v92 = v105;
    v93 = v102;
    (*(v105 + 16))(v102, v87, v85);
    a10 = v101;
    v94 = *(v84 + 112);

    v94(&v113, v93, v109, &a10, v91, v84);
    (*(v92 + 8))(v87, v85);
    (*(v90 + 8))(v89, v112);
    goto LABEL_6;
  }

  v77 = v110;
  v76 = v112;
  MEMORY[0x1EEE9AC00](v69);
  *(&v95 - 4) = v68;
  *(&v95 - 3) = v65;
  v78 = v109;
  *(&v95 - 2) = v101;
  *(&v95 - 1) = v78;
  v79 = v98;
  v80 = v111;
  sub_18E4257EC(sub_18E43A13C);
  if (!v80)
  {
    v111 = 0;
    v101 = v64;
    v109 = *&v79[*(v96 + 48)];
    v74 = v77;
    v81 = *(v77 + 32);
    v82 = sub_18E1DD3B4();
    v83(v82);
    goto LABEL_5;
  }

LABEL_6:
  sub_18E1C6650();
}

void sub_18E409E70(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v125 = a2;
  v127 = a3;
  v7 = type metadata accessor for ModelConfigurationReplacementAssetContents(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v124 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v123 = &v118 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v118 - v13;
  v14 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v118 - v16;
  v18 = sub_18E44E46C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_18E44E54C();
  v133 = *(v23 - 8);
  v24 = v133[8];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v118 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v136 = &v118 - v32;
  v131 = *(v5 + 32);
  v33 = *(v5 + 40);
  v34 = *(v5 + 56);
  v132 = v4;
  v130 = v33;
  v128 = v30;
  v126 = v35;
  v122 = a1;
  if (v34)
  {
    v36 = *MEMORY[0x1E6968F58];
    v121 = v19;
    v37 = *(v19 + 104);
    v37(v22, v36, v18);
    sub_18E201DC8(v17, 1, 1, v23);
    sub_18E44E51C();
    v38 = *(v5 + 200);
    v39 = *(v5 + 208);
    v119 = v5;
    v40 = v38 == 0x636972656E6567 && v39 == 0xE700000000000000;
    if (v40 || (sub_18E44F3CC() & 1) != 0)
    {
      v41 = v130;

      v42 = v131;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v41 = v59;
    }

    v134 = v42;
    v135 = v41;
    v37(v22, *MEMORY[0x1E6968F70], v18);
    sub_18E24D39C();
    v60 = v136;
    sub_18E44E53C();
    (*(v121 + 8))(v22, v18);
    v61 = v60;

    v62 = v133;
    v63 = v128;
    v121 = v133[1];
    (v121)(v29, v128);
    v120 = sub_18E44E9AC();
    v64 = v62[2];
    v5 = v119;
  }

  else
  {
    v118 = v31;
    v43 = *(v5 + 112);
    v44 = *(v5 + 120);
    v45 = *(v5 + 128);
    v46 = *(a1 + 16);
    v121 = *(v5 + 96);
    if (v121)
    {

      v47 = v44;
      v48 = v45;
    }

    else
    {
      v47 = v44;
      v44 = 0xD000000000000016;
      v48 = 0x800000018E462F20;
    }

    v49 = v45;

    v50 = sub_18E248038(v44, v48, v46);

    if (!v50)
    {
      v136 = v45;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v51 = 0xD000000000000016;
      v52 = sub_18E44E83C();
      sub_18E1C95EC(v52, qword_1ED6A9870);
      sub_18E43E25C(v5, &v134);
      sub_18E43E25C(v5, &v134);
      v53 = sub_18E44E80C();
      v54 = sub_18E44EE0C();
      v55 = v47;
      if (os_log_type_enabled(v53, v54))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v134 = v57;
        *v56 = 136315394;
        v120 = v55;
        if (v121)
        {

          v58 = v136;

          v51 = v55;
        }

        else
        {
          v58 = 0x800000018E462F20;
        }

        sub_18E2CF438(v5);

        v106 = sub_18E1C9624(v51, v58, &v134);

        *(v56 + 4) = v106;
        *(v56 + 12) = 2080;
        v107 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v107 || (v108 = *(v5 + 200), v109 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
        {
          v110 = v130;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v131 = v111;
          v110 = v112;
        }

        v55 = v120;
        sub_18E2CF438(v5);
        v113 = sub_18E1C9624(v131, v110, &v134);

        *(v56 + 14) = v113;
        _os_log_impl(&dword_18E1C1000, v53, v54, "Failed to find token for asset set: %s for %s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v57, -1, -1);
        MEMORY[0x193ACD400](v56, -1, -1);
      }

      else
      {

        sub_18E2CF438(v5);
        sub_18E2CF438(v5);
      }

      v134 = 0;
      v135 = 0xE000000000000000;
      sub_18E44EFFC();

      v114 = v136;
      if (v121)
      {
      }

      else
      {
        v114 = 0x800000018E462F20;
        v55 = 0xD000000000000016;
      }

      v134 = v55;
      v135 = v114;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v115 = v134;
      v116 = v135;
      sub_18E3FDB10();
      swift_allocError();
      *v117 = v115;
      *(v117 + 8) = v116;
      *(v117 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v121)
    {
    }

    else
    {
      v47 = 0xD000000000000016;
      v49 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v71 = v50;

    v72 = sub_18E4263E4();
    v73 = v71;
    v74 = v132;
    v75 = sub_18E424758(v47, v49, v72, v50);
    if (v74)
    {

      return;
    }

    v76 = *(v75 + 16);
    v77 = v118;
    sub_18E24852C();
    v79 = v78;

    v132 = 0;
    v119 = v133[2];
    v104 = v136;
    v63 = v128;
    v119(v136, v77, v128);
    v105 = [v79 metadata];
    v120 = sub_18E44E98C();

    v61 = v104;

    v121 = v133[1];
    (v121)(v77, v63);
    v64 = v119;
  }

  v65 = v122;
  v66 = v129;
  v119 = v64;
  v64(v129, v61, v63);
  v67 = v123;
  sub_18E249148(v66, v123, type metadata accessor for ModelConfigurationReplacementAssetContents);
  v68 = v124;
  sub_18E249148(v67, v124, type metadata accessor for ModelConfigurationReplacementAssetContents);

  v69 = v125;
  sub_18E42F494(0, 0, 1, v68, v120, v65 | 0x8000000000000000, v125 & 1, v127);
  sub_18E2491F8(v67, type metadata accessor for ModelConfigurationReplacementAssetContents);
  if (v69)
  {
    v70 = v132;
    sub_18E204B54();
    if (v70)
    {
      sub_18E1E8EEC(v127, &qword_1EABE1C10, &qword_18E4E3960);
      sub_18E2491F8(v66, type metadata accessor for ModelConfigurationReplacementAssetContents);
      (v121)(v136, v63);
      return;
    }

    v132 = 0;
  }

  v80 = v136;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v81 = sub_18E44E83C();
  sub_18E1C95EC(v81, qword_1ED6A9870);
  v82 = v126;
  v119(v126, v80, v63);
  sub_18E43E25C(v5, &v134);
  v83 = sub_18E44E80C();
  v84 = v63;
  v85 = sub_18E44EE2C();
  if (os_log_type_enabled(v83, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v134 = v87;
    *v86 = 136315394;
    v88 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v88 || (v89 = *(v5 + 200), v90 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
    {
      v91 = v130;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v131 = v93;
      v91 = v94;
    }

    sub_18E2CF438(v5);
    v95 = sub_18E1C9624(v131, v91, &v134);

    *(v86 + 4) = v95;
    *(v86 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0]);
    v96 = v126;
    v97 = v128;
    v98 = sub_18E44F39C();
    v100 = v99;
    v101 = v96;
    v102 = v121;
    (v121)(v101, v97);
    v103 = sub_18E1C9624(v98, v100, &v134);

    *(v86 + 14) = v103;
    _os_log_impl(&dword_18E1C1000, v83, v85, "fetchLockedAsset for %s successfully returning asset from URL: %s", v86, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v87, -1, -1);
    MEMORY[0x193ACD400](v86, -1, -1);

    sub_18E2491F8(v129, type metadata accessor for ModelConfigurationReplacementAssetContents);
    v102(v136, v97);
  }

  else
  {
    sub_18E2CF438(v5);

    v92 = v121;
    (v121)(v82, v84);
    sub_18E2491F8(v66, type metadata accessor for ModelConfigurationReplacementAssetContents);
    v92(v80, v84);
  }
}

void sub_18E40ADC8(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v125 = a2;
  v127 = a3;
  v7 = type metadata accessor for LLMDraftModelAssetContents(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v124 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v123 = &v118 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v118 - v13;
  v14 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v118 - v16;
  v18 = sub_18E44E46C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_18E44E54C();
  v133 = *(v23 - 8);
  v24 = v133[8];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v118 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v136 = &v118 - v32;
  v131 = *(v5 + 32);
  v33 = *(v5 + 40);
  v34 = *(v5 + 56);
  v132 = v4;
  v130 = v33;
  v128 = v30;
  v126 = v35;
  v122 = a1;
  if (v34)
  {
    v36 = *MEMORY[0x1E6968F58];
    v121 = v19;
    v37 = *(v19 + 104);
    v37(v22, v36, v18);
    sub_18E201DC8(v17, 1, 1, v23);
    sub_18E44E51C();
    v38 = *(v5 + 200);
    v39 = *(v5 + 208);
    v119 = v5;
    v40 = v38 == 0x636972656E6567 && v39 == 0xE700000000000000;
    if (v40 || (sub_18E44F3CC() & 1) != 0)
    {
      v41 = v130;

      v42 = v131;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v41 = v59;
    }

    v134 = v42;
    v135 = v41;
    v37(v22, *MEMORY[0x1E6968F70], v18);
    sub_18E24D39C();
    v60 = v136;
    sub_18E44E53C();
    (*(v121 + 8))(v22, v18);
    v61 = v60;

    v62 = v133;
    v63 = v128;
    v121 = v133[1];
    (v121)(v29, v128);
    v120 = sub_18E44E9AC();
    v64 = v62[2];
    v5 = v119;
  }

  else
  {
    v118 = v31;
    v43 = *(v5 + 112);
    v44 = *(v5 + 120);
    v45 = *(v5 + 128);
    v46 = *(a1 + 16);
    v121 = *(v5 + 96);
    if (v121)
    {

      v47 = v44;
      v48 = v45;
    }

    else
    {
      v47 = v44;
      v44 = 0xD000000000000016;
      v48 = 0x800000018E462F20;
    }

    v49 = v45;

    v50 = sub_18E248038(v44, v48, v46);

    if (!v50)
    {
      v136 = v45;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v51 = 0xD000000000000016;
      v52 = sub_18E44E83C();
      sub_18E1C95EC(v52, qword_1ED6A9870);
      sub_18E43E4C0(v5, &v134);
      sub_18E43E4C0(v5, &v134);
      v53 = sub_18E44E80C();
      v54 = sub_18E44EE0C();
      v55 = v47;
      if (os_log_type_enabled(v53, v54))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v134 = v57;
        *v56 = 136315394;
        v120 = v55;
        if (v121)
        {

          v58 = v136;

          v51 = v55;
        }

        else
        {
          v58 = 0x800000018E462F20;
        }

        sub_18E2CF5A0(v5);

        v106 = sub_18E1C9624(v51, v58, &v134);

        *(v56 + 4) = v106;
        *(v56 + 12) = 2080;
        v107 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v107 || (v108 = *(v5 + 200), v109 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
        {
          v110 = v130;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v131 = v111;
          v110 = v112;
        }

        v55 = v120;
        sub_18E2CF5A0(v5);
        v113 = sub_18E1C9624(v131, v110, &v134);

        *(v56 + 14) = v113;
        _os_log_impl(&dword_18E1C1000, v53, v54, "Failed to find token for asset set: %s for %s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v57, -1, -1);
        MEMORY[0x193ACD400](v56, -1, -1);
      }

      else
      {

        sub_18E2CF5A0(v5);
        sub_18E2CF5A0(v5);
      }

      v134 = 0;
      v135 = 0xE000000000000000;
      sub_18E44EFFC();

      v114 = v136;
      if (v121)
      {
      }

      else
      {
        v114 = 0x800000018E462F20;
        v55 = 0xD000000000000016;
      }

      v134 = v55;
      v135 = v114;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v115 = v134;
      v116 = v135;
      sub_18E3FDB10();
      swift_allocError();
      *v117 = v115;
      *(v117 + 8) = v116;
      *(v117 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v121)
    {
    }

    else
    {
      v47 = 0xD000000000000016;
      v49 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v71 = v50;

    v72 = sub_18E426744();
    v73 = v71;
    v74 = v132;
    v75 = sub_18E424758(v47, v49, v72, v50);
    if (v74)
    {

      return;
    }

    v76 = *(v75 + 16);
    v77 = v118;
    sub_18E24852C();
    v79 = v78;

    v132 = 0;
    v119 = v133[2];
    v104 = v136;
    v63 = v128;
    v119(v136, v77, v128);
    v105 = [v79 metadata];
    v120 = sub_18E44E98C();

    v61 = v104;

    v121 = v133[1];
    (v121)(v77, v63);
    v64 = v119;
  }

  v65 = v122;
  v66 = v129;
  v119 = v64;
  v64(v129, v61, v63);
  v67 = v123;
  sub_18E249148(v66, v123, type metadata accessor for LLMDraftModelAssetContents);
  v68 = v124;
  sub_18E249148(v67, v124, type metadata accessor for LLMDraftModelAssetContents);

  v69 = v125;
  sub_18E42F908(0, 0, 1, v68, v120, v65 | 0x8000000000000000, v125 & 1, v127);
  sub_18E2491F8(v67, type metadata accessor for LLMDraftModelAssetContents);
  if (v69)
  {
    v70 = v132;
    sub_18E204B54();
    if (v70)
    {
      sub_18E1E8EEC(v127, &qword_1EABE1B78, &qword_18E4E3990);
      sub_18E2491F8(v66, type metadata accessor for LLMDraftModelAssetContents);
      (v121)(v136, v63);
      return;
    }

    v132 = 0;
  }

  v80 = v136;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v81 = sub_18E44E83C();
  sub_18E1C95EC(v81, qword_1ED6A9870);
  v82 = v126;
  v119(v126, v80, v63);
  sub_18E43E4C0(v5, &v134);
  v83 = sub_18E44E80C();
  v84 = v63;
  v85 = sub_18E44EE2C();
  if (os_log_type_enabled(v83, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v134 = v87;
    *v86 = 136315394;
    v88 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v88 || (v89 = *(v5 + 200), v90 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
    {
      v91 = v130;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v131 = v93;
      v91 = v94;
    }

    sub_18E2CF5A0(v5);
    v95 = sub_18E1C9624(v131, v91, &v134);

    *(v86 + 4) = v95;
    *(v86 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0]);
    v96 = v126;
    v97 = v128;
    v98 = sub_18E44F39C();
    v100 = v99;
    v101 = v96;
    v102 = v121;
    (v121)(v101, v97);
    v103 = sub_18E1C9624(v98, v100, &v134);

    *(v86 + 14) = v103;
    _os_log_impl(&dword_18E1C1000, v83, v85, "fetchLockedAsset for %s successfully returning asset from URL: %s", v86, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v87, -1, -1);
    MEMORY[0x193ACD400](v86, -1, -1);

    sub_18E2491F8(v129, type metadata accessor for LLMDraftModelAssetContents);
    v102(v136, v97);
  }

  else
  {
    sub_18E2CF5A0(v5);

    v92 = v121;
    (v121)(v82, v84);
    sub_18E2491F8(v66, type metadata accessor for LLMDraftModelAssetContents);
    v92(v80, v84);
  }
}

void sub_18E40BD20(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v125 = a2;
  v127 = a3;
  v7 = type metadata accessor for DiffusionModelAssetContents(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v124 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v123 = &v118 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v118 - v13;
  v14 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v118 - v16;
  v18 = sub_18E44E46C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_18E44E54C();
  v133 = *(v23 - 8);
  v24 = v133[8];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v118 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v136 = &v118 - v32;
  v131 = *(v5 + 32);
  v33 = *(v5 + 40);
  v34 = *(v5 + 56);
  v132 = v4;
  v130 = v33;
  v128 = v30;
  v126 = v35;
  v122 = a1;
  if (v34)
  {
    v36 = *MEMORY[0x1E6968F58];
    v121 = v19;
    v37 = *(v19 + 104);
    v37(v22, v36, v18);
    sub_18E201DC8(v17, 1, 1, v23);
    sub_18E44E51C();
    v38 = *(v5 + 200);
    v39 = *(v5 + 208);
    v119 = v5;
    v40 = v38 == 0x636972656E6567 && v39 == 0xE700000000000000;
    if (v40 || (sub_18E44F3CC() & 1) != 0)
    {
      v41 = v130;

      v42 = v131;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v41 = v59;
    }

    v134 = v42;
    v135 = v41;
    v37(v22, *MEMORY[0x1E6968F70], v18);
    sub_18E24D39C();
    v60 = v136;
    sub_18E44E53C();
    (*(v121 + 8))(v22, v18);
    v61 = v60;

    v62 = v133;
    v63 = v128;
    v121 = v133[1];
    (v121)(v29, v128);
    v120 = sub_18E44E9AC();
    v64 = v62[2];
    v5 = v119;
  }

  else
  {
    v118 = v31;
    v43 = *(v5 + 112);
    v44 = *(v5 + 120);
    v45 = *(v5 + 128);
    v46 = *(a1 + 16);
    v121 = *(v5 + 96);
    if (v121)
    {

      v47 = v44;
      v48 = v45;
    }

    else
    {
      v47 = v44;
      v44 = 0xD000000000000016;
      v48 = 0x800000018E462F20;
    }

    v49 = v45;

    v50 = sub_18E248038(v44, v48, v46);

    if (!v50)
    {
      v136 = v45;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v51 = 0xD000000000000016;
      v52 = sub_18E44E83C();
      sub_18E1C95EC(v52, qword_1ED6A9870);
      sub_18E43EE6C(v5, &v134);
      sub_18E43EE6C(v5, &v134);
      v53 = sub_18E44E80C();
      v54 = sub_18E44EE0C();
      v55 = v47;
      if (os_log_type_enabled(v53, v54))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v134 = v57;
        *v56 = 136315394;
        v120 = v55;
        if (v121)
        {

          v58 = v136;

          v51 = v55;
        }

        else
        {
          v58 = 0x800000018E462F20;
        }

        sub_18E2CFB70(v5);

        v106 = sub_18E1C9624(v51, v58, &v134);

        *(v56 + 4) = v106;
        *(v56 + 12) = 2080;
        v107 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v107 || (v108 = *(v5 + 200), v109 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
        {
          v110 = v130;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v131 = v111;
          v110 = v112;
        }

        v55 = v120;
        sub_18E2CFB70(v5);
        v113 = sub_18E1C9624(v131, v110, &v134);

        *(v56 + 14) = v113;
        _os_log_impl(&dword_18E1C1000, v53, v54, "Failed to find token for asset set: %s for %s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v57, -1, -1);
        MEMORY[0x193ACD400](v56, -1, -1);
      }

      else
      {

        sub_18E2CFB70(v5);
        sub_18E2CFB70(v5);
      }

      v134 = 0;
      v135 = 0xE000000000000000;
      sub_18E44EFFC();

      v114 = v136;
      if (v121)
      {
      }

      else
      {
        v114 = 0x800000018E462F20;
        v55 = 0xD000000000000016;
      }

      v134 = v55;
      v135 = v114;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v115 = v134;
      v116 = v135;
      sub_18E3FDB10();
      swift_allocError();
      *v117 = v115;
      *(v117 + 8) = v116;
      *(v117 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v121)
    {
    }

    else
    {
      v47 = 0xD000000000000016;
      v49 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v71 = v50;

    v72 = sub_18E426AA4();
    v73 = v71;
    v74 = v132;
    v75 = sub_18E424758(v47, v49, v72, v50);
    if (v74)
    {

      return;
    }

    v76 = *(v75 + 16);
    v77 = v118;
    sub_18E24852C();
    v79 = v78;

    v132 = 0;
    v119 = v133[2];
    v104 = v136;
    v63 = v128;
    v119(v136, v77, v128);
    v105 = [v79 metadata];
    v120 = sub_18E44E98C();

    v61 = v104;

    v121 = v133[1];
    (v121)(v77, v63);
    v64 = v119;
  }

  v65 = v122;
  v66 = v129;
  v119 = v64;
  v64(v129, v61, v63);
  v67 = v123;
  sub_18E249148(v66, v123, type metadata accessor for DiffusionModelAssetContents);
  v68 = v124;
  sub_18E249148(v67, v124, type metadata accessor for DiffusionModelAssetContents);

  v69 = v125;
  sub_18E42FD7C(0, 0, 1, v68, v120, v65 | 0x8000000000000000, v125 & 1, v127);
  sub_18E2491F8(v67, type metadata accessor for DiffusionModelAssetContents);
  if (v69)
  {
    v70 = v132;
    sub_18E204B54();
    if (v70)
    {
      sub_18E1E8EEC(v127, &qword_1EABE18D0, &qword_18E4E3A60);
      sub_18E2491F8(v66, type metadata accessor for DiffusionModelAssetContents);
      (v121)(v136, v63);
      return;
    }

    v132 = 0;
  }

  v80 = v136;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v81 = sub_18E44E83C();
  sub_18E1C95EC(v81, qword_1ED6A9870);
  v82 = v126;
  v119(v126, v80, v63);
  sub_18E43EE6C(v5, &v134);
  v83 = sub_18E44E80C();
  v84 = v63;
  v85 = sub_18E44EE2C();
  if (os_log_type_enabled(v83, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v134 = v87;
    *v86 = 136315394;
    v88 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v88 || (v89 = *(v5 + 200), v90 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
    {
      v91 = v130;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v131 = v93;
      v91 = v94;
    }

    sub_18E2CFB70(v5);
    v95 = sub_18E1C9624(v131, v91, &v134);

    *(v86 + 4) = v95;
    *(v86 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0]);
    v96 = v126;
    v97 = v128;
    v98 = sub_18E44F39C();
    v100 = v99;
    v101 = v96;
    v102 = v121;
    (v121)(v101, v97);
    v103 = sub_18E1C9624(v98, v100, &v134);

    *(v86 + 14) = v103;
    _os_log_impl(&dword_18E1C1000, v83, v85, "fetchLockedAsset for %s successfully returning asset from URL: %s", v86, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v87, -1, -1);
    MEMORY[0x193ACD400](v86, -1, -1);

    sub_18E2491F8(v129, type metadata accessor for DiffusionModelAssetContents);
    v102(v136, v97);
  }

  else
  {
    sub_18E2CFB70(v5);

    v92 = v121;
    (v121)(v82, v84);
    sub_18E2491F8(v66, type metadata accessor for DiffusionModelAssetContents);
    v92(v80, v84);
  }
}

void sub_18E40CC78(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v125 = a2;
  v127 = a3;
  v7 = type metadata accessor for MotionAssetContents(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v124 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v123 = &v118 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v118 - v13;
  v14 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v118 - v16;
  v18 = sub_18E44E46C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_18E44E54C();
  v133 = *(v23 - 8);
  v24 = v133[8];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v118 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v136 = &v118 - v32;
  v131 = *(v5 + 32);
  v33 = *(v5 + 40);
  v34 = *(v5 + 56);
  v132 = v4;
  v130 = v33;
  v128 = v30;
  v126 = v35;
  v122 = a1;
  if (v34)
  {
    v36 = *MEMORY[0x1E6968F58];
    v121 = v19;
    v37 = *(v19 + 104);
    v37(v22, v36, v18);
    sub_18E201DC8(v17, 1, 1, v23);
    sub_18E44E51C();
    v38 = *(v5 + 200);
    v39 = *(v5 + 208);
    v119 = v5;
    v40 = v38 == 0x636972656E6567 && v39 == 0xE700000000000000;
    if (v40 || (sub_18E44F3CC() & 1) != 0)
    {
      v41 = v130;

      v42 = v131;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v41 = v59;
    }

    v134 = v42;
    v135 = v41;
    v37(v22, *MEMORY[0x1E6968F70], v18);
    sub_18E24D39C();
    v60 = v136;
    sub_18E44E53C();
    (*(v121 + 8))(v22, v18);
    v61 = v60;

    v62 = v133;
    v63 = v128;
    v121 = v133[1];
    (v121)(v29, v128);
    v120 = sub_18E44E9AC();
    v64 = v62[2];
    v5 = v119;
  }

  else
  {
    v118 = v31;
    v43 = *(v5 + 112);
    v44 = *(v5 + 120);
    v45 = *(v5 + 128);
    v46 = *(a1 + 16);
    v121 = *(v5 + 96);
    if (v121)
    {

      v47 = v44;
      v48 = v45;
    }

    else
    {
      v47 = v44;
      v44 = 0xD000000000000016;
      v48 = 0x800000018E462F20;
    }

    v49 = v45;

    v50 = sub_18E248038(v44, v48, v46);

    if (!v50)
    {
      v136 = v45;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v51 = 0xD000000000000016;
      v52 = sub_18E44E83C();
      sub_18E1C95EC(v52, qword_1ED6A9870);
      sub_18E43E0C4(v5, &v134);
      sub_18E43E0C4(v5, &v134);
      v53 = sub_18E44E80C();
      v54 = sub_18E44EE0C();
      v55 = v47;
      if (os_log_type_enabled(v53, v54))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v134 = v57;
        *v56 = 136315394;
        v120 = v55;
        if (v121)
        {

          v58 = v136;

          v51 = v55;
        }

        else
        {
          v58 = 0x800000018E462F20;
        }

        sub_18E2CF378(v5);

        v106 = sub_18E1C9624(v51, v58, &v134);

        *(v56 + 4) = v106;
        *(v56 + 12) = 2080;
        v107 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v107 || (v108 = *(v5 + 200), v109 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
        {
          v110 = v130;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v131 = v111;
          v110 = v112;
        }

        v55 = v120;
        sub_18E2CF378(v5);
        v113 = sub_18E1C9624(v131, v110, &v134);

        *(v56 + 14) = v113;
        _os_log_impl(&dword_18E1C1000, v53, v54, "Failed to find token for asset set: %s for %s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v57, -1, -1);
        MEMORY[0x193ACD400](v56, -1, -1);
      }

      else
      {

        sub_18E2CF378(v5);
        sub_18E2CF378(v5);
      }

      v134 = 0;
      v135 = 0xE000000000000000;
      sub_18E44EFFC();

      v114 = v136;
      if (v121)
      {
      }

      else
      {
        v114 = 0x800000018E462F20;
        v55 = 0xD000000000000016;
      }

      v134 = v55;
      v135 = v114;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v115 = v134;
      v116 = v135;
      sub_18E3FDB10();
      swift_allocError();
      *v117 = v115;
      *(v117 + 8) = v116;
      *(v117 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v121)
    {
    }

    else
    {
      v47 = 0xD000000000000016;
      v49 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v71 = v50;

    v72 = sub_18E426E04();
    v73 = v71;
    v74 = v132;
    v75 = sub_18E424758(v47, v49, v72, v50);
    if (v74)
    {

      return;
    }

    v76 = *(v75 + 16);
    v77 = v118;
    sub_18E24852C();
    v79 = v78;

    v132 = 0;
    v119 = v133[2];
    v104 = v136;
    v63 = v128;
    v119(v136, v77, v128);
    v105 = [v79 metadata];
    v120 = sub_18E44E98C();

    v61 = v104;

    v121 = v133[1];
    (v121)(v77, v63);
    v64 = v119;
  }

  v65 = v122;
  v66 = v129;
  v119 = v64;
  v64(v129, v61, v63);
  v67 = v123;
  sub_18E249148(v66, v123, type metadata accessor for MotionAssetContents);
  v68 = v124;
  sub_18E249148(v67, v124, type metadata accessor for MotionAssetContents);

  v69 = v125;
  sub_18E4301F0(0, 0, 1, v68, v120, v65 | 0x8000000000000000, v125 & 1, v127);
  sub_18E2491F8(v67, type metadata accessor for MotionAssetContents);
  if (v69)
  {
    v70 = v132;
    sub_18E204B54();
    if (v70)
    {
      sub_18E1E8EEC(v127, &qword_1EABE1C50, &qword_18E4E3940);
      sub_18E2491F8(v66, type metadata accessor for MotionAssetContents);
      (v121)(v136, v63);
      return;
    }

    v132 = 0;
  }

  v80 = v136;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v81 = sub_18E44E83C();
  sub_18E1C95EC(v81, qword_1ED6A9870);
  v82 = v126;
  v119(v126, v80, v63);
  sub_18E43E0C4(v5, &v134);
  v83 = sub_18E44E80C();
  v84 = v63;
  v85 = sub_18E44EE2C();
  if (os_log_type_enabled(v83, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v134 = v87;
    *v86 = 136315394;
    v88 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v88 || (v89 = *(v5 + 200), v90 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
    {
      v91 = v130;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v131 = v93;
      v91 = v94;
    }

    sub_18E2CF378(v5);
    v95 = sub_18E1C9624(v131, v91, &v134);

    *(v86 + 4) = v95;
    *(v86 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0]);
    v96 = v126;
    v97 = v128;
    v98 = sub_18E44F39C();
    v100 = v99;
    v101 = v96;
    v102 = v121;
    (v121)(v101, v97);
    v103 = sub_18E1C9624(v98, v100, &v134);

    *(v86 + 14) = v103;
    _os_log_impl(&dword_18E1C1000, v83, v85, "fetchLockedAsset for %s successfully returning asset from URL: %s", v86, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v87, -1, -1);
    MEMORY[0x193ACD400](v86, -1, -1);

    sub_18E2491F8(v129, type metadata accessor for MotionAssetContents);
    v102(v136, v97);
  }

  else
  {
    sub_18E2CF378(v5);

    v92 = v121;
    (v121)(v82, v84);
    sub_18E2491F8(v66, type metadata accessor for MotionAssetContents);
    v92(v80, v84);
  }
}

void sub_18E40DBD0(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v125 = a2;
  v127 = a3;
  v7 = type metadata accessor for LLMAdapterAssetContents(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v124 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v123 = &v118 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v118 - v13;
  v14 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v118 - v16;
  v18 = sub_18E44E46C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_18E44E54C();
  v133 = *(v23 - 8);
  v24 = v133[8];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v118 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v136 = &v118 - v32;
  v131 = *(v5 + 32);
  v33 = *(v5 + 40);
  v34 = *(v5 + 56);
  v132 = v4;
  v130 = v33;
  v128 = v30;
  v126 = v35;
  v122 = a1;
  if (v34)
  {
    v36 = *MEMORY[0x1E6968F58];
    v121 = v19;
    v37 = *(v19 + 104);
    v37(v22, v36, v18);
    sub_18E201DC8(v17, 1, 1, v23);
    sub_18E44E51C();
    v38 = *(v5 + 200);
    v39 = *(v5 + 208);
    v119 = v5;
    v40 = v38 == 0x636972656E6567 && v39 == 0xE700000000000000;
    if (v40 || (sub_18E44F3CC() & 1) != 0)
    {
      v41 = v130;

      v42 = v131;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v41 = v59;
    }

    v134 = v42;
    v135 = v41;
    v37(v22, *MEMORY[0x1E6968F70], v18);
    sub_18E24D39C();
    v60 = v136;
    sub_18E44E53C();
    (*(v121 + 8))(v22, v18);
    v61 = v60;

    v62 = v133;
    v63 = v128;
    v121 = v133[1];
    (v121)(v29, v128);
    v120 = sub_18E44E9AC();
    v64 = v62[2];
    v5 = v119;
  }

  else
  {
    v118 = v31;
    v43 = *(v5 + 112);
    v44 = *(v5 + 120);
    v45 = *(v5 + 128);
    v46 = *(a1 + 16);
    v121 = *(v5 + 96);
    if (v121)
    {

      v47 = v44;
      v48 = v45;
    }

    else
    {
      v47 = v44;
      v44 = 0xD000000000000016;
      v48 = 0x800000018E462F20;
    }

    v49 = v45;

    v50 = sub_18E248038(v44, v48, v46);

    if (!v50)
    {
      v136 = v45;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v51 = 0xD000000000000016;
      v52 = sub_18E44E83C();
      sub_18E1C95EC(v52, qword_1ED6A9870);
      sub_18E43E658(v5, &v134);
      sub_18E43E658(v5, &v134);
      v53 = sub_18E44E80C();
      v54 = sub_18E44EE0C();
      v55 = v47;
      if (os_log_type_enabled(v53, v54))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v134 = v57;
        *v56 = 136315394;
        v120 = v55;
        if (v121)
        {

          v58 = v136;

          v51 = v55;
        }

        else
        {
          v58 = 0x800000018E462F20;
        }

        sub_18E2CF6D8(v5);

        v106 = sub_18E1C9624(v51, v58, &v134);

        *(v56 + 4) = v106;
        *(v56 + 12) = 2080;
        v107 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v107 || (v108 = *(v5 + 200), v109 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
        {
          v110 = v130;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v131 = v111;
          v110 = v112;
        }

        v55 = v120;
        sub_18E2CF6D8(v5);
        v113 = sub_18E1C9624(v131, v110, &v134);

        *(v56 + 14) = v113;
        _os_log_impl(&dword_18E1C1000, v53, v54, "Failed to find token for asset set: %s for %s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v57, -1, -1);
        MEMORY[0x193ACD400](v56, -1, -1);
      }

      else
      {

        sub_18E2CF6D8(v5);
        sub_18E2CF6D8(v5);
      }

      v134 = 0;
      v135 = 0xE000000000000000;
      sub_18E44EFFC();

      v114 = v136;
      if (v121)
      {
      }

      else
      {
        v114 = 0x800000018E462F20;
        v55 = 0xD000000000000016;
      }

      v134 = v55;
      v135 = v114;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v115 = v134;
      v116 = v135;
      sub_18E3FDB10();
      swift_allocError();
      *v117 = v115;
      *(v117 + 8) = v116;
      *(v117 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v121)
    {
    }

    else
    {
      v47 = 0xD000000000000016;
      v49 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v71 = v50;

    v72 = sub_18E427164();
    v73 = v71;
    v74 = v132;
    v75 = sub_18E424758(v47, v49, v72, v50);
    if (v74)
    {

      return;
    }

    v76 = *(v75 + 16);
    v77 = v118;
    sub_18E24852C();
    v79 = v78;

    v132 = 0;
    v119 = v133[2];
    v104 = v136;
    v63 = v128;
    v119(v136, v77, v128);
    v105 = [v79 metadata];
    v120 = sub_18E44E98C();

    v61 = v104;

    v121 = v133[1];
    (v121)(v77, v63);
    v64 = v119;
  }

  v65 = v122;
  v66 = v129;
  v119 = v64;
  v64(v129, v61, v63);
  v67 = v123;
  sub_18E249148(v66, v123, type metadata accessor for LLMAdapterAssetContents);
  v68 = v124;
  sub_18E249148(v67, v124, type metadata accessor for LLMAdapterAssetContents);

  v69 = v125;
  sub_18E430F4C(0, 0, 1, v68, v120, v65 | 0x8000000000000000, v125 & 1, v127);
  sub_18E2491F8(v67, type metadata accessor for LLMAdapterAssetContents);
  if (v69)
  {
    v70 = v132;
    sub_18E204B54();
    if (v70)
    {
      sub_18E1E8EEC(v127, &qword_1EABE1AC0, &qword_18E4A24B0);
      sub_18E2491F8(v66, type metadata accessor for LLMAdapterAssetContents);
      (v121)(v136, v63);
      return;
    }

    v132 = 0;
  }

  v80 = v136;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v81 = sub_18E44E83C();
  sub_18E1C95EC(v81, qword_1ED6A9870);
  v82 = v126;
  v119(v126, v80, v63);
  sub_18E43E658(v5, &v134);
  v83 = sub_18E44E80C();
  v84 = v63;
  v85 = sub_18E44EE2C();
  if (os_log_type_enabled(v83, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v134 = v87;
    *v86 = 136315394;
    v88 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v88 || (v89 = *(v5 + 200), v90 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
    {
      v91 = v130;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v131 = v93;
      v91 = v94;
    }

    sub_18E2CF6D8(v5);
    v95 = sub_18E1C9624(v131, v91, &v134);

    *(v86 + 4) = v95;
    *(v86 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0]);
    v96 = v126;
    v97 = v128;
    v98 = sub_18E44F39C();
    v100 = v99;
    v101 = v96;
    v102 = v121;
    (v121)(v101, v97);
    v103 = sub_18E1C9624(v98, v100, &v134);

    *(v86 + 14) = v103;
    _os_log_impl(&dword_18E1C1000, v83, v85, "fetchLockedAsset for %s successfully returning asset from URL: %s", v86, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v87, -1, -1);
    MEMORY[0x193ACD400](v86, -1, -1);

    sub_18E2491F8(v129, type metadata accessor for LLMAdapterAssetContents);
    v102(v136, v97);
  }

  else
  {
    sub_18E2CF6D8(v5);

    v92 = v121;
    (v121)(v82, v84);
    sub_18E2491F8(v66, type metadata accessor for LLMAdapterAssetContents);
    v92(v80, v84);
  }
}

void sub_18E40EB28(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v125 = a2;
  v127 = a3;
  v7 = type metadata accessor for ImageFilterAssetContents(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v124 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v123 = &v118 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v118 - v13;
  v14 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v118 - v16;
  v18 = sub_18E44E46C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_18E44E54C();
  v133 = *(v23 - 8);
  v24 = v133[8];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v118 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v136 = &v118 - v32;
  v131 = *(v5 + 32);
  v33 = *(v5 + 40);
  v34 = *(v5 + 56);
  v132 = v4;
  v130 = v33;
  v128 = v30;
  v126 = v35;
  v122 = a1;
  if (v34)
  {
    v36 = *MEMORY[0x1E6968F58];
    v121 = v19;
    v37 = *(v19 + 104);
    v37(v22, v36, v18);
    sub_18E201DC8(v17, 1, 1, v23);
    sub_18E44E51C();
    v38 = *(v5 + 200);
    v39 = *(v5 + 208);
    v119 = v5;
    v40 = v38 == 0x636972656E6567 && v39 == 0xE700000000000000;
    if (v40 || (sub_18E44F3CC() & 1) != 0)
    {
      v41 = v130;

      v42 = v131;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v41 = v59;
    }

    v134 = v42;
    v135 = v41;
    v37(v22, *MEMORY[0x1E6968F70], v18);
    sub_18E24D39C();
    v60 = v136;
    sub_18E44E53C();
    (*(v121 + 8))(v22, v18);
    v61 = v60;

    v62 = v133;
    v63 = v128;
    v121 = v133[1];
    (v121)(v29, v128);
    v120 = sub_18E44E9AC();
    v64 = v62[2];
    v5 = v119;
  }

  else
  {
    v118 = v31;
    v43 = *(v5 + 112);
    v44 = *(v5 + 120);
    v45 = *(v5 + 128);
    v46 = *(a1 + 16);
    v121 = *(v5 + 96);
    if (v121)
    {

      v47 = v44;
      v48 = v45;
    }

    else
    {
      v47 = v44;
      v44 = 0xD000000000000016;
      v48 = 0x800000018E462F20;
    }

    v49 = v45;

    v50 = sub_18E248038(v44, v48, v46);

    if (!v50)
    {
      v136 = v45;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v51 = 0xD000000000000016;
      v52 = sub_18E44E83C();
      sub_18E1C95EC(v52, qword_1ED6A9870);
      sub_18E43EA54(v5, &v134);
      sub_18E43EA54(v5, &v134);
      v53 = sub_18E44E80C();
      v54 = sub_18E44EE0C();
      v55 = v47;
      if (os_log_type_enabled(v53, v54))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v134 = v57;
        *v56 = 136315394;
        v120 = v55;
        if (v121)
        {

          v58 = v136;

          v51 = v55;
        }

        else
        {
          v58 = 0x800000018E462F20;
        }

        sub_18E2CF930(v5);

        v106 = sub_18E1C9624(v51, v58, &v134);

        *(v56 + 4) = v106;
        *(v56 + 12) = 2080;
        v107 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v107 || (v108 = *(v5 + 200), v109 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
        {
          v110 = v130;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v131 = v111;
          v110 = v112;
        }

        v55 = v120;
        sub_18E2CF930(v5);
        v113 = sub_18E1C9624(v131, v110, &v134);

        *(v56 + 14) = v113;
        _os_log_impl(&dword_18E1C1000, v53, v54, "Failed to find token for asset set: %s for %s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v57, -1, -1);
        MEMORY[0x193ACD400](v56, -1, -1);
      }

      else
      {

        sub_18E2CF930(v5);
        sub_18E2CF930(v5);
      }

      v134 = 0;
      v135 = 0xE000000000000000;
      sub_18E44EFFC();

      v114 = v136;
      if (v121)
      {
      }

      else
      {
        v114 = 0x800000018E462F20;
        v55 = 0xD000000000000016;
      }

      v134 = v55;
      v135 = v114;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v115 = v134;
      v116 = v135;
      sub_18E3FDB10();
      swift_allocError();
      *v117 = v115;
      *(v117 + 8) = v116;
      *(v117 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v121)
    {
    }

    else
    {
      v47 = 0xD000000000000016;
      v49 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v71 = v50;

    v72 = sub_18E4274C4();
    v73 = v71;
    v74 = v132;
    v75 = sub_18E424758(v47, v49, v72, v50);
    if (v74)
    {

      return;
    }

    v76 = *(v75 + 16);
    v77 = v118;
    sub_18E24852C();
    v79 = v78;

    v132 = 0;
    v119 = v133[2];
    v104 = v136;
    v63 = v128;
    v119(v136, v77, v128);
    v105 = [v79 metadata];
    v120 = sub_18E44E98C();

    v61 = v104;

    v121 = v133[1];
    (v121)(v77, v63);
    v64 = v119;
  }

  v65 = v122;
  v66 = v129;
  v119 = v64;
  v64(v129, v61, v63);
  v67 = v123;
  sub_18E249148(v66, v123, type metadata accessor for ImageFilterAssetContents);
  v68 = v124;
  sub_18E249148(v67, v124, type metadata accessor for ImageFilterAssetContents);

  v69 = v125;
  sub_18E4313C0(0, 0, 1, v68, v120, v65 | 0x8000000000000000, v125 & 1, v127);
  sub_18E2491F8(v67, type metadata accessor for ImageFilterAssetContents);
  if (v69)
  {
    v70 = v132;
    sub_18E204B54();
    if (v70)
    {
      sub_18E1E8EEC(v127, &qword_1EABE1A28, &qword_18E4A1160);
      sub_18E2491F8(v66, type metadata accessor for ImageFilterAssetContents);
      (v121)(v136, v63);
      return;
    }

    v132 = 0;
  }

  v80 = v136;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v81 = sub_18E44E83C();
  sub_18E1C95EC(v81, qword_1ED6A9870);
  v82 = v126;
  v119(v126, v80, v63);
  sub_18E43EA54(v5, &v134);
  v83 = sub_18E44E80C();
  v84 = v63;
  v85 = sub_18E44EE2C();
  if (os_log_type_enabled(v83, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v134 = v87;
    *v86 = 136315394;
    v88 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v88 || (v89 = *(v5 + 200), v90 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
    {
      v91 = v130;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v131 = v93;
      v91 = v94;
    }

    sub_18E2CF930(v5);
    v95 = sub_18E1C9624(v131, v91, &v134);

    *(v86 + 4) = v95;
    *(v86 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0]);
    v96 = v126;
    v97 = v128;
    v98 = sub_18E44F39C();
    v100 = v99;
    v101 = v96;
    v102 = v121;
    (v121)(v101, v97);
    v103 = sub_18E1C9624(v98, v100, &v134);

    *(v86 + 14) = v103;
    _os_log_impl(&dword_18E1C1000, v83, v85, "fetchLockedAsset for %s successfully returning asset from URL: %s", v86, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v87, -1, -1);
    MEMORY[0x193ACD400](v86, -1, -1);

    sub_18E2491F8(v129, type metadata accessor for ImageFilterAssetContents);
    v102(v136, v97);
  }

  else
  {
    sub_18E2CF930(v5);

    v92 = v121;
    (v121)(v82, v84);
    sub_18E2491F8(v66, type metadata accessor for ImageFilterAssetContents);
    v92(v80, v84);
  }
}

void sub_18E40FA80(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v125 = a2;
  v127 = a3;
  v7 = type metadata accessor for ImageScalerAssetContents(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v124 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v123 = &v118 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v118 - v13;
  v14 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v118 - v16;
  v18 = sub_18E44E46C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_18E44E54C();
  v133 = *(v23 - 8);
  v24 = v133[8];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v118 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v136 = &v118 - v32;
  v131 = *(v5 + 32);
  v33 = *(v5 + 40);
  v34 = *(v5 + 56);
  v132 = v4;
  v130 = v33;
  v128 = v30;
  v126 = v35;
  v122 = a1;
  if (v34)
  {
    v36 = *MEMORY[0x1E6968F58];
    v121 = v19;
    v37 = *(v19 + 104);
    v37(v22, v36, v18);
    sub_18E201DC8(v17, 1, 1, v23);
    sub_18E44E51C();
    v38 = *(v5 + 200);
    v39 = *(v5 + 208);
    v119 = v5;
    v40 = v38 == 0x636972656E6567 && v39 == 0xE700000000000000;
    if (v40 || (sub_18E44F3CC() & 1) != 0)
    {
      v41 = v130;

      v42 = v131;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v41 = v59;
    }

    v134 = v42;
    v135 = v41;
    v37(v22, *MEMORY[0x1E6968F70], v18);
    sub_18E24D39C();
    v60 = v136;
    sub_18E44E53C();
    (*(v121 + 8))(v22, v18);
    v61 = v60;

    v62 = v133;
    v63 = v128;
    v121 = v133[1];
    (v121)(v29, v128);
    v120 = sub_18E44E9AC();
    v64 = v62[2];
    v5 = v119;
  }

  else
  {
    v118 = v31;
    v43 = *(v5 + 112);
    v44 = *(v5 + 120);
    v45 = *(v5 + 128);
    v46 = *(a1 + 16);
    v121 = *(v5 + 96);
    if (v121)
    {

      v47 = v44;
      v48 = v45;
    }

    else
    {
      v47 = v44;
      v44 = 0xD000000000000016;
      v48 = 0x800000018E462F20;
    }

    v49 = v45;

    v50 = sub_18E248038(v44, v48, v46);

    if (!v50)
    {
      v136 = v45;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v51 = 0xD000000000000016;
      v52 = sub_18E44E83C();
      sub_18E1C95EC(v52, qword_1ED6A9870);
      sub_18E43E8BC(v5, &v134);
      sub_18E43E8BC(v5, &v134);
      v53 = sub_18E44E80C();
      v54 = sub_18E44EE0C();
      v55 = v47;
      if (os_log_type_enabled(v53, v54))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v134 = v57;
        *v56 = 136315394;
        v120 = v55;
        if (v121)
        {

          v58 = v136;

          v51 = v55;
        }

        else
        {
          v58 = 0x800000018E462F20;
        }

        sub_18E2CF870(v5);

        v106 = sub_18E1C9624(v51, v58, &v134);

        *(v56 + 4) = v106;
        *(v56 + 12) = 2080;
        v107 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v107 || (v108 = *(v5 + 200), v109 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
        {
          v110 = v130;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v131 = v111;
          v110 = v112;
        }

        v55 = v120;
        sub_18E2CF870(v5);
        v113 = sub_18E1C9624(v131, v110, &v134);

        *(v56 + 14) = v113;
        _os_log_impl(&dword_18E1C1000, v53, v54, "Failed to find token for asset set: %s for %s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v57, -1, -1);
        MEMORY[0x193ACD400](v56, -1, -1);
      }

      else
      {

        sub_18E2CF870(v5);
        sub_18E2CF870(v5);
      }

      v134 = 0;
      v135 = 0xE000000000000000;
      sub_18E44EFFC();

      v114 = v136;
      if (v121)
      {
      }

      else
      {
        v114 = 0x800000018E462F20;
        v55 = 0xD000000000000016;
      }

      v134 = v55;
      v135 = v114;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v115 = v134;
      v116 = v135;
      sub_18E3FDB10();
      swift_allocError();
      *v117 = v115;
      *(v117 + 8) = v116;
      *(v117 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v121)
    {
    }

    else
    {
      v47 = 0xD000000000000016;
      v49 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v71 = v50;

    v72 = sub_18E427824();
    v73 = v71;
    v74 = v132;
    v75 = sub_18E424758(v47, v49, v72, v50);
    if (v74)
    {

      return;
    }

    v76 = *(v75 + 16);
    v77 = v118;
    sub_18E24852C();
    v79 = v78;

    v132 = 0;
    v119 = v133[2];
    v104 = v136;
    v63 = v128;
    v119(v136, v77, v128);
    v105 = [v79 metadata];
    v120 = sub_18E44E98C();

    v61 = v104;

    v121 = v133[1];
    (v121)(v77, v63);
    v64 = v119;
  }

  v65 = v122;
  v66 = v129;
  v119 = v64;
  v64(v129, v61, v63);
  v67 = v123;
  sub_18E249148(v66, v123, type metadata accessor for ImageScalerAssetContents);
  v68 = v124;
  sub_18E249148(v67, v124, type metadata accessor for ImageScalerAssetContents);

  v69 = v125;
  sub_18E431834(0, 0, 1, v68, v120, v65 | 0x8000000000000000, v125 & 1, v127);
  sub_18E2491F8(v67, type metadata accessor for ImageScalerAssetContents);
  if (v69)
  {
    v70 = v132;
    sub_18E204B54();
    if (v70)
    {
      sub_18E1E8EEC(v127, &qword_1EABE1A98, &qword_18E4A17F0);
      sub_18E2491F8(v66, type metadata accessor for ImageScalerAssetContents);
      (v121)(v136, v63);
      return;
    }

    v132 = 0;
  }

  v80 = v136;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v81 = sub_18E44E83C();
  sub_18E1C95EC(v81, qword_1ED6A9870);
  v82 = v126;
  v119(v126, v80, v63);
  sub_18E43E8BC(v5, &v134);
  v83 = sub_18E44E80C();
  v84 = v63;
  v85 = sub_18E44EE2C();
  if (os_log_type_enabled(v83, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v134 = v87;
    *v86 = 136315394;
    v88 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v88 || (v89 = *(v5 + 200), v90 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
    {
      v91 = v130;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v131 = v93;
      v91 = v94;
    }

    sub_18E2CF870(v5);
    v95 = sub_18E1C9624(v131, v91, &v134);

    *(v86 + 4) = v95;
    *(v86 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0]);
    v96 = v126;
    v97 = v128;
    v98 = sub_18E44F39C();
    v100 = v99;
    v101 = v96;
    v102 = v121;
    (v121)(v101, v97);
    v103 = sub_18E1C9624(v98, v100, &v134);

    *(v86 + 14) = v103;
    _os_log_impl(&dword_18E1C1000, v83, v85, "fetchLockedAsset for %s successfully returning asset from URL: %s", v86, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v87, -1, -1);
    MEMORY[0x193ACD400](v86, -1, -1);

    sub_18E2491F8(v129, type metadata accessor for ImageScalerAssetContents);
    v102(v136, v97);
  }

  else
  {
    sub_18E2CF870(v5);

    v92 = v121;
    (v121)(v82, v84);
    sub_18E2491F8(v66, type metadata accessor for ImageScalerAssetContents);
    v92(v80, v84);
  }
}

void sub_18E4109D8(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v125 = a2;
  v127 = a3;
  v7 = type metadata accessor for MotionAdapterAssetContents(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v124 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v123 = &v118 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v118 - v13;
  v14 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v118 - v16;
  v18 = sub_18E44E46C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_18E44E54C();
  v133 = *(v23 - 8);
  v24 = v133[8];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v118 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v136 = &v118 - v32;
  v131 = *(v5 + 32);
  v33 = *(v5 + 40);
  v34 = *(v5 + 56);
  v132 = v4;
  v130 = v33;
  v128 = v30;
  v126 = v35;
  v122 = a1;
  if (v34)
  {
    v36 = *MEMORY[0x1E6968F58];
    v121 = v19;
    v37 = *(v19 + 104);
    v37(v22, v36, v18);
    sub_18E201DC8(v17, 1, 1, v23);
    sub_18E44E51C();
    v38 = *(v5 + 200);
    v39 = *(v5 + 208);
    v119 = v5;
    v40 = v38 == 0x636972656E6567 && v39 == 0xE700000000000000;
    if (v40 || (sub_18E44F3CC() & 1) != 0)
    {
      v41 = v130;

      v42 = v131;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v41 = v59;
    }

    v134 = v42;
    v135 = v41;
    v37(v22, *MEMORY[0x1E6968F70], v18);
    sub_18E24D39C();
    v60 = v136;
    sub_18E44E53C();
    (*(v121 + 8))(v22, v18);
    v61 = v60;

    v62 = v133;
    v63 = v128;
    v121 = v133[1];
    (v121)(v29, v128);
    v120 = sub_18E44E9AC();
    v64 = v62[2];
    v5 = v119;
  }

  else
  {
    v118 = v31;
    v43 = *(v5 + 112);
    v44 = *(v5 + 120);
    v45 = *(v5 + 128);
    v46 = *(a1 + 16);
    v121 = *(v5 + 96);
    if (v121)
    {

      v47 = v44;
      v48 = v45;
    }

    else
    {
      v47 = v44;
      v44 = 0xD000000000000016;
      v48 = 0x800000018E462F20;
    }

    v49 = v45;

    v50 = sub_18E248038(v44, v48, v46);

    if (!v50)
    {
      v136 = v45;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v51 = 0xD000000000000016;
      v52 = sub_18E44E83C();
      sub_18E1C95EC(v52, qword_1ED6A9870);
      sub_18E43E190(v5, &v134);
      sub_18E43E190(v5, &v134);
      v53 = sub_18E44E80C();
      v54 = sub_18E44EE0C();
      v55 = v47;
      if (os_log_type_enabled(v53, v54))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v134 = v57;
        *v56 = 136315394;
        v120 = v55;
        if (v121)
        {

          v58 = v136;

          v51 = v55;
        }

        else
        {
          v58 = 0x800000018E462F20;
        }

        sub_18E2CF3D8(v5);

        v106 = sub_18E1C9624(v51, v58, &v134);

        *(v56 + 4) = v106;
        *(v56 + 12) = 2080;
        v107 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v107 || (v108 = *(v5 + 200), v109 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
        {
          v110 = v130;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v131 = v111;
          v110 = v112;
        }

        v55 = v120;
        sub_18E2CF3D8(v5);
        v113 = sub_18E1C9624(v131, v110, &v134);

        *(v56 + 14) = v113;
        _os_log_impl(&dword_18E1C1000, v53, v54, "Failed to find token for asset set: %s for %s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v57, -1, -1);
        MEMORY[0x193ACD400](v56, -1, -1);
      }

      else
      {

        sub_18E2CF3D8(v5);
        sub_18E2CF3D8(v5);
      }

      v134 = 0;
      v135 = 0xE000000000000000;
      sub_18E44EFFC();

      v114 = v136;
      if (v121)
      {
      }

      else
      {
        v114 = 0x800000018E462F20;
        v55 = 0xD000000000000016;
      }

      v134 = v55;
      v135 = v114;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v115 = v134;
      v116 = v135;
      sub_18E3FDB10();
      swift_allocError();
      *v117 = v115;
      *(v117 + 8) = v116;
      *(v117 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v121)
    {
    }

    else
    {
      v47 = 0xD000000000000016;
      v49 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v71 = v50;

    v72 = sub_18E427B84();
    v73 = v71;
    v74 = v132;
    v75 = sub_18E424758(v47, v49, v72, v50);
    if (v74)
    {

      return;
    }

    v76 = *(v75 + 16);
    v77 = v118;
    sub_18E24852C();
    v79 = v78;

    v132 = 0;
    v119 = v133[2];
    v104 = v136;
    v63 = v128;
    v119(v136, v77, v128);
    v105 = [v79 metadata];
    v120 = sub_18E44E98C();

    v61 = v104;

    v121 = v133[1];
    (v121)(v77, v63);
    v64 = v119;
  }

  v65 = v122;
  v66 = v129;
  v119 = v64;
  v64(v129, v61, v63);
  v67 = v123;
  sub_18E249148(v66, v123, type metadata accessor for MotionAdapterAssetContents);
  v68 = v124;
  sub_18E249148(v67, v124, type metadata accessor for MotionAdapterAssetContents);

  v69 = v125;
  sub_18E431CA8(0, 0, 1, v68, v120, v65 | 0x8000000000000000, v125 & 1, v127);
  sub_18E2491F8(v67, type metadata accessor for MotionAdapterAssetContents);
  if (v69)
  {
    v70 = v132;
    sub_18E204B54();
    if (v70)
    {
      sub_18E1E8EEC(v127, &qword_1EABE1C30, &qword_18E4E3950);
      sub_18E2491F8(v66, type metadata accessor for MotionAdapterAssetContents);
      (v121)(v136, v63);
      return;
    }

    v132 = 0;
  }

  v80 = v136;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v81 = sub_18E44E83C();
  sub_18E1C95EC(v81, qword_1ED6A9870);
  v82 = v126;
  v119(v126, v80, v63);
  sub_18E43E190(v5, &v134);
  v83 = sub_18E44E80C();
  v84 = v63;
  v85 = sub_18E44EE2C();
  if (os_log_type_enabled(v83, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v134 = v87;
    *v86 = 136315394;
    v88 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v88 || (v89 = *(v5 + 200), v90 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
    {
      v91 = v130;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v131 = v93;
      v91 = v94;
    }

    sub_18E2CF3D8(v5);
    v95 = sub_18E1C9624(v131, v91, &v134);

    *(v86 + 4) = v95;
    *(v86 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0]);
    v96 = v126;
    v97 = v128;
    v98 = sub_18E44F39C();
    v100 = v99;
    v101 = v96;
    v102 = v121;
    (v121)(v101, v97);
    v103 = sub_18E1C9624(v98, v100, &v134);

    *(v86 + 14) = v103;
    _os_log_impl(&dword_18E1C1000, v83, v85, "fetchLockedAsset for %s successfully returning asset from URL: %s", v86, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v87, -1, -1);
    MEMORY[0x193ACD400](v86, -1, -1);

    sub_18E2491F8(v129, type metadata accessor for MotionAdapterAssetContents);
    v102(v136, v97);
  }

  else
  {
    sub_18E2CF3D8(v5);

    v92 = v121;
    (v121)(v82, v84);
    sub_18E2491F8(v66, type metadata accessor for MotionAdapterAssetContents);
    v92(v80, v84);
  }
}

void sub_18E411930(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v125 = a2;
  v127 = a3;
  v7 = type metadata accessor for ImageTokenizerAssetContents(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v124 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v123 = &v118 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v118 - v13;
  v14 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v118 - v16;
  v18 = sub_18E44E46C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_18E44E54C();
  v133 = *(v23 - 8);
  v24 = v133[8];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v118 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v136 = &v118 - v32;
  v131 = *(v5 + 32);
  v33 = *(v5 + 40);
  v34 = *(v5 + 56);
  v132 = v4;
  v130 = v33;
  v128 = v30;
  v126 = v35;
  v122 = a1;
  if (v34)
  {
    v36 = *MEMORY[0x1E6968F58];
    v121 = v19;
    v37 = *(v19 + 104);
    v37(v22, v36, v18);
    sub_18E201DC8(v17, 1, 1, v23);
    sub_18E44E51C();
    v38 = *(v5 + 200);
    v39 = *(v5 + 208);
    v119 = v5;
    v40 = v38 == 0x636972656E6567 && v39 == 0xE700000000000000;
    if (v40 || (sub_18E44F3CC() & 1) != 0)
    {
      v41 = v130;

      v42 = v131;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v41 = v59;
    }

    v134 = v42;
    v135 = v41;
    v37(v22, *MEMORY[0x1E6968F70], v18);
    sub_18E24D39C();
    v60 = v136;
    sub_18E44E53C();
    (*(v121 + 8))(v22, v18);
    v61 = v60;

    v62 = v133;
    v63 = v128;
    v121 = v133[1];
    (v121)(v29, v128);
    v120 = sub_18E44E9AC();
    v64 = v62[2];
    v5 = v119;
  }

  else
  {
    v118 = v31;
    v43 = *(v5 + 112);
    v44 = *(v5 + 120);
    v45 = *(v5 + 128);
    v46 = *(a1 + 16);
    v121 = *(v5 + 96);
    if (v121)
    {

      v47 = v44;
      v48 = v45;
    }

    else
    {
      v47 = v44;
      v44 = 0xD000000000000016;
      v48 = 0x800000018E462F20;
    }

    v49 = v45;

    v50 = sub_18E248038(v44, v48, v46);

    if (!v50)
    {
      v136 = v45;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v51 = 0xD000000000000016;
      v52 = sub_18E44E83C();
      sub_18E1C95EC(v52, qword_1ED6A9870);
      sub_18E43E724(v5, &v134);
      sub_18E43E724(v5, &v134);
      v53 = sub_18E44E80C();
      v54 = sub_18E44EE0C();
      v55 = v47;
      if (os_log_type_enabled(v53, v54))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v134 = v57;
        *v56 = 136315394;
        v120 = v55;
        if (v121)
        {

          v58 = v136;

          v51 = v55;
        }

        else
        {
          v58 = 0x800000018E462F20;
        }

        sub_18E2CF7B0(v5);

        v106 = sub_18E1C9624(v51, v58, &v134);

        *(v56 + 4) = v106;
        *(v56 + 12) = 2080;
        v107 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v107 || (v108 = *(v5 + 200), v109 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
        {
          v110 = v130;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v131 = v111;
          v110 = v112;
        }

        v55 = v120;
        sub_18E2CF7B0(v5);
        v113 = sub_18E1C9624(v131, v110, &v134);

        *(v56 + 14) = v113;
        _os_log_impl(&dword_18E1C1000, v53, v54, "Failed to find token for asset set: %s for %s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v57, -1, -1);
        MEMORY[0x193ACD400](v56, -1, -1);
      }

      else
      {

        sub_18E2CF7B0(v5);
        sub_18E2CF7B0(v5);
      }

      v134 = 0;
      v135 = 0xE000000000000000;
      sub_18E44EFFC();

      v114 = v136;
      if (v121)
      {
      }

      else
      {
        v114 = 0x800000018E462F20;
        v55 = 0xD000000000000016;
      }

      v134 = v55;
      v135 = v114;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v115 = v134;
      v116 = v135;
      sub_18E3FDB10();
      swift_allocError();
      *v117 = v115;
      *(v117 + 8) = v116;
      *(v117 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v121)
    {
    }

    else
    {
      v47 = 0xD000000000000016;
      v49 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v71 = v50;

    v72 = sub_18E427EE4();
    v73 = v71;
    v74 = v132;
    v75 = sub_18E424758(v47, v49, v72, v50);
    if (v74)
    {

      return;
    }

    v76 = *(v75 + 16);
    v77 = v118;
    sub_18E24852C();
    v79 = v78;

    v132 = 0;
    v119 = v133[2];
    v104 = v136;
    v63 = v128;
    v119(v136, v77, v128);
    v105 = [v79 metadata];
    v120 = sub_18E44E98C();

    v61 = v104;

    v121 = v133[1];
    (v121)(v77, v63);
    v64 = v119;
  }

  v65 = v122;
  v66 = v129;
  v119 = v64;
  v64(v129, v61, v63);
  v67 = v123;
  sub_18E249148(v66, v123, type metadata accessor for ImageTokenizerAssetContents);
  v68 = v124;
  sub_18E249148(v67, v124, type metadata accessor for ImageTokenizerAssetContents);

  v69 = v125;
  sub_18E43211C(0, 0, 1, v68, v120, v65 | 0x8000000000000000, v125 & 1, v127);
  sub_18E2491F8(v67, type metadata accessor for ImageTokenizerAssetContents);
  if (v69)
  {
    v70 = v132;
    sub_18E204B54();
    if (v70)
    {
      sub_18E1E8EEC(v127, &qword_1EABE1AA8, &qword_18E4A1ED0);
      sub_18E2491F8(v66, type metadata accessor for ImageTokenizerAssetContents);
      (v121)(v136, v63);
      return;
    }

    v132 = 0;
  }

  v80 = v136;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v81 = sub_18E44E83C();
  sub_18E1C95EC(v81, qword_1ED6A9870);
  v82 = v126;
  v119(v126, v80, v63);
  sub_18E43E724(v5, &v134);
  v83 = sub_18E44E80C();
  v84 = v63;
  v85 = sub_18E44EE2C();
  if (os_log_type_enabled(v83, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v134 = v87;
    *v86 = 136315394;
    v88 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v88 || (v89 = *(v5 + 200), v90 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
    {
      v91 = v130;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v131 = v93;
      v91 = v94;
    }

    sub_18E2CF7B0(v5);
    v95 = sub_18E1C9624(v131, v91, &v134);

    *(v86 + 4) = v95;
    *(v86 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0]);
    v96 = v126;
    v97 = v128;
    v98 = sub_18E44F39C();
    v100 = v99;
    v101 = v96;
    v102 = v121;
    (v121)(v101, v97);
    v103 = sub_18E1C9624(v98, v100, &v134);

    *(v86 + 14) = v103;
    _os_log_impl(&dword_18E1C1000, v83, v85, "fetchLockedAsset for %s successfully returning asset from URL: %s", v86, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v87, -1, -1);
    MEMORY[0x193ACD400](v86, -1, -1);

    sub_18E2491F8(v129, type metadata accessor for ImageTokenizerAssetContents);
    v102(v136, v97);
  }

  else
  {
    sub_18E2CF7B0(v5);

    v92 = v121;
    (v121)(v82, v84);
    sub_18E2491F8(v66, type metadata accessor for ImageTokenizerAssetContents);
    v92(v80, v84);
  }
}

void sub_18E412888(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v125 = a2;
  v127 = a3;
  v7 = type metadata accessor for PromptAllowListAssetContents(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v124 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v123 = &v118 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v118 - v13;
  v14 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v118 - v16;
  v18 = sub_18E44E46C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_18E44E54C();
  v133 = *(v23 - 8);
  v24 = v133[8];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v118 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v136 = &v118 - v32;
  v131 = *(v5 + 32);
  v33 = *(v5 + 40);
  v34 = *(v5 + 56);
  v132 = v4;
  v130 = v33;
  v128 = v30;
  v126 = v35;
  v122 = a1;
  if (v34)
  {
    v36 = *MEMORY[0x1E6968F58];
    v121 = v19;
    v37 = *(v19 + 104);
    v37(v22, v36, v18);
    sub_18E201DC8(v17, 1, 1, v23);
    sub_18E44E51C();
    v38 = *(v5 + 200);
    v39 = *(v5 + 208);
    v119 = v5;
    v40 = v38 == 0x636972656E6567 && v39 == 0xE700000000000000;
    if (v40 || (sub_18E44F3CC() & 1) != 0)
    {
      v41 = v130;

      v42 = v131;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v41 = v59;
    }

    v134 = v42;
    v135 = v41;
    v37(v22, *MEMORY[0x1E6968F70], v18);
    sub_18E24D39C();
    v60 = v136;
    sub_18E44E53C();
    (*(v121 + 8))(v22, v18);
    v61 = v60;

    v62 = v133;
    v63 = v128;
    v121 = v133[1];
    (v121)(v29, v128);
    v120 = sub_18E44E9AC();
    v64 = v62[2];
    v5 = v119;
  }

  else
  {
    v118 = v31;
    v43 = *(v5 + 112);
    v44 = *(v5 + 120);
    v45 = *(v5 + 128);
    v46 = *(a1 + 16);
    v121 = *(v5 + 96);
    if (v121)
    {

      v47 = v44;
      v48 = v45;
    }

    else
    {
      v47 = v44;
      v44 = 0xD000000000000016;
      v48 = 0x800000018E462F20;
    }

    v49 = v45;

    v50 = sub_18E248038(v44, v48, v46);

    if (!v50)
    {
      v136 = v45;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v51 = 0xD000000000000016;
      v52 = sub_18E44E83C();
      sub_18E1C95EC(v52, qword_1ED6A9870);
      sub_18E43DFF8(v5, &v134);
      sub_18E43DFF8(v5, &v134);
      v53 = sub_18E44E80C();
      v54 = sub_18E44EE0C();
      v55 = v47;
      if (os_log_type_enabled(v53, v54))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v134 = v57;
        *v56 = 136315394;
        v120 = v55;
        if (v121)
        {

          v58 = v136;

          v51 = v55;
        }

        else
        {
          v58 = 0x800000018E462F20;
        }

        sub_18E2CF318(v5);

        v106 = sub_18E1C9624(v51, v58, &v134);

        *(v56 + 4) = v106;
        *(v56 + 12) = 2080;
        v107 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v107 || (v108 = *(v5 + 200), v109 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
        {
          v110 = v130;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v131 = v111;
          v110 = v112;
        }

        v55 = v120;
        sub_18E2CF318(v5);
        v113 = sub_18E1C9624(v131, v110, &v134);

        *(v56 + 14) = v113;
        _os_log_impl(&dword_18E1C1000, v53, v54, "Failed to find token for asset set: %s for %s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v57, -1, -1);
        MEMORY[0x193ACD400](v56, -1, -1);
      }

      else
      {

        sub_18E2CF318(v5);
        sub_18E2CF318(v5);
      }

      v134 = 0;
      v135 = 0xE000000000000000;
      sub_18E44EFFC();

      v114 = v136;
      if (v121)
      {
      }

      else
      {
        v114 = 0x800000018E462F20;
        v55 = 0xD000000000000016;
      }

      v134 = v55;
      v135 = v114;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v115 = v134;
      v116 = v135;
      sub_18E3FDB10();
      swift_allocError();
      *v117 = v115;
      *(v117 + 8) = v116;
      *(v117 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v121)
    {
    }

    else
    {
      v47 = 0xD000000000000016;
      v49 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v71 = v50;

    v72 = sub_18E428244();
    v73 = v71;
    v74 = v132;
    v75 = sub_18E424758(v47, v49, v72, v50);
    if (v74)
    {

      return;
    }

    v76 = *(v75 + 16);
    v77 = v118;
    sub_18E24852C();
    v79 = v78;

    v132 = 0;
    v119 = v133[2];
    v104 = v136;
    v63 = v128;
    v119(v136, v77, v128);
    v105 = [v79 metadata];
    v120 = sub_18E44E98C();

    v61 = v104;

    v121 = v133[1];
    (v121)(v77, v63);
    v64 = v119;
  }

  v65 = v122;
  v66 = v129;
  v119 = v64;
  v64(v129, v61, v63);
  v67 = v123;
  sub_18E249148(v66, v123, type metadata accessor for PromptAllowListAssetContents);
  v68 = v124;
  sub_18E249148(v67, v124, type metadata accessor for PromptAllowListAssetContents);

  v69 = v125;
  sub_18E432590(0, 0, 1, v68, v120, v65 | 0x8000000000000000, v125 & 1, v127);
  sub_18E2491F8(v67, type metadata accessor for PromptAllowListAssetContents);
  if (v69)
  {
    v70 = v132;
    sub_18E204B54();
    if (v70)
    {
      sub_18E1E8EEC(v127, &qword_1EABE1CA8, &qword_18E4E3930);
      sub_18E2491F8(v66, type metadata accessor for PromptAllowListAssetContents);
      (v121)(v136, v63);
      return;
    }

    v132 = 0;
  }

  v80 = v136;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v81 = sub_18E44E83C();
  sub_18E1C95EC(v81, qword_1ED6A9870);
  v82 = v126;
  v119(v126, v80, v63);
  sub_18E43DFF8(v5, &v134);
  v83 = sub_18E44E80C();
  v84 = v63;
  v85 = sub_18E44EE2C();
  if (os_log_type_enabled(v83, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v134 = v87;
    *v86 = 136315394;
    v88 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v88 || (v89 = *(v5 + 200), v90 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
    {
      v91 = v130;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v131 = v93;
      v91 = v94;
    }

    sub_18E2CF318(v5);
    v95 = sub_18E1C9624(v131, v91, &v134);

    *(v86 + 4) = v95;
    *(v86 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0]);
    v96 = v126;
    v97 = v128;
    v98 = sub_18E44F39C();
    v100 = v99;
    v101 = v96;
    v102 = v121;
    (v121)(v101, v97);
    v103 = sub_18E1C9624(v98, v100, &v134);

    *(v86 + 14) = v103;
    _os_log_impl(&dword_18E1C1000, v83, v85, "fetchLockedAsset for %s successfully returning asset from URL: %s", v86, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v87, -1, -1);
    MEMORY[0x193ACD400](v86, -1, -1);

    sub_18E2491F8(v129, type metadata accessor for PromptAllowListAssetContents);
    v102(v136, v97);
  }

  else
  {
    sub_18E2CF318(v5);

    v92 = v121;
    (v121)(v82, v84);
    sub_18E2491F8(v66, type metadata accessor for PromptAllowListAssetContents);
    v92(v80, v84);
  }
}

void sub_18E4137E0(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v125 = a2;
  v127 = a3;
  v7 = type metadata accessor for SecureAnalyticsAssetContents(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v124 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v123 = &v118 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v118 - v13;
  v14 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v118 - v16;
  v18 = sub_18E44E46C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_18E44E54C();
  v133 = *(v23 - 8);
  v24 = v133[8];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v118 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v136 = &v118 - v32;
  v131 = *(v5 + 32);
  v33 = *(v5 + 40);
  v34 = *(v5 + 56);
  v132 = v4;
  v130 = v33;
  v128 = v30;
  v126 = v35;
  v122 = a1;
  if (v34)
  {
    v36 = *MEMORY[0x1E6968F58];
    v121 = v19;
    v37 = *(v19 + 104);
    v37(v22, v36, v18);
    sub_18E201DC8(v17, 1, 1, v23);
    sub_18E44E51C();
    v38 = *(v5 + 200);
    v39 = *(v5 + 208);
    v119 = v5;
    v40 = v38 == 0x636972656E6567 && v39 == 0xE700000000000000;
    if (v40 || (sub_18E44F3CC() & 1) != 0)
    {
      v41 = v130;

      v42 = v131;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v41 = v59;
    }

    v134 = v42;
    v135 = v41;
    v37(v22, *MEMORY[0x1E6968F70], v18);
    sub_18E24D39C();
    v60 = v136;
    sub_18E44E53C();
    (*(v121 + 8))(v22, v18);
    v61 = v60;

    v62 = v133;
    v63 = v128;
    v121 = v133[1];
    (v121)(v29, v128);
    v120 = sub_18E44E9AC();
    v64 = v62[2];
    v5 = v119;
  }

  else
  {
    v118 = v31;
    v43 = *(v5 + 112);
    v44 = *(v5 + 120);
    v45 = *(v5 + 128);
    v46 = *(a1 + 16);
    v121 = *(v5 + 96);
    if (v121)
    {

      v47 = v44;
      v48 = v45;
    }

    else
    {
      v47 = v44;
      v44 = 0xD000000000000016;
      v48 = 0x800000018E462F20;
    }

    v49 = v45;

    v50 = sub_18E248038(v44, v48, v46);

    if (!v50)
    {
      v136 = v45;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v51 = 0xD000000000000016;
      v52 = sub_18E44E83C();
      sub_18E1C95EC(v52, qword_1ED6A9870);
      sub_18E43DF2C(v5, &v134);
      sub_18E43DF2C(v5, &v134);
      v53 = sub_18E44E80C();
      v54 = sub_18E44EE0C();
      v55 = v47;
      if (os_log_type_enabled(v53, v54))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v134 = v57;
        *v56 = 136315394;
        v120 = v55;
        if (v121)
        {

          v58 = v136;

          v51 = v55;
        }

        else
        {
          v58 = 0x800000018E462F20;
        }

        sub_18E2CF2B8(v5);

        v106 = sub_18E1C9624(v51, v58, &v134);

        *(v56 + 4) = v106;
        *(v56 + 12) = 2080;
        v107 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v107 || (v108 = *(v5 + 200), v109 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
        {
          v110 = v130;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v131 = v111;
          v110 = v112;
        }

        v55 = v120;
        sub_18E2CF2B8(v5);
        v113 = sub_18E1C9624(v131, v110, &v134);

        *(v56 + 14) = v113;
        _os_log_impl(&dword_18E1C1000, v53, v54, "Failed to find token for asset set: %s for %s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v57, -1, -1);
        MEMORY[0x193ACD400](v56, -1, -1);
      }

      else
      {

        sub_18E2CF2B8(v5);
        sub_18E2CF2B8(v5);
      }

      v134 = 0;
      v135 = 0xE000000000000000;
      sub_18E44EFFC();

      v114 = v136;
      if (v121)
      {
      }

      else
      {
        v114 = 0x800000018E462F20;
        v55 = 0xD000000000000016;
      }

      v134 = v55;
      v135 = v114;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v115 = v134;
      v116 = v135;
      sub_18E3FDB10();
      swift_allocError();
      *v117 = v115;
      *(v117 + 8) = v116;
      *(v117 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v121)
    {
    }

    else
    {
      v47 = 0xD000000000000016;
      v49 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v71 = v50;

    v72 = sub_18E4285A4();
    v73 = v71;
    v74 = v132;
    v75 = sub_18E424758(v47, v49, v72, v50);
    if (v74)
    {

      return;
    }

    v76 = *(v75 + 16);
    v77 = v118;
    sub_18E24852C();
    v79 = v78;

    v132 = 0;
    v119 = v133[2];
    v104 = v136;
    v63 = v128;
    v119(v136, v77, v128);
    v105 = [v79 metadata];
    v120 = sub_18E44E98C();

    v61 = v104;

    v121 = v133[1];
    (v121)(v77, v63);
    v64 = v119;
  }

  v65 = v122;
  v66 = v129;
  v119 = v64;
  v64(v129, v61, v63);
  v67 = v123;
  sub_18E249148(v66, v123, type metadata accessor for SecureAnalyticsAssetContents);
  v68 = v124;
  sub_18E249148(v67, v124, type metadata accessor for SecureAnalyticsAssetContents);

  v69 = v125;
  sub_18E432A04(0, 0, 1, v68, v120, v65 | 0x8000000000000000, v125 & 1, v127);
  sub_18E2491F8(v67, type metadata accessor for SecureAnalyticsAssetContents);
  if (v69)
  {
    v70 = v132;
    sub_18E204B54();
    if (v70)
    {
      sub_18E1E8EEC(v127, &qword_1EABE1CC8, &qword_18E4E3920);
      sub_18E2491F8(v66, type metadata accessor for SecureAnalyticsAssetContents);
      (v121)(v136, v63);
      return;
    }

    v132 = 0;
  }

  v80 = v136;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v81 = sub_18E44E83C();
  sub_18E1C95EC(v81, qword_1ED6A9870);
  v82 = v126;
  v119(v126, v80, v63);
  sub_18E43DF2C(v5, &v134);
  v83 = sub_18E44E80C();
  v84 = v63;
  v85 = sub_18E44EE2C();
  if (os_log_type_enabled(v83, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v134 = v87;
    *v86 = 136315394;
    v88 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v88 || (v89 = *(v5 + 200), v90 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
    {
      v91 = v130;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v131 = v93;
      v91 = v94;
    }

    sub_18E2CF2B8(v5);
    v95 = sub_18E1C9624(v131, v91, &v134);

    *(v86 + 4) = v95;
    *(v86 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0]);
    v96 = v126;
    v97 = v128;
    v98 = sub_18E44F39C();
    v100 = v99;
    v101 = v96;
    v102 = v121;
    (v121)(v101, v97);
    v103 = sub_18E1C9624(v98, v100, &v134);

    *(v86 + 14) = v103;
    _os_log_impl(&dword_18E1C1000, v83, v85, "fetchLockedAsset for %s successfully returning asset from URL: %s", v86, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v87, -1, -1);
    MEMORY[0x193ACD400](v86, -1, -1);

    sub_18E2491F8(v129, type metadata accessor for SecureAnalyticsAssetContents);
    v102(v136, v97);
  }

  else
  {
    sub_18E2CF2B8(v5);

    v92 = v121;
    (v121)(v82, v84);
    sub_18E2491F8(v66, type metadata accessor for SecureAnalyticsAssetContents);
    v92(v80, v84);
  }
}

void sub_18E414738(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v125 = a2;
  v127 = a3;
  v7 = type metadata accessor for DiffusionAdapterAssetContents(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v124 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v123 = &v118 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v118 - v13;
  v14 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v118 - v16;
  v18 = sub_18E44E46C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_18E44E54C();
  v133 = *(v23 - 8);
  v24 = v133[8];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v118 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v136 = &v118 - v32;
  v131 = *(v5 + 32);
  v33 = *(v5 + 40);
  v34 = *(v5 + 56);
  v132 = v4;
  v130 = v33;
  v128 = v30;
  v126 = v35;
  v122 = a1;
  if (v34)
  {
    v36 = *MEMORY[0x1E6968F58];
    v121 = v19;
    v37 = *(v19 + 104);
    v37(v22, v36, v18);
    sub_18E201DC8(v17, 1, 1, v23);
    sub_18E44E51C();
    v38 = *(v5 + 200);
    v39 = *(v5 + 208);
    v119 = v5;
    v40 = v38 == 0x636972656E6567 && v39 == 0xE700000000000000;
    if (v40 || (sub_18E44F3CC() & 1) != 0)
    {
      v41 = v130;

      v42 = v131;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v41 = v59;
    }

    v134 = v42;
    v135 = v41;
    v37(v22, *MEMORY[0x1E6968F70], v18);
    sub_18E24D39C();
    v60 = v136;
    sub_18E44E53C();
    (*(v121 + 8))(v22, v18);
    v61 = v60;

    v62 = v133;
    v63 = v128;
    v121 = v133[1];
    (v121)(v29, v128);
    v120 = sub_18E44E9AC();
    v64 = v62[2];
    v5 = v119;
  }

  else
  {
    v118 = v31;
    v43 = *(v5 + 112);
    v44 = *(v5 + 120);
    v45 = *(v5 + 128);
    v46 = *(a1 + 16);
    v121 = *(v5 + 96);
    if (v121)
    {

      v47 = v44;
      v48 = v45;
    }

    else
    {
      v47 = v44;
      v44 = 0xD000000000000016;
      v48 = 0x800000018E462F20;
    }

    v49 = v45;

    v50 = sub_18E248038(v44, v48, v46);

    if (!v50)
    {
      v136 = v45;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v51 = 0xD000000000000016;
      v52 = sub_18E44E83C();
      sub_18E1C95EC(v52, qword_1ED6A9870);
      sub_18E43EF38(v5, &v134);
      sub_18E43EF38(v5, &v134);
      v53 = sub_18E44E80C();
      v54 = sub_18E44EE0C();
      v55 = v47;
      if (os_log_type_enabled(v53, v54))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v134 = v57;
        *v56 = 136315394;
        v120 = v55;
        if (v121)
        {

          v58 = v136;

          v51 = v55;
        }

        else
        {
          v58 = 0x800000018E462F20;
        }

        sub_18E2CFBD0(v5);

        v106 = sub_18E1C9624(v51, v58, &v134);

        *(v56 + 4) = v106;
        *(v56 + 12) = 2080;
        v107 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v107 || (v108 = *(v5 + 200), v109 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
        {
          v110 = v130;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v131 = v111;
          v110 = v112;
        }

        v55 = v120;
        sub_18E2CFBD0(v5);
        v113 = sub_18E1C9624(v131, v110, &v134);

        *(v56 + 14) = v113;
        _os_log_impl(&dword_18E1C1000, v53, v54, "Failed to find token for asset set: %s for %s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v57, -1, -1);
        MEMORY[0x193ACD400](v56, -1, -1);
      }

      else
      {

        sub_18E2CFBD0(v5);
        sub_18E2CFBD0(v5);
      }

      v134 = 0;
      v135 = 0xE000000000000000;
      sub_18E44EFFC();

      v114 = v136;
      if (v121)
      {
      }

      else
      {
        v114 = 0x800000018E462F20;
        v55 = 0xD000000000000016;
      }

      v134 = v55;
      v135 = v114;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v115 = v134;
      v116 = v135;
      sub_18E3FDB10();
      swift_allocError();
      *v117 = v115;
      *(v117 + 8) = v116;
      *(v117 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v121)
    {
    }

    else
    {
      v47 = 0xD000000000000016;
      v49 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v71 = v50;

    v72 = sub_18E428904();
    v73 = v71;
    v74 = v132;
    v75 = sub_18E424758(v47, v49, v72, v50);
    if (v74)
    {

      return;
    }

    v76 = *(v75 + 16);
    v77 = v118;
    sub_18E24852C();
    v79 = v78;

    v132 = 0;
    v119 = v133[2];
    v104 = v136;
    v63 = v128;
    v119(v136, v77, v128);
    v105 = [v79 metadata];
    v120 = sub_18E44E98C();

    v61 = v104;

    v121 = v133[1];
    (v121)(v77, v63);
    v64 = v119;
  }

  v65 = v122;
  v66 = v129;
  v119 = v64;
  v64(v129, v61, v63);
  v67 = v123;
  sub_18E249148(v66, v123, type metadata accessor for DiffusionAdapterAssetContents);
  v68 = v124;
  sub_18E249148(v67, v124, type metadata accessor for DiffusionAdapterAssetContents);

  v69 = v125;
  sub_18E432E78(0, 0, 1, v68, v120, v65 | 0x8000000000000000, v125 & 1, v127);
  sub_18E2491F8(v67, type metadata accessor for DiffusionAdapterAssetContents);
  if (v69)
  {
    v70 = v132;
    sub_18E204B54();
    if (v70)
    {
      sub_18E1E8EEC(v127, &qword_1EABE18B8, &qword_18E4E3A70);
      sub_18E2491F8(v66, type metadata accessor for DiffusionAdapterAssetContents);
      (v121)(v136, v63);
      return;
    }

    v132 = 0;
  }

  v80 = v136;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v81 = sub_18E44E83C();
  sub_18E1C95EC(v81, qword_1ED6A9870);
  v82 = v126;
  v119(v126, v80, v63);
  sub_18E43EF38(v5, &v134);
  v83 = sub_18E44E80C();
  v84 = v63;
  v85 = sub_18E44EE2C();
  if (os_log_type_enabled(v83, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v134 = v87;
    *v86 = 136315394;
    v88 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v88 || (v89 = *(v5 + 200), v90 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
    {
      v91 = v130;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v131 = v93;
      v91 = v94;
    }

    sub_18E2CFBD0(v5);
    v95 = sub_18E1C9624(v131, v91, &v134);

    *(v86 + 4) = v95;
    *(v86 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0]);
    v96 = v126;
    v97 = v128;
    v98 = sub_18E44F39C();
    v100 = v99;
    v101 = v96;
    v102 = v121;
    (v121)(v101, v97);
    v103 = sub_18E1C9624(v98, v100, &v134);

    *(v86 + 14) = v103;
    _os_log_impl(&dword_18E1C1000, v83, v85, "fetchLockedAsset for %s successfully returning asset from URL: %s", v86, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v87, -1, -1);
    MEMORY[0x193ACD400](v86, -1, -1);

    sub_18E2491F8(v129, type metadata accessor for DiffusionAdapterAssetContents);
    v102(v136, v97);
  }

  else
  {
    sub_18E2CFBD0(v5);

    v92 = v121;
    (v121)(v82, v84);
    sub_18E2491F8(v66, type metadata accessor for DiffusionAdapterAssetContents);
    v92(v80, v84);
  }
}

void sub_18E415690(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v125 = a2;
  v127 = a3;
  v7 = type metadata accessor for ImageMagicCleanUpAssetContents(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v124 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v123 = &v118 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v118 - v13;
  v14 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v118 - v16;
  v18 = sub_18E44E46C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_18E44E54C();
  v133 = *(v23 - 8);
  v24 = v133[8];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v118 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v136 = &v118 - v32;
  v131 = *(v5 + 32);
  v33 = *(v5 + 40);
  v34 = *(v5 + 56);
  v132 = v4;
  v130 = v33;
  v128 = v30;
  v126 = v35;
  v122 = a1;
  if (v34)
  {
    v36 = *MEMORY[0x1E6968F58];
    v121 = v19;
    v37 = *(v19 + 104);
    v37(v22, v36, v18);
    sub_18E201DC8(v17, 1, 1, v23);
    sub_18E44E51C();
    v38 = *(v5 + 200);
    v39 = *(v5 + 208);
    v119 = v5;
    v40 = v38 == 0x636972656E6567 && v39 == 0xE700000000000000;
    if (v40 || (sub_18E44F3CC() & 1) != 0)
    {
      v41 = v130;

      v42 = v131;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v41 = v59;
    }

    v134 = v42;
    v135 = v41;
    v37(v22, *MEMORY[0x1E6968F70], v18);
    sub_18E24D39C();
    v60 = v136;
    sub_18E44E53C();
    (*(v121 + 8))(v22, v18);
    v61 = v60;

    v62 = v133;
    v63 = v128;
    v121 = v133[1];
    (v121)(v29, v128);
    v120 = sub_18E44E9AC();
    v64 = v62[2];
    v5 = v119;
  }

  else
  {
    v118 = v31;
    v43 = *(v5 + 112);
    v44 = *(v5 + 120);
    v45 = *(v5 + 128);
    v46 = *(a1 + 16);
    v121 = *(v5 + 96);
    if (v121)
    {

      v47 = v44;
      v48 = v45;
    }

    else
    {
      v47 = v44;
      v44 = 0xD000000000000016;
      v48 = 0x800000018E462F20;
    }

    v49 = v45;

    v50 = sub_18E248038(v44, v48, v46);

    if (!v50)
    {
      v136 = v45;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v51 = 0xD000000000000016;
      v52 = sub_18E44E83C();
      sub_18E1C95EC(v52, qword_1ED6A9870);
      sub_18E43E988(v5, &v134);
      sub_18E43E988(v5, &v134);
      v53 = sub_18E44E80C();
      v54 = sub_18E44EE0C();
      v55 = v47;
      if (os_log_type_enabled(v53, v54))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v134 = v57;
        *v56 = 136315394;
        v120 = v55;
        if (v121)
        {

          v58 = v136;

          v51 = v55;
        }

        else
        {
          v58 = 0x800000018E462F20;
        }

        sub_18E2CF8D0(v5);

        v106 = sub_18E1C9624(v51, v58, &v134);

        *(v56 + 4) = v106;
        *(v56 + 12) = 2080;
        v107 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v107 || (v108 = *(v5 + 200), v109 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
        {
          v110 = v130;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v131 = v111;
          v110 = v112;
        }

        v55 = v120;
        sub_18E2CF8D0(v5);
        v113 = sub_18E1C9624(v131, v110, &v134);

        *(v56 + 14) = v113;
        _os_log_impl(&dword_18E1C1000, v53, v54, "Failed to find token for asset set: %s for %s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v57, -1, -1);
        MEMORY[0x193ACD400](v56, -1, -1);
      }

      else
      {

        sub_18E2CF8D0(v5);
        sub_18E2CF8D0(v5);
      }

      v134 = 0;
      v135 = 0xE000000000000000;
      sub_18E44EFFC();

      v114 = v136;
      if (v121)
      {
      }

      else
      {
        v114 = 0x800000018E462F20;
        v55 = 0xD000000000000016;
      }

      v134 = v55;
      v135 = v114;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v115 = v134;
      v116 = v135;
      sub_18E3FDB10();
      swift_allocError();
      *v117 = v115;
      *(v117 + 8) = v116;
      *(v117 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v121)
    {
    }

    else
    {
      v47 = 0xD000000000000016;
      v49 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v71 = v50;

    v72 = sub_18E428C64();
    v73 = v71;
    v74 = v132;
    v75 = sub_18E424758(v47, v49, v72, v50);
    if (v74)
    {

      return;
    }

    v76 = *(v75 + 16);
    v77 = v118;
    sub_18E24852C();
    v79 = v78;

    v132 = 0;
    v119 = v133[2];
    v104 = v136;
    v63 = v128;
    v119(v136, v77, v128);
    v105 = [v79 metadata];
    v120 = sub_18E44E98C();

    v61 = v104;

    v121 = v133[1];
    (v121)(v77, v63);
    v64 = v119;
  }

  v65 = v122;
  v66 = v129;
  v119 = v64;
  v64(v129, v61, v63);
  v67 = v123;
  sub_18E249148(v66, v123, type metadata accessor for ImageMagicCleanUpAssetContents);
  v68 = v124;
  sub_18E249148(v67, v124, type metadata accessor for ImageMagicCleanUpAssetContents);

  v69 = v125;
  sub_18E433760(0, 0, 1, v68, v120, v65 | 0x8000000000000000, v125 & 1, v127);
  sub_18E2491F8(v67, type metadata accessor for ImageMagicCleanUpAssetContents);
  if (v69)
  {
    v70 = v132;
    sub_18E204B54();
    if (v70)
    {
      sub_18E1E8EEC(v127, &qword_1EABE1A60, &qword_18E4E39F0);
      sub_18E2491F8(v66, type metadata accessor for ImageMagicCleanUpAssetContents);
      (v121)(v136, v63);
      return;
    }

    v132 = 0;
  }

  v80 = v136;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v81 = sub_18E44E83C();
  sub_18E1C95EC(v81, qword_1ED6A9870);
  v82 = v126;
  v119(v126, v80, v63);
  sub_18E43E988(v5, &v134);
  v83 = sub_18E44E80C();
  v84 = v63;
  v85 = sub_18E44EE2C();
  if (os_log_type_enabled(v83, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v134 = v87;
    *v86 = 136315394;
    v88 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v88 || (v89 = *(v5 + 200), v90 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
    {
      v91 = v130;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v131 = v93;
      v91 = v94;
    }

    sub_18E2CF8D0(v5);
    v95 = sub_18E1C9624(v131, v91, &v134);

    *(v86 + 4) = v95;
    *(v86 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0]);
    v96 = v126;
    v97 = v128;
    v98 = sub_18E44F39C();
    v100 = v99;
    v101 = v96;
    v102 = v121;
    (v121)(v101, v97);
    v103 = sub_18E1C9624(v98, v100, &v134);

    *(v86 + 14) = v103;
    _os_log_impl(&dword_18E1C1000, v83, v85, "fetchLockedAsset for %s successfully returning asset from URL: %s", v86, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v87, -1, -1);
    MEMORY[0x193ACD400](v86, -1, -1);

    sub_18E2491F8(v129, type metadata accessor for ImageMagicCleanUpAssetContents);
    v102(v136, v97);
  }

  else
  {
    sub_18E2CF8D0(v5);

    v92 = v121;
    (v121)(v82, v84);
    sub_18E2491F8(v66, type metadata accessor for ImageMagicCleanUpAssetContents);
    v92(v80, v84);
  }
}

void sub_18E4165E8(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v125 = a2;
  v127 = a3;
  v7 = type metadata accessor for TokenInputDenyListAssetContents(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v124 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v123 = &v118 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v118 - v13;
  v14 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v118 - v16;
  v18 = sub_18E44E46C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_18E44E54C();
  v133 = *(v23 - 8);
  v24 = v133[8];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v118 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v136 = &v118 - v32;
  v131 = *(v5 + 32);
  v33 = *(v5 + 40);
  v34 = *(v5 + 56);
  v132 = v4;
  v130 = v33;
  v128 = v30;
  v126 = v35;
  v122 = a1;
  if (v34)
  {
    v36 = *MEMORY[0x1E6968F58];
    v121 = v19;
    v37 = *(v19 + 104);
    v37(v22, v36, v18);
    sub_18E201DC8(v17, 1, 1, v23);
    sub_18E44E51C();
    v38 = *(v5 + 200);
    v39 = *(v5 + 208);
    v119 = v5;
    v40 = v38 == 0x636972656E6567 && v39 == 0xE700000000000000;
    if (v40 || (sub_18E44F3CC() & 1) != 0)
    {
      v41 = v130;

      v42 = v131;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v41 = v59;
    }

    v134 = v42;
    v135 = v41;
    v37(v22, *MEMORY[0x1E6968F70], v18);
    sub_18E24D39C();
    v60 = v136;
    sub_18E44E53C();
    (*(v121 + 8))(v22, v18);
    v61 = v60;

    v62 = v133;
    v63 = v128;
    v121 = v133[1];
    (v121)(v29, v128);
    v120 = sub_18E44E9AC();
    v64 = v62[2];
    v5 = v119;
  }

  else
  {
    v118 = v31;
    v43 = *(v5 + 112);
    v44 = *(v5 + 120);
    v45 = *(v5 + 128);
    v46 = *(a1 + 16);
    v121 = *(v5 + 96);
    if (v121)
    {

      v47 = v44;
      v48 = v45;
    }

    else
    {
      v47 = v44;
      v44 = 0xD000000000000016;
      v48 = 0x800000018E462F20;
    }

    v49 = v45;

    v50 = sub_18E248038(v44, v48, v46);

    if (!v50)
    {
      v136 = v45;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v51 = 0xD000000000000016;
      v52 = sub_18E44E83C();
      sub_18E1C95EC(v52, qword_1ED6A9870);
      sub_18E2070B8(v5, &v134);
      sub_18E2070B8(v5, &v134);
      v53 = sub_18E44E80C();
      v54 = sub_18E44EE0C();
      v55 = v47;
      if (os_log_type_enabled(v53, v54))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v134 = v57;
        *v56 = 136315394;
        v120 = v55;
        if (v121)
        {

          v58 = v136;

          v51 = v55;
        }

        else
        {
          v58 = 0x800000018E462F20;
        }

        sub_18E24B30C(v5);

        v106 = sub_18E1C9624(v51, v58, &v134);

        *(v56 + 4) = v106;
        *(v56 + 12) = 2080;
        v107 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v107 || (v108 = *(v5 + 200), v109 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
        {
          v110 = v130;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v131 = v111;
          v110 = v112;
        }

        v55 = v120;
        sub_18E24B30C(v5);
        v113 = sub_18E1C9624(v131, v110, &v134);

        *(v56 + 14) = v113;
        _os_log_impl(&dword_18E1C1000, v53, v54, "Failed to find token for asset set: %s for %s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v57, -1, -1);
        MEMORY[0x193ACD400](v56, -1, -1);
      }

      else
      {

        sub_18E24B30C(v5);
        sub_18E24B30C(v5);
      }

      v134 = 0;
      v135 = 0xE000000000000000;
      sub_18E44EFFC();

      v114 = v136;
      if (v121)
      {
      }

      else
      {
        v114 = 0x800000018E462F20;
        v55 = 0xD000000000000016;
      }

      v134 = v55;
      v135 = v114;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v115 = v134;
      v116 = v135;
      sub_18E3FDB10();
      swift_allocError();
      *v117 = v115;
      *(v117 + 8) = v116;
      *(v117 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v121)
    {
    }

    else
    {
      v47 = 0xD000000000000016;
      v49 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v71 = v50;

    v72 = sub_18E428FC4();
    v73 = v71;
    v74 = v132;
    v75 = sub_18E424758(v47, v49, v72, v50);
    if (v74)
    {

      return;
    }

    v76 = *(v75 + 16);
    v77 = v118;
    sub_18E24852C();
    v79 = v78;

    v132 = 0;
    v119 = v133[2];
    v104 = v136;
    v63 = v128;
    v119(v136, v77, v128);
    v105 = [v79 metadata];
    v120 = sub_18E44E98C();

    v61 = v104;

    v121 = v133[1];
    (v121)(v77, v63);
    v64 = v119;
  }

  v65 = v122;
  v66 = v129;
  v119 = v64;
  v64(v129, v61, v63);
  v67 = v123;
  sub_18E249148(v66, v123, type metadata accessor for TokenInputDenyListAssetContents);
  v68 = v124;
  sub_18E249148(v67, v124, type metadata accessor for TokenInputDenyListAssetContents);

  v69 = v125;
  sub_18E433BD4(0, 0, 1, v68, v120, v65 | 0x8000000000000000, v125 & 1, v127);
  sub_18E2491F8(v67, type metadata accessor for TokenInputDenyListAssetContents);
  if (v69)
  {
    v70 = v132;
    sub_18E204B54();
    if (v70)
    {
      sub_18E1E8EEC(v127, &qword_1EABE1D08, &qword_18E4E3910);
      sub_18E2491F8(v66, type metadata accessor for TokenInputDenyListAssetContents);
      (v121)(v136, v63);
      return;
    }

    v132 = 0;
  }

  v80 = v136;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v81 = sub_18E44E83C();
  sub_18E1C95EC(v81, qword_1ED6A9870);
  v82 = v126;
  v119(v126, v80, v63);
  sub_18E2070B8(v5, &v134);
  v83 = sub_18E44E80C();
  v84 = v63;
  v85 = sub_18E44EE2C();
  if (os_log_type_enabled(v83, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v134 = v87;
    *v86 = 136315394;
    v88 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v88 || (v89 = *(v5 + 200), v90 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
    {
      v91 = v130;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v131 = v93;
      v91 = v94;
    }

    sub_18E24B30C(v5);
    v95 = sub_18E1C9624(v131, v91, &v134);

    *(v86 + 4) = v95;
    *(v86 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0]);
    v96 = v126;
    v97 = v128;
    v98 = sub_18E44F39C();
    v100 = v99;
    v101 = v96;
    v102 = v121;
    (v121)(v101, v97);
    v103 = sub_18E1C9624(v98, v100, &v134);

    *(v86 + 14) = v103;
    _os_log_impl(&dword_18E1C1000, v83, v85, "fetchLockedAsset for %s successfully returning asset from URL: %s", v86, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v87, -1, -1);
    MEMORY[0x193ACD400](v86, -1, -1);

    sub_18E2491F8(v129, type metadata accessor for TokenInputDenyListAssetContents);
    v102(v136, v97);
  }

  else
  {
    sub_18E24B30C(v5);

    v92 = v121;
    (v121)(v82, v84);
    sub_18E2491F8(v66, type metadata accessor for TokenInputDenyListAssetContents);
    v92(v80, v84);
  }
}

void sub_18E417540(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v125 = a2;
  v127 = a3;
  v7 = type metadata accessor for AppleDeviceTrackingAssetContents(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v124 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v123 = &v118 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v118 - v13;
  v14 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v118 - v16;
  v18 = sub_18E44E46C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_18E44E54C();
  v133 = *(v23 - 8);
  v24 = v133[8];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v118 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v136 = &v118 - v32;
  v131 = *(v5 + 32);
  v33 = *(v5 + 40);
  v34 = *(v5 + 56);
  v132 = v4;
  v130 = v33;
  v128 = v30;
  v126 = v35;
  v122 = a1;
  if (v34)
  {
    v36 = *MEMORY[0x1E6968F58];
    v121 = v19;
    v37 = *(v19 + 104);
    v37(v22, v36, v18);
    sub_18E201DC8(v17, 1, 1, v23);
    sub_18E44E51C();
    v38 = *(v5 + 200);
    v39 = *(v5 + 208);
    v119 = v5;
    v40 = v38 == 0x636972656E6567 && v39 == 0xE700000000000000;
    if (v40 || (sub_18E44F3CC() & 1) != 0)
    {
      v41 = v130;

      v42 = v131;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v41 = v59;
    }

    v134 = v42;
    v135 = v41;
    v37(v22, *MEMORY[0x1E6968F70], v18);
    sub_18E24D39C();
    v60 = v136;
    sub_18E44E53C();
    (*(v121 + 8))(v22, v18);
    v61 = v60;

    v62 = v133;
    v63 = v128;
    v121 = v133[1];
    (v121)(v29, v128);
    v120 = sub_18E44E9AC();
    v64 = v62[2];
    v5 = v119;
  }

  else
  {
    v118 = v31;
    v43 = *(v5 + 112);
    v44 = *(v5 + 120);
    v45 = *(v5 + 128);
    v46 = *(a1 + 16);
    v121 = *(v5 + 96);
    if (v121)
    {

      v47 = v44;
      v48 = v45;
    }

    else
    {
      v47 = v44;
      v44 = 0xD000000000000016;
      v48 = 0x800000018E462F20;
    }

    v49 = v45;

    v50 = sub_18E248038(v44, v48, v46);

    if (!v50)
    {
      v136 = v45;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v51 = 0xD000000000000016;
      v52 = sub_18E44E83C();
      sub_18E1C95EC(v52, qword_1ED6A9870);
      sub_18E43F004(v5, &v134);
      sub_18E43F004(v5, &v134);
      v53 = sub_18E44E80C();
      v54 = sub_18E44EE0C();
      v55 = v47;
      if (os_log_type_enabled(v53, v54))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v134 = v57;
        *v56 = 136315394;
        v120 = v55;
        if (v121)
        {

          v58 = v136;

          v51 = v55;
        }

        else
        {
          v58 = 0x800000018E462F20;
        }

        sub_18E2CFC30(v5);

        v106 = sub_18E1C9624(v51, v58, &v134);

        *(v56 + 4) = v106;
        *(v56 + 12) = 2080;
        v107 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v107 || (v108 = *(v5 + 200), v109 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
        {
          v110 = v130;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v131 = v111;
          v110 = v112;
        }

        v55 = v120;
        sub_18E2CFC30(v5);
        v113 = sub_18E1C9624(v131, v110, &v134);

        *(v56 + 14) = v113;
        _os_log_impl(&dword_18E1C1000, v53, v54, "Failed to find token for asset set: %s for %s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v57, -1, -1);
        MEMORY[0x193ACD400](v56, -1, -1);
      }

      else
      {

        sub_18E2CFC30(v5);
        sub_18E2CFC30(v5);
      }

      v134 = 0;
      v135 = 0xE000000000000000;
      sub_18E44EFFC();

      v114 = v136;
      if (v121)
      {
      }

      else
      {
        v114 = 0x800000018E462F20;
        v55 = 0xD000000000000016;
      }

      v134 = v55;
      v135 = v114;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v115 = v134;
      v116 = v135;
      sub_18E3FDB10();
      swift_allocError();
      *v117 = v115;
      *(v117 + 8) = v116;
      *(v117 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v121)
    {
    }

    else
    {
      v47 = 0xD000000000000016;
      v49 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v71 = v50;

    v72 = sub_18E429324();
    v73 = v71;
    v74 = v132;
    v75 = sub_18E424758(v47, v49, v72, v50);
    if (v74)
    {

      return;
    }

    v76 = *(v75 + 16);
    v77 = v118;
    sub_18E24852C();
    v79 = v78;

    v132 = 0;
    v119 = v133[2];
    v104 = v136;
    v63 = v128;
    v119(v136, v77, v128);
    v105 = [v79 metadata];
    v120 = sub_18E44E98C();

    v61 = v104;

    v121 = v133[1];
    (v121)(v77, v63);
    v64 = v119;
  }

  v65 = v122;
  v66 = v129;
  v119 = v64;
  v64(v129, v61, v63);
  v67 = v123;
  sub_18E249148(v66, v123, type metadata accessor for AppleDeviceTrackingAssetContents);
  v68 = v124;
  sub_18E249148(v67, v124, type metadata accessor for AppleDeviceTrackingAssetContents);

  v69 = v125;
  sub_18E434048(0, 0, 1, v68, v120, v65 | 0x8000000000000000, v125 & 1, v127);
  sub_18E2491F8(v67, type metadata accessor for AppleDeviceTrackingAssetContents);
  if (v69)
  {
    v70 = v132;
    sub_18E204B54();
    if (v70)
    {
      sub_18E1E8EEC(v127, &qword_1EABE1878, &qword_18E4E3A80);
      sub_18E2491F8(v66, type metadata accessor for AppleDeviceTrackingAssetContents);
      (v121)(v136, v63);
      return;
    }

    v132 = 0;
  }

  v80 = v136;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v81 = sub_18E44E83C();
  sub_18E1C95EC(v81, qword_1ED6A9870);
  v82 = v126;
  v119(v126, v80, v63);
  sub_18E43F004(v5, &v134);
  v83 = sub_18E44E80C();
  v84 = v63;
  v85 = sub_18E44EE2C();
  if (os_log_type_enabled(v83, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v134 = v87;
    *v86 = 136315394;
    v88 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v88 || (v89 = *(v5 + 200), v90 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
    {
      v91 = v130;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v131 = v93;
      v91 = v94;
    }

    sub_18E2CFC30(v5);
    v95 = sub_18E1C9624(v131, v91, &v134);

    *(v86 + 4) = v95;
    *(v86 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0]);
    v96 = v126;
    v97 = v128;
    v98 = sub_18E44F39C();
    v100 = v99;
    v101 = v96;
    v102 = v121;
    (v121)(v101, v97);
    v103 = sub_18E1C9624(v98, v100, &v134);

    *(v86 + 14) = v103;
    _os_log_impl(&dword_18E1C1000, v83, v85, "fetchLockedAsset for %s successfully returning asset from URL: %s", v86, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v87, -1, -1);
    MEMORY[0x193ACD400](v86, -1, -1);

    sub_18E2491F8(v129, type metadata accessor for AppleDeviceTrackingAssetContents);
    v102(v136, v97);
  }

  else
  {
    sub_18E2CFC30(v5);

    v92 = v121;
    (v121)(v82, v84);
    sub_18E2491F8(v66, type metadata accessor for AppleDeviceTrackingAssetContents);
    v92(v80, v84);
  }
}

void sub_18E418498(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v125 = a2;
  v127 = a3;
  v7 = type metadata accessor for DisabledUseCaseListAssetContents(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v124 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v123 = &v118 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v118 - v13;
  v14 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v118 - v16;
  v18 = sub_18E44E46C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_18E44E54C();
  v133 = *(v23 - 8);
  v24 = v133[8];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v118 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v136 = &v118 - v32;
  v131 = *(v5 + 32);
  v33 = *(v5 + 40);
  v34 = *(v5 + 56);
  v132 = v4;
  v130 = v33;
  v128 = v30;
  v126 = v35;
  v122 = a1;
  if (v34)
  {
    v36 = *MEMORY[0x1E6968F58];
    v121 = v19;
    v37 = *(v19 + 104);
    v37(v22, v36, v18);
    sub_18E201DC8(v17, 1, 1, v23);
    sub_18E44E51C();
    v38 = *(v5 + 200);
    v39 = *(v5 + 208);
    v119 = v5;
    v40 = v38 == 0x636972656E6567 && v39 == 0xE700000000000000;
    if (v40 || (sub_18E44F3CC() & 1) != 0)
    {
      v41 = v130;

      v42 = v131;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v41 = v59;
    }

    v134 = v42;
    v135 = v41;
    v37(v22, *MEMORY[0x1E6968F70], v18);
    sub_18E24D39C();
    v60 = v136;
    sub_18E44E53C();
    (*(v121 + 8))(v22, v18);
    v61 = v60;

    v62 = v133;
    v63 = v128;
    v121 = v133[1];
    (v121)(v29, v128);
    v120 = sub_18E44E9AC();
    v64 = v62[2];
    v5 = v119;
  }

  else
  {
    v118 = v31;
    v43 = *(v5 + 112);
    v44 = *(v5 + 120);
    v45 = *(v5 + 128);
    v46 = *(a1 + 16);
    v121 = *(v5 + 96);
    if (v121)
    {

      v47 = v44;
      v48 = v45;
    }

    else
    {
      v47 = v44;
      v44 = 0xD000000000000016;
      v48 = 0x800000018E462F20;
    }

    v49 = v45;

    v50 = sub_18E248038(v44, v48, v46);

    if (!v50)
    {
      v136 = v45;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v51 = 0xD000000000000016;
      v52 = sub_18E44E83C();
      sub_18E1C95EC(v52, qword_1ED6A9870);
      sub_18E43EDA0(v5, &v134);
      sub_18E43EDA0(v5, &v134);
      v53 = sub_18E44E80C();
      v54 = sub_18E44EE0C();
      v55 = v47;
      if (os_log_type_enabled(v53, v54))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v134 = v57;
        *v56 = 136315394;
        v120 = v55;
        if (v121)
        {

          v58 = v136;

          v51 = v55;
        }

        else
        {
          v58 = 0x800000018E462F20;
        }

        sub_18E2CFB10(v5);

        v106 = sub_18E1C9624(v51, v58, &v134);

        *(v56 + 4) = v106;
        *(v56 + 12) = 2080;
        v107 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v107 || (v108 = *(v5 + 200), v109 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
        {
          v110 = v130;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v131 = v111;
          v110 = v112;
        }

        v55 = v120;
        sub_18E2CFB10(v5);
        v113 = sub_18E1C9624(v131, v110, &v134);

        *(v56 + 14) = v113;
        _os_log_impl(&dword_18E1C1000, v53, v54, "Failed to find token for asset set: %s for %s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v57, -1, -1);
        MEMORY[0x193ACD400](v56, -1, -1);
      }

      else
      {

        sub_18E2CFB10(v5);
        sub_18E2CFB10(v5);
      }

      v134 = 0;
      v135 = 0xE000000000000000;
      sub_18E44EFFC();

      v114 = v136;
      if (v121)
      {
      }

      else
      {
        v114 = 0x800000018E462F20;
        v55 = 0xD000000000000016;
      }

      v134 = v55;
      v135 = v114;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v115 = v134;
      v116 = v135;
      sub_18E3FDB10();
      swift_allocError();
      *v117 = v115;
      *(v117 + 8) = v116;
      *(v117 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v121)
    {
    }

    else
    {
      v47 = 0xD000000000000016;
      v49 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v71 = v50;

    v72 = sub_18E429684();
    v73 = v71;
    v74 = v132;
    v75 = sub_18E424758(v47, v49, v72, v50);
    if (v74)
    {

      return;
    }

    v76 = *(v75 + 16);
    v77 = v118;
    sub_18E24852C();
    v79 = v78;

    v132 = 0;
    v119 = v133[2];
    v104 = v136;
    v63 = v128;
    v119(v136, v77, v128);
    v105 = [v79 metadata];
    v120 = sub_18E44E98C();

    v61 = v104;

    v121 = v133[1];
    (v121)(v77, v63);
    v64 = v119;
  }

  v65 = v122;
  v66 = v129;
  v119 = v64;
  v64(v129, v61, v63);
  v67 = v123;
  sub_18E249148(v66, v123, type metadata accessor for DisabledUseCaseListAssetContents);
  v68 = v124;
  sub_18E249148(v67, v124, type metadata accessor for DisabledUseCaseListAssetContents);

  v69 = v125;
  sub_18E4344BC(0, 0, 1, v68, v120, v65 | 0x8000000000000000, v125 & 1, v127);
  sub_18E2491F8(v67, type metadata accessor for DisabledUseCaseListAssetContents);
  if (v69)
  {
    v70 = v132;
    sub_18E204B54();
    if (v70)
    {
      sub_18E1E8EEC(v127, &qword_1EABE1908, &qword_18E4E3A50);
      sub_18E2491F8(v66, type metadata accessor for DisabledUseCaseListAssetContents);
      (v121)(v136, v63);
      return;
    }

    v132 = 0;
  }

  v80 = v136;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v81 = sub_18E44E83C();
  sub_18E1C95EC(v81, qword_1ED6A9870);
  v82 = v126;
  v119(v126, v80, v63);
  sub_18E43EDA0(v5, &v134);
  v83 = sub_18E44E80C();
  v84 = v63;
  v85 = sub_18E44EE2C();
  if (os_log_type_enabled(v83, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v134 = v87;
    *v86 = 136315394;
    v88 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v88 || (v89 = *(v5 + 200), v90 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
    {
      v91 = v130;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v131 = v93;
      v91 = v94;
    }

    sub_18E2CFB10(v5);
    v95 = sub_18E1C9624(v131, v91, &v134);

    *(v86 + 4) = v95;
    *(v86 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0]);
    v96 = v126;
    v97 = v128;
    v98 = sub_18E44F39C();
    v100 = v99;
    v101 = v96;
    v102 = v121;
    (v121)(v101, v97);
    v103 = sub_18E1C9624(v98, v100, &v134);

    *(v86 + 14) = v103;
    _os_log_impl(&dword_18E1C1000, v83, v85, "fetchLockedAsset for %s successfully returning asset from URL: %s", v86, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v87, -1, -1);
    MEMORY[0x193ACD400](v86, -1, -1);

    sub_18E2491F8(v129, type metadata accessor for DisabledUseCaseListAssetContents);
    v102(v136, v97);
  }

  else
  {
    sub_18E2CFB10(v5);

    v92 = v121;
    (v121)(v82, v84);
    sub_18E2491F8(v66, type metadata accessor for DisabledUseCaseListAssetContents);
    v92(v80, v84);
  }
}

void sub_18E4193F0(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v125 = a2;
  v127 = a3;
  v7 = type metadata accessor for ImageCuratedPromptsAssetContents(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v124 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v123 = &v118 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v118 - v13;
  v14 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v118 - v16;
  v18 = sub_18E44E46C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_18E44E54C();
  v133 = *(v23 - 8);
  v24 = v133[8];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v118 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v136 = &v118 - v32;
  v131 = *(v5 + 32);
  v33 = *(v5 + 40);
  v34 = *(v5 + 56);
  v132 = v4;
  v130 = v33;
  v128 = v30;
  v126 = v35;
  v122 = a1;
  if (v34)
  {
    v36 = *MEMORY[0x1E6968F58];
    v121 = v19;
    v37 = *(v19 + 104);
    v37(v22, v36, v18);
    sub_18E201DC8(v17, 1, 1, v23);
    sub_18E44E51C();
    v38 = *(v5 + 200);
    v39 = *(v5 + 208);
    v119 = v5;
    v40 = v38 == 0x636972656E6567 && v39 == 0xE700000000000000;
    if (v40 || (sub_18E44F3CC() & 1) != 0)
    {
      v41 = v130;

      v42 = v131;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v41 = v59;
    }

    v134 = v42;
    v135 = v41;
    v37(v22, *MEMORY[0x1E6968F70], v18);
    sub_18E24D39C();
    v60 = v136;
    sub_18E44E53C();
    (*(v121 + 8))(v22, v18);
    v61 = v60;

    v62 = v133;
    v63 = v128;
    v121 = v133[1];
    (v121)(v29, v128);
    v120 = sub_18E44E9AC();
    v64 = v62[2];
    v5 = v119;
  }

  else
  {
    v118 = v31;
    v43 = *(v5 + 112);
    v44 = *(v5 + 120);
    v45 = *(v5 + 128);
    v46 = *(a1 + 16);
    v121 = *(v5 + 96);
    if (v121)
    {

      v47 = v44;
      v48 = v45;
    }

    else
    {
      v47 = v44;
      v44 = 0xD000000000000016;
      v48 = 0x800000018E462F20;
    }

    v49 = v45;

    v50 = sub_18E248038(v44, v48, v46);

    if (!v50)
    {
      v136 = v45;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v51 = 0xD000000000000016;
      v52 = sub_18E44E83C();
      sub_18E1C95EC(v52, qword_1ED6A9870);
      sub_18E43EB20(v5, &v134);
      sub_18E43EB20(v5, &v134);
      v53 = sub_18E44E80C();
      v54 = sub_18E44EE0C();
      v55 = v47;
      if (os_log_type_enabled(v53, v54))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v134 = v57;
        *v56 = 136315394;
        v120 = v55;
        if (v121)
        {

          v58 = v136;

          v51 = v55;
        }

        else
        {
          v58 = 0x800000018E462F20;
        }

        sub_18E2CF990(v5);

        v106 = sub_18E1C9624(v51, v58, &v134);

        *(v56 + 4) = v106;
        *(v56 + 12) = 2080;
        v107 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v107 || (v108 = *(v5 + 200), v109 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
        {
          v110 = v130;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v131 = v111;
          v110 = v112;
        }

        v55 = v120;
        sub_18E2CF990(v5);
        v113 = sub_18E1C9624(v131, v110, &v134);

        *(v56 + 14) = v113;
        _os_log_impl(&dword_18E1C1000, v53, v54, "Failed to find token for asset set: %s for %s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v57, -1, -1);
        MEMORY[0x193ACD400](v56, -1, -1);
      }

      else
      {

        sub_18E2CF990(v5);
        sub_18E2CF990(v5);
      }

      v134 = 0;
      v135 = 0xE000000000000000;
      sub_18E44EFFC();

      v114 = v136;
      if (v121)
      {
      }

      else
      {
        v114 = 0x800000018E462F20;
        v55 = 0xD000000000000016;
      }

      v134 = v55;
      v135 = v114;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v115 = v134;
      v116 = v135;
      sub_18E3FDB10();
      swift_allocError();
      *v117 = v115;
      *(v117 + 8) = v116;
      *(v117 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v121)
    {
    }

    else
    {
      v47 = 0xD000000000000016;
      v49 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v71 = v50;

    v72 = sub_18E4299E4();
    v73 = v71;
    v74 = v132;
    v75 = sub_18E424758(v47, v49, v72, v50);
    if (v74)
    {

      return;
    }

    v76 = *(v75 + 16);
    v77 = v118;
    sub_18E24852C();
    v79 = v78;

    v132 = 0;
    v119 = v133[2];
    v104 = v136;
    v63 = v128;
    v119(v136, v77, v128);
    v105 = [v79 metadata];
    v120 = sub_18E44E98C();

    v61 = v104;

    v121 = v133[1];
    (v121)(v77, v63);
    v64 = v119;
  }

  v65 = v122;
  v66 = v129;
  v119 = v64;
  v64(v129, v61, v63);
  v67 = v123;
  sub_18E249148(v66, v123, type metadata accessor for ImageCuratedPromptsAssetContents);
  v68 = v124;
  sub_18E249148(v67, v124, type metadata accessor for ImageCuratedPromptsAssetContents);

  v69 = v125;
  sub_18E434930(0, 0, 1, v68, v120, v65 | 0x8000000000000000, v125 & 1, v127);
  sub_18E2491F8(v67, type metadata accessor for ImageCuratedPromptsAssetContents);
  if (v69)
  {
    v70 = v132;
    sub_18E204B54();
    if (v70)
    {
      sub_18E1E8EEC(v127, &qword_1EABE19F0, &qword_18E4E3A10);
      sub_18E2491F8(v66, type metadata accessor for ImageCuratedPromptsAssetContents);
      (v121)(v136, v63);
      return;
    }

    v132 = 0;
  }

  v80 = v136;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v81 = sub_18E44E83C();
  sub_18E1C95EC(v81, qword_1ED6A9870);
  v82 = v126;
  v119(v126, v80, v63);
  sub_18E43EB20(v5, &v134);
  v83 = sub_18E44E80C();
  v84 = v63;
  v85 = sub_18E44EE2C();
  if (os_log_type_enabled(v83, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v134 = v87;
    *v86 = 136315394;
    v88 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v88 || (v89 = *(v5 + 200), v90 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
    {
      v91 = v130;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v131 = v93;
      v91 = v94;
    }

    sub_18E2CF990(v5);
    v95 = sub_18E1C9624(v131, v91, &v134);

    *(v86 + 4) = v95;
    *(v86 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0]);
    v96 = v126;
    v97 = v128;
    v98 = sub_18E44F39C();
    v100 = v99;
    v101 = v96;
    v102 = v121;
    (v121)(v101, v97);
    v103 = sub_18E1C9624(v98, v100, &v134);

    *(v86 + 14) = v103;
    _os_log_impl(&dword_18E1C1000, v83, v85, "fetchLockedAsset for %s successfully returning asset from URL: %s", v86, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v87, -1, -1);
    MEMORY[0x193ACD400](v86, -1, -1);

    sub_18E2491F8(v129, type metadata accessor for ImageCuratedPromptsAssetContents);
    v102(v136, v97);
  }

  else
  {
    sub_18E2CF990(v5);

    v92 = v121;
    (v121)(v82, v84);
    sub_18E2491F8(v66, type metadata accessor for ImageCuratedPromptsAssetContents);
    v92(v80, v84);
  }
}

void sub_18E41A348(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v125 = a2;
  v127 = a3;
  v7 = type metadata accessor for ServerConfigurationAssetContents(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v124 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v123 = &v118 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v118 - v13;
  v14 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v118 - v16;
  v18 = sub_18E44E46C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_18E44E54C();
  v133 = *(v23 - 8);
  v24 = v133[8];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v118 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v136 = &v118 - v32;
  v131 = *(v5 + 32);
  v33 = *(v5 + 40);
  v34 = *(v5 + 56);
  v132 = v4;
  v130 = v33;
  v128 = v30;
  v126 = v35;
  v122 = a1;
  if (v34)
  {
    v36 = *MEMORY[0x1E6968F58];
    v121 = v19;
    v37 = *(v19 + 104);
    v37(v22, v36, v18);
    sub_18E201DC8(v17, 1, 1, v23);
    sub_18E44E51C();
    v38 = *(v5 + 200);
    v39 = *(v5 + 208);
    v119 = v5;
    v40 = v38 == 0x636972656E6567 && v39 == 0xE700000000000000;
    if (v40 || (sub_18E44F3CC() & 1) != 0)
    {
      v41 = v130;

      v42 = v131;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v41 = v59;
    }

    v134 = v42;
    v135 = v41;
    v37(v22, *MEMORY[0x1E6968F70], v18);
    sub_18E24D39C();
    v60 = v136;
    sub_18E44E53C();
    (*(v121 + 8))(v22, v18);
    v61 = v60;

    v62 = v133;
    v63 = v128;
    v121 = v133[1];
    (v121)(v29, v128);
    v120 = sub_18E44E9AC();
    v64 = v62[2];
    v5 = v119;
  }

  else
  {
    v118 = v31;
    v43 = *(v5 + 112);
    v44 = *(v5 + 120);
    v45 = *(v5 + 128);
    v46 = *(a1 + 16);
    v121 = *(v5 + 96);
    if (v121)
    {

      v47 = v44;
      v48 = v45;
    }

    else
    {
      v47 = v44;
      v44 = 0xD000000000000016;
      v48 = 0x800000018E462F20;
    }

    v49 = v45;

    v50 = sub_18E248038(v44, v48, v46);

    if (!v50)
    {
      v136 = v45;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v51 = 0xD000000000000016;
      v52 = sub_18E44E83C();
      sub_18E1C95EC(v52, qword_1ED6A9870);
      sub_18E43E328(v5, &v134);
      sub_18E43E328(v5, &v134);
      v53 = sub_18E44E80C();
      v54 = sub_18E44EE0C();
      v55 = v47;
      if (os_log_type_enabled(v53, v54))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v134 = v57;
        *v56 = 136315394;
        v120 = v55;
        if (v121)
        {

          v58 = v136;

          v51 = v55;
        }

        else
        {
          v58 = 0x800000018E462F20;
        }

        sub_18E2CF498(v5);

        v106 = sub_18E1C9624(v51, v58, &v134);

        *(v56 + 4) = v106;
        *(v56 + 12) = 2080;
        v107 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v107 || (v108 = *(v5 + 200), v109 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
        {
          v110 = v130;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v131 = v111;
          v110 = v112;
        }

        v55 = v120;
        sub_18E2CF498(v5);
        v113 = sub_18E1C9624(v131, v110, &v134);

        *(v56 + 14) = v113;
        _os_log_impl(&dword_18E1C1000, v53, v54, "Failed to find token for asset set: %s for %s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v57, -1, -1);
        MEMORY[0x193ACD400](v56, -1, -1);
      }

      else
      {

        sub_18E2CF498(v5);
        sub_18E2CF498(v5);
      }

      v134 = 0;
      v135 = 0xE000000000000000;
      sub_18E44EFFC();

      v114 = v136;
      if (v121)
      {
      }

      else
      {
        v114 = 0x800000018E462F20;
        v55 = 0xD000000000000016;
      }

      v134 = v55;
      v135 = v114;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v115 = v134;
      v116 = v135;
      sub_18E3FDB10();
      swift_allocError();
      *v117 = v115;
      *(v117 + 8) = v116;
      *(v117 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v121)
    {
    }

    else
    {
      v47 = 0xD000000000000016;
      v49 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v71 = v50;

    v72 = sub_18E429D44();
    v73 = v71;
    v74 = v132;
    v75 = sub_18E424758(v47, v49, v72, v50);
    if (v74)
    {

      return;
    }

    v76 = *(v75 + 16);
    v77 = v118;
    sub_18E24852C();
    v79 = v78;

    v132 = 0;
    v119 = v133[2];
    v104 = v136;
    v63 = v128;
    v119(v136, v77, v128);
    v105 = [v79 metadata];
    v120 = sub_18E44E98C();

    v61 = v104;

    v121 = v133[1];
    (v121)(v77, v63);
    v64 = v119;
  }

  v65 = v122;
  v66 = v129;
  v119 = v64;
  v64(v129, v61, v63);
  v67 = v123;
  sub_18E249148(v66, v123, type metadata accessor for ServerConfigurationAssetContents);
  v68 = v124;
  sub_18E249148(v67, v124, type metadata accessor for ServerConfigurationAssetContents);

  v69 = v125;
  sub_18E434DA4(0, 0, 1, v68, v120, v65 | 0x8000000000000000, v125 & 1, v127);
  sub_18E2491F8(v67, type metadata accessor for ServerConfigurationAssetContents);
  if (v69)
  {
    v70 = v132;
    sub_18E204B54();
    if (v70)
    {
      sub_18E1E8EEC(v127, &qword_1EABE1BD0, &qword_18E4E3970);
      sub_18E2491F8(v66, type metadata accessor for ServerConfigurationAssetContents);
      (v121)(v136, v63);
      return;
    }

    v132 = 0;
  }

  v80 = v136;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v81 = sub_18E44E83C();
  sub_18E1C95EC(v81, qword_1ED6A9870);
  v82 = v126;
  v119(v126, v80, v63);
  sub_18E43E328(v5, &v134);
  v83 = sub_18E44E80C();
  v84 = v63;
  v85 = sub_18E44EE2C();
  if (os_log_type_enabled(v83, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v134 = v87;
    *v86 = 136315394;
    v88 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v88 || (v89 = *(v5 + 200), v90 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
    {
      v91 = v130;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v131 = v93;
      v91 = v94;
    }

    sub_18E2CF498(v5);
    v95 = sub_18E1C9624(v131, v91, &v134);

    *(v86 + 4) = v95;
    *(v86 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0]);
    v96 = v126;
    v97 = v128;
    v98 = sub_18E44F39C();
    v100 = v99;
    v101 = v96;
    v102 = v121;
    (v121)(v101, v97);
    v103 = sub_18E1C9624(v98, v100, &v134);

    *(v86 + 14) = v103;
    _os_log_impl(&dword_18E1C1000, v83, v85, "fetchLockedAsset for %s successfully returning asset from URL: %s", v86, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v87, -1, -1);
    MEMORY[0x193ACD400](v86, -1, -1);

    sub_18E2491F8(v129, type metadata accessor for ServerConfigurationAssetContents);
    v102(v136, v97);
  }

  else
  {
    sub_18E2CF498(v5);

    v92 = v121;
    (v121)(v82, v84);
    sub_18E2491F8(v66, type metadata accessor for ServerConfigurationAssetContents);
    v92(v80, v84);
  }
}

void sub_18E41B2A0(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v125 = a2;
  v127 = a3;
  v7 = type metadata accessor for TokenOutputDenyListAssetContents(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v124 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v123 = &v118 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v118 - v13;
  v14 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v118 - v16;
  v18 = sub_18E44E46C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_18E44E54C();
  v133 = *(v23 - 8);
  v24 = v133[8];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v118 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v136 = &v118 - v32;
  v131 = *(v5 + 32);
  v33 = *(v5 + 40);
  v34 = *(v5 + 56);
  v132 = v4;
  v130 = v33;
  v128 = v30;
  v126 = v35;
  v122 = a1;
  if (v34)
  {
    v36 = *MEMORY[0x1E6968F58];
    v121 = v19;
    v37 = *(v19 + 104);
    v37(v22, v36, v18);
    sub_18E201DC8(v17, 1, 1, v23);
    sub_18E44E51C();
    v38 = *(v5 + 200);
    v39 = *(v5 + 208);
    v119 = v5;
    v40 = v38 == 0x636972656E6567 && v39 == 0xE700000000000000;
    if (v40 || (sub_18E44F3CC() & 1) != 0)
    {
      v41 = v130;

      v42 = v131;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v41 = v59;
    }

    v134 = v42;
    v135 = v41;
    v37(v22, *MEMORY[0x1E6968F70], v18);
    sub_18E24D39C();
    v60 = v136;
    sub_18E44E53C();
    (*(v121 + 8))(v22, v18);
    v61 = v60;

    v62 = v133;
    v63 = v128;
    v121 = v133[1];
    (v121)(v29, v128);
    v120 = sub_18E44E9AC();
    v64 = v62[2];
    v5 = v119;
  }

  else
  {
    v118 = v31;
    v43 = *(v5 + 112);
    v44 = *(v5 + 120);
    v45 = *(v5 + 128);
    v46 = *(a1 + 16);
    v121 = *(v5 + 96);
    if (v121)
    {

      v47 = v44;
      v48 = v45;
    }

    else
    {
      v47 = v44;
      v44 = 0xD000000000000016;
      v48 = 0x800000018E462F20;
    }

    v49 = v45;

    v50 = sub_18E248038(v44, v48, v46);

    if (!v50)
    {
      v136 = v45;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v51 = 0xD000000000000016;
      v52 = sub_18E44E83C();
      sub_18E1C95EC(v52, qword_1ED6A9870);
      sub_18E299690(v5, &v134);
      sub_18E299690(v5, &v134);
      v53 = sub_18E44E80C();
      v54 = sub_18E44EE0C();
      v55 = v47;
      if (os_log_type_enabled(v53, v54))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v134 = v57;
        *v56 = 136315394;
        v120 = v55;
        if (v121)
        {

          v58 = v136;

          v51 = v55;
        }

        else
        {
          v58 = 0x800000018E462F20;
        }

        sub_18E24FF48(v5);

        v106 = sub_18E1C9624(v51, v58, &v134);

        *(v56 + 4) = v106;
        *(v56 + 12) = 2080;
        v107 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v107 || (v108 = *(v5 + 200), v109 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
        {
          v110 = v130;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v131 = v111;
          v110 = v112;
        }

        v55 = v120;
        sub_18E24FF48(v5);
        v113 = sub_18E1C9624(v131, v110, &v134);

        *(v56 + 14) = v113;
        _os_log_impl(&dword_18E1C1000, v53, v54, "Failed to find token for asset set: %s for %s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v57, -1, -1);
        MEMORY[0x193ACD400](v56, -1, -1);
      }

      else
      {

        sub_18E24FF48(v5);
        sub_18E24FF48(v5);
      }

      v134 = 0;
      v135 = 0xE000000000000000;
      sub_18E44EFFC();

      v114 = v136;
      if (v121)
      {
      }

      else
      {
        v114 = 0x800000018E462F20;
        v55 = 0xD000000000000016;
      }

      v134 = v55;
      v135 = v114;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v115 = v134;
      v116 = v135;
      sub_18E3FDB10();
      swift_allocError();
      *v117 = v115;
      *(v117 + 8) = v116;
      *(v117 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v121)
    {
    }

    else
    {
      v47 = 0xD000000000000016;
      v49 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v71 = v50;

    v72 = sub_18E42A0A4();
    v73 = v71;
    v74 = v132;
    v75 = sub_18E424758(v47, v49, v72, v50);
    if (v74)
    {

      return;
    }

    v76 = *(v75 + 16);
    v77 = v118;
    sub_18E24852C();
    v79 = v78;

    v132 = 0;
    v119 = v133[2];
    v104 = v136;
    v63 = v128;
    v119(v136, v77, v128);
    v105 = [v79 metadata];
    v120 = sub_18E44E98C();

    v61 = v104;

    v121 = v133[1];
    (v121)(v77, v63);
    v64 = v119;
  }

  v65 = v122;
  v66 = v129;
  v119 = v64;
  v64(v129, v61, v63);
  v67 = v123;
  sub_18E249148(v66, v123, type metadata accessor for TokenOutputDenyListAssetContents);
  v68 = v124;
  sub_18E249148(v67, v124, type metadata accessor for TokenOutputDenyListAssetContents);

  v69 = v125;
  sub_18E435218(0, 0, 1, v68, v120, v65 | 0x8000000000000000, v125 & 1, v127);
  sub_18E2491F8(v67, type metadata accessor for TokenOutputDenyListAssetContents);
  if (v69)
  {
    v70 = v132;
    sub_18E204B54();
    if (v70)
    {
      sub_18E1E8EEC(v127, &qword_1EABE1D48, &qword_18E4E3900);
      sub_18E2491F8(v66, type metadata accessor for TokenOutputDenyListAssetContents);
      (v121)(v136, v63);
      return;
    }

    v132 = 0;
  }

  v80 = v136;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v81 = sub_18E44E83C();
  sub_18E1C95EC(v81, qword_1ED6A9870);
  v82 = v126;
  v119(v126, v80, v63);
  sub_18E299690(v5, &v134);
  v83 = sub_18E44E80C();
  v84 = v63;
  v85 = sub_18E44EE2C();
  if (os_log_type_enabled(v83, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v134 = v87;
    *v86 = 136315394;
    v88 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v88 || (v89 = *(v5 + 200), v90 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
    {
      v91 = v130;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v131 = v93;
      v91 = v94;
    }

    sub_18E24FF48(v5);
    v95 = sub_18E1C9624(v131, v91, &v134);

    *(v86 + 4) = v95;
    *(v86 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0]);
    v96 = v126;
    v97 = v128;
    v98 = sub_18E44F39C();
    v100 = v99;
    v101 = v96;
    v102 = v121;
    (v121)(v101, v97);
    v103 = sub_18E1C9624(v98, v100, &v134);

    *(v86 + 14) = v103;
    _os_log_impl(&dword_18E1C1000, v83, v85, "fetchLockedAsset for %s successfully returning asset from URL: %s", v86, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v87, -1, -1);
    MEMORY[0x193ACD400](v86, -1, -1);

    sub_18E2491F8(v129, type metadata accessor for TokenOutputDenyListAssetContents);
    v102(v136, v97);
  }

  else
  {
    sub_18E24FF48(v5);

    v92 = v121;
    (v121)(v82, v84);
    sub_18E2491F8(v66, type metadata accessor for TokenOutputDenyListAssetContents);
    v92(v80, v84);
  }
}

void sub_18E41C1F8(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v125 = a2;
  v127 = a3;
  v7 = type metadata accessor for EmbeddingPreprocessorAssetContents(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v124 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v123 = &v118 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v118 - v13;
  v14 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v118 - v16;
  v18 = sub_18E44E46C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_18E44E54C();
  v133 = *(v23 - 8);
  v24 = v133[8];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v118 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v136 = &v118 - v32;
  v131 = *(v5 + 32);
  v33 = *(v5 + 40);
  v34 = *(v5 + 56);
  v132 = v4;
  v130 = v33;
  v128 = v30;
  v126 = v35;
  v122 = a1;
  if (v34)
  {
    v36 = *MEMORY[0x1E6968F58];
    v121 = v19;
    v37 = *(v19 + 104);
    v37(v22, v36, v18);
    sub_18E201DC8(v17, 1, 1, v23);
    sub_18E44E51C();
    v38 = *(v5 + 200);
    v39 = *(v5 + 208);
    v119 = v5;
    v40 = v38 == 0x636972656E6567 && v39 == 0xE700000000000000;
    if (v40 || (sub_18E44F3CC() & 1) != 0)
    {
      v41 = v130;

      v42 = v131;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v41 = v59;
    }

    v134 = v42;
    v135 = v41;
    v37(v22, *MEMORY[0x1E6968F70], v18);
    sub_18E24D39C();
    v60 = v136;
    sub_18E44E53C();
    (*(v121 + 8))(v22, v18);
    v61 = v60;

    v62 = v133;
    v63 = v128;
    v121 = v133[1];
    (v121)(v29, v128);
    v120 = sub_18E44E9AC();
    v64 = v62[2];
    v5 = v119;
  }

  else
  {
    v118 = v31;
    v43 = *(v5 + 112);
    v44 = *(v5 + 120);
    v45 = *(v5 + 128);
    v46 = *(a1 + 16);
    v121 = *(v5 + 96);
    if (v121)
    {

      v47 = v44;
      v48 = v45;
    }

    else
    {
      v47 = v44;
      v44 = 0xD000000000000016;
      v48 = 0x800000018E462F20;
    }

    v49 = v45;

    v50 = sub_18E248038(v44, v48, v46);

    if (!v50)
    {
      v136 = v45;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v51 = 0xD000000000000016;
      v52 = sub_18E44E83C();
      sub_18E1C95EC(v52, qword_1ED6A9870);
      sub_18E43ECB8(v5, &v134);
      sub_18E43ECB8(v5, &v134);
      v53 = sub_18E44E80C();
      v54 = sub_18E44EE0C();
      v55 = v47;
      if (os_log_type_enabled(v53, v54))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v134 = v57;
        *v56 = 136315394;
        v120 = v55;
        if (v121)
        {

          v58 = v136;

          v51 = v55;
        }

        else
        {
          v58 = 0x800000018E462F20;
        }

        sub_18E2CFA50(v5);

        v106 = sub_18E1C9624(v51, v58, &v134);

        *(v56 + 4) = v106;
        *(v56 + 12) = 2080;
        v107 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v107 || (v108 = *(v5 + 200), v109 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
        {
          v110 = v130;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v131 = v111;
          v110 = v112;
        }

        v55 = v120;
        sub_18E2CFA50(v5);
        v113 = sub_18E1C9624(v131, v110, &v134);

        *(v56 + 14) = v113;
        _os_log_impl(&dword_18E1C1000, v53, v54, "Failed to find token for asset set: %s for %s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v57, -1, -1);
        MEMORY[0x193ACD400](v56, -1, -1);
      }

      else
      {

        sub_18E2CFA50(v5);
        sub_18E2CFA50(v5);
      }

      v134 = 0;
      v135 = 0xE000000000000000;
      sub_18E44EFFC();

      v114 = v136;
      if (v121)
      {
      }

      else
      {
        v114 = 0x800000018E462F20;
        v55 = 0xD000000000000016;
      }

      v134 = v55;
      v135 = v114;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v115 = v134;
      v116 = v135;
      sub_18E3FDB10();
      swift_allocError();
      *v117 = v115;
      *(v117 + 8) = v116;
      *(v117 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v121)
    {
    }

    else
    {
      v47 = 0xD000000000000016;
      v49 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v71 = v50;

    v72 = sub_18E42A404();
    v73 = v71;
    v74 = v132;
    v75 = sub_18E424758(v47, v49, v72, v50);
    if (v74)
    {

      return;
    }

    v76 = *(v75 + 16);
    v77 = v118;
    sub_18E24852C();
    v79 = v78;

    v132 = 0;
    v119 = v133[2];
    v104 = v136;
    v63 = v128;
    v119(v136, v77, v128);
    v105 = [v79 metadata];
    v120 = sub_18E44E98C();

    v61 = v104;

    v121 = v133[1];
    (v121)(v77, v63);
    v64 = v119;
  }

  v65 = v122;
  v66 = v129;
  v119 = v64;
  v64(v129, v61, v63);
  v67 = v123;
  sub_18E249148(v66, v123, type metadata accessor for EmbeddingPreprocessorAssetContents);
  v68 = v124;
  sub_18E249148(v67, v124, type metadata accessor for EmbeddingPreprocessorAssetContents);

  v69 = v125;
  sub_18E43568C(0, 0, 1, v68, v120, v65 | 0x8000000000000000, v125 & 1, v127);
  sub_18E2491F8(v67, type metadata accessor for EmbeddingPreprocessorAssetContents);
  if (v69)
  {
    v70 = v132;
    sub_18E204B54();
    if (v70)
    {
      sub_18E1E8EEC(v127, &qword_1EABE1978, &qword_18E4E3A30);
      sub_18E2491F8(v66, type metadata accessor for EmbeddingPreprocessorAssetContents);
      (v121)(v136, v63);
      return;
    }

    v132 = 0;
  }

  v80 = v136;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v81 = sub_18E44E83C();
  sub_18E1C95EC(v81, qword_1ED6A9870);
  v82 = v126;
  v119(v126, v80, v63);
  sub_18E43ECB8(v5, &v134);
  v83 = sub_18E44E80C();
  v84 = v63;
  v85 = sub_18E44EE2C();
  if (os_log_type_enabled(v83, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v134 = v87;
    *v86 = 136315394;
    v88 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v88 || (v89 = *(v5 + 200), v90 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
    {
      v91 = v130;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v131 = v93;
      v91 = v94;
    }

    sub_18E2CFA50(v5);
    v95 = sub_18E1C9624(v131, v91, &v134);

    *(v86 + 4) = v95;
    *(v86 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0]);
    v96 = v126;
    v97 = v128;
    v98 = sub_18E44F39C();
    v100 = v99;
    v101 = v96;
    v102 = v121;
    (v121)(v101, v97);
    v103 = sub_18E1C9624(v98, v100, &v134);

    *(v86 + 14) = v103;
    _os_log_impl(&dword_18E1C1000, v83, v85, "fetchLockedAsset for %s successfully returning asset from URL: %s", v86, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v87, -1, -1);
    MEMORY[0x193ACD400](v86, -1, -1);

    sub_18E2491F8(v129, type metadata accessor for EmbeddingPreprocessorAssetContents);
    v102(v136, v97);
  }

  else
  {
    sub_18E2CFA50(v5);

    v92 = v121;
    (v121)(v82, v84);
    sub_18E2491F8(v66, type metadata accessor for EmbeddingPreprocessorAssetContents);
    v92(v80, v84);
  }
}

void sub_18E41D150(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v125 = a2;
  v127 = a3;
  v7 = type metadata accessor for TokenOutputRetainListAssetContents(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v124 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v123 = &v118 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v118 - v13;
  v14 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v118 - v16;
  v18 = sub_18E44E46C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_18E44E54C();
  v133 = *(v23 - 8);
  v24 = v133[8];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v118 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v136 = &v118 - v32;
  v131 = *(v5 + 32);
  v33 = *(v5 + 40);
  v34 = *(v5 + 56);
  v132 = v4;
  v130 = v33;
  v128 = v30;
  v126 = v35;
  v122 = a1;
  if (v34)
  {
    v36 = *MEMORY[0x1E6968F58];
    v121 = v19;
    v37 = *(v19 + 104);
    v37(v22, v36, v18);
    sub_18E201DC8(v17, 1, 1, v23);
    sub_18E44E51C();
    v38 = *(v5 + 200);
    v39 = *(v5 + 208);
    v119 = v5;
    v40 = v38 == 0x636972656E6567 && v39 == 0xE700000000000000;
    if (v40 || (sub_18E44F3CC() & 1) != 0)
    {
      v41 = v130;

      v42 = v131;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v41 = v59;
    }

    v134 = v42;
    v135 = v41;
    v37(v22, *MEMORY[0x1E6968F70], v18);
    sub_18E24D39C();
    v60 = v136;
    sub_18E44E53C();
    (*(v121 + 8))(v22, v18);
    v61 = v60;

    v62 = v133;
    v63 = v128;
    v121 = v133[1];
    (v121)(v29, v128);
    v120 = sub_18E44E9AC();
    v64 = v62[2];
    v5 = v119;
  }

  else
  {
    v118 = v31;
    v43 = *(v5 + 112);
    v44 = *(v5 + 120);
    v45 = *(v5 + 128);
    v46 = *(a1 + 16);
    v121 = *(v5 + 96);
    if (v121)
    {

      v47 = v44;
      v48 = v45;
    }

    else
    {
      v47 = v44;
      v44 = 0xD000000000000016;
      v48 = 0x800000018E462F20;
    }

    v49 = v45;

    v50 = sub_18E248038(v44, v48, v46);

    if (!v50)
    {
      v136 = v45;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v51 = 0xD000000000000016;
      v52 = sub_18E44E83C();
      sub_18E1C95EC(v52, qword_1ED6A9870);
      sub_18E43DD80(v5, &v134);
      sub_18E43DD80(v5, &v134);
      v53 = sub_18E44E80C();
      v54 = sub_18E44EE0C();
      v55 = v47;
      if (os_log_type_enabled(v53, v54))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v134 = v57;
        *v56 = 136315394;
        v120 = v55;
        if (v121)
        {

          v58 = v136;

          v51 = v55;
        }

        else
        {
          v58 = 0x800000018E462F20;
        }

        sub_18E2CF1F8(v5);

        v106 = sub_18E1C9624(v51, v58, &v134);

        *(v56 + 4) = v106;
        *(v56 + 12) = 2080;
        v107 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v107 || (v108 = *(v5 + 200), v109 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
        {
          v110 = v130;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v131 = v111;
          v110 = v112;
        }

        v55 = v120;
        sub_18E2CF1F8(v5);
        v113 = sub_18E1C9624(v131, v110, &v134);

        *(v56 + 14) = v113;
        _os_log_impl(&dword_18E1C1000, v53, v54, "Failed to find token for asset set: %s for %s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v57, -1, -1);
        MEMORY[0x193ACD400](v56, -1, -1);
      }

      else
      {

        sub_18E2CF1F8(v5);
        sub_18E2CF1F8(v5);
      }

      v134 = 0;
      v135 = 0xE000000000000000;
      sub_18E44EFFC();

      v114 = v136;
      if (v121)
      {
      }

      else
      {
        v114 = 0x800000018E462F20;
        v55 = 0xD000000000000016;
      }

      v134 = v55;
      v135 = v114;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v115 = v134;
      v116 = v135;
      sub_18E3FDB10();
      swift_allocError();
      *v117 = v115;
      *(v117 + 8) = v116;
      *(v117 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v121)
    {
    }

    else
    {
      v47 = 0xD000000000000016;
      v49 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v71 = v50;

    v72 = sub_18E42A764();
    v73 = v71;
    v74 = v132;
    v75 = sub_18E424758(v47, v49, v72, v50);
    if (v74)
    {

      return;
    }

    v76 = *(v75 + 16);
    v77 = v118;
    sub_18E24852C();
    v79 = v78;

    v132 = 0;
    v119 = v133[2];
    v104 = v136;
    v63 = v128;
    v119(v136, v77, v128);
    v105 = [v79 metadata];
    v120 = sub_18E44E98C();

    v61 = v104;

    v121 = v133[1];
    (v121)(v77, v63);
    v64 = v119;
  }

  v65 = v122;
  v66 = v129;
  v119 = v64;
  v64(v129, v61, v63);
  v67 = v123;
  sub_18E249148(v66, v123, type metadata accessor for TokenOutputRetainListAssetContents);
  v68 = v124;
  sub_18E249148(v67, v124, type metadata accessor for TokenOutputRetainListAssetContents);

  v69 = v125;
  sub_18E435B00(0, 0, 1, v68, v120, v65 | 0x8000000000000000, v125 & 1, v127);
  sub_18E2491F8(v67, type metadata accessor for TokenOutputRetainListAssetContents);
  if (v69)
  {
    v70 = v132;
    sub_18E204B54();
    if (v70)
    {
      sub_18E1E8EEC(v127, &qword_1EABE1D90, &qword_18E4E38F0);
      sub_18E2491F8(v66, type metadata accessor for TokenOutputRetainListAssetContents);
      (v121)(v136, v63);
      return;
    }

    v132 = 0;
  }

  v80 = v136;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v81 = sub_18E44E83C();
  sub_18E1C95EC(v81, qword_1ED6A9870);
  v82 = v126;
  v119(v126, v80, v63);
  sub_18E43DD80(v5, &v134);
  v83 = sub_18E44E80C();
  v84 = v63;
  v85 = sub_18E44EE2C();
  if (os_log_type_enabled(v83, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v134 = v87;
    *v86 = 136315394;
    v88 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v88 || (v89 = *(v5 + 200), v90 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
    {
      v91 = v130;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v131 = v93;
      v91 = v94;
    }

    sub_18E2CF1F8(v5);
    v95 = sub_18E1C9624(v131, v91, &v134);

    *(v86 + 4) = v95;
    *(v86 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0]);
    v96 = v126;
    v97 = v128;
    v98 = sub_18E44F39C();
    v100 = v99;
    v101 = v96;
    v102 = v121;
    (v121)(v101, v97);
    v103 = sub_18E1C9624(v98, v100, &v134);

    *(v86 + 14) = v103;
    _os_log_impl(&dword_18E1C1000, v83, v85, "fetchLockedAsset for %s successfully returning asset from URL: %s", v86, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v87, -1, -1);
    MEMORY[0x193ACD400](v86, -1, -1);

    sub_18E2491F8(v129, type metadata accessor for TokenOutputRetainListAssetContents);
    v102(v136, v97);
  }

  else
  {
    sub_18E2CF1F8(v5);

    v92 = v121;
    (v121)(v82, v84);
    sub_18E2491F8(v66, type metadata accessor for TokenOutputRetainListAssetContents);
    v92(v80, v84);
  }
}

void sub_18E41E0A8(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v125 = a2;
  v127 = a3;
  v7 = type metadata accessor for HandwritingSynthesizerAssetContents(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v124 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v123 = &v118 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v118 - v13;
  v14 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v118 - v16;
  v18 = sub_18E44E46C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_18E44E54C();
  v133 = *(v23 - 8);
  v24 = v133[8];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v118 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v136 = &v118 - v32;
  v131 = *(v5 + 32);
  v33 = *(v5 + 40);
  v34 = *(v5 + 56);
  v132 = v4;
  v130 = v33;
  v128 = v30;
  v126 = v35;
  v122 = a1;
  if (v34)
  {
    v36 = *MEMORY[0x1E6968F58];
    v121 = v19;
    v37 = *(v19 + 104);
    v37(v22, v36, v18);
    sub_18E201DC8(v17, 1, 1, v23);
    sub_18E44E51C();
    v38 = *(v5 + 200);
    v39 = *(v5 + 208);
    v119 = v5;
    v40 = v38 == 0x636972656E6567 && v39 == 0xE700000000000000;
    if (v40 || (sub_18E44F3CC() & 1) != 0)
    {
      v41 = v130;

      v42 = v131;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v41 = v59;
    }

    v134 = v42;
    v135 = v41;
    v37(v22, *MEMORY[0x1E6968F70], v18);
    sub_18E24D39C();
    v60 = v136;
    sub_18E44E53C();
    (*(v121 + 8))(v22, v18);
    v61 = v60;

    v62 = v133;
    v63 = v128;
    v121 = v133[1];
    (v121)(v29, v128);
    v120 = sub_18E44E9AC();
    v64 = v62[2];
    v5 = v119;
  }

  else
  {
    v118 = v31;
    v43 = *(v5 + 112);
    v44 = *(v5 + 120);
    v45 = *(v5 + 128);
    v46 = *(a1 + 16);
    v121 = *(v5 + 96);
    if (v121)
    {

      v47 = v44;
      v48 = v45;
    }

    else
    {
      v47 = v44;
      v44 = 0xD000000000000016;
      v48 = 0x800000018E462F20;
    }

    v49 = v45;

    v50 = sub_18E248038(v44, v48, v46);

    if (!v50)
    {
      v136 = v45;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v51 = 0xD000000000000016;
      v52 = sub_18E44E83C();
      sub_18E1C95EC(v52, qword_1ED6A9870);
      sub_18E43EBEC(v5, &v134);
      sub_18E43EBEC(v5, &v134);
      v53 = sub_18E44E80C();
      v54 = sub_18E44EE0C();
      v55 = v47;
      if (os_log_type_enabled(v53, v54))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v134 = v57;
        *v56 = 136315394;
        v120 = v55;
        if (v121)
        {

          v58 = v136;

          v51 = v55;
        }

        else
        {
          v58 = 0x800000018E462F20;
        }

        sub_18E2CF9F0(v5);

        v106 = sub_18E1C9624(v51, v58, &v134);

        *(v56 + 4) = v106;
        *(v56 + 12) = 2080;
        v107 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v107 || (v108 = *(v5 + 200), v109 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
        {
          v110 = v130;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v131 = v111;
          v110 = v112;
        }

        v55 = v120;
        sub_18E2CF9F0(v5);
        v113 = sub_18E1C9624(v131, v110, &v134);

        *(v56 + 14) = v113;
        _os_log_impl(&dword_18E1C1000, v53, v54, "Failed to find token for asset set: %s for %s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v57, -1, -1);
        MEMORY[0x193ACD400](v56, -1, -1);
      }

      else
      {

        sub_18E2CF9F0(v5);
        sub_18E2CF9F0(v5);
      }

      v134 = 0;
      v135 = 0xE000000000000000;
      sub_18E44EFFC();

      v114 = v136;
      if (v121)
      {
      }

      else
      {
        v114 = 0x800000018E462F20;
        v55 = 0xD000000000000016;
      }

      v134 = v55;
      v135 = v114;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v115 = v134;
      v116 = v135;
      sub_18E3FDB10();
      swift_allocError();
      *v117 = v115;
      *(v117 + 8) = v116;
      *(v117 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v121)
    {
    }

    else
    {
      v47 = 0xD000000000000016;
      v49 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v71 = v50;

    v72 = sub_18E42AAC4();
    v73 = v71;
    v74 = v132;
    v75 = sub_18E424758(v47, v49, v72, v50);
    if (v74)
    {

      return;
    }

    v76 = *(v75 + 16);
    v77 = v118;
    sub_18E24852C();
    v79 = v78;

    v132 = 0;
    v119 = v133[2];
    v104 = v136;
    v63 = v128;
    v119(v136, v77, v128);
    v105 = [v79 metadata];
    v120 = sub_18E44E98C();

    v61 = v104;

    v121 = v133[1];
    (v121)(v77, v63);
    v64 = v119;
  }

  v65 = v122;
  v66 = v129;
  v119 = v64;
  v64(v129, v61, v63);
  v67 = v123;
  sub_18E249148(v66, v123, type metadata accessor for HandwritingSynthesizerAssetContents);
  v68 = v124;
  sub_18E249148(v67, v124, type metadata accessor for HandwritingSynthesizerAssetContents);

  v69 = v125;
  sub_18E435F74(0, 0, 1, v68, v120, v65 | 0x8000000000000000, v125 & 1, v127);
  sub_18E2491F8(v67, type metadata accessor for HandwritingSynthesizerAssetContents);
  if (v69)
  {
    v70 = v132;
    sub_18E204B54();
    if (v70)
    {
      sub_18E1E8EEC(v127, &qword_1EABE19B0, &qword_18E4A0AD0);
      sub_18E2491F8(v66, type metadata accessor for HandwritingSynthesizerAssetContents);
      (v121)(v136, v63);
      return;
    }

    v132 = 0;
  }

  v80 = v136;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v81 = sub_18E44E83C();
  sub_18E1C95EC(v81, qword_1ED6A9870);
  v82 = v126;
  v119(v126, v80, v63);
  sub_18E43EBEC(v5, &v134);
  v83 = sub_18E44E80C();
  v84 = v63;
  v85 = sub_18E44EE2C();
  if (os_log_type_enabled(v83, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v134 = v87;
    *v86 = 136315394;
    v88 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v88 || (v89 = *(v5 + 200), v90 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
    {
      v91 = v130;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v131 = v93;
      v91 = v94;
    }

    sub_18E2CF9F0(v5);
    v95 = sub_18E1C9624(v131, v91, &v134);

    *(v86 + 4) = v95;
    *(v86 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0]);
    v96 = v126;
    v97 = v128;
    v98 = sub_18E44F39C();
    v100 = v99;
    v101 = v96;
    v102 = v121;
    (v121)(v101, v97);
    v103 = sub_18E1C9624(v98, v100, &v134);

    *(v86 + 14) = v103;
    _os_log_impl(&dword_18E1C1000, v83, v85, "fetchLockedAsset for %s successfully returning asset from URL: %s", v86, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v87, -1, -1);
    MEMORY[0x193ACD400](v86, -1, -1);

    sub_18E2491F8(v129, type metadata accessor for HandwritingSynthesizerAssetContents);
    v102(v136, v97);
  }

  else
  {
    sub_18E2CF9F0(v5);

    v92 = v121;
    (v121)(v82, v84);
    sub_18E2491F8(v66, type metadata accessor for HandwritingSynthesizerAssetContents);
    v92(v80, v84);
  }
}

void sub_18E41F000(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v125 = a2;
  v127 = a3;
  v7 = type metadata accessor for ImageSpatialPhotosReliveAssetContents(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v124 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v123 = &v118 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v118 - v13;
  v14 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v118 - v16;
  v18 = sub_18E44E46C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_18E44E54C();
  v133 = *(v23 - 8);
  v24 = v133[8];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v118 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v136 = &v118 - v32;
  v131 = *(v5 + 32);
  v33 = *(v5 + 40);
  v34 = *(v5 + 56);
  v132 = v4;
  v130 = v33;
  v128 = v30;
  v126 = v35;
  v122 = a1;
  if (v34)
  {
    v36 = *MEMORY[0x1E6968F58];
    v121 = v19;
    v37 = *(v19 + 104);
    v37(v22, v36, v18);
    sub_18E201DC8(v17, 1, 1, v23);
    sub_18E44E51C();
    v38 = *(v5 + 200);
    v39 = *(v5 + 208);
    v119 = v5;
    v40 = v38 == 0x636972656E6567 && v39 == 0xE700000000000000;
    if (v40 || (sub_18E44F3CC() & 1) != 0)
    {
      v41 = v130;

      v42 = v131;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v41 = v59;
    }

    v134 = v42;
    v135 = v41;
    v37(v22, *MEMORY[0x1E6968F70], v18);
    sub_18E24D39C();
    v60 = v136;
    sub_18E44E53C();
    (*(v121 + 8))(v22, v18);
    v61 = v60;

    v62 = v133;
    v63 = v128;
    v121 = v133[1];
    (v121)(v29, v128);
    v120 = sub_18E44E9AC();
    v64 = v62[2];
    v5 = v119;
  }

  else
  {
    v118 = v31;
    v43 = *(v5 + 112);
    v44 = *(v5 + 120);
    v45 = *(v5 + 128);
    v46 = *(a1 + 16);
    v121 = *(v5 + 96);
    if (v121)
    {

      v47 = v44;
      v48 = v45;
    }

    else
    {
      v47 = v44;
      v44 = 0xD000000000000016;
      v48 = 0x800000018E462F20;
    }

    v49 = v45;

    v50 = sub_18E248038(v44, v48, v46);

    if (!v50)
    {
      v136 = v45;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v51 = 0xD000000000000016;
      v52 = sub_18E44E83C();
      sub_18E1C95EC(v52, qword_1ED6A9870);
      sub_18E43E7F0(v5, &v134);
      sub_18E43E7F0(v5, &v134);
      v53 = sub_18E44E80C();
      v54 = sub_18E44EE0C();
      v55 = v47;
      if (os_log_type_enabled(v53, v54))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v134 = v57;
        *v56 = 136315394;
        v120 = v55;
        if (v121)
        {

          v58 = v136;

          v51 = v55;
        }

        else
        {
          v58 = 0x800000018E462F20;
        }

        sub_18E2CF810(v5);

        v106 = sub_18E1C9624(v51, v58, &v134);

        *(v56 + 4) = v106;
        *(v56 + 12) = 2080;
        v107 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v107 || (v108 = *(v5 + 200), v109 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
        {
          v110 = v130;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v131 = v111;
          v110 = v112;
        }

        v55 = v120;
        sub_18E2CF810(v5);
        v113 = sub_18E1C9624(v131, v110, &v134);

        *(v56 + 14) = v113;
        _os_log_impl(&dword_18E1C1000, v53, v54, "Failed to find token for asset set: %s for %s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v57, -1, -1);
        MEMORY[0x193ACD400](v56, -1, -1);
      }

      else
      {

        sub_18E2CF810(v5);
        sub_18E2CF810(v5);
      }

      v134 = 0;
      v135 = 0xE000000000000000;
      sub_18E44EFFC();

      v114 = v136;
      if (v121)
      {
      }

      else
      {
        v114 = 0x800000018E462F20;
        v55 = 0xD000000000000016;
      }

      v134 = v55;
      v135 = v114;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v115 = v134;
      v116 = v135;
      sub_18E3FDB10();
      swift_allocError();
      *v117 = v115;
      *(v117 + 8) = v116;
      *(v117 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v121)
    {
    }

    else
    {
      v47 = 0xD000000000000016;
      v49 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v71 = v50;

    v72 = sub_18E42AE24();
    v73 = v71;
    v74 = v132;
    v75 = sub_18E424758(v47, v49, v72, v50);
    if (v74)
    {

      return;
    }

    v76 = *(v75 + 16);
    v77 = v118;
    sub_18E24852C();
    v79 = v78;

    v132 = 0;
    v119 = v133[2];
    v104 = v136;
    v63 = v128;
    v119(v136, v77, v128);
    v105 = [v79 metadata];
    v120 = sub_18E44E98C();

    v61 = v104;

    v121 = v133[1];
    (v121)(v77, v63);
    v64 = v119;
  }

  v65 = v122;
  v66 = v129;
  v119 = v64;
  v64(v129, v61, v63);
  v67 = v123;
  sub_18E249148(v66, v123, type metadata accessor for ImageSpatialPhotosReliveAssetContents);
  v68 = v124;
  sub_18E249148(v67, v124, type metadata accessor for ImageSpatialPhotosReliveAssetContents);

  v69 = v125;
  sub_18E4363E8(0, 0, 1, v68, v120, v65 | 0x8000000000000000, v125 & 1, v127);
  sub_18E2491F8(v67, type metadata accessor for ImageSpatialPhotosReliveAssetContents);
  if (v69)
  {
    v70 = v132;
    sub_18E204B54();
    if (v70)
    {
      sub_18E1E8EEC(v127, &qword_1EABE1AA0, &qword_18E4A1B50);
      sub_18E2491F8(v66, type metadata accessor for ImageSpatialPhotosReliveAssetContents);
      (v121)(v136, v63);
      return;
    }

    v132 = 0;
  }

  v80 = v136;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v81 = sub_18E44E83C();
  sub_18E1C95EC(v81, qword_1ED6A9870);
  v82 = v126;
  v119(v126, v80, v63);
  sub_18E43E7F0(v5, &v134);
  v83 = sub_18E44E80C();
  v84 = v63;
  v85 = sub_18E44EE2C();
  if (os_log_type_enabled(v83, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v134 = v87;
    *v86 = 136315394;
    v88 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v88 || (v89 = *(v5 + 200), v90 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
    {
      v91 = v130;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v131 = v93;
      v91 = v94;
    }

    sub_18E2CF810(v5);
    v95 = sub_18E1C9624(v131, v91, &v134);

    *(v86 + 4) = v95;
    *(v86 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0]);
    v96 = v126;
    v97 = v128;
    v98 = sub_18E44F39C();
    v100 = v99;
    v101 = v96;
    v102 = v121;
    (v121)(v101, v97);
    v103 = sub_18E1C9624(v98, v100, &v134);

    *(v86 + 14) = v103;
    _os_log_impl(&dword_18E1C1000, v83, v85, "fetchLockedAsset for %s successfully returning asset from URL: %s", v86, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v87, -1, -1);
    MEMORY[0x193ACD400](v86, -1, -1);

    sub_18E2491F8(v129, type metadata accessor for ImageSpatialPhotosReliveAssetContents);
    v102(v136, v97);
  }

  else
  {
    sub_18E2CF810(v5);

    v92 = v121;
    (v121)(v82, v84);
    sub_18E2491F8(v66, type metadata accessor for ImageSpatialPhotosReliveAssetContents);
    v92(v80, v84);
  }
}

void sub_18E41FF58(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v125 = a2;
  v127 = a3;
  v7 = type metadata accessor for LLMAdapterMetadataOverrideAssetContents(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v124 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v123 = &v118 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v118 - v13;
  v14 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v118 - v16;
  v18 = sub_18E44E46C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_18E44E54C();
  v133 = *(v23 - 8);
  v24 = v133[8];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v118 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v136 = &v118 - v32;
  v131 = *(v5 + 32);
  v33 = *(v5 + 40);
  v34 = *(v5 + 56);
  v132 = v4;
  v130 = v33;
  v128 = v30;
  v126 = v35;
  v122 = a1;
  if (v34)
  {
    v36 = *MEMORY[0x1E6968F58];
    v121 = v19;
    v37 = *(v19 + 104);
    v37(v22, v36, v18);
    sub_18E201DC8(v17, 1, 1, v23);
    sub_18E44E51C();
    v38 = *(v5 + 200);
    v39 = *(v5 + 208);
    v119 = v5;
    v40 = v38 == 0x636972656E6567 && v39 == 0xE700000000000000;
    if (v40 || (sub_18E44F3CC() & 1) != 0)
    {
      v41 = v130;

      v42 = v131;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v41 = v59;
    }

    v134 = v42;
    v135 = v41;
    v37(v22, *MEMORY[0x1E6968F70], v18);
    sub_18E24D39C();
    v60 = v136;
    sub_18E44E53C();
    (*(v121 + 8))(v22, v18);
    v61 = v60;

    v62 = v133;
    v63 = v128;
    v121 = v133[1];
    (v121)(v29, v128);
    v120 = sub_18E44E9AC();
    v64 = v62[2];
    v5 = v119;
  }

  else
  {
    v118 = v31;
    v43 = *(v5 + 112);
    v44 = *(v5 + 120);
    v45 = *(v5 + 128);
    v46 = *(a1 + 16);
    v121 = *(v5 + 96);
    if (v121)
    {

      v47 = v44;
      v48 = v45;
    }

    else
    {
      v47 = v44;
      v44 = 0xD000000000000016;
      v48 = 0x800000018E462F20;
    }

    v49 = v45;

    v50 = sub_18E248038(v44, v48, v46);

    if (!v50)
    {
      v136 = v45;
      if (qword_1ED6A8AB0 != -1)
      {
        swift_once();
      }

      v51 = 0xD000000000000016;
      v52 = sub_18E44E83C();
      sub_18E1C95EC(v52, qword_1ED6A9870);
      sub_18E43E58C(v5, &v134);
      sub_18E43E58C(v5, &v134);
      v53 = sub_18E44E80C();
      v54 = sub_18E44EE0C();
      v55 = v47;
      if (os_log_type_enabled(v53, v54))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v134 = v57;
        *v56 = 136315394;
        v120 = v55;
        if (v121)
        {

          v58 = v136;

          v51 = v55;
        }

        else
        {
          v58 = 0x800000018E462F20;
        }

        sub_18E2CF678(v5);

        v106 = sub_18E1C9624(v51, v58, &v134);

        *(v56 + 4) = v106;
        *(v56 + 12) = 2080;
        v107 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
        if (v107 || (v108 = *(v5 + 200), v109 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
        {
          v110 = v130;
        }

        else
        {
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v131 = v111;
          v110 = v112;
        }

        v55 = v120;
        sub_18E2CF678(v5);
        v113 = sub_18E1C9624(v131, v110, &v134);

        *(v56 + 14) = v113;
        _os_log_impl(&dword_18E1C1000, v53, v54, "Failed to find token for asset set: %s for %s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v57, -1, -1);
        MEMORY[0x193ACD400](v56, -1, -1);
      }

      else
      {

        sub_18E2CF678(v5);
        sub_18E2CF678(v5);
      }

      v134 = 0;
      v135 = 0xE000000000000000;
      sub_18E44EFFC();

      v114 = v136;
      if (v121)
      {
      }

      else
      {
        v114 = 0x800000018E462F20;
        v55 = 0xD000000000000016;
      }

      v134 = v55;
      v135 = v114;
      MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E477FA0);
      v115 = v134;
      v116 = v135;
      sub_18E3FDB10();
      swift_allocError();
      *v117 = v115;
      *(v117 + 8) = v116;
      *(v117 + 16) = 0;
      swift_willThrow();
      return;
    }

    if (v121)
    {
    }

    else
    {
      v47 = 0xD000000000000016;
      v49 = 0x800000018E462F20;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v71 = v50;

    v72 = sub_18E42B184();
    v73 = v71;
    v74 = v132;
    v75 = sub_18E424758(v47, v49, v72, v50);
    if (v74)
    {

      return;
    }

    v76 = *(v75 + 16);
    v77 = v118;
    sub_18E24852C();
    v79 = v78;

    v132 = 0;
    v119 = v133[2];
    v104 = v136;
    v63 = v128;
    v119(v136, v77, v128);
    v105 = [v79 metadata];
    v120 = sub_18E44E98C();

    v61 = v104;

    v121 = v133[1];
    (v121)(v77, v63);
    v64 = v119;
  }

  v65 = v122;
  v66 = v129;
  v119 = v64;
  v64(v129, v61, v63);
  v67 = v123;
  sub_18E249148(v66, v123, type metadata accessor for LLMAdapterMetadataOverrideAssetContents);
  v68 = v124;
  sub_18E249148(v67, v124, type metadata accessor for LLMAdapterMetadataOverrideAssetContents);

  v69 = v125;
  sub_18E43685C(0, 0, 1, v68, v120, v65 | 0x8000000000000000, v125 & 1, v127);
  sub_18E2491F8(v67, type metadata accessor for LLMAdapterMetadataOverrideAssetContents);
  if (v69)
  {
    v70 = v132;
    sub_18E204B54();
    if (v70)
    {
      sub_18E1E8EEC(v127, &qword_1EABE1B50, &qword_18E4E39A0);
      sub_18E2491F8(v66, type metadata accessor for LLMAdapterMetadataOverrideAssetContents);
      (v121)(v136, v63);
      return;
    }

    v132 = 0;
  }

  v80 = v136;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v81 = sub_18E44E83C();
  sub_18E1C95EC(v81, qword_1ED6A9870);
  v82 = v126;
  v119(v126, v80, v63);
  sub_18E43E58C(v5, &v134);
  v83 = sub_18E44E80C();
  v84 = v63;
  v85 = sub_18E44EE2C();
  if (os_log_type_enabled(v83, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v134 = v87;
    *v86 = 136315394;
    v88 = *(v5 + 200) == 0x636972656E6567 && *(v5 + 208) == 0xE700000000000000;
    if (v88 || (v89 = *(v5 + 200), v90 = *(v5 + 208), (sub_18E44F3CC() & 1) != 0))
    {
      v91 = v130;
    }

    else
    {
      static VariantHelpers.createResourceIdentifier(with:variant:)();
      v131 = v93;
      v91 = v94;
    }

    sub_18E2CF678(v5);
    v95 = sub_18E1C9624(v131, v91, &v134);

    *(v86 + 4) = v95;
    *(v86 + 12) = 2080;
    sub_18E43ADE8(&unk_1ED6A7EF8, MEMORY[0x1E6968FB0]);
    v96 = v126;
    v97 = v128;
    v98 = sub_18E44F39C();
    v100 = v99;
    v101 = v96;
    v102 = v121;
    (v121)(v101, v97);
    v103 = sub_18E1C9624(v98, v100, &v134);

    *(v86 + 14) = v103;
    _os_log_impl(&dword_18E1C1000, v83, v85, "fetchLockedAsset for %s successfully returning asset from URL: %s", v86, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ACD400](v87, -1, -1);
    MEMORY[0x193ACD400](v86, -1, -1);

    sub_18E2491F8(v129, type metadata accessor for LLMAdapterMetadataOverrideAssetContents);
    v102(v136, v97);
  }

  else
  {
    sub_18E2CF678(v5);

    v92 = v121;
    (v121)(v82, v84);
    sub_18E2491F8(v66, type metadata accessor for LLMAdapterMetadataOverrideAssetContents);
    v92(v80, v84);
  }
}

void AssetBackedResource<>.fetchLockedAsset(with:options:)()
{
  sub_18E1C62A0();
  v202 = v1;
  v173 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v189 = v9;
  v186 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v187 = swift_getAssociatedTypeWitness();
  v11 = sub_18E1C4EAC(v187);
  v191 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_18E1C64E0();
  v183 = v15;
  MEMORY[0x1EEE9AC00](v16);
  sub_18E1D84B0();
  v190 = v17;
  sub_18E1C5780();
  v188 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_18E1C64E0();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v22);
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v173 - v24;
  v26 = sub_18E2706EC(&qword_1EABE2FE0, &qword_18E49CE00);
  sub_18E1C5B08(v26);
  v28 = *(v27 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v29);
  sub_18E1CAF50();
  sub_18E1E68C4(v30);
  v181 = sub_18E44E46C();
  v31 = sub_18E1C4EAC(v181);
  v180 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_18E1C4EDC();
  v37 = v36 - v35;
  v194 = sub_18E44E54C();
  v38 = sub_18E1C4EAC(v194);
  v192 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_18E1C64E0();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v42);
  sub_18E1C7ED4();
  v44 = MEMORY[0x1EEE9AC00](v43);
  v46 = &v173 - v45;
  MEMORY[0x1EEE9AC00](v44);
  sub_18E1D84B0();
  v193 = v47;
  HIDWORD(v182) = *v8;
  v48 = *(v4 + 8);
  v49 = v6;
  v50 = (*(v48 + 64))(v6, v48);
  v176 = v48;
  if (v50)
  {
    v175 = "enoughStorage";
    v51 = *MEMORY[0x1E6968F58];
    v52 = v180;
    v174 = *(v180 + 13);
    v53 = v181;
    v174(v37, v51, v181);
    sub_18E201DC8(v179, 1, 1, v194);
    sub_18E44E51C();
    v54 = *(v48 + 24);
    v179 = v0;
    v175 = v6;
    v197 = v54(v6, v48);
    v198 = v55;
    v174(v37, *MEMORY[0x1E6968F70], v53);
    sub_18E24D39C();
    v56 = v193;
    v57 = v46;
    sub_18E44E53C();
    (*(v52 + 8))(v37, v53);

    v58 = v192;
    v59 = v194;
    v181 = *(v192 + 8);
    v181(v46, v194);
    v60 = sub_18E44E9AC();
    v61 = *(v58 + 16);
  }

  else
  {
    v181 = v25;
    v180 = v46;
    v73 = *(v189 + 16);
    v74 = v4;
    v75 = *(v4 + 64);
    v76 = v49;
    v77 = sub_18E1D03F8();
    v75(v77);

    v78 = sub_18E1E2000();
    v80 = sub_18E248038(v78, v79, v73);

    if (!v80)
    {
      v194 = v75;
      v179 = v0;
      if (qword_1ED6A8AB0 != -1)
      {
        sub_18E1C6D78();
        swift_once();
      }

      v128 = sub_18E44E83C();
      sub_18E1CE8B4(v128, qword_1ED6A9870);
      v129 = v188;
      v130 = *(v188 + 16);
      sub_18E1EA5AC();
      (v130)(v131);
      v132 = v175;
      sub_18E1EA5AC();
      (v130)(v133);
      v134 = sub_18E44E80C();
      v135 = sub_18E44EE0C();
      if (os_log_type_enabled(v134, v135))
      {
        sub_18E1C9700();
        swift_slowAlloc();
        sub_18E1E2DDC();
        v193 = swift_slowAlloc();
        v195 = v193;
        *v130 = 136315394;
        LODWORD(v192) = v135;
        v136 = sub_18E1CD5EC();
        v194(v136);
        v191 = v134;
        v137 = *(v129 + 8);
        v138 = sub_18E1D5F00();
        v137(v138);
        v139 = v132;
        v140 = v200;
        v141 = v201;

        v142 = sub_18E1C9624(v140, v141, &v195);

        *(v130 + 4) = v142;
        sub_18E224E7C();
        sub_18E1FED54();
        v144 = v143(v49);
        v146 = v145;
        (v137)(v139, v49);
        v147 = sub_18E1C9624(v144, v146, &v195);

        *(v130 + 14) = v147;
        v148 = v191;
        sub_18E1D5C68();
        _os_log_impl(v149, v150, v151, v152, v153, v154);
        swift_arrayDestroy();
        sub_18E1C6164();
        MEMORY[0x193ACD400](v155);
        v156 = v194;
        sub_18E1C6164();
        MEMORY[0x193ACD400](v157);
      }

      else
      {

        v160 = *(v129 + 8);
        v161 = sub_18E1E2E14();
        v160(v161);
        v162 = sub_18E1D5F00();
        v160(v162);
        v156 = v194;
      }

      v197 = 0;
      v198 = 0xE000000000000000;
      sub_18E44EFFC();
      v163 = sub_18E1CD5EC();
      v156(v163);
      v164 = v200;
      v165 = v201;

      v195 = v164;
      v196 = v165;
      sub_18E1C77B0();
      v166 = sub_18E1E682C();
      MEMORY[0x193ACC300](v166);
      v167 = v195;
      v168 = v196;
      sub_18E3FDB10();
      sub_18E1D0098();
      v169 = swift_allocError();
      *v170 = v167;
      v170[1] = v168;
      sub_18E1E3830(v169, v170);
      swift_willThrow();
      goto LABEL_22;
    }

    type metadata accessor for RunningBoardAssertedAssetSet();
    v81 = v80;
    v82 = sub_18E1CD5EC();
    v83(v82);
    v84 = v200;
    v85 = v201;

    v86 = sub_18E1CD5EC();
    v88 = AssetBackedResource.usages.getter(v86, v87);
    v89 = v81;
    v90 = sub_18E424758(v84, v85, v88, v80);
    if (v1)
    {

      goto LABEL_22;
    }

    v91 = *(v90 + 16);
    v92 = v174;
    AssetBackedResource<>.determineAssetDetails(assetSet:)(v174, v91, v76, v74, v173, v93, v94, v95, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, AssociatedTypeWitness);
    v97 = v96;

    v179 = v0;
    v202 = 0;
    v175 = v76;
    v171 = v193;
    v61 = *(v192 + 16);
    v59 = v194;
    (v61)(v193, v92, v194);
    v172 = [v97 metadata];
    v60 = sub_18E44E98C();

    v56 = v171;
    v181 = *(v192 + 8);
    v181(v174, v59);
    v57 = v180;
  }

  v180 = v61;
  (v61)(v57, v56, v59);
  v62 = AssociatedConformanceWitness;
  v63 = v187;
  v64 = swift_getAssociatedConformanceWitness();
  v65 = v190;
  (*(v64 + 24))(v57, v63, v64);
  v66 = swift_checkMetadataState();
  v197 = 0;
  v198 = 0;
  v199 = 1;
  v67 = v183;
  (v191[2].isa)(v183, v65, v63);
  v68 = *(v62 + 128);
  v69 = v189;

  v70 = v67;
  LODWORD(v67) = HIDWORD(v182);
  v68(&v197, v70, v60, v69, HIDWORD(v182), v66, v62);
  v71 = v188;
  if (v67)
  {
    sub_18E204B54();
    sub_18E1E31F4();
    if (v202)
    {
      sub_18E1C82B8(v66);
      (*(v72 + 8))(v186, v66);
      (v191[1].isa)(v190, v63);
      v181(v193, v59);
      goto LABEL_22;
    }
  }

  else
  {
    sub_18E1E31F4();
  }

  v98 = v178;
  v99 = v177;
  if (qword_1ED6A8AB0 != -1)
  {
    sub_18E1C6D78();
    swift_once();
  }

  v100 = sub_18E44E83C();
  sub_18E1CE8B4(v100, qword_1ED6A9870);
  (*(v71 + 16))(v98, v179, v68);
  v101 = v193;
  (v180)(v99, v193, v59);
  v102 = v99;
  v103 = sub_18E44E80C();
  v104 = sub_18E44EE2C();
  if (os_log_type_enabled(v103, v104))
  {
    sub_18E1C9700();
    swift_slowAlloc();
    sub_18E1E2DDC();
    v189 = swift_slowAlloc();
    v197 = v189;
    *v98 = 136315394;
    sub_18E1FED54();
    v105(v68);
    sub_18E221954();
    v106 = *(v71 + 8);
    v107 = sub_18E208090();
    v108(v107);
    v109 = sub_18E1DD5A0();
    v112 = sub_18E1C9624(v109, v110, v111);

    *(v98 + 4) = v112;
    sub_18E224E7C();
    sub_18E21D198();
    sub_18E43ADE8(v113, v114);
    v115 = v194;
    sub_18E44F39C();
    v116 = v181;
    v181(v102, v115);
    v117 = sub_18E1C5BFC();
    v120 = sub_18E1C9624(v117, v118, v119);

    *(v98 + 14) = v120;
    sub_18E1D5C68();
    _os_log_impl(v121, v122, v123, v124, v125, v126);
    swift_arrayDestroy();
    sub_18E1C6164();
    MEMORY[0x193ACD400]();
    v127 = sub_18E1D6214();
    MEMORY[0x193ACD400](v127);

    (v191[1].isa)(v190, v187);
    v116(v193, v115);
  }

  else
  {

    v158 = v194;
    v159 = v181;
    v181(v102, v194);
    (*(v71 + 8))(v98, v68);
    (v191[1].isa)(v190, v63);
    v159(v101, v158);
  }

LABEL_22:
  sub_18E1C6650();
}

void AssetBackedResource<>.subscription.getter()
{
  sub_18E1C575C();
  v2 = v1;
  v4 = *(v3 + 24);
  v4(v17);
  sub_18E202008(v18, v15, &qword_1EABE2FB8, &qword_18E4B0C70);
  sub_18E1FE044(v17);
  if (v18[1])
  {
    v0 = v18[3];
    v10 = v18[2];

    sub_18E1E8EEC(v18, &qword_1EABE2FB8, &qword_18E4B0C70);
  }

  else
  {
    sub_18E1D4480();
    v10 = 0x6E2D726F2D6C6C61;
  }

  v5 = sub_18E1CF9A0();
  v4(v5);
  sub_18E202008(v16, v12, &qword_1EABE2FB8, &qword_18E4B0C70);
  sub_18E1FE044(v15);
  if (v16[1])
  {
    v7 = v16[4];
    v6 = v16[5];

    sub_18E1E8EEC(v16, &qword_1EABE2FB8, &qword_18E4B0C70);
  }

  else
  {
    v6 = 0x800000018E462F20;
    v7 = 0xD000000000000016;
  }

  v8 = sub_18E1CF9A0();
  v4(v8);
  sub_18E202008(v13, v11, &qword_1EABE2FB8, &qword_18E4B0C70);
  sub_18E1FE044(v12);
  if (v13[1])
  {
    v9 = v14;
    sub_18E1E8EEC(v13, &qword_1EABE2FB8, &qword_18E4B0C70);
  }

  else
  {
    v9 = 15;
  }

  sub_18E1D63B4();
  *(v2 + 16) = v10;
  *(v2 + 24) = v0;
  *(v2 + 32) = v7;
  *(v2 + 40) = v6;
  *(v2 + 48) = v9;
  sub_18E1C5544();
}

uint64_t sub_18E421EB0()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

uint64_t sub_18E421FA4()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

uint64_t sub_18E422098()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

uint64_t sub_18E42218C()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

uint64_t sub_18E422248()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

uint64_t sub_18E42233C()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

uint64_t sub_18E422430()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

uint64_t sub_18E422524()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

uint64_t sub_18E422618()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

uint64_t sub_18E42270C()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

uint64_t sub_18E422800()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

uint64_t sub_18E4228F4()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

uint64_t sub_18E4229E8()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

uint64_t sub_18E422ADC()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

uint64_t sub_18E422BD0()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

uint64_t sub_18E422D6C()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

uint64_t sub_18E422E60()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

uint64_t sub_18E422F54()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

uint64_t sub_18E423048()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

uint64_t sub_18E42313C()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

uint64_t sub_18E423230()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

uint64_t sub_18E423324()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

uint64_t sub_18E423418()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

uint64_t sub_18E42350C()
{
  sub_18E1C863C();
  v8 = sub_18E1C2A94(v0, v1, v2, v3, v4, v5, v6, v7, v12, v13);
  memcpy(v8, v9, v10);
  return sub_18E1C882C();
}

void AssetSubscription.status()(_BYTE *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v10 = [objc_opt_self() sharedManager];
  if (sub_18E44EB5C())
  {
    sub_18E1CFFC0();
    v7 = sub_18E44EA8C();
    v8 = sub_18E44EA8C();
    v9 = [v10 downloadStatusForSubscriber:v7 subscriptionName:v8];

    UAFSubscriptionDownloadStatus.assetSubscriptionStatus()(v9, a1);
  }

  else
  {

    *a1 = 6;
  }
}

void static AssetSubscription.== infix(_:_:)()
{
  sub_18E1C575C();
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v11 = *(v1 + 48);
  v12 = *v0 == *v1 && *(v0 + 8) == *(v1 + 8);
  if (v12 || (sub_18E44F3CC() & 1) != 0)
  {
    v13 = v2 == v7 && v4 == v8;
    if (v13 || (sub_18E1DD5A0(), (sub_18E44F3CC() & 1) != 0))
    {
      v14 = v3 == v9 && v5 == v10;
      if (v14 || (sub_18E44F3CC()) && v6 != 15 && v11 != 15)
      {
        sub_18E1E3F98(v6, v11);
      }
    }
  }

  sub_18E1C5544();
}

void UAFSubscriptionDownloadStatus.assetSubscriptionStatus()(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1 >= 8)
  {
    if (qword_1ED6A94F8 != -1)
    {
      sub_18E1C5C20();
    }

    v5 = sub_18E44E83C();
    sub_18E1C95EC(v5, qword_1ED6A98C0);
    v6 = sub_18E44E80C();
    v7 = sub_18E44EE1C();
    if (os_log_type_enabled(v6, v7))
    {
      sub_18E1E2FE8();
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = a1;
      _os_log_impl(&dword_18E1C1000, v6, v7, "SubscriptionManagerProvider: Download status type of: %lu has not been accounted for", v8, 0xCu);
      v9 = sub_18E1D6214();
      MEMORY[0x193ACD400](v9);
    }

    LOBYTE(v4) = 4;
  }

  else
  {
    v4 = 0x807030502010004uLL >> (8 * a1);
  }

  *a2 = v4;
}

uint64_t CatalogErrors.AssetErrors.errorDescription.getter()
{
  v1 = sub_18E44E72C();
  v2 = sub_18E1C5B08(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_18E1C4EDC();
  v5 = sub_18E44EA7C();
  v6 = sub_18E1C5B08(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1C4EDC();
  v9 = sub_18E44EA5C();
  v10 = sub_18E1C5B08(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1C4EDC();
  v13 = *v0;
  v14 = v0[1];
  if (v0[2])
  {
    sub_18E44EA4C();
    sub_18E1C77B0();
  }

  else
  {
    sub_18E44EA4C();
  }

  sub_18E44EA3C();
  sub_18E44EA2C();
  sub_18E44EA3C();
  sub_18E44EA6C();
  sub_18E44E71C();
  sub_18E1CEA7C();
  return sub_18E44EAEC();
}

uint64_t sub_18E423B38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x800000018E4782D0 == a2;
  if (v4 || (sub_18E44F3CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000018E4782F0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_18E44F3CC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_18E423C0C(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_18E423C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E423B38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E423C74(uint64_t a1)
{
  v2 = sub_18E43A180();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E423CB0(uint64_t a1)
{
  v2 = sub_18E43A180();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E423CEC(uint64_t a1)
{
  v2 = sub_18E43A1D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E423D28(uint64_t a1)
{
  v2 = sub_18E43A1D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E423D64(uint64_t a1)
{
  v2 = sub_18E43A228();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E423DA0(uint64_t a1)
{
  v2 = sub_18E43A228();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CatalogErrors.AssetErrors.encode(to:)()
{
  sub_18E1C62A0();
  v39 = v1;
  v4 = v3;
  v5 = sub_18E2706EC(&qword_1EABE9150, &qword_18E4E2D08);
  v6 = sub_18E1C4EAC(v5);
  v35 = v7;
  v36 = v6;
  v9 = *(v8 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1CAF50();
  v34 = v11;
  v12 = sub_18E2706EC(&qword_1EABE9158, &qword_18E4E2D10);
  v13 = sub_18E1C4EAC(v12);
  v32 = v14;
  v33 = v13;
  v16 = *(v15 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v17);
  sub_18E1FF2DC();
  v18 = sub_18E2706EC(&qword_1EABE9160, &qword_18E4E2D18);
  sub_18E1C4EAC(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v32 - v24;
  v26 = *v0;
  v37 = v0[1];
  v38 = v26;
  v27 = *(v0 + 16);
  v28 = v4[4];
  sub_18E1E15F4(v4, v4[3]);
  sub_18E43A180();
  sub_18E44F4EC();
  if (v27)
  {
    sub_18E43A1D4();
    v29 = v34;
    sub_18E44F2AC();
    v30 = v36;
    sub_18E44F31C();
    (*(v35 + 8))(v29, v30);
  }

  else
  {
    sub_18E43A228();
    sub_18E44F2AC();
    v31 = v33;
    sub_18E44F31C();
    (*(v32 + 8))(v2, v31);
  }

  (*(v20 + 8))(v25, v18);
  sub_18E1C6650();
}

void CatalogErrors.AssetErrors.init(from:)()
{
  sub_18E1C62A0();
  v65 = v1;
  v66 = v0;
  v3 = v2;
  v4 = sub_18E2706EC(&qword_1EABE9180, &qword_18E4E2D20);
  v62 = sub_18E1C4EAC(v4);
  v63 = v5;
  v7 = *(v6 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v8);
  sub_18E1C561C();
  v9 = sub_18E2706EC(&qword_1EABE9188, &qword_18E4E2D28);
  sub_18E1C4EAC(v9);
  v61 = v10;
  v12 = *(v11 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v59 - v14;
  v16 = sub_18E2706EC(&qword_1EABE9190, &unk_18E4E2D30);
  sub_18E1C4EAC(v16);
  v64 = v17;
  v19 = *(v18 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v59 - v21;
  v23 = v3[4];
  sub_18E1E15F4(v3, v3[3]);
  sub_18E43A180();
  v24 = v66;
  sub_18E44F4DC();
  if (v24)
  {
    goto LABEL_9;
  }

  v59[2] = v9;
  v60 = v15;
  v66 = v3;
  v25 = v65;
  v26 = sub_18E44F28C();
  sub_18E1FF648(v26, 0);
  if (v28 == v29 >> 1)
  {
LABEL_7:
    v40 = sub_18E44F04C();
    sub_18E1D0098();
    swift_allocError();
    v42 = v41;
    v43 = *(sub_18E2706EC(&qword_1EABE0F08, &qword_18E49D2B0) + 48);
    *v42 = &type metadata for CatalogErrors.AssetErrors;
    sub_18E44F1BC();
    sub_18E44F03C();
    v44 = *MEMORY[0x1E69E6AF8];
    sub_18E1C82B8(v40);
    (*(v45 + 104))(v42);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v64 + 8))(v22, v16);
    v3 = v66;
LABEL_9:
    sub_18E1C9934(v3);
LABEL_10:
    sub_18E1C6650();
    return;
  }

  v59[1] = 0;
  if (v28 < (v29 >> 1))
  {
    v30 = *(v27 + v28);
    v31 = sub_18E200384(v28 + 1);
    v33 = v32;
    v35 = v34;
    swift_unknownObjectRelease();
    if (v33 == v35 >> 1)
    {
      v36 = v30;
      if (v30)
      {
        LODWORD(v61) = v30;
        sub_18E43A1D4();
        sub_18E1E399C();
        v37 = v25;
        v60 = v31;
        v38 = sub_18E44F22C();
        v39 = v64;
        v47 = v38;
        v49 = v48;
        swift_unknownObjectRelease();
        v50 = sub_18E1E1ACC();
        v51(v50);
        v36 = v61;
      }

      else
      {
        sub_18E43A228();
        sub_18E1E399C();
        v37 = v25;
        v46 = sub_18E44F22C();
        v49 = v52;
        v63 = v46;
        swift_unknownObjectRelease();
        v53 = *(v61 + 8);
        v54 = sub_18E1D03F8();
        v55(v54);
        v47 = v63;
        v39 = v64;
      }

      v56 = *(v39 + 8);
      v57 = sub_18E1CF9A0();
      v58(v57);
      *v37 = v47;
      *(v37 + 8) = v49;
      *(v37 + 16) = v36;
      sub_18E1C9934(v66);
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  __break(1u);
}

void sub_18E424590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 == a4 && a2 == a5;
  if (v5 || (sub_18E44F3CC() & 1) != 0)
  {
    v6 = sub_18E208090();

    sub_18E26D86C(v6, v7);
  }
}

uint64_t sub_18E4245F8()
{
  sub_18E44EB4C();
  v0 = sub_18E208090();

  return sub_18E2704B4(v0, v1);
}

uint64_t sub_18E424634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18E1CFCDC();
  sub_18E44EB4C();
  sub_18E2704B4(v5, a3);
  return sub_18E44F4CC();
}

uint64_t sub_18E4246D8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_18E4245F8();
}

uint64_t sub_18E4246E4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_18E44F48C();
  sub_18E4245F8();
  return sub_18E44F4CC();
}

uint64_t sub_18E424758(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_18E1D121C(0, &qword_1ED6A7DB8, 0x1E69C7548);
  v6 = sub_18E32F228(0xD000000000000020, 0x800000018E478310);
  v7 = [objc_opt_self() sharedManager];
  v8 = sub_18E44EA8C();
  v9 = sub_18E43ACF8(v8, a3, a4, v7);

  if (v9)
  {

    sub_18E1C77B0();
    v11 = sub_18E32F228(0xD00000000000001CLL, v10);
    type metadata accessor for RunningBoardAssertedAssetSet();
    sub_18E1CD8AC();
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    *(v12 + 24) = v11;
    [v6 invalidate];
  }

  else
  {
    if (qword_1ED6A8AB0 != -1)
    {
      sub_18E1C6D78();
      swift_once();
    }

    v13 = sub_18E44E83C();
    sub_18E1CE8B4(v13, qword_1ED6A9870);
    v14 = a4;

    v15 = sub_18E44E80C();
    v16 = sub_18E44EE0C();

    if (os_log_type_enabled(v15, v16))
    {
      sub_18E1CA69C();
      v17 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      sub_18E1CA638();
      swift_slowAlloc();
      *v17 = 136315650;
      v18 = sub_18E1C5838();
      *(v17 + 4) = sub_18E1C9624(v18, v19, v20);
      *(v17 + 12) = 2080;
      sub_18E44E99C();

      v21 = sub_18E1C5838();
      v24 = sub_18E1C9624(v21, v22, v23);

      *(v17 + 14) = v24;
      *(v17 + 22) = 2112;
      *(v17 + 24) = v14;
      *v33 = a4;
      v25 = v14;
      _os_log_impl(&dword_18E1C1000, v15, v16, "Failed to initialize asset set %s with usages %s and token: %@", v17, 0x20u);
      sub_18E1E8EEC(v33, &unk_1EABE9120, &qword_18E4E3A90);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E212078();
      swift_arrayDestroy();
      v26 = sub_18E1D6214();
      MEMORY[0x193ACD400](v26);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    else
    {
    }

    sub_18E44EFFC();

    v27 = sub_18E1C5838();
    MEMORY[0x193ACC300](v27);

    v28 = sub_18E1C8D78();
    MEMORY[0x193ACC300](v28, v29 | 0xEF74657320740000);
    v12 = 0xEF203A6B636F4C65;
    sub_18E3FDB10();
    sub_18E1D0098();
    v30 = swift_allocError();
    *v31 = 0x636E657265686F43;
    v31[1] = 0xEF203A6B636F4C65;
    sub_18E1E3830(v30, v31);
    swift_willThrow();
    [v6 invalidate];
  }

  return v12;
}

uint64_t sub_18E424B24()
{
  v1 = sub_18E2706EC(&qword_1EABE1060, &qword_18E4E3890);
  sub_18E1C5B08(v1);
  v3 = *(v2 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  v7 = sub_18E44ED4C();
  sub_18E201DC8(v6, 1, 1, v7);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  sub_18E1CADEC();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;
  v10[5] = v9;
  v11 = v9;
  v12 = v8;
  sub_18E3FE1D0();

  return v0;
}

uint64_t sub_18E424C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_18E424C3C, 0, 0);
}

uint64_t sub_18E424C3C()
{
  sub_18E1C52F0();
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E88D0] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_18E424CF8;
  sub_18E1C8F20();

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_18E424CF8()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  sub_18E1C52E0();
  *v5 = v4;

  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18E424DFC()
{
  sub_18E1C52F0();
  [*(v0 + 24) invalidate];
  sub_18E1D008C();

  return v1();
}

void sub_18E424E5C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_18E424EC8()
{
  sub_18E424B24();
  sub_18E1CD8AC();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_18E424EF8()
{
  v1 = v0;
  v14[1] = *MEMORY[0x1E69E9840];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  v2 = [objc_opt_self() currentProcess];
  v3 = [v2 isManaged];

  if (v3)
  {
    sub_18E1D121C(0, &qword_1ED6A7DA8, 0x1E69C7560);
    v4 = sub_18E25F75C();
    v5 = [objc_opt_self() currentProcess];
    sub_18E2706EC(&qword_1EABE3AE0, &qword_18E4B7460);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18E4B7440;
    *(v6 + 32) = v4;
    objc_allocWithZone(MEMORY[0x1E69C7548]);
    v7 = v4;
    v8 = sub_18E25F898(0xD00000000000001DLL, 0x800000018E4E3140, v5);
    v14[0] = 0;
    if ([v8 acquireWithError_])
    {
      v9 = v14[0];
    }

    else
    {
      v10 = v14[0];
      v11 = sub_18E44E44C();

      swift_willThrow();
    }
  }

  else
  {
    v8 = 0;
  }

  *(v1 + 24) = v8;
  v12 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t sub_18E425104()
{
  v1 = sub_18E2706EC(&qword_1EABE1060, &qword_18E4E3890);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v12 - v3;
  v5 = sub_18E44ED4C();
  sub_18E201DC8(v4, 1, 1, v5);
  swift_beginAccess();
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  v8[5] = v7;
  v9 = v7;

  sub_18E3FE1D0();

  v10 = *(v0 + 16);

  return v0;
}

uint64_t sub_18E425224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_18E425244, 0, 0);
}

uint64_t sub_18E425244()
{
  sub_18E1C6170();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v0 + 32) = v2;
  if (v2)
  {
    *(v0 + 40) = 0;
    v3 = *(v1 + 56);
    *(v0 + 48) = v3;
    v4 = swift_task_alloc();
    *(v0 + 56) = v4;
    *(v4 + 16) = v3;
    v5 = *(MEMORY[0x1E69E88D0] + 4);
    v6 = v3;
    v7 = swift_task_alloc();
    *(v0 + 64) = v7;
    *v7 = v0;
    sub_18E221CC4(v7);
    sub_18E1C8F20();

    return MEMORY[0x1EEE6DDE0]();
  }

  else
  {
    [*(v0 + 24) invalidate];
    sub_18E1D008C();

    return v8();
  }
}

uint64_t sub_18E425350()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  v2 = *(v1 + 64);
  v3 = *(v1 + 56);
  v4 = *v0;
  sub_18E1C52E0();
  *v5 = v4;

  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18E425454()
{
  sub_18E1C6170();
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);

  if (v1 + 1 == v2)
  {
    [*(v0 + 24) invalidate];
    sub_18E1D008C();

    return v3();
  }

  else
  {
    v5 = *(v0 + 40) + 1;
    *(v0 + 40) = v5;
    v6 = *(*(v0 + 16) + 32 * v5 + 56);
    *(v0 + 48) = v6;
    v7 = swift_task_alloc();
    *(v0 + 56) = v7;
    *(v7 + 16) = v6;
    v8 = *(MEMORY[0x1E69E88D0] + 4);
    v9 = v6;
    v10 = swift_task_alloc();
    *(v0 + 64) = v10;
    *v10 = v0;
    sub_18E221CC4();
    sub_18E1C8F20();

    return MEMORY[0x1EEE6DDE0]();
  }
}

void sub_18E425578()
{
  sub_18E1C575C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_18E2706EC(&qword_1EABE9210, &qword_18E4E38C0);
  v7 = sub_18E1C4EAC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = *(v9 + 16);
  v13 = sub_18E1D4B44();
  v14(v13);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  v17 = *(v9 + 32);
  sub_18E1EA5AC();
  v18();
  v20[4] = v3;
  v20[5] = v16;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_18E424E5C;
  v20[3] = v1;
  v19 = _Block_copy(v20);

  [v5 invalidateWithQueue:0 completion:v19];
  _Block_release(v19);
  sub_18E1C5544();
}

uint64_t sub_18E425700()
{
  v0 = sub_18E425104();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_18E425730(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  swift_beginAccess();

  v10 = a4;
  sub_18E286938();
  v11 = *(*(v5 + 16) + 16);
  sub_18E286980(v11);
  v12 = *(v5 + 16);
  *(v12 + 16) = v11 + 1;
  v13 = (v12 + 32 * v11);
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = a3;
  v13[7] = v10;
  *(v5 + 16) = v12;
  return swift_endAccess();
}

uint64_t sub_18E4257EC(void (*a1)(uint64_t))
{
  swift_beginAccess();
  v3 = *(v1 + 16);

  a1(v4);
}

uint64_t sub_18E425874()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v11 = MEMORY[0x1E69E7CC0];

    sub_18E26F1E0(0, v2, 0);
    v3 = (v1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = *(v11 + 16);
      v6 = *(v11 + 24);

      if (v7 >= v6 >> 1)
      {
        sub_18E26F1E0(v6 > 1, v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v8 = v11 + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
  sub_18E1CDB50();
  v9 = sub_18E44EA0C();

  return v9;
}

void AssetLock.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E1C62A0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  type metadata accessor for CatalogClient();
  swift_allocObject();
  v25 = CatalogClient.init()();
  sub_18E2761D4(v25, v26, v27, v28, v29, v30, v31, v32, v53, v54, v55, v56, v57, *(&v57 + 1), v58, *(&v58 + 1), v59, v60, v61[0], v61[1]);
  v34 = v33;

  if (!v20)
  {
    v35 = *(v34 + 16);
    if (v35)
    {
      v36 = MEMORY[0x1E69E7CC0];
      v37 = v34 + 32;
      while (1)
      {
        sub_18E1E4398(v37, v64);
        sub_18E1C551C(v64, v61);
        v38 = sub_18E1E2E14();
        sub_18E2706EC(v38, v39);
        v40 = sub_18E1E2000();
        sub_18E2706EC(v40, v41);
        if (swift_dynamicCast())
        {
          if (*(&v58 + 1))
          {
            sub_18E1C551C(&v57, v61);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            a10 = v36;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v50 = *(v36 + 16);
              sub_18E211EDC();
              v36 = v51;
              a10 = v51;
            }

            v43 = *(v36 + 16);
            if (v43 >= *(v36 + 24) >> 1)
            {
              sub_18E211EDC();
              v36 = v52;
              a10 = v52;
            }

            v45 = v62;
            v44 = v63;
            sub_18E274828(v61, v62);
            sub_18E1C5780();
            v47 = *(v46 + 64);
            MEMORY[0x1EEE9AC00](v48);
            sub_18E1C4EDC();
            sub_18E1C561C();
            (*(v49 + 16))(&qword_18E49D250);
            sub_18E1DF2A8(v43, &qword_18E49D250, &a10, v45, v44);
            sub_18E1C9934(v61);
            goto LABEL_13;
          }
        }

        else
        {
          v59 = 0;
          v57 = 0u;
          v58 = 0u;
        }

        sub_18E1E8EEC(&v57, &qword_1EABE1018, &unk_18E4AAB70);
LABEL_13:
        v37 += 40;
        if (!--v35)
        {

          goto LABEL_16;
        }
      }
    }

    v36 = MEMORY[0x1E69E7CC0];
LABEL_16:
    AssetLock.init(resources:)(v36, v64);
    *v24 = *&v64[0];
  }

  sub_18E1C6650();
}

void sub_18E425CA4(uint64_t a1)
{
  sub_18E2706EC(&qword_1EABE1090, &qword_18E4E3AA0);
  v2 = MEMORY[0x1E69E7CC0];
  v39 = sub_18E44E9AC();
  v3 = (a1 + 32);
  v4 = *(a1 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    sub_18E425F9C(&v39, v3);
    v3 = v5;
  }

  v6 = v39;
  v7 = *(v39 + 64);
  v34 = v39 + 64;
  v8 = *(v39 + 32);
  sub_18E1C7734();
  v11 = v10 & v9;
  v33 = (v12 + 63) >> 6;

  v13 = 0;
  v14 = v2;
  v35 = v6;
  do
  {
    while (1)
    {
      if (!v11)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= v33)
          {
            goto LABEL_28;
          }

          v11 = *(v34 + 8 * v15);
          ++v13;
          if (v11)
          {
            v13 = v15;
            goto LABEL_10;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

LABEL_10:
      v16 = __clz(__rbit64(v11)) | (v13 << 6);
      v17 = *(*(v6 + 56) + 8 * v16);
      v18 = *(v17 + 16);
      if (v18)
      {
        v36 = v11;
        v37 = v14;
        v19 = (*(v6 + 48) + 16 * v16);
        v20 = v19[1];
        v38 = *v19;
        v39 = v2;

        sub_18E26F358(0, v18, 0);
        v21 = v39;
        v22 = 32;
        do
        {
          v23 = *(v17 + v22);
          v39 = v21;
          v24 = *(v21 + 16);
          v25 = *(v21 + 24);

          if (v24 >= v25 >> 1)
          {
            sub_18E26F358((v25 > 1), v24 + 1, 1);
            v21 = v39;
          }

          *(v21 + 16) = v24 + 1;
          v26 = (v21 + 24 * v24);
          v26[4] = v38;
          v26[5] = v20;
          v26[6] = v23;
          v22 += 8;
          --v18;
        }

        while (v18);

        v2 = MEMORY[0x1E69E7CC0];
        v6 = v35;
        v11 = v36;
        v14 = v37;
      }

      else
      {
        v21 = v2;
      }

      v27 = *(v21 + 16);
      v28 = *(v14 + 16);
      if (__OFADD__(v28, v27))
      {
        goto LABEL_30;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v28 + v27 > *(v14 + 24) >> 1)
      {
        sub_18E3EFB70();
        v14 = v29;
      }

      v11 &= v11 - 1;
      if (!*(v21 + 16))
      {
        break;
      }

      if ((*(v14 + 24) >> 1) - *(v14 + 16) < v27)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v27)
      {
        v30 = *(v14 + 16);
        v31 = __OFADD__(v30, v27);
        v32 = v30 + v27;
        if (v31)
        {
          goto LABEL_32;
        }

        *(v14 + 16) = v32;
      }
    }
  }

  while (!v27);
  __break(1u);
LABEL_28:
}

uint64_t sub_18E425F9C(uint64_t *a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  sub_18E1E15F4(a2, v4);
  v6 = v4;
  v7 = a1;
  (*(v5 + 64))(v46, v6, v5);
  v8 = v46[4];
  v9 = v46[5];

  v10 = a2[3];
  v11 = a2[4];
  sub_18E1E15F4(a2, v10);
  v12 = AssetBackedResource.usages.getter(v10, v11);
  v13 = *v7;
  if (sub_18E21654C(v8, v9, *v7))
  {
  }

  else
  {
    v14 = *v7;
    swift_isUniquelyReferenced_nonNull_native();
    v46[0] = *v7;
    sub_18E27005C();
    v13 = v46[0];
    *v7 = v46[0];
  }

  v45 = v7;
  v46[8] = v9;
  v15 = sub_18E21654C(v8, v9, v13);
  if (!v15)
  {
    goto LABEL_37;
  }

  v16 = v15;
  isUniquelyReferenced_nonNull_native = 0;
  v18 = *(v15 + 16);
  for (i = -32; ; i -= 8)
  {
    if (v18 == isUniquelyReferenced_nonNull_native)
    {

      i = v45;
      v21 = *v45;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46[0] = *v45;
      v16 = v46[0];
      v22 = sub_18E1CBD4C();
      if (!__OFADD__(v16[2], (v23 & 1) == 0))
      {
        v24 = v22;
        v25 = v23;
        sub_18E2706EC(&qword_1EABE0E88, &unk_18E49D230);
        v16 = v46;
        if (sub_18E44F0EC())
        {
          v16 = v46[0];
          v26 = sub_18E1CBD4C();
          if ((v25 & 1) != (v27 & 1))
          {
            goto LABEL_38;
          }

          isUniquelyReferenced_nonNull_native = v26;
        }

        else
        {
          isUniquelyReferenced_nonNull_native = v24;
        }

        if (v25)
        {
          v16 = *(*(v46[0] + 56) + 8 * isUniquelyReferenced_nonNull_native);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_21:
            v37 = v16[2];
            if (v37 >= v16[3] >> 1)
            {
              sub_18E3EFEC8();
              v16 = v42;
            }

            v16[2] = v37 + 1;
            v16[v37 + 4] = v12;

            v38 = v46[0];
            *(*(v46[0] + 56) + 8 * isUniquelyReferenced_nonNull_native) = v16;

            *i = v38;
            return result;
          }

LABEL_32:
          v40 = v16[2];
          sub_18E3EFEC8();
          v16 = v41;
          goto LABEL_21;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (isUniquelyReferenced_nonNull_native >= v16[2])
    {
      __break(1u);
      goto LABEL_30;
    }

    v46[0] = v16[isUniquelyReferenced_nonNull_native + 4];

    v20 = sub_18E42B860(v46, v12);

    if (v20)
    {
      break;
    }

    ++isUniquelyReferenced_nonNull_native;
  }

  v28 = *v45;
  swift_isUniquelyReferenced_nonNull_native();
  v46[0] = *v45;
  v29 = v46[0];
  v44 = sub_18E1CBD4C();
  v31 = v29[2];
  v32 = (v30 & 1) == 0;
  v33 = v31 + v32;
  if (__OFADD__(v31, v32))
  {
    __break(1u);
  }

  else
  {
    v34 = v30;
    sub_18E2706EC(&qword_1EABE0E88, &unk_18E49D230);
    v29 = v46;
    if (sub_18E44F0EC())
    {
      v29 = v46[0];
      v35 = sub_18E1CBD4C();
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_38;
      }

      v8 = v35;
    }

    else
    {
      v8 = v44;
    }

    if (v34)
    {
      v33 = v46[0];
      v29 = *(*(v46[0] + 56) + 8 * v8);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_27;
      }

      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_35:
  sub_18E43A2F0(v29);
  v29 = v43;
LABEL_27:
  if (isUniquelyReferenced_nonNull_native < v29[2])
  {
    sub_18E43A27C(v12, sub_18E286F84, 0, (v29 - i));

    *(*(v33 + 56) + 8 * v8) = v29;

    *v45 = v33;
    return result;
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_18E44F41C();
  __break(1u);
  return result;
}

uint64_t sub_18E4263E4()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedModelConfigurationReplacementBase;
    v17[4] = sub_18E43E2B8();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedModelConfigurationReplacementBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43E25C(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E426744()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedLLMDraftModelBase;
    v17[4] = sub_18E43E51C();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedLLMDraftModelBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43E4C0(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E426AA4()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedDiffusionModelBase;
    v17[4] = sub_18E43EEC8();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedDiffusionModelBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43EE6C(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E426E04()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedMotionBase;
    v17[4] = sub_18E43E120();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedMotionBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43E0C4(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E427164()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedLLMAdapterBase;
    v17[4] = sub_18E43E6B4();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedLLMAdapterBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43E658(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E4274C4()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedImageFilterBase;
    v17[4] = sub_18E43EAB0();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedImageFilterBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43EA54(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E427824()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedImageScalerBase;
    v17[4] = sub_18E43E918();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedImageScalerBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43E8BC(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E427B84()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedMotionAdapterBase;
    v17[4] = sub_18E43E1EC();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedMotionAdapterBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43E190(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E427EE4()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedImageTokenizerBase;
    v17[4] = sub_18E43E780();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedImageTokenizerBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43E724(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E428244()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedPromptAllowListBase;
    v17[4] = sub_18E43E054();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedPromptAllowListBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43DFF8(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E4285A4()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedSecureAnalyticsBase;
    v17[4] = sub_18E43DF88();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedSecureAnalyticsBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43DF2C(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E428904()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedDiffusionAdapterBase;
    v17[4] = sub_18E43EF94();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedDiffusionAdapterBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43EF38(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E428C64()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedImageMagicCleanUpBase;
    v17[4] = sub_18E43E9E4();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedImageMagicCleanUpBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43E988(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E428FC4()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedTokenInputDenyListBase;
    v17[4] = sub_18E43DEBC();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedTokenInputDenyListBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E2070B8(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E429324()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedAppleDeviceTrackingBase;
    v17[4] = sub_18E43F060();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedAppleDeviceTrackingBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43F004(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E429684()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedDisabledUseCaseListBase;
    v17[4] = sub_18E43EDFC();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedDisabledUseCaseListBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43EDA0(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E4299E4()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedImageCuratedPromptsBase;
    v17[4] = sub_18E43EB7C();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedImageCuratedPromptsBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43EB20(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E429D44()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedServerConfigurationBase;
    v17[4] = sub_18E43E384();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedServerConfigurationBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43E328(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E42A0A4()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedTokenOutputDenyListBase;
    v17[4] = sub_18E43DE4C();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedTokenOutputDenyListBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E299690(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E42A404()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedEmbeddingPreprocessorBase;
    v17[4] = sub_18E43ED14();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedEmbeddingPreprocessorBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43ECB8(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E42A764()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedTokenOutputRetainListBase;
    v17[4] = sub_18E43DDDC();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedTokenOutputRetainListBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43DD80(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E42AAC4()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedHandwritingSynthesizerBase;
    v17[4] = sub_18E43EC48();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedHandwritingSynthesizerBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43EBEC(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E42AE24()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedImageSpatialPhotosReliveBase;
    v17[4] = sub_18E43E84C();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedImageSpatialPhotosReliveBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43E7F0(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E42B184()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  if ((sub_18E2483E8() & 1) == 0)
  {
    *&v16[0] = v2;
    *(&v16[0] + 1) = v3;

    MEMORY[0x193ACC300](46, 0xE100000000000000);
    v6 = v1[25];
    v7 = v1[26];

    MEMORY[0x193ACC300](v6, v7);

    v8 = v16[0];
    v17[3] = &type metadata for AssetBackedLLMAdapterMetadataOverrideBase;
    v17[4] = sub_18E43E5E8();
    v17[0] = swift_allocObject();
    memcpy((v17[0] + 16), v1, 0xD8uLL);
    v9 = sub_18E1E15F4(v17, &type metadata for AssetBackedLLMAdapterMetadataOverrideBase);
    v10 = v9[19];
    v11 = v9[20];
    sub_18E43E58C(v1, v16);

    sub_18E1C9934(v17);
    if (v11)
    {
      *&v16[0] = v10;
      *(&v16[0] + 1) = v11;

      MEMORY[0x193ACC300](0x636972656E65672ELL, 0xE800000000000000);

      v12 = v16[0];
      if (qword_1ED6A94A8 != -1)
      {
        swift_once();
      }

      if (byte_1ED6A98A0)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v8;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v12;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v12;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_18E49D9B0;
      *(v14 + 32) = v8;
    }

    *(v14 + 48) = 0x44454C42414E45;
    *(v14 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v16[0] = *(v1 + 25);
  v4 = *&v16[0] == 0x636972656E6567 && *(&v16[0] + 1) == 0xE700000000000000;
  if (!v4 && (sub_18E44F3CC() & 1) == 0)
  {
    sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_18E49D9B0;
    *(v15 + 32) = 0xD000000000000011;
    *(v15 + 40) = 0x800000018E450E40;
    *(v15 + 48) = v16[0];
    sub_18E246794(v16, v17);
    return sub_18E44E9AC();
  }

  return sub_18E44E9AC();
}

uint64_t AssetBackedResource.usages.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(v4 + 104);
  v5(a1, v4);
  sub_18E1D0274();
  sub_18E2483E8();
  sub_18E235348();

  if ((v2 & 1) == 0)
  {
    v10 = sub_18E1CA330();
    v25 = (v5)(v10);
    v27 = v11;

    v12 = sub_18E1CE96C();
    MEMORY[0x193ACC300](v12);

    v13 = *(v4 + 112);
    v14 = sub_18E1CA330();
    v15(v14);

    v16 = sub_18E1E2E14();
    MEMORY[0x193ACC300](v16);

    v18 = v25;
    v17 = v27;
    v19 = AssetBackedResource.hostingAssetName.getter(a1);
    if (v20)
    {
      v26 = v19;
      v28 = v20;

      v21 = sub_18E1CF3BC();
      MEMORY[0x193ACC300](v21, 0xE800000000000000);

      if (qword_1ED6A94A8 != -1)
      {
        sub_18E1C8394();
        swift_once();
      }

      if (byte_1ED6A98A0 == 1)
      {
        sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18E49DA90;
        *(inited + 32) = v18;
        *(inited + 40) = v17;
        *(inited + 48) = 0x44454C42414E45;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 64) = v26;
        *(inited + 72) = v28;
        *(inited + 80) = 0x44454C42414E45;
        *(inited + 88) = 0xE700000000000000;
        return sub_18E44E9AC();
      }

      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v24 = swift_initStackObject();
      *(v24 + 16) = xmmword_18E49D9B0;
      *(v24 + 32) = v26;
      *(v24 + 40) = v28;
    }

    else
    {
      sub_18E2706EC(&qword_1EABE3420, &unk_18E49E600);
      v24 = swift_initStackObject();
      *(v24 + 16) = xmmword_18E49D9B0;
      *(v24 + 32) = v25;
      *(v24 + 40) = v27;
    }

    *(v24 + 48) = 0x44454C42414E45;
    *(v24 + 56) = 0xE700000000000000;
    return sub_18E44E9AC();
  }

  v6 = *(v4 + 112);
  v7 = sub_18E1CA330();
  if (v6(v7) != 0x636972656E6567 || v8 != 0xE700000000000000)
  {
    sub_18E1D0380();
    sub_18E44F3CC();
    sub_18E235348();
  }

  return sub_18E44E9AC();
}

uint64_t sub_18E42B860(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
    v10 = v6;
LABEL_10:
    v6 = (v10 - 1) & v10;
    if (*(v2 + 16))
    {
      v12 = __clz(__rbit64(v10)) | (v9 << 6);
      v13 = (*(a2 + 56) + 16 * v12);
      v14 = v13[1];
      v25 = *v13;
      v15 = (*(a2 + 48) + 16 * v12);
      v16 = *v15;
      v17 = v15[1];

      v18 = sub_18E1CBD4C();
      v20 = v19;

      if ((v20 & 1) == 0 || ((v21 = (*(v2 + 56) + 16 * v18), *v21 == v25) ? (v22 = v21[1] == v14) : (v22 = 0), v22))
      {
      }

      else
      {
        v23 = sub_18E44F3CC();

        if ((v23 & 1) == 0)
        {
          v24 = 0;
LABEL_20:

          return v24;
        }
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {
      v24 = 1;
      goto LABEL_20;
    }

    v10 = *(v3 + 8 * v11);
    ++v9;
    if (v10)
    {
      v9 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E42BA0C()
{
  v1 = v0[19];
  type metadata accessor for RunningBoardAssertedAssetSets();
  sub_18E1CD8AC();
  v2 = swift_allocObject();
  v0[20] = sub_18E424EF8();
  sub_18E425CA4(v1);
  v0[21] = v3;
  v4 = *(v3 + 16);
  v0[22] = v4;
  if (v4)
  {
    v5 = objc_opt_self();
    v0[23] = v5;
    v0[24] = 0;
    if (*(v0[21] + 16))
    {
      v6 = v5;
      sub_18E22341C();
      sub_18E1CC534(v7);

      v8 = sub_18E243104([v6 sharedManager]);
      sub_18E200EE0(v8);
      v0[30] = sub_18E44E97C();
      v0[2] = v0;
      sub_18E1CBE80();
      v9 = sub_18E2706EC(&qword_1EABE9320, &qword_18E4E3A98);
      sub_18E1C54E0(v9);
      v0[11] = 1107296256;
      sub_18E23467C(&unk_1F018AAF8);
      sub_18E1CD7E8(v10, sel_retrieveAssetSet_usages_queue_completion_);
      v5 = v2;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEC8](v5);
  }

  else
  {

    sub_18E1C6500();
    v12 = v0[20];

    return v11(v12);
  }
}

uint64_t sub_18E42BBD4()
{
  sub_18E1C52F0();
  v7 = *v0;
  v1 = *v0;
  sub_18E1C52E0();
  *v2 = v1;
  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18E42BCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_18E1D4964();
  a21 = v23;
  a22 = v24;
  sub_18E223A90();
  a20 = v22;
  v25 = *(v22 + 144);
  v27 = *(v22 + 232);
  v26 = *(v22 + 240);

  if (v25)
  {
    v28 = qword_1ED6A8AB0;
    v29 = v25;
    if (v28 != -1)
    {
      sub_18E1C6D78();
      swift_once();
    }

    v31 = *(v22 + 208);
    v30 = *(v22 + 216);
    v32 = sub_18E44E83C();
    sub_18E1C95EC(v32, qword_1ED6A9870);

    v33 = sub_18E44E80C();
    sub_18E44EE2C();

    if (sub_18E1CF7C4())
    {
      v35 = *(v22 + 208);
      v34 = *(v22 + 216);
      v36 = *(v22 + 200);
      sub_18E1C9700();
      swift_slowAlloc();
      sub_18E1E2DDC();
      a9 = swift_slowAlloc();
      *v30 = 136315394;

      v37 = sub_18E1D03F8();
      v40 = sub_18E1C9624(v37, v38, v39);

      *(v30 + 4) = v40;
      sub_18E224E7C();

      sub_18E44E99C();
      sub_18E1E3B5C();

      v41 = sub_18E1E2000();
      v44 = sub_18E1C9624(v41, v42, v43);

      *(v30 + 14) = v44;
      sub_18E1CC474();
      _os_log_impl(v45, v46, v47, v48, v49, 0x16u);
      sub_18E221F10();
      swift_arrayDestroy();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      v50 = sub_18E1D6214();
      MEMORY[0x193ACD400](v50);
    }

    v52 = *(v22 + 208);
    v51 = *(v22 + 216);
    v53 = *(v22 + 200);
    v54 = *(v22 + 176);
    v55 = *(v22 + 160);
    v56 = *(v22 + 192) + 1;
    sub_18E1E1758();
    sub_18E425730(v57, v58, v59, v60);

    if (v56 == v54)
    {
      v62 = *(v22 + 168);

      sub_18E1C6500();
      v63 = *(v22 + 160);
      sub_18E1CEA3C();

      return v66(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      v106 = *(v22 + 192) + 1;
      *(v22 + 192) = v106;
      if (v106 >= *(*(v22 + 168) + 16))
      {
        __break(1u);
      }

      else
      {
        sub_18E22341C();
        v107 = *(v22 + 184);
        sub_18E1CC534((v109 + 24 * v108));

        v110 = sub_18E243104([v107 sharedManager]);
        sub_18E200EE0(v110);
        *(v22 + 240) = sub_18E44E97C();
        *(v22 + 16) = v22;
        sub_18E1CBE80();
        v111 = sub_18E2706EC(&qword_1EABE9320, &qword_18E4E3A98);
        sub_18E1C54E0(v111);
        *(v22 + 88) = 1107296256;
        sub_18E23467C(&unk_1F018AAF8);
        sub_18E1CD7E8(v112, sel_retrieveAssetSet_usages_queue_completion_);
        sub_18E1CEA3C();
      }

      return MEMORY[0x1EEE6DEC8](v61);
    }
  }

  else
  {
    v73 = *(v22 + 168);

    if (qword_1ED6A8AB0 != -1)
    {
      sub_18E1C6D78();
      swift_once();
    }

    v75 = *(v22 + 208);
    v74 = *(v22 + 216);
    v76 = sub_18E44E83C();
    sub_18E1C95EC(v76, qword_1ED6A9870);
    sub_18E1D4560();

    v77 = sub_18E44E80C();
    v78 = sub_18E44EE0C();

    if (os_log_type_enabled(v77, v78))
    {
      v80 = *(v22 + 208);
      v79 = *(v22 + 216);
      v81 = *(v22 + 200);
      sub_18E1C9700();
      v82 = swift_slowAlloc();
      sub_18E1CA638();
      a9 = swift_slowAlloc();
      *v82 = 136315394;

      v83 = sub_18E1C9624(v81, v80, &a9);

      *(v82 + 4) = v83;
      *(v82 + 12) = 2080;

      sub_18E44E99C();
      sub_18E221954();

      v84 = sub_18E1DD5A0();
      v87 = sub_18E1C9624(v84, v85, v86);

      *(v82 + 14) = v87;
      _os_log_impl(&dword_18E1C1000, v77, v78, "Failed to retrieve asset set: %s, with usages: %s", v82, 0x16u);
      sub_18E212078();
      swift_arrayDestroy();
      v88 = sub_18E1D6214();
      MEMORY[0x193ACD400](v88);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    v90 = *(v22 + 208);
    v89 = *(v22 + 216);
    v91 = *(v22 + 160);
    a9 = *(v22 + 200);
    a10 = v90;

    v92 = sub_18E1E890C();
    MEMORY[0x193ACC300](v92, 0xEA0000000000203ALL);
    v93 = sub_18E44E99C();
    MEMORY[0x193ACC300](v93);

    v94 = a9;
    v95 = a10;
    sub_18E3FDB10();
    sub_18E1D0098();
    v96 = swift_allocError();
    *v97 = v94;
    v97[1] = v95;
    sub_18E1E3830(v96, v97);
    swift_willThrow();

    sub_18E1D008C();
    sub_18E1CEA3C();

    return v99(v98, v99, v100, v101, v102, v103, v104, v105, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_18E42C220(uint64_t a1, void *a2)
{
  v3 = *sub_18E1E15F4((a1 + 32), *(a1 + 56));
  v4 = a2;
  return sub_18E3FE48C(v3, a2);
}

uint64_t sub_18E42C594()
{
  sub_18E1C6170();
  v3 = v2;
  sub_18E1C64F4();
  v5 = v4;
  sub_18E211354();
  *v6 = v5;
  v8 = *(v7 + 192);
  v9 = *v1;
  sub_18E1C52E0();
  *v10 = v9;
  v5[25] = v0;

  if (!v0)
  {
    v11 = v5[23];

    v5[26] = v3;
  }

  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_18E42C6B8()
{
  sub_18E1C52F0();
  v1 = *(v0 + 184);

  v2 = *(v0 + 200);
  sub_18E1D008C();

  return v3();
}

uint64_t static AssetLock.lockResources(_:)()
{
  sub_18E1C52F0();
  v2 = v1;
  *(v0 + 16) = v3;
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  sub_18E1C5950(v4);

  return sub_18E42B9EC(v2);
}

uint64_t sub_18E42C7A4()
{
  sub_18E1C6170();
  v3 = v2;
  sub_18E1C64F4();
  v5 = v4;
  sub_18E211354();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_18E1C52E0();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 32) = v3;
    sub_18E1CEA7C();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_18E42C8E4@<X0>(uint64_t *a1@<X8>)
{
  result = AssetLock.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__int128 *sub_18E42C90C()
{
  if (qword_1ED6A8358 != -1)
  {
    sub_18E1C5AE8();
  }

  return &xmmword_1ED6A7B48;
}

uint64_t static CoherentAssetLock.sharedCoherenceTokenProvider.getter()
{
  if (qword_1ED6A8358 != -1)
  {
    sub_18E1C5AE8();
  }

  swift_beginAccess();
  v0 = sub_18E208090();
  return sub_18E202008(v0, v1, v2, v3);
}

uint64_t static CoherentAssetLock.sharedCoherenceTokenProvider.setter(uint64_t a1)
{
  if (qword_1ED6A8358 != -1)
  {
    sub_18E1C5AE8();
  }

  swift_beginAccess();
  v2 = sub_18E1C5BFC();
  sub_18E43AD78(v2, v3);
  swift_endAccess();
  return sub_18E1E8EEC(a1, &qword_1EABE9198, &qword_18E4E2D58);
}

uint64_t (*static CoherentAssetLock.sharedCoherenceTokenProvider.modify())()
{
  if (qword_1ED6A8358 != -1)
  {
    sub_18E1C5AE8();
  }

  sub_18E208090();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_18E42CAC8@<X0>(uint64_t a1@<X8>)
{
  sub_18E42C90C();
  swift_beginAccess();
  return sub_18E202008(&xmmword_1ED6A7B48, a1, &qword_1EABE9198, &qword_18E4E2D58);
}

uint64_t sub_18E42CB2C(uint64_t a1)
{
  sub_18E42C90C();
  swift_beginAccess();
  sub_18E43AD78(a1, &xmmword_1ED6A7B48);
  return swift_endAccess();
}

uint64_t sub_18E42CB88()
{
  sub_18E1CAF5C();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_18E1C52E0();
  *v6 = v5;
  v7 = v4[19];
  *v6 = *v1;
  v5[20] = v0;

  v8 = v4[18];
  if (v0)
  {
    v9 = v5[15];
  }

  else
  {

    v5[21] = v3;
  }

  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_18E42CCCC()
{
  v1 = v0[17];
  *(v1 + 16) = v0[21];
  sub_18E1C9934(v0 + 2);
  if (*(*(v1 + 16) + 16))
  {
    v2 = v0[15];
    v3 = v0[16];
  }

  else
  {
    if (qword_1ED6A94F8 != -1)
    {
      sub_18E1C5C20();
    }

    v4 = v0[15];
    v5 = sub_18E44E83C();
    sub_18E1C95EC(v5, qword_1ED6A98C0);
    sub_18E1C5D78();

    v6 = sub_18E44E80C();
    sub_18E44EE2C();

    v7 = sub_18E1CF7C4();
    v9 = v0[15];
    v8 = v0[16];
    if (v7)
    {
      sub_18E1E2FE8();
      v10 = swift_slowAlloc();
      sub_18E1CA69C();
      v25 = swift_slowAlloc();
      *v10 = 136315138;
      MEMORY[0x193ACC430](v9, MEMORY[0x1E69E6158]);
      sub_18E1E3B5C();

      v11 = sub_18E1E2000();
      v14 = sub_18E1C9624(v11, v12, v13);

      *(v10 + 4) = v14;
      sub_18E1CC474();
      _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
      sub_18E1C9934(v25);
      v20 = sub_18E1CFC40();
      MEMORY[0x193ACD400](v20);
      v21 = sub_18E1D6214();
      MEMORY[0x193ACD400](v21);
    }

    else
    {
    }
  }

  sub_18E1C6500();
  v22 = v0[17];
  sub_18E1D0058();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_18E42CE80()
{
  sub_18E1C6170();
  v2 = *v1;
  v3 = *v1;
  sub_18E1C52E0();
  *v4 = v3;
  v5 = v2[25];
  v6 = *v1;
  sub_18E211354();
  *v7 = v6;
  v3[26] = v8;
  v3[27] = v0;

  v9 = v2[24];
  if (v0)
  {
    v10 = v3[15];
  }

  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_18E42CFB8()
{
  v1 = v0[26];
  v2 = *&v1[OBJC_IVAR____TtC12ModelCatalog29AcquireCoherenceTokenResponse_tokens];
  v3 = v0[23];
  if (v2)
  {
    v4 = v0[17];
    v5 = *&v1[OBJC_IVAR____TtC12ModelCatalog29AcquireCoherenceTokenResponse_tokens];

    *(v4 + 16) = v2;
    if (*(v2 + 16))
    {
      v6 = v0[15];
      v7 = v0[16];
    }

    else
    {
      if (qword_1ED6A94F8 != -1)
      {
        sub_18E1C5C20();
      }

      v16 = v0[15];
      v17 = sub_18E44E83C();
      sub_18E1C95EC(v17, qword_1ED6A98C0);
      sub_18E1C5D78();

      v18 = sub_18E44E80C();
      sub_18E44EE2C();

      v19 = sub_18E1CF7C4();
      v21 = v0[15];
      v20 = v0[16];
      if (v19)
      {
        sub_18E1E2FE8();
        v22 = swift_slowAlloc();
        sub_18E1CA69C();
        v37 = swift_slowAlloc();
        *v22 = 136315138;
        MEMORY[0x193ACC430](v21, MEMORY[0x1E69E6158]);
        sub_18E1E3B5C();

        v23 = sub_18E1E2000();
        v26 = sub_18E1C9624(v23, v24, v25);

        *(v22 + 4) = v26;
        sub_18E1CC474();
        _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
        sub_18E1C9934(v37);
        v32 = sub_18E1CFC40();
        MEMORY[0x193ACD400](v32);
        v33 = sub_18E1D6214();
        MEMORY[0x193ACD400](v33);
      }

      else
      {
      }
    }

    sub_18E1C6500();
    v34 = v0[17];
    sub_18E1D0058();

    __asm { BRAA            X2, X16 }
  }

  v8 = v0[22];
  v9 = v0[15];

  sub_18E3FDB10();
  sub_18E1D0098();
  v10 = swift_allocError();
  *v11 = 0xD000000000000028;
  v11[1] = 0x800000018E478340;
  sub_18E1C69B4(v10, v11);
  swift_willThrow();

  v12 = v0[17];
  v13 = *(v12 + 24);

  type metadata accessor for CoherentAssetLock();
  swift_deallocPartialClassInstance();
  sub_18E1D008C();
  sub_18E1D0058();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_18E42D24C()
{
  sub_18E1C52F0();
  v1 = v0[16];

  sub_18E1C9934(v0 + 2);
  v2 = v0[20];
  v3 = v0[17];
  v4 = *(v3 + 24);

  type metadata accessor for CoherentAssetLock();
  sub_18E223F28();
  sub_18E1D008C();

  return v5();
}

uint64_t sub_18E42D2CC()
{
  sub_18E1C52F0();
  v1 = v0[22];
  v2 = v0[23];

  v3 = v0[27];
  v4 = v0[17];
  v5 = *(v4 + 24);

  type metadata accessor for CoherentAssetLock();
  sub_18E223F28();
  sub_18E1D008C();

  return v6();
}

uint64_t CoherentAssetLock.__allocating_init(coherenceTokens:)()
{
  sub_18E1CADEC();
  swift_allocObject();
  v1 = sub_18E1C5D78();
  CoherentAssetLock.init(coherenceTokens:)(v1);
  return v0;
}

void *CoherentAssetLock.init(coherenceTokens:)(uint64_t a1)
{
  sub_18E2706EC(&qword_1EABE91A0, qword_18E4E2D78);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v1[4] = 0;
  v1[5] = 0;
  v1[2] = a1;
  v1[3] = v3;
  return v1;
}

void sub_18E42D4DC(void (*a1)(void))
{
  sub_18E204B54();
  if (!v1)
  {
    a1();
    sub_18E1D04C8();
  }
}

uint64_t sub_18E42D540(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_18E1C62C4();
}

uint64_t sub_18E42D558()
{
  sub_18E1C6170();
  v1 = v0[4];
  sub_18E204B54();
  v6 = (v0[2] + *v0[2]);
  v2 = *(v0[2] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_18E42D68C;
  v4 = v0[3];

  return v6();
}

uint64_t sub_18E42D68C()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  sub_18E211354();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  sub_18E1C52E0();
  *v7 = v6;
  *(v8 + 48) = v0;

  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18E42D788()
{
  sub_18E1C52F0();
  v1 = *(v0 + 32);
  sub_18E1D04C8();
  sub_18E1D008C();

  return v2();
}

uint64_t sub_18E42D7E4()
{
  sub_18E1C52F0();
  v1 = *(v0 + 32);
  sub_18E1D04C8();
  v2 = *(v0 + 48);
  sub_18E1D008C();

  return v3();
}

void sub_18E42D840(void (*a1)(void))
{
  sub_18E204B54();
  if (!v1)
  {
    a1();
    sub_18E1D04C8();
  }
}

uint64_t sub_18E42D8AC()
{
  sub_18E1C52F0();
  v1 = *(v0 + 40);
  sub_18E1D04C8();
  sub_18E1D008C();

  return v2();
}

uint64_t sub_18E42D91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_18E1D4964();
  a21 = v27;
  a22 = v28;
  sub_18E223A90();
  a20 = v24;
  v55 = v24;
  v29 = *(*(v24 + 16) + 16);
  v30 = -1;
  v31 = -1 << *(v29 + 32);
  if (-v31 < 64)
  {
    v30 = ~(-1 << -v31);
  }

  v32 = v30 & *(v29 + 64);
  v33 = (63 - v31) >> 6;

  v34 = 0;
  if (v32)
  {
    while (1)
    {
      v35 = v34;
LABEL_8:
      v36 = __clz(__rbit64(v32)) | (v35 << 6);
      v37 = (*(v29 + 48) + 16 * v36);
      v26 = *v37;
      v25 = v37[1];
      v38 = *(*(v29 + 56) + 8 * v36);
      objc_opt_self();
      sub_18E1D4560();

      v23 = v38;
      v22 = [v22 sharedManager];
      v39 = [v22 isLatestConsistencyToken_];

      if ((v39 & 1) == 0)
      {
        break;
      }

      v32 &= v32 - 1;
      v34 = v35;
      if (!v32)
      {
        goto LABEL_5;
      }
    }

    if (qword_1ED6A94F8 == -1)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v35 >= v33)
      {

        goto LABEL_12;
      }

      v32 = *(v29 + 64 + 8 * v35);
      ++v34;
      if (v32)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  sub_18E1C5C20();
LABEL_16:
  v49 = sub_18E44E83C();
  sub_18E1C95EC(v49, qword_1ED6A98C0);
  sub_18E1D4560();

  v50 = sub_18E44E80C();
  v51 = sub_18E44EE2C();

  if (os_log_type_enabled(v50, v51))
  {
    sub_18E1E2FE8();
    v52 = swift_slowAlloc();
    sub_18E1CA69C();
    v53 = swift_slowAlloc();
    a11 = v53;
    *v52 = 136315138;
    v54 = sub_18E1C9624(v26, v25, &a11);

    *(v52 + 4) = v54;
    _os_log_impl(&dword_18E1C1000, v50, v51, "updateAvailable: %s has a newer version available, returning true", v52, 0xCu);
    sub_18E1C9934(v53);
    sub_18E1C6164();
    MEMORY[0x193ACD400]();
    sub_18E1C6164();
    MEMORY[0x193ACD400]();
  }

  else
  {
  }

LABEL_12:
  sub_18E1C6500();
  sub_18E1CEA3C();

  return v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, v55, a11, a12, a13, a14);
}

void sub_18E42DBA8(void **a1)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v3 = sub_18E44E6AC();
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  if (qword_1ED6A8AB0 != -1)
  {
    swift_once();
  }

  v8 = sub_18E44E83C();
  sub_18E1C95EC(v8, qword_1ED6A9870);
  v9 = v7;
  v10 = sub_18E44E80C();
  v11 = sub_18E44EE2C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    v36[1] = v1;
    v39[0] = v36[0];
    *v12 = 136315138;
    v13 = [v9 uuid];
    sub_18E44E68C();

    sub_18E43ADE8(&unk_1ED6A8270, MEMORY[0x1E69695A8]);
    v14 = v38;
    v15 = sub_18E44F39C();
    v17 = v16;
    (*(v37 + 8))(v6, v14);
    v18 = sub_18E1C9624(v15, v17, v39);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_18E1C1000, v10, v11, "attempting to unlock %s", v12, 0xCu);
    v19 = v36[0];
    sub_18E1C9934(v36[0]);
    MEMORY[0x193ACD400](v19, -1, -1);
    MEMORY[0x193ACD400](v12, -1, -1);
  }

  v39[0] = 0;
  if ([v9 unlock_])
  {
    v20 = v39[0];
    v21 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v22 = v39[0];
    v23 = sub_18E44E44C();

    swift_willThrow();
    v24 = v9;
    v25 = sub_18E44E80C();
    v26 = sub_18E44EE0C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v39[0] = v28;
      *v27 = 136315138;
      v29 = [v24 uuid];
      sub_18E44E68C();

      sub_18E43ADE8(&unk_1ED6A8270, MEMORY[0x1E69695A8]);
      v30 = v38;
      v31 = sub_18E44F39C();
      v33 = v32;
      (*(v37 + 8))(v6, v30);
      v34 = sub_18E1C9624(v31, v33, v39);

      *(v27 + 4) = v34;
      _os_log_impl(&dword_18E1C1000, v25, v26, "recovery unlock of %s failed", v27, 0xCu);
      sub_18E1C9934(v28);
      MEMORY[0x193ACD400](v28, -1, -1);
      MEMORY[0x193ACD400](v27, -1, -1);
    }

    v35 = *MEMORY[0x1E69E9840];
  }
}

uint64_t sub_18E42E028()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 64);
  v3 = *(v1 + 32);
  sub_18E1C7734();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;

  v10 = 0;
  while (v6)
  {
    v11 = v10;
LABEL_8:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    result = [*(*(v1 + 56) + ((v11 << 9) | (8 * v12))) locked];
    if ((result & 1) == 0)
    {
      v13 = 0;
LABEL_11:

      return v13;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      v13 = 1;
      goto LABEL_11;
    }

    v6 = *(v1 + 64 + 8 * v11);
    ++v10;
    if (v6)
    {
      v10 = v11;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E42E0F8()
{
  sub_18E1C52F0();
  v1[18] = v0;
  v2 = sub_18E44E6AC();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18E42E1B0()
{
  sub_18E1E15DC();
  v46 = v0;
  v2 = *(*(v0 + 144) + 16);
  *(v0 + 176) = v2;
  if (!*(v2 + 16))
  {
    if (qword_1ED6A94F8 != -1)
    {
      sub_18E1C5C20();
    }

    v3 = sub_18E44E83C();
    sub_18E1C95EC(v3, qword_1ED6A98C0);
    v4 = sub_18E44E80C();
    v5 = sub_18E44EE2C();
    if (os_log_type_enabled(v4, v5))
    {
      *swift_slowAlloc() = 0;
      sub_18E1CC474();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      v11 = sub_18E1D6214();
      MEMORY[0x193ACD400](v11);
    }
  }

  if (qword_1ED6A94F8 != -1)
  {
    sub_18E1C5C20();
  }

  v12 = *(v0 + 144);
  v13 = sub_18E44E83C();
  *(v0 + 184) = v13;
  sub_18E1C95EC(v13, qword_1ED6A98C0);
  sub_18E1D4560();

  v14 = sub_18E44E80C();
  sub_18E44EE2C();

  if (sub_18E1CF7C4())
  {
    sub_18E1E2FE8();
    v15 = swift_slowAlloc();
    sub_18E1CA69C();
    v16 = swift_slowAlloc();
    v45 = v16;
    *v15 = 136315138;
    sub_18E1D121C(0, &qword_1ED6A80D0, 0x1E69DEEE0);
    v17 = sub_18E44E99C();
    v1 = sub_18E1C9624(v17, v18, &v45);

    *(v15 + 4) = v1;
    sub_18E1CC474();
    _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
    sub_18E1C9934(v16);
    sub_18E1C6164();
    MEMORY[0x193ACD400](v24);
    v25 = sub_18E1D6214();
    MEMORY[0x193ACD400](v25);
  }

  v26 = *(v2 + 32);
  *(v0 + 248) = v26;
  v27 = -1;
  v28 = -1 << v26;
  if (-(-1 << v26) < 64)
  {
    v27 = ~(-1 << -v28);
  }

  v29 = v27 & *(v2 + 64);

  if (v29)
  {
    v30 = *(v0 + 176);
  }

  else
  {
    v31 = 0;
    do
    {
      if (((63 - v28) >> 6) - 1 == v31)
      {
        v41 = *(v0 + 168);

        sub_18E1D008C();
        sub_18E1CF618();

        __asm { BRAA            X1, X16 }
      }

      v29 = *(*(v0 + 176) + 8 * v31++ + 72);
    }

    while (!v29);
  }

  sub_18E22341C();
  *(v0 + 192) = v29;
  *(v0 + 200) = v32;
  sub_18E1CAEE8(v33, v32);
  v34 = objc_opt_self();

  v35 = v1;
  sub_18E200EE0([v34 sharedManager]);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_18E42E550;
  swift_continuation_init();
  v36 = sub_18E2706EC(&qword_1EABE91A8, &qword_18E4E2DA0);
  sub_18E1C54E0(v36);
  *(v0 + 88) = 1107296256;
  sub_18E1E2C14(&unk_1F0189E28);
  sub_18E1E1758();
  [v37 v38];
  sub_18E1CF618();

  return MEMORY[0x1EEE6DEC8](v39);
}

uint64_t sub_18E42E550()
{
  sub_18E1C52F0();
  v1 = *v0;
  sub_18E211354();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 240) = v5;
  if (!v5)
  {
    v6 = *(v2 + 216);
  }

  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18E42E65C()
{
  sub_18E1E15DC();
  v2 = *(v0 + 232);

  v4 = *(v0 + 200);
  if (((*(v0 + 192) - 1) & *(v0 + 192)) != 0)
  {
    v5 = *(v0 + 176);
LABEL_6:
    sub_18E22341C();
    *(v0 + 192) = v8;
    *(v0 + 200) = v7;
    sub_18E1CAEE8(v9, v7);
    v10 = objc_opt_self();

    v11 = v1;
    sub_18E200EE0([v10 sharedManager]);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_18E42E550;
    swift_continuation_init();
    v12 = sub_18E2706EC(&qword_1EABE91A8, &qword_18E4E2DA0);
    sub_18E1C54E0(v12);
    *(v0 + 88) = 1107296256;
    sub_18E1E2C14(&unk_1F0189E28);
    sub_18E1E1758();
    [v13 v14];
    sub_18E1CF618();
  }

  else
  {
    while (1)
    {
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v3 = *(v0 + 176);
      if (v6 >= (((1 << *(v0 + 248)) + 63) >> 6))
      {
        v16 = *(v0 + 168);

        sub_18E1D008C();
        sub_18E1CF618();

        __asm { BRAA            X1, X16 }
      }

      ++v4;
      if (*(v3 + 8 * v6 + 64))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_18E42E82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_18E1D4964();
  a21 = v23;
  a22 = v24;
  sub_18E223A90();
  a20 = v22;
  v25 = v22[29];
  v26 = v22[30];
  swift_willThrow();

  if (qword_1ED6A8AB0 != -1)
  {
    sub_18E1C6D78();
    swift_once();
  }

  v28 = v22[27];
  v27 = v22[28];
  sub_18E1C95EC(v22[23], qword_1ED6A9870);
  sub_18E1D4560();

  v29 = v27;
  v30 = sub_18E44E80C();
  v31 = sub_18E44EE0C();

  if (os_log_type_enabled(v30, v31))
  {
    v33 = v22[27];
    v32 = v22[28];
    v34 = v22[26];
    v36 = v22[20];
    v35 = v22[21];
    a9 = v22[19];
    sub_18E1C9700();
    swift_slowAlloc();
    sub_18E1E2DDC();
    a10 = swift_slowAlloc();
    *v28 = 136315394;
    v37 = sub_18E1C9624(v34, v33, &a10);

    *(v28 + 4) = v37;
    sub_18E224E7C();
    v38 = [v32 uuid];
    sub_18E44E68C();

    sub_18E43ADE8(&unk_1ED6A8270, MEMORY[0x1E69695A8]);
    sub_18E44F39C();
    sub_18E1E3B5C();
    (*(v36 + 8))(v35, a9);
    v39 = sub_18E1E2000();
    v42 = sub_18E1C9624(v39, v40, v41);

    *(v28 + 14) = v42;
    sub_18E1D5C68();
    _os_log_impl(v43, v44, v45, v46, v47, v48);
    sub_18E221F10();
    swift_arrayDestroy();
    sub_18E1C6164();
    MEMORY[0x193ACD400]();
    v49 = sub_18E1D6214();
    MEMORY[0x193ACD400](v49);
  }

  else
  {
    v50 = v22[27];
  }

  v51 = v22[30];
  v52 = v22[28];
  v53 = v22[21];
  v54 = v22[22];
  swift_willThrow();

  sub_18E1D008C();
  v55 = v22[30];
  sub_18E1CEA3C();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_18E42EA8C(uint64_t a1, void *a2)
{
  v3 = sub_18E1E15F4((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_18E42EAFC(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume();
  }
}

uint64_t sub_18E42EAFC(uint64_t a1, uint64_t a2)
{
  sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

uint64_t sub_18E42EB6C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for CoherentAssetLock();
  result = sub_18E44F01C();
  *a1 = result;
  return result;
}

void CatalogAssetProtocol.displayVersion.getter()
{
  sub_18E1C575C();
  v2 = v1;
  v4 = v3;
  v35 = v5;
  v40 = *MEMORY[0x1E69E9840];
  v6 = sub_18E44E54C();
  v7 = sub_18E1C4EAC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_18E1C4EDC();
  sub_18E1C561C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_18E1C4EAC(AssociatedTypeWitness);
  v14 = v13;
  v16 = *(v15 + 64);
  sub_18E1C5924();
  MEMORY[0x1EEE9AC00](v17);
  sub_18E1FF2DC();
  (*(v2 + 80))(v4, v2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v19 = *(v14 + 8);
  v20 = sub_18E1D03F8();
  v21(v20);
  sub_18E44E58C();
  (*(v9 + 8))(v0, v6);
  v23 = objc_opt_self();
  sub_18E1D43C0();
  v24 = sub_18E44E60C();
  *&v38 = 0;
  v25 = [v23 JSONObjectWithData:v24 options:0 error:&v38];

  if (v25)
  {
    v26 = v38;
    sub_18E44EF2C();
    swift_unknownObjectRelease();
    sub_18E2706EC(&unk_1EABE9010, &qword_18E4B0160);
    if (sub_18E1D5F88())
    {
      sub_18E26C3FC(v36, &v38);
      v27 = sub_18E1D43C0();
      sub_18E1FDFE0(v27, v28);

      if (v39)
      {
        if (sub_18E1D5F88())
        {
          *v35 = v36;
          v35[1] = v37;
          goto LABEL_3;
        }
      }

      else
      {
        sub_18E1E8EEC(&v38, &qword_1EABE3B70, &qword_18E4AAB80);
      }
    }

    else
    {
      v33 = sub_18E1D43C0();
      sub_18E1FDFE0(v33, v34);
    }
  }

  else
  {
    v29 = v38;
    v30 = sub_18E44E44C();

    swift_willThrow();
    v31 = sub_18E1D43C0();
    sub_18E1FDFE0(v31, v32);
  }

  *v35 = 0;
  v35[1] = 0;
LABEL_3:
  v22 = *MEMORY[0x1E69E9840];
  sub_18E1C5544();
}

__n128 CatalogAsset.specificationVersion.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 24);
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  return result;
}

uint64_t sub_18E42EFD8(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void CatalogAsset.init(specificationVersion:metadata:contents:mobileAssetMetadata:assetLock:)()
{
  sub_18E1C575C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v20 = v6;
  sub_18E1C5780();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_18E1C4EDC();
  sub_18E1FF2DC();
  v13 = *v12;
  v15 = sub_18E1C9074(v14, *(v14 + 2));
  v18(v15, v16, v17);
  CatalogAsset.init(specificationVersion:contents:mobileAssetMetadata:assetLock:)();
  (*(v8 + 8))(v5, v1);
  sub_18E1C82B8(v3);
  (*(v19 + 8))(v20, v3);
  sub_18E1C5544();
}

void CatalogAsset.init(specificationVersion:contents:mobileAssetMetadata:assetLock:)()
{
  sub_18E1C575C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_18E1C5780();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_18E1C4EDC();
  v16 = *v15;
  v26 = *v17;
  v27 = *(v17 + 2);
  (*(v9 + 16))(v14 - v13);
  sub_18E1EA5AC();
  sub_18E436CD0(v18, v19, v20, v21, 0, v7, v5, v3, v22, v1);
  v23 = *(v9 + 8);
  v24 = sub_18E208090();
  v25(v24);
  sub_18E1C5544();
}

void CatalogAsset.init(specificationVersion:contents:mobileAssetMetadata:coherentAssetLock:shouldUnlockOnDeinit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_18E1C575C();
  v46 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_18E1C5780();
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_18E1C4EDC();
  sub_18E1FF2DC();
  v41 = sub_18E1C9074(v40, *(v40 + 2));
  v42(v41);
  v47 = v30 | 0x8000000000000000;
  sub_18E436CD0(&v48, v21, v32, &v47, v28, v26, v24, v46, v34, a21);
  v43 = *(v36 + 8);
  v44 = sub_18E208090();
  v45(v44);
  sub_18E1C5544();
}

unsigned __int8 *sub_18E42F494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1C10, &qword_18E4E3960);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for ModelConfigurationReplacementAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE9278, &qword_18E4E3968);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = *MEMORY[0x1E69DEF38];
  v16 = sub_18E44EAAC();
  v18 = v17;

  v19 = sub_18E2491A4(v16, v18, a5);
  v21 = v20;

  if (!v21)
  {
    goto LABEL_71;
  }

  v23 = HIBYTE(v21) & 0xF;
  v24 = v19 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v25 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

LABEL_71:
    v46 = 0;
    goto LABEL_72;
  }

  if ((v21 & 0x1000000000000000) == 0)
  {
    if ((v21 & 0x2000000000000000) != 0)
    {
      v53[0] = v19;
      v53[1] = v21 & 0xFFFFFFFFFFFFFFLL;
      if (v19 == 43)
      {
        if (v23)
        {
          if (--v23)
          {
            v27 = 0;
            v37 = v53 + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              v39 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                break;
              }

              v27 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                break;
              }

              ++v37;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v19 != 45)
      {
        if (v23)
        {
          v27 = 0;
          v42 = v53;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v23)
      {
        if (--v23)
        {
          v27 = 0;
          v31 = v53 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v33 - v32;
            if (__OFSUB__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v19 & 0x1000000000000000) != 0)
      {
        result = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v26 = *result;
      if (v26 == 43)
      {
        if (v24 >= 1)
        {
          v23 = v24 - 1;
          if (v24 != 1)
          {
            v27 = 0;
            if (result)
            {
              v34 = result + 1;
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  goto LABEL_65;
                }

                v36 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  goto LABEL_65;
                }

                v27 = v36 + v35;
                if (__OFADD__(v36, v35))
                {
                  goto LABEL_65;
                }

                ++v34;
                if (!--v23)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v26 != 45)
      {
        if (v24)
        {
          v27 = 0;
          if (result)
          {
            while (1)
            {
              v40 = *result - 48;
              if (v40 > 9)
              {
                goto LABEL_65;
              }

              v41 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v24)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v27 = 0;
        LOBYTE(v23) = 1;
        goto LABEL_66;
      }

      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          v27 = 0;
          if (result)
          {
            v28 = result + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_65;
              }

              v30 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                goto LABEL_65;
              }

              ++v28;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v23) = 0;
LABEL_66:
          v54 = v23;
          v45 = v23;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v27 = sub_18E43A304(v19, v21, 10);
  v45 = v52;
LABEL_67:

  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v27;
  }

LABEL_72:
  a8[2] = v46;
  v47 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v49 = v48;

  if (v49)
  {
    v50 = v47;
  }

  else
  {
    v50 = 0x6E776F6E6B6E753CLL;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for ModelConfigurationReplacementAssetContents);
  *a8 = v50;
  a8[1] = v51;
  return result;
}

unsigned __int8 *sub_18E42F908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1B78, &qword_18E4E3990);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for LLMDraftModelAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE9290, &qword_18E4E3998);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = *MEMORY[0x1E69DEF38];
  v16 = sub_18E44EAAC();
  v18 = v17;

  v19 = sub_18E2491A4(v16, v18, a5);
  v21 = v20;

  if (!v21)
  {
    goto LABEL_71;
  }

  v23 = HIBYTE(v21) & 0xF;
  v24 = v19 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v25 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

LABEL_71:
    v46 = 0;
    goto LABEL_72;
  }

  if ((v21 & 0x1000000000000000) == 0)
  {
    if ((v21 & 0x2000000000000000) != 0)
    {
      v53[0] = v19;
      v53[1] = v21 & 0xFFFFFFFFFFFFFFLL;
      if (v19 == 43)
      {
        if (v23)
        {
          if (--v23)
          {
            v27 = 0;
            v37 = v53 + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              v39 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                break;
              }

              v27 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                break;
              }

              ++v37;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v19 != 45)
      {
        if (v23)
        {
          v27 = 0;
          v42 = v53;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v23)
      {
        if (--v23)
        {
          v27 = 0;
          v31 = v53 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v33 - v32;
            if (__OFSUB__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v19 & 0x1000000000000000) != 0)
      {
        result = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v26 = *result;
      if (v26 == 43)
      {
        if (v24 >= 1)
        {
          v23 = v24 - 1;
          if (v24 != 1)
          {
            v27 = 0;
            if (result)
            {
              v34 = result + 1;
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  goto LABEL_65;
                }

                v36 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  goto LABEL_65;
                }

                v27 = v36 + v35;
                if (__OFADD__(v36, v35))
                {
                  goto LABEL_65;
                }

                ++v34;
                if (!--v23)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v26 != 45)
      {
        if (v24)
        {
          v27 = 0;
          if (result)
          {
            while (1)
            {
              v40 = *result - 48;
              if (v40 > 9)
              {
                goto LABEL_65;
              }

              v41 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v24)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v27 = 0;
        LOBYTE(v23) = 1;
        goto LABEL_66;
      }

      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          v27 = 0;
          if (result)
          {
            v28 = result + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_65;
              }

              v30 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                goto LABEL_65;
              }

              ++v28;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v23) = 0;
LABEL_66:
          v54 = v23;
          v45 = v23;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v27 = sub_18E43A304(v19, v21, 10);
  v45 = v52;
LABEL_67:

  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v27;
  }

LABEL_72:
  a8[2] = v46;
  v47 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v49 = v48;

  if (v49)
  {
    v50 = v47;
  }

  else
  {
    v50 = 0x6E776F6E6B6E753CLL;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for LLMDraftModelAssetContents);
  *a8 = v50;
  a8[1] = v51;
  return result;
}

unsigned __int8 *sub_18E42FD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE18D0, &qword_18E4E3A60);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for DiffusionModelAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE9300, &qword_18E4E3A68);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = *MEMORY[0x1E69DEF38];
  v16 = sub_18E44EAAC();
  v18 = v17;

  v19 = sub_18E2491A4(v16, v18, a5);
  v21 = v20;

  if (!v21)
  {
    goto LABEL_71;
  }

  v23 = HIBYTE(v21) & 0xF;
  v24 = v19 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v25 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

LABEL_71:
    v46 = 0;
    goto LABEL_72;
  }

  if ((v21 & 0x1000000000000000) == 0)
  {
    if ((v21 & 0x2000000000000000) != 0)
    {
      v53[0] = v19;
      v53[1] = v21 & 0xFFFFFFFFFFFFFFLL;
      if (v19 == 43)
      {
        if (v23)
        {
          if (--v23)
          {
            v27 = 0;
            v37 = v53 + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              v39 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                break;
              }

              v27 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                break;
              }

              ++v37;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v19 != 45)
      {
        if (v23)
        {
          v27 = 0;
          v42 = v53;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v23)
      {
        if (--v23)
        {
          v27 = 0;
          v31 = v53 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v33 - v32;
            if (__OFSUB__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v19 & 0x1000000000000000) != 0)
      {
        result = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v26 = *result;
      if (v26 == 43)
      {
        if (v24 >= 1)
        {
          v23 = v24 - 1;
          if (v24 != 1)
          {
            v27 = 0;
            if (result)
            {
              v34 = result + 1;
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  goto LABEL_65;
                }

                v36 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  goto LABEL_65;
                }

                v27 = v36 + v35;
                if (__OFADD__(v36, v35))
                {
                  goto LABEL_65;
                }

                ++v34;
                if (!--v23)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v26 != 45)
      {
        if (v24)
        {
          v27 = 0;
          if (result)
          {
            while (1)
            {
              v40 = *result - 48;
              if (v40 > 9)
              {
                goto LABEL_65;
              }

              v41 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v24)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v27 = 0;
        LOBYTE(v23) = 1;
        goto LABEL_66;
      }

      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          v27 = 0;
          if (result)
          {
            v28 = result + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_65;
              }

              v30 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                goto LABEL_65;
              }

              ++v28;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v23) = 0;
LABEL_66:
          v54 = v23;
          v45 = v23;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v27 = sub_18E43A304(v19, v21, 10);
  v45 = v52;
LABEL_67:

  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v27;
  }

LABEL_72:
  a8[2] = v46;
  v47 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v49 = v48;

  if (v49)
  {
    v50 = v47;
  }

  else
  {
    v50 = 0x6E776F6E6B6E753CLL;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for DiffusionModelAssetContents);
  *a8 = v50;
  a8[1] = v51;
  return result;
}

unsigned __int8 *sub_18E4301F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1C50, &qword_18E4E3940);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for MotionAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE9258, &qword_18E4E3948);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = *MEMORY[0x1E69DEF38];
  v16 = sub_18E44EAAC();
  v18 = v17;

  v19 = sub_18E2491A4(v16, v18, a5);
  v21 = v20;

  if (!v21)
  {
    goto LABEL_71;
  }

  v23 = HIBYTE(v21) & 0xF;
  v24 = v19 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v25 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

LABEL_71:
    v46 = 0;
    goto LABEL_72;
  }

  if ((v21 & 0x1000000000000000) == 0)
  {
    if ((v21 & 0x2000000000000000) != 0)
    {
      v53[0] = v19;
      v53[1] = v21 & 0xFFFFFFFFFFFFFFLL;
      if (v19 == 43)
      {
        if (v23)
        {
          if (--v23)
          {
            v27 = 0;
            v37 = v53 + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              v39 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                break;
              }

              v27 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                break;
              }

              ++v37;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v19 != 45)
      {
        if (v23)
        {
          v27 = 0;
          v42 = v53;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v23)
      {
        if (--v23)
        {
          v27 = 0;
          v31 = v53 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v33 - v32;
            if (__OFSUB__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v19 & 0x1000000000000000) != 0)
      {
        result = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v26 = *result;
      if (v26 == 43)
      {
        if (v24 >= 1)
        {
          v23 = v24 - 1;
          if (v24 != 1)
          {
            v27 = 0;
            if (result)
            {
              v34 = result + 1;
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  goto LABEL_65;
                }

                v36 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  goto LABEL_65;
                }

                v27 = v36 + v35;
                if (__OFADD__(v36, v35))
                {
                  goto LABEL_65;
                }

                ++v34;
                if (!--v23)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v26 != 45)
      {
        if (v24)
        {
          v27 = 0;
          if (result)
          {
            while (1)
            {
              v40 = *result - 48;
              if (v40 > 9)
              {
                goto LABEL_65;
              }

              v41 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v24)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v27 = 0;
        LOBYTE(v23) = 1;
        goto LABEL_66;
      }

      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          v27 = 0;
          if (result)
          {
            v28 = result + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_65;
              }

              v30 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                goto LABEL_65;
              }

              ++v28;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v23) = 0;
LABEL_66:
          v54 = v23;
          v45 = v23;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v27 = sub_18E43A304(v19, v21, 10);
  v45 = v52;
LABEL_67:

  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v27;
  }

LABEL_72:
  a8[2] = v46;
  v47 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v49 = v48;

  if (v49)
  {
    v50 = v47;
  }

  else
  {
    v50 = 0x6E776F6E6B6E753CLL;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for MotionAssetContents);
  *a8 = v50;
  a8[1] = v51;
  return result;
}

unsigned __int8 *sub_18E430664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1B98, &qword_18E4E3980);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for LLMModelAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE9288, &qword_18E4E3988);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = *MEMORY[0x1E69DEF38];
  v16 = sub_18E44EAAC();
  v18 = v17;

  v19 = sub_18E2491A4(v16, v18, a5);
  v21 = v20;

  if (!v21)
  {
    goto LABEL_71;
  }

  v23 = HIBYTE(v21) & 0xF;
  v24 = v19 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v25 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

LABEL_71:
    v46 = 0;
    goto LABEL_72;
  }

  if ((v21 & 0x1000000000000000) == 0)
  {
    if ((v21 & 0x2000000000000000) != 0)
    {
      v53[0] = v19;
      v53[1] = v21 & 0xFFFFFFFFFFFFFFLL;
      if (v19 == 43)
      {
        if (v23)
        {
          if (--v23)
          {
            v27 = 0;
            v37 = v53 + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              v39 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                break;
              }

              v27 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                break;
              }

              ++v37;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v19 != 45)
      {
        if (v23)
        {
          v27 = 0;
          v42 = v53;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v23)
      {
        if (--v23)
        {
          v27 = 0;
          v31 = v53 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v33 - v32;
            if (__OFSUB__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v19 & 0x1000000000000000) != 0)
      {
        result = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v26 = *result;
      if (v26 == 43)
      {
        if (v24 >= 1)
        {
          v23 = v24 - 1;
          if (v24 != 1)
          {
            v27 = 0;
            if (result)
            {
              v34 = result + 1;
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  goto LABEL_65;
                }

                v36 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  goto LABEL_65;
                }

                v27 = v36 + v35;
                if (__OFADD__(v36, v35))
                {
                  goto LABEL_65;
                }

                ++v34;
                if (!--v23)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v26 != 45)
      {
        if (v24)
        {
          v27 = 0;
          if (result)
          {
            while (1)
            {
              v40 = *result - 48;
              if (v40 > 9)
              {
                goto LABEL_65;
              }

              v41 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v24)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v27 = 0;
        LOBYTE(v23) = 1;
        goto LABEL_66;
      }

      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          v27 = 0;
          if (result)
          {
            v28 = result + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_65;
              }

              v30 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                goto LABEL_65;
              }

              ++v28;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v23) = 0;
LABEL_66:
          v54 = v23;
          v45 = v23;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v27 = sub_18E43A304(v19, v21, 10);
  v45 = v52;
LABEL_67:

  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v27;
  }

LABEL_72:
  a8[2] = v46;
  v47 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v49 = v48;

  if (v49)
  {
    v50 = v47;
  }

  else
  {
    v50 = 0x6E776F6E6B6E753CLL;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for LLMModelAssetContents);
  *a8 = v50;
  a8[1] = v51;
  return result;
}

unsigned __int8 *sub_18E430AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1D98, &qword_18E4A5768);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for TokenizerAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE9218, &unk_18E4E38E0);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = *MEMORY[0x1E69DEF38];
  v16 = sub_18E44EAAC();
  v18 = v17;

  v19 = sub_18E2491A4(v16, v18, a5);
  v21 = v20;

  if (!v21)
  {
    goto LABEL_71;
  }

  v23 = HIBYTE(v21) & 0xF;
  v24 = v19 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v25 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

LABEL_71:
    v46 = 0;
    goto LABEL_72;
  }

  if ((v21 & 0x1000000000000000) == 0)
  {
    if ((v21 & 0x2000000000000000) != 0)
    {
      v53[0] = v19;
      v53[1] = v21 & 0xFFFFFFFFFFFFFFLL;
      if (v19 == 43)
      {
        if (v23)
        {
          if (--v23)
          {
            v27 = 0;
            v37 = v53 + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              v39 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                break;
              }

              v27 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                break;
              }

              ++v37;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v19 != 45)
      {
        if (v23)
        {
          v27 = 0;
          v42 = v53;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v23)
      {
        if (--v23)
        {
          v27 = 0;
          v31 = v53 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v33 - v32;
            if (__OFSUB__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v19 & 0x1000000000000000) != 0)
      {
        result = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v26 = *result;
      if (v26 == 43)
      {
        if (v24 >= 1)
        {
          v23 = v24 - 1;
          if (v24 != 1)
          {
            v27 = 0;
            if (result)
            {
              v34 = result + 1;
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  goto LABEL_65;
                }

                v36 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  goto LABEL_65;
                }

                v27 = v36 + v35;
                if (__OFADD__(v36, v35))
                {
                  goto LABEL_65;
                }

                ++v34;
                if (!--v23)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v26 != 45)
      {
        if (v24)
        {
          v27 = 0;
          if (result)
          {
            while (1)
            {
              v40 = *result - 48;
              if (v40 > 9)
              {
                goto LABEL_65;
              }

              v41 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v24)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v27 = 0;
        LOBYTE(v23) = 1;
        goto LABEL_66;
      }

      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          v27 = 0;
          if (result)
          {
            v28 = result + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_65;
              }

              v30 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                goto LABEL_65;
              }

              ++v28;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v23) = 0;
LABEL_66:
          v54 = v23;
          v45 = v23;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v27 = sub_18E43A304(v19, v21, 10);
  v45 = v52;
LABEL_67:

  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v27;
  }

LABEL_72:
  a8[2] = v46;
  v47 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v49 = v48;

  if (v49)
  {
    v50 = v47;
  }

  else
  {
    v50 = 0x6E776F6E6B6E753CLL;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for TokenizerAssetContents);
  *a8 = v50;
  a8[1] = v51;
  return result;
}

unsigned __int8 *sub_18E430F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1AC0, &qword_18E4A24B0);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for LLMAdapterAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE92A8, &unk_18E4E39B8);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = *MEMORY[0x1E69DEF38];
  v16 = sub_18E44EAAC();
  v18 = v17;

  v19 = sub_18E2491A4(v16, v18, a5);
  v21 = v20;

  if (!v21)
  {
    goto LABEL_71;
  }

  v23 = HIBYTE(v21) & 0xF;
  v24 = v19 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v25 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

LABEL_71:
    v46 = 0;
    goto LABEL_72;
  }

  if ((v21 & 0x1000000000000000) == 0)
  {
    if ((v21 & 0x2000000000000000) != 0)
    {
      v53[0] = v19;
      v53[1] = v21 & 0xFFFFFFFFFFFFFFLL;
      if (v19 == 43)
      {
        if (v23)
        {
          if (--v23)
          {
            v27 = 0;
            v37 = v53 + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              v39 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                break;
              }

              v27 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                break;
              }

              ++v37;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v19 != 45)
      {
        if (v23)
        {
          v27 = 0;
          v42 = v53;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v23)
      {
        if (--v23)
        {
          v27 = 0;
          v31 = v53 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v33 - v32;
            if (__OFSUB__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v19 & 0x1000000000000000) != 0)
      {
        result = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v26 = *result;
      if (v26 == 43)
      {
        if (v24 >= 1)
        {
          v23 = v24 - 1;
          if (v24 != 1)
          {
            v27 = 0;
            if (result)
            {
              v34 = result + 1;
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  goto LABEL_65;
                }

                v36 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  goto LABEL_65;
                }

                v27 = v36 + v35;
                if (__OFADD__(v36, v35))
                {
                  goto LABEL_65;
                }

                ++v34;
                if (!--v23)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v26 != 45)
      {
        if (v24)
        {
          v27 = 0;
          if (result)
          {
            while (1)
            {
              v40 = *result - 48;
              if (v40 > 9)
              {
                goto LABEL_65;
              }

              v41 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v24)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v27 = 0;
        LOBYTE(v23) = 1;
        goto LABEL_66;
      }

      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          v27 = 0;
          if (result)
          {
            v28 = result + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_65;
              }

              v30 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                goto LABEL_65;
              }

              ++v28;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v23) = 0;
LABEL_66:
          v54 = v23;
          v45 = v23;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v27 = sub_18E43A304(v19, v21, 10);
  v45 = v52;
LABEL_67:

  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v27;
  }

LABEL_72:
  a8[2] = v46;
  v47 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v49 = v48;

  if (v49)
  {
    v50 = v47;
  }

  else
  {
    v50 = 0x6E776F6E6B6E753CLL;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for LLMAdapterAssetContents);
  *a8 = v50;
  a8[1] = v51;
  return result;
}

unsigned __int8 *sub_18E4313C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1A28, &qword_18E4A1160);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for ImageFilterAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE92D0, &qword_18E4E3A08);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = *MEMORY[0x1E69DEF38];
  v16 = sub_18E44EAAC();
  v18 = v17;

  v19 = sub_18E2491A4(v16, v18, a5);
  v21 = v20;

  if (!v21)
  {
    goto LABEL_71;
  }

  v23 = HIBYTE(v21) & 0xF;
  v24 = v19 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v25 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

LABEL_71:
    v46 = 0;
    goto LABEL_72;
  }

  if ((v21 & 0x1000000000000000) == 0)
  {
    if ((v21 & 0x2000000000000000) != 0)
    {
      v53[0] = v19;
      v53[1] = v21 & 0xFFFFFFFFFFFFFFLL;
      if (v19 == 43)
      {
        if (v23)
        {
          if (--v23)
          {
            v27 = 0;
            v37 = v53 + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              v39 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                break;
              }

              v27 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                break;
              }

              ++v37;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v19 != 45)
      {
        if (v23)
        {
          v27 = 0;
          v42 = v53;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v23)
      {
        if (--v23)
        {
          v27 = 0;
          v31 = v53 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v33 - v32;
            if (__OFSUB__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v19 & 0x1000000000000000) != 0)
      {
        result = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v26 = *result;
      if (v26 == 43)
      {
        if (v24 >= 1)
        {
          v23 = v24 - 1;
          if (v24 != 1)
          {
            v27 = 0;
            if (result)
            {
              v34 = result + 1;
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  goto LABEL_65;
                }

                v36 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  goto LABEL_65;
                }

                v27 = v36 + v35;
                if (__OFADD__(v36, v35))
                {
                  goto LABEL_65;
                }

                ++v34;
                if (!--v23)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v26 != 45)
      {
        if (v24)
        {
          v27 = 0;
          if (result)
          {
            while (1)
            {
              v40 = *result - 48;
              if (v40 > 9)
              {
                goto LABEL_65;
              }

              v41 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v24)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v27 = 0;
        LOBYTE(v23) = 1;
        goto LABEL_66;
      }

      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          v27 = 0;
          if (result)
          {
            v28 = result + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_65;
              }

              v30 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                goto LABEL_65;
              }

              ++v28;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v23) = 0;
LABEL_66:
          v54 = v23;
          v45 = v23;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v27 = sub_18E43A304(v19, v21, 10);
  v45 = v52;
LABEL_67:

  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v27;
  }

LABEL_72:
  a8[2] = v46;
  v47 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v49 = v48;

  if (v49)
  {
    v50 = v47;
  }

  else
  {
    v50 = 0x6E776F6E6B6E753CLL;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for ImageFilterAssetContents);
  *a8 = v50;
  a8[1] = v51;
  return result;
}

unsigned __int8 *sub_18E431834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1A98, &qword_18E4A17F0);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for ImageScalerAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE92C0, &qword_18E4E39E8);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = *MEMORY[0x1E69DEF38];
  v16 = sub_18E44EAAC();
  v18 = v17;

  v19 = sub_18E2491A4(v16, v18, a5);
  v21 = v20;

  if (!v21)
  {
    goto LABEL_71;
  }

  v23 = HIBYTE(v21) & 0xF;
  v24 = v19 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v25 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

LABEL_71:
    v46 = 0;
    goto LABEL_72;
  }

  if ((v21 & 0x1000000000000000) == 0)
  {
    if ((v21 & 0x2000000000000000) != 0)
    {
      v53[0] = v19;
      v53[1] = v21 & 0xFFFFFFFFFFFFFFLL;
      if (v19 == 43)
      {
        if (v23)
        {
          if (--v23)
          {
            v27 = 0;
            v37 = v53 + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              v39 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                break;
              }

              v27 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                break;
              }

              ++v37;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v19 != 45)
      {
        if (v23)
        {
          v27 = 0;
          v42 = v53;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v23)
      {
        if (--v23)
        {
          v27 = 0;
          v31 = v53 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v33 - v32;
            if (__OFSUB__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v19 & 0x1000000000000000) != 0)
      {
        result = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v26 = *result;
      if (v26 == 43)
      {
        if (v24 >= 1)
        {
          v23 = v24 - 1;
          if (v24 != 1)
          {
            v27 = 0;
            if (result)
            {
              v34 = result + 1;
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  goto LABEL_65;
                }

                v36 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  goto LABEL_65;
                }

                v27 = v36 + v35;
                if (__OFADD__(v36, v35))
                {
                  goto LABEL_65;
                }

                ++v34;
                if (!--v23)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v26 != 45)
      {
        if (v24)
        {
          v27 = 0;
          if (result)
          {
            while (1)
            {
              v40 = *result - 48;
              if (v40 > 9)
              {
                goto LABEL_65;
              }

              v41 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v24)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v27 = 0;
        LOBYTE(v23) = 1;
        goto LABEL_66;
      }

      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          v27 = 0;
          if (result)
          {
            v28 = result + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_65;
              }

              v30 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                goto LABEL_65;
              }

              ++v28;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v23) = 0;
LABEL_66:
          v54 = v23;
          v45 = v23;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v27 = sub_18E43A304(v19, v21, 10);
  v45 = v52;
LABEL_67:

  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v27;
  }

LABEL_72:
  a8[2] = v46;
  v47 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v49 = v48;

  if (v49)
  {
    v50 = v47;
  }

  else
  {
    v50 = 0x6E776F6E6B6E753CLL;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for ImageScalerAssetContents);
  *a8 = v50;
  a8[1] = v51;
  return result;
}

unsigned __int8 *sub_18E431CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1C30, &qword_18E4E3950);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for MotionAdapterAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE9268, &qword_18E4E3958);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = *MEMORY[0x1E69DEF38];
  v16 = sub_18E44EAAC();
  v18 = v17;

  v19 = sub_18E2491A4(v16, v18, a5);
  v21 = v20;

  if (!v21)
  {
    goto LABEL_71;
  }

  v23 = HIBYTE(v21) & 0xF;
  v24 = v19 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v25 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

LABEL_71:
    v46 = 0;
    goto LABEL_72;
  }

  if ((v21 & 0x1000000000000000) == 0)
  {
    if ((v21 & 0x2000000000000000) != 0)
    {
      v53[0] = v19;
      v53[1] = v21 & 0xFFFFFFFFFFFFFFLL;
      if (v19 == 43)
      {
        if (v23)
        {
          if (--v23)
          {
            v27 = 0;
            v37 = v53 + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              v39 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                break;
              }

              v27 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                break;
              }

              ++v37;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v19 != 45)
      {
        if (v23)
        {
          v27 = 0;
          v42 = v53;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v23)
      {
        if (--v23)
        {
          v27 = 0;
          v31 = v53 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v33 - v32;
            if (__OFSUB__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v19 & 0x1000000000000000) != 0)
      {
        result = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v26 = *result;
      if (v26 == 43)
      {
        if (v24 >= 1)
        {
          v23 = v24 - 1;
          if (v24 != 1)
          {
            v27 = 0;
            if (result)
            {
              v34 = result + 1;
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  goto LABEL_65;
                }

                v36 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  goto LABEL_65;
                }

                v27 = v36 + v35;
                if (__OFADD__(v36, v35))
                {
                  goto LABEL_65;
                }

                ++v34;
                if (!--v23)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v26 != 45)
      {
        if (v24)
        {
          v27 = 0;
          if (result)
          {
            while (1)
            {
              v40 = *result - 48;
              if (v40 > 9)
              {
                goto LABEL_65;
              }

              v41 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v24)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v27 = 0;
        LOBYTE(v23) = 1;
        goto LABEL_66;
      }

      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          v27 = 0;
          if (result)
          {
            v28 = result + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_65;
              }

              v30 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                goto LABEL_65;
              }

              ++v28;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v23) = 0;
LABEL_66:
          v54 = v23;
          v45 = v23;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v27 = sub_18E43A304(v19, v21, 10);
  v45 = v52;
LABEL_67:

  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v27;
  }

LABEL_72:
  a8[2] = v46;
  v47 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v49 = v48;

  if (v49)
  {
    v50 = v47;
  }

  else
  {
    v50 = 0x6E776F6E6B6E753CLL;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for MotionAdapterAssetContents);
  *a8 = v50;
  a8[1] = v51;
  return result;
}

unsigned __int8 *sub_18E43211C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1AA8, &qword_18E4A1ED0);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for ImageTokenizerAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE92B0, &unk_18E4E39C8);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = *MEMORY[0x1E69DEF38];
  v16 = sub_18E44EAAC();
  v18 = v17;

  v19 = sub_18E2491A4(v16, v18, a5);
  v21 = v20;

  if (!v21)
  {
    goto LABEL_71;
  }

  v23 = HIBYTE(v21) & 0xF;
  v24 = v19 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v25 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

LABEL_71:
    v46 = 0;
    goto LABEL_72;
  }

  if ((v21 & 0x1000000000000000) == 0)
  {
    if ((v21 & 0x2000000000000000) != 0)
    {
      v53[0] = v19;
      v53[1] = v21 & 0xFFFFFFFFFFFFFFLL;
      if (v19 == 43)
      {
        if (v23)
        {
          if (--v23)
          {
            v27 = 0;
            v37 = v53 + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              v39 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                break;
              }

              v27 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                break;
              }

              ++v37;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v19 != 45)
      {
        if (v23)
        {
          v27 = 0;
          v42 = v53;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v23)
      {
        if (--v23)
        {
          v27 = 0;
          v31 = v53 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v33 - v32;
            if (__OFSUB__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v19 & 0x1000000000000000) != 0)
      {
        result = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v26 = *result;
      if (v26 == 43)
      {
        if (v24 >= 1)
        {
          v23 = v24 - 1;
          if (v24 != 1)
          {
            v27 = 0;
            if (result)
            {
              v34 = result + 1;
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  goto LABEL_65;
                }

                v36 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  goto LABEL_65;
                }

                v27 = v36 + v35;
                if (__OFADD__(v36, v35))
                {
                  goto LABEL_65;
                }

                ++v34;
                if (!--v23)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v26 != 45)
      {
        if (v24)
        {
          v27 = 0;
          if (result)
          {
            while (1)
            {
              v40 = *result - 48;
              if (v40 > 9)
              {
                goto LABEL_65;
              }

              v41 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v24)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v27 = 0;
        LOBYTE(v23) = 1;
        goto LABEL_66;
      }

      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          v27 = 0;
          if (result)
          {
            v28 = result + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_65;
              }

              v30 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                goto LABEL_65;
              }

              ++v28;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v23) = 0;
LABEL_66:
          v54 = v23;
          v45 = v23;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v27 = sub_18E43A304(v19, v21, 10);
  v45 = v52;
LABEL_67:

  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v27;
  }

LABEL_72:
  a8[2] = v46;
  v47 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v49 = v48;

  if (v49)
  {
    v50 = v47;
  }

  else
  {
    v50 = 0x6E776F6E6B6E753CLL;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for ImageTokenizerAssetContents);
  *a8 = v50;
  a8[1] = v51;
  return result;
}

unsigned __int8 *sub_18E432590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1CA8, &qword_18E4E3930);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for PromptAllowListAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE9248, &qword_18E4E3938);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = *MEMORY[0x1E69DEF38];
  v16 = sub_18E44EAAC();
  v18 = v17;

  v19 = sub_18E2491A4(v16, v18, a5);
  v21 = v20;

  if (!v21)
  {
    goto LABEL_71;
  }

  v23 = HIBYTE(v21) & 0xF;
  v24 = v19 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v25 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

LABEL_71:
    v46 = 0;
    goto LABEL_72;
  }

  if ((v21 & 0x1000000000000000) == 0)
  {
    if ((v21 & 0x2000000000000000) != 0)
    {
      v53[0] = v19;
      v53[1] = v21 & 0xFFFFFFFFFFFFFFLL;
      if (v19 == 43)
      {
        if (v23)
        {
          if (--v23)
          {
            v27 = 0;
            v37 = v53 + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              v39 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                break;
              }

              v27 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                break;
              }

              ++v37;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v19 != 45)
      {
        if (v23)
        {
          v27 = 0;
          v42 = v53;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v23)
      {
        if (--v23)
        {
          v27 = 0;
          v31 = v53 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v33 - v32;
            if (__OFSUB__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v19 & 0x1000000000000000) != 0)
      {
        result = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v26 = *result;
      if (v26 == 43)
      {
        if (v24 >= 1)
        {
          v23 = v24 - 1;
          if (v24 != 1)
          {
            v27 = 0;
            if (result)
            {
              v34 = result + 1;
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  goto LABEL_65;
                }

                v36 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  goto LABEL_65;
                }

                v27 = v36 + v35;
                if (__OFADD__(v36, v35))
                {
                  goto LABEL_65;
                }

                ++v34;
                if (!--v23)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v26 != 45)
      {
        if (v24)
        {
          v27 = 0;
          if (result)
          {
            while (1)
            {
              v40 = *result - 48;
              if (v40 > 9)
              {
                goto LABEL_65;
              }

              v41 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v24)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v27 = 0;
        LOBYTE(v23) = 1;
        goto LABEL_66;
      }

      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          v27 = 0;
          if (result)
          {
            v28 = result + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_65;
              }

              v30 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                goto LABEL_65;
              }

              ++v28;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v23) = 0;
LABEL_66:
          v54 = v23;
          v45 = v23;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v27 = sub_18E43A304(v19, v21, 10);
  v45 = v52;
LABEL_67:

  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v27;
  }

LABEL_72:
  a8[2] = v46;
  v47 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v49 = v48;

  if (v49)
  {
    v50 = v47;
  }

  else
  {
    v50 = 0x6E776F6E6B6E753CLL;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for PromptAllowListAssetContents);
  *a8 = v50;
  a8[1] = v51;
  return result;
}

unsigned __int8 *sub_18E432A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1CC8, &qword_18E4E3920);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for SecureAnalyticsAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE9238, &qword_18E4E3928);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = *MEMORY[0x1E69DEF38];
  v16 = sub_18E44EAAC();
  v18 = v17;

  v19 = sub_18E2491A4(v16, v18, a5);
  v21 = v20;

  if (!v21)
  {
    goto LABEL_71;
  }

  v23 = HIBYTE(v21) & 0xF;
  v24 = v19 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v25 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

LABEL_71:
    v46 = 0;
    goto LABEL_72;
  }

  if ((v21 & 0x1000000000000000) == 0)
  {
    if ((v21 & 0x2000000000000000) != 0)
    {
      v53[0] = v19;
      v53[1] = v21 & 0xFFFFFFFFFFFFFFLL;
      if (v19 == 43)
      {
        if (v23)
        {
          if (--v23)
          {
            v27 = 0;
            v37 = v53 + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              v39 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                break;
              }

              v27 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                break;
              }

              ++v37;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v19 != 45)
      {
        if (v23)
        {
          v27 = 0;
          v42 = v53;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v23)
      {
        if (--v23)
        {
          v27 = 0;
          v31 = v53 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v33 - v32;
            if (__OFSUB__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v19 & 0x1000000000000000) != 0)
      {
        result = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v26 = *result;
      if (v26 == 43)
      {
        if (v24 >= 1)
        {
          v23 = v24 - 1;
          if (v24 != 1)
          {
            v27 = 0;
            if (result)
            {
              v34 = result + 1;
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  goto LABEL_65;
                }

                v36 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  goto LABEL_65;
                }

                v27 = v36 + v35;
                if (__OFADD__(v36, v35))
                {
                  goto LABEL_65;
                }

                ++v34;
                if (!--v23)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v26 != 45)
      {
        if (v24)
        {
          v27 = 0;
          if (result)
          {
            while (1)
            {
              v40 = *result - 48;
              if (v40 > 9)
              {
                goto LABEL_65;
              }

              v41 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v24)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v27 = 0;
        LOBYTE(v23) = 1;
        goto LABEL_66;
      }

      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          v27 = 0;
          if (result)
          {
            v28 = result + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_65;
              }

              v30 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                goto LABEL_65;
              }

              ++v28;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v23) = 0;
LABEL_66:
          v54 = v23;
          v45 = v23;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v27 = sub_18E43A304(v19, v21, 10);
  v45 = v52;
LABEL_67:

  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v27;
  }

LABEL_72:
  a8[2] = v46;
  v47 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v49 = v48;

  if (v49)
  {
    v50 = v47;
  }

  else
  {
    v50 = 0x6E776F6E6B6E753CLL;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for SecureAnalyticsAssetContents);
  *a8 = v50;
  a8[1] = v51;
  return result;
}

unsigned __int8 *sub_18E432E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE18B8, &qword_18E4E3A70);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for DiffusionAdapterAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE9308, &qword_18E4E3A78);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = *MEMORY[0x1E69DEF38];
  v16 = sub_18E44EAAC();
  v18 = v17;

  v19 = sub_18E2491A4(v16, v18, a5);
  v21 = v20;

  if (!v21)
  {
    goto LABEL_71;
  }

  v23 = HIBYTE(v21) & 0xF;
  v24 = v19 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v25 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

LABEL_71:
    v46 = 0;
    goto LABEL_72;
  }

  if ((v21 & 0x1000000000000000) == 0)
  {
    if ((v21 & 0x2000000000000000) != 0)
    {
      v53[0] = v19;
      v53[1] = v21 & 0xFFFFFFFFFFFFFFLL;
      if (v19 == 43)
      {
        if (v23)
        {
          if (--v23)
          {
            v27 = 0;
            v37 = v53 + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              v39 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                break;
              }

              v27 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                break;
              }

              ++v37;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v19 != 45)
      {
        if (v23)
        {
          v27 = 0;
          v42 = v53;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v23)
      {
        if (--v23)
        {
          v27 = 0;
          v31 = v53 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v33 - v32;
            if (__OFSUB__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v19 & 0x1000000000000000) != 0)
      {
        result = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v26 = *result;
      if (v26 == 43)
      {
        if (v24 >= 1)
        {
          v23 = v24 - 1;
          if (v24 != 1)
          {
            v27 = 0;
            if (result)
            {
              v34 = result + 1;
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  goto LABEL_65;
                }

                v36 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  goto LABEL_65;
                }

                v27 = v36 + v35;
                if (__OFADD__(v36, v35))
                {
                  goto LABEL_65;
                }

                ++v34;
                if (!--v23)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v26 != 45)
      {
        if (v24)
        {
          v27 = 0;
          if (result)
          {
            while (1)
            {
              v40 = *result - 48;
              if (v40 > 9)
              {
                goto LABEL_65;
              }

              v41 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v24)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v27 = 0;
        LOBYTE(v23) = 1;
        goto LABEL_66;
      }

      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          v27 = 0;
          if (result)
          {
            v28 = result + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_65;
              }

              v30 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                goto LABEL_65;
              }

              ++v28;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v23) = 0;
LABEL_66:
          v54 = v23;
          v45 = v23;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v27 = sub_18E43A304(v19, v21, 10);
  v45 = v52;
LABEL_67:

  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v27;
  }

LABEL_72:
  a8[2] = v46;
  v47 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v49 = v48;

  if (v49)
  {
    v50 = v47;
  }

  else
  {
    v50 = 0x6E776F6E6B6E753CLL;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for DiffusionAdapterAssetContents);
  *a8 = v50;
  a8[1] = v51;
  return result;
}

unsigned __int8 *sub_18E4332EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1948, &qword_18E4E3A40);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for EmbeddingDenyListAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE92F0, &qword_18E4E3A48);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = *MEMORY[0x1E69DEF38];
  v16 = sub_18E44EAAC();
  v18 = v17;

  v19 = sub_18E2491A4(v16, v18, a5);
  v21 = v20;

  if (!v21)
  {
    goto LABEL_71;
  }

  v23 = HIBYTE(v21) & 0xF;
  v24 = v19 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v25 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

LABEL_71:
    v46 = 0;
    goto LABEL_72;
  }

  if ((v21 & 0x1000000000000000) == 0)
  {
    if ((v21 & 0x2000000000000000) != 0)
    {
      v53[0] = v19;
      v53[1] = v21 & 0xFFFFFFFFFFFFFFLL;
      if (v19 == 43)
      {
        if (v23)
        {
          if (--v23)
          {
            v27 = 0;
            v37 = v53 + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              v39 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                break;
              }

              v27 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                break;
              }

              ++v37;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v19 != 45)
      {
        if (v23)
        {
          v27 = 0;
          v42 = v53;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v23)
      {
        if (--v23)
        {
          v27 = 0;
          v31 = v53 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v33 - v32;
            if (__OFSUB__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v19 & 0x1000000000000000) != 0)
      {
        result = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v26 = *result;
      if (v26 == 43)
      {
        if (v24 >= 1)
        {
          v23 = v24 - 1;
          if (v24 != 1)
          {
            v27 = 0;
            if (result)
            {
              v34 = result + 1;
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  goto LABEL_65;
                }

                v36 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  goto LABEL_65;
                }

                v27 = v36 + v35;
                if (__OFADD__(v36, v35))
                {
                  goto LABEL_65;
                }

                ++v34;
                if (!--v23)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v26 != 45)
      {
        if (v24)
        {
          v27 = 0;
          if (result)
          {
            while (1)
            {
              v40 = *result - 48;
              if (v40 > 9)
              {
                goto LABEL_65;
              }

              v41 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v24)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v27 = 0;
        LOBYTE(v23) = 1;
        goto LABEL_66;
      }

      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          v27 = 0;
          if (result)
          {
            v28 = result + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_65;
              }

              v30 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                goto LABEL_65;
              }

              ++v28;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v23) = 0;
LABEL_66:
          v54 = v23;
          v45 = v23;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v27 = sub_18E43A304(v19, v21, 10);
  v45 = v52;
LABEL_67:

  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v27;
  }

LABEL_72:
  a8[2] = v46;
  v47 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v49 = v48;

  if (v49)
  {
    v50 = v47;
  }

  else
  {
    v50 = 0x6E776F6E6B6E753CLL;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for EmbeddingDenyListAssetContents);
  *a8 = v50;
  a8[1] = v51;
  return result;
}

unsigned __int8 *sub_18E433760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1A60, &qword_18E4E39F0);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for ImageMagicCleanUpAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE92C8, &unk_18E4E39F8);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = *MEMORY[0x1E69DEF38];
  v16 = sub_18E44EAAC();
  v18 = v17;

  v19 = sub_18E2491A4(v16, v18, a5);
  v21 = v20;

  if (!v21)
  {
    goto LABEL_71;
  }

  v23 = HIBYTE(v21) & 0xF;
  v24 = v19 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v25 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

LABEL_71:
    v46 = 0;
    goto LABEL_72;
  }

  if ((v21 & 0x1000000000000000) == 0)
  {
    if ((v21 & 0x2000000000000000) != 0)
    {
      v53[0] = v19;
      v53[1] = v21 & 0xFFFFFFFFFFFFFFLL;
      if (v19 == 43)
      {
        if (v23)
        {
          if (--v23)
          {
            v27 = 0;
            v37 = v53 + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              v39 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                break;
              }

              v27 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                break;
              }

              ++v37;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v19 != 45)
      {
        if (v23)
        {
          v27 = 0;
          v42 = v53;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v23)
      {
        if (--v23)
        {
          v27 = 0;
          v31 = v53 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v33 - v32;
            if (__OFSUB__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v19 & 0x1000000000000000) != 0)
      {
        result = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v26 = *result;
      if (v26 == 43)
      {
        if (v24 >= 1)
        {
          v23 = v24 - 1;
          if (v24 != 1)
          {
            v27 = 0;
            if (result)
            {
              v34 = result + 1;
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  goto LABEL_65;
                }

                v36 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  goto LABEL_65;
                }

                v27 = v36 + v35;
                if (__OFADD__(v36, v35))
                {
                  goto LABEL_65;
                }

                ++v34;
                if (!--v23)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v26 != 45)
      {
        if (v24)
        {
          v27 = 0;
          if (result)
          {
            while (1)
            {
              v40 = *result - 48;
              if (v40 > 9)
              {
                goto LABEL_65;
              }

              v41 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v24)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v27 = 0;
        LOBYTE(v23) = 1;
        goto LABEL_66;
      }

      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          v27 = 0;
          if (result)
          {
            v28 = result + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_65;
              }

              v30 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                goto LABEL_65;
              }

              ++v28;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v23) = 0;
LABEL_66:
          v54 = v23;
          v45 = v23;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v27 = sub_18E43A304(v19, v21, 10);
  v45 = v52;
LABEL_67:

  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v27;
  }

LABEL_72:
  a8[2] = v46;
  v47 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v49 = v48;

  if (v49)
  {
    v50 = v47;
  }

  else
  {
    v50 = 0x6E776F6E6B6E753CLL;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for ImageMagicCleanUpAssetContents);
  *a8 = v50;
  a8[1] = v51;
  return result;
}

unsigned __int8 *sub_18E433BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1D08, &qword_18E4E3910);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for TokenInputDenyListAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE9230, &qword_18E4E3918);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = *MEMORY[0x1E69DEF38];
  v16 = sub_18E44EAAC();
  v18 = v17;

  v19 = sub_18E2491A4(v16, v18, a5);
  v21 = v20;

  if (!v21)
  {
    goto LABEL_71;
  }

  v23 = HIBYTE(v21) & 0xF;
  v24 = v19 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v25 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

LABEL_71:
    v46 = 0;
    goto LABEL_72;
  }

  if ((v21 & 0x1000000000000000) == 0)
  {
    if ((v21 & 0x2000000000000000) != 0)
    {
      v53[0] = v19;
      v53[1] = v21 & 0xFFFFFFFFFFFFFFLL;
      if (v19 == 43)
      {
        if (v23)
        {
          if (--v23)
          {
            v27 = 0;
            v37 = v53 + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              v39 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                break;
              }

              v27 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                break;
              }

              ++v37;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v19 != 45)
      {
        if (v23)
        {
          v27 = 0;
          v42 = v53;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v23)
      {
        if (--v23)
        {
          v27 = 0;
          v31 = v53 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v33 - v32;
            if (__OFSUB__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v19 & 0x1000000000000000) != 0)
      {
        result = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v26 = *result;
      if (v26 == 43)
      {
        if (v24 >= 1)
        {
          v23 = v24 - 1;
          if (v24 != 1)
          {
            v27 = 0;
            if (result)
            {
              v34 = result + 1;
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  goto LABEL_65;
                }

                v36 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  goto LABEL_65;
                }

                v27 = v36 + v35;
                if (__OFADD__(v36, v35))
                {
                  goto LABEL_65;
                }

                ++v34;
                if (!--v23)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v26 != 45)
      {
        if (v24)
        {
          v27 = 0;
          if (result)
          {
            while (1)
            {
              v40 = *result - 48;
              if (v40 > 9)
              {
                goto LABEL_65;
              }

              v41 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v24)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v27 = 0;
        LOBYTE(v23) = 1;
        goto LABEL_66;
      }

      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          v27 = 0;
          if (result)
          {
            v28 = result + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_65;
              }

              v30 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                goto LABEL_65;
              }

              ++v28;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v23) = 0;
LABEL_66:
          v54 = v23;
          v45 = v23;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v27 = sub_18E43A304(v19, v21, 10);
  v45 = v52;
LABEL_67:

  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v27;
  }

LABEL_72:
  a8[2] = v46;
  v47 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v49 = v48;

  if (v49)
  {
    v50 = v47;
  }

  else
  {
    v50 = 0x6E776F6E6B6E753CLL;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for TokenInputDenyListAssetContents);
  *a8 = v50;
  a8[1] = v51;
  return result;
}

unsigned __int8 *sub_18E434048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1878, &qword_18E4E3A80);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for AppleDeviceTrackingAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE9310, &qword_18E4E3A88);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = *MEMORY[0x1E69DEF38];
  v16 = sub_18E44EAAC();
  v18 = v17;

  v19 = sub_18E2491A4(v16, v18, a5);
  v21 = v20;

  if (!v21)
  {
    goto LABEL_71;
  }

  v23 = HIBYTE(v21) & 0xF;
  v24 = v19 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v25 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

LABEL_71:
    v46 = 0;
    goto LABEL_72;
  }

  if ((v21 & 0x1000000000000000) == 0)
  {
    if ((v21 & 0x2000000000000000) != 0)
    {
      v53[0] = v19;
      v53[1] = v21 & 0xFFFFFFFFFFFFFFLL;
      if (v19 == 43)
      {
        if (v23)
        {
          if (--v23)
          {
            v27 = 0;
            v37 = v53 + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              v39 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                break;
              }

              v27 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                break;
              }

              ++v37;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v19 != 45)
      {
        if (v23)
        {
          v27 = 0;
          v42 = v53;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v23)
      {
        if (--v23)
        {
          v27 = 0;
          v31 = v53 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v33 - v32;
            if (__OFSUB__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v19 & 0x1000000000000000) != 0)
      {
        result = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v26 = *result;
      if (v26 == 43)
      {
        if (v24 >= 1)
        {
          v23 = v24 - 1;
          if (v24 != 1)
          {
            v27 = 0;
            if (result)
            {
              v34 = result + 1;
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  goto LABEL_65;
                }

                v36 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  goto LABEL_65;
                }

                v27 = v36 + v35;
                if (__OFADD__(v36, v35))
                {
                  goto LABEL_65;
                }

                ++v34;
                if (!--v23)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v26 != 45)
      {
        if (v24)
        {
          v27 = 0;
          if (result)
          {
            while (1)
            {
              v40 = *result - 48;
              if (v40 > 9)
              {
                goto LABEL_65;
              }

              v41 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v24)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v27 = 0;
        LOBYTE(v23) = 1;
        goto LABEL_66;
      }

      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          v27 = 0;
          if (result)
          {
            v28 = result + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_65;
              }

              v30 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                goto LABEL_65;
              }

              ++v28;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v23) = 0;
LABEL_66:
          v54 = v23;
          v45 = v23;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v27 = sub_18E43A304(v19, v21, 10);
  v45 = v52;
LABEL_67:

  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v27;
  }

LABEL_72:
  a8[2] = v46;
  v47 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v49 = v48;

  if (v49)
  {
    v50 = v47;
  }

  else
  {
    v50 = 0x6E776F6E6B6E753CLL;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for AppleDeviceTrackingAssetContents);
  *a8 = v50;
  a8[1] = v51;
  return result;
}

unsigned __int8 *sub_18E4344BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1908, &qword_18E4E3A50);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for DisabledUseCaseListAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE92F8, &qword_18E4E3A58);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = *MEMORY[0x1E69DEF38];
  v16 = sub_18E44EAAC();
  v18 = v17;

  v19 = sub_18E2491A4(v16, v18, a5);
  v21 = v20;

  if (!v21)
  {
    goto LABEL_71;
  }

  v23 = HIBYTE(v21) & 0xF;
  v24 = v19 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v25 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

LABEL_71:
    v46 = 0;
    goto LABEL_72;
  }

  if ((v21 & 0x1000000000000000) == 0)
  {
    if ((v21 & 0x2000000000000000) != 0)
    {
      v53[0] = v19;
      v53[1] = v21 & 0xFFFFFFFFFFFFFFLL;
      if (v19 == 43)
      {
        if (v23)
        {
          if (--v23)
          {
            v27 = 0;
            v37 = v53 + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              v39 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                break;
              }

              v27 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                break;
              }

              ++v37;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v19 != 45)
      {
        if (v23)
        {
          v27 = 0;
          v42 = v53;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v23)
      {
        if (--v23)
        {
          v27 = 0;
          v31 = v53 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v33 - v32;
            if (__OFSUB__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v19 & 0x1000000000000000) != 0)
      {
        result = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v26 = *result;
      if (v26 == 43)
      {
        if (v24 >= 1)
        {
          v23 = v24 - 1;
          if (v24 != 1)
          {
            v27 = 0;
            if (result)
            {
              v34 = result + 1;
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  goto LABEL_65;
                }

                v36 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  goto LABEL_65;
                }

                v27 = v36 + v35;
                if (__OFADD__(v36, v35))
                {
                  goto LABEL_65;
                }

                ++v34;
                if (!--v23)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v26 != 45)
      {
        if (v24)
        {
          v27 = 0;
          if (result)
          {
            while (1)
            {
              v40 = *result - 48;
              if (v40 > 9)
              {
                goto LABEL_65;
              }

              v41 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v24)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v27 = 0;
        LOBYTE(v23) = 1;
        goto LABEL_66;
      }

      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          v27 = 0;
          if (result)
          {
            v28 = result + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_65;
              }

              v30 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                goto LABEL_65;
              }

              ++v28;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v23) = 0;
LABEL_66:
          v54 = v23;
          v45 = v23;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v27 = sub_18E43A304(v19, v21, 10);
  v45 = v52;
LABEL_67:

  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v27;
  }

LABEL_72:
  a8[2] = v46;
  v47 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v49 = v48;

  if (v49)
  {
    v50 = v47;
  }

  else
  {
    v50 = 0x6E776F6E6B6E753CLL;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for DisabledUseCaseListAssetContents);
  *a8 = v50;
  a8[1] = v51;
  return result;
}

unsigned __int8 *sub_18E434930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE19F0, &qword_18E4E3A10);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for ImageCuratedPromptsAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE92D8, &unk_18E4E3A18);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = *MEMORY[0x1E69DEF38];
  v16 = sub_18E44EAAC();
  v18 = v17;

  v19 = sub_18E2491A4(v16, v18, a5);
  v21 = v20;

  if (!v21)
  {
    goto LABEL_71;
  }

  v23 = HIBYTE(v21) & 0xF;
  v24 = v19 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v25 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

LABEL_71:
    v46 = 0;
    goto LABEL_72;
  }

  if ((v21 & 0x1000000000000000) == 0)
  {
    if ((v21 & 0x2000000000000000) != 0)
    {
      v53[0] = v19;
      v53[1] = v21 & 0xFFFFFFFFFFFFFFLL;
      if (v19 == 43)
      {
        if (v23)
        {
          if (--v23)
          {
            v27 = 0;
            v37 = v53 + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              v39 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                break;
              }

              v27 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                break;
              }

              ++v37;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v19 != 45)
      {
        if (v23)
        {
          v27 = 0;
          v42 = v53;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v23)
      {
        if (--v23)
        {
          v27 = 0;
          v31 = v53 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v33 - v32;
            if (__OFSUB__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v19 & 0x1000000000000000) != 0)
      {
        result = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v26 = *result;
      if (v26 == 43)
      {
        if (v24 >= 1)
        {
          v23 = v24 - 1;
          if (v24 != 1)
          {
            v27 = 0;
            if (result)
            {
              v34 = result + 1;
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  goto LABEL_65;
                }

                v36 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  goto LABEL_65;
                }

                v27 = v36 + v35;
                if (__OFADD__(v36, v35))
                {
                  goto LABEL_65;
                }

                ++v34;
                if (!--v23)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v26 != 45)
      {
        if (v24)
        {
          v27 = 0;
          if (result)
          {
            while (1)
            {
              v40 = *result - 48;
              if (v40 > 9)
              {
                goto LABEL_65;
              }

              v41 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v24)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v27 = 0;
        LOBYTE(v23) = 1;
        goto LABEL_66;
      }

      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          v27 = 0;
          if (result)
          {
            v28 = result + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_65;
              }

              v30 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                goto LABEL_65;
              }

              ++v28;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v23) = 0;
LABEL_66:
          v54 = v23;
          v45 = v23;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v27 = sub_18E43A304(v19, v21, 10);
  v45 = v52;
LABEL_67:

  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v27;
  }

LABEL_72:
  a8[2] = v46;
  v47 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v49 = v48;

  if (v49)
  {
    v50 = v47;
  }

  else
  {
    v50 = 0x6E776F6E6B6E753CLL;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for ImageCuratedPromptsAssetContents);
  *a8 = v50;
  a8[1] = v51;
  return result;
}

unsigned __int8 *sub_18E434DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1BD0, &qword_18E4E3970);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for ServerConfigurationAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE9280, &qword_18E4E3978);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = *MEMORY[0x1E69DEF38];
  v16 = sub_18E44EAAC();
  v18 = v17;

  v19 = sub_18E2491A4(v16, v18, a5);
  v21 = v20;

  if (!v21)
  {
    goto LABEL_71;
  }

  v23 = HIBYTE(v21) & 0xF;
  v24 = v19 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v25 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

LABEL_71:
    v46 = 0;
    goto LABEL_72;
  }

  if ((v21 & 0x1000000000000000) == 0)
  {
    if ((v21 & 0x2000000000000000) != 0)
    {
      v53[0] = v19;
      v53[1] = v21 & 0xFFFFFFFFFFFFFFLL;
      if (v19 == 43)
      {
        if (v23)
        {
          if (--v23)
          {
            v27 = 0;
            v37 = v53 + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              v39 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                break;
              }

              v27 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                break;
              }

              ++v37;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v19 != 45)
      {
        if (v23)
        {
          v27 = 0;
          v42 = v53;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v23)
      {
        if (--v23)
        {
          v27 = 0;
          v31 = v53 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v33 - v32;
            if (__OFSUB__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v19 & 0x1000000000000000) != 0)
      {
        result = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v26 = *result;
      if (v26 == 43)
      {
        if (v24 >= 1)
        {
          v23 = v24 - 1;
          if (v24 != 1)
          {
            v27 = 0;
            if (result)
            {
              v34 = result + 1;
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  goto LABEL_65;
                }

                v36 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  goto LABEL_65;
                }

                v27 = v36 + v35;
                if (__OFADD__(v36, v35))
                {
                  goto LABEL_65;
                }

                ++v34;
                if (!--v23)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v26 != 45)
      {
        if (v24)
        {
          v27 = 0;
          if (result)
          {
            while (1)
            {
              v40 = *result - 48;
              if (v40 > 9)
              {
                goto LABEL_65;
              }

              v41 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v24)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v27 = 0;
        LOBYTE(v23) = 1;
        goto LABEL_66;
      }

      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          v27 = 0;
          if (result)
          {
            v28 = result + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_65;
              }

              v30 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                goto LABEL_65;
              }

              ++v28;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v23) = 0;
LABEL_66:
          v54 = v23;
          v45 = v23;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v27 = sub_18E43A304(v19, v21, 10);
  v45 = v52;
LABEL_67:

  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v27;
  }

LABEL_72:
  a8[2] = v46;
  v47 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v49 = v48;

  if (v49)
  {
    v50 = v47;
  }

  else
  {
    v50 = 0x6E776F6E6B6E753CLL;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for ServerConfigurationAssetContents);
  *a8 = v50;
  a8[1] = v51;
  return result;
}

unsigned __int8 *sub_18E435218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1D48, &qword_18E4E3900);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for TokenOutputDenyListAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE9228, &qword_18E4E3908);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = *MEMORY[0x1E69DEF38];
  v16 = sub_18E44EAAC();
  v18 = v17;

  v19 = sub_18E2491A4(v16, v18, a5);
  v21 = v20;

  if (!v21)
  {
    goto LABEL_71;
  }

  v23 = HIBYTE(v21) & 0xF;
  v24 = v19 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v25 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

LABEL_71:
    v46 = 0;
    goto LABEL_72;
  }

  if ((v21 & 0x1000000000000000) == 0)
  {
    if ((v21 & 0x2000000000000000) != 0)
    {
      v53[0] = v19;
      v53[1] = v21 & 0xFFFFFFFFFFFFFFLL;
      if (v19 == 43)
      {
        if (v23)
        {
          if (--v23)
          {
            v27 = 0;
            v37 = v53 + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              v39 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                break;
              }

              v27 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                break;
              }

              ++v37;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v19 != 45)
      {
        if (v23)
        {
          v27 = 0;
          v42 = v53;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v23)
      {
        if (--v23)
        {
          v27 = 0;
          v31 = v53 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v33 - v32;
            if (__OFSUB__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v19 & 0x1000000000000000) != 0)
      {
        result = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v26 = *result;
      if (v26 == 43)
      {
        if (v24 >= 1)
        {
          v23 = v24 - 1;
          if (v24 != 1)
          {
            v27 = 0;
            if (result)
            {
              v34 = result + 1;
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  goto LABEL_65;
                }

                v36 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  goto LABEL_65;
                }

                v27 = v36 + v35;
                if (__OFADD__(v36, v35))
                {
                  goto LABEL_65;
                }

                ++v34;
                if (!--v23)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v26 != 45)
      {
        if (v24)
        {
          v27 = 0;
          if (result)
          {
            while (1)
            {
              v40 = *result - 48;
              if (v40 > 9)
              {
                goto LABEL_65;
              }

              v41 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v24)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v27 = 0;
        LOBYTE(v23) = 1;
        goto LABEL_66;
      }

      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          v27 = 0;
          if (result)
          {
            v28 = result + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_65;
              }

              v30 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                goto LABEL_65;
              }

              ++v28;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v23) = 0;
LABEL_66:
          v54 = v23;
          v45 = v23;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v27 = sub_18E43A304(v19, v21, 10);
  v45 = v52;
LABEL_67:

  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v27;
  }

LABEL_72:
  a8[2] = v46;
  v47 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v49 = v48;

  if (v49)
  {
    v50 = v47;
  }

  else
  {
    v50 = 0x6E776F6E6B6E753CLL;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for TokenOutputDenyListAssetContents);
  *a8 = v50;
  a8[1] = v51;
  return result;
}

unsigned __int8 *sub_18E43568C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1978, &qword_18E4E3A30);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for EmbeddingPreprocessorAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE92E8, &qword_18E4E3A38);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = *MEMORY[0x1E69DEF38];
  v16 = sub_18E44EAAC();
  v18 = v17;

  v19 = sub_18E2491A4(v16, v18, a5);
  v21 = v20;

  if (!v21)
  {
    goto LABEL_71;
  }

  v23 = HIBYTE(v21) & 0xF;
  v24 = v19 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v25 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

LABEL_71:
    v46 = 0;
    goto LABEL_72;
  }

  if ((v21 & 0x1000000000000000) == 0)
  {
    if ((v21 & 0x2000000000000000) != 0)
    {
      v53[0] = v19;
      v53[1] = v21 & 0xFFFFFFFFFFFFFFLL;
      if (v19 == 43)
      {
        if (v23)
        {
          if (--v23)
          {
            v27 = 0;
            v37 = v53 + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              v39 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                break;
              }

              v27 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                break;
              }

              ++v37;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v19 != 45)
      {
        if (v23)
        {
          v27 = 0;
          v42 = v53;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v23)
      {
        if (--v23)
        {
          v27 = 0;
          v31 = v53 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v33 - v32;
            if (__OFSUB__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v19 & 0x1000000000000000) != 0)
      {
        result = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v26 = *result;
      if (v26 == 43)
      {
        if (v24 >= 1)
        {
          v23 = v24 - 1;
          if (v24 != 1)
          {
            v27 = 0;
            if (result)
            {
              v34 = result + 1;
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  goto LABEL_65;
                }

                v36 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  goto LABEL_65;
                }

                v27 = v36 + v35;
                if (__OFADD__(v36, v35))
                {
                  goto LABEL_65;
                }

                ++v34;
                if (!--v23)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v26 != 45)
      {
        if (v24)
        {
          v27 = 0;
          if (result)
          {
            while (1)
            {
              v40 = *result - 48;
              if (v40 > 9)
              {
                goto LABEL_65;
              }

              v41 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v24)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v27 = 0;
        LOBYTE(v23) = 1;
        goto LABEL_66;
      }

      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          v27 = 0;
          if (result)
          {
            v28 = result + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_65;
              }

              v30 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                goto LABEL_65;
              }

              ++v28;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v23) = 0;
LABEL_66:
          v54 = v23;
          v45 = v23;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v27 = sub_18E43A304(v19, v21, 10);
  v45 = v52;
LABEL_67:

  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v27;
  }

LABEL_72:
  a8[2] = v46;
  v47 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v49 = v48;

  if (v49)
  {
    v50 = v47;
  }

  else
  {
    v50 = 0x6E776F6E6B6E753CLL;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for EmbeddingPreprocessorAssetContents);
  *a8 = v50;
  a8[1] = v51;
  return result;
}

unsigned __int8 *sub_18E435B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1D90, &qword_18E4E38F0);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for TokenOutputRetainListAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE9220, &qword_18E4E38F8);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = *MEMORY[0x1E69DEF38];
  v16 = sub_18E44EAAC();
  v18 = v17;

  v19 = sub_18E2491A4(v16, v18, a5);
  v21 = v20;

  if (!v21)
  {
    goto LABEL_71;
  }

  v23 = HIBYTE(v21) & 0xF;
  v24 = v19 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v25 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

LABEL_71:
    v46 = 0;
    goto LABEL_72;
  }

  if ((v21 & 0x1000000000000000) == 0)
  {
    if ((v21 & 0x2000000000000000) != 0)
    {
      v53[0] = v19;
      v53[1] = v21 & 0xFFFFFFFFFFFFFFLL;
      if (v19 == 43)
      {
        if (v23)
        {
          if (--v23)
          {
            v27 = 0;
            v37 = v53 + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              v39 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                break;
              }

              v27 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                break;
              }

              ++v37;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v19 != 45)
      {
        if (v23)
        {
          v27 = 0;
          v42 = v53;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v23)
      {
        if (--v23)
        {
          v27 = 0;
          v31 = v53 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v33 - v32;
            if (__OFSUB__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v19 & 0x1000000000000000) != 0)
      {
        result = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v26 = *result;
      if (v26 == 43)
      {
        if (v24 >= 1)
        {
          v23 = v24 - 1;
          if (v24 != 1)
          {
            v27 = 0;
            if (result)
            {
              v34 = result + 1;
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  goto LABEL_65;
                }

                v36 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  goto LABEL_65;
                }

                v27 = v36 + v35;
                if (__OFADD__(v36, v35))
                {
                  goto LABEL_65;
                }

                ++v34;
                if (!--v23)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v26 != 45)
      {
        if (v24)
        {
          v27 = 0;
          if (result)
          {
            while (1)
            {
              v40 = *result - 48;
              if (v40 > 9)
              {
                goto LABEL_65;
              }

              v41 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v24)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v27 = 0;
        LOBYTE(v23) = 1;
        goto LABEL_66;
      }

      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          v27 = 0;
          if (result)
          {
            v28 = result + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_65;
              }

              v30 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                goto LABEL_65;
              }

              ++v28;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v23) = 0;
LABEL_66:
          v54 = v23;
          v45 = v23;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v27 = sub_18E43A304(v19, v21, 10);
  v45 = v52;
LABEL_67:

  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v27;
  }

LABEL_72:
  a8[2] = v46;
  v47 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v49 = v48;

  if (v49)
  {
    v50 = v47;
  }

  else
  {
    v50 = 0x6E776F6E6B6E753CLL;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for TokenOutputRetainListAssetContents);
  *a8 = v50;
  a8[1] = v51;
  return result;
}

unsigned __int8 *sub_18E435F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE19B0, &qword_18E4A0AD0);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for HandwritingSynthesizerAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE92E0, &qword_18E4E3A28);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = *MEMORY[0x1E69DEF38];
  v16 = sub_18E44EAAC();
  v18 = v17;

  v19 = sub_18E2491A4(v16, v18, a5);
  v21 = v20;

  if (!v21)
  {
    goto LABEL_71;
  }

  v23 = HIBYTE(v21) & 0xF;
  v24 = v19 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v25 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

LABEL_71:
    v46 = 0;
    goto LABEL_72;
  }

  if ((v21 & 0x1000000000000000) == 0)
  {
    if ((v21 & 0x2000000000000000) != 0)
    {
      v53[0] = v19;
      v53[1] = v21 & 0xFFFFFFFFFFFFFFLL;
      if (v19 == 43)
      {
        if (v23)
        {
          if (--v23)
          {
            v27 = 0;
            v37 = v53 + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              v39 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                break;
              }

              v27 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                break;
              }

              ++v37;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v19 != 45)
      {
        if (v23)
        {
          v27 = 0;
          v42 = v53;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v23)
      {
        if (--v23)
        {
          v27 = 0;
          v31 = v53 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v33 - v32;
            if (__OFSUB__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v19 & 0x1000000000000000) != 0)
      {
        result = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v26 = *result;
      if (v26 == 43)
      {
        if (v24 >= 1)
        {
          v23 = v24 - 1;
          if (v24 != 1)
          {
            v27 = 0;
            if (result)
            {
              v34 = result + 1;
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  goto LABEL_65;
                }

                v36 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  goto LABEL_65;
                }

                v27 = v36 + v35;
                if (__OFADD__(v36, v35))
                {
                  goto LABEL_65;
                }

                ++v34;
                if (!--v23)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v26 != 45)
      {
        if (v24)
        {
          v27 = 0;
          if (result)
          {
            while (1)
            {
              v40 = *result - 48;
              if (v40 > 9)
              {
                goto LABEL_65;
              }

              v41 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v24)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v27 = 0;
        LOBYTE(v23) = 1;
        goto LABEL_66;
      }

      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          v27 = 0;
          if (result)
          {
            v28 = result + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_65;
              }

              v30 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                goto LABEL_65;
              }

              ++v28;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v23) = 0;
LABEL_66:
          v54 = v23;
          v45 = v23;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v27 = sub_18E43A304(v19, v21, 10);
  v45 = v52;
LABEL_67:

  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v27;
  }

LABEL_72:
  a8[2] = v46;
  v47 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v49 = v48;

  if (v49)
  {
    v50 = v47;
  }

  else
  {
    v50 = 0x6E776F6E6B6E753CLL;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for HandwritingSynthesizerAssetContents);
  *a8 = v50;
  a8[1] = v51;
  return result;
}

unsigned __int8 *sub_18E4363E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1AA0, &qword_18E4A1B50);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for ImageSpatialPhotosReliveAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE92B8, &unk_18E4E39D8);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = *MEMORY[0x1E69DEF38];
  v16 = sub_18E44EAAC();
  v18 = v17;

  v19 = sub_18E2491A4(v16, v18, a5);
  v21 = v20;

  if (!v21)
  {
    goto LABEL_71;
  }

  v23 = HIBYTE(v21) & 0xF;
  v24 = v19 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v25 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

LABEL_71:
    v46 = 0;
    goto LABEL_72;
  }

  if ((v21 & 0x1000000000000000) == 0)
  {
    if ((v21 & 0x2000000000000000) != 0)
    {
      v53[0] = v19;
      v53[1] = v21 & 0xFFFFFFFFFFFFFFLL;
      if (v19 == 43)
      {
        if (v23)
        {
          if (--v23)
          {
            v27 = 0;
            v37 = v53 + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              v39 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                break;
              }

              v27 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                break;
              }

              ++v37;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v19 != 45)
      {
        if (v23)
        {
          v27 = 0;
          v42 = v53;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v23)
      {
        if (--v23)
        {
          v27 = 0;
          v31 = v53 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v33 - v32;
            if (__OFSUB__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v19 & 0x1000000000000000) != 0)
      {
        result = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v26 = *result;
      if (v26 == 43)
      {
        if (v24 >= 1)
        {
          v23 = v24 - 1;
          if (v24 != 1)
          {
            v27 = 0;
            if (result)
            {
              v34 = result + 1;
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  goto LABEL_65;
                }

                v36 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  goto LABEL_65;
                }

                v27 = v36 + v35;
                if (__OFADD__(v36, v35))
                {
                  goto LABEL_65;
                }

                ++v34;
                if (!--v23)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v26 != 45)
      {
        if (v24)
        {
          v27 = 0;
          if (result)
          {
            while (1)
            {
              v40 = *result - 48;
              if (v40 > 9)
              {
                goto LABEL_65;
              }

              v41 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v24)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v27 = 0;
        LOBYTE(v23) = 1;
        goto LABEL_66;
      }

      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          v27 = 0;
          if (result)
          {
            v28 = result + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_65;
              }

              v30 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                goto LABEL_65;
              }

              ++v28;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v23) = 0;
LABEL_66:
          v54 = v23;
          v45 = v23;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v27 = sub_18E43A304(v19, v21, 10);
  v45 = v52;
LABEL_67:

  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v27;
  }

LABEL_72:
  a8[2] = v46;
  v47 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v49 = v48;

  if (v49)
  {
    v50 = v47;
  }

  else
  {
    v50 = 0x6E776F6E6B6E753CLL;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for ImageSpatialPhotosReliveAssetContents);
  *a8 = v50;
  a8[1] = v51;
  return result;
}

unsigned __int8 *sub_18E43685C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  a8[3] = a1;
  a8[4] = a2;
  a8[5] = a3;
  v13 = sub_18E2706EC(&qword_1EABE1B50, &qword_18E4E39A0);
  sub_18E249148(a4, a8 + v13[15], type metadata accessor for LLMAdapterMetadataOverrideAssetContents);
  v14 = 0;
  *(a8 + v13[17]) = a5;
  *(a8 + v13[18]) = a6;
  if (a6 < 0 && (a7 & 1) != 0)
  {
    sub_18E2706EC(&qword_1EABE9298, &unk_18E4E39A8);
    v14 = swift_allocObject();
    *(v14 + 16) = a6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a8 + v13[16]) = v14;
  v15 = *MEMORY[0x1E69DEF38];
  v16 = sub_18E44EAAC();
  v18 = v17;

  v19 = sub_18E2491A4(v16, v18, a5);
  v21 = v20;

  if (!v21)
  {
    goto LABEL_71;
  }

  v23 = HIBYTE(v21) & 0xF;
  v24 = v19 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v25 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

LABEL_71:
    v46 = 0;
    goto LABEL_72;
  }

  if ((v21 & 0x1000000000000000) == 0)
  {
    if ((v21 & 0x2000000000000000) != 0)
    {
      v53[0] = v19;
      v53[1] = v21 & 0xFFFFFFFFFFFFFFLL;
      if (v19 == 43)
      {
        if (v23)
        {
          if (--v23)
          {
            v27 = 0;
            v37 = v53 + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              v39 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                break;
              }

              v27 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                break;
              }

              ++v37;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (v19 != 45)
      {
        if (v23)
        {
          v27 = 0;
          v42 = v53;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v23)
      {
        if (--v23)
        {
          v27 = 0;
          v31 = v53 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v33 - v32;
            if (__OFSUB__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v23)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v19 & 0x1000000000000000) != 0)
      {
        result = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_18E44F07C();
      }

      v26 = *result;
      if (v26 == 43)
      {
        if (v24 >= 1)
        {
          v23 = v24 - 1;
          if (v24 != 1)
          {
            v27 = 0;
            if (result)
            {
              v34 = result + 1;
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  goto LABEL_65;
                }

                v36 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  goto LABEL_65;
                }

                v27 = v36 + v35;
                if (__OFADD__(v36, v35))
                {
                  goto LABEL_65;
                }

                ++v34;
                if (!--v23)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }

      if (v26 != 45)
      {
        if (v24)
        {
          v27 = 0;
          if (result)
          {
            while (1)
            {
              v40 = *result - 48;
              if (v40 > 9)
              {
                goto LABEL_65;
              }

              v41 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v24)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v27 = 0;
        LOBYTE(v23) = 1;
        goto LABEL_66;
      }

      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          v27 = 0;
          if (result)
          {
            v28 = result + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_65;
              }

              v30 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_65;
              }

              v27 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                goto LABEL_65;
              }

              ++v28;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v23) = 0;
LABEL_66:
          v54 = v23;
          v45 = v23;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v27 = sub_18E43A304(v19, v21, 10);
  v45 = v52;
LABEL_67:

  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v27;
  }

LABEL_72:
  a8[2] = v46;
  v47 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a5);
  v49 = v48;

  if (v49)
  {
    v50 = v47;
  }

  else
  {
    v50 = 0x6E776F6E6B6E753CLL;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE90000000000003ELL;
  }

  result = sub_18E2491F8(a4, type metadata accessor for LLMAdapterMetadataOverrideAssetContents);
  *a8 = v50;
  a8[1] = v51;
  return result;
}

unsigned __int8 *sub_18E436CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v17 = *(a1 + 16);
  v18 = *a4;
  *(a9 + 24) = *a1;
  *(a9 + 40) = v17;
  v60 = a6;
  v61 = a7;
  v62 = a8;
  v63 = a10;
  v19 = type metadata accessor for CatalogAsset();
  v58 = *(a7 - 8);
  v59 = a2;
  (*(v58 + 16))(a9 + v19[15], a2, a7);
  v20 = 0;
  *(a9 + v19[17]) = a3;
  *(a9 + v19[18]) = v18;
  if (v18 < 0 && (a5 & 1) != 0)
  {
    v60 = a6;
    v61 = a7;
    v62 = a8;
    v63 = a10;
    type metadata accessor for CatalogAsset.CoherentLockAssertion();
    v20 = sub_18E42EFD8(v18 & 0x7FFFFFFFFFFFFFFFLL);
  }

  *(a9 + v19[16]) = v20;
  v21 = *MEMORY[0x1E69DEF38];
  v22 = sub_18E44EAAC();
  v24 = v23;

  v25 = sub_18E2491A4(v22, v24, a3);
  v27 = v26;

  if (!v27)
  {
    goto LABEL_67;
  }

  v29 = HIBYTE(v27) & 0xF;
  v30 = v25 & 0xFFFFFFFFFFFFLL;
  if ((v27 & 0x2000000000000000) != 0)
  {
    v31 = HIBYTE(v27) & 0xF;
  }

  else
  {
    v31 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {

    goto LABEL_67;
  }

  if ((v27 & 0x1000000000000000) != 0)
  {
    v33 = sub_18E43A304(v25, v27, 10);
    v57 = v56;

    if ((v57 & 1) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  if ((v27 & 0x2000000000000000) != 0)
  {
    v60 = v25;
    v61 = v27 & 0xFFFFFFFFFFFFFFLL;
    if (v25 == 43)
    {
      if (v29)
      {
        if (--v29)
        {
          v33 = 0;
          v43 = &v60 + 1;
          while (1)
          {
            v44 = *v43 - 48;
            if (v44 > 9)
            {
              break;
            }

            v45 = 10 * v33;
            if ((v33 * 10) >> 64 != (10 * v33) >> 63)
            {
              break;
            }

            v33 = v45 + v44;
            if (__OFADD__(v45, v44))
            {
              break;
            }

            ++v43;
            if (!--v29)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

LABEL_79:
      __break(1u);
      return result;
    }

    if (v25 != 45)
    {
      if (v29)
      {
        v33 = 0;
        v48 = &v60;
        while (1)
        {
          v49 = *v48 - 48;
          if (v49 > 9)
          {
            break;
          }

          v50 = 10 * v33;
          if ((v33 * 10) >> 64 != (10 * v33) >> 63)
          {
            break;
          }

          v33 = v50 + v49;
          if (__OFADD__(v50, v49))
          {
            break;
          }

          v48 = (v48 + 1);
          if (!--v29)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    if (v29)
    {
      if (--v29)
      {
        v33 = 0;
        v37 = &v60 + 1;
        while (1)
        {
          v38 = *v37 - 48;
          if (v38 > 9)
          {
            break;
          }

          v39 = 10 * v33;
          if ((v33 * 10) >> 64 != (10 * v33) >> 63)
          {
            break;
          }

          v33 = v39 - v38;
          if (__OFSUB__(v39, v38))
          {
            break;
          }

          ++v37;
          if (!--v29)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    goto LABEL_77;
  }

  if ((v25 & 0x1000000000000000) != 0)
  {
    result = ((v27 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_18E44F07C();
  }

  v32 = *result;
  if (v32 == 43)
  {
    if (v30 >= 1)
    {
      v29 = v30 - 1;
      if (v30 != 1)
      {
        v33 = 0;
        if (result)
        {
          v40 = result + 1;
          while (1)
          {
            v41 = *v40 - 48;
            if (v41 > 9)
            {
              goto LABEL_65;
            }

            v42 = 10 * v33;
            if ((v33 * 10) >> 64 != (10 * v33) >> 63)
            {
              goto LABEL_65;
            }

            v33 = v42 + v41;
            if (__OFADD__(v42, v41))
            {
              goto LABEL_65;
            }

            ++v40;
            if (!--v29)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_57;
      }

      goto LABEL_65;
    }

    goto LABEL_78;
  }

  if (v32 == 45)
  {
    if (v30 >= 1)
    {
      v29 = v30 - 1;
      if (v30 != 1)
      {
        v33 = 0;
        if (result)
        {
          v34 = result + 1;
          while (1)
          {
            v35 = *v34 - 48;
            if (v35 > 9)
            {
              goto LABEL_65;
            }

            v36 = 10 * v33;
            if ((v33 * 10) >> 64 != (10 * v33) >> 63)
            {
              goto LABEL_65;
            }

            v33 = v36 - v35;
            if (__OFSUB__(v36, v35))
            {
              goto LABEL_65;
            }

            ++v34;
            if (!--v29)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_57:
        LOBYTE(v29) = 0;
        goto LABEL_66;
      }

      goto LABEL_65;
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v30)
  {
    v33 = 0;
    if (result)
    {
      while (1)
      {
        v46 = *result - 48;
        if (v46 > 9)
        {
          goto LABEL_65;
        }

        v47 = 10 * v33;
        if ((v33 * 10) >> 64 != (10 * v33) >> 63)
        {
          goto LABEL_65;
        }

        v33 = v47 + v46;
        if (__OFADD__(v47, v46))
        {
          goto LABEL_65;
        }

        ++result;
        if (!--v30)
        {
          goto LABEL_57;
        }
      }
    }

    goto LABEL_57;
  }

LABEL_65:
  v33 = 0;
  LOBYTE(v29) = 1;
LABEL_66:
  v51 = v29;

  if (v51)
  {
LABEL_67:
    v33 = 0;
  }

LABEL_68:
  *(a9 + 16) = v33;
  v52 = sub_18E2491A4(0x7265567465737341, 0xEC0000006E6F6973, a3);
  v54 = v53;

  if (v54)
  {
    v55 = v54;
  }

  else
  {
    v52 = 0x6E776F6E6B6E753CLL;
    v55 = 0xE90000000000003ELL;
  }

  result = (*(v58 + 8))(v59, a7);
  *a9 = v52;
  *(a9 + 8) = v55;
  return result;
}

void CatalogAsset.description.getter()
{
  sub_18E1C575C();
  v1 = v0;
  v3 = v2;
  v4 = sub_18E44E54C();
  v5 = sub_18E1C4EAC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_18E1C4EDC();
  v10 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
  [v10 setCountStyle_];
  v11 = [v10 stringFromByteCount_];
  sub_18E44EAAC();
  sub_18E221954();

  sub_18E44EFFC();

  MEMORY[0x193ACC300](*v1, v1[1]);
  MEMORY[0x193ACC300](0x203A657A6973202CLL, 0xE800000000000000);
  v12 = sub_18E1DD5A0();
  MEMORY[0x193ACC300](v12);

  MEMORY[0x193ACC300](0x697461636F6C202CLL, 0xEC000000203A6E6FLL);
  v13 = v1 + *(v3 + 60);
  (*(*(v3 + 40) + 8))(*(v3 + 24));
  sub_18E21D198();
  sub_18E43ADE8(v14, v15);
  v16 = sub_18E44F39C();
  MEMORY[0x193ACC300](v16);

  v17 = *(v7 + 8);
  v18 = sub_18E1D8004();
  v19(v18);

  sub_18E1C5544();
}

void sub_18E4373B8(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = *a1;
  v11 = *(a1 + 2);
  v7 = a6[2];
  v6 = a6[3];
  v8 = a6[4];
  v9 = a6[5];
  CatalogAsset.init(specificationVersion:metadata:contents:mobileAssetMetadata:assetLock:)();
}

void sub_18E4373FC(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a1;
  v10 = *(a1 + 2);
  v6 = a5[2];
  v5 = a5[3];
  v7 = a5[4];
  v8 = a5[5];
  CatalogAsset.init(specificationVersion:contents:mobileAssetMetadata:assetLock:)();
}

uint64_t sub_18E43743C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(a1 + 2);
  v7 = *a1;
  v8 = v5;
  return (CatalogAsset.init(specificationVersion:contents:mobileAssetMetadata:coherentAssetLock:))(&v7, a2, a3, a4, a5[2], a5[3], a5[4], a5[5]);
}

uint64_t AssetSubscriptionStatusPendingReason.hashValue.getter()
{
  v1 = *v0;
  sub_18E1CFCDC();
  MEMORY[0x193ACCC20](v1);
  return sub_18E44F4CC();
}

uint64_t AssetSubscription.subscriberID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_18E1C5BFC();
}

uint64_t AssetSubscription.subscriptionName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_18E1C5BFC();
}

void AssetSubscription.statusForAvailability()(_BYTE *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = [objc_opt_self() sharedManager];
  sub_18E1CFFC0();
  if (sub_18E44EB5C())
  {
    sub_18E2706EC(&qword_1EABE1080, &qword_18E49DCC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18E49D9B0;
    *(inited + 32) = v4;
    *(inited + 40) = v3;
    *(inited + 48) = MEMORY[0x1E69E7CC0];

    sub_18E2706EC(&unk_1EABE1160, &qword_18E49DDA0);
    sub_18E1CFFC0();
    sub_18E44E9AC();
    v9 = sub_18E44E97C();

    v10 = [v7 downloadStatusForSubscribers_];

    UAFSubscriptionDownloadStatus.assetSubscriptionStatus()(v10, a1);
  }

  else
  {

    *a1 = 6;
  }
}

uint64_t AssetSubscription.status()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 152) = a1;
  *(v2 + 160) = v3;
  *(v2 + 168) = *(v1 + 1);
  *(v2 + 184) = v1[3];
  return sub_18E1C62C4();
}

uint64_t sub_18E437724()
{
  sub_18E1E15DC();
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  if (sub_18E44EB5C())
  {
    v4 = *(v0 + 176);
    v3 = *(v0 + 184);
    v6 = *(v0 + 160);
    v5 = *(v0 + 168);
    *(v0 + 192) = [objc_opt_self() sharedManager];
    sub_18E1D4B44();
    *(v0 + 200) = sub_18E44EA8C();
    *(v0 + 208) = sub_18E44EA8C();
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_18E4378C8;
    v7 = swift_continuation_init();
    v8 = sub_18E2706EC(&qword_1EABE12D0, &qword_18E49ECF0);
    v9 = sub_18E1C54E0(v8);
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_18E29A260;
    *(v0 + 104) = &unk_1F0189E50;
    *(v0 + 112) = v7;
    sub_18E1CD7E8(v9, sel_downloadStatusForSubscriber_subscriptionName_queue_completion_);

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    **(v0 + 152) = 6;
    sub_18E1D008C();

    return v10();
  }
}

uint64_t sub_18E4378C8()
{
  sub_18E1C52F0();
  v7 = *v0;
  v1 = *v0;
  sub_18E1C52E0();
  *v2 = v1;
  sub_18E1CEA7C();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18E437998()
{
  sub_18E1C6170();
  v1 = *(v0 + 200);
  v2 = *(v0 + 192);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);

  UAFSubscriptionDownloadStatus.assetSubscriptionStatus()(v3, v4);
  sub_18E1D008C();

  return v5();
}

void AssetSubscription.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_18E44EB4C();
  sub_18E44EB4C();
  sub_18E44EB4C();
  if (v7 == 15)
  {
    sub_18E44F4AC();
    sub_18E2234F8();
  }

  else
  {
    sub_18E44F4AC();
    RequestResourcesKey.rawValue.getter();
    sub_18E1D0274();
    sub_18E44EB4C();
    sub_18E2234F8();
  }
}

uint64_t AssetSubscription.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  sub_18E1CFCDC();
  sub_18E44EB4C();
  sub_18E44EB4C();
  sub_18E44EB4C();
  sub_18E44F4AC();
  if (v7 != 15)
  {
    RequestResourcesKey.rawValue.getter();
    sub_18E44EB4C();
  }

  return sub_18E44F4CC();
}

uint64_t sub_18E437BC4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = *(v0 + 48);
  sub_18E44F48C();
  AssetSubscription.hash(into:)();
  return sub_18E44F4CC();
}

void AssetSubscription.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_18E44EFFC();
  MEMORY[0x193ACC300](0xD00000000000001ELL, 0x800000018E478140);
  v7 = sub_18E1CFFC0();
  MEMORY[0x193ACC300](v7);
  MEMORY[0x193ACC300](0x6553746573736120, 0xEE003A656D614E74);
  v8 = sub_18E1CD5EC();
  MEMORY[0x193ACC300](v8);
  sub_18E1C77B0();
  MEMORY[0x193ACC300](0xD000000000000012);
  MEMORY[0x193ACC300](v3, v4);
  MEMORY[0x193ACC300](62, 0xE100000000000000);
  sub_18E2234F8();
}

uint64_t AssetBackedResource.fetchLockedAsset(with:)()
{
  sub_18E1D4300();
  sub_18E3FDB10();
  sub_18E1D0098();
  v1 = swift_allocError();
  *v2 = 0xD000000000000036;
  v2[1] = v0;
  sub_18E1C69B4(v1, v2);
  return swift_willThrow();
}

{
  sub_18E1D4300();
  sub_18E3FDB10();
  sub_18E1D0098();
  v1 = swift_allocError();
  *v2 = 0xD000000000000036;
  v2[1] = v0;
  sub_18E1C69B4(v1, v2);
  return swift_willThrow();
}

uint64_t AssetBackedResource.fetchLockedAsset(with:options:)()
{
  sub_18E1D4300();
  sub_18E3FDB10();
  sub_18E1D0098();
  v1 = swift_allocError();
  *v2 = 0xD000000000000036;
  v2[1] = v0;
  sub_18E1C69B4(v1, v2);
  return swift_willThrow();
}

uint64_t AssetBackedResource.hostingAssetName.getter(uint64_t a1)
{
  v1 = sub_18E1C4EAC(a1);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_18E1C4EDC();
  (*(v6 + 16))(v5 - v4);
  sub_18E2706EC(&qword_1EABE34E8, &qword_18E4B1000);
  if (swift_dynamicCast())
  {
    sub_18E1C551C(v12, v14);
    v7 = v15;
    v8 = v16;
    sub_18E1E15F4(v14, v15);
    (*(v8 + 24))(v11, v7, v8);
    v9 = v11[19];

    sub_18E1FE044(v11);
    sub_18E1C9934(v14);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_18E1E8EEC(v12, &qword_1EABE91B0, &qword_18E4E2DB0);
    return 0;
  }

  return v9;
}

uint64_t sub_18E43801C()
{
  v1 = v0;
  v2 = v0[4];
  v3 = v1[5];
  swift_bridgeObjectRetain_n();
  sub_18E1E682C();
  v4 = sub_18E2483E8();

  if ((v4 & 1) == 0)
  {
    v5 = sub_18E1CE96C();
    MEMORY[0x193ACC300](v5);
    MEMORY[0x193ACC300](v1[25], v1[26]);
  }

  return v2;
}

Swift::String __swiftcall AssetBackedResource.uafAssetName()()
{
  v2 = *(v0 + 8);
  v3 = *(v2 + 104);
  v3();
  sub_18E1D0274();
  sub_18E1C77B0();
  sub_18E1E682C();
  sub_18E2483E8();
  sub_18E235348();

  v4 = sub_18E1D8004();
  (v3)(v4);
  if ((v1 & 1) == 0)
  {
    v5 = sub_18E1CE96C();
    MEMORY[0x193ACC300](v5);
    v6 = *(v2 + 112);
    v7 = sub_18E1D8004();
    v9 = v8(v7);
    MEMORY[0x193ACC300](v9);
  }

  sub_18E2234F8();
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

void AssetBackedResource.subscription.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "model-catalog");
  *(a1 + 14) = -4864;
  strcpy((a1 + 16), "all-or-nothing");
  *(a1 + 31) = -18;
  *(a1 + 32) = 0xD000000000000016;
  *(a1 + 40) = 0x800000018E462F20;
  *(a1 + 48) = 15;
}

void AssetBackedResource<>.determineAssetDetails(assetSet:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E1C62A0();
  a19 = v21;
  a20 = v22;
  v157 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v164 = v30;
  v31 = sub_18E44E46C();
  v32 = sub_18E1C4EAC(v31);
  v155 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_18E1C4EDC();
  v153 = v37 - v36;
  v156 = sub_18E44E54C();
  v38 = sub_18E1C4EAC(v156);
  v154 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_18E1C4EDC();
  v152 = v43 - v42;
  sub_18E1C5780();
  v158 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_18E1C64E0();
  v160 = v48;
  MEMORY[0x1EEE9AC00](v49);
  sub_18E1D84B0();
  v149 = v50;
  v51 = *(v25 + 24);
  v52 = sub_18E1D4B44();
  v53(v52);
  v54 = v172[19];
  v55 = v172[20];

  sub_18E1FE044(v172);
  v159 = v55 != 0;
  v162 = v20;
  if (v55)
  {
    if (qword_1ED6A94A8 != -1)
    {
      sub_18E1C8394();
      swift_once();
    }

    if (byte_1ED6A98A0 == 1)
    {
      v147 = v27;
      v145 = *(v27 + 8);
      v168 = (*(v145 + 104))(v29);
      v169 = v56;
      v57 = sub_18E1CE96C();
      MEMORY[0x193ACC300](v57);
      v58 = *(v25 + 32);
      v59 = sub_18E1D4B44();
      v61 = v60(v59);
      MEMORY[0x193ACC300](v61);

      v148 = v168;
      v167 = v169;
      v62 = sub_18E44EA8C();
      v63 = [v164 assetNamed_];

      if (v63)
      {
        v150 = v31;
        v146 = v29;
        v64 = [v63 metadata];
        v65 = sub_18E44E98C();

        v66 = *MEMORY[0x1E69DEF40];
        v67 = sub_18E44EAAC();
        v69 = sub_18E2491A4(v67, v68, v65);
        v71 = v70;

        v72 = *MEMORY[0x1E69DEF48];
        v73 = sub_18E44EAAC();
        if (v71)
        {
          if (v69 == v73 && v71 == v74)
          {

            v29 = v146;
            v31 = v150;
            goto LABEL_40;
          }

          v76 = sub_18E44F3CC();

          v29 = v146;
          v31 = v150;
          if (v76)
          {

LABEL_40:
            if (qword_1ED6A8AB0 != -1)
            {
              sub_18E1C6D78();
              swift_once();
            }

            v135 = sub_18E44E83C();
            sub_18E1CE8B4(v135, qword_1ED6A9870);
            (*(v158 + 16))(v149, v162, v29);
            v136 = v29;
            v137 = sub_18E44E80C();
            v138 = sub_18E44EE2C();
            if (os_log_type_enabled(v137, v138))
            {
              sub_18E1E2FE8();
              v161 = swift_slowAlloc();
              sub_18E1CA69C();
              v166 = swift_slowAlloc();
              v168 = v166;
              *v161 = 136315138;
              v139 = (*(v145 + 24))(v136);
              v140 = v136;
              v142 = v141;
              v143 = v140;
              (*(v158 + 8))(v149, v140);
              v144 = sub_18E1C9624(v139, v142, &v168);

              *(v161 + 4) = v144;
              _os_log_impl(&dword_18E1C1000, v137, v138, "Using asset from asset root for resource %s", v161, 0xCu);
              sub_18E1C9934(v166);
              sub_18E1C6164();
              MEMORY[0x193ACD400]();
              sub_18E1C6164();
              MEMORY[0x193ACD400]();

              v29 = v143;
            }

            else
            {

              (*(v158 + 8))(v149, v136);
              v29 = v136;
            }

            v27 = v147;
            v94 = v63;
            v159 = 0;
            v85 = v148;
            goto LABEL_23;
          }
        }

        else
        {

          v29 = v146;
          v31 = v150;
        }
      }

      v168 = v54;
      v169 = v55;

      v91 = sub_18E1CF3BC();
      MEMORY[0x193ACC300](v91, 0xE800000000000000);

      v85 = v54;
      v167 = v55;
      v92 = sub_18E44EA8C();
      v86 = [v164 assetNamed_];

      v27 = v147;
    }

    else
    {
      v168 = v54;
      v169 = v55;

      v84 = sub_18E1CF3BC();
      MEMORY[0x193ACC300](v84, 0xE800000000000000);

      v85 = v54;
      v167 = v55;
      v63 = sub_18E44EA8C();
      v86 = [v164 assetNamed_];
    }

    v90 = v160;
  }

  else
  {
    v151 = v31;
    v77 = v27;
    v78 = *(*(v27 + 8) + 104);
    v79 = sub_18E1D4B44();
    v78(v79);
    sub_18E1D0274();
    sub_18E1C77B0();
    sub_18E1E682C();
    v80 = sub_18E2483E8();

    if (v80)
    {
      v81 = sub_18E1D4B44();
      countAndFlagsBits = (v78)(v81);
    }

    else
    {
      sub_18E1E2000();
      v87 = AssetBackedResource.uafAssetName()();
      object = v87._object;
      countAndFlagsBits = v87._countAndFlagsBits;
    }

    v88 = countAndFlagsBits;
    v89 = object;
    v27 = v77;
    v90 = v160;

    v85 = v88;
    v63 = sub_18E44EA8C();
    v167 = v89;

    v86 = [v164 assetNamed_];
    v31 = v151;
  }

  v93 = v86;
  if (v93)
  {
    v94 = v93;
LABEL_23:
    v95 = [v94 location];
    if (v95)
    {
      v96 = v95;

      sub_18E44E4CC();

      if (v159)
      {
        v168 = (*(*(v27 + 8) + 104))(v29);
        v169 = v97;
        (*(v155 + 104))(v153, *MEMORY[0x1E6968F70], v31);
        sub_18E24D39C();
        sub_18E44E52C();

        (*(v155 + 8))(v153, v31);

        (*(v154 + 8))(v157, v156);
        (*(v154 + 32))(v157, v152, v156);
      }

      else
      {
      }
    }

    else
    {
      if (qword_1ED6A8AB0 != -1)
      {
        sub_18E1C6D78();
        swift_once();
      }

      v111 = sub_18E44E83C();
      sub_18E1CE8B4(v111, qword_1ED6A9870);
      v112 = v167;

      v113 = v94;
      v114 = sub_18E44E80C();
      v115 = sub_18E44EE0C();

      v116 = v85;
      if (os_log_type_enabled(v114, v115))
      {
        sub_18E1C9700();
        v165 = v115;
        v117 = swift_slowAlloc();
        sub_18E1CA638();
        v168 = swift_slowAlloc();
        *v117 = 136315394;
        *(v117 + 4) = sub_18E1C9624(v85, v167, &v168);
        *(v117 + 12) = 2080;
        v118 = [v113 metadata];
        sub_18E44E98C();

        v112 = v167;
        sub_18E44E99C();
        sub_18E221954();

        v119 = sub_18E1DD5A0();
        v122 = sub_18E1C9624(v119, v120, v121);

        *(v117 + 14) = v122;
        v116 = v85;
        _os_log_impl(&dword_18E1C1000, v114, v165, "Asset %s does not have a location. Metadata: %s", v117, 0x16u);
        sub_18E212078();
        swift_arrayDestroy();
        v123 = sub_18E1D6214();
        MEMORY[0x193ACD400](v123);
        sub_18E1C6164();
        MEMORY[0x193ACD400]();
      }

      v168 = 0;
      v169 = 0xE000000000000000;
      sub_18E44EFFC();

      v168 = v116;
      v169 = v112;
      v124 = sub_18E1CF71C();
      MEMORY[0x193ACC300](v124);
      v125 = v168;
      v126 = v169;
      sub_18E3FDB10();
      sub_18E1D0098();
      v127 = swift_allocError();
      *v128 = v125;
      v128[1] = v126;
      sub_18E1C69B4(v127, v128);
      swift_willThrow();
    }

    goto LABEL_38;
  }

  if (qword_1ED6A8AB0 != -1)
  {
    sub_18E1C6D78();
    swift_once();
  }

  v98 = sub_18E44E83C();
  sub_18E1CE8B4(v98, qword_1ED6A9870);
  v99 = *(v158 + 16);
  v100 = sub_18E1E2E14();
  v101(v100);

  v102 = sub_18E44E80C();
  v103 = sub_18E44EE2C();

  if (os_log_type_enabled(v102, v103))
  {
    sub_18E1C9700();
    v163 = v103;
    v104 = v90;
    v105 = v27;
    v106 = swift_slowAlloc();
    sub_18E1CA638();
    a10 = swift_slowAlloc();
    *v106 = 136315394;
    *(v106 + 4) = sub_18E1C9624(v85, v167, &a10);
    *(v106 + 12) = 2080;
    (*(v105 + 64))(&v168, v29, v105);
    (*(v158 + 8))(v104, v29);
    v107 = v170;
    v108 = v171;

    v109 = sub_18E1C9624(v107, v108, &a10);

    *(v106 + 14) = v109;
    _os_log_impl(&dword_18E1C1000, v102, v163, "Failed to find asset named %s in asset set %s", v106, 0x16u);
    swift_arrayDestroy();
    sub_18E1C6164();
    MEMORY[0x193ACD400]();
    v110 = sub_18E1CFC40();
    MEMORY[0x193ACD400](v110);
  }

  else
  {

    (*(v158 + 8))(v90, v29);
  }

  v168 = v85;
  v169 = v167;
  v129 = sub_18E1C8D78();
  MEMORY[0x193ACC300](v129, v130 & 0xFFFF0000FFFFLL | 0xEB00000000740000);
  v131 = v168;
  v132 = v169;
  sub_18E3FDB10();
  sub_18E1D0098();
  v133 = swift_allocError();
  *v134 = v131;
  v134[1] = v132;
  sub_18E1C69B4(v133, v134);
  swift_willThrow();
LABEL_38:
  sub_18E1C6650();
}

void sub_18E438E90()
{
  sub_18E1C62A0();
  v79 = v1;
  v81 = v2;
  v4 = v3;
  v86 = v0;
  v6 = v5;
  v8 = v7;
  v84 = v9;
  v83 = sub_18E44E54C();
  v10 = sub_18E1C4EAC(v83);
  v82 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1C4EDC();
  sub_18E1E68C4(v15 - v14);
  v75 = *(v6 + 32);
  v76 = *(v6 + 40);
  v16 = *(v6 + 120);
  v17 = *(v6 + 128);
  v80 = *(v6 + 96);
  v78 = v16;
  v77 = v17;
  if (v80)
  {

    v90 = v16;
  }

  else
  {
    v90 = 0xD000000000000016;
    v17 = 0x800000018E462F20;
  }

  v19 = v4(v18);
  v20 = 0;
  v93 = *(v8 + 16);
  v92 = v8 + 32;
  v94 = v19 + 64;
  v89 = v6;
  v21 = v90;
  v88 = v17;
  v97 = v19;
  do
  {
LABEL_5:
    if (v20 == v93)
    {
      if (qword_1ED6A8AB0 != -1)
      {
        sub_18E1C6D78();
        swift_once();
      }

      v51 = sub_18E44E83C();
      sub_18E1CE8B4(v51, qword_1ED6A9870);

      v81(v6, &v95);
      v24 = sub_18E44E80C();
      LOBYTE(v32) = sub_18E44EE2C();

      if (os_log_type_enabled(v24, v32))
      {
        sub_18E1CA69C();
        v6 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *v6 = 136315650;
        v52 = sub_18E1C9624(v21, v17, &v95);

        *(v6 + 4) = v52;
        *(v6 + 12) = 2080;
        v53 = sub_18E44E99C();
        v55 = v54;

        v56 = sub_18E1C9624(v53, v55, &v95);

        *(v6 + 14) = v56;
        *(v6 + 22) = 2080;
        v33 = v89;
        v57 = *(v89 + 200) == 0x636972656E6567 && *(v89 + 208) == 0xE700000000000000;
        if (v57 || (v58 = *(v89 + 200), v59 = *(v89 + 208), sub_18E1D0380(), (sub_18E44F3CC() & 1) != 0))
        {
          v60 = v76;

          v61 = v75;
        }

        else
        {
LABEL_47:
          static VariantHelpers.createResourceIdentifier(with:variant:)();
          v61 = v62;
          v60 = v63;
        }

        v79(v33);
        v64 = sub_18E1C9624(v61, v60, &v95);

        *(v6 + 24) = v64;
        _os_log_impl(&dword_18E1C1000, v24, v32, "Failed to find asset set: %s with usages: %s for %s", v6, 0x20u);
        swift_arrayDestroy();
        v65 = sub_18E1CFC40();
        MEMORY[0x193ACD400](v65);
        v66 = sub_18E1D6214();
        MEMORY[0x193ACD400](v66);
      }

      else
      {

        v79(v6);
      }

      v95 = 0;
      v96 = 0xE000000000000000;
      v67 = &v95;
      sub_18E44EFFC();
      if (v80)
      {

        v67 = v77;

        v68 = v78;
      }

      else
      {
        v68 = 0xD000000000000016;
        sub_18E1D4300();
      }

      sub_18E1D62B8();
      v95 = v68;
      v96 = v67;
      v69 = sub_18E1C8D78();
      MEMORY[0x193ACC300](v69, v70 | 0xEF74657320740000);
      v71 = v95;
      v72 = v96;
      sub_18E3FDB10();
      sub_18E1D0098();
      v73 = swift_allocError();
      *v74 = v71;
      v74[1] = v72;
      sub_18E1E3830(v73, v74);
      swift_willThrow();
      goto LABEL_35;
    }

    v22 = (v92 + 32 * v20);
    v24 = v22[2];
    v23 = v22[3];
    ++v20;
    if (*v22 == v21 && v22[1] == v17)
    {
      break;
    }

    v26 = v22[1];
    v27 = v20;
    v28 = sub_18E44F3CC();
    v20 = v27;
  }

  while ((v28 & 1) == 0);
  v85 = v20;
  v29 = 1 << *(v19 + 32);
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  else
  {
    v30 = -1;
  }

  v31 = v30 & *(v19 + 64);
  v32 = (v29 + 63) >> 6;

  v91 = v23;

  v33 = 0;
  while (v31)
  {
LABEL_20:
    if (!v24[2].isa)
    {
      goto LABEL_29;
    }

    v35 = __clz(__rbit64(v31)) | (v33 << 6);
    v36 = (*(v19 + 56) + 16 * v35);
    v37 = *v36;
    v6 = v36[1];
    v38 = (*(v19 + 48) + 16 * v35);
    v40 = *v38;
    v39 = v38[1];

    sub_18E1D8004();
    v41 = sub_18E1CBD4C();
    v43 = v42;

    if ((v43 & 1) == 0)
    {

      v19 = v97;

      goto LABEL_31;
    }

    v31 &= v31 - 1;
    v44 = (v24[7].isa + 16 * v41);
    if (*v44 == v37 && v44[1] == v6)
    {

      v19 = v97;
    }

    else
    {
      v46 = sub_18E44F3CC();

      v19 = v97;
      if ((v46 & 1) == 0)
      {
LABEL_29:

LABEL_31:
        v6 = v89;
        v17 = v88;
        v21 = v90;
        v20 = v85;
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_47;
    }

    if (v34 >= v32)
    {
      break;
    }

    v31 = *(v94 + 8 * v34);
    ++v33;
    if (v31)
    {
      v33 = v34;
      goto LABEL_20;
    }
  }

  sub_18E24852C();
  if (v86)
  {
  }

  else
  {
    v48 = v47;
    v98 = *(sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00) + 48);
    (*(v82 + 16))(v84, v87, v83);
    v49 = [v48 metadata];
    v50 = sub_18E44E98C();

    (*(v82 + 8))(v87, v83);
    *(v84 + v98) = v50;
  }

LABEL_35:
  sub_18E1C6650();
}

void sub_18E439730(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v90 = a5;
  v88 = a6;
  v84 = *(a3 - 8);
  v10 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v83 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_18E44E54C();
  v86 = *(v87 - 8);
  v12 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v92 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a4 + 64);
  v82 = a4 + 64;
  v81 = v14;
  v14(v104, a3, a4);
  v15 = v105;
  v16 = v106;

  v93 = a3;
  v94 = a2;
  v17 = AssetBackedResource.usages.getter(a3, a4);
  v18 = 0;
  v19 = *(a1 + 16);
  v99 = a1 + 32;
  v100 = v19;
  v101 = v17 + 64;
  v20 = 1;
  v95 = v16;
  v96 = a4;
  v107 = v17;
  v85 = v15;
  do
  {
LABEL_2:
    if (v18 == v100)
    {
      v22 = v93;
      v20 = v83;
      if (qword_1ED6A8AB0 != -1)
      {
LABEL_38:
        swift_once();
      }

      v55 = sub_18E44E83C();
      sub_18E1C95EC(v55, qword_1ED6A9870);
      v56 = v84;
      (*(v84 + 16))(v20, v94, v22);

      v57 = sub_18E44E80C();
      v58 = sub_18E44EE2C();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        LODWORD(v100) = v58;
        v60 = v15;
        v61 = v59;
        v101 = swift_slowAlloc();
        v104[0] = v101;
        *v61 = 136315650;
        v62 = sub_18E1C9624(v60, v16, v104);
        v63 = v56;
        v64 = v62;

        *(v61 + 4) = v64;
        *(v61 + 12) = 2080;
        v65 = sub_18E44E99C();
        v67 = v66;

        v68 = sub_18E1C9624(v65, v67, v104);

        *(v61 + 14) = v68;
        *(v61 + 22) = 2080;
        v69 = (*(*(a4 + 8) + 24))(v22);
        v71 = v70;
        (*(v63 + 8))(v20, v22);
        v72 = sub_18E1C9624(v69, v71, v104);

        *(v61 + 24) = v72;
        _os_log_impl(&dword_18E1C1000, v57, v100, "Failed to find asset set: %s with usages: %s for %s", v61, 0x20u);
        v73 = v101;
        swift_arrayDestroy();
        MEMORY[0x193ACD400](v73, -1, -1);
        MEMORY[0x193ACD400](v61, -1, -1);
      }

      else
      {

        (*(v56 + 8))(v20, v22);
      }

      v74 = v81;
      v104[0] = 0;
      v104[1] = 0xE000000000000000;
      sub_18E44EFFC();
      v74(v104, v22, a4);
      v75 = v105;
      v76 = v106;

      v102 = v75;
      v103 = v76;
      MEMORY[0x193ACC300](0x7361206F6E202D20, 0xEF74657320746573);
      v77 = v102;
      v78 = v103;
      sub_18E3FDB10();
      swift_allocError();
      *v79 = v77;
      *(v79 + 8) = v78;
      *(v79 + 16) = 0;
      swift_willThrow();
      return;
    }

    v21 = (v99 + 32 * v18);
    v22 = v21[1];
    v24 = v21[2];
    v23 = v21[3];
    ++v18;
    if (*v21 == v15 && v22 == v16)
    {
      break;
    }

    v26 = v21[1];
    v27 = v18;
    v28 = sub_18E44F3CC();
    v18 = v27;
  }

  while ((v28 & 1) == 0);
  v89 = v18;
  v29 = 1 << *(v17 + 32);
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  else
  {
    v30 = -1;
  }

  v16 = v30 & *(v17 + 64);
  v15 = (v29 + 63) >> 6;
  v98 = v22;

  v97 = v23;

  v31 = 0;
  while (v16)
  {
LABEL_17:
    if (!*(v24 + 16))
    {
      goto LABEL_26;
    }

    v33 = __clz(__rbit64(v16)) | (v31 << 6);
    v34 = (*(v17 + 56) + 16 * v33);
    v20 = *v34;
    v35 = v34[1];
    v36 = (*(v17 + 48) + 16 * v33);
    v37 = *v36;
    a4 = v36[1];

    v38 = sub_18E1CBD4C();
    v22 = v39;

    if ((v22 & 1) == 0)
    {

      v17 = v107;

      goto LABEL_28;
    }

    v16 &= v16 - 1;
    v40 = (*(v24 + 56) + 16 * v38);
    if (*v40 == v20 && v40[1] == v35)
    {

      v17 = v107;
    }

    else
    {
      v20 = sub_18E44F3CC();

      v17 = v107;
      if ((v20 & 1) == 0)
      {
LABEL_26:

LABEL_28:
        v16 = v95;
        a4 = v96;
        v15 = v85;
        v18 = v89;
        v20 = 1;
        goto LABEL_2;
      }
    }
  }

  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v32 >= v15)
    {
      break;
    }

    v16 = *(v101 + 8 * v32);
    ++v31;
    if (v16)
    {
      v31 = v32;
      goto LABEL_17;
    }
  }

  v42 = v97;

  v43 = v92;
  v44 = v91;
  AssetBackedResource<>.determineAssetDetails(assetSet:)(v92, v42, v93, v96, v90, v45, v46, v47, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
  v49 = v48;

  if (v44)
  {
  }

  else
  {
    v107 = *(sub_18E2706EC(&qword_1EABE9148, &qword_18E4E2D00) + 48);
    v50 = v86;
    v51 = v88;
    v52 = v87;
    (*(v86 + 16))(v88, v43, v87);
    v53 = [v49 metadata];
    v54 = sub_18E44E98C();

    (*(v50 + 8))(v43, v52);
    *(v51 + v107) = v54;
  }
}

uint64_t sub_18E439F60(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18E43A058;

  return v7(a1);
}

uint64_t sub_18E43A058()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_18E1C52E0();
  *v4 = v3;

  sub_18E1D008C();

  return v5();
}

unint64_t sub_18E43A180()
{
  result = qword_1EABE9168;
  if (!qword_1EABE9168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE9168);
  }

  return result;
}

unint64_t sub_18E43A1D4()
{
  result = qword_1EABE9170;
  if (!qword_1EABE9170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE9170);
  }

  return result;
}

unint64_t sub_18E43A228()
{
  result = qword_1EABE9178;
  if (!qword_1EABE9178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE9178);
  }

  return result;
}

uint64_t sub_18E43A27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *a4;
  result = sub_18E286CC8(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v11);
  *a4 = v11;
  return result;
}

unsigned __int8 *sub_18E43A304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_18E44EC2C();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_18E43A88C();
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_18E44F07C();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
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

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_18E43A88C()
{
  v0 = sub_18E43A8F8();
  v4 = sub_18E43A92C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_18E43A92C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_18E44EB3C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_18E44EF0C();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_18E249874(v9, 0);
  v12 = sub_18E43AA8C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_18E44EB3C();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_18E44F07C();
LABEL_4:

  return sub_18E44EB3C();
}

unint64_t sub_18E43AA8C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_18E43AC9C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_18E44EBDC();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_18E44F07C();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_18E43AC9C(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_18E44EBBC();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_18E43AC9C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_18E44EBEC();
    sub_18E2287F8(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x193ACC350](15, a1 >> 16);
    sub_18E2287F8(v3);
    return v4 | 8;
  }
}

id sub_18E43ACF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_18E44E97C();
  v8 = [a4 retrieveAssetSet:a1 usages:v7 consistencyToken:a3];

  return v8;
}

uint64_t sub_18E43AD78(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E2706EC(&qword_1EABE9198, &qword_18E4E2D58);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E43ADE8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_18E43AE4C()
{
  result = qword_1EABE91B8;
  if (!qword_1EABE91B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE91B8);
  }

  return result;
}

unint64_t sub_18E43AEA4()
{
  result = qword_1EABE0530;
  if (!qword_1EABE0530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0530);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for AssetLock(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithCopy for AssetLock(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for AssetLock(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t dispatch thunk of CoherentAssetLock.withLock(closure:)()
{
  sub_18E1C6A30();
  return (*(v0 + 184))();
}

{
  sub_18E1CAF5C();
  sub_18E1C6A30();
  v1 = *(v0 + 192);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = sub_18E1C5EA8(v3);
  *v4 = v5;
  sub_18E1C5950(v4);
  v6 = sub_18E1D8004();

  return v8(v6);
}

uint64_t dispatch thunk of CoherentAssetLock.updateAvailable()()
{
  sub_18E1C6170();
  sub_18E1C6A30();
  v1 = *(v0 + 216);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = sub_18E1C5EA8(v3);
  *v4 = v5;
  sub_18E1C5950(v4);

  return v7();
}

uint64_t sub_18E43B290()
{
  sub_18E1C52F0();
  v2 = v1;
  sub_18E1C64F4();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_18E1C52E0();
  *v6 = v5;

  sub_18E1C6500();

  return v7(v2);
}

uint64_t dispatch thunk of CoherentAssetLock.markAssetsExpired()()
{
  sub_18E1C6170();
  sub_18E1C6A30();
  v1 = *(v0 + 248);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = sub_18E1C5EA8(v3);
  *v4 = v5;
  sub_18E1C5950(v4);

  return v7();
}

uint64_t dispatch thunk of CoherentAssetLock.CoherenceTokenProvider.acquireCoherenceToken(identifiers:)()
{
  sub_18E1CAF5C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_18E2218CC(v0);
  v13 = (v6 + *v6);
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  v10 = sub_18E1C5EA8(v9);
  *v10 = v11;
  sub_18E1C5950(v10);

  return v13(v5, v3, v1);
}

uint64_t sub_18E43B674(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return sub_18E1CAF28((((((result + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 24) & ~v7, v6, v4);
    }

    else
    {
      v17 = *(result + 8);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((((((*(*(v4 - 8) + 64) + ((v7 + 48) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_18E43B7DC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v18 = (((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 24) & ~v10;

            sub_18E201DC8(v18, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

_BYTE *storeEnumTagSinglePayload for AssetSubscriptionStatusPendingReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for AssetSubscriptionStatus(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 4)
    {
      v7 = v6 - 3;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 6)
    {
      return (v7 - 5);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 8;
    if (a2 + 8 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 8);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetSubscriptionStatus(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 8;
  if (a3 + 8 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xF8)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF7)
  {
    v7 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18E43BC3C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_18E43BC50(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

__n128 sub_18E43BC70(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_18E43BC8C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18E43BCCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FetchAssetOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FetchAssetOptions(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18E43BEF0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 8))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_18E43BF44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

_BYTE *_s11AssetErrorsO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_18E43C0C4(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_18E43C174()
{
  result = qword_1EABE91C0;
  if (!qword_1EABE91C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE91C0);
  }

  return result;
}

unint64_t sub_18E43C1CC()
{
  result = qword_1EABE91C8;
  if (!qword_1EABE91C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE91C8);
  }

  return result;
}

unint64_t sub_18E43C224()
{
  result = qword_1EABE91D0;
  if (!qword_1EABE91D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE91D0);
  }

  return result;
}

unint64_t sub_18E43C27C()
{
  result = qword_1EABE91D8;
  if (!qword_1EABE91D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE91D8);
  }

  return result;
}

unint64_t sub_18E43C2D4()
{
  result = qword_1EABE91E0;
  if (!qword_1EABE91E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE91E0);
  }

  return result;
}

unint64_t sub_18E43C32C()
{
  result = qword_1EABE91E8;
  if (!qword_1EABE91E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE91E8);
  }

  return result;
}

unint64_t sub_18E43C384()
{
  result = qword_1EABE91F0;
  if (!qword_1EABE91F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE91F0);
  }

  return result;
}

unint64_t sub_18E43C3DC()
{
  result = qword_1EABE91F8;
  if (!qword_1EABE91F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE91F8);
  }

  return result;
}

unint64_t sub_18E43C434()
{
  result = qword_1EABE9200;
  if (!qword_1EABE9200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE9200);
  }

  return result;
}

unint64_t sub_18E43C48C()
{
  result = qword_1EABE9208;
  if (!qword_1EABE9208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE9208);
  }

  return result;
}

uint64_t sub_18E43C4E0()
{
  sub_18E1CAF5C();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_18E1C2960(v5);
  *v6 = v7;
  v6[1] = sub_18E25E61C;
  v8 = sub_18E220534();

  return sub_18E425224(v8, v9, v2, v4, v3);
}

uint64_t sub_18E43C58C()
{
  sub_18E1C6170();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_18E1C2960(v3);
  *v4 = v5;
  v4[1] = sub_18E25E61C;
  v6 = sub_18E220534();

  return v7(v6);
}

uint64_t sub_18E43C688()
{
  sub_18E1CAF5C();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_18E1C2960(v5);
  *v6 = v7;
  v6[1] = sub_18E25E674;
  v8 = sub_18E220534();

  return sub_18E424C1C(v8, v9, v2, v4, v3);
}

uint64_t sub_18E43C774()
{
  v1 = sub_18E2706EC(&qword_1EABE9210, &qword_18E4E38C0);
  sub_18E1C4EEC(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_18E43C800(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = sub_18E2706EC(&qword_1EABE9210, &qword_18E4E38C0);
  sub_18E1C5B08(v4);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a2(a1, v6);
}

unint64_t sub_18E43C93C()
{
  result = qword_1EABE0A18;
  if (!qword_1EABE0A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0A18);
  }

  return result;
}

unint64_t sub_18E43DDDC()
{
  result = qword_1EABDF840;
  if (!qword_1EABDF840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF840);
  }

  return result;
}

unint64_t sub_18E43DE4C()
{
  result = qword_1EABE0B18;
  if (!qword_1EABE0B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0B18);
  }

  return result;
}

unint64_t sub_18E43DEBC()
{
  result = qword_1EABE0B38;
  if (!qword_1EABE0B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0B38);
  }

  return result;
}

unint64_t sub_18E43DF88()
{
  result = qword_1EABE9240;
  if (!qword_1EABE9240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE9240);
  }

  return result;
}

unint64_t sub_18E43E054()
{
  result = qword_1EABE9250;
  if (!qword_1EABE9250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE9250);
  }

  return result;
}

unint64_t sub_18E43E120()
{
  result = qword_1EABE9260;
  if (!qword_1EABE9260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE9260);
  }

  return result;
}

unint64_t sub_18E43E1EC()
{
  result = qword_1EABE9270;
  if (!qword_1EABE9270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE9270);
  }

  return result;
}

unint64_t sub_18E43E2B8()
{
  result = qword_1ED6A7B08;
  if (!qword_1ED6A7B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7B08);
  }

  return result;
}

unint64_t sub_18E43E384()
{
  result = qword_1EABE0B20;
  if (!qword_1EABE0B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0B20);
  }

  return result;
}

unint64_t sub_18E43E450()
{
  result = qword_1ED6A7B38;
  if (!qword_1ED6A7B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7B38);
  }

  return result;
}

unint64_t sub_18E43E51C()
{
  result = qword_1EABE0AE0;
  if (!qword_1EABE0AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0AE0);
  }

  return result;
}

unint64_t sub_18E43E5E8()
{
  result = qword_1EABE92A0;
  if (!qword_1EABE92A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE92A0);
  }

  return result;
}

unint64_t sub_18E43E6B4()
{
  result = qword_1ED6A7D90;
  if (!qword_1ED6A7D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6A7D90);
  }

  return result;
}

unint64_t sub_18E43E780()
{
  result = qword_1EABE0710;
  if (!qword_1EABE0710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0710);
  }

  return result;
}

unint64_t sub_18E43E84C()
{
  result = qword_1EABDF7F0;
  if (!qword_1EABDF7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF7F0);
  }

  return result;
}

unint64_t sub_18E43E918()
{
  result = qword_1EABDF938;
  if (!qword_1EABDF938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF938);
  }

  return result;
}

unint64_t sub_18E43E9E4()
{
  result = qword_1EABDF900;
  if (!qword_1EABDF900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF900);
  }

  return result;
}

unint64_t sub_18E43EAB0()
{
  result = qword_1EABDF940;
  if (!qword_1EABDF940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF940);
  }

  return result;
}

unint64_t sub_18E43EB7C()
{
  result = qword_1EABE0198;
  if (!qword_1EABE0198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0198);
  }

  return result;
}

unint64_t sub_18E43EC48()
{
  result = qword_1EABDF838;
  if (!qword_1EABDF838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF838);
  }

  return result;
}

unint64_t sub_18E43ED14()
{
  result = qword_1EABDF848;
  if (!qword_1EABDF848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDF848);
  }

  return result;
}

unint64_t sub_18E43EDFC()
{
  result = qword_1EABE0B28;
  if (!qword_1EABE0B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0B28);
  }

  return result;
}

unint64_t sub_18E43EEC8()
{
  result = qword_1EABE0AD8;
  if (!qword_1EABE0AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE0AD8);
  }

  return result;
}

unint64_t sub_18E43EF94()
{
  result = qword_1EABE09F0;
  if (!qword_1EABE09F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE09F0);
  }

  return result;
}

unint64_t sub_18E43F060()
{
  result = qword_1EABE9318;
  if (!qword_1EABE9318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE9318);
  }

  return result;
}

uint64_t sub_18E43F0B4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[11];

  if (v0[14])
  {

    v7 = v0[16];

    v8 = v0[18];
  }

  v9 = v0[22];

  v10 = v0[23];

  v11 = v0[24];

  v12 = v0[25];

  v13 = v0[28];

  return MEMORY[0x1EEE6BDD0](v0, 232, 7);
}

uint64_t sub_18E43F1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_18E44EEFC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v48 - v11;
  v13 = SecTaskCreateFromSelf(0);
  if (v13)
  {
    v14 = v13;
    v15 = sub_18E44EA8C();
    v16 = SecTaskCopyValueForEntitlement(v14, v15, 0);

    if (v16)
    {
      v49 = v16;
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {

        swift_unknownObjectRelease();
        sub_18E1C5068();
        sub_18E201DC8(v17, v18, v19, v20);
        (*(*(a3 - 8) + 32))(a4, v12, a3);
      }

      else
      {
        sub_18E1C5068();
        sub_18E201DC8(v36, v37, v38, v39);
        (*(v9 + 8))(v12, v8);
        if (qword_1ED6A94A8 != -1)
        {
          sub_18E1C842C();
        }

        sub_18E1C8054();
        if (v21)
        {
          if (qword_1ED6A8AB0 != -1)
          {
            sub_18E1C5568();
          }

          v40 = sub_18E44E83C();
          sub_18E1C95EC(v40, qword_1ED6A9870);
          v41 = sub_18E44E80C();
          v42 = sub_18E44EE0C();
          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            *v43 = 0;
            _os_log_impl(&dword_18E1C1000, v41, v42, "Process.valueForEntitlement could not cast value to expected output type", v43, 2u);
            sub_18E1C5008();
          }
        }

        swift_unknownObjectRelease();
      }

      sub_18E1C5068();
      return sub_18E201DC8(v44, v45, v46, v47);
    }

    if (qword_1ED6A94A8 != -1)
    {
      sub_18E1C842C();
    }

    sub_18E1C8054();
    if (v21)
    {
      if (qword_1ED6A8AB0 != -1)
      {
        sub_18E1C5568();
      }

      v26 = sub_18E44E83C();
      sub_18E1C95EC(v26, qword_1ED6A9870);

      v27 = sub_18E44E80C();
      v28 = sub_18E44EE0C();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v49 = v30;
        *v29 = 136315138;
        *(v29 + 4) = sub_18E1C9624(a1, a2, &v49);
        _os_log_impl(&dword_18E1C1000, v27, v28, "Process.valueForEntitlement did not find value for entitlement: %s", v29, 0xCu);
        sub_18E1C9934(v30);
        sub_18E1C5008();
        sub_18E1C5008();
      }
    }
  }

  else
  {
    if (qword_1ED6A94A8 != -1)
    {
      sub_18E1C842C();
    }

    sub_18E1C8054();
    if (v21)
    {
      if (qword_1ED6A8AB0 != -1)
      {
        sub_18E1C5568();
      }

      v22 = sub_18E44E83C();
      sub_18E1C95EC(v22, qword_1ED6A9870);
      v23 = sub_18E44E80C();
      v24 = sub_18E44EE0C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_18E1C1000, v23, v24, "Process.valueForEntitlement could not create security task", v25, 2u);
        sub_18E1C5008();
      }
    }
  }

  sub_18E1C5068();

  return sub_18E201DC8(v31, v32, v33, v34);
}

uint64_t CATALOG_SERVICE_ALL_ACCEPTED_ENTITLEMENT_NAMES.getter()
{
  if (qword_1EABE0AE8 != -1)
  {
    swift_once();
  }
}

uint64_t *sub_18E43F738()
{
  if (qword_1ED6A9428 != -1)
  {
    sub_18E1C844C();
  }

  return &qword_1ED6A8DB8;
}

void static CatalogService.interface.setter(uint64_t a1)
{
  if (qword_1ED6A9428 != -1)
  {
    sub_18E1C844C();
  }

  sub_18E1D61E0();
  v2 = qword_1ED6A8DB8;
  qword_1ED6A8DB8 = a1;
}

uint64_t static CatalogService.interface.modify()
{
  if (qword_1ED6A9428 != -1)
  {
    sub_18E1C844C();
  }

  sub_18E1C29FC();
  return sub_18E1C864C();
}

id sub_18E43F844@<X0>(void *a1@<X8>)
{
  sub_18E43F738();
  swift_beginAccess();
  v2 = qword_1ED6A8DB8;
  *a1 = qword_1ED6A8DB8;

  return v2;
}

void sub_18E43F8A4(id *a1)
{
  v1 = *a1;
  sub_18E43F738();
  swift_beginAccess();
  v2 = qword_1ED6A8DB8;
  qword_1ED6A8DB8 = v1;
}

uint64_t sub_18E43F968(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  sub_18E1D61E0();
  v8 = *a4;
  *a3 = a1;
  *a4 = a2;
}

uint64_t sub_18E43FA04@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
}

uint64_t sub_18E43FA60(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v9 = *a1;
  v8 = a1[1];
  sub_18E1D61E0();
  v10 = *a6;
  *a5 = v9;
  *a6 = v8;
}

uint64_t sub_18E43FAC8()
{
  result = sub_18E207C7C(&unk_1F0127F70);
  qword_1EABE05A0 = result;
  return result;
}

uint64_t *sub_18E43FAF0()
{
  if (qword_1EABE0598 != -1)
  {
    sub_18E1C5220();
  }

  return &qword_1EABE05A0;
}

uint64_t static CatalogService.otherAcceptedEntitlementNames.modify()
{
  if (qword_1EABE0598 != -1)
  {
    sub_18E1C5220();
  }

  sub_18E1C29FC();
  return sub_18E1C864C();
}

uint64_t sub_18E43FBB8@<X0>(void *a1@<X8>)
{
  sub_18E43FAF0();
  swift_beginAccess();
  *a1 = qword_1EABE05A0;
}

_UNKNOWN **sub_18E43FC0C()
{
  if (qword_1ED6A9040 != -1)
  {
    sub_18E1C791C();
  }

  return &off_1ED6A8DD0;
}

uint64_t static CatalogService.requestSelectorClasses.modify()
{
  if (qword_1ED6A9040 != -1)
  {
    sub_18E1C791C();
  }

  sub_18E1C29FC();
  return sub_18E1C864C();
}

_UNKNOWN **sub_18E43FCD4()
{
  if (qword_1ED6A8DC8 != -1)
  {
    sub_18E1C8C1C();
  }

  return &off_1ED6A8DC0;
}

uint64_t sub_18E43FD38(uint64_t a1, void *a2, uint64_t *a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  sub_18E1D61E0();
  v5 = *a3;
  *a3 = a1;
}

uint64_t static CatalogService.responseSelectorClasses.modify()
{
  if (qword_1ED6A8DC8 != -1)
  {
    sub_18E1C8C1C();
  }

  sub_18E1C29FC();
  return sub_18E1C864C();
}

uint64_t sub_18E43FDFC@<X0>(void (*a1)(void)@<X3>, void *a2@<X4>, void *a3@<X8>)
{
  a1();
  sub_18E1C5A2C();
  *a3 = *a2;
}

uint64_t sub_18E43FE40(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t *a6)
{
  v8 = *a1;

  a5(v9);
  sub_18E1D61E0();
  v10 = *a6;
  *a6 = v8;
}

uint64_t sub_18E43FEA0()
{
  if (qword_1ED6A9020 != -1)
  {
    sub_18E1C6D8C();
  }

  v0 = sub_18E44E83C();

  return sub_18E1C95EC(v0, qword_1ED6A9028);
}

uint64_t static CatalogService.logger.setter(uint64_t a1)
{
  if (qword_1ED6A9020 != -1)
  {
    sub_18E1C6D8C();
  }

  v2 = sub_18E44E83C();
  v3 = sub_18E1C95EC(v2, qword_1ED6A9028);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t static CatalogService.logger.modify()
{
  if (qword_1ED6A9020 != -1)
  {
    sub_18E1C6D8C();
  }

  v0 = sub_18E44E83C();
  sub_18E1C95EC(v0, qword_1ED6A9028);
  swift_beginAccess();
  return sub_18E1C864C();
}

uint64_t sub_18E440058@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18E43FEA0();
  swift_beginAccess();
  v3 = sub_18E44E83C();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_18E4400D4(uint64_t a1)
{
  v2 = sub_18E43FEA0();
  swift_beginAccess();
  v3 = sub_18E44E83C();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

_BYTE *storeEnumTagSinglePayload for CatalogService(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void ResourceBundleIdentifier<>.serverConfiguration()(uint64_t a1@<X8>)
{
  v3 = sub_18E44E2BC();
  v4 = sub_18E1C4EAC(v3);
  v54 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18E2706EC(&qword_1EABE0DB0, &unk_18E4E24B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v46 - v12;
  v14 = sub_18E44E38C();
  v15 = sub_18E1C4EAC(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v21 = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v1;
  v22 = v1[1];
  sub_18E44E35C();
  if (sub_18E1CAF28(v13, 1, v14) == 1)
  {
    sub_18E275468(v13, &qword_1EABE0DB0, &unk_18E4E24B0);
    if (qword_1ED6A8AB0 != -1)
    {
      sub_18E1C5568();
    }

    v24 = sub_18E44E83C();
    sub_18E1C95EC(v24, qword_1ED6A9870);

    v25 = sub_18E44E80C();
    v26 = sub_18E44EE0C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v55 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_18E1C9624(v23, v22, &v55);
      _os_log_impl(&dword_18E1C1000, v25, v26, "serverConfiguration(): not a valid url: %s", v27, 0xCu);
      sub_18E1C9934(v28);
      sub_18E1C5008();
      sub_18E1C5008();
    }

    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v52 = v14;
  v53 = 0x636972656E6567;
  v51 = v17;
  (*(v17 + 32))(v21, v13, v14);
  v29 = sub_18E44E33C();
  v31 = v30;
  v32 = sub_18E44E2EC();
  if (!v32)
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  v33 = *(v32 + 16);
  if (v33)
  {
    v47 = v29;
    v48 = v31;
    v49 = v21;
    v50 = a1;
    sub_18E1C846C();
    v34 = v54 + 16;
    v54 = *(v54 + 16);
    v35 = *(v34 + 64);
    v46[1] = v36;
    v37 = v36 + ((v35 + 32) & ~v35);
    v38 = *(v34 + 56);
    v39 = (v34 - 8);
    while (1)
    {
      (v54)(v9, v37, v3);
      if (sub_18E44E29C() == 0x5672657470616461 && v40 == v21)
      {
        break;
      }

      v21 = sub_18E44F3CC();

      if (v21)
      {
        goto LABEL_18;
      }

      (*v39)(v9, v3);
LABEL_20:
      sub_18E1C846C();
      v37 += v38;
      if (!--v33)
      {

        v21 = v49;
        v44 = v50;
        v29 = v47;
        v31 = v48;
        goto LABEL_23;
      }
    }

LABEL_18:
    v42 = sub_18E44E2AC();
    v21 = v43;
    (*v39)(v9, v3);
    if (v21)
    {

      v53 = v42;
    }

    goto LABEL_20;
  }

  v44 = a1;
LABEL_23:
  v45 = serverConfigurationFor(serverBundleConfigID:variant:)(v29, v31, v44);
  (*(v51 + 8))(v21, v52, v45);
}

uint64_t XPCServiceClientConnection.__allocating_init(delegate:)()
{
  sub_18E1CD8B8();
  sub_18E1E1AE0();
  v0 = swift_allocObject();
  sub_18E1D8004();
  XPCServiceClientConnection.init(delegate:)();
  return v0;
}

void sub_18E440810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E1CFB3C();
  a19 = v27;
  a20 = v28;
  v32 = sub_18E1CD5F8(v29, v30, v31);
  v33 = sub_18E1C5E70(v32, &a14);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_18E1CA254();
  MEMORY[0x1EEE9AC00](v36);
  sub_18E234640();
  MEMORY[0x1EEE9AC00](v37);
  sub_18E1CD80C();
  MEMORY[0x1EEE9AC00](v38);
  sub_18E1C5738();
  MEMORY[0x1EEE9AC00](v39);
  sub_18E2219B0();
  sub_18E212AA0();
  if (v21)
  {
    goto LABEL_2;
  }

  sub_18E1C6260();
  if (!v40)
  {
    sub_18E2885F0();
    v83 = sub_18E1C8558();
    sub_18E1CBDCC(v83, v84);
LABEL_2:
    os_unfair_lock_unlock((v23 + 24));
    sub_18E1E6770();
    goto LABEL_3;
  }

  sub_18E223B94(v40);
  os_unfair_lock_unlock((v23 + 24));
  sub_18E223DB8();
  sub_18E1CC560();
  v41.n128_u64[0] = 136315138;
  sub_18E1E23AC(v41);
  v42.n128_u64[0] = 136315650;
  sub_18E1E334C(v42);
  sub_18E1E3684();
  while (1)
  {
    if (v43 == -1)
    {
      __break(1u);
      goto LABEL_48;
    }

    sub_18E1D02F4();
    v44 = &qword_1F018ABF0;
    sub_18E1CC494();
    v45 = swift_allocObject();
    v46 = sub_18E1E2DEC(v45);
    v167 = sub_18E44D310;
    v168 = v46;
    sub_18E1C8480();
    sub_18E1C80EC(&a11);
    v165 = v47;
    v166 = &unk_1F018B678;
    _Block_copy(&v163);
    sub_18E1CF544();

    v48 = sub_18E1E32D8(&v164);
    v50 = [v48 v49];
    v51 = sub_18E1CF9C4();
    _Block_release(v51);
    sub_18E1CC494();
    v52 = swift_allocObject();
    sub_18E223EA4(v52);
    sub_18E1CC494();
    v53 = swift_allocObject();
    sub_18E1D1A18(v53);
    sub_18E1CD8AC();
    v54 = swift_allocObject();
    sub_18E223B08(v54);
    sub_18E1CD8AC();
    v55 = swift_allocObject();
    *(v55 + 16) = sub_18E44D248;
    *(v55 + 24) = v23;
    v56 = qword_1ED6A8B58;
    sub_18E1E3C40();
    swift_unknownObjectRetain();

    sub_18E2214E8();

    if (v56 != -1)
    {
      sub_18E1C593C();
      swift_once();
    }

    v57 = sub_18E221A54();
    sub_18E1CE8B4(v57, qword_1ED6A9888);
    sub_18E233C70();
    v58 = sub_18E44E80C();
    sub_18E44EE2C();
    sub_18E20933C();
    sub_18E221E1C();
    sub_18E1E8CD8();
    if (v59)
    {
      sub_18E1C5F74();
      sub_18E1CA69C();
      v60 = swift_slowAlloc();
      v61 = sub_18E1CA340(v60);
      sub_18E200E1C(v61);
      sub_18E1E2FD0(&dword_18E1C1000, v58, v62, "requesting resource information for: %s");
      sub_18E221850();
      v25 = v22;
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1E6C6C();
    }

    else
    {

      v44 = v160;
    }

    sub_18E1D45C8();
    v63 = sub_18E44EA8C();
    v167 = sub_18E1E0F7C;
    v168 = v55;
    sub_18E1C8480();
    sub_18E1E15E8();
    v165 = sub_18E1E0EE0;
    v166 = &unk_1F018B718;
    _Block_copy(&v163);
    sub_18E1CC324();

    v64 = sub_18E1CD984();
    sub_18E232F2C(v64, v65);
    _Block_release(v24);

    sub_18E1E6580();
    v20 = *v44;
    if (!v20)
    {
      break;
    }

    sub_18E220B64();
    v66 = v20;
    sub_18E223A9C();
    sub_18E1E3B68();
    sub_18E280314(v67, v68);
    sub_18E1E3C94();
    if ((v63 & 1) == 0)
    {
      if (qword_1ED6A9020 == -1)
      {
LABEL_27:
        sub_18E1CF740(v69, qword_1ED6A9028);
        sub_18E1D4CFC();
        swift_beginAccess();
        sub_18E1C2AA0(&v161);
        sub_18E1D5EF4();
        v102();
        v103 = v20;
        v104 = sub_18E44E80C();
        sub_18E44EE0C();
        sub_18E232CE0();
        if (sub_18E1E1A10())
        {
          sub_18E1CA69C();
          swift_slowAlloc();
          sub_18E20809C();
          swift_slowAlloc();
          v105 = sub_18E1CADF8();
          sub_18E1CFFE8(v105);
          sub_18E21D1B0();
          sub_18E1D4CFC();
          swift_beginAccess();
          sub_18E22413C();
          v106 = sub_18E1D84BC();
          sub_18E1C9624(v106, &qword_1EABE9328, v107);
          sub_18E1C97B8();
          sub_18E1E1520();
          v108 = v20;
          v109 = _swift_stdlib_bridgeErrorToNSError();
          sub_18E1C5240(v109);
          sub_18E1C8D90();
          _os_log_impl(v110, v111, v112, v113, v114, 0x20u);
          sub_18E32F548(v26);
          sub_18E221CE4();
          sub_18E1E2C2C();
          sub_18E1C6164();
          MEMORY[0x193ACD400]();

          sub_18E1C5904();
          v115 = sub_18E1C69C4();
          v116(v115);
        }

        else
        {

          sub_18E1C5904();
          sub_18E1E1028();
          v117();
        }

        sub_18E1E383C();
        sub_18E1E2660();
        swift_willThrow();

        sub_18E1CD984();
        swift_unknownObjectRelease_n();
LABEL_38:

        sub_18E1CEB50();

        goto LABEL_3;
      }

LABEL_48:
      sub_18E1C6A1C();
      v69 = swift_once();
      goto LABEL_27;
    }

    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      swift_once();
    }

    v70 = sub_18E1C9090();
    sub_18E1C95AC(v70, qword_1ED6A9028);
    sub_18E1CFC50();
    sub_18E1D42A4();
    v71();
    v72 = v20;
    v73 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E232CE0();
    if (sub_18E1E1A10())
    {
      sub_18E1CA69C();
      v23 = swift_slowAlloc();
      sub_18E20809C();
      v74 = swift_slowAlloc();
      sub_18E1CA69C();
      v75 = swift_slowAlloc();
      sub_18E240E98(v75);
      sub_18E21D1B0();
      v22 = &qword_1EABE9328;
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E1E316C();
      v76 = sub_18E24707C();
      sub_18E1C9624(v76, v25, v77);
      sub_18E44D3C4();
      *(v23 + 4) = &qword_1EABE9328;
      sub_18E1E6838();
      v78 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v78;
      *v74 = v78;
      sub_18E1C793C();
      sub_18E24095C(&dword_18E1C1000, v73, v55, "%s sync: connection error during call: %@, num connection attempts: %lu");
      sub_18E32F548(v74);
      sub_18E1E6C6C();
      sub_18E1E1D6C();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      swift_unknownObjectRelease();
      v79 = sub_18E1C6838(&v162);
      v80(v79);
      sub_18E20067C();

      sub_18E1CF994();

      sub_18E1E26D0();
    }

    else
    {

      sub_18E1DD3C0(&a13);
      swift_unknownObjectRelease();
      v81 = sub_18E1C6838(&v162);
      v82(v81);
      sub_18E20067C();

      sub_18E1CF994();
    }

    swift_unknownObjectRelease();
    sub_18E1E3760();
  }

  sub_18E223428();
  sub_18E1D4CFC();
  swift_beginAccess();
  v85 = v24[2];
  if (v85)
  {
    v86 = v85;
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      v86 = swift_once();
    }

    sub_18E1CB0FC(v86, qword_1ED6A9028);
    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E1CFC50();
    v87 = sub_18E1D6224();
    v88(v87);
    v89 = v85;
    v90 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E232CE0();
    if (sub_18E1E1A10())
    {
      sub_18E1CA69C();
      swift_slowAlloc();
      sub_18E20809C();
      swift_slowAlloc();
      v91 = sub_18E1CADF8();
      sub_18E1E18E4(v91);
      sub_18E21D1B0();
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E22413C();
      v92 = sub_18E1E3D6C();
      sub_18E1C9624(v92, &qword_1EABE9328, v93);
      sub_18E1C97B8();
      sub_18E1E3098();
      v94 = _swift_stdlib_bridgeErrorToNSError();
      sub_18E1C5240(v94);
      sub_18E1C8D90();
      _os_log_impl(v95, v96, v97, v98, v99, 0x20u);
      sub_18E32F548(v26);
      sub_18E221CE4();
      sub_18E1E2C2C();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      sub_18E1C5904();
      v100 = sub_18E1C69C4();
      v101(v100);
      sub_18E1E383C();
    }

    else
    {

      v138 = sub_18E1C8C3C(&v162);
      v139(v138);
      sub_18E1D8054();
    }

    swift_willThrow();

    sub_18E1CD984();
    swift_unknownObjectRelease_n();
    goto LABEL_38;
  }

  sub_18E1D4CFC();
  v118 = swift_beginAccess();
  v119 = *(v25 + 16);
  if (v119)
  {
    v120 = v119;
    sub_18E1D49FC();
    if (!v122)
    {
      sub_18E1C6A1C();
      v121 = swift_once();
    }

    sub_18E1CB0FC(v121, qword_1ED6A9028);
    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E1CFC50();
    v123 = sub_18E1D6224();
    v124(v123);
    v125 = sub_18E44E80C();
    v126 = sub_18E44EDFC();
    if (sub_18E1E115C(v126))
    {
      sub_18E1C9700();
      swift_slowAlloc();
      sub_18E1CA69C();
      v127 = swift_slowAlloc();
      sub_18E1E2408(v127);
      sub_18E224444(4.8151e-34);
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E223510();
      v128 = sub_18E1D5C74();
      sub_18E1C9624(v128, &qword_1EABE9328, v129);
      sub_18E1D5FEC();
      sub_18E1C884C();
      sub_18E1C8D90();
      _os_log_impl(v130, v131, v132, v133, v134, 0x16u);
      sub_18E1E1D6C();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      sub_18E1CEB50();
      swift_unknownObjectRelease();
      sub_18E1C5904();
      v136 = sub_18E1C69C4();
      v137(v136);
      sub_18E1E6770();
      sub_18E20067C();

      sub_18E1CF994();
    }

    else
    {

      sub_18E1CEB50();
      sub_18E25E204(&a13);
      swift_unknownObjectRelease();
      v153 = sub_18E1C8C3C(&v162);
      v154(v153);
      sub_18E1E6770();
      sub_18E20067C();
    }

    swift_unknownObjectRelease();
    sub_18E240AB4();
  }

  else
  {
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      v118 = swift_once();
    }

    sub_18E1C8658(v118, qword_1ED6A9028);
    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E1CFC50();
    v141 = sub_18E212088();
    v142(v141);
    v143 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E1E3E30();
    if (os_log_type_enabled(v143, v144))
    {
      sub_18E1C9700();
      swift_slowAlloc();
      sub_18E1CA69C();
      v145 = swift_slowAlloc();
      sub_18E221F1C(v145);
      sub_18E243124(4.8151e-34);
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E22413C();
      v146 = sub_18E1D5C74();
      sub_18E1C9624(v146, &qword_1EABE9328, v147);
      sub_18E1C97B8();
      sub_18E1C8F4C();
      sub_18E1D4494(&dword_18E1C1000, v148, v149, "%s sync: throwing neither result or error returned, num connection attempts:%lu");
      sub_18E1CF2EC();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      v150 = sub_18E1C614C(&v162);
      v151(v150);
      sub_18E1D62D8();
    }

    else
    {

      v155 = sub_18E1C614C(&v162);
      v156(v155);
      sub_18E1E84AC();
    }

    sub_18E2885F0();
    v157 = sub_18E1C8558();
    sub_18E1E1254(v157, v158);

    sub_18E1CD984();
    swift_unknownObjectRelease_n();

    sub_18E1CEB50();
  }

LABEL_3:
  sub_18E2245CC();
  sub_18E1E6AEC();
}

void sub_18E441758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, NSObject *a22, SEL *a23)
{
  sub_18E1CFB3C();
  a19 = v29;
  a20 = v30;
  v168 = v31;
  v173 = v32;
  v175 = v33;
  v35 = v34;
  v36 = sub_18E44E83C();
  v37 = sub_18E1C4EAC(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  sub_18E1C86C0();
  sub_18E1CD80C();
  MEMORY[0x1EEE9AC00](v40);
  sub_18E234640();
  MEMORY[0x1EEE9AC00](v41);
  sub_18E220544();
  MEMORY[0x1EEE9AC00](v42);
  sub_18E1CA6A8();
  MEMORY[0x1EEE9AC00](v43);
  sub_18E1E3EE0();
  sub_18E1CEB5C((v25 + 16));
  if (v24)
  {
    goto LABEL_2;
  }

  sub_18E1CFA38();
  v174 = v23;
  v172 = v35;
  v167 = v28;
  v165 = v27;
  v166 = v26;
  v178 = v36;
  v44 = *(v25 + 16);
  if (!v44)
  {
    sub_18E2885F0();
    sub_18E1C8558();
    *v82 = 0;
    swift_willThrow();
LABEL_2:
    os_unfair_lock_unlock((v25 + 24));

    goto LABEL_3;
  }

  v171 = a23;
  v170 = a22;
  v169 = a21;
  sub_18E216810(v44, v182);
  sub_18E1E2078();
  isa = v175;
  v46 = v173;
  sub_18E2168E4();
  while (1)
  {
    sub_18E1E3B68();
    sub_18E1E9CA8();
    v177 = v47 + 1;
    if (v47 == -1)
    {
      __break(1u);
      goto LABEL_47;
    }

    sub_18E1D02F4();
    sub_18E1CC494();
    v48 = swift_allocObject();
    *(v48 + 16) = 0;
    v186 = v26;
    v187 = v48;
    sub_18E1C8480();
    sub_18E1C80EC(&a12);
    v184 = v49;
    v185 = v35;
    _Block_copy(v183);
    sub_18E1CF544();

    v50 = sub_18E1E32D8(v182);
    v52 = [v50 v51];
    v53 = sub_18E1E187C();
    _Block_release(v53);
    sub_18E1CC494();
    v26 = swift_allocObject();
    v26[2] = 0;
    sub_18E1CC494();
    v54 = swift_allocObject();
    sub_18E223C24(v54);
    sub_18E1CD8AC();
    v55 = swift_allocObject();
    *(v55 + 16) = &qword_1F018ABF0;
    *(v55 + 24) = v26;
    sub_18E1CD8AC();
    v56 = swift_allocObject();
    *(v56 + 16) = v46;
    *(v56 + 24) = v55;
    v57 = qword_1ED6A8B58;
    swift_unknownObjectRetain();

    if (v57 != -1)
    {
      swift_once();
    }

    v58 = sub_18E221A54();
    sub_18E1CE8B4(v58, qword_1ED6A9888);
    v59 = isa;
    v60 = sub_18E44E80C();
    v61 = sub_18E44EE2C();

    v176 = v26;
    if (sub_18E221E1C())
    {
      v62 = sub_18E1C5F74();
      sub_18E20809C();
      v63 = v27;
      v64 = swift_slowAlloc();
      *v62 = 138412290;
      *(v62 + 4) = v59;
      *v64 = v175;
      v65 = v59;
      sub_18E1E2FD0(&dword_18E1C1000, v60, v61, v168);
      sub_18E32F548(v64);
      v27 = v63;
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      v26 = v176;
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    v186 = v169;
    v187 = v56;
    sub_18E1C8480();
    sub_18E1E8920(&a12);
    v184 = v66;
    v185 = v170;
    _Block_copy(v183);
    sub_18E1CF544();

    [v27 *v171];
    _Block_release(v60);

    sub_18E25E204(&a9);
    sub_18E1D4CFC();
    swift_beginAccess();
    isa = v60->isa;
    if (!v60->isa)
    {
      break;
    }

    v67 = isa;
    v68 = isa;
    sub_18E280314(isa, v177);
    sub_18E1E63E8();
    v46 = v178;
    if ((v172 & 1) == 0)
    {
      if (qword_1ED6A9020 == -1)
      {
LABEL_26:
        sub_18E1CE8B4(v46, qword_1ED6A9028);
        sub_18E1D4CFC();
        swift_beginAccess();
        sub_18E1E8A2C(&v180);
        sub_18E2244C4();
        v104();
        v105 = isa;
        v106 = sub_18E44E80C();
        sub_18E44EE0C();

        if (sub_18E1E1A10())
        {
          sub_18E1CA69C();
          swift_slowAlloc();
          sub_18E20809C();
          v107 = swift_slowAlloc();
          sub_18E1CA69C();
          v179[4] = swift_slowAlloc();
          sub_18E1CDA38(v179);
          sub_18E1D4CFC();
          swift_beginAccess();
          v108 = off_1EABE9330;

          v109 = sub_18E1D84BC();
          sub_18E1C9624(v109, v108, v110);

          sub_18E1E1520();
          v111 = isa;
          v112 = _swift_stdlib_bridgeErrorToNSError();
          sub_18E1C64CC(v112);
          sub_18E44D370();
          sub_18E1C8D90();
          _os_log_impl(v113, v114, v115, v116, v117, 0x20u);
          sub_18E32F548(v107);
          sub_18E1C6164();
          MEMORY[0x193ACD400]();
          v118 = sub_18E1DD3C0(&a12);
          sub_18E1C9934(v118);
          v119 = sub_18E1C86D0();
          MEMORY[0x193ACD400](v119);
          sub_18E1C6164();
          MEMORY[0x193ACD400]();

          sub_18E1C5BD8();
          v120 = sub_18E1C69C4();
        }

        else
        {

          sub_18E1C5BD8();
          v120 = v167;
          v121 = v46;
        }

        v122(v120, v121);
        swift_willThrow();
        sub_18E220158();

        sub_18E2417C4();
LABEL_37:

        sub_18E1E28C0();

        goto LABEL_3;
      }

LABEL_47:
      sub_18E1C6A1C();
      swift_once();
      goto LABEL_26;
    }

    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    sub_18E1C95AC(v178, qword_1ED6A9028);
    sub_18E1E8A2C(&v180);
    sub_18E2244C4();
    v69();
    v70 = isa;
    v35 = sub_18E44E80C();
    v71 = sub_18E44EE0C();

    if (sub_18E1E1A10())
    {
      sub_18E1CA69C();
      v72 = swift_slowAlloc();
      sub_18E20809C();
      v73 = swift_slowAlloc();
      sub_18E1CA69C();
      v27 = swift_slowAlloc();
      v183[0] = v27;
      sub_18E1D7ED0(v179);
      sub_18E1D4CFC();
      swift_beginAccess();
      v26 = off_1EABE9330;

      v74 = sub_18E24707C();
      v76 = sub_18E1C9624(v74, v26, v75);

      *(v72 + 4) = v76;
      *(v72 + 12) = 2112;
      v77 = isa;
      v78 = _swift_stdlib_bridgeErrorToNSError();
      *(v72 + 14) = v78;
      *v73 = v78;
      *(v72 + 22) = 2048;
      sub_18E44D370();
      sub_18E24095C(&dword_18E1C1000, v35, v71, "%s sync: connection error during call: %@, num connection attempts: %lu");
      sub_18E32F548(v73);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E221850();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      swift_unknownObjectRelease();
      sub_18E1C5BD8();
      v79 = sub_18E1C69C4();
      v80(v79);
      sub_18E1CF994();

      sub_18E1D002C();

      sub_18E20067C();
    }

    else
    {

      swift_unknownObjectRelease();
      sub_18E1C5BD8();
      v81(v174, v178);
      sub_18E1CF994();
    }

    swift_unknownObjectRelease();
    v46 = v173;
    sub_18E2168E4();
    sub_18E1E3760();
    isa = v175;
  }

  sub_18E1D4CFC();
  swift_beginAccess();
  v83 = v26[2];
  if (v83)
  {
    v84 = v83;
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      swift_once();
    }

    v85 = sub_18E1C95EC(v178, qword_1ED6A9028);
    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E1E8A2C(&v180);
    v86(v166, v85, v178);
    v87 = v83;
    v88 = sub_18E44E80C();
    sub_18E44EE0C();

    if (sub_18E1E1A10())
    {
      sub_18E1CA69C();
      swift_slowAlloc();
      sub_18E20809C();
      v89 = swift_slowAlloc();
      sub_18E1CA69C();
      v179[0] = swift_slowAlloc();
      sub_18E1D03DC(v179);
      sub_18E1D4CFC();
      swift_beginAccess();
      v90 = off_1EABE9330;

      v91 = sub_18E1E3D6C();
      sub_18E1C9624(v91, v90, v92);

      sub_18E1E1520();
      v93 = v83;
      v94 = _swift_stdlib_bridgeErrorToNSError();
      sub_18E1C64CC(v94);
      sub_18E44D370();
      sub_18E1C8D90();
      _os_log_impl(v95, v96, v97, v98, v99, 0x20u);
      sub_18E32F548(v89);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      v100 = sub_18E1DD3C0(&a12);
      sub_18E1C9934(v100);
      v101 = sub_18E1C86D0();
      MEMORY[0x193ACD400](v101);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      sub_18E1C5BD8();
      v103 = v166;
    }

    else
    {

      v103 = sub_18E1C2AA0(v181);
    }

    v102(v103, v178);
    swift_willThrow();
    sub_18E220158();

    sub_18E2417C4();
    sub_18E1D002C();
    goto LABEL_37;
  }

  sub_18E1D4CFC();
  v123 = swift_beginAccess();
  if (off_1F018AC00)
  {
    v124 = qword_1ED6A9020;
    v125 = off_1F018AC00;
    if (v124 != -1)
    {
      sub_18E1C6A1C();
      v125 = swift_once();
    }

    sub_18E1C8658(v125, qword_1ED6A9028);
    sub_18E1D4CFC();
    swift_beginAccess();
    v126 = sub_18E1C2AA0(&v180);
    v127(v126, v124, v178);
    v128 = sub_18E44E80C();
    v129 = sub_18E44EDFC();
    if (sub_18E1E115C(v129))
    {
      sub_18E1C9700();
      v130 = swift_slowAlloc();
      sub_18E1CA69C();
      v179[3] = swift_slowAlloc();
      sub_18E224444(4.8151e-34);
      sub_18E1D4CFC();
      swift_beginAccess();
      v131 = off_1EABE9330;

      v132 = sub_18E1D5C74();
      v134 = sub_18E1C9624(v132, v131, v133);

      *(v130 + 4) = v134;
      *(v130 + 12) = 2048;
      *(v130 + 14) = v177;
      sub_18E1C8D90();
      _os_log_impl(v135, v136, v137, v138, v139, 0x16u);
      v140 = sub_18E1DD3C0(&a12);
      sub_18E1C9934(v140);
      v141 = sub_18E1C86D0();
      MEMORY[0x193ACD400](v141);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      sub_18E1E28C0();
      swift_unknownObjectRelease();
      sub_18E1C5BD8();
      v143 = sub_18E1C69C4();
      v144(v143);
      sub_18E220158();
      sub_18E1CF994();

      sub_18E20067C();
    }

    else
    {

      sub_18E1E28C0();
      swift_unknownObjectRelease();
      v160 = sub_18E1C2AA0(v181);
      v161(v160, v178);
      sub_18E220158();
      sub_18E1CF994();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      v123 = swift_once();
    }

    sub_18E1C6604(v123, qword_1ED6A9028);
    sub_18E1E8A2C(&v180);
    v146(v165, v59, v178);
    v147 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E1E3E30();
    if (os_log_type_enabled(v147, v148))
    {
      sub_18E1C9700();
      v149 = swift_slowAlloc();
      sub_18E1CA69C();
      v150 = swift_slowAlloc();
      sub_18E221F1C(v150);
      *v149 = 136315394;
      sub_18E1D4CFC();
      swift_beginAccess();
      v151 = off_1EABE9330;

      v152 = sub_18E1D5C74();
      v154 = sub_18E1C9624(v152, v151, v153);

      *(v149 + 4) = v154;
      *(v149 + 12) = 2048;
      *(v149 + 14) = v177;
      sub_18E1DD2E8(&dword_18E1C1000, v155, v156, "%s sync: throwing neither result or error returned, num connection attempts:%lu");
      sub_18E1CF2EC();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      sub_18E1C5BD8();
      v158 = v165;
    }

    else
    {

      v158 = sub_18E1CC484(v181);
    }

    v157(v158, v178);
    sub_18E2885F0();
    v162 = sub_18E1C8558();
    sub_18E224E88(v162, v163);
    sub_18E220158();
    sub_18E1CF994();

    sub_18E2417C4();

    sub_18E1E28C0();
  }

LABEL_3:
  sub_18E1E6AEC();
}

void sub_18E44278C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const char *a21, void *a22, NSObject *a23, uint64_t *a24)
{
  sub_18E1CFB3C();
  a19 = v28;
  a20 = v29;
  v168 = v30;
  v167 = v31;
  v166 = v32;
  v33 = sub_18E44E83C();
  v34 = sub_18E1C5E70(v33, &a14);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_18E1CA254();
  MEMORY[0x1EEE9AC00](v37);
  sub_18E234640();
  MEMORY[0x1EEE9AC00](v38);
  sub_18E1CD80C();
  MEMORY[0x1EEE9AC00](v39);
  sub_18E1C5738();
  MEMORY[0x1EEE9AC00](v40);
  sub_18E2219B0();
  sub_18E212AA0();
  v41 = v25;
  if (v25)
  {
    goto LABEL_2;
  }

  sub_18E1CFA38();
  sub_18E223F48();
  v42 = *(v26 + 16);
  if (!v42)
  {
    sub_18E2885F0();
    v88 = sub_18E1C8558();
    sub_18E1CBDCC(v88, v89);
LABEL_2:
    os_unfair_lock_unlock((v26 + 24));
    sub_18E1E6770();
    goto LABEL_3;
  }

  v164 = a24;
  v163 = a23;
  v162 = a22;
  v161 = a21;
  sub_18E216810(v42, v172);
  sub_18E223DB8();
  v43 = v168;
  sub_18E2168E4();
  sub_18E1E3B68();
  v44 = v167;
  sub_18E220A1C();
  while (1)
  {
    if (v45 == -1)
    {
      __break(1u);
      goto LABEL_48;
    }

    sub_18E1D02F4();
    v46 = &qword_1F018ABF0;
    sub_18E1CC494();
    v47 = swift_allocObject();
    v48 = sub_18E1E2DEC(v47);
    v177 = v44;
    v178 = v48;
    sub_18E1C8480();
    sub_18E1C80EC(&a11);
    v175 = v49;
    v176 = v41;
    _Block_copy(v174);
    sub_18E1CF544();

    v50 = sub_18E1E32D8(v172);
    v52 = [v50 v51];
    v53 = sub_18E1CF9C4();
    _Block_release(v53);
    sub_18E1CC494();
    v54 = swift_allocObject();
    sub_18E223EA4(v54);
    sub_18E1CC494();
    v55 = swift_allocObject();
    sub_18E1D1A18(v55);
    sub_18E1CD8AC();
    v56 = swift_allocObject();
    sub_18E223B08(v56);
    sub_18E1CD8AC();
    v57 = swift_allocObject();
    *(v57 + 16) = v43;
    *(v57 + 24) = v26;
    v58 = qword_1ED6A8B58;
    sub_18E1E3C40();
    swift_unknownObjectRetain();

    sub_18E2214E8();

    if (v58 != -1)
    {
      swift_once();
    }

    v59 = sub_18E221A54();
    sub_18E1CE8B4(v59, qword_1ED6A9888);
    sub_18E233C70();
    v60 = sub_18E44E80C();
    sub_18E44EE2C();
    sub_18E20933C();
    sub_18E221E1C();
    sub_18E1E8CD8();
    if (v61)
    {
      v62 = sub_18E1C5F74();
      sub_18E1CA69C();
      v174[0] = swift_slowAlloc();
      *v62 = 136315138;
      v63 = sub_18E1DD3C0(&v173);
      v65 = sub_18E1C9624(v63, v43, v64);
      sub_18E200E1C(v65);
      sub_18E1E2FD0(&dword_18E1C1000, v60, v66, v161);
      sub_18E221850();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E220A1C();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    else
    {

      v46 = v166;
    }

    sub_18E1D45C8();
    v67 = sub_18E44EA8C();
    v177 = v162;
    v178 = v57;
    sub_18E1C8480();
    sub_18E1E8920(&a11);
    v175 = v68;
    v176 = v163;
    _Block_copy(v174);
    sub_18E1CC324();

    v69 = *v164;
    v70 = sub_18E1CD984();
    sub_18E232F2C(v70, v71);
    _Block_release(v44);

    sub_18E1E6580();
    v24 = *v46;
    if (!v24)
    {
      break;
    }

    sub_18E220B64();
    v72 = v24;
    v73 = sub_18E223A9C();
    sub_18E280314(v73, v74);
    sub_18E1E3C94();
    if ((v165 & 1) == 0)
    {
      if (qword_1ED6A9020 == -1)
      {
LABEL_27:
        sub_18E1CF740(v75, qword_1ED6A9028);
        sub_18E1D4CFC();
        swift_beginAccess();
        sub_18E1C2AA0(&v170);
        sub_18E1D5EF4();
        v107();
        v108 = v24;
        v109 = sub_18E44E80C();
        sub_18E44EE0C();
        sub_18E232CE0();
        if (sub_18E1E1A10())
        {
          sub_18E1CA69C();
          swift_slowAlloc();
          sub_18E20809C();
          swift_slowAlloc();
          v110 = sub_18E1CADF8();
          sub_18E1CFFE8(v110);
          sub_18E1CDA38(v169);
          sub_18E1D4CFC();
          swift_beginAccess();
          sub_18E22413C();
          v111 = sub_18E1D84BC();
          sub_18E1C9624(v111, &qword_1EABE9328, v112);
          sub_18E1C97B8();
          sub_18E1E1520();
          v113 = v24;
          v114 = _swift_stdlib_bridgeErrorToNSError();
          sub_18E1C5240(v114);
          sub_18E1C8D90();
          _os_log_impl(v115, v116, v117, v118, v119, 0x20u);
          sub_18E32F548(v43);
          sub_18E221CE4();
          sub_18E1E2C2C();
          sub_18E1C6164();
          MEMORY[0x193ACD400]();

          sub_18E1D4CEC();
          v120 = sub_18E1C69C4();
          v121(v120);
        }

        else
        {

          sub_18E1C2AA0(v171);
          sub_18E1E1028();
          v122();
        }

        sub_18E1E383C();
        sub_18E1E2660();
        swift_willThrow();

        sub_18E1CD984();
        swift_unknownObjectRelease_n();
LABEL_38:

        sub_18E224ED8();
        goto LABEL_3;
      }

LABEL_48:
      sub_18E1C6A1C();
      v75 = swift_once();
      goto LABEL_27;
    }

    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    v76 = sub_18E1C9090();
    sub_18E1C95AC(v76, qword_1ED6A9028);
    sub_18E1C89B8(&v170);
    sub_18E1D42A4();
    v77();
    v78 = v24;
    v41 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E232CE0();
    if (sub_18E1E1A10())
    {
      sub_18E1CA69C();
      v26 = swift_slowAlloc();
      sub_18E20809C();
      v79 = swift_slowAlloc();
      sub_18E1CA69C();
      v80 = swift_slowAlloc();
      sub_18E240E98(v80);
      sub_18E1D7ED0(v169);
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E1E316C();
      v81 = sub_18E24707C();
      sub_18E1C9624(v81, v27, v82);
      sub_18E44D3C4();
      *(v26 + 4) = &qword_1EABE9328;
      sub_18E1E6838();
      v83 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v83;
      *v79 = v83;
      sub_18E1C793C();
      sub_18E24095C(&dword_18E1C1000, v41, v57, "%s sync: connection error during call: %@, num connection attempts: %lu");
      sub_18E32F548(v79);
      sub_18E220A1C();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1E1D6C();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      swift_unknownObjectRelease();
      v84 = sub_18E1C6838(v171);
      v85(v84);
      sub_18E20067C();

      sub_18E1CF994();

      sub_18E1E26D0();
    }

    else
    {

      sub_18E1DD3C0(&a13);
      swift_unknownObjectRelease();
      v86 = sub_18E1C6838(v171);
      v87(v86);
      sub_18E20067C();

      sub_18E1CF994();
    }

    swift_unknownObjectRelease();
    v43 = v168;
    sub_18E2168E4();
    v44 = v167;
    sub_18E1E3760();
    sub_18E1E3B68();
  }

  sub_18E223428();
  sub_18E1D4CFC();
  swift_beginAccess();
  v90 = v44[2];
  if (v90)
  {
    v91 = v90;
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      v91 = swift_once();
    }

    sub_18E1CB0FC(v91, qword_1ED6A9028);
    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E1E8A2C(&v170);
    v92 = sub_18E1D6224();
    v93(v92);
    v94 = v90;
    v95 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E232CE0();
    if (sub_18E1E1A10())
    {
      sub_18E1CA69C();
      swift_slowAlloc();
      sub_18E20809C();
      swift_slowAlloc();
      v96 = sub_18E1CADF8();
      sub_18E1E18E4(v96);
      sub_18E1D03DC(v169);
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E22413C();
      v97 = sub_18E1E3D6C();
      sub_18E1C9624(v97, &qword_1EABE9328, v98);
      sub_18E1C97B8();
      sub_18E1E3098();
      v99 = _swift_stdlib_bridgeErrorToNSError();
      sub_18E1C5240(v99);
      sub_18E1C8D90();
      _os_log_impl(v100, v101, v102, v103, v104, 0x20u);
      sub_18E32F548(v43);
      sub_18E221CE4();
      sub_18E1E2C2C();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      sub_18E1D4CEC();
      v105 = sub_18E1C69C4();
      v106(v105);
      sub_18E1E383C();
    }

    else
    {

      v142 = sub_18E1C8C3C(v171);
      v143(v142);
      sub_18E1D8054();
    }

    swift_willThrow();

    sub_18E1CD984();
    swift_unknownObjectRelease_n();
    goto LABEL_38;
  }

  sub_18E1D4CFC();
  v123 = swift_beginAccess();
  v124 = *(v27 + 16);
  if (v124)
  {
    v125 = v124;
    sub_18E1D49FC();
    if (!v127)
    {
      sub_18E1C6A1C();
      v126 = swift_once();
    }

    sub_18E1CB0FC(v126, qword_1ED6A9028);
    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E1E8A2C(&v170);
    v128 = sub_18E1D6224();
    v129(v128);
    v130 = sub_18E44E80C();
    v131 = sub_18E44EDFC();
    if (sub_18E1E115C(v131))
    {
      sub_18E1C9700();
      swift_slowAlloc();
      sub_18E1CA69C();
      v132 = swift_slowAlloc();
      sub_18E1E2408(v132);
      sub_18E224444(4.8151e-34);
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E223510();
      v133 = sub_18E1D5C74();
      sub_18E1C9624(v133, &qword_1EABE9328, v134);
      sub_18E1D5FEC();
      sub_18E1C884C();
      sub_18E1C8D90();
      _os_log_impl(v135, v136, v137, v138, v139, 0x16u);
      sub_18E1E1D6C();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      sub_18E224ED8();
      swift_unknownObjectRelease();
      sub_18E1D4CEC();
      v140 = sub_18E1C69C4();
      v141(v140);
      sub_18E1E6770();
      sub_18E20067C();

      sub_18E1CF994();
    }

    else
    {

      sub_18E224ED8();
      sub_18E25E204(&a13);
      swift_unknownObjectRelease();
      v155 = sub_18E1C8C3C(v171);
      v156(v155);
      sub_18E1E6770();
      sub_18E20067C();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      v123 = swift_once();
    }

    sub_18E1C8658(v123, qword_1ED6A9028);
    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E1E8A2C(&v170);
    v144 = sub_18E212088();
    v145(v144);
    v146 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E1E3E30();
    if (os_log_type_enabled(v146, v147))
    {
      sub_18E1C9700();
      swift_slowAlloc();
      sub_18E1CA69C();
      v148 = swift_slowAlloc();
      sub_18E221F1C(v148);
      sub_18E243124(4.8151e-34);
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E22413C();
      v149 = sub_18E1D5C74();
      sub_18E1C9624(v149, &qword_1EABE9328, v150);
      sub_18E1C97B8();
      sub_18E1C8F4C();
      sub_18E1D4494(&dword_18E1C1000, v151, v152, "%s sync: throwing neither result or error returned, num connection attempts:%lu");
      sub_18E1CF2EC();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      v153 = sub_18E1C614C(v171);
      v154(v153);
      sub_18E1D62D8();
    }

    else
    {

      v157 = sub_18E1C614C(v171);
      v158(v157);
      sub_18E1E84AC();
    }

    sub_18E2885F0();
    v159 = sub_18E1C8558();
    sub_18E1E1254(v159, v160);

    sub_18E1CD984();
    swift_unknownObjectRelease_n();

    sub_18E224ED8();
  }

LABEL_3:
  sub_18E2245CC();
  sub_18E1E6AEC();
}

void sub_18E443480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E1CFB3C();
  a19 = v25;
  a20 = v26;
  isa = v27;
  v29 = sub_18E44E83C();
  v30 = sub_18E1C5E70(v29, &a13);
  v155 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_18E1C86C0();
  sub_18E1CD80C();
  MEMORY[0x1EEE9AC00](v34);
  sub_18E1C5738();
  MEMORY[0x1EEE9AC00](v35);
  sub_18E220544();
  MEMORY[0x1EEE9AC00](v36);
  sub_18E1CA6A8();
  MEMORY[0x1EEE9AC00](v37);
  sub_18E1CF7DC();
  sub_18E216B74();
  v38 = v20;
  if (v20)
  {
    goto LABEL_2;
  }

  v151 = isa;
  v39 = *(v21 + 16);
  if (!v39)
  {
    sub_18E2885F0();
    v64 = sub_18E1C8558();
    sub_18E1CBDCC(v64, v65);
LABEL_2:
    os_unfair_lock_unlock((v21 + 24));
    goto LABEL_3;
  }

  v148 = v23;
  v152 = v39;
  os_unfair_lock_unlock((v21 + 24));
  sub_18E1E2078();
  v150 = v41;
  v42 = (v155 + 8);
  v149 = (v155 + 8);
  while (1)
  {
    v156 = v40 + 1;
    if (v40 == -1)
    {
      __break(1u);
      goto LABEL_39;
    }

    v153 = v40;
    sub_18E1CC494();
    v43 = swift_allocObject();
    v44 = sub_18E1CFF44(v43);
    v161 = sub_18E44D310;
    v162 = v44;
    v157 = MEMORY[0x1E69E9820];
    v158 = 1107296256;
    v159 = sub_18E448558;
    v160 = &unk_1F018B5D8;
    _Block_copy(&v157);
    sub_18E223FB8();

    v45 = [v152 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(isa);
    sub_18E1CC494();
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    sub_18E1CC494();
    v47 = swift_allocObject();
    sub_18E223C24(v47);
    sub_18E1CD8AC();
    v48 = swift_allocObject();
    *(v48 + 16) = v24;
    *(v48 + 24) = v46;
    sub_18E1CD8AC();
    v49 = swift_allocObject();
    *(v49 + 16) = sub_18E44D248;
    *(v49 + 24) = v48;
    v161 = sub_18E1E0F74;
    v162 = v49;
    v157 = MEMORY[0x1E69E9820];
    v158 = 1107296256;
    v159 = sub_18E2891B0;
    v160 = &unk_1F018B650;
    v50 = _Block_copy(&v157);
    swift_unknownObjectRetain();

    [v45 enableTestResourcesWith_];
    _Block_release(v50);

    sub_18E1D4CFC();
    swift_beginAccess();
    isa = v38->isa;
    if (!v38->isa)
    {
      break;
    }

    v51 = isa;
    v52 = isa;
    sub_18E280314(isa, v156);
    sub_18E1E63E8();
    if ((v151 & 1) == 0)
    {
      if (qword_1ED6A9020 == -1)
      {
LABEL_23:
        v91 = sub_18E25E204(&a13);
        sub_18E1C95EC(v91, v92);
        sub_18E1D4CFC();
        swift_beginAccess();
        sub_18E1E8A2C(&v160);
        sub_18E1E19C0();
        v93();
        v94 = isa;
        v95 = sub_18E44E80C();
        v96 = sub_18E44EE0C();

        if (os_log_type_enabled(v95, v96))
        {
          sub_18E1CA69C();
          v97 = swift_slowAlloc();
          sub_18E20809C();
          v98 = swift_slowAlloc();
          sub_18E1CA69C();
          swift_slowAlloc();
          LODWORD(v99) = sub_18E1D5E20().n128_u32[0];
          sub_18E1E2E5C(v99);
          sub_18E1D4CFC();
          swift_beginAccess();
          v100 = off_1EABE9330;

          v101 = sub_18E1D84BC();
          sub_18E1C9624(v101, v100, v102);

          sub_18E239C9C();
          v103 = _swift_stdlib_bridgeErrorToNSError();
          *(v97 + 14) = v103;
          *v98 = v103;
          *(v97 + 22) = 2048;
          sub_18E1E65F8();
          *(v97 + 24) = v104;
          sub_18E1E3200();
          _os_log_impl(v105, v106, v107, v108, v109, 0x20u);
          sub_18E32F548(v98);
          sub_18E1C6164();
          MEMORY[0x193ACD400]();
          sub_18E1E1D6C();
          sub_18E1C6164();
          MEMORY[0x193ACD400]();
        }

        v110 = sub_18E1C89B8(&v157);
        v111(v110);
        swift_willThrow();
        sub_18E1D002C();

        sub_18E1E237C();
        swift_unknownObjectRelease_n();

        sub_18E2452C0();

        goto LABEL_3;
      }

LABEL_39:
      sub_18E1C6A1C();
      swift_once();
      goto LABEL_23;
    }

    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      swift_once();
    }

    sub_18E1C95AC(v154, qword_1ED6A9028);
    sub_18E1E8A2C(&v160);
    sub_18E1D5EF4();
    v53();
    v54 = isa;
    v38 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E1E3CD0();
    if (sub_18E2217FC())
    {
      sub_18E1CA69C();
      v55 = swift_slowAlloc();
      sub_18E20809C();
      v56 = swift_slowAlloc();
      sub_18E1CA69C();
      v157 = swift_slowAlloc();
      *v55 = sub_18E1D5E20().n128_u32[0];
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E44D398();
      v57 = sub_18E24707C();
      sub_18E1C9624(v57, v150, v58);
      sub_18E1D0444();

      sub_18E1E34C4();
      v59 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 14) = v59;
      sub_18E1D0074(v59);
      *(v55 + 22) = v60;
      sub_18E1E65F8();
      *(v55 + 24) = v61;
      sub_18E243EFC(&dword_18E1C1000, v38, v24, "%s sync: connection error during call: %@, num connection attempts: %lu");
      sub_18E32F548(v56);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1CFCC0();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      v42 = v149;
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      sub_18E25E204(&v158);
      swift_unknownObjectRelease();

      (*v149)(v22);
    }

    else
    {

      swift_unknownObjectRelease();
      v62 = *v42;
      sub_18E21D0EC();
      v63();
    }

    sub_18E1D002C();

    sub_18E1E29C4();

    sub_18E1CF994();

    swift_unknownObjectRelease();
    v40 = v153 + 1;
  }

  sub_18E1D4CFC();
  swift_beginAccess();
  v66 = *(v46 + 16);
  if (v66)
  {
    v67 = v66;
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      swift_once();
    }

    sub_18E1CFA38();
    sub_18E1CBEB4(0, v68);
    sub_18E1E8A2C(&v160);
    v69(v148, v38, 0);
    v70 = v66;
    v71 = sub_18E44E80C();
    v72 = sub_18E44EE0C();

    if (os_log_type_enabled(v71, v72))
    {
      sub_18E1CA69C();
      v73 = swift_slowAlloc();
      sub_18E20809C();
      v74 = swift_slowAlloc();
      sub_18E1CA69C();
      swift_slowAlloc();
      LODWORD(v75) = sub_18E1D5E20().n128_u32[0];
      sub_18E1E8ADC(v75);
      sub_18E1D4CFC();
      swift_beginAccess();
      v76 = off_1EABE9330;

      v77 = sub_18E1E3D6C();
      v79 = sub_18E1C9624(v77, v76, v78);

      *(v73 + 4) = v79;
      *(v73 + 12) = 2112;
      v80 = v66;
      v81 = _swift_stdlib_bridgeErrorToNSError();
      *(v73 + 14) = v81;
      *v74 = v81;
      *(v73 + 22) = 2048;
      sub_18E1E65F8();
      *(v73 + 24) = v82;
      sub_18E1D5FA8();
      _os_log_impl(v83, v84, v85, v86, v87, 0x20u);
      sub_18E32F548(v74);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1E1D6C();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    v88 = sub_18E1C89B8(&v157);
    v89(v88);
    swift_willThrow();

    sub_18E1E237C();
    swift_unknownObjectRelease_n();

    sub_18E2452C0();
  }

  else
  {
    sub_18E1D4CFC();
    v113 = swift_beginAccess();
    v114 = *(v24 + 16);
    if (v114)
    {
      v115 = v114;
      sub_18E1D49FC();
      if (!v116)
      {
        sub_18E1C6A1C();
        swift_once();
      }

      sub_18E1CFA38();
      sub_18E1CA644(0, v117);
      sub_18E1E8A2C(&v160);
      v118 = sub_18E1E6718();
      v119(v118);
      v120 = sub_18E44E80C();
      sub_18E44EDFC();
      sub_18E1E3E30();
      if (os_log_type_enabled(v120, v121))
      {
        sub_18E1C9700();
        v122 = swift_slowAlloc();
        sub_18E1CA69C();
        v123 = swift_slowAlloc();
        sub_18E221F1C(v123);
        *v122 = 136315394;
        sub_18E1D4CFC();
        swift_beginAccess();
        sub_18E44D398();
        v124 = sub_18E1D5C74();
        sub_18E1C9624(v124, v150, v125);
        sub_18E1D0444();

        sub_18E1E39BC();
        sub_18E1E65F8();
        *(v122 + 14) = v126;
        sub_18E1DD2E8(&dword_18E1C1000, v127, v128, "%s sync: method returned non-nil result, num connection attempts:%lu");
        sub_18E1CF2EC();
        sub_18E1C6164();
        MEMORY[0x193ACD400]();

        sub_18E2452C0();
        sub_18E25E204(&v158);
        swift_unknownObjectRelease();
        v130 = *v42;
        sub_18E21D0EC();
        v131();
        sub_18E1D002C();

        sub_18E1E29C4();
      }

      else
      {

        sub_18E2452C0();
        sub_18E25E204(&v158);
        swift_unknownObjectRelease();
        v143 = *v42;
        sub_18E21D0EC();
        v144();
        sub_18E1D002C();
      }

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1ED6A9020 != -1)
      {
        sub_18E1C6A1C();
        v113 = swift_once();
      }

      sub_18E1C6604(v113, qword_1ED6A9028);
      sub_18E1E8A2C(&v160);
      sub_18E1E19C0();
      v132();
      v133 = sub_18E44E80C();
      v134 = sub_18E44EE0C();
      if (sub_18E207A34(v134))
      {
        sub_18E1C9700();
        swift_slowAlloc();
        sub_18E1CA69C();
        v135 = swift_slowAlloc();
        sub_18E2200C8(v135);
        sub_18E243124(4.8151e-34);
        sub_18E1D4CFC();
        swift_beginAccess();
        v136 = off_1EABE9330;

        v137 = sub_18E1D5C74();
        sub_18E1C9624(v137, v136, v138);
        sub_18E1E6B80();

        sub_18E1E1764();
        sub_18E220934(&a14);
        sub_18E1EA5B8(&dword_18E1C1000, v139, v134, "%s sync: throwing neither result or error returned, num connection attempts:%lu");
        sub_18E1CFCC0();
        sub_18E1C6164();
        MEMORY[0x193ACD400]();
        sub_18E1C6164();
        MEMORY[0x193ACD400]();
      }

      v140 = *v42;
      sub_18E21D0EC();
      v141();
      sub_18E2885F0();
      v145 = sub_18E1C8558();
      sub_18E1E1254(v145, v146);
      sub_18E1D002C();

      sub_18E1E237C();
      swift_unknownObjectRelease_n();

      sub_18E2452C0();
    }
  }

LABEL_3:
  sub_18E2245CC();
  sub_18E1E6AEC();
}

void sub_18E444394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E1CFB3C();
  a19 = v25;
  a20 = v26;
  v34 = sub_18E1FED68(v27, v28, v29, v30, v31, v32, v33);
  v35 = sub_18E1C5E70(v34, &a14);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_18E1C86C0();
  sub_18E1CD80C();
  MEMORY[0x1EEE9AC00](v38);
  sub_18E1C5738();
  MEMORY[0x1EEE9AC00](v39);
  sub_18E220544();
  MEMORY[0x1EEE9AC00](v40);
  sub_18E1CA6A8();
  MEMORY[0x1EEE9AC00](v41);
  sub_18E1CF7DC();
  sub_18E216B74();
  LOBYTE(v42) = v20;
  if (v20)
  {
    goto LABEL_2;
  }

  sub_18E1CF630();
  if (!v43)
  {
    sub_18E2885F0();
    v75 = sub_18E1C8558();
    sub_18E1CBDCC(v75, v76);
LABEL_2:
    os_unfair_lock_unlock((v23 + 24));
    goto LABEL_3;
  }

  v44 = sub_18E1CF834(v43);
  sub_18E223B94(v44);
  os_unfair_lock_unlock((v23 + 24));
  v45 = 0;
  sub_18E235354();
  sub_18E1E10B8(v46);
  v47.n128_u64[0] = 136315650;
  sub_18E1E334C(v47);
  sub_18E1D43CC();
  sub_18E44D3B0();
  while (1)
  {
    if (v45 == -1)
    {
      __break(1u);
      goto LABEL_43;
    }

    sub_18E1CC494();
    v48 = swift_allocObject();
    v49 = sub_18E1CFF44(v48);
    v167[4] = v22;
    v167[5] = v49;
    sub_18E1C8480();
    sub_18E1C80EC(&v166);
    v167[2] = v50;
    v167[3] = v21;
    _Block_copy(v167);
    sub_18E223FB8();

    v51 = sub_18E1E237C();
    v22 = [v51 v52];
    _Block_release(v21);
    sub_18E1CC494();
    v53 = swift_allocObject();
    sub_18E223C24(v53);
    sub_18E1CC494();
    v54 = swift_allocObject();
    sub_18E1D1A18(v54);
    sub_18E1CD8AC();
    v21 = swift_allocObject();
    v21[2] = &qword_1F018ABF0;
    v21[3] = v24;
    swift_unknownObjectRetain();

    sub_18E2452C0();
    v55();

    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E44D380();
    if (!v21)
    {
      break;
    }

    v56 = v21;
    v57 = v21;
    sub_18E1E3B68();
    sub_18E280314(v58, v59);
    sub_18E1E63E8();
    if ((v42 & 1) == 0)
    {
      sub_18E1D029C();
      if (!v100)
      {
LABEL_43:
        sub_18E1C6A1C();
        v99 = swift_once();
      }

      sub_18E1C8658(v99, qword_1ED6A9028);
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E1C5904();
      v101 = sub_18E1E8838();
      v102(v101);
      v103 = v21;
      v104 = sub_18E44E80C();
      v105 = sub_18E44EE0C();

      if (os_log_type_enabled(v104, v105))
      {
        sub_18E1CA69C();
        v106 = swift_slowAlloc();
        sub_18E20809C();
        v107 = swift_slowAlloc();
        sub_18E223724(v107);
        sub_18E1CA69C();
        v108 = swift_slowAlloc();
        sub_18E223C94(v108);
        LODWORD(v109) = sub_18E1E2F8C().n128_u32[0];
        sub_18E1E2E5C(v109);
        sub_18E223F48();
        sub_18E1D4CFC();
        swift_beginAccess();
        sub_18E228810();
        v110 = sub_18E1D84BC();
        sub_18E1C9624(v110, v22, v111);
        sub_18E1CEA58();
        sub_18E239C9C();
        v112 = _swift_stdlib_bridgeErrorToNSError();
        *(v106 + 14) = v112;
        sub_18E1FF324(v112, &a10);
        *(v106 + 22) = v113;
        sub_18E232E60();
        *(v106 + 24) = v114;
        sub_18E1E3200();
        _os_log_impl(v115, v116, v117, v118, v119, 0x20u);
        sub_18E32F548(v23);
        sub_18E1C6164();
        MEMORY[0x193ACD400]();
        sub_18E1CF2EC();
        sub_18E1C6164();
        MEMORY[0x193ACD400]();

        v120 = sub_18E1CF4CC();
      }

      else
      {

        v120 = sub_18E1E3A7C();
      }

      v121(v120);
      swift_willThrow();
      sub_18E1CF42C();
      sub_18E2352D0();
      swift_unknownObjectRelease_n();

      sub_18E1CF238();

      sub_18E1CEB50();

      goto LABEL_3;
    }

    if (qword_1ED6A9020 != -1)
    {
      swift_once();
    }

    sub_18E207B14();
    sub_18E1C95AC(v45, qword_1ED6A9028);
    sub_18E1C5904();
    v24 = v162;
    sub_18E2244C4();
    v60();
    v61 = v21;
    v42 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E1E3CD0();
    if (sub_18E2217FC())
    {
      sub_18E1CA69C();
      swift_slowAlloc();
      sub_18E1E7BA8();
      v63 = v62;
      sub_18E20809C();
      v64 = swift_slowAlloc();
      sub_18E1CA69C();
      v22 = swift_slowAlloc();
      v167[0] = v22;
      *v63 = sub_18E1E2F8C().n128_u32[0];
      sub_18E223F48();
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E44D398();
      v65 = sub_18E24707C();
      sub_18E1C9624(v65, v45, v66);
      sub_18E224020();
      sub_18E1D0444();

      sub_18E1E34C4();
      v67 = _swift_stdlib_bridgeErrorToNSError();
      *(v63 + 14) = v67;
      sub_18E1D0074(v67);
      *(v63 + 22) = v68;
      sub_18E232E60();
      *(v63 + 24) = v69;
      sub_18E243EFC(&dword_18E1C1000, v42, v162, "%s sync: connection error during call: %@, num connection attempts: %lu");
      sub_18E32F548(v64);
      v23 = v161;
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1CFCC0();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      sub_18E25E204(&a12);
      swift_unknownObjectRelease();

      v70 = sub_18E240534();
      v71(v70);
      sub_18E1CF42C();
      sub_18E1D002C();

      sub_18E1CF238();
    }

    else
    {

      sub_18E25E204(&a12);
      swift_unknownObjectRelease();
      v72 = *v23;
      v73 = sub_18E1CF4CC();
      v74(v73);

      sub_18E1D002C();
    }

    swift_unknownObjectRelease();
    sub_18E223428();
    ++v45;
    sub_18E1D43CC();
  }

  sub_18E224020();
  sub_18E1D4CFC();
  swift_beginAccess();
  v77 = v24[2];
  if (v77)
  {
    sub_18E1E7BA8();
    v78 = v77;
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      swift_once();
    }

    sub_18E1CBEB4(v163, qword_1ED6A9028);
    sub_18E1C5904();
    v79 = sub_18E1E6718();
    v80(v79);
    v81 = v77;
    v82 = sub_18E44E80C();
    v83 = sub_18E44EE0C();

    if (os_log_type_enabled(v82, v83))
    {
      sub_18E1CA69C();
      v84 = swift_slowAlloc();
      sub_18E20809C();
      swift_slowAlloc();
      sub_18E1CA69C();
      v85 = swift_slowAlloc();
      sub_18E223C94(v85);
      LODWORD(v86) = sub_18E1E2F8C().n128_u32[0];
      sub_18E1E8ADC(v86);
      sub_18E223F48();
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E228810();
      v87 = sub_18E1E3D6C();
      sub_18E1C9624(v87, v22, v88);
      sub_18E1CEA58();
      sub_18E1E22D0();
      v89 = _swift_stdlib_bridgeErrorToNSError();
      *(v84 + 14) = v89;
      sub_18E1FF324(v89, &a9);
      *(v84 + 22) = v90;
      sub_18E232E60();
      *(v84 + 24) = v91;
      sub_18E1E1F74(&a10);
      sub_18E1D5FA8();
      _os_log_impl(v92, v93, v94, v95, v96, 0x20u);
      sub_18E32F548(v23);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1CF2EC();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    else
    {

      v138 = *v23;
    }

    v97 = sub_18E1D63DC();
    v98(v97);
    swift_willThrow();
    sub_18E1CF42C();
    sub_18E2352D0();
    swift_unknownObjectRelease_n();

    sub_18E1CF238();

    sub_18E1CEB50();
  }

  else
  {
    sub_18E1D4CFC();
    v123 = swift_beginAccess();
    if (off_1F018AC00)
    {
      v124 = off_1F018AC00;
      sub_18E1D49FC();
      if (!v100)
      {
        sub_18E1C6A1C();
        swift_once();
      }

      sub_18E1CA644(v163, qword_1ED6A9028);
      sub_18E1C5904();
      v125 = sub_18E1E6718();
      v126(v125);
      v127 = sub_18E44E80C();
      sub_18E44EDFC();
      sub_18E1E3E30();
      if (os_log_type_enabled(v127, v128))
      {
        sub_18E1C9700();
        v129 = swift_slowAlloc();
        sub_18E1CA69C();
        v130 = swift_slowAlloc();
        sub_18E221F1C(v130);
        sub_18E1E2ABC(4.8151e-34);
        sub_18E1D4CFC();
        swift_beginAccess();
        sub_18E44D398();
        v131 = sub_18E1D5C74();
        sub_18E1C9624(v131, v45, v132);
        sub_18E1D0444();

        sub_18E1E39BC();
        *(v129 + 14) = v24;
        sub_18E1DD2E8(&dword_18E1C1000, v133, v134, "%s sync: method returned non-nil result, num connection attempts:%lu");
        sub_18E1CF2EC();
        sub_18E1C6164();
        MEMORY[0x193ACD400]();

        sub_18E1CEB50();
        sub_18E25E204(&a12);
        swift_unknownObjectRelease();
        sub_18E1E8A2C(&v164);
        v136 = sub_18E1C69C4();
        v137(v136);
        sub_18E1CF42C();
        sub_18E1D002C();
      }

      else
      {

        sub_18E1CEB50();
        sub_18E25E204(&a12);
        swift_unknownObjectRelease();
        v153 = *v23;
        v154 = sub_18E1D63DC();
        v155(v154);
        sub_18E1CF42C();
      }

      swift_unknownObjectRelease();
      sub_18E240AB4();
    }

    else
    {
      if (qword_1ED6A9020 != -1)
      {
        sub_18E1C6A1C();
        v123 = swift_once();
      }

      sub_18E1C8658(v123, qword_1ED6A9028);
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E1C5904();
      sub_18E1E19C0();
      v140();
      v141 = sub_18E44E80C();
      v142 = sub_18E44EE0C();
      if (sub_18E207A34(v142))
      {
        sub_18E1C9700();
        swift_slowAlloc();
        sub_18E1CA69C();
        v143 = swift_slowAlloc();
        sub_18E2200C8(v143);
        sub_18E243124(4.8151e-34);
        sub_18E223F48();
        sub_18E1D4CFC();
        swift_beginAccess();
        sub_18E1CFDD4();
        v144 = sub_18E1D5C74();
        sub_18E1C9624(v144, v23, v145);
        sub_18E1E7BA8();
        sub_18E1E6B80();

        sub_18E1E1764();
        sub_18E220934(&v165);
        sub_18E1E1F74(&a13);
        sub_18E1EA5B8(v146, v147, v148, v149);
        sub_18E1CFCC0();
        sub_18E1C6164();
        MEMORY[0x193ACD400]();
        sub_18E1C6164();
        MEMORY[0x193ACD400]();

        v150 = *v24;
        sub_18E1D025C();
        v151();
      }

      else
      {

        v156 = *v23;
        sub_18E1D025C();
        v157();
      }

      sub_18E2885F0();
      v158 = sub_18E1C8558();
      sub_18E1E1254(v158, v159);
      sub_18E1CF42C();
      sub_18E2352D0();
      swift_unknownObjectRelease_n();

      sub_18E1CEB50();
    }
  }

LABEL_3:
  sub_18E2245CC();
  sub_18E1E6AEC();
}

void sub_18E444F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E1CFB3C();
  a19 = v24;
  a20 = v25;
  v26 = v20;
  v28 = v27;
  v30 = v29;
  v31 = sub_18E44E83C();
  v32 = sub_18E1C5E70(v31, &a14);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_18E1C86C0();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v37);
  sub_18E1E6498();
  MEMORY[0x1EEE9AC00](v38);
  sub_18E220544();
  MEMORY[0x1EEE9AC00](v39);
  sub_18E1CA6A8();
  MEMORY[0x1EEE9AC00](v40);
  v42 = v160 - v41;
  v43 = *(v30 + 16);
  os_unfair_lock_lock(v43 + 6);
  sub_18E1CEB5C(v43 + 2);
  if (v20)
  {
    goto LABEL_2;
  }

  v165 = v42;
  v169 = v30;
  v160[3] = v23;
  v44 = *(v43 + 2);
  if (!v44)
  {
    sub_18E2885F0();
    sub_18E1C8558();
    *v81 = 0;
    swift_willThrow();
LABEL_2:
    os_unfair_lock_unlock(v43 + 6);
    goto LABEL_3;
  }

  v160[2] = v22;
  v160[0] = v21;
  v160[1] = 0;
  sub_18E216810(v44, &a9);
  sub_18E1E2078();
  v166 = v46;
  v168 = v34 + 16;
  v47 = (v34 + 8);
  *&v48 = 136315650;
  v162 = v48;
  v161 = (v34 + 8);
  v167 = v28;
  while (1)
  {
    v49 = v45 + 1;
    if (v45 == -1)
    {
      __break(1u);
LABEL_43:
      sub_18E1C6A1C();
      v62 = swift_once();
LABEL_22:
      sub_18E1C8658(v62, qword_1ED6A9028);
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E1E8A2C(&v180);
      v106 = sub_18E1E8838();
      v107(v106);
      v108 = v26;
      v109 = sub_18E44E80C();
      v110 = sub_18E44EE0C();

      if (os_log_type_enabled(v109, v110))
      {
        sub_18E1CA69C();
        v111 = swift_slowAlloc();
        sub_18E20809C();
        v169 = swift_slowAlloc();
        sub_18E1CA69C();
        v112 = swift_slowAlloc();
        v176 = sub_18E223724(v112);
        LODWORD(v113) = sub_18E1D5E20().n128_u32[0];
        sub_18E1E2E5C(v113);
        v164 = v49;
        sub_18E1D4CFC();
        swift_beginAccess();
        sub_18E228810();
        v114 = sub_18E1D84BC();
        sub_18E1C9624(v114, v43, v115);
        sub_18E1CEA58();
        sub_18E239C9C();
        v116 = _swift_stdlib_bridgeErrorToNSError();
        *(v111 + 14) = v116;
        sub_18E1FF324(v116, &v181);
        *(v111 + 22) = v117;
        sub_18E1CEB50();
        *(v111 + 24) = v118;
        sub_18E1E3200();
        _os_log_impl(v119, v120, v121, v122, v123, 0x20u);
        sub_18E32F548(v47);
        sub_18E1C6164();
        MEMORY[0x193ACD400]();
        sub_18E1CF2EC();
        sub_18E1C6164();
        MEMORY[0x193ACD400]();

        v124 = sub_18E1CF4CC();
      }

      else
      {

        v124 = sub_18E1E3A7C();
      }

      v125(v124);
      swift_willThrow();

      sub_18E2352D0();
      swift_unknownObjectRelease_n();
      sub_18E1CD984();

      sub_18E1E29C4();
LABEL_26:

      sub_18E1E85B4();
      goto LABEL_3;
    }

    v170 = v45;
    sub_18E1CC494();
    v50 = swift_allocObject();
    v50[2] = 0;
    v179[1] = sub_18E44D310;
    v180 = v50;
    sub_18E1C8480();
    sub_18E1C80EC(v179);
    v178[2] = v51;
    v179[0] = &unk_1F018B380;
    v52 = _Block_copy(v178);

    v53 = sub_18E20067C();
    v43 = [v53 v54];
    _Block_release(v52);
    sub_18E1CC494();
    v55 = swift_allocObject();
    *(v55 + 16) = 0;
    sub_18E1CC494();
    v56 = swift_allocObject();
    sub_18E1D1A18(v56);
    sub_18E1CD8AC();
    v57 = swift_allocObject();
    *(v57 + 16) = v42;
    *(v57 + 24) = v55;
    swift_unknownObjectRetain();
    v172 = v42;
    v58 = v167;

    v173 = v55;

    sub_18E27C978(v43, sub_18E44D248, v57);

    sub_18E1D4CFC();
    swift_beginAccess();
    v26 = v50[2];
    v171 = v50;
    if (!v26)
    {
      break;
    }

    v59 = v26;
    v60 = v26;
    v61 = sub_18E280314(v26, v49);

    if (!v61)
    {
      if (qword_1ED6A9020 == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_43;
    }

    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      swift_once();
    }

    v63 = sub_18E25E204(&a14);
    sub_18E1C95EC(v63, qword_1ED6A9028);
    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E1E8A2C(&v180);
    v64 = sub_18E1E8838();
    v65(v64);
    v66 = v26;
    v67 = sub_18E44E80C();
    sub_18E44EE0C();
    sub_18E1E3CD0();
    if (sub_18E2217FC())
    {
      sub_18E1CA69C();
      v68 = swift_slowAlloc();
      sub_18E20809C();
      v69 = swift_slowAlloc();
      sub_18E1CA69C();
      v70 = swift_slowAlloc();
      sub_18E240598(v70, &v177);
      *v68 = sub_18E1D5E20().n128_u32[0];
      v164 = v49;
      sub_18E1D4CFC();
      swift_beginAccess();
      v71 = off_1EABE9330;
      v163 = v43;

      v72 = sub_18E24707C();
      sub_18E1C9624(v72, v71, v73);
      sub_18E1D0444();
      v43 = v174;

      *(v68 + 4) = &qword_1EABE9328;
      *(v68 + 12) = 2112;
      v74 = v26;
      v75 = _swift_stdlib_bridgeErrorToNSError();
      *(v68 + 14) = v75;
      sub_18E1D0074(v75);
      *(v68 + 22) = v76;
      sub_18E1CEB50();
      *(v68 + 24) = v77;
      _os_log_impl(&dword_18E1C1000, v67, v50, "%s sync: connection error during call: %@, num connection attempts: %lu", v68, 0x20u);
      sub_18E32F548(v69);
      v47 = v161;
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1E9CA8();
      sub_18E1E2C2C();
      v78 = sub_18E1C86D0();
      MEMORY[0x193ACD400](v78);

      sub_18E1DD3C0(v178);
      swift_unknownObjectRelease();

      (*v47)(v42, v43);
    }

    else
    {

      swift_unknownObjectRelease();
      v79 = sub_18E1E3A7C();
      v80(v79);
    }

    sub_18E1D002C();

    sub_18E1CD984();

    sub_18E1E29C4();

    swift_unknownObjectRelease();
    v45 = v170 + 1;
  }

  v82 = v173;
  sub_18E1D4CFC();
  swift_beginAccess();
  v83 = *(v82 + 16);
  if (v83)
  {
    v84 = v83;
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      swift_once();
    }

    sub_18E1CBEB4(v174, qword_1ED6A9028);
    sub_18E1E8A2C(&v180);
    v85 = sub_18E1E6718();
    v86(v85);
    v87 = v83;
    v88 = sub_18E44E80C();
    v89 = sub_18E44EE0C();

    if (os_log_type_enabled(v88, v89))
    {
      sub_18E1CA69C();
      v90 = swift_slowAlloc();
      LODWORD(v169) = v89;
      v91 = v90;
      sub_18E20809C();
      v168 = swift_slowAlloc();
      sub_18E1CA69C();
      v92 = swift_slowAlloc();
      v175 = sub_18E223724(v92);
      LODWORD(v93) = sub_18E1D5E20().n128_u32[0];
      sub_18E1E8ADC(v93);
      v164 = v49;
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E228810();
      v94 = sub_18E1E3D6C();
      sub_18E1C9624(v94, v43, v95);
      sub_18E1CEA58();
      sub_18E1E22D0();
      v96 = _swift_stdlib_bridgeErrorToNSError();
      *(v91 + 14) = v96;
      sub_18E1FF324(v96, &v180);
      *(v91 + 22) = v97;
      sub_18E1CEB50();
      *(v91 + 24) = v98;
      sub_18E1E1F74(&v181);
      sub_18E1D5FA8();
      _os_log_impl(v99, v100, v101, v102, v103, 0x20u);
      sub_18E32F548(v47);
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1CF2EC();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
    }

    else
    {

      v141 = *v47;
    }

    v104 = sub_18E1D63DC();
    v105(v104);
    swift_willThrow();

    sub_18E2352D0();
    swift_unknownObjectRelease_n();
    sub_18E1CD984();

    sub_18E1E29C4();

    sub_18E1E85B4();
    goto LABEL_3;
  }

  v126 = v172;
  sub_18E1D4CFC();
  swift_beginAccess();
  v127 = *(v126 + 2);
  if (!v127)
  {
    if (qword_1ED6A9020 != -1)
    {
      sub_18E1C6A1C();
      swift_once();
    }

    v142 = v174;
    v143 = sub_18E1C95EC(v174, qword_1ED6A9028);
    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E1E8A2C(&v180);
    v144(v160[4], v143, v142);
    v145 = sub_18E44E80C();
    v146 = sub_18E44EE0C();
    if (sub_18E207A34(v146))
    {
      sub_18E1C9700();
      v147 = swift_slowAlloc();
      sub_18E1CA69C();
      v148 = swift_slowAlloc();
      v163 = v43;
      sub_18E2200C8(v148);
      sub_18E243124(4.8151e-34);
      sub_18E1D4CFC();
      swift_beginAccess();
      sub_18E1CFDD4();
      v149 = sub_18E1D5C74();
      sub_18E1C9624(v149, v47, v150);
      sub_18E1E6B80();

      sub_18E1E1764();
      *(v147 + 14) = v49;
      sub_18E1EA5B8(&dword_18E1C1000, v151, v146, "%s sync: throwing neither result or error returned, num connection attempts:%lu");
      sub_18E1CFCC0();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      v152 = *v50;
    }

    else
    {

      v157 = *v47;
    }

    v153 = sub_18E1CF4CC();
    v154(v153);
    sub_18E2885F0();
    v158 = sub_18E1C8558();
    sub_18E224E88(v158, v159);

    sub_18E2352D0();
    swift_unknownObjectRelease_n();
    sub_18E1CD984();

    goto LABEL_26;
  }

  v163 = v43;
  v128 = v127;
  sub_18E1D49FC();
  if (!v130)
  {
    sub_18E1C6A1C();
    v129 = swift_once();
  }

  sub_18E1CB0FC(v129, qword_1ED6A9028);
  sub_18E1D4CFC();
  swift_beginAccess();
  sub_18E1E8A2C(&v180);
  sub_18E1D42A4();
  v131();
  v132 = sub_18E44E80C();
  sub_18E44EDFC();
  sub_18E1E3E30();
  if (os_log_type_enabled(v132, v133))
  {
    sub_18E1C9700();
    v134 = swift_slowAlloc();
    sub_18E1CA69C();
    v135 = swift_slowAlloc();
    sub_18E221F1C(v135);
    sub_18E1E2ABC(4.8151e-34);
    sub_18E1D4CFC();
    swift_beginAccess();
    sub_18E44D398();
    v136 = sub_18E1D5C74();
    sub_18E1C9624(v136, v58, v137);
    sub_18E1D0444();

    sub_18E1E39BC();
    *(v134 + 14) = v50;
    sub_18E1DD2E8(&dword_18E1C1000, v138, v139, "%s sync: method returned non-nil result, num connection attempts:%lu");
    sub_18E1CF2EC();
    sub_18E1C6164();
    MEMORY[0x193ACD400]();

    sub_18E1E85B4();
    sub_18E25E204(v178);
    swift_unknownObjectRelease();
    sub_18E1C5BD8();
    sub_18E1E1028();
    v140();
    sub_18E1D002C();

    sub_18E1CD984();

    sub_18E1E29C4();
  }

  else
  {

    sub_18E1E85B4();
    sub_18E25E204(v178);
    swift_unknownObjectRelease();
    v155 = sub_18E1E3A7C();
    v156(v155);

    sub_18E1CD984();
  }

  swift_unknownObjectRelease();
LABEL_3:
  sub_18E1E19E4();
  sub_18E1E6AEC();
}

void XPCServiceClientConnection.call<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E1CFB3C();
  a19 = v24;
  a20 = v25;
  v212 = v22;
  v27 = v26;
  v202 = v28;
  v201 = v29;
  v31 = v30;
  v32 = *v21;
  v33 = sub_18E44EEFC();
  v34 = sub_18E1C5E70(v33, &a13);
  v191 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v190 = &v182 - v38;
  sub_18E1E3AE4();
  v188 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v42);
  sub_18E1C4EDC();
  v189 = v44 - v43;
  v45 = sub_18E44E83C();
  v46 = sub_18E1C5E70(v45, &v217);
  v210 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  sub_18E1C86C0();
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v50);
  sub_18E1C7ED4();
  MEMORY[0x1EEE9AC00](v51);
  sub_18E1C5738();
  MEMORY[0x1EEE9AC00](v52);
  sub_18E1E6498();
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v182 - v54;
  v56 = v21[2];
  v204 = v27;
  v213[2] = v27;
  v214 = v21;
  sub_18E1E9E14();
  v58 = *(v57 + 80);
  sub_18E1E9E14();
  v60 = *(v59 + 88);
  v61 = type metadata accessor for XPCServiceClientConnection.State();
  v62 = sub_18E1D121C(0, &qword_1EABE93B8, 0x1E696B0B8);
  v63 = v212;
  sub_18E224B04(sub_18E44D31C, v213, v56, v61, v62);
  if (!v63)
  {
    v196 = v21;
    v186 = v55;
    v184 = v23;
    v185 = v20;
    v182 = 0;
    v211 = v58;
    v200 = v218[0];
    sub_18E235354();
    v198 = v64;
    v197 = (v60 + 64);
    v65 = (v210 + 8);
    v199 = v60;
    v195 = v60 + 24;
    *&v66 = 136315650;
    v194 = v66;
    sub_18E220A1C();
    v193 = v65;
    v183 = v31;
    while (1)
    {
      v212 = v67 + 1;
      if (v67 == -1)
      {
        __break(1u);
        return;
      }

      v206 = v67;
      sub_18E1CC494();
      v68 = swift_allocObject();
      *(v68 + 16) = 0;
      v69 = (v68 + 16);
      v219[1] = sub_18E44D310;
      v219[2] = v68;
      v218[0] = MEMORY[0x1E69E9820];
      v218[1] = 1107296256;
      sub_18E1C80EC(&v220);
      v218[2] = v70;
      v219[0] = &unk_1F018AC08;
      v71 = _Block_copy(v218);
      v210 = v68;

      v72 = sub_18E1CF994();
      v74 = [v72 v73];
      _Block_release(v71);
      sub_18E1CC494();
      v75 = swift_allocObject();
      sub_18E1D1A18(v75);
      sub_18E1CD984();
      v76 = swift_allocBox();
      sub_18E207B14();
      sub_18E201DC8(v77, v78, v79, v31);
      v80 = swift_allocObject();
      v80[2] = v211;
      v80[3] = v31;
      v31 = v199;
      v80[4] = v199;
      v80[5] = v76;
      v80[6] = v60;
      swift_unknownObjectRetain();
      v209 = v76;

      v207 = v74;
      sub_18E1E15E8();
      v81();

      sub_18E1D4CFC();
      swift_beginAccess();
      v82 = *v69;
      v208 = v60;
      if (!v82)
      {
        break;
      }

      v83 = v82;
      v84 = v82;
      v85 = sub_18E447AD4(v82, v212);

      v86 = *v197;
      if (!v85)
      {
        v126 = v186;
        v127 = sub_18E1DD5F8();
        v128(v127);
        v129 = v82;
        v130 = sub_18E44E80C();
        v131 = sub_18E44EE0C();

        if (os_log_type_enabled(v130, v131))
        {
          sub_18E1CA69C();
          v132 = swift_slowAlloc();
          sub_18E20809C();
          v205 = swift_slowAlloc();
          sub_18E1CA69C();
          v133 = swift_slowAlloc();
          sub_18E240598(v133, &a16);
          sub_18E2208D8();
          v134 = sub_18E1DD5F8();
          v136 = v135(v134);
          v138 = v137;
          v139 = sub_18E1C9624(v136, v137, v218);

          *(v132 + 4) = v139;
          *(v132 + 12) = 2112;
          v140 = v82;
          v141 = _swift_stdlib_bridgeErrorToNSError();
          sub_18E1CFE74(v141);
          _os_log_impl(&dword_18E1C1000, v130, v131, "%s sync: connection error during call: %@ reached max num connection attempts: %lu", v132, 0x20u);
          sub_18E32F548(v138);
          v142 = sub_18E1C86D0();
          MEMORY[0x193ACD400](v142);
          v143 = sub_18E1DD3C0(&a16);
          sub_18E1C9934(v143);
          v144 = sub_18E1C86D0();
          MEMORY[0x193ACD400](v144);
          sub_18E1C6164();
          MEMORY[0x193ACD400]();

          (*v65)(v186, v55);
        }

        else
        {

          (*v65)(v126, v55);
        }

LABEL_16:
        swift_willThrow();

        swift_unknownObjectRelease_n();
        sub_18E234A08();

        sub_18E1E83C0();
        goto LABEL_26;
      }

      v87 = v205;
      v88 = sub_18E1DD5F8();
      v89(v88);
      v90 = v82;
      v91 = sub_18E44E80C();
      v60 = sub_18E44EE0C();

      if (os_log_type_enabled(v91, v60))
      {
        sub_18E1CA69C();
        v92 = swift_slowAlloc();
        sub_18E20809C();
        v93 = swift_slowAlloc();
        sub_18E1CA69C();
        v94 = swift_slowAlloc();
        sub_18E240598(v94, v219);
        *v92 = v194;
        v95 = *(v31 + 24);
        v96 = sub_18E1DD5F8();
        v98 = v97(v96);
        v31 = v55;
        v100 = sub_18E1E1C90(v98, v99);

        *(v92 + 4) = v100;
        v55 = v31;
        *(v92 + 12) = 2112;
        v101 = v82;
        v102 = _swift_stdlib_bridgeErrorToNSError();
        *(v92 + 14) = v102;
        *v93 = v102;
        *(v92 + 22) = 2048;
        *(v92 + 24) = v212;
        _os_log_impl(&dword_18E1C1000, v91, v60, "%s sync: connection error during call: %@, num connection attempts: %lu", v92, 0x20u);
        sub_18E32F548(v93);
        v65 = v193;
        sub_18E1C6164();
        MEMORY[0x193ACD400]();
        v103 = sub_18E1DD3C0(v219);
        sub_18E1C9934(v103);
        v104 = sub_18E1C86D0();
        MEMORY[0x193ACD400](v104);
        v105 = v205;
        sub_18E1C6164();
        MEMORY[0x193ACD400]();

        sub_18E1DD3C0(&a17);
        swift_unknownObjectRelease();

        (*v65)(v105, v31);
      }

      else
      {

        sub_18E1DD3C0(&a17);
        swift_unknownObjectRelease();
        (*v65)(v87, v55);
      }

      sub_18E234A08();

      swift_unknownObjectRelease();
      v67 = v206 + 1;
    }

    sub_18E1D4CFC();
    swift_beginAccess();
    v106 = *(v60 + 16);
    v107 = v185;
    if (v106)
    {
      v108 = *(v31 + 64);
      v109 = v106;
      v110 = v184;
      v108(v211, v31);
      v111 = v106;
      v112 = sub_18E44E80C();
      v113 = sub_18E44EE0C();

      if (os_log_type_enabled(v112, v113))
      {
        sub_18E1CA69C();
        v114 = swift_slowAlloc();
        sub_18E20809C();
        v205 = swift_slowAlloc();
        sub_18E1CA69C();
        v206 = swift_slowAlloc();
        v216[0] = v206;
        sub_18E2208D8();
        sub_18E200EEC();
        v116 = v115();
        v117 = v113;
        v119 = v118;
        v120 = sub_18E1C9624(v116, v118, v216);

        *(v114 + 4) = v120;
        *(v114 + 12) = 2112;
        v121 = v106;
        v122 = _swift_stdlib_bridgeErrorToNSError();
        sub_18E1CFE74(v122);
        _os_log_impl(&dword_18E1C1000, v112, v117, "%s sync: method error during call: %@, num connection attempts:%lu", v114, 0x20u);
        sub_18E32F548(v119);
        v123 = sub_18E1C86D0();
        MEMORY[0x193ACD400](v123);
        v124 = sub_18E1DD3C0(&a16);
        sub_18E1C9934(v124);
        v125 = sub_18E1C86D0();
        MEMORY[0x193ACD400](v125);
        sub_18E1C6164();
        MEMORY[0x193ACD400]();

        (*v65)(v184, v55);
      }

      else
      {

        (*v65)(v110, v55);
      }

      goto LABEL_16;
    }

    sub_18E1D4CFC();
    swift_beginAccess();
    v145 = v191;
    v146 = v190;
    v147 = v203;
    (*(v191 + 16))();
    v148 = v204;
    if (sub_18E1CAF28(v146, 1, v204) == 1)
    {
      (*(v145 + 8))(v146, v147);
      v149 = *(v31 + 64);
      v150 = v187;
      v151 = sub_18E1DD5F8();
      v152(v151);
      v153 = sub_18E44E80C();
      v154 = sub_18E44EE0C();
      if (os_log_type_enabled(v153, v154))
      {
        sub_18E1C9700();
        v155 = swift_slowAlloc();
        sub_18E1CA69C();
        v215 = swift_slowAlloc();
        *v155 = 136315394;
        v156 = *(v31 + 24);
        sub_18E200EEC();
        v158 = v157();
        sub_18E1C9624(v158, v159, &v215);
        sub_18E1E187C();

        *(v155 + 4) = v150;
        sub_18E2209DC();
        sub_18E221C04(&dword_18E1C1000, v160, v161, "%s sync: throwing neither result or error returned, num connection attempts:%lu");
        sub_18E1CFCC0();
        sub_18E1C6164();
        MEMORY[0x193ACD400]();
        v162 = sub_18E1C86D0();
        MEMORY[0x193ACD400](v162);
      }

      (*v65)(v150, v55);
      sub_18E2885F0();
      v180 = sub_18E1C8558();
      sub_18E224E88(v180, v181);

      sub_18E1CFA94();
      swift_unknownObjectRelease_n();

      sub_18E1E83C0();
    }

    else
    {
      v164 = v188 + 32;
      v163 = *(v188 + 32);
      v165 = v189;
      v163(v189, v146, v148);
      v166 = *(v31 + 64);
      v167 = sub_18E1DD5F8();
      v168(v167);
      v169 = v107;
      v170 = sub_18E44E80C();
      v171 = sub_18E44EDFC();
      if (os_log_type_enabled(v170, v171))
      {
        sub_18E1C9700();
        v172 = swift_slowAlloc();
        sub_18E1CA69C();
        v215 = swift_slowAlloc();
        *v172 = 136315394;
        v173 = *(v31 + 24);
        sub_18E200EEC();
        v175 = v174();
        sub_18E1C9624(v175, v176, &v215);
        sub_18E1E187C();

        *(v172 + 4) = v164;
        sub_18E2209DC();
        sub_18E221C04(&dword_18E1C1000, v177, v178, "%s sync: method returned non-nil result, num connection attempts:%lu");
        sub_18E1CFCC0();
        sub_18E1C6164();
        MEMORY[0x193ACD400]();
        v179 = sub_18E1C86D0();
        MEMORY[0x193ACD400](v179);

        sub_18E1DD3C0(&a17);
        swift_unknownObjectRelease();
        sub_18E1E83C0();
        (*v65)(v185, v192);
        v165 = v189;
      }

      else
      {

        sub_18E1DD3C0(&a17);
        swift_unknownObjectRelease();
        sub_18E1E83C0();
        (*v65)(v169, v192);
      }

      swift_unknownObjectRelease();
      v163(v183, v165, v204);
    }
  }

LABEL_26:
  sub_18E1E19E4();
  sub_18E1E6AEC();
}

{
  sub_18E1CFB3C();
  a19 = v23;
  a20 = v24;
  v143 = v22;
  v25 = v21;
  v27 = v26;
  v137 = v28;
  v138 = v29;
  v122 = v30;
  v31 = *v21;
  v139 = sub_18E44E83C();
  v32 = sub_18E1C4EAC(v139);
  v142 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_18E1C86C0();
  v38 = v36 - v37;
  MEMORY[0x1EEE9AC00](v39);
  sub_18E1C5738();
  MEMORY[0x1EEE9AC00](v40);
  v42 = v121 - v41;
  sub_18E1E3AE4();
  v124 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v46);
  sub_18E1C4EDC();
  v123 = (v48 - v47);
  v49 = v25[2];
  v144[2] = v27;
  v144[3] = v25;
  v50 = *(v31 + 80);
  v51 = *(v31 + 88);
  v52 = type metadata accessor for XPCServiceClientConnection.State();
  v53 = sub_18E1D121C(0, &qword_1EABE93B8, 0x1E696B0B8);
  v54 = v143;
  sub_18E224B04(sub_18E44C378, v144, v49, v52, v53);
  if (!v54)
  {
    v134 = v50;
    v121[0] = 0;
    v121[1] = v20;
    sub_18E243B34();
    v136 = v145[0];
    sub_18E235354();
    v132 = v55;
    v135 = (v142 + 8);
    sub_18E1E3684();
    v131 = v42 + 8;
    v127 = v51 + 24;
    *&v57 = 136315650;
    v125 = v57;
    v58 = v123;
    v130 = v51;
    v126 = v27;
    v129 = v25;
    v133 = v59;
    while (1)
    {
      v143 = v56 + 1;
      if (v56 == -1)
      {
        __break(1u);
        return;
      }

      v141 = v56;
      sub_18E1CC494();
      v60 = swift_allocObject();
      *(v60 + 16) = 0;
      v145[4] = sub_18E44C394;
      v145[5] = v60;
      v145[0] = MEMORY[0x1E69E9820];
      v145[1] = 1107296256;
      sub_18E1C80EC(&a15);
      v145[2] = v61;
      v145[3] = &unk_1F018AC58;
      _Block_copy(v145);
      sub_18E1CF544();

      v62 = [v136 synchronousRemoteObjectProxyWithErrorHandler_];
      _Block_release(v145);
      v63 = swift_unknownObjectRetain();
      v137(v63);
      sub_18E1D4CFC();
      swift_beginAccess();
      v64 = *(v60 + 16);
      v142 = v62;
      if (!v64)
      {
        break;
      }

      v65 = v64;
      v66 = v64;
      v67 = sub_18E447AD4(v64, v143);

      v68 = *v133;
      v140 = v60;
      if (!v67)
      {
        v106 = v134;
        v68(v134, v51);
        v107 = v64;
        v108 = sub_18E44E80C();
        v109 = sub_18E44EE0C();

        LODWORD(v141) = v109;
        if (sub_18E221E1C())
        {
          sub_18E1CA69C();
          v110 = swift_slowAlloc();
          sub_18E20809C();
          v27 = swift_slowAlloc();
          sub_18E1CA69C();
          v111 = swift_slowAlloc();
          v145[0] = v111;
          *v110 = v125;
          v112 = *(v51 + 24);
          v138 = v108;
          v113 = v112(v106, v51);
          sub_18E1E1C90(v113, v114);
          sub_18E1CF9C4();

          *(v110 + 4) = v109;
          *(v110 + 12) = 2112;
          v115 = v64;
          v116 = _swift_stdlib_bridgeErrorToNSError();
          *(v110 + 14) = v116;
          *v27 = v116;
          *(v110 + 22) = 2048;
          *(v110 + 24) = v143;
          v58 = v138;
          _os_log_impl(&dword_18E1C1000, v138, v141, "%s sync: connection error during call: %@ reached max num connection attempts: %lu", v110, 0x20u);
          sub_18E32F548(v27);
          sub_18E1E38FC();
          sub_18E1C9934(v111);
          sub_18E1C6164();
          MEMORY[0x193ACD400]();
          sub_18E1C6164();
          MEMORY[0x193ACD400]();

          sub_18E1E8A2C(&a18);
          v117 = sub_18E1D8224();
        }

        else
        {

          sub_18E1E8A2C(&a18);
          v117 = v121[2];
          v118 = v139;
        }

        v119(v117, v118);
        swift_willThrow();

        swift_unknownObjectRelease();
        sub_18E1E8A2C(&a14);
        v120(v58, v27);

        swift_unknownObjectRelease();
        goto LABEL_18;
      }

      v69 = sub_18E2370E8();
      v70(v69, v51);
      v71 = v64;
      v72 = sub_18E44E80C();
      v73 = sub_18E44EE0C();

      if (os_log_type_enabled(v72, v73))
      {
        sub_18E1CA69C();
        v27 = swift_slowAlloc();
        sub_18E20809C();
        v74 = swift_slowAlloc();
        sub_18E223724(v74);
        sub_18E1CA69C();
        v75 = swift_slowAlloc();
        sub_18E240598(v75, &a11);
        *v27 = v125;
        v76 = *(v51 + 24);
        v77 = sub_18E2370E8();
        v79 = v78(v77, v51);
        v81 = v58;
        v82 = sub_18E1E1C90(v79, v80);

        *(v27 + 4) = v82;
        v58 = v81;
        v83 = v135;
        *(v27 + 12) = 2112;
        v84 = v64;
        v85 = _swift_stdlib_bridgeErrorToNSError();
        *(v27 + 14) = v85;
        v86 = v128;
        *v128 = v85;
        *(v27 + 22) = 2048;
        *(v27 + 24) = v143;
        sub_18E243EFC(&dword_18E1C1000, v72, v73, "%s sync: connection error during call: %@, num connection attempts: %lu");
        sub_18E32F548(v86);
        sub_18E1C6164();
        MEMORY[0x193ACD400]();
        v87 = sub_18E25E204(&a11);
        sub_18E1C9934(v87);
        sub_18E1C6164();
        MEMORY[0x193ACD400]();
        sub_18E1E38FC();

        sub_18E201AE4();
        (*v83)(v38, v139);
      }

      else
      {

        sub_18E201AE4();
        sub_18E1E8A2C(&a18);
        v88(v38, v139);
      }

      sub_18E1E8A2C(&a14);
      v89(v58, v27);

      swift_unknownObjectRelease();
      v56 = v141 + 1;
      v51 = v130;
    }

    v90 = *(v51 + 64);
    v91 = sub_18E2370E8();
    v92(v91, v51);
    v93 = sub_18E44E80C();
    v94 = sub_18E44EDFC();
    if (os_log_type_enabled(v93, v94))
    {
      sub_18E1C9700();
      v95 = swift_slowAlloc();
      sub_18E1CA69C();
      v96 = swift_slowAlloc();
      sub_18E240E98(v96);
      *v95 = 136315394;
      v97 = *(v51 + 24);
      LODWORD(v141) = v94;
      v98 = sub_18E2370E8();
      v100 = v99(v98, v51);
      v58 = v60;
      v102 = sub_18E1E1C90(v100, v101);

      *(v95 + 4) = v102;
      *(v95 + 12) = 2048;
      *(v95 + 14) = v143;
      _os_log_impl(&dword_18E1C1000, v93, v141, "%s sync: method returned result, num connection attempts: %lu", v95, 0x16u);
      sub_18E1E1D6C();
      sub_18E1C6164();
      MEMORY[0x193ACD400]();

      sub_18E201AE4();
      sub_18E1E8A2C(&a18);
      v103 = sub_18E1D8224();
    }

    else
    {

      sub_18E201AE4();
      v103 = sub_18E1C2AA0(&a18);
      v104 = v139;
    }

    v105(v103, v104);
    swift_unknownObjectRelease();
    (*(v124 + 32))(v122, v58, v27);
  }

LABEL_18:
  sub_18E1E6AEC();
}

uint64_t XPCServiceClientConnection.callAsync<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = *v4;
  return sub_18E1CFD98(sub_18E446A6C);
}

uint64_t sub_18E446A6C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v2 + 16);
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  v8 = type metadata accessor for XPCServiceClientConnection.State();
  sub_18E1D121C(0, &qword_1EABE93B8, 0x1E696B0B8);
  sub_18E1D0498();
  sub_18E224B04(v9, v10, v11, v8, v12);
  v14 = *(v0 + 48);
  v13 = *(v0 + 56);
  v30 = *(v0 + 32);

  *(v0 + 72) = *(v0 + 16);
  v15 = swift_task_alloc();
  *(v0 + 80) = v15;
  sub_18E23339C(v15, v16, v17, v18, v19, v20, v21, v22, v23);
  v24 = *(MEMORY[0x1E69E8920] + 4);
  swift_task_alloc();
  sub_18E2016A8();
  *(v0 + 88) = v25;
  *v25 = v26;
  v25[1] = sub_18E446C38;
  v27 = *(v0 + 48);
  v28 = *(v0 + 24);

  return MEMORY[0x1EEE6DE38](v28);
}

uint64_t sub_18E446C38()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  v3 = v2;
  v4 = *(v2 + 88);
  v5 = *v1;
  sub_18E1C52E0();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    v7 = sub_18E446DA0;
  }

  else
  {
    v8 = *(v3 + 80);

    v7 = sub_18E446D44;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_18E446D44()
{
  sub_18E1C52F0();

  sub_18E1D008C();

  return v1();
}

uint64_t sub_18E446DA0()
{
  sub_18E1C52F0();
  v1 = *(v0 + 80);

  v2 = *(v0 + 96);
  sub_18E1D008C();

  return v3();
}

uint64_t *XPCServiceClientConnection.init(delegate:)()
{
  sub_18E1CD8B8();
  v2 = *v1;
  v1[3] = 2;
  v1[5] = 0;
  swift_unknownObjectWeakInit();
  sub_18E1E9E14();
  v4 = *(v3 + 80);
  sub_18E1E9E14();
  v6 = *(v5 + 88);
  v9 = 0;
  v7 = type metadata accessor for XPCServiceClientConnection.State();
  v1[2] = sub_18E446EAC(&v9, v7);
  v1[5] = v0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_18E446EAC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, a2);
  v8 = sub_18E44C21C(v7, a2);
  (*(v4 + 8))(a1, a2);
  return v8;
}

void sub_18E446F94()
{
  sub_18E1CFB3C();
  v54 = v3;
  v4 = *v0;
  v5 = sub_18E44E83C();
  v6 = sub_18E1C4EAC(v5);
  v53 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_18E1CA254();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - v11;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = v0[5];
    ObjectType = swift_getObjectType();
    (*(v13 + 8))(ObjectType, v13);
    if (!v1 && !v54->isa)
    {
      v15 = *(v4 + 80);
      v16 = *(v4 + 88);
      v17 = *(v16 + 64);
      v52 = v16;
      v48 = v17;
      v49 = v16 + 64;
      (v17)(v15);
      v18 = sub_18E44E80C();
      LODWORD(v50) = sub_18E44EE2C();
      v19 = os_log_type_enabled(v18, v50);
      v51 = v15;
      if (v19)
      {
        v20 = sub_18E1C5F74();
        v46 = v20;
        sub_18E1CA69C();
        v47 = swift_slowAlloc();
        v55 = v47;
        *v20 = 136315138;
        v21 = (*(v52 + 24))(v15);
        sub_18E1C9624(v21, v22, &v55);
        sub_18E1CF9C4();

        v23 = v46;
        *(v46 + 1) = v15;
        _os_log_impl(&dword_18E1C1000, v18, v50, "%s: establishing connection.", v23, 0xCu);
        sub_18E1E1D6C();
        sub_18E1C6164();
        MEMORY[0x193ACD400]();
      }

      v50 = *(v53 + 8);
      v50(v12, v5);
      sub_18E1D121C(0, &qword_1EABE93B8, 0x1E696B0B8);
      v25 = v52 + 24;
      v24 = *(v52 + 24);
      v26 = v24();
      v28 = sub_18E44755C(v26, v27, 0);
      v54->isa = v28;
      if (!v28)
      {
        v48();
        v39 = sub_18E44E80C();
        v40 = sub_18E44EE0C();
        v54 = v39;
        if (os_log_type_enabled(v39, v40))
        {
          v41 = sub_18E1C5F74();
          sub_18E1CA69C();
          v49 = swift_slowAlloc();
          v55 = v49;
          *v41 = 136315138;
          v42 = v24();
          sub_18E1C9624(v42, v43, &v55);
          sub_18E1E187C();

          *(v41 + 4) = v25;
          v44 = v54;
          _os_log_impl(&dword_18E1C1000, v54, v40, "%s: did not create connection.", v41, 0xCu);
          sub_18E1E1D6C();
          sub_18E1C6164();
          MEMORY[0x193ACD400]();
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        v50(v2, v5);
        goto LABEL_9;
      }

      v29 = v28;
      v30 = v51;
      v31 = v52;
      v32 = static XPCService.xpcInterface()();
      [(objc_class *)v29 setRemoteObjectInterface:v32];

      sub_18E1CC494();
      v33 = swift_allocObject();
      swift_weakInit();
      sub_18E1E3428();
      v34 = swift_allocObject();
      v34[2] = v30;
      v34[3] = v31;
      v34[4] = v33;
      v59 = sub_18E44CF54;
      v60 = v34;
      v55 = MEMORY[0x1E69E9820];
      v56 = 1107296256;
      v57 = sub_18E203E04;
      v58 = &unk_1F018B218;
      v35 = _Block_copy(&v55);

      [(objc_class *)v29 setInterruptionHandler:v35];
      _Block_release(v35);
      sub_18E1CC494();
      v36 = swift_allocObject();
      swift_weakInit();
      sub_18E1E3428();
      v37 = swift_allocObject();
      v37[2] = v30;
      v37[3] = v31;
      v37[4] = v36;
      v59 = sub_18E44CF88;
      v60 = v37;
      v55 = MEMORY[0x1E69E9820];
      v56 = 1107296256;
      v57 = sub_18E203E04;
      v58 = &unk_1F018B268;
      v38 = _Block_copy(&v55);

      [(objc_class *)v29 setInvalidationHandler:v38];
      _Block_release(v38);
      [(objc_class *)v29 resume];
    }

    swift_unknownObjectRelease();
LABEL_9:
    sub_18E1E6AEC();
    return;
  }

  sub_18E44F14C();
  __break(1u);
}

id sub_18E44755C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_18E44EA8C();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

uint64_t sub_18E4475D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18E44E83C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 64))(a2, a3);
  v11 = sub_18E44E80C();
  v12 = sub_18E44EE0C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v21[0] = v6;
    v14 = v13;
    v15 = swift_slowAlloc();
    v21[1] = v3;
    v16 = v15;
    v22 = v15;
    *v14 = 136315138;
    v17 = (*(a3 + 24))(a2, a3);
    v19 = sub_18E1C9624(v17, v18, &v22);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_18E1C1000, v11, v12, "%s: Connection to XPC Server interrupted.", v14, 0xCu);
    sub_18E1C9934(v16);
    MEMORY[0x193ACD400](v16, -1, -1);
    MEMORY[0x193ACD400](v14, -1, -1);

    return (*(v7 + 8))(v10, v21[0]);
  }

  else
  {

    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_18E4477E0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_18E1D4CFC();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *(result + 16);
    MEMORY[0x1EEE9AC00](result);
    v10[2] = a2;
    v10[3] = a3;
    v9 = type metadata accessor for XPCServiceClientConnection.State();

    sub_18E224B04(a4, v10, v8, v9, MEMORY[0x1E69E7CA8] + 8);
  }

  return result;
}

uint64_t sub_18E4478CC(id *a1, uint64_t a2, uint64_t a3)
{
  v25 = sub_18E44E83C();
  v7 = *(v25 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  (*(a3 + 64))(a2, a3);
  v11 = sub_18E44E80C();
  v12 = sub_18E44EE2C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v24 = v3;
    v16 = v15;
    v26 = v15;
    *v14 = 136315138;
    v17 = (*(a3 + 24))(a2, a3);
    v19 = sub_18E1C9624(v17, v18, &v26);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_18E1C1000, v11, v12, "%s: Connection to XPC Server invalidated.", v14, 0xCu);
    sub_18E1C9934(v16);
    MEMORY[0x193ACD400](v16, -1, -1);
    v20 = v14;
    a1 = v23;
    MEMORY[0x193ACD400](v20, -1, -1);
  }

  result = (*(v7 + 8))(v10, v25);
  *a1 = 0;
  return result;
}

BOOL sub_18E447AD4(void *a1, unint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  sub_18E2706EC(&qword_1EABE1048, &unk_18E49ED80);
  sub_18E1D121C(0, &qword_1EABE08A0, 0x1E696ABC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = [v15 domain];
  v5 = sub_18E44EAAC();
  v7 = v6;

  v8 = *MEMORY[0x1E696A250];
  if (v5 == sub_18E44EAAC() && v7 == v9)
  {
  }

  else
  {
    v11 = sub_18E44F3CC();

    if ((v11 & 1) == 0)
    {

      return 0;
    }
  }

  v12 = [v15 code];

  return v12 == 4097 && a2 < 2;
}

void sub_18E448558(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_18E4485C0(void *a1, uint64_t a2)
{
  sub_18E1D61E0();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

void sub_18E44860C()
{
  sub_18E2332CC();
  v4 = *(v1 + 16);
  *(v1 + 16) = v3;

  sub_18E1D61E0();
  v5 = *(v0 + 16);
  *(v0 + 16) = v2;
  v6 = v2;
}

void sub_18E448680(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_18E44EEFC();
  v8 = swift_projectBox();
  swift_beginAccess();
  (*(*(v7 - 8) + 24))(v8, a1, v7);
  swift_beginAccess();
  v9 = *(a4 + 16);
  *(a4 + 16) = a2;
  v10 = a2;
}

void sub_18E448750(uint64_t a1, void *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  sub_18E448680(a1, a2, v2[5], v2[6]);
}

void sub_18E448760(void **a1@<X0>, void *a2@<X8>)
{
  sub_18E446F94();
  if (!v2)
  {
    v5 = *a1;
    if (*a1)
    {
      *a2 = v5;
      v6 = v5;
    }

    else
    {
      sub_18E2885F0();
      sub_18E1C8558();
      *v7 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_18E4487D8(uint64_t a1, void *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t (*)(), char *), void (*a5)(uint64_t, uint64_t (*)(), char *), uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  sub_18E448870(v12, a2, a3, a1, a4, a5, a6);
}

uint64_t sub_18E448870(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t (*)(), char *), void (*a6)(uint64_t, uint64_t (*)(), char *), uint64_t a7)
{
  v59 = a2;
  v60 = a5;
  v12 = *a3;
  sub_18E2707F8(&qword_1EABE1048, &unk_18E49ED80);
  v13 = sub_18E44ED2C();
  v14 = sub_18E1C4EAC(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v20 = v48 - v19;
  result = sub_18E1D61E0();
  v22 = *(a1 + 16);
  v23 = __CFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 16) = v24;
    v49 = a6;
    v25 = *(v16 + 16);
    v51 = v16 + 16;
    v57 = v25;
    v58 = v18;
    v25(v20, a4, v13);
    v56 = a4;
    v26 = *(v16 + 80);
    v27 = v13;
    v28 = ((v26 + 64) & ~v26);
    v29 = &v28[v18 + 7];
    v30 = a1;
    v50 = a1;
    v31 = v29 & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    v33 = a7;
    v55 = a7;
    v34 = v32;
    v35 = *(v12 + 80);
    *(v32 + 16) = v35;
    *(v32 + 24) = v33;
    v53 = *(v12 + 88);
    v54 = v35;
    *(v32 + 32) = v53;
    *(v32 + 40) = a3;
    v48[1] = a3;
    v36 = v59;
    *(v32 + 48) = v30;
    *(v32 + 56) = v36;
    v52 = *(v16 + 32);
    v37 = v20;
    v52(&v28[v32], v20, v27);
    v38 = (v34 + v31);
    v39 = v49;
    *v38 = v60;
    v38[1] = v39;
    aBlock[4] = sub_18E44D010;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18E448558;
    aBlock[3] = &unk_1F018B2B8;
    v40 = _Block_copy(aBlock);
    sub_18E234A08();

    v41 = v50;

    v42 = v36;
    sub_18E1E187C();

    v43 = [v28 remoteObjectProxyWithErrorHandler_];
    _Block_release(v40);
    v57(v37, v56, v27);
    v44 = swift_allocObject();
    v45 = v55;
    *(v44 + 2) = v54;
    *(v44 + 3) = v45;
    v46 = v52;
    *(v44 + 4) = v53;
    *(v44 + 5) = v41;
    v46(&v44[(v26 + 48) & ~v26], v37, v27);

    v47 = swift_unknownObjectRetain();
    v60(v47, sub_18E44D0EC, v44);

    sub_18E2352D0();
    return swift_unknownObjectRelease_n();
  }

  return result;
}

uint64_t sub_18E448BD8(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v61 = a8;
  v57 = a6;
  v58 = a7;
  v56 = a4;
  v12 = *a2;
  v13 = sub_18E44E83C();
  v59 = *(v13 - 8);
  v60 = v13;
  v14 = *(v59 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v53 - v18;
  swift_beginAccess();
  v20 = sub_18E447AD4(a1, *(a3 + 16));
  v21 = *(v12 + 80);
  v22 = *(v12 + 88);
  v23 = *(v22 + 64);
  if (v20)
  {
    v23(*(v12 + 80), *(v12 + 88));
    swift_retain_n();
    v24 = a1;
    v25 = sub_18E44E80C();
    v26 = sub_18E44EE0C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v55 = a5;
      v28 = v27;
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v62 = v54;
      *v28 = 136315650;
      v29 = (*(v22 + 24))(v21, v22);
      v31 = sub_18E1C9624(v29, v30, &v62);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2112;
      v32 = a1;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v33;
      v34 = v53;
      *v53 = v33;
      *(v28 + 22) = 2048;
      swift_beginAccess();
      v35 = *(a3 + 16);

      *(v28 + 24) = v35;

      _os_log_impl(&dword_18E1C1000, v25, v26, "%s async: connection error during call: %@, num connection attempts: %lu", v28, 0x20u);
      sub_18E32F548(v34);
      MEMORY[0x193ACD400](v34, -1, -1);
      v36 = v54;
      sub_18E1C9934(v54);
      MEMORY[0x193ACD400](v36, -1, -1);
      v37 = v28;
      a5 = v55;
      MEMORY[0x193ACD400](v37, -1, -1);
    }

    else
    {
    }

    (*(v59 + 8))(v19, v60);
    return sub_18E448870(a3, v56, a2, a5, v57, v58, v61);
  }

  else
  {
    v23(*(v12 + 80), *(v12 + 88));
    swift_retain_n();
    v38 = a1;
    v39 = sub_18E44E80C();
    v40 = sub_18E44EE0C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v55 = a5;
      v42 = v41;
      v43 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v62 = v58;
      *v42 = 136315650;
      v44 = (*(v22 + 24))(v21, v22);
      v46 = sub_18E1C9624(v44, v45, &v62);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2112;
      v47 = a1;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 14) = v48;
      *v43 = v48;
      *(v42 + 22) = 2048;
      swift_beginAccess();
      v49 = *(a3 + 16);

      *(v42 + 24) = v49;

      _os_log_impl(&dword_18E1C1000, v39, v40, "%s async: connection error during call: %@ reached max num connection attempts: %lu", v42, 0x20u);
      sub_18E32F548(v43);
      MEMORY[0x193ACD400](v43, -1, -1);
      v50 = v58;
      sub_18E1C9934(v58);
      MEMORY[0x193ACD400](v50, -1, -1);
      MEMORY[0x193ACD400](v42, -1, -1);
    }

    else
    {
    }

    (*(v59 + 8))(v17, v60);
    v62 = a1;
    v52 = a1;
    sub_18E2707F8(&qword_1EABE1048, &unk_18E49ED80);
    sub_18E44ED2C();
    return sub_18E44ED0C();
  }
}

uint64_t sub_18E44912C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v82 = a7;
  v80 = a4;
  v12 = sub_18E44E83C();
  v78 = *(v12 - 8);
  v79 = v12;
  v13 = *(v78 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v75 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v81 = &v75 - v20;
  v21 = sub_18E44EEFC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v75 - v25;
  v27 = *(*(a6 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v28);
  if (a2)
  {
    v77 = a6;
    v32 = v82;
    v33 = *(v82 + 64);
    v34 = a2;
    v33(a5, v32);

    v35 = a2;

    v36 = sub_18E44E80C();
    v37 = sub_18E44EE0C();

    v38 = a3;
    if (os_log_type_enabled(v36, v37))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v83 = v41;
      *v39 = 136315650;
      v42 = (*(v82 + 24))(a5);
      v44 = sub_18E1C9624(v42, v43, &v83);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2112;
      v45 = a2;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 14) = v46;
      *v40 = v46;
      *(v39 + 22) = 2048;
      swift_beginAccess();
      v47 = *(v38 + 16);

      *(v39 + 24) = v47;

      _os_log_impl(&dword_18E1C1000, v36, v37, "%s async: method error during call: %@, num connection attempts: %lu", v39, 0x20u);
      sub_18E32F548(v40);
      MEMORY[0x193ACD400](v40, -1, -1);
      sub_18E1C9934(v41);
      MEMORY[0x193ACD400](v41, -1, -1);
      MEMORY[0x193ACD400](v39, -1, -1);
    }

    else
    {
    }

    (*(v78 + 8))(v81, v79);
    v83 = a2;
    sub_18E2707F8(&qword_1EABE1048, &unk_18E49ED80);
LABEL_13:
    sub_18E44ED2C();
    return sub_18E44ED0C();
  }

  v75 = v31;
  v76 = &v75 - v29;
  v81 = v30;
  (*(v22 + 16))(v26, a1, v21);
  if (sub_18E1CAF28(v26, 1, a6) == 1)
  {
    (*(v22 + 8))(v26, v21);
    v48 = v16;
    v49 = a5;
    (*(v82 + 64))(a5);
    v50 = a3;
    swift_retain_n();
    v51 = sub_18E44E80C();
    v52 = sub_18E44EE0C();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = v48;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v83 = v55;
      *v54 = 136315394;
      v56 = (*(v82 + 24))(v49);
      v58 = sub_18E1C9624(v56, v57, &v83);

      *(v54 + 4) = v58;
      *(v54 + 12) = 2048;
      swift_beginAccess();
      v59 = *(v50 + 16);

      *(v54 + 14) = v59;

      _os_log_impl(&dword_18E1C1000, v51, v52, "%s async: throwing neither result or error returned, num connection attempts: %lu", v54, 0x16u);
      sub_18E1C9934(v55);
      MEMORY[0x193ACD400](v55, -1, -1);
      MEMORY[0x193ACD400](v54, -1, -1);

      (*(v78 + 8))(v53, v79);
    }

    else
    {

      (*(v78 + 8))(v48, v79);
    }

    sub_18E2885F0();
    v69 = swift_allocError();
    *v70 = 2;
    v83 = v69;
    sub_18E2707F8(&qword_1EABE1048, &unk_18E49ED80);
    goto LABEL_13;
  }

  v60 = *(v81 + 4);
  v77 = a6;
  v60(v76, v26, a6);
  (*(v82 + 64))(a5);
  swift_retain_n();
  v61 = sub_18E44E80C();
  v62 = sub_18E44EDFC();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v83 = v64;
    *v63 = 136315394;
    v65 = (*(v82 + 24))(a5);
    v67 = sub_18E1C9624(v65, v66, &v83);

    *(v63 + 4) = v67;
    *(v63 + 12) = 2048;
    swift_beginAccess();
    v68 = *(a3 + 16);

    *(v63 + 14) = v68;

    _os_log_impl(&dword_18E1C1000, v61, v62, "%s async: method returned non-nil result, num connection attempts: %lu", v63, 0x16u);
    sub_18E1C9934(v64);
    MEMORY[0x193ACD400](v64, -1, -1);
    MEMORY[0x193ACD400](v63, -1, -1);
  }

  else
  {
  }

  (*(v78 + 8))(v19, v79);
  v72 = v81;
  v73 = v76;
  v74 = v77;
  (*(v81 + 2))(v75, v76, v77);
  sub_18E2707F8(&qword_1EABE1048, &unk_18E49ED80);
  sub_18E44ED2C();
  sub_18E44ED1C();
  return (*(v72 + 1))(v73, v74);
}

uint64_t sub_18E449A98@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = *a1;
  swift_unknownObjectWeakInit();

  return swift_unknownObjectRelease();
}

uint64_t BidirectionalXPCServiceClientConnection.__allocating_init(existingConnection:localObject:delegate:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_18E1E1AE0();
  v8 = swift_allocObject();
  BidirectionalXPCServiceClientConnection.init(existingConnection:localObject:delegate:)(a1, a2, a3, a4);
  return v8;
}

uint64_t *BidirectionalXPCServiceClientConnection.init(existingConnection:localObject:delegate:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v9 = *v4;
  v4[5] = 0;
  swift_unknownObjectWeakInit();
  v4[3] = a1;
  LOBYTE(v20[0]) = 0;
  v10 = a1;
  swift_unknownObjectRetain();
  v18 = *(v9 + 96);
  v19 = *(v9 + 80);
  sub_18E449A98(v20, v21);
  v20[0] = v19;
  v20[1] = v18;
  v11 = type metadata accessor for BidirectionalXPCServiceClientConnection.State();
  v4[2] = sub_18E446EAC(v21, v11);
  v4[5] = a4;
  swift_unknownObjectWeakAssign();
  v12 = v4[2];

  sub_18E2244C4();
  sub_18E224B04(v13, v14, v15, v11, v16);
  if (v6)
  {
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_18E449C9C(_BYTE *a1)
{
  v4 = *v1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = v1[5];
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(ObjectType, v5);
    if (v2 || *a1)
    {
      return swift_unknownObjectRelease();
    }

    else
    {
      v8 = v1[3];
      v9 = v4[11];
      v23 = v4[13];
      v10 = static XPCService.xpcInterface()();
      [v8 setRemoteObjectInterface_];

      v11 = v4[10];
      v12 = v4[12];
      v13 = static XPCService.xpcInterface()();
      [v8 setExportedInterface_];

      [v8 setExportedObject_];
      swift_unknownObjectRelease();
      v14 = swift_allocObject();
      swift_weakInit();
      v15 = swift_allocObject();
      *&v16 = v11;
      *(&v16 + 1) = v9;
      *&v17 = v12;
      *(&v17 + 1) = v23;
      v22 = v16;
      v24 = v17;
      *(v15 + 16) = v16;
      *(v15 + 32) = v17;
      *(v15 + 48) = v14;
      v29 = sub_18E44CE78;
      v30 = v15;
      aBlock = MEMORY[0x1E69E9820];
      v26 = 1107296256;
      v27 = sub_18E203E04;
      v28 = &unk_1F018B150;
      v18 = _Block_copy(&aBlock);

      [v8 setInterruptionHandler_];
      _Block_release(v18);
      v19 = swift_allocObject();
      swift_weakInit();
      v20 = swift_allocObject();
      *(v20 + 16) = v22;
      *(v20 + 32) = v24;
      *(v20 + 48) = v19;
      v29 = sub_18E44CE90;
      v30 = v20;
      aBlock = MEMORY[0x1E69E9820];
      v26 = 1107296256;
      v27 = sub_18E203E04;
      v28 = &unk_1F018B1A0;
      v21 = _Block_copy(&aBlock);

      [v8 setInvalidationHandler_];
      _Block_release(v21);
      [v8 resume];
      result = swift_unknownObjectRelease();
      *a1 = 1;
    }
  }

  else
  {
    result = sub_18E44F14C();
    __break(1u);
  }

  return result;
}

uint64_t BidirectionalXPCServiceClientConnection.__allocating_init(localObject:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18E1E1AE0();
  v6 = swift_allocObject();
  BidirectionalXPCServiceClientConnection.init(localObject:delegate:)(a1, a2, a3);
  return v6;
}

void *BidirectionalXPCServiceClientConnection.init(localObject:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *v3;
  v3[5] = 0;
  swift_unknownObjectWeakInit();
  sub_18E1D121C(0, &qword_1EABE93B8, 0x1E696B0B8);
  v7 = v6[11];
  v8 = v6[13];
  v9 = *(v8 + 24);
  v10 = sub_18E2370E8();
  v12 = v11(v10, v8);
  v3[3] = sub_18E44755C(v12, v13, 0);
  LOBYTE(v26[0]) = 0;
  v25 = v6[12];
  v24 = v6[10];
  swift_unknownObjectRetain();
  sub_18E449A98(v26, v27);
  *&v15 = v24;
  *&v14 = v25;
  *(&v15 + 1) = v7;
  *(&v14 + 1) = v8;
  v26[0] = v15;
  v26[1] = v14;
  v16 = type metadata accessor for BidirectionalXPCServiceClientConnection.State();
  v3[2] = sub_18E446EAC(v27, v16);
  v3[5] = a3;
  swift_unknownObjectWeakAssign();
  v17 = v3[2];

  sub_18E1E19C0();
  v18 = v28;
  sub_18E224B04(v19, v20, v21, v16, v22);
  if (v18)
  {
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t BidirectionalXPCServiceClientConnection.deinit()
{
  [*(v0 + 24) setInterruptionHandler_];
  [*(v0 + 24) setInvalidationHandler_];
  [*(v0 + 24) invalidate];
  v1 = *(v0 + 16);

  sub_18E207C54(v0 + 32);
  return v0;
}

uint64_t BidirectionalXPCServiceClientConnection.__deallocating_deinit()
{
  BidirectionalXPCServiceClientConnection.deinit();
  v0 = sub_18E1E1AE0();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

ModelCatalog::ConnectionState __swiftcall BidirectionalXPCServiceClientConnection.getCurrentConnectionState()()
{
  v1 = *v0;
  v2 = v0[2];
  sub_18E1CFF9C();
  v12[2] = *(v3 + 80);
  sub_18E1CFF9C();
  v12[3] = *(v4 + 88);
  sub_18E1CFF9C();
  v12[4] = *(v5 + 96);
  sub_18E1CFF9C();
  v13 = *(v6 + 104);
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v13;
  v10 = type metadata accessor for BidirectionalXPCServiceClientConnection.State();
  sub_18E224B04(sub_18E44C3E0, v12, v2, v10, &type metadata for ConnectionState);
  return result;
}

uint64_t sub_18E44A3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  sub_18E1D4CFC();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = *(result + 16);
    MEMORY[0x1EEE9AC00](result);
    v17[2] = a2;
    v17[3] = a3;
    v17[4] = a4;
    v17[5] = a5;

    v17[6] = a2;
    v17[7] = a3;
    v17[8] = a4;
    v17[9] = a5;
    v14 = type metadata accessor for BidirectionalXPCServiceClientConnection.State();
    sub_18E224B04(a6, v17, v13, v14, MEMORY[0x1E69E7CA8] + 8);

    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v12 + 40);
      ObjectType = swift_getObjectType();
      (*(v15 + 16))(ObjectType, v15);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_18E44A510(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), const char *a7)
{
  v32 = sub_18E44E83C();
  v10 = sub_18E1C4EAC(v32);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_18E1C4EDC();
  v17 = v16 - v15;
  v18 = *(a5 + 64);
  v19 = sub_18E2370E8();
  v20(v19, a5);
  v21 = sub_18E44E80C();
  v22 = a6();
  if (os_log_type_enabled(v21, v22))
  {
    v30 = a1;
    v23 = sub_18E1C5F74();
    sub_18E1CA69C();
    v24 = swift_slowAlloc();
    v33 = v24;
    *v23 = 136315138;
    v25 = *(a5 + 24);
    v26 = sub_18E2370E8();
    v28 = v27(v26, a5);
    sub_18E1C9624(v28, v29, &v33);
    sub_18E1E187C();

    *(v23 + 4) = a5;
    _os_log_impl(&dword_18E1C1000, v21, v22, a7, v23, 0xCu);
    sub_18E1C9934(v24);
    sub_18E1C6164();
    MEMORY[0x193ACD400]();
    a1 = v30;
    sub_18E1C6164();
    MEMORY[0x193ACD400]();
  }

  (*(v12 + 8))(v17, v32);
  *a1 = 2;
  sub_18E1E19E4();
}

void BidirectionalXPCServiceClientConnection.call<A>(_:)(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a2;
  v32 = a1;
  v8 = *v4;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v4[2];
  v34 = v14;
  v35 = v4;
  v16 = *(v15 + 96);
  aBlock = *(v15 + 80);
  v37 = v16;
  v17 = type metadata accessor for BidirectionalXPCServiceClientConnection.State();
  v18 = sub_18E1D121C(0, &qword_1EABE93B8, 0x1E696B0B8);
  sub_18E224B04(sub_18E44C3EC, v33, v13, v17, v18);
  if (!v5)
  {
    v30 = a4;
    v19 = v40;
    sub_18E1CC494();
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    sub_18E1E3428();
    v21 = swift_allocObject();
    v21[2] = a3;
    v21[3] = v4;
    v21[4] = v20;
    v38 = sub_18E44C408;
    v39 = v21;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v37 = sub_18E448558;
    *(&v37 + 1) = &unk_1F018ACA8;
    v22 = _Block_copy(&aBlock);

    v23 = [v19 synchronousRemoteObjectProxyWithErrorHandler_];
    v24 = sub_18E1E187C();
    _Block_release(v24);
    v25 = swift_unknownObjectRetain();
    v32(v25);
    sub_18E1D4CFC();
    swift_beginAccess();
    v26 = *(v20 + 16);
    if (v26)
    {
      v27 = *(v20 + 16);
      swift_willThrow();
      v28 = v26;

      swift_unknownObjectRelease();
      (*(v9 + 8))(v12, a3);

      swift_unknownObjectRelease();
    }

    else
    {

      sub_18E2417C4();
      (*(v9 + 32))(v30, v12, a3);
    }
  }
}

void BidirectionalXPCServiceClientConnection.call<A>(_:)(void (*a1)(id, void (*)(uint64_t a1, void *a2), void *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a2;
  v59 = a1;
  v8 = *v4;
  v70 = sub_18E44EEFC();
  v9 = sub_18E1C4EAC(v70);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = v51 - v14;
  v16 = v4[2];
  v61 = a3;
  v62 = v4;
  v17 = v8[10];
  v18 = v8[12];
  v19 = v8[13];
  v56 = v8[11];
  v57 = v17;
  aBlock = v17;
  v65 = v56;
  v55 = v18;
  v66 = v18;
  v67 = v19;
  v20 = type metadata accessor for BidirectionalXPCServiceClientConnection.State();
  v21 = sub_18E1D121C(0, &qword_1EABE93B8, 0x1E696B0B8);
  sub_18E224B04(sub_18E44D334, v60, v16, v20, v21);
  if (!v5)
  {
    v51[1] = 0;
    v51[3] = v11;
    v52 = v15;
    v51[2] = a4;
    v22 = v63;
    sub_18E1CC494();
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    v24 = (v23 + 16);
    sub_18E1E3428();
    v25 = swift_allocObject();
    v25[2] = a3;
    v25[3] = v4;
    v25[4] = v23;
    v68 = sub_18E44C478;
    v69 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v65 = 1107296256;
    v66 = sub_18E448558;
    v67 = &unk_1F018ACF8;
    v26 = _Block_copy(&aBlock);

    v54 = v23;

    v53 = v22;
    v27 = [v22 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v26);
    v28 = swift_allocBox();
    v30 = v29;
    sub_18E201DC8(v29, 1, 1, a3);
    sub_18E1CC494();
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    v32 = (v31 + 16);
    v33 = swift_allocObject();
    v34 = v56;
    v33[2] = v57;
    v33[3] = v34;
    v35 = v55;
    v33[4] = a3;
    v33[5] = v35;
    v33[6] = v19;
    v33[7] = v28;
    v36 = v28;
    v33[8] = v31;
    swift_unknownObjectRetain();

    v59(v27, sub_18E44C4AC, v33);

    sub_18E1D4CFC();
    swift_beginAccess();
    v37 = *v24;
    if (*v24)
    {
      v38 = *v24;
      swift_willThrow();
      v39 = v37;

      sub_18E1CFA94();

      sub_18E1E2684();
    }

    else
    {
      v58 = v31;
      v40 = v54;
      v59 = v36;
      v41 = v53;
      v42 = v70;
      sub_18E1D4CFC();
      swift_beginAccess();
      v43 = *v32;
      if (*v32)
      {
        v44 = *v32;
        swift_willThrow();
        v45 = v43;
      }

      else
      {
        sub_18E1D4CFC();
        swift_beginAccess();
        sub_18E207B14();
        v46 = v52;
        (*(v40 + 16))(v52, v30, v42);
        if (sub_18E1CAF28(v46, 1, a3) != 1)
        {

          sub_18E1E2684();
          v49 = *(*(a3 - 8) + 32);
          sub_18E1D0498();
          v50();
          sub_18E1CFA94();

          goto LABEL_9;
        }

        (*(v40 + 8))(v46, v42);
        sub_18E2885F0();
        v47 = sub_18E1C8558();
        sub_18E224E88(v47, v48);

        sub_18E1CFA94();
      }

      sub_18E1E2684();
    }
  }

LABEL_9:
  sub_18E1E19E4();
}

id sub_18E44AEE0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a4;
  v52 = a5;
  v50 = *a2;
  v8 = sub_18E44E83C();
  v9 = sub_18E1C4EAC(v8);
  v48 = v10;
  v49 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_18E1C4EDC();
  v15 = v14 - v13;
  v16 = v50[11];
  v17 = v50[13];
  (*(v17 + 64))(v16, v17);
  v18 = a1;
  v19 = sub_18E44E80C();
  v20 = sub_18E44EE0C();

  if (os_log_type_enabled(v19, v20))
  {
    sub_18E1C9700();
    v47 = a3;
    v21 = swift_slowAlloc();
    sub_18E20809C();
    v45 = swift_slowAlloc();
    sub_18E1CA69C();
    v46 = swift_slowAlloc();
    v53[0] = v46;
    *v21 = 136315394;
    v22 = (*(v17 + 24))(v16, v17);
    v24 = a1;
    v25 = sub_18E1C9624(v22, v23, v53);

    *(v21 + 4) = v25;
    a1 = v24;
    *(v21 + 12) = 2112;
    v26 = v24;
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v27;
    v28 = v45;
    *v45 = v27;
    _os_log_impl(&dword_18E1C1000, v19, v20, "%s: error during call: %@.", v21, 0x16u);
    sub_18E32F548(v28);
    v29 = sub_18E1C86D0();
    MEMORY[0x193ACD400](v29);
    sub_18E1C9934(v46);
    v30 = sub_18E1C86D0();
    MEMORY[0x193ACD400](v30);
    a3 = v47;
    sub_18E1C6164();
    MEMORY[0x193ACD400]();
  }

  v31 = (*(v48 + 8))(v15, v49);
  v32 = a2[2];
  MEMORY[0x1EEE9AC00](v31);
  v33 = v50;
  v34 = v51;
  v35 = v50[10];
  *(&v44 - 6) = v35;
  *(&v44 - 5) = v16;
  v36 = v33[12];
  *(&v44 - 4) = v34;
  *(&v44 - 3) = v36;
  *(&v44 - 2) = v17;
  v53[0] = v35;
  v53[1] = v16;
  v53[2] = v36;
  v53[3] = v17;
  type metadata accessor for BidirectionalXPCServiceClientConnection.State();
  sub_18E1D0498();
  sub_18E224B04(v37, v38, v39, v40, v41);
  sub_18E1D61E0();
  v42 = *(a3 + 16);
  *(a3 + 16) = a1;

  return a1;
}

void sub_18E44B1EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_18E44EEFC();
  v8 = swift_projectBox();
  swift_beginAccess();
  (*(*(v7 - 8) + 24))(v8, a1, v7);
  swift_beginAccess();
  v9 = *(a4 + 16);
  *(a4 + 16) = a2;
  v10 = a2;
}

uint64_t BidirectionalXPCServiceClientConnection.call<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v5[12] = *v4;
  return sub_18E1CFD98(sub_18E44B304);
}

uint64_t sub_18E44B304()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  *(v0 + 16) = *(v2 + 80);
  *(v0 + 32) = *(v2 + 96);
  v6 = type metadata accessor for BidirectionalXPCServiceClientConnection.State();
  sub_18E1D121C(0, &qword_1EABE93B8, 0x1E696B0B8);
  sub_18E1D0498();
  sub_18E224B04(v7, v8, v9, v6, v10);
  v12 = *(v0 + 80);
  v11 = *(v0 + 88);
  v28 = *(v0 + 64);

  *(v0 + 104) = *(v0 + 48);
  v13 = swift_task_alloc();
  *(v0 + 112) = v13;
  sub_18E23339C(v13, v14, v15, v16, v17, v18, v19, v20, v21);
  v22 = *(MEMORY[0x1E69E8920] + 4);
  swift_task_alloc();
  sub_18E2016A8();
  *(v0 + 120) = v23;
  *v23 = v24;
  v23[1] = sub_18E44B4D8;
  v25 = *(v0 + 80);
  v26 = *(v0 + 56);

  return MEMORY[0x1EEE6DE38](v26);
}

uint64_t sub_18E44B4D8()
{
  sub_18E1C52F0();
  sub_18E1C64F4();
  v3 = v2;
  v4 = *(v2 + 120);
  v5 = *v1;
  sub_18E1C52E0();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
    v7 = sub_18E44B640;
  }

  else
  {
    v8 = *(v3 + 112);

    v7 = sub_18E44B5E4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_18E44B5E4()
{
  sub_18E1C52F0();

  sub_18E1D008C();

  return v1();
}

uint64_t sub_18E44B640()
{
  sub_18E1C52F0();
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);
  sub_18E1D008C();

  return v3();
}

id sub_18E44B6A4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_18E449C9C(a1);
  if (!v3)
  {
    if (*a1 == 2)
    {
      sub_18E2885F0();
      sub_18E1C8558();
      *v8 = 1;
      return swift_willThrow();
    }

    else
    {
      v9 = *(a2 + 24);
      *a3 = v9;
      return v9;
    }
  }

  return result;
}

uint64_t sub_18E44B728(uint64_t a1, void *a2, void *a3, void (*a4)(uint64_t, uint64_t (*)(), char *), uint64_t a5, uint64_t a6)
{
  v34 = a5;
  v35 = a4;
  v32 = a1;
  v33 = a2;
  v9 = *a3;
  sub_18E2707F8(&qword_1EABE1048, &unk_18E49ED80);
  v27 = a6;
  v10 = sub_18E44ED2C();
  v11 = *(v10 - 8);
  v30 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - v12;
  v31 = *(v11 + 16);
  v31(&v24 - v12, a1, v10);
  v14 = *(v11 + 80);
  v15 = swift_allocObject();
  v29 = v9[10];
  *(v15 + 2) = v29;
  v28 = v9[11];
  *(v15 + 3) = v28;
  *(v15 + 4) = a6;
  v26 = v9[12];
  *(v15 + 5) = v26;
  v25 = v9[13];
  *(v15 + 6) = v25;
  *(v15 + 7) = a3;
  v16 = *(v11 + 32);
  v16(&v15[(v14 + 64) & ~v14], v13, v10);
  aBlock[4] = sub_18E44CD04;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18E448558;
  aBlock[3] = &unk_1F018B0B0;
  v17 = _Block_copy(aBlock);

  v18 = [v33 remoteObjectProxyWithErrorHandler_];
  _Block_release(v17);
  v31(v13, v32, v10);
  v19 = swift_allocObject();
  v20 = v28;
  *(v19 + 2) = v29;
  *(v19 + 3) = v20;
  v21 = v26;
  *(v19 + 4) = v27;
  *(v19 + 5) = v21;
  *(v19 + 6) = v25;
  v16(&v19[(v14 + 56) & ~v14], v13, v10);
  v22 = swift_unknownObjectRetain();
  v35(v22, sub_18E44CDAC, v19);

  return swift_unknownObjectRelease_n();
}

uint64_t sub_18E44BA48(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v44 = *a2;
  v7 = sub_18E44E83C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = v44[11];
  v43 = a2;
  v13 = v44[13];
  (*(v13 + 64))(v12, v13);
  v14 = a1;
  v15 = sub_18E44E80C();
  v16 = sub_18E44EE0C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v42 = v7;
    v18 = v17;
    v39 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v45[0] = v41;
    *v18 = 136315394;
    v19 = *(v13 + 24);
    v38 = v16;
    v20 = v19(v12, v13);
    v22 = sub_18E1C9624(v20, v21, v45);
    v40 = v8;
    v23 = a1;
    v24 = v22;

    *(v18 + 4) = v24;
    *(v18 + 12) = 2112;
    v25 = a1;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v26;
    v27 = v39;
    *v39 = v26;
    _os_log_impl(&dword_18E1C1000, v15, v38, "%s: error during call: %@.", v18, 0x16u);
    sub_18E32F548(v27);
    MEMORY[0x193ACD400](v27, -1, -1);
    v28 = v41;
    sub_18E1C9934(v41);
    MEMORY[0x193ACD400](v28, -1, -1);
    MEMORY[0x193ACD400](v18, -1, -1);

    v29 = (*(v40 + 8))(v11, v42);
  }

  else
  {

    v29 = (*(v8 + 8))(v11, v7);
    v23 = a1;
  }

  v30 = v43[2];
  MEMORY[0x1EEE9AC00](v29);
  v31 = v44;
  v32 = v44[10];
  *&v37[-48] = v32;
  *&v37[-40] = v12;
  v33 = v31[12];
  *&v37[-32] = a4;
  *&v37[-24] = v33;
  *&v37[-16] = v13;
  v45[0] = v32;
  v45[1] = v12;
  v45[2] = v33;
  v45[3] = v13;
  v34 = type metadata accessor for BidirectionalXPCServiceClientConnection.State();
  sub_18E224B04(sub_18E44D34C, &v37[-64], v30, v34, MEMORY[0x1E69E7CA8] + 8);
  v45[0] = v23;
  v35 = v23;
  sub_18E2707F8(&qword_1EABE1048, &unk_18E49ED80);
  sub_18E44ED2C();
  return sub_18E44ED0C();
}

uint64_t sub_18E44BE0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_18E44EEFC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v26 - v13;
  v15 = *(a6 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v12);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v26 - v20;
  if (a2)
  {
    v27 = a2;
    v22 = a2;
  }

  else
  {
    (*(v10 + 16))(v14, a1, v9);
    if (sub_18E1CAF28(v14, 1, a6) != 1)
    {
      (*(v15 + 32))(v21, v14, a6);
      (*(v15 + 16))(v19, v21, a6);
      sub_18E2707F8(&qword_1EABE1048, &unk_18E49ED80);
      sub_18E44ED2C();
      sub_18E44ED1C();
      return (*(v15 + 8))(v21, a6);
    }

    (*(v10 + 8))(v14, v9);
    sub_18E2885F0();
    v23 = swift_allocError();
    *v24 = 2;
    v27 = v23;
  }

  sub_18E2707F8(&qword_1EABE1048, &unk_18E49ED80);
  sub_18E44ED2C();
  return sub_18E44ED0C();
}

uint64_t sub_18E44C128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_18E25E674;

  return BidirectionalXPCServiceClientConnection.call<A>(_:)(a1, a2, a3, a4);
}

uint64_t sub_18E44C21C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_18E44F06C();
  v4 = sub_18E44F05C();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t sub_18E44C2CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a1 + ((*(v2 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v2 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2);
}

void sub_18E44C378(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  sub_18E448760(a1, a2);
}

uint64_t sub_18E44C43C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_18E1E3428();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

void sub_18E44C4AC(uint64_t a1, void *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  sub_18E44B1EC(a1, a2, v2[7], v2[8]);
}

unint64_t sub_18E44C52C()
{
  result = qword_1EABE93C8;
  if (!qword_1EABE93C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE93C8);
  }

  return result;
}

unint64_t sub_18E44C584()
{
  result = qword_1EABE93D0[0];
  if (!qword_1EABE93D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EABE93D0);
  }

  return result;
}

uint64_t dispatch thunk of ServiceConnectionProtocol.call<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 24))();
}

{
  return (*(a5 + 32))();
}

uint64_t dispatch thunk of ServiceConnectionProtocol.call<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = (sub_18E1CF8C8(a1, a2, a3, a4, a5, a6) + 40);
  v14 = *v13 + **v13;
  v7 = (*v13)[1];
  swift_task_alloc();
  sub_18E2016A8();
  *(v6 + 16) = v8;
  *v8 = v9;
  v10 = sub_18E1D4A98(v8);

  return v11(v10);
}

uint64_t dispatch thunk of BidirectionalServiceConnectionProtocol.call<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 48))();
}

{
  return (*(a5 + 56))();
}

uint64_t dispatch thunk of BidirectionalServiceConnectionProtocol.call<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = (sub_18E1CF8C8(a1, a2, a3, a4, a5, a6) + 64);
  v14 = *v13 + **v13;
  v7 = (*v13)[1];
  swift_task_alloc();
  sub_18E2016A8();
  *(v6 + 16) = v8;
  *v8 = v9;
  v10 = sub_18E1D4A98(v8);

  return v11(v10);
}

_BYTE *sub_18E44CACC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18E44CBA8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18E44CBE4(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[16])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18E44CC20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_18E44CC60(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18E44CCB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_18E44CD04(void *a1)
{
  v3 = *(v1 + 32);
  sub_18E2707F8(&qword_1EABE1048, &unk_18E49ED80);
  v4 = *(sub_18E44ED2C() - 8);
  v5 = *(v1 + 56);
  v6 = v1 + ((*(v4 + 80) + 64) & ~*(v4 + 80));

  return sub_18E44BA48(a1, v5, v6, v3);
}

uint64_t sub_18E44CDAC()
{
  sub_18E1CD8B8();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  sub_18E2707F8(&qword_1EABE1048, &unk_18E49ED80);
  v6 = *(*(sub_18E44ED2C() - 8) + 80);
  v7 = sub_18E1D8004();

  return sub_18E44BE0C(v7, v8, v9, v1, v2, v3);
}

uint64_t sub_18E44D010(void *a1)
{
  v3 = v1[3];
  sub_18E2707F8(&qword_1EABE1048, &unk_18E49ED80);
  v4 = *(sub_18E44ED2C() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_18E448BD8(a1, v6, v7, v8, v1 + v5, v10, v11, v3);
}

uint64_t sub_18E44D0EC()
{
  sub_18E1CD8B8();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_18E2707F8(&qword_1EABE1048, &unk_18E49ED80);
  v4 = *(*(sub_18E44ED2C() - 8) + 80);
  v5 = v0[5];
  v6 = sub_18E1D8004();

  return sub_18E44912C(v6, v7, v8, v9, v1, v2, v3);
}

void sub_18E44D1A8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_18E26BFF4(a1);
}

void sub_18E44D380()
{
  v4 = *v0;
  *(v3 - 312) = v1;
  *(v3 - 320) = v2;
}

uint64_t sub_18E44D398()
{
  v2 = *v0;
  v3 = v0[1];
}

uint64_t sub_18E44D3C4()
{
}

uint64_t SiriResourceAvailabilityInfo.enoughStorage.getter()
{
  v1 = OBJC_IVAR____TtC12ModelCatalog28SiriResourceAvailabilityInfo_enoughStorage;
  sub_18E1C5C08();
  return *(v0 + v1);
}

uint64_t SiriResourceAvailabilityInfo.enoughStorage.setter(char a1)
{
  v3 = OBJC_IVAR____TtC12ModelCatalog28SiriResourceAvailabilityInfo_enoughStorage;
  result = sub_18E1C4F14();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SiriResourceAvailabilityInfo.diskSpaceRequired.getter()
{
  v1 = OBJC_IVAR____TtC12ModelCatalog28SiriResourceAvailabilityInfo_diskSpaceRequired;
  sub_18E1C5C08();
  return *(v0 + v1);
}

uint64_t SiriResourceAvailabilityInfo.diskSpaceRequired.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12ModelCatalog28SiriResourceAvailabilityInfo_diskSpaceRequired;
  result = sub_18E1C4F14();
  *(v1 + v3) = a1;
  return result;
}

id SiriResourceAvailabilityInfo.init(enoughStorage:diskSpaceRequired:)(char a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v2[OBJC_IVAR____TtC12ModelCatalog28SiriResourceAvailabilityInfo_enoughStorage] = a1;
  *&v2[OBJC_IVAR____TtC12ModelCatalog28SiriResourceAvailabilityInfo_diskSpaceRequired] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t static SiriResourceAvailabilityInfo.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EABE94E0 = a1;
  return result;
}

uint64_t sub_18E44D730@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EABE94E0;
  return result;
}

uint64_t sub_18E44D77C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EABE94E0 = v1;
  return result;
}

Swift::Void __swiftcall SiriResourceAvailabilityInfo.encode(with:)(NSCoder with)
{
  v3 = OBJC_IVAR____TtC12ModelCatalog28SiriResourceAvailabilityInfo_enoughStorage;
  sub_18E1C5C08();
  v4 = *(v1 + v3);
  sub_18E1C69E4();
  v5 = sub_18E44EA8C();
  [(objc_class *)with.super.isa encodeBool:v4 forKey:v5];

  v6 = OBJC_IVAR____TtC12ModelCatalog28SiriResourceAvailabilityInfo_diskSpaceRequired;
  sub_18E1C5C08();
  v7 = *(v1 + v6);
  sub_18E1C8100();
  v8 = sub_18E44EA8C();
  [(objc_class *)with.super.isa encodeInt64:v7 forKey:v8];
}

id SiriResourceAvailabilityInfo.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_18E1C69E4();
  v3 = sub_18E44EA8C();
  v4 = [a1 decodeBoolForKey_];

  sub_18E1C8100();
  v5 = sub_18E44EA8C();
  v6 = [a1 decodeInt64ForKey_];

  v7 = objc_allocWithZone(ObjectType);
  v8 = SiriResourceAvailabilityInfo.init(enoughStorage:diskSpaceRequired:)(v4, v6);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

unint64_t SiriResourceAvailabilityInfo.description.getter()
{
  v1 = v0;
  sub_18E44EFFC();

  v2 = OBJC_IVAR____TtC12ModelCatalog28SiriResourceAvailabilityInfo_enoughStorage;
  sub_18E1C5C08();
  if (*(v1 + v2))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v1 + v2))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x193ACC300](v3, v4);

  MEMORY[0x193ACC300](0xD000000000000015, 0x800000018E4785B0);
  v5 = OBJC_IVAR____TtC12ModelCatalog28SiriResourceAvailabilityInfo_diskSpaceRequired;
  sub_18E1C5C08();
  v8 = *(v1 + v5);
  v6 = sub_18E44F39C();
  MEMORY[0x193ACC300](v6);

  MEMORY[0x193ACC300](32032, 0xE200000000000000);
  return 0xD000000000000011;
}

id SiriResourceAvailabilityInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriResourceAvailabilityInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ModelCatalogFeatureFlags.hashValue.getter()
{
  sub_18E44F48C();
  MEMORY[0x193ACCC20](0);
  return sub_18E44F4CC();
}

uint64_t static ModelCatalogFeatureFlags.isAssetCoherenceEnabled()()
{
  v2[3] = &type metadata for ModelCatalogFeatureFlags;
  v2[4] = sub_18E44DE18();
  v0 = sub_18E44E73C();
  sub_18E1C9934(v2);
  return v0 & 1;
}

unint64_t sub_18E44DE18()
{
  result = qword_1EABDFC10;
  if (!qword_1EABDFC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABDFC10);
  }

  return result;
}

unint64_t sub_18E44DE70()
{
  result = qword_1EABE94F8;
  if (!qword_1EABE94F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE94F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ModelCatalogFeatureFlags(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_18E44DF70()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static MultiBaseModel.formatDefaultBaseModelInferenceID(from:)(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_18E2462E8(0xD000000000000025, 0x800000018E478660);
  if (v3)
  {
    v4 = v3;
    v5 = sub_18E44EA8C();
    v6 = [v4 stringForKey_];

    if (v6)
    {
      v7 = sub_18E44EAAC();
      v9 = v8;

      MEMORY[0x193ACC300](7758627, 0xE300000000000000);
      MEMORY[0x193ACC300](v7, v9);
    }

    else
    {
    }
  }

  else
  {
    sub_18E44E11C();
    swift_allocError();
    *v10 = 0xD000000000000041;
    v10[1] = 0x800000018E478690;
    swift_willThrow();
  }

  return a1;
}

unint64_t sub_18E44E11C()
{
  result = qword_1EABE9500;
  if (!qword_1EABE9500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABE9500);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MultiBaseModel(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}