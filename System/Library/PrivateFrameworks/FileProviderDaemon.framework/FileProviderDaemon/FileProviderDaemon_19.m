uint64_t sub_1CF241018@<X0>(id a1@<X1>, uint64_t a2@<X0>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = [a1 columns];
  v7 = sub_1CF1CD084();
  v8 = MEMORY[0x1D38688F0](v6, &type metadata for SnapshotItemSQLFields, MEMORY[0x1E69E7CA0] + 8, v7);
  v9 = 0;
  v10 = *(a2 + 16);
  v11 = a2 + 32;
  while (1)
  {
    if (v10 == v9)
    {
      sub_1CF201F24(v8, a4);
    }

    v13 = (a3 + v9);
    if (__OFADD__(a3, v9))
    {
      break;
    }

    v14 = *(v11 + v9);
    if (v14 <= 0x1E)
    {
      switch(v14)
      {
        case 0x1Cu:
          type metadata accessor for NSFileProviderItemIdentifier(0);
          v42 = v19;
          v20 = [a1 stringAtIndex_];
          if (!v20)
          {
LABEL_28:
            _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v24 = sub_1CF9E6888();

            v20 = v24;
          }

LABEL_29:
          *&v41 = v20;
          goto LABEL_30;
        case 0x1Du:
          type metadata accessor for NSFileProviderItemIdentifier(0);
          v42 = v23;
          v20 = [a1 stringAtIndex_];
          if (!v20)
          {
            goto LABEL_28;
          }

          goto LABEL_29;
        case 0x1Eu:
          v42 = &type metadata for Filename;
          v16 = [a1 stringAtIndex_];
          v17 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
LABEL_26:
          v21 = v17;
          v22 = v18;

          *&v41 = v21;
          *(&v41 + 1) = v22;
          goto LABEL_30;
      }
    }

    else if (*(v11 + v9) > 0x20u)
    {
      if (v14 == 33 || v14 == 34)
      {
        v42 = &type metadata for FPItemVersionData;
        v16 = [a1 dataAtIndex_];
        v17 = sub_1CF9E5B88();
        goto LABEL_26;
      }
    }

    else
    {
      if (v14 == 31)
      {
        v20 = [a1 longLongAtIndex_];
        v42 = MEMORY[0x1E69E76D8];
        if (v20 < 0)
        {
          goto LABEL_47;
        }

        goto LABEL_29;
      }

      if (v14 == 32)
      {
        v15 = [a1 unsignedIntAtIndex_];
        v42 = MEMORY[0x1E69E7668];
        LODWORD(v41) = v15;
        goto LABEL_30;
      }
    }

    sub_1CF07F730(*(v11 + v9), a1, (a3 + v9), &v41);
    if (v39)
    {
    }

    if (!v42)
    {
      sub_1CEFCCC44(&v41, &unk_1EC4BEC50, &qword_1CF9FB4B0);
      goto LABEL_3;
    }

LABEL_30:
    sub_1CEFE9EB8(&v41, v43);
    sub_1CEFD1104(v43, &v41);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v8;
    v27 = sub_1CF7BF3BC(v14);
    v28 = v8[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_45;
    }

    v31 = v26;
    if (v8[3] >= v30)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v8 = v44;
        if ((v26 & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        sub_1CF7CF840();
        v8 = v44;
        if ((v31 & 1) == 0)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      sub_1CF7C3EA4(v30, isUniquelyReferenced_nonNull_native);
      v32 = sub_1CF7BF3BC(v14);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_48;
      }

      v27 = v32;
      v8 = v44;
      if ((v31 & 1) == 0)
      {
LABEL_37:
        v8[(v27 >> 6) + 8] |= 1 << v27;
        *(v8[6] + v27) = v14;
        sub_1CEFE9EB8(&v41, (v8[7] + 32 * v27));
        __swift_destroy_boxed_opaque_existential_1(v43);
        v34 = v8[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_46;
        }

        v8[2] = v36;
        goto LABEL_3;
      }
    }

    v12 = (v8[7] + 32 * v27);
    __swift_destroy_boxed_opaque_existential_1(v12);
    sub_1CEFE9EB8(&v41, v12);
    __swift_destroy_boxed_opaque_existential_1(v43);
LABEL_3:
    if (++v9 == 0x80000000)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

unint64_t sub_1CF24144C(uint64_t a1, id a2, int a3)
{
  v5 = [a2 columns];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9D0, &unk_1CF9FEFA0);
  v7 = sub_1CEFCCCEC(&qword_1EC4BE9D8, &qword_1EC4BE9D0, &unk_1CF9FEFA0);
  v8 = MEMORY[0x1D38688F0](v5, v6, MEMORY[0x1E69E7CA0] + 8, v7);
  v9 = *(a1 + 16);
  if (!v9)
  {
LABEL_28:
    v30 = sub_1CF203F08(v8);
    if (v34)
    {
    }

    v31 = v30;

    return v31;
  }

  v10 = 0;
  v11 = a1 + 32;
  while (1)
  {
    v12 = (a3 + v10);
    if (__OFADD__(a3, v10))
    {
      break;
    }

    v13 = *(v11 + v10);
    if (v13 >> 2 == 55)
    {
      *(&v37 + 1) = &type metadata for JobCode;
      v15 = sub_1CF043D7C([a2 longAtIndex_]);
      if (v15 == 89)
      {
LABEL_30:
        sub_1CF1DA5D8();
        swift_allocError();
        *v33 = 0;
        swift_willThrow();
        __swift_deallocate_boxed_opaque_existential_0(&v36);
      }

      LOBYTE(v36) = v15;
    }

    else if (v13 >> 2 == 63)
    {
      *(&v37 + 1) = &type metadata for FileTreeSide;
      v14 = [a2 longAtIndex_];
      if (v14)
      {
        if (v14 != 1)
        {
          goto LABEL_30;
        }

        LOBYTE(v36) = 1;
      }

      else
      {
        LOBYTE(v36) = 0;
      }
    }

    else
    {
      if (v13 != 64)
      {
        v36 = 0u;
        v37 = 0u;
        sub_1CEFCCC44(&v36, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        goto LABEL_26;
      }

      *(&v37 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE2A8, &qword_1CF9FD3F8);
      *&v36 = a2;
      DWORD2(v36) = a3 + v10;
      v16 = a2;
    }

    sub_1CEFE9EB8(&v36, v38);
    sub_1CEFD1104(v38, &v36);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v8;
    v19 = sub_1CF7BFABC(v13);
    v20 = v8[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_35;
    }

    v23 = v18;
    if (v8[3] >= v22)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v8 = v39;
        if (v18)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_1CF7D1620();
        v8 = v39;
        if (v23)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      sub_1CF7C7E28(v22, isUniquelyReferenced_nonNull_native);
      v24 = sub_1CF7BFABC(v13);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_37;
      }

      v19 = v24;
      v8 = v39;
      if (v23)
      {
LABEL_22:
        v26 = (v8[7] + 32 * v19);
        __swift_destroy_boxed_opaque_existential_1(v26);
        sub_1CEFE9EB8(&v36, v26);
        __swift_destroy_boxed_opaque_existential_1(v38);
        goto LABEL_26;
      }
    }

    v8[(v19 >> 6) + 8] |= 1 << v19;
    *(v8[6] + v19) = v13;
    sub_1CEFE9EB8(&v36, (v8[7] + 32 * v19));
    __swift_destroy_boxed_opaque_existential_1(v38);
    v27 = v8[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_36;
    }

    v8[2] = v29;
LABEL_26:
    if (v10 == 0x7FFFFFFF)
    {
      goto LABEL_34;
    }

    if (v9 == ++v10)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

unint64_t sub_1CF2417D4(uint64_t a1, id a2, int a3)
{
  v8 = v4;
  v10 = [a2 columns];
  v11 = sub_1CF1D9F60();
  v12 = MEMORY[0x1D38688F0](v10, &type metadata for JobSQLFields, MEMORY[0x1E69E7CA0] + 8, v11);
  v13 = v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    v5 = 0;
    v44 = a1 + 32;
    do
    {
      v15 = (a3 + v5);
      if (__OFADD__(a3, v5))
      {
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v6 = *(v44 + v5);
      v16 = v6 >> 5;
      if (v6 >> 5 > 1)
      {
        if (v16 == 3)
        {
          if (v6 == 96)
          {
            type metadata accessor for NSFileProviderItemIdentifier(0);
            *(&v47 + 1) = v20;
            v19 = [a2 stringAtIndex_];
            if (v19)
            {
              goto LABEL_29;
            }

            goto LABEL_22;
          }
        }

        else if (v16 == 2)
        {
          switch(v6)
          {
            case '@':
              goto LABEL_23;
            case 'A':
              v23 = &type metadata for JobReason;
LABEL_28:
              *(&v47 + 1) = v23;
              v19 = [a2 unsignedLongAtIndex_];
LABEL_29:
              *&v46 = v19;
LABEL_30:
              sub_1CEFE9EB8(&v46, v48);
              sub_1CEFD1104(v48, &v46);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v49 = v13;
              v12 = sub_1CF7BFB60(v6);
              v25 = v13[2];
              v26 = (v24 & 1) == 0;
              v27 = __OFADD__(v25, v26);
              v28 = v25 + v26;
              if (v27)
              {
                __break(1u);
LABEL_58:
                __break(1u);
                goto LABEL_59;
              }

              v15 = v24;
              if (v13[3] < v28)
              {
                sub_1CF7C8288(v28, isUniquelyReferenced_nonNull_native);
                v12 = sub_1CF7BFB60(v6);
                if ((v15 & 1) != (v29 & 1))
                {
                  sub_1CF9E8108();
                  __break(1u);
LABEL_60:
                  sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
                }

                goto LABEL_35;
              }

              if (isUniquelyReferenced_nonNull_native)
              {
LABEL_35:
                v13 = v49;
                if ((v15 & 1) == 0)
                {
                  goto LABEL_42;
                }
              }

              else
              {
                v3 = v12;
                sub_1CF7D1634();
                v12 = v3;
                v13 = v49;
                if ((v15 & 1) == 0)
                {
LABEL_42:
                  v13[(v12 >> 6) + 8] |= 1 << v12;
                  *(v13[6] + v12) = v6;
                  sub_1CEFE9EB8(&v46, (v13[7] + 32 * v12));
                  v12 = __swift_destroy_boxed_opaque_existential_1(v48);
                  v37 = v13[2];
                  v27 = __OFADD__(v37, 1);
                  v38 = v37 + 1;
                  if (v27)
                  {
                    goto LABEL_58;
                  }

                  v13[2] = v38;
                  goto LABEL_44;
                }
              }

              v3 = (v13[7] + 32 * v12);
              __swift_destroy_boxed_opaque_existential_1(v3);
              sub_1CEFE9EB8(&v46, v3);
              v12 = __swift_destroy_boxed_opaque_existential_1(v48);
              goto LABEL_44;
            case 'B':
              type metadata accessor for NSFileProviderItemIdentifier(0);
              *(&v47 + 1) = v18;
              v19 = [a2 stringAtIndex_];
              if (v19)
              {
                goto LABEL_29;
              }

LABEL_22:
              _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v3 = v21;
              v22 = sub_1CF9E6888();

              v19 = v22;
              goto LABEL_29;
          }
        }
      }

      else if (v16)
      {
        if (v16 == 1)
        {
          if ((v6 & 1) == 0)
          {
            v23 = &type metadata for JobSchedulingPriority;
            goto LABEL_28;
          }

          v17 = &type metadata for NSecTimestamp;
          goto LABEL_19;
        }
      }

      else
      {
        if (!*(v44 + v5))
        {
LABEL_23:
          v19 = [a2 longAtIndex_];
          *(&v47 + 1) = MEMORY[0x1E69E6530];
          goto LABEL_29;
        }

        if (v6 == 1)
        {
          v17 = &type metadata for JobWaitCondition;
LABEL_19:
          *(&v47 + 1) = v17;
          v19 = [a2 longAtIndex_];
          goto LABEL_29;
        }

        if (([a2 isNullAtIndex_] & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF40, &unk_1CF9FE780);
          if ([a2 isNullAtIndex_])
          {
            sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
          }

          v42 = v8;
          if (swift_dynamicCastMetatype())
          {
            goto LABEL_60;
          }

          v30 = sub_1CF9E5688();
          v31 = *(v30 + 48);
          v32 = *(v30 + 52);
          swift_allocObject();
          sub_1CF9E5678();
          v33 = [a2 dataAtIndex_];
          v34 = sub_1CF9E5B88();
          v36 = v35;

          sub_1CEFCCCEC(&qword_1EDEA6218, &unk_1EC4BFF40, &unk_1CF9FE780);
          sub_1CF9E5668();
          if (v42)
          {
            sub_1CEFE4714(v34, v36);

            return v5;
          }

          sub_1CEFE4714(v34, v36);

          v3 = v49;
          *(&v47 + 1) = type metadata accessor for Continuation();
          *&v46 = v3;
          v8 = 0;
          goto LABEL_30;
        }
      }

      v46 = 0u;
      v47 = 0u;
      v12 = sub_1CEFCCC44(&v46, &unk_1EC4BEC50, &qword_1CF9FB4B0);
LABEL_44:
      if (v5 == 0x7FFFFFFF)
      {
        goto LABEL_52;
      }

      ++v5;
    }

    while (v14 != v5);
  }

  v39 = sub_1CF23E884(66, v13, sub_1CF7BFB60, sub_1CF1D841C);
  if (v8)
  {
  }

  else
  {
    v3 = v39;
    v14 = sub_1CF23E884(96, v13, sub_1CF7BFB60, sub_1CF1D841C);
    v6 = sub_1CEFF0CDC(32, v13, sub_1CF7BFB60, sub_1CF1D841C);
    v15 = sub_1CEFF0EE4(33, v13, sub_1CF7BFB60, sub_1CF1D841C);
    v12 = sub_1CF23E440(65, v13);
    isUniquelyReferenced_nonNull_native = 0;
LABEL_53:
    v5 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0290, &qword_1CF9FB3F0);
    v41 = swift_allocObject();
    *(v41 + 144) = v3;
    *(v41 + 152) = v14;
    *(v41 + 16) = 0u;
    *(v41 + 32) = 0u;
    *(v41 + 48) = 1;
    *(v41 + 56) = 0u;
    *(v41 + 72) = 0u;
    *(v41 + 88) = 0;
    *(v41 + 96) = xmmword_1CF9FEC30;
    *(v41 + 112) = 0;
    *(v41 + 120) = v6;
    *(v41 + 128) = v15;
    *(v41 + 136) = v5;
    if ((v5 & 0x8000) != 0)
    {
      *(v41 + 96) = 2359552;
      *(v41 + 112) = 0;
    }

    v12 = sub_1CF246F18(v13);
    if (isUniquelyReferenced_nonNull_native)
    {
    }

    else
    {
LABEL_59:
      v5 = v12;
    }
  }

  return v5;
}

uint64_t sub_1CF241F04(uint64_t a1, id a2, int a3, uint64_t *a4, uint64_t *a5)
{
  v6 = [a2 columns];
  v7 = sub_1CF1D9F60();
  v8 = MEMORY[0x1D38688F0](v6, &type metadata for JobSQLFields, MEMORY[0x1E69E7CA0] + 8, v7);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = 0;
    v47 = a1 + 32;
    while (1)
    {
      v11 = (a3 + v10);
      if (__OFADD__(a3, v10))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        sub_1CF9E8108();
        __break(1u);
LABEL_50:
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
      }

      v12 = *(v47 + v10);
      if (v12 == 99)
      {
        v13 = [a2 unsignedLongLongAtIndex_];
        *(&v50 + 1) = &type metadata for CapturedContent;
        v14 = swift_allocObject();
        *&v49 = v14;
        *(v14 + 16) = v13;
        *(v14 + 24) = 0;
        *(v14 + 28) = 1;
        *(v14 + 32) = xmmword_1CF9F4E20;
        *(v14 + 48) = 0;
        *(v14 + 56) = 0;
        *(v14 + 64) = 1;
        *(v14 + 72) = 0;
        goto LABEL_22;
      }

      v15 = v12 >> 5;
      if (v12 >> 5)
      {
        break;
      }

      if (!*(v47 + v10))
      {
        goto LABEL_18;
      }

      if (v12 == 1)
      {
        v17 = &type metadata for JobWaitCondition;
LABEL_17:
        *(&v50 + 1) = v17;
        v18 = [a2 longAtIndex_];
LABEL_21:
        *&v49 = v18;
        goto LABEL_22;
      }

      if ([a2 isNullAtIndex_])
      {
LABEL_30:
        v49 = 0u;
        v50 = 0u;
        sub_1CEFCCC44(&v49, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        goto LABEL_38;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF40, &unk_1CF9FE780);
      if ([a2 isNullAtIndex_])
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_50;
      }

      v29 = sub_1CF9E5688();
      v30 = *(v29 + 48);
      v31 = *(v29 + 52);
      swift_allocObject();
      sub_1CF9E5678();
      v32 = [a2 dataAtIndex_];
      v33 = sub_1CF9E5B88();
      v35 = v34;

      sub_1CEFCCCEC(&qword_1EDEA6218, &unk_1EC4BFF40, &unk_1CF9FE780);
      sub_1CF9E5668();
      if (v45)
      {
        sub_1CEFE4714(v33, v35);
      }

      sub_1CEFE4714(v33, v35);

      v36 = v52;
      *(&v50 + 1) = type metadata accessor for Continuation();
      *&v49 = v36;
LABEL_22:
      sub_1CEFE9EB8(&v49, v51);
      sub_1CEFD1104(v51, &v49);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v8;
      v20 = sub_1CF7BFB60(v12);
      v22 = v8[2];
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        goto LABEL_47;
      }

      v26 = v21;
      if (v8[3] >= v25)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v37 = v20;
          sub_1CF7D1634();
          v20 = v37;
          v8 = v52;
          if ((v26 & 1) == 0)
          {
LABEL_36:
            v8[(v20 >> 6) + 8] |= 1 << v20;
            *(v8[6] + v20) = v12;
            sub_1CEFE9EB8(&v49, (v8[7] + 32 * v20));
            __swift_destroy_boxed_opaque_existential_1(v51);
            v38 = v8[2];
            v24 = __OFADD__(v38, 1);
            v39 = v38 + 1;
            if (v24)
            {
              goto LABEL_48;
            }

            v8[2] = v39;
            goto LABEL_38;
          }

          goto LABEL_28;
        }
      }

      else
      {
        sub_1CF7C8288(v25, isUniquelyReferenced_nonNull_native);
        v20 = sub_1CF7BFB60(v12);
        if ((v26 & 1) != (v27 & 1))
        {
          goto LABEL_49;
        }
      }

      v8 = v52;
      if ((v26 & 1) == 0)
      {
        goto LABEL_36;
      }

LABEL_28:
      v28 = (v8[7] + 32 * v20);
      __swift_destroy_boxed_opaque_existential_1(v28);
      sub_1CEFE9EB8(&v49, v28);
      __swift_destroy_boxed_opaque_existential_1(v51);
LABEL_38:
      if (v10 == 0x7FFFFFFF)
      {
        goto LABEL_46;
      }

      if (v9 == ++v10)
      {
        goto LABEL_40;
      }
    }

    if (v15 == 1)
    {
      if (v12)
      {
        v17 = &type metadata for NSecTimestamp;
        goto LABEL_17;
      }

      v16 = &type metadata for JobSchedulingPriority;
    }

    else
    {
      if (v15 != 2)
      {
        goto LABEL_30;
      }

      if (v12 == 64)
      {
LABEL_18:
        v18 = [a2 longAtIndex_];
        *(&v50 + 1) = MEMORY[0x1E69E6530];
        goto LABEL_21;
      }

      if (v12 != 65)
      {
        goto LABEL_30;
      }

      v16 = &type metadata for JobReason;
    }

    *(&v50 + 1) = v16;
    v18 = [a2 unsignedLongAtIndex_];
    goto LABEL_21;
  }

LABEL_40:
  v40 = sub_1CF205BFC(v8, a4, a5);
  if (v45)
  {
  }

  v42 = v40;

  return v42;
}

uint64_t sub_1CF242420(uint64_t a1, id a2, int a3)
{
  v68 = a3;
  v4 = a2;
  v6 = [a2 columns];
  v7 = sub_1CF1D9F60();
  v8 = MEMORY[0x1D38688F0](v6, &type metadata for JobSQLFields, MEMORY[0x1E69E7CA0] + 8, v7);
  v9 = 0;
  v62 = v4;
  v63 = a1 + 32;
  v10 = *(a1 + 16);
  v11 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
  while (v10 != v9)
  {
    v12 = (v68 + v9);
    if (__OFADD__(v68, v9))
    {
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      sub_1CF9E8108();
      __break(1u);
LABEL_74:
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
    }

    v13 = *(v63 + v9);
    v14 = v13 >> 5;
    if (v13 >> 5 <= 1)
    {
      if (v14)
      {
        if (v14 != 1)
        {
          goto LABEL_3;
        }

        if ((v13 & 1) == 0)
        {
          v15 = &type metadata for JobSchedulingPriority;
          goto LABEL_37;
        }

        v16 = &type metadata for NSecTimestamp;
      }

      else
      {
        if (!*(v63 + v9))
        {
          goto LABEL_31;
        }

        if (v13 != 1)
        {
          if ([v4 v11[463]])
          {
            goto LABEL_3;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF40, &unk_1CF9FE780);
          if ([v4 v11[463]])
          {
            goto LABEL_75;
          }

          if (swift_dynamicCastMetatype())
          {
            goto LABEL_74;
          }

          v38 = sub_1CF9E5688();
          v39 = *(v38 + 48);
          v40 = *(v38 + 52);
          swift_allocObject();
          sub_1CF9E5678();
          v41 = [v4 dataAtIndex_];
          v42 = sub_1CF9E5B88();
          v44 = v43;

          sub_1CEFCCCEC(&qword_1EDEA6218, &unk_1EC4BFF40, &unk_1CF9FE780);
          sub_1CF9E5668();
          if (v3)
          {
            goto LABEL_68;
          }

          sub_1CEFE4714(v42, v44);

          v18 = *&v64[0];
          v19 = type metadata accessor for Continuation();
LABEL_55:
          *(&v66 + 1) = v19;
          *&v65 = v18;
          goto LABEL_39;
        }

        v16 = &type metadata for JobWaitCondition;
      }

      *(&v66 + 1) = v16;
      v20 = [v4 longAtIndex_];
      goto LABEL_38;
    }

    if (v14 == 4)
    {
      if (v13 != 129 || ([v4 v11[463]] & 1) != 0)
      {
        goto LABEL_3;
      }

      v17 = [v4 integerAtIndex_];
      if (!v17)
      {
LABEL_2:
        v11 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
LABEL_3:
        v65 = 0u;
        v66 = 0u;
        sub_1CEFCCC44(&v65, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        goto LABEL_4;
      }

      v18 = [objc_opt_self() domainVersionWithVersion_];
      v19 = sub_1CEFD57E0(0, &qword_1EDEAB580, 0x1E69674E0);
      goto LABEL_55;
    }

    if (v14 != 3)
    {
      if (v14 != 2)
      {
        goto LABEL_3;
      }

      if (*(v63 + v9) > 0x41u)
      {
        if (v13 == 66)
        {
          type metadata accessor for NSFileProviderItemIdentifier(0);
          *(&v66 + 1) = v45;
          v20 = [v4 stringAtIndex_];
          if (!v20)
          {
            _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v46 = sub_1CF9E6888();

            v20 = v46;
          }

          goto LABEL_38;
        }

        if (v13 != 67)
        {
          goto LABEL_3;
        }

        v20 = [v4 unsignedLongAtIndex_];
        v21 = MEMORY[0x1E69E6810];
      }

      else
      {
        if (v13 != 64)
        {
          if (v13 != 65)
          {
            goto LABEL_2;
          }

          v15 = &type metadata for JobReason;
LABEL_37:
          *(&v66 + 1) = v15;
          v20 = [v4 unsignedLongAtIndex_];
LABEL_38:
          *&v65 = v20;
          goto LABEL_39;
        }

LABEL_31:
        v20 = [v4 longAtIndex_];
        v21 = MEMORY[0x1E69E6530];
      }

      *(&v66 + 1) = v21;
      goto LABEL_38;
    }

    if (v13 == 97)
    {
      *(&v66 + 1) = &type metadata for Filename;
      v34 = [v4 stringAtIndex_];
      v35 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v37 = v36;

      *&v65 = v35;
      *(&v65 + 1) = v37;
    }

    else
    {
      if (v13 != 98)
      {
        goto LABEL_3;
      }

      if ([v4 v11[463]])
      {
        memset(v64, 0, 41);
LABEL_64:

        goto LABEL_3;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEA00, &qword_1CF9FEFF0);
      if ([v4 v11[463]])
      {
LABEL_75:
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_74;
      }

      v47 = sub_1CF9E5688();
      v48 = *(v47 + 48);
      v49 = *(v47 + 52);
      swift_allocObject();
      sub_1CF9E5678();
      v50 = [v4 dataAtIndex_];
      v42 = sub_1CF9E5B88();
      v44 = v51;

      sub_1CEFCCCEC(&qword_1EC4BEA08, &qword_1EC4BEA00, &qword_1CF9FEFF0);
      sub_1CF9E5668();
      if (v3)
      {
LABEL_68:
        sub_1CEFE4714(v42, v44);
      }

      sub_1CEFE4714(v42, v44);

      v52 = *(&v64[1] + 1);
      if (!*(&v64[1] + 1))
      {
        v4 = v62;
        v11 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
        goto LABEL_64;
      }

      *(&v66 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEA00, &qword_1CF9FEFF0);
      v53 = swift_allocObject();
      *&v65 = v53;
      v54 = BYTE8(v64[0]);
      v55 = *&v64[1];
      v56 = *&v64[2];
      v57 = BYTE8(v64[2]);
      *(v53 + 16) = *&v64[0];
      *(v53 + 24) = v54;
      *(v53 + 32) = v55;
      *(v53 + 40) = v52;
      *(v53 + 48) = v56;
      *(v53 + 56) = v57;
    }

LABEL_39:
    sub_1CEFE9EB8(&v65, v67);
    sub_1CEFD1104(v67, v64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v65 = v8;
    v23 = sub_1CF7BFB60(v13);
    v25 = v8[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_71;
    }

    v29 = v24;
    if (v8[3] >= v28)
    {
      v11 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v58 = v23;
        sub_1CF7D1634();
        v11 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
        v23 = v58;
      }

      v4 = v62;
      v8 = v65;
      if (v29)
      {
        goto LABEL_48;
      }
    }

    else
    {
      sub_1CF7C8288(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_1CF7BFB60(v13);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_73;
      }

      v4 = v62;
      v11 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
      v8 = v65;
      if (v29)
      {
LABEL_48:
        v33 = (v8[7] + 32 * v23);
        __swift_destroy_boxed_opaque_existential_1(v33);
        sub_1CEFE9EB8(v64, v33);
        __swift_destroy_boxed_opaque_existential_1(v67);
        goto LABEL_4;
      }
    }

    v8[(v23 >> 6) + 8] |= 1 << v23;
    *(v8[6] + v23) = v13;
    sub_1CEFE9EB8(v64, (v8[7] + 32 * v23));
    __swift_destroy_boxed_opaque_existential_1(v67);
    v31 = v8[2];
    v27 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v27)
    {
      goto LABEL_72;
    }

    v8[2] = v32;
LABEL_4:
    if (++v9 == 0x80000000)
    {
      goto LABEL_70;
    }
  }

  v59 = sub_1CF2054B0(v8);
  if (v3)
  {
  }

  v61 = v59;

  return v61;
}

uint64_t sub_1CF242BD4(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  v63 = a3;
  v7 = sub_1CF9E5248();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v59 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E5268();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a2;
  v14 = [a2 columns];
  v15 = sub_1CF1D9F60();
  v16 = MEMORY[0x1D38688F0](v14, &type metadata for JobSQLFields, MEMORY[0x1E69E7CA0] + 8, v15);
  v17 = *(a1 + 16);
  if (v17)
  {
    v56 = v11;
    v57 = v10;
    v18 = 0;
    v62 = a1 + 32;
    do
    {
      v19 = (v63 + v18);
      if (__OFADD__(v63, v18))
      {
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        sub_1CF9E51B8();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF24D0AC();
        v54 = v58;
        v55 = v57;
        sub_1CF9E57D8();
        sub_1CF9E50D8();
        (*(v56 + 8))(v54, v55);
        swift_willThrow();
        __swift_deallocate_boxed_opaque_existential_0(&v64);
      }

      v20 = *(v62 + v18);
      v21 = v20 >> 5;
      if (v20 >> 5 > 1)
      {
        if (v21 == 4)
        {
          if (v20 == 129 && ([v61 isNullAtIndex_] & 1) == 0)
          {
            v26 = [v61 integerAtIndex_];
            if (v26)
            {
              v27 = [objc_opt_self() domainVersionWithVersion_];
              v28 = sub_1CEFD57E0(0, &qword_1EDEAB580, 0x1E69674E0);
              goto LABEL_43;
            }
          }
        }

        else if (v21 == 2)
        {
          switch(v20)
          {
            case '@':
              goto LABEL_25;
            case 'A':
              v29 = &type metadata for JobReason;
LABEL_30:
              *(&v65 + 1) = v29;
              v25 = [v61 unsignedLongAtIndex_];
LABEL_31:
              *&v64 = v25;
              goto LABEL_32;
            case 'B':
              *(&v65 + 1) = &type metadata for VFSItemID;
              v23 = [v61 longAtIndex_];
              if (v23 == 0x8000000000000000)
              {
                LOBYTE(v24) = 2;
                v23 = 1;
              }

              else if (v23)
              {
                if ((v23 & 0x8000000000000000) != 0)
                {
                  v23 = -v23;
                  v24 = HIDWORD(v23);
                  if (HIDWORD(v23))
                  {
                    goto LABEL_61;
                  }
                }

                else
                {
                  LOBYTE(v24) = 1;
                }
              }

              else
              {
                LOBYTE(v24) = 2;
              }

              *&v64 = v23;
              BYTE8(v64) = v24;
              goto LABEL_32;
          }
        }
      }

      else if (v21)
      {
        if (v21 == 1)
        {
          if ((v20 & 1) == 0)
          {
            v29 = &type metadata for JobSchedulingPriority;
            goto LABEL_30;
          }

          v22 = &type metadata for NSecTimestamp;
          goto LABEL_20;
        }
      }

      else
      {
        if (!*(v62 + v18))
        {
LABEL_25:
          v25 = [v61 longAtIndex_];
          *(&v65 + 1) = MEMORY[0x1E69E6530];
          goto LABEL_31;
        }

        if (v20 == 1)
        {
          v22 = &type metadata for JobWaitCondition;
LABEL_20:
          *(&v65 + 1) = v22;
          v25 = [v61 longAtIndex_];
          goto LABEL_31;
        }

        if (([v61 isNullAtIndex_] & 1) == 0)
        {
          v60 = v4;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF40, &unk_1CF9FE780);
          if ([v61 isNullAtIndex_])
          {
            sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
          }

          if (swift_dynamicCastMetatype())
          {
            goto LABEL_64;
          }

          v40 = sub_1CF9E5688();
          v41 = *(v40 + 48);
          v42 = *(v40 + 52);
          swift_allocObject();
          sub_1CF9E5678();
          v43 = [v61 dataAtIndex_];
          v44 = sub_1CF9E5B88();
          v46 = v45;

          sub_1CEFCCCEC(&qword_1EDEA6218, &unk_1EC4BFF40, &unk_1CF9FE780);
          v47 = v60;
          sub_1CF9E5668();
          v4 = v47;
          if (v47)
          {
            sub_1CEFE4714(v44, v46);
          }

          sub_1CEFE4714(v44, v46);

          v27 = v67;
          v28 = type metadata accessor for Continuation();
LABEL_43:
          *(&v65 + 1) = v28;
          *&v64 = v27;
LABEL_32:
          sub_1CEFE9EB8(&v64, v66);
          sub_1CEFD1104(v66, &v64);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v67 = v16;
          v31 = sub_1CF7BFB60(v20);
          v33 = v16[2];
          v34 = (v32 & 1) == 0;
          v35 = __OFADD__(v33, v34);
          v36 = v33 + v34;
          if (v35)
          {
            goto LABEL_60;
          }

          v37 = v32;
          if (v16[3] < v36)
          {
            sub_1CF7C8288(v36, isUniquelyReferenced_nonNull_native);
            v31 = sub_1CF7BFB60(v20);
            if ((v37 & 1) != (v38 & 1))
            {
              goto LABEL_63;
            }

            goto LABEL_37;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_37:
            v16 = v67;
            if ((v37 & 1) == 0)
            {
              goto LABEL_50;
            }
          }

          else
          {
            v48 = v31;
            sub_1CF7D1634();
            v31 = v48;
            v16 = v67;
            if ((v37 & 1) == 0)
            {
LABEL_50:
              v16[(v31 >> 6) + 8] |= 1 << v31;
              *(v16[6] + v31) = v20;
              sub_1CEFE9EB8(&v64, (v16[7] + 32 * v31));
              __swift_destroy_boxed_opaque_existential_1(v66);
              v49 = v16[2];
              v35 = __OFADD__(v49, 1);
              v50 = v49 + 1;
              if (v35)
              {
                __break(1u);
LABEL_63:
                sub_1CF9E8108();
                __break(1u);
LABEL_64:
                sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
              }

              v16[2] = v50;
              goto LABEL_52;
            }
          }

          v39 = (v16[7] + 32 * v31);
          __swift_destroy_boxed_opaque_existential_1(v39);
          sub_1CEFE9EB8(&v64, v39);
          __swift_destroy_boxed_opaque_existential_1(v66);
          goto LABEL_52;
        }
      }

      v64 = 0u;
      v65 = 0u;
      sub_1CEFCCC44(&v64, &unk_1EC4BEC50, &qword_1CF9FB4B0);
LABEL_52:
      if (v18 == 0x7FFFFFFF)
      {
        goto LABEL_59;
      }

      ++v18;
    }

    while (v17 != v18);
  }

  v51 = sub_1CF20520C(v16);
  if (v4)
  {
  }

  v53 = v51;

  return v53;
}

uint64_t sub_1CF2432B8(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  v64 = a3;
  v7 = sub_1CF9E5248();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v60 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E5268();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a2;
  v14 = [a2 columns];
  v15 = sub_1CF1D9F60();
  v16 = MEMORY[0x1D38688F0](v14, &type metadata for JobSQLFields, MEMORY[0x1E69E7CA0] + 8, v15);
  v17 = *(a1 + 16);
  if (v17)
  {
    v57 = v11;
    v58 = v10;
    v18 = 0;
    v63 = a1 + 32;
    while (1)
    {
      v19 = (v64 + v18);
      if (__OFADD__(v64, v18))
      {
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        sub_1CF9E51B8();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF24D0AC();
        v55 = v59;
        v56 = v58;
        sub_1CF9E57D8();
        sub_1CF9E50D8();
        (*(v57 + 8))(v55, v56);
        swift_willThrow();
        __swift_deallocate_boxed_opaque_existential_0(&v65);
      }

      v20 = *(v63 + v18);
      v21 = v20 >> 5;
      if (v20 >> 5 <= 1)
      {
        break;
      }

      if (v21 == 4)
      {
        if (v20 == 128)
        {
          v22 = &type metadata for Fields;
LABEL_31:
          *(&v66 + 1) = v22;
          v27 = [v62 longAtIndex_];
          goto LABEL_32;
        }

        if (v20 != 129 || ([v62 isNullAtIndex_] & 1) != 0 || (v24 = objc_msgSend(v62, sel_integerAtIndex_, v19)) == 0)
        {
LABEL_41:
          v65 = 0u;
          v66 = 0u;
          sub_1CEFCCC44(&v65, &unk_1EC4BEC50, &qword_1CF9FB4B0);
          goto LABEL_58;
        }

        v25 = [objc_opt_self() domainVersionWithVersion_];
        v26 = sub_1CEFD57E0(0, &qword_1EDEAB580, 0x1E69674E0);
LABEL_49:
        *(&v66 + 1) = v26;
        *&v65 = v25;
        goto LABEL_33;
      }

      if (v21 != 2)
      {
        goto LABEL_41;
      }

      if (*(v63 + v18) <= 0x41u)
      {
        if (v20 != 64)
        {
          if (v20 != 65)
          {
            goto LABEL_41;
          }

          v23 = &type metadata for JobReason;
          goto LABEL_25;
        }

LABEL_23:
        v27 = [v62 longAtIndex_];
        v28 = MEMORY[0x1E69E6530];
LABEL_29:
        *(&v66 + 1) = v28;
LABEL_32:
        *&v65 = v27;
        goto LABEL_33;
      }

      if (v20 != 66)
      {
        if (v20 != 67)
        {
          goto LABEL_41;
        }

        v27 = [v62 unsignedLongAtIndex_];
        v28 = MEMORY[0x1E69E6810];
        goto LABEL_29;
      }

      *(&v66 + 1) = &type metadata for VFSItemID;
      v39 = [v62 longAtIndex_];
      if (v39 == 0x8000000000000000)
      {
        LOBYTE(v40) = 2;
        v39 = 1;
      }

      else if (v39)
      {
        if ((v39 & 0x8000000000000000) != 0)
        {
          v39 = -v39;
          v40 = HIDWORD(v39);
          if (HIDWORD(v39))
          {
            goto LABEL_67;
          }
        }

        else
        {
          LOBYTE(v40) = 1;
        }
      }

      else
      {
        LOBYTE(v40) = 2;
      }

      *&v65 = v39;
      BYTE8(v65) = v40;
LABEL_33:
      sub_1CEFE9EB8(&v65, v67);
      sub_1CEFD1104(v67, &v65);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v16;
      v30 = sub_1CF7BFB60(v20);
      v32 = v16[2];
      v33 = (v31 & 1) == 0;
      v34 = __OFADD__(v32, v33);
      v35 = v32 + v33;
      if (v34)
      {
        goto LABEL_66;
      }

      v36 = v31;
      if (v16[3] >= v35)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v49 = v30;
          sub_1CF7D1634();
          v30 = v49;
          v16 = v68;
          if ((v36 & 1) == 0)
          {
LABEL_56:
            v16[(v30 >> 6) + 8] |= 1 << v30;
            *(v16[6] + v30) = v20;
            sub_1CEFE9EB8(&v65, (v16[7] + 32 * v30));
            __swift_destroy_boxed_opaque_existential_1(v67);
            v50 = v16[2];
            v34 = __OFADD__(v50, 1);
            v51 = v50 + 1;
            if (v34)
            {
              __break(1u);
LABEL_69:
              sub_1CF9E8108();
              __break(1u);
LABEL_70:
              sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
            }

            v16[2] = v51;
            goto LABEL_58;
          }

          goto LABEL_39;
        }
      }

      else
      {
        sub_1CF7C8288(v35, isUniquelyReferenced_nonNull_native);
        v30 = sub_1CF7BFB60(v20);
        if ((v36 & 1) != (v37 & 1))
        {
          goto LABEL_69;
        }
      }

      v16 = v68;
      if ((v36 & 1) == 0)
      {
        goto LABEL_56;
      }

LABEL_39:
      v38 = (v16[7] + 32 * v30);
      __swift_destroy_boxed_opaque_existential_1(v38);
      sub_1CEFE9EB8(&v65, v38);
      __swift_destroy_boxed_opaque_existential_1(v67);
LABEL_58:
      if (v18 == 0x7FFFFFFF)
      {
        goto LABEL_65;
      }

      if (v17 == ++v18)
      {
        goto LABEL_60;
      }
    }

    if (v21)
    {
      if (v21 != 1)
      {
        goto LABEL_41;
      }

      if (v20)
      {
        v22 = &type metadata for NSecTimestamp;
        goto LABEL_31;
      }

      v23 = &type metadata for JobSchedulingPriority;
LABEL_25:
      *(&v66 + 1) = v23;
      v27 = [v62 unsignedLongAtIndex_];
      goto LABEL_32;
    }

    if (!*(v63 + v18))
    {
      goto LABEL_23;
    }

    if (v20 == 1)
    {
      v22 = &type metadata for JobWaitCondition;
      goto LABEL_31;
    }

    if ([v62 isNullAtIndex_])
    {
      goto LABEL_41;
    }

    v61 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF40, &unk_1CF9FE780);
    if ([v62 isNullAtIndex_])
    {
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
    }

    if (swift_dynamicCastMetatype())
    {
      goto LABEL_70;
    }

    v41 = sub_1CF9E5688();
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    swift_allocObject();
    sub_1CF9E5678();
    v44 = [v62 dataAtIndex_];
    v45 = sub_1CF9E5B88();
    v47 = v46;

    sub_1CEFCCCEC(&qword_1EDEA6218, &unk_1EC4BFF40, &unk_1CF9FE780);
    v48 = v61;
    sub_1CF9E5668();
    v4 = v48;
    if (v48)
    {
      sub_1CEFE4714(v45, v47);
    }

    sub_1CEFE4714(v45, v47);

    v25 = v68;
    v26 = type metadata accessor for Continuation();
    goto LABEL_49;
  }

LABEL_60:
  v52 = sub_1CF204AF4(v16);
  if (v4)
  {
  }

  v54 = v52;

  return v54;
}

uint64_t sub_1CF2439E0(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  v65 = a3;
  v7 = sub_1CF9E5248();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v61 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E5268();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a2;
  v14 = [a2 columns];
  v15 = sub_1CF1D9F60();
  v16 = MEMORY[0x1D38688F0](v14, &type metadata for JobSQLFields, MEMORY[0x1E69E7CA0] + 8, v15);
  v17 = *(a1 + 16);
  if (v17)
  {
    v58 = v11;
    v59 = v10;
    v18 = 0;
    v64 = a1 + 32;
    do
    {
      v19 = (v65 + v18);
      if (__OFADD__(v65, v18))
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        sub_1CF9E51B8();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF24D0AC();
        v56 = v60;
        v57 = v59;
        sub_1CF9E57D8();
        sub_1CF9E50D8();
        (*(v58 + 8))(v56, v57);
        swift_willThrow();
        __swift_deallocate_boxed_opaque_existential_0(&v66);
      }

      v20 = *(v64 + v18);
      v21 = v20 >> 5;
      if (v20 >> 5 > 1)
      {
        if (v21 == 4)
        {
          if (v20 == 129 && ([v63 isNullAtIndex_] & 1) == 0)
          {
            v25 = [v63 integerAtIndex_];
            if (v25)
            {
              v26 = [objc_opt_self() domainVersionWithVersion_];
              v27 = sub_1CEFD57E0(0, &qword_1EDEAB580, 0x1E69674E0);
              goto LABEL_40;
            }
          }
        }

        else if (v21 == 2)
        {
          if (*(v64 + v18) > 0x41u)
          {
            if (v20 == 66)
            {
              *(&v67 + 1) = &type metadata for VFSItemID;
              v30 = [v63 longAtIndex_];
              if (v30 == 0x8000000000000000)
              {
                LOBYTE(v31) = 2;
                v30 = 1;
              }

              else if (v30)
              {
                if ((v30 & 0x8000000000000000) != 0)
                {
                  v30 = -v30;
                  v31 = HIDWORD(v30);
                  if (HIDWORD(v30))
                  {
                    goto LABEL_65;
                  }
                }

                else
                {
                  LOBYTE(v31) = 1;
                }
              }

              else
              {
                LOBYTE(v31) = 2;
              }

              *&v66 = v30;
              BYTE8(v66) = v31;
              goto LABEL_46;
            }

            if (v20 == 67)
            {
              v28 = [v63 unsignedLongAtIndex_];
              v29 = MEMORY[0x1E69E6810];
              goto LABEL_30;
            }
          }

          else
          {
            if (v20 == 64)
            {
              goto LABEL_23;
            }

            if (v20 == 65)
            {
              v23 = &type metadata for JobReason;
              goto LABEL_25;
            }
          }
        }
      }

      else if (v21)
      {
        if (v21 == 1)
        {
          if (v20)
          {
            v22 = &type metadata for NSecTimestamp;
            goto LABEL_18;
          }

          v23 = &type metadata for JobSchedulingPriority;
LABEL_25:
          *(&v67 + 1) = v23;
          v24 = [v63 unsignedLongAtIndex_];
LABEL_26:
          *&v66 = v24;
          goto LABEL_46;
        }
      }

      else
      {
        if (!*(v64 + v18))
        {
LABEL_23:
          v28 = [v63 longAtIndex_];
          v29 = MEMORY[0x1E69E6530];
LABEL_30:
          *(&v67 + 1) = v29;
          *&v66 = v28;
          goto LABEL_46;
        }

        if (v20 == 1)
        {
          v22 = &type metadata for JobWaitCondition;
LABEL_18:
          *(&v67 + 1) = v22;
          v24 = [v63 longAtIndex_];
          goto LABEL_26;
        }

        if (([v63 isNullAtIndex_] & 1) == 0)
        {
          v62 = v4;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF40, &unk_1CF9FE780);
          if ([v63 isNullAtIndex_])
          {
            sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
          }

          if (swift_dynamicCastMetatype())
          {
            goto LABEL_68;
          }

          v32 = sub_1CF9E5688();
          v33 = *(v32 + 48);
          v34 = *(v32 + 52);
          swift_allocObject();
          sub_1CF9E5678();
          v35 = [v63 dataAtIndex_];
          v36 = sub_1CF9E5B88();
          v38 = v37;

          sub_1CEFCCCEC(&qword_1EDEA6218, &unk_1EC4BFF40, &unk_1CF9FE780);
          v39 = v62;
          sub_1CF9E5668();
          v4 = v39;
          if (v39)
          {
            sub_1CEFE4714(v36, v38);
          }

          sub_1CEFE4714(v36, v38);

          v26 = v69;
          v27 = type metadata accessor for Continuation();
LABEL_40:
          *(&v67 + 1) = v27;
          *&v66 = v26;
LABEL_46:
          sub_1CEFE9EB8(&v66, v68);
          sub_1CEFD1104(v68, &v66);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v69 = v16;
          v41 = sub_1CF7BFB60(v20);
          v43 = v16[2];
          v44 = (v42 & 1) == 0;
          v45 = __OFADD__(v43, v44);
          v46 = v43 + v44;
          if (v45)
          {
            goto LABEL_64;
          }

          v47 = v42;
          if (v16[3] < v46)
          {
            sub_1CF7C8288(v46, isUniquelyReferenced_nonNull_native);
            v41 = sub_1CF7BFB60(v20);
            if ((v47 & 1) != (v48 & 1))
            {
              goto LABEL_67;
            }

            goto LABEL_51;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_51:
            v16 = v69;
            if ((v47 & 1) == 0)
            {
              goto LABEL_54;
            }
          }

          else
          {
            v50 = v41;
            sub_1CF7D1634();
            v41 = v50;
            v16 = v69;
            if ((v47 & 1) == 0)
            {
LABEL_54:
              v16[(v41 >> 6) + 8] |= 1 << v41;
              *(v16[6] + v41) = v20;
              sub_1CEFE9EB8(&v66, (v16[7] + 32 * v41));
              __swift_destroy_boxed_opaque_existential_1(v68);
              v51 = v16[2];
              v45 = __OFADD__(v51, 1);
              v52 = v51 + 1;
              if (v45)
              {
                __break(1u);
LABEL_67:
                sub_1CF9E8108();
                __break(1u);
LABEL_68:
                sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
              }

              v16[2] = v52;
              goto LABEL_56;
            }
          }

          v49 = (v16[7] + 32 * v41);
          __swift_destroy_boxed_opaque_existential_1(v49);
          sub_1CEFE9EB8(&v66, v49);
          __swift_destroy_boxed_opaque_existential_1(v68);
          goto LABEL_56;
        }
      }

      v66 = 0u;
      v67 = 0u;
      sub_1CEFCCC44(&v66, &unk_1EC4BEC50, &qword_1CF9FB4B0);
LABEL_56:
      if (v18 == 0x7FFFFFFF)
      {
        goto LABEL_63;
      }

      ++v18;
    }

    while (v17 != v18);
  }

  v53 = sub_1CF2044E8(v16);
  if (v4)
  {
  }

  v55 = v53;

  return v55;
}

uint64_t sub_1CF2440F8(uint64_t a1, void *a2, int a3)
{
  v62 = a3;
  v5 = sub_1CF9E5248();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E5268();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a2;
  v14 = [a2 columns];
  v15 = sub_1CF1D9F60();
  v16 = MEMORY[0x1D38688F0](v14, &type metadata for JobSQLFields, MEMORY[0x1E69E7CA0] + 8, v15);
  v17 = *(a1 + 16);
  if (v17)
  {
    v55 = v8;
    v56 = v13;
    v57 = v10;
    v58 = v9;
    v18 = 0;
    v61 = a1 + 32;
    do
    {
      v19 = (v62 + v18);
      if (__OFADD__(v62, v18))
      {
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        sub_1CF9E8108();
        __break(1u);
LABEL_63:
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
      }

      v20 = *(v61 + v18);
      v21 = v20 >> 5;
      if (v20 >> 5 > 1)
      {
        if (v21 == 3)
        {
          if (v20 == 96)
          {
            *(&v64 + 1) = &type metadata for VFSItemID;
            v23 = [v60 longAtIndex_];
            if (v23 != 0x8000000000000000)
            {
              if (v23)
              {
                goto LABEL_16;
              }

              goto LABEL_25;
            }

            goto LABEL_33;
          }
        }

        else if (v21 == 2)
        {
          switch(v20)
          {
            case '@':
              goto LABEL_26;
            case 'A':
              v26 = &type metadata for JobReason;
LABEL_31:
              *(&v64 + 1) = v26;
              v25 = [v60 unsignedLongAtIndex_];
LABEL_32:
              *&v63 = v25;
LABEL_40:
              sub_1CEFE9EB8(&v63, v65);
              sub_1CEFD1104(v65, &v63);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v66 = v16;
              v37 = sub_1CF7BFB60(v20);
              v39 = v16[2];
              v40 = (v38 & 1) == 0;
              v41 = __OFADD__(v39, v40);
              v42 = v39 + v40;
              if (v41)
              {
                goto LABEL_60;
              }

              v43 = v38;
              if (v16[3] < v42)
              {
                sub_1CF7C8288(v42, isUniquelyReferenced_nonNull_native);
                v37 = sub_1CF7BFB60(v20);
                if ((v43 & 1) != (v44 & 1))
                {
                  goto LABEL_62;
                }

                goto LABEL_45;
              }

              if (isUniquelyReferenced_nonNull_native)
              {
LABEL_45:
                v16 = v66;
                if ((v43 & 1) == 0)
                {
                  goto LABEL_48;
                }
              }

              else
              {
                v46 = v37;
                sub_1CF7D1634();
                v37 = v46;
                v16 = v66;
                if ((v43 & 1) == 0)
                {
LABEL_48:
                  v16[(v37 >> 6) + 8] |= 1 << v37;
                  *(v16[6] + v37) = v20;
                  sub_1CEFE9EB8(&v63, (v16[7] + 32 * v37));
                  __swift_destroy_boxed_opaque_existential_1(v65);
                  v47 = v16[2];
                  v41 = __OFADD__(v47, 1);
                  v48 = v47 + 1;
                  if (v41)
                  {
                    goto LABEL_61;
                  }

                  v16[2] = v48;
                  goto LABEL_50;
                }
              }

              v45 = (v16[7] + 32 * v37);
              __swift_destroy_boxed_opaque_existential_1(v45);
              sub_1CEFE9EB8(&v63, v45);
              __swift_destroy_boxed_opaque_existential_1(v65);
              goto LABEL_50;
            case 'B':
              *(&v64 + 1) = &type metadata for VFSItemID;
              v23 = [v60 longAtIndex_];
              if (v23 != 0x8000000000000000)
              {
                if (v23)
                {
LABEL_16:
                  if ((v23 & 0x8000000000000000) != 0)
                  {
                    v23 = -v23;
                    v24 = HIDWORD(v23);
                    if (HIDWORD(v23))
                    {
                      sub_1CF9E51B8();
                      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
                      sub_1CF24D0AC();
                      v53 = v56;
                      v54 = v58;
                      sub_1CF9E57D8();
                      sub_1CF9E50D8();
                      (*(v57 + 8))(v53, v54);
                      swift_willThrow();
                      __swift_deallocate_boxed_opaque_existential_0(&v63);
                    }
                  }

                  else
                  {
                    LOBYTE(v24) = 1;
                  }

                  goto LABEL_39;
                }

LABEL_25:
                LOBYTE(v24) = 2;
LABEL_39:
                *&v63 = v23;
                BYTE8(v63) = v24;
                goto LABEL_40;
              }

LABEL_33:
              LOBYTE(v24) = 2;
              v23 = 1;
              goto LABEL_39;
          }
        }
      }

      else if (v21)
      {
        if (v21 == 1)
        {
          if ((v20 & 1) == 0)
          {
            v26 = &type metadata for JobSchedulingPriority;
            goto LABEL_31;
          }

          v22 = &type metadata for NSecTimestamp;
          goto LABEL_21;
        }
      }

      else
      {
        if (!*(v61 + v18))
        {
LABEL_26:
          v25 = [v60 longAtIndex_];
          *(&v64 + 1) = MEMORY[0x1E69E6530];
          goto LABEL_32;
        }

        if (v20 == 1)
        {
          v22 = &type metadata for JobWaitCondition;
LABEL_21:
          *(&v64 + 1) = v22;
          v25 = [v60 longAtIndex_];
          goto LABEL_32;
        }

        if (([v60 isNullAtIndex_] & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF40, &unk_1CF9FE780);
          if ([v60 isNullAtIndex_])
          {
            sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
          }

          if (swift_dynamicCastMetatype())
          {
            goto LABEL_63;
          }

          v27 = sub_1CF9E5688();
          v28 = *(v27 + 48);
          v29 = *(v27 + 52);
          swift_allocObject();
          sub_1CF9E5678();
          v30 = [v60 dataAtIndex_];
          v31 = sub_1CF9E5B88();
          v33 = v32;

          sub_1CEFCCCEC(&qword_1EDEA6218, &unk_1EC4BFF40, &unk_1CF9FE780);
          v34 = v59;
          sub_1CF9E5668();
          v59 = v34;
          if (v34)
          {
            sub_1CEFE4714(v31, v33);
          }

          sub_1CEFE4714(v31, v33);

          v35 = v66;
          *(&v64 + 1) = type metadata accessor for Continuation();
          *&v63 = v35;
          goto LABEL_40;
        }
      }

      v63 = 0u;
      v64 = 0u;
      sub_1CEFCCC44(&v63, &unk_1EC4BEC50, &qword_1CF9FB4B0);
LABEL_50:
      if (v18 == 0x7FFFFFFF)
      {
        goto LABEL_59;
      }

      ++v18;
    }

    while (v17 != v18);
  }

  v49 = v59;
  v50 = sub_1CF205E98(v16);
  if (v49)
  {
  }

  v52 = v50;

  return v52;
}

uint64_t sub_1CF244790(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  v85 = a3;
  v7 = sub_1CF9E5248();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v74 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E5268();
  v75 = *(v10 - 8);
  v76 = v10;
  v11 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v73 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a2 columns];
  v14 = sub_1CF1D9F60();
  v15 = v13;
  v16 = a2;
  v17 = MEMORY[0x1D38688F0](v15, &type metadata for JobSQLFields, MEMORY[0x1E69E7CA0] + 8, v14);
  v18 = 0;
  v78 = a2;
  v79 = a1 + 32;
  v19 = *(a1 + 16);
  v20 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
  while (1)
  {
    if (v19 == v18)
    {
      v67 = sub_1CF205860(v17);
      if (!v4)
      {
        v69 = v67;

        return v69;
      }
    }

    v21 = (v85 + v18);
    if (__OFADD__(v85, v18))
    {
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      sub_1CF9E51B8();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF24D0AC();
      v70 = v73;
      v71 = v76;
      sub_1CF9E57D8();
      sub_1CF9E50D8();
      (*(v75 + 8))(v70, v71);
      swift_willThrow();
      __swift_deallocate_boxed_opaque_existential_0(&v82);
    }

    v22 = *(v79 + v18);
    v23 = v22 >> 5;
    if (v22 >> 5 <= 1)
    {
      if (v23)
      {
        if (v23 != 1)
        {
          goto LABEL_3;
        }

        if ((v22 & 1) == 0)
        {
          v24 = &type metadata for JobSchedulingPriority;
LABEL_37:
          *(&v83 + 1) = v24;
          v29 = [v16 unsignedLongAtIndex_];
          goto LABEL_38;
        }

        v25 = &type metadata for NSecTimestamp;
      }

      else
      {
        if (!*(v79 + v18))
        {
          goto LABEL_31;
        }

        if (v22 != 1)
        {
          if ([v16 v20[463]])
          {
            goto LABEL_3;
          }

          v77 = v4;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF40, &unk_1CF9FE780);
          if ([v16 v20[463]])
          {
            goto LABEL_82;
          }

          if (swift_dynamicCastMetatype())
          {
            goto LABEL_81;
          }

          v47 = sub_1CF9E5688();
          v48 = *(v47 + 48);
          v49 = *(v47 + 52);
          swift_allocObject();
          sub_1CF9E5678();
          v50 = [v16 dataAtIndex_];
          v51 = sub_1CF9E5B88();
          v53 = v52;

          sub_1CEFCCCEC(&qword_1EDEA6218, &unk_1EC4BFF40, &unk_1CF9FE780);
          v54 = v77;
          sub_1CF9E5668();
          v4 = v54;
          if (v54)
          {
            break;
          }

          sub_1CEFE4714(v51, v53);

          v27 = v80;
          v28 = type metadata accessor for Continuation();
LABEL_55:
          *(&v83 + 1) = v28;
          *&v82 = v27;
          goto LABEL_39;
        }

        v25 = &type metadata for JobWaitCondition;
      }

      *(&v83 + 1) = v25;
      v29 = [v16 longAtIndex_];
LABEL_38:
      *&v82 = v29;
      goto LABEL_39;
    }

    if (v23 == 4)
    {
      if (v22 != 129 || ([v16 v20[463]] & 1) != 0)
      {
        goto LABEL_3;
      }

      v26 = [v16 integerAtIndex_];
      if (!v26)
      {
LABEL_2:
        v20 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
LABEL_3:
        v82 = 0u;
        v83 = 0u;
        sub_1CEFCCC44(&v82, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        goto LABEL_4;
      }

      v27 = [objc_opt_self() domainVersionWithVersion_];
      v28 = sub_1CEFD57E0(0, &qword_1EDEAB580, 0x1E69674E0);
      goto LABEL_55;
    }

    if (v23 != 3)
    {
      if (v23 != 2)
      {
        goto LABEL_3;
      }

      if (*(v79 + v18) > 0x41u)
      {
        if (v22 == 66)
        {
          *(&v83 + 1) = &type metadata for VFSItemID;
          v55 = [v16 longAtIndex_];
          if (v55 == 0x8000000000000000)
          {
            LOBYTE(v56) = 2;
            v55 = 1;
          }

          else if (v55)
          {
            if ((v55 & 0x8000000000000000) != 0)
            {
              v55 = -v55;
              v56 = HIDWORD(v55);
              if (HIDWORD(v55))
              {
                goto LABEL_79;
              }
            }

            else
            {
              LOBYTE(v56) = 1;
            }
          }

          else
          {
            LOBYTE(v56) = 2;
          }

          *&v82 = v55;
          BYTE8(v82) = v56;
          goto LABEL_39;
        }

        if (v22 != 67)
        {
          goto LABEL_3;
        }

        v29 = [v16 unsignedLongAtIndex_];
        v30 = MEMORY[0x1E69E6810];
        goto LABEL_35;
      }

      if (v22 != 64)
      {
        if (v22 != 65)
        {
          goto LABEL_2;
        }

        v24 = &type metadata for JobReason;
        goto LABEL_37;
      }

LABEL_31:
      v29 = [v16 longAtIndex_];
      v30 = MEMORY[0x1E69E6530];
LABEL_35:
      *(&v83 + 1) = v30;
      goto LABEL_38;
    }

    if (v22 == 97)
    {
      *(&v83 + 1) = &type metadata for Filename;
      v43 = [v16 stringAtIndex_];
      v44 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v46 = v45;

      *&v82 = v44;
      *(&v82 + 1) = v46;
      goto LABEL_39;
    }

    if (v22 != 98)
    {
      goto LABEL_3;
    }

    if ([v16 v20[463]])
    {
      v80 = 0u;
      v81 = 0u;
LABEL_68:
      sub_1CF24D058(0, *(&v80 + 1), v81, *(&v81 + 1));
      goto LABEL_3;
    }

    v77 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9E0, &qword_1CF9FEFB8);
    if ([v16 v20[463]])
    {
LABEL_82:
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
    }

    if (swift_dynamicCastMetatype())
    {
      goto LABEL_81;
    }

    v57 = sub_1CF9E5688();
    v58 = *(v57 + 48);
    v59 = *(v57 + 52);
    swift_allocObject();
    sub_1CF9E5678();
    v60 = [v16 dataAtIndex_];
    v51 = sub_1CF9E5B88();
    v53 = v61;

    sub_1CEFCCCEC(&qword_1EC4BE9E8, &qword_1EC4BE9E0, &qword_1CF9FEFB8);
    v62 = v77;
    sub_1CF9E5668();
    v4 = v62;
    if (v62)
    {
      break;
    }

    sub_1CEFE4714(v51, v53);

    v63 = v80;
    if (!v80)
    {
      v16 = v78;
      v20 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
      goto LABEL_68;
    }

    *(&v83 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9E0, &qword_1CF9FEFB8);
    v64 = swift_allocObject();
    *&v82 = v64;
    v65 = *(&v80 + 1);
    *(v64 + 16) = v63;
    *(v64 + 24) = v65;
    *(v64 + 32) = v81;
LABEL_39:
    sub_1CEFE9EB8(&v82, v84);
    sub_1CEFD1104(v84, &v82);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v80 = v17;
    v32 = sub_1CF7BFB60(v22);
    v34 = v17[2];
    v35 = (v33 & 1) == 0;
    v36 = __OFADD__(v34, v35);
    v37 = v34 + v35;
    if (v36)
    {
      goto LABEL_77;
    }

    v38 = v33;
    if (v17[3] >= v37)
    {
      v20 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v66 = v32;
        sub_1CF7D1634();
        v20 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
        v32 = v66;
      }

      v16 = v78;
      v17 = v80;
      if (v38)
      {
        goto LABEL_48;
      }
    }

    else
    {
      sub_1CF7C8288(v37, isUniquelyReferenced_nonNull_native);
      v32 = sub_1CF7BFB60(v22);
      if ((v38 & 1) != (v39 & 1))
      {
        sub_1CF9E8108();
        __break(1u);
LABEL_81:
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
      }

      v16 = v78;
      v20 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
      v17 = v80;
      if (v38)
      {
LABEL_48:
        v42 = (v17[7] + 32 * v32);
        __swift_destroy_boxed_opaque_existential_1(v42);
        sub_1CEFE9EB8(&v82, v42);
        __swift_destroy_boxed_opaque_existential_1(v84);
        goto LABEL_4;
      }
    }

    v17[(v32 >> 6) + 8] |= 1 << v32;
    *(v17[6] + v32) = v22;
    sub_1CEFE9EB8(&v82, (v17[7] + 32 * v32));
    __swift_destroy_boxed_opaque_existential_1(v84);
    v40 = v17[2];
    v36 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (v36)
    {
      goto LABEL_78;
    }

    v17[2] = v41;
LABEL_4:
    if (++v18 == 0x80000000)
    {
      goto LABEL_76;
    }
  }

  sub_1CEFE4714(v51, v53);
}

void *sub_1CF245094(void *a1, id a2, int a3)
{
  v7 = v4;
  v9 = [a2 columns];
  v10 = sub_1CF1D9F60();
  v11 = MEMORY[0x1D38688F0](v9, &type metadata for JobSQLFields, MEMORY[0x1E69E7CA0] + 8, v10);
  v12 = v11;
  v13 = a1[2];
  if (v13)
  {
    v14 = 0;
    v51 = a1 + 4;
    do
    {
      v15 = (a3 + v14);
      if (__OFADD__(a3, v14))
      {
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v5 = *(v51 + v14);
      v16 = v5 >> 5;
      if (v5 >> 5 > 1)
      {
        if (v16 == 4)
        {
          if (v5 == 129 && ([a2 isNullAtIndex_] & 1) == 0)
          {
            v22 = [a2 integerAtIndex_];
            if (v22)
            {
              v3 = [objc_opt_self() domainVersionWithVersion_];
              *(&v54 + 1) = sub_1CEFD57E0(0, &qword_1EDEAB580, 0x1E69674E0);
              *&v53 = v3;
              goto LABEL_31;
            }
          }
        }

        else if (v16 == 2)
        {
          switch(v5)
          {
            case '@':
              goto LABEL_24;
            case 'A':
              v23 = &type metadata for JobReason;
LABEL_29:
              *(&v54 + 1) = v23;
              v19 = [a2 unsignedLongAtIndex_];
LABEL_30:
              *&v53 = v19;
LABEL_31:
              sub_1CEFE9EB8(&v53, v55);
              sub_1CEFD1104(v55, &v53);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v56 = v12;
              a1 = v12;
              v24 = sub_1CF7BFB60(v5);
              v26 = v12[2];
              v27 = (v25 & 1) == 0;
              v28 = __OFADD__(v26, v27);
              v29 = v26 + v27;
              if (v28)
              {
                __break(1u);
                goto LABEL_57;
              }

              v15 = v25;
              if (v12[3] < v29)
              {
                sub_1CF7C8288(v29, isUniquelyReferenced_nonNull_native);
                a1 = v56;
                v24 = sub_1CF7BFB60(v5);
                if ((v15 & 1) != (v30 & 1))
                {
                  goto LABEL_59;
                }

                goto LABEL_36;
              }

              if (isUniquelyReferenced_nonNull_native)
              {
LABEL_36:
                v12 = v56;
                if ((v15 & 1) == 0)
                {
                  goto LABEL_43;
                }
              }

              else
              {
                a1 = &v56;
                v3 = v24;
                sub_1CF7D1634();
                v24 = v3;
                v12 = v56;
                if ((v15 & 1) == 0)
                {
LABEL_43:
                  v12[(v24 >> 6) + 8] |= 1 << v24;
                  *(v12[6] + v24) = v5;
                  sub_1CEFE9EB8(&v53, (v12[7] + 32 * v24));
                  v11 = __swift_destroy_boxed_opaque_existential_1(v55);
                  v38 = v12[2];
                  v28 = __OFADD__(v38, 1);
                  v39 = v38 + 1;
                  if (v28)
                  {
                    __break(1u);
LABEL_59:
                    sub_1CF9E8108();
                    __break(1u);
LABEL_60:
                    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
                  }

                  v12[2] = v39;
                  goto LABEL_45;
                }
              }

              v3 = (v12[7] + 32 * v24);
              __swift_destroy_boxed_opaque_existential_1(v3);
              sub_1CEFE9EB8(&v53, v3);
              v11 = __swift_destroy_boxed_opaque_existential_1(v55);
              goto LABEL_45;
            case 'B':
              type metadata accessor for NSFileProviderItemIdentifier(0);
              *(&v54 + 1) = v18;
              v19 = [a2 stringAtIndex_];
              if (v19)
              {
                goto LABEL_30;
              }

              _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v3 = v20;
              v21 = sub_1CF9E6888();

              *&v53 = v21;
              goto LABEL_31;
          }
        }
      }

      else if (v16)
      {
        if (v16 == 1)
        {
          if ((v5 & 1) == 0)
          {
            v23 = &type metadata for JobSchedulingPriority;
            goto LABEL_29;
          }

          v17 = &type metadata for NSecTimestamp;
          goto LABEL_19;
        }
      }

      else
      {
        if (!*(v51 + v14))
        {
LABEL_24:
          v19 = [a2 longAtIndex_];
          *(&v54 + 1) = MEMORY[0x1E69E6530];
          goto LABEL_30;
        }

        if (v5 == 1)
        {
          v17 = &type metadata for JobWaitCondition;
LABEL_19:
          *(&v54 + 1) = v17;
          v19 = [a2 longAtIndex_];
          goto LABEL_30;
        }

        if (([a2 isNullAtIndex_] & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF40, &unk_1CF9FE780);
          if ([a2 isNullAtIndex_])
          {
            sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
          }

          v49 = v7;
          if (swift_dynamicCastMetatype())
          {
            goto LABEL_60;
          }

          v31 = sub_1CF9E5688();
          v32 = *(v31 + 48);
          v33 = *(v31 + 52);
          swift_allocObject();
          a1 = sub_1CF9E5678();
          v34 = [a2 dataAtIndex_];
          v35 = sub_1CF9E5B88();
          v37 = v36;

          sub_1CEFCCCEC(&qword_1EDEA6218, &unk_1EC4BFF40, &unk_1CF9FE780);
          sub_1CF9E5668();
          if (v49)
          {
            sub_1CEFE4714(v35, v37);

            return a1;
          }

          sub_1CEFE4714(v35, v37);

          v3 = v56;
          *(&v54 + 1) = type metadata accessor for Continuation();
          *&v53 = v3;
          v7 = 0;
          goto LABEL_31;
        }
      }

      v53 = 0u;
      v54 = 0u;
      v11 = sub_1CEFCCC44(&v53, &unk_1EC4BEC50, &qword_1CF9FB4B0);
LABEL_45:
      if (v14 == 0x7FFFFFFF)
      {
        goto LABEL_53;
      }

      ++v14;
    }

    while (v13 != v14);
  }

  v40 = sub_1CF23E884(66, v12, sub_1CF7BFB60, sub_1CF1D841C);
  if (v7)
  {
  }

  else
  {
    v3 = v40;
    v13 = sub_1CEFEF234(129, v12, sub_1CF7BFB60, sub_1CF1D841C);
    v5 = sub_1CEFF0CDC(32, v12, sub_1CF7BFB60, sub_1CF1D841C);
    v15 = sub_1CEFF0EE4(33, v12, sub_1CF7BFB60, sub_1CF1D841C);
    v11 = sub_1CF23E440(65, v12);
    isUniquelyReferenced_nonNull_native = 0;
LABEL_54:
    v42 = v11;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDD0, &unk_1CF9FAE80);
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    v46 = swift_allocObject();
    *(v46 + 160) = 0;
    *(v46 + 168) = -1;
    *(v46 + 176) = 0;
    *(v46 + 184) = -1;
    *(v46 + 192) = 0u;
    *(v46 + 208) = 0u;
    *(v46 + 224) = 0u;
    *(v46 + 240) = 0u;
    *(v46 + 256) = 0u;
    *(v46 + 272) = 0u;
    *(v46 + 288) = 0;
    *(v46 + 296) = 1;
    *(v46 + 297) = 514;
    v47 = *(*v46 + 688);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
    (*(*(v48 - 8) + 56))(v46 + v47, 1, 1, v48);
    *(v46 + 144) = v3;
    *(v46 + 152) = v13;
    *(v46 + 16) = 0u;
    *(v46 + 32) = 0u;
    *(v46 + 48) = 1;
    *(v46 + 56) = 0u;
    *(v46 + 72) = 0u;
    *(v46 + 120) = v5;
    *(v46 + 128) = v15;
    *(v46 + 136) = v42;
    *(v46 + 96) = 0;
    *(v46 + 104) = 0;
    *(v46 + 88) = 0;
    *(v46 + 112) = 0;
    a1 = v46;
    v24 = sub_1CF246F18(v12);
    if (isUniquelyReferenced_nonNull_native)
    {
    }

    else
    {
LABEL_57:
      a1 = v24;
    }
  }

  return a1;
}

uint64_t sub_1CF245898(uint64_t a1, id a2, int a3)
{
  v4 = v3;
  v6 = [a2 columns];
  v7 = sub_1CF1D9F60();
  v8 = MEMORY[0x1D38688F0](v6, &type metadata for JobSQLFields, MEMORY[0x1E69E7CA0] + 8, v7);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = 0;
    v48 = a1 + 32;
    do
    {
      v11 = (a3 + v10);
      if (__OFADD__(a3, v10))
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        sub_1CF9E8108();
        __break(1u);
LABEL_62:
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
      }

      v12 = *(v48 + v10);
      v13 = v12 >> 5;
      if (v12 >> 5 > 1)
      {
        if (v13 == 4)
        {
          if (v12 == 128)
          {
            v14 = &type metadata for Fields;
LABEL_31:
            *(&v51 + 1) = v14;
            v18 = [a2 longAtIndex_];
            goto LABEL_32;
          }

          if (v12 != 129 || ([a2 isNullAtIndex_] & 1) != 0 || (v16 = objc_msgSend(a2, sel_integerAtIndex_, v11)) == 0)
          {
LABEL_41:
            v50 = 0u;
            v51 = 0u;
            sub_1CEFCCC44(&v50, &unk_1EC4BEC50, &qword_1CF9FB4B0);
            goto LABEL_51;
          }

          v17 = [objc_opt_self() domainVersionWithVersion_];
          *(&v51 + 1) = sub_1CEFD57E0(0, &qword_1EDEAB580, 0x1E69674E0);
          *&v50 = v17;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_41;
          }

          if (*(v48 + v10) <= 0x41u)
          {
            if (v12 != 64)
            {
              if (v12 != 65)
              {
                goto LABEL_41;
              }

              v15 = &type metadata for JobReason;
              goto LABEL_25;
            }

LABEL_23:
            v18 = [a2 longAtIndex_];
            v19 = MEMORY[0x1E69E6530];
LABEL_29:
            *(&v51 + 1) = v19;
LABEL_32:
            *&v50 = v18;
            goto LABEL_33;
          }

          if (v12 != 66)
          {
            if (v12 != 67)
            {
              goto LABEL_41;
            }

            v18 = [a2 unsignedLongAtIndex_];
            v19 = MEMORY[0x1E69E6810];
            goto LABEL_29;
          }

          type metadata accessor for NSFileProviderItemIdentifier(0);
          *(&v51 + 1) = v30;
          v18 = [a2 stringAtIndex_];
          if (v18)
          {
            goto LABEL_32;
          }

          _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v31 = sub_1CF9E6888();

          *&v50 = v31;
        }
      }

      else
      {
        if (v13)
        {
          if (v13 != 1)
          {
            goto LABEL_41;
          }

          if (v12)
          {
            v14 = &type metadata for NSecTimestamp;
            goto LABEL_31;
          }

          v15 = &type metadata for JobSchedulingPriority;
LABEL_25:
          *(&v51 + 1) = v15;
          v18 = [a2 unsignedLongAtIndex_];
          goto LABEL_32;
        }

        if (!*(v48 + v10))
        {
          goto LABEL_23;
        }

        if (v12 == 1)
        {
          v14 = &type metadata for JobWaitCondition;
          goto LABEL_31;
        }

        if ([a2 isNullAtIndex_])
        {
          goto LABEL_41;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF40, &unk_1CF9FE780);
        if ([a2 isNullAtIndex_])
        {
          sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
        }

        v46 = v4;
        if (swift_dynamicCastMetatype())
        {
          goto LABEL_62;
        }

        v32 = sub_1CF9E5688();
        v33 = *(v32 + 48);
        v34 = *(v32 + 52);
        swift_allocObject();
        sub_1CF9E5678();
        v35 = [a2 dataAtIndex_];
        v36 = sub_1CF9E5B88();
        v38 = v37;

        sub_1CEFCCCEC(&qword_1EDEA6218, &unk_1EC4BFF40, &unk_1CF9FE780);
        sub_1CF9E5668();
        if (v46)
        {
          sub_1CEFE4714(v36, v38);
        }

        sub_1CEFE4714(v36, v38);

        v39 = v53;
        *(&v51 + 1) = type metadata accessor for Continuation();
        *&v50 = v39;
        v4 = 0;
      }

LABEL_33:
      sub_1CEFE9EB8(&v50, v52);
      sub_1CEFD1104(v52, &v50);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v8;
      v21 = sub_1CF7BFB60(v12);
      v23 = v8[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_59;
      }

      v27 = v22;
      if (v8[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v40 = v21;
          sub_1CF7D1634();
          v21 = v40;
          v8 = v53;
          if ((v27 & 1) == 0)
          {
LABEL_49:
            v8[(v21 >> 6) + 8] |= 1 << v21;
            *(v8[6] + v21) = v12;
            sub_1CEFE9EB8(&v50, (v8[7] + 32 * v21));
            __swift_destroy_boxed_opaque_existential_1(v52);
            v41 = v8[2];
            v25 = __OFADD__(v41, 1);
            v42 = v41 + 1;
            if (v25)
            {
              goto LABEL_60;
            }

            v8[2] = v42;
            goto LABEL_51;
          }

          goto LABEL_39;
        }
      }

      else
      {
        sub_1CF7C8288(v26, isUniquelyReferenced_nonNull_native);
        v21 = sub_1CF7BFB60(v12);
        if ((v27 & 1) != (v28 & 1))
        {
          goto LABEL_61;
        }
      }

      v8 = v53;
      if ((v27 & 1) == 0)
      {
        goto LABEL_49;
      }

LABEL_39:
      v29 = (v8[7] + 32 * v21);
      __swift_destroy_boxed_opaque_existential_1(v29);
      sub_1CEFE9EB8(&v50, v29);
      __swift_destroy_boxed_opaque_existential_1(v52);
LABEL_51:
      if (v10 == 0x7FFFFFFF)
      {
        goto LABEL_58;
      }

      ++v10;
    }

    while (v9 != v10);
  }

  v43 = sub_1CF204E80(v8);
  if (v4)
  {
  }

  v45 = v43;

  return v45;
}

uint64_t sub_1CF245E6C(uint64_t a1, id a2, int a3)
{
  v4 = v3;
  v6 = [a2 columns];
  v7 = sub_1CF1D9F60();
  v8 = MEMORY[0x1D38688F0](v6, &type metadata for JobSQLFields, MEMORY[0x1E69E7CA0] + 8, v7);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = 0;
    v48 = a1 + 32;
    do
    {
      v11 = (a3 + v10);
      if (__OFADD__(a3, v10))
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        sub_1CF9E8108();
        __break(1u);
LABEL_60:
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
      }

      v12 = *(v48 + v10);
      v13 = v12 >> 5;
      if (v12 >> 5 > 1)
      {
        if (v13 == 4)
        {
          if (v12 != 129 || ([a2 isNullAtIndex_] & 1) != 0 || (v17 = objc_msgSend(a2, sel_integerAtIndex_, v11)) == 0)
          {
LABEL_39:
            v50 = 0u;
            v51 = 0u;
            sub_1CEFCCC44(&v50, &unk_1EC4BEC50, &qword_1CF9FB4B0);
            goto LABEL_49;
          }

          v18 = [objc_opt_self() domainVersionWithVersion_];
          *(&v51 + 1) = sub_1CEFD57E0(0, &qword_1EDEAB580, 0x1E69674E0);
          *&v50 = v18;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_39;
          }

          if (*(v48 + v10) <= 0x41u)
          {
            if (v12 != 64)
            {
              if (v12 != 65)
              {
                goto LABEL_39;
              }

              v15 = &type metadata for JobReason;
LABEL_25:
              *(&v51 + 1) = v15;
              v16 = [a2 unsignedLongAtIndex_];
              goto LABEL_30;
            }

LABEL_23:
            v16 = [a2 longAtIndex_];
            v19 = MEMORY[0x1E69E6530];
LABEL_29:
            *(&v51 + 1) = v19;
            goto LABEL_30;
          }

          if (v12 != 66)
          {
            if (v12 != 67)
            {
              goto LABEL_39;
            }

            v16 = [a2 unsignedLongAtIndex_];
            v19 = MEMORY[0x1E69E6810];
            goto LABEL_29;
          }

          type metadata accessor for NSFileProviderItemIdentifier(0);
          *(&v51 + 1) = v30;
          v16 = [a2 stringAtIndex_];
          if (v16)
          {
            goto LABEL_30;
          }

          _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v31 = sub_1CF9E6888();

          *&v50 = v31;
        }
      }

      else
      {
        if (v13)
        {
          if (v13 != 1)
          {
            goto LABEL_39;
          }

          if (v12)
          {
            v14 = &type metadata for NSecTimestamp;
            goto LABEL_18;
          }

          v15 = &type metadata for JobSchedulingPriority;
          goto LABEL_25;
        }

        if (!*(v48 + v10))
        {
          goto LABEL_23;
        }

        if (v12 == 1)
        {
          v14 = &type metadata for JobWaitCondition;
LABEL_18:
          *(&v51 + 1) = v14;
          v16 = [a2 longAtIndex_];
LABEL_30:
          *&v50 = v16;
          goto LABEL_31;
        }

        if ([a2 isNullAtIndex_])
        {
          goto LABEL_39;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF40, &unk_1CF9FE780);
        if ([a2 isNullAtIndex_])
        {
          sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
        }

        v46 = v4;
        if (swift_dynamicCastMetatype())
        {
          goto LABEL_60;
        }

        v32 = sub_1CF9E5688();
        v33 = *(v32 + 48);
        v34 = *(v32 + 52);
        swift_allocObject();
        sub_1CF9E5678();
        v35 = [a2 dataAtIndex_];
        v36 = sub_1CF9E5B88();
        v38 = v37;

        sub_1CEFCCCEC(&qword_1EDEA6218, &unk_1EC4BFF40, &unk_1CF9FE780);
        sub_1CF9E5668();
        if (v46)
        {
          sub_1CEFE4714(v36, v38);
        }

        sub_1CEFE4714(v36, v38);

        v39 = v53;
        *(&v51 + 1) = type metadata accessor for Continuation();
        *&v50 = v39;
        v4 = 0;
      }

LABEL_31:
      sub_1CEFE9EB8(&v50, v52);
      sub_1CEFD1104(v52, &v50);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v8;
      v21 = sub_1CF7BFB60(v12);
      v23 = v8[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_57;
      }

      v27 = v22;
      if (v8[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v40 = v21;
          sub_1CF7D1634();
          v21 = v40;
          v8 = v53;
          if ((v27 & 1) == 0)
          {
LABEL_47:
            v8[(v21 >> 6) + 8] |= 1 << v21;
            *(v8[6] + v21) = v12;
            sub_1CEFE9EB8(&v50, (v8[7] + 32 * v21));
            __swift_destroy_boxed_opaque_existential_1(v52);
            v41 = v8[2];
            v25 = __OFADD__(v41, 1);
            v42 = v41 + 1;
            if (v25)
            {
              goto LABEL_58;
            }

            v8[2] = v42;
            goto LABEL_49;
          }

          goto LABEL_37;
        }
      }

      else
      {
        sub_1CF7C8288(v26, isUniquelyReferenced_nonNull_native);
        v21 = sub_1CF7BFB60(v12);
        if ((v27 & 1) != (v28 & 1))
        {
          goto LABEL_59;
        }
      }

      v8 = v53;
      if ((v27 & 1) == 0)
      {
        goto LABEL_47;
      }

LABEL_37:
      v29 = (v8[7] + 32 * v21);
      __swift_destroy_boxed_opaque_existential_1(v29);
      sub_1CEFE9EB8(&v50, v29);
      __swift_destroy_boxed_opaque_existential_1(v52);
LABEL_49:
      if (v10 == 0x7FFFFFFF)
      {
        goto LABEL_56;
      }

      ++v10;
    }

    while (v9 != v10);
  }

  v43 = sub_1CF2047F0(v8);
  if (v4)
  {
  }

  v45 = v43;

  return v45;
}

uint64_t sub_1CF24642C@<X0>(id a1@<X1>, uint64_t a2@<X0>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = [a1 columns];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEA40, &qword_1CF9FF058);
  v8 = sub_1CEFCCCEC(&qword_1EDEA7F30, &qword_1EC4BEA40, &qword_1CF9FF058);
  v9 = MEMORY[0x1D38688F0](v6, v7, MEMORY[0x1E69E7CA0] + 8, v8);
  v10 = *(a2 + 16);
  if (!v10)
  {
LABEL_29:
    sub_1CF23A828(v9, a4);
  }

  v11 = 0;
  v12 = a2 + 32;
  while (1)
  {
    v13 = (a3 + v11);
    if (__OFADD__(a3, v11))
    {
      break;
    }

    v14 = *(v12 + v11);
    if (*(v12 + v11))
    {
      if (v14 == 1)
      {
        if ([a1 isNullAtIndex_])
        {
          goto LABEL_13;
        }

        v15 = [a1 stringAtIndex_];
        if (!v15)
        {
          _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v15 = sub_1CF9E6888();
        }

        type metadata accessor for NSFileProviderItemIdentifier(0);
        *(&v37 + 1) = v16;
        *&v36 = v15;
      }

      else
      {
        if ([a1 isNullAtIndex_])
        {
LABEL_13:
          v36 = 0u;
          v37 = 0u;
          sub_1CEFCCC44(&v36, &unk_1EC4BEC50, &qword_1CF9FB4B0);
          goto LABEL_27;
        }

        v17 = sub_1CF043D7C([a1 longAtIndex_]);
        if (v17 == 89)
        {
          sub_1CF1DA5D8();
          swift_allocError();
          *v33 = 0;
          swift_willThrow();
        }

        *(&v37 + 1) = &type metadata for JobCode;
        LOBYTE(v36) = v17;
      }
    }

    else
    {
      *(&v37 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEA48, &qword_1CF9FF060);
      if ([a1 longAtIndex_])
      {
        sub_1CF1DA5D8();
        swift_allocError();
        *v32 = 0;
        swift_willThrow();
        __swift_deallocate_boxed_opaque_existential_0(&v36);
      }
    }

    sub_1CEFE9EB8(&v36, v38);
    sub_1CEFD1104(v38, &v36);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v9;
    v20 = sub_1CF7D52B8(v14);
    v21 = v9[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_34;
    }

    v24 = v19;
    if (v9[3] >= v23)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v9 = v39;
        if (v19)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_1CF7D17B4();
        v9 = v39;
        if (v24)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      sub_1CF7C8680(v23, isUniquelyReferenced_nonNull_native);
      v25 = sub_1CF7D52B8(v14);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_36;
      }

      v20 = v25;
      v9 = v39;
      if (v24)
      {
LABEL_23:
        v27 = (v9[7] + 32 * v20);
        __swift_destroy_boxed_opaque_existential_1(v27);
        sub_1CEFE9EB8(&v36, v27);
        __swift_destroy_boxed_opaque_existential_1(v38);
        goto LABEL_27;
      }
    }

    v9[(v20 >> 6) + 8] |= 1 << v20;
    *(v9[6] + v20) = v14;
    sub_1CEFE9EB8(&v36, (v9[7] + 32 * v20));
    __swift_destroy_boxed_opaque_existential_1(v38);
    v28 = v9[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_35;
    }

    v9[2] = v30;
LABEL_27:
    if (v11 == 0x7FFFFFFF)
    {
      goto LABEL_33;
    }

    if (v10 == ++v11)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

uint64_t sub_1CF24680C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v48 = a4;
  v50 = a3;
  v6 = sub_1CF9E5248();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v46 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E5268();
  v47 = *(v9 - 8);
  v10 = *(v47 + 64);
  *&v11 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v45 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a2 columns];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEA28, &qword_1CF9FF038);
  v15 = sub_1CEFCCCEC(qword_1EDEA7F38, &qword_1EC4BEA28, &qword_1CF9FF038);
  v44 = v14;
  v16 = MEMORY[0x1D38688F0](v13, v14, MEMORY[0x1E69E7CA0] + 8, v15);
  v17 = *(a1 + 16);
  if (!v17)
  {
LABEL_34:
    sub_1CF23A928(v16, v48);
  }

  v43 = v9;
  v18 = 0;
  v49 = a1 + 32;
  while (1)
  {
    v19 = (v50 + v18);
    if (__OFADD__(v50, v18))
    {
      break;
    }

    v20 = *(v49 + v18);
    if (*(v49 + v18))
    {
      if (v20 == 1)
      {
        if ([a2 isNullAtIndex_])
        {
          goto LABEL_13;
        }

        v21 = [a2 longAtIndex_];
        if (v21 == 0x8000000000000000)
        {
          LOBYTE(v22) = 2;
          v21 = 1;
        }

        else if (v21)
        {
          if ((v21 & 0x8000000000000000) != 0)
          {
            v21 = -v21;
            v22 = HIDWORD(v21);
            if (HIDWORD(v21))
            {
              sub_1CF9E51B8();
              sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
              sub_1CF24D0AC();
              v40 = v45;
              v41 = v43;
              sub_1CF9E57D8();
              sub_1CF9E50D8();
              (*(v47 + 8))(v40, v41);
              swift_willThrow();
            }
          }

          else
          {
            LOBYTE(v22) = 1;
          }
        }

        else
        {
          LOBYTE(v22) = 2;
        }

        *(&v52 + 1) = &type metadata for VFSItemID;
        *&v51 = v21;
        BYTE8(v51) = v22;
      }

      else
      {
        if ([a2 isNullAtIndex_])
        {
LABEL_13:
          v51 = 0u;
          v52 = 0u;
          sub_1CEFCCC44(&v51, &unk_1EC4BEC50, &qword_1CF9FB4B0);
          goto LABEL_32;
        }

        v23 = sub_1CF043D7C([a2 longAtIndex_]);
        if (v23 == 89)
        {
          sub_1CF1DA5D8();
          swift_allocError();
          *v39 = 0;
          swift_willThrow();
        }

        *(&v52 + 1) = &type metadata for JobCode;
        LOBYTE(v51) = v23;
      }
    }

    else
    {
      *(&v52 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEA30, &qword_1CF9FF040);
      if ([a2 longAtIndex_])
      {
        sub_1CF1DA5D8();
        swift_allocError();
        *v38 = 0;
        swift_willThrow();
        __swift_deallocate_boxed_opaque_existential_0(&v51);
      }
    }

    sub_1CEFE9EB8(&v51, v53);
    sub_1CEFD1104(v53, &v51);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v16;
    v26 = sub_1CF7D52B8(v20);
    v27 = v16[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_40;
    }

    v30 = v25;
    if (v16[3] >= v29)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v16 = v54;
        if (v25)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_1CF7D17C8();
        v16 = v54;
        if (v30)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      sub_1CF7C8694(v29, isUniquelyReferenced_nonNull_native);
      v31 = sub_1CF7D52B8(v20);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_42;
      }

      v26 = v31;
      v16 = v54;
      if (v30)
      {
LABEL_28:
        v33 = (v16[7] + 32 * v26);
        __swift_destroy_boxed_opaque_existential_1(v33);
        sub_1CEFE9EB8(&v51, v33);
        __swift_destroy_boxed_opaque_existential_1(v53);
        goto LABEL_32;
      }
    }

    v16[(v26 >> 6) + 8] |= 1 << v26;
    *(v16[6] + v26) = v20;
    sub_1CEFE9EB8(&v51, (v16[7] + 32 * v26));
    __swift_destroy_boxed_opaque_existential_1(v53);
    v34 = v16[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_41;
    }

    v16[2] = v36;
LABEL_32:
    if (v18 == 0x7FFFFFFF)
    {
      goto LABEL_39;
    }

    if (v17 == ++v18)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

void sub_1CF246D50(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1CF23BCE8(0, a1);
  if (!v2)
  {
    v6 = v5;
    v7 = sub_1CF23B9D0(5u, a1);
    v8 = sub_1CF23B6BC(1u, a1);
    v9 = sub_1CF23B3A4(2u, a1);
    v10 = sub_1CF23B3A4(3u, a1);
    v11 = sub_1CF23B07C(4u, a1);
    v12 = sub_1CF23AD58(6u, a1);
    v13 = sub_1CF23AA30(7u, a1);
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    if (((1 << v12) & 0x860) == 0)
    {
      v15 = v9;
    }

    if (v12 <= 0xBu)
    {
      v16 = v15;
    }

    else
    {
      v16 = v9;
    }

    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = v8;
    *(a2 + 24) = v16;
    *(a2 + 32) = v10;
    *(a2 + 40) = v11;
    *(a2 + 48) = v12;
    *(a2 + 56) = v13;
    *(a2 + 64) = v14;
  }
}

uint64_t sub_1CF246E80(uint64_t a1, id a2)
{
  v8 = *a1;
  if (!*(a1 + 8))
  {
    goto LABEL_5;
  }

  if (*(a1 + 8) != 1)
  {
    v8 = (v8 != 0) << 63;
    goto LABEL_7;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    v8 = -v8;
  }

LABEL_7:
  v9 = [a2 bindLongParameter_];
  v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

  return v10;
}

uint64_t sub_1CF246F18(uint64_t a1)
{
  v4 = sub_1CF23E22C(64, a1);
  if (!v2)
  {
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v17[1] = 0;
      v17[2] = 0;
    }

    else
    {
      v7 = &type metadata for SQLJobID;
      v9 = v4;
      v8 = sub_1CF1DAE84();
      v6 = v9;
    }

    v17[0] = v6;
    v17[3] = v7;
    v17[4] = v8;
    swift_beginAccess();
    sub_1CEFDA9E0(v17, v1 + 56, &unk_1EC4C1BE0, &unk_1CF9FD400);
    swift_endAccess();
    v10 = sub_1CF2036D8(a1, sub_1CEFED334);
    v13 = *(v1 + 96);
    v14 = *(v1 + 104);
    *(v1 + 96) = v10;
    *(v1 + 104) = v11;
    v15 = *(v1 + 112);
    *(v1 + 112) = v12;
    sub_1CF03D7A8(v13, v14, v15);
  }

  return v1;
}

uint64_t sub_1CF24701C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 176);
  v8 = *(*v2 + 144);
  v9 = *(*v2 + 160);
  v6 = type metadata accessor for ItemReconciliation();
  (*(*(v6 - 8) + 16))(v2 + v5, a1, v6);
  *(v2 + *(*v2 + 184)) = a2;
  return sub_1CF05284C(*(a1 + *(v6 + 64)), *(a1 + *(v6 + 64) + 8), 1);
}

uint64_t sub_1CF247110(uint64_t a1, uint64_t a2)
{
  v9 = *(v2 + 144);
  v10 = *(v2 + 160);
  v5 = type metadata accessor for SchedulableReconciliation();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return sub_1CF24701C(a1, a2);
}

void sub_1CF247174(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = (*(a9 + 24))(sub_1CF209EF0, 0, a6, a9);
  if (!v9)
  {
    v13 = v12;
    if ([v12 next])
    {
      do
      {
        v14 = objc_autoreleasePoolPush();
        sub_1CF20A0E8(v13, a1, a2);
        objc_autoreleasePoolPop(v14);
      }

      while (([v13 next] & 1) != 0);
    }
  }
}

uint64_t sub_1CF2472B0(uint64_t (*a1)(char *, uint64_t, uint64_t), _BYTE *a2, int a3)
{
  LODWORD(v512) = a3;
  v513 = a2;
  v511 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v497 = type metadata accessor for ItemStateVersion();
  v496 = *(v497 - 8);
  v4 = *(v496 + 64);
  v5 = MEMORY[0x1EEE9AC00](v497);
  v475 = &v440 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v467 = &v440 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v474 = &v440 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v466 = &v440 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v504 = *(v12 - 8);
  v13 = *(v504 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v471 = &v440 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v472 = &v440 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v464 = &v440 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v465 = &v440 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v468 = &v440 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v469 = &v440 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v462 = &v440 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v463 = &v440 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v444 = &v440 - v30;
  v31 = sub_1CF9E75D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v473 = *(TupleTypeMetadata2 - 8);
  v32 = *(v473 + 64);
  v33 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v483 = &v440 - v34;
  v484 = v31;
  v482 = *(v31 - 8);
  v35 = *(v482 + 64);
  v36 = MEMORY[0x1EEE9AC00](v33);
  v470 = &v440 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v493 = &v440 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v500 = &v440 - v40;
  v41 = swift_getAssociatedTypeWitness();
  v506 = *(v41 - 8);
  v42 = *(v506 + 64);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v460 = &v440 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v461 = &v440 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v455 = &v440 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v456 = &v440 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v457 = &v440 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v458 = &v440 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v453 = &v440 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v454 = &v440 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v447 = &v440 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v448 = &v440 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v445 = &v440 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v446 = &v440 - v66;
  MEMORY[0x1EEE9AC00](v65);
  v443 = &v440 - v67;
  v68 = sub_1CF9E75D8();
  v492 = swift_getTupleTypeMetadata2();
  v459 = *(v492 - 8);
  v69 = *(v459 + 64);
  MEMORY[0x1EEE9AC00](v492);
  v488 = &v440 - v70;
  v71 = swift_getAssociatedConformanceWitness();
  v72 = swift_getAssociatedConformanceWitness();
  v507 = v41;
  *&v519 = v41;
  *(&v519 + 1) = v12;
  v505 = v12;
  v442 = v71;
  *&v520 = v71;
  *(&v520 + 1) = v72;
  v441 = v72;
  v508 = type metadata accessor for FileItemVersion();
  v510 = sub_1CF9E75D8();
  v509 = *(v510 - 8);
  v73 = *(v509 + 64);
  v74 = MEMORY[0x1EEE9AC00](v510);
  v487 = &v440 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x1EEE9AC00](v74);
  v478 = &v440 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v481 = &v440 - v79;
  v80 = MEMORY[0x1EEE9AC00](v78);
  v82 = &v440 - v81;
  v83 = MEMORY[0x1EEE9AC00](v80);
  v480 = &v440 - v84;
  v85 = MEMORY[0x1EEE9AC00](v83);
  v477 = &v440 - v86;
  v87 = MEMORY[0x1EEE9AC00](v85);
  v486 = &v440 - v88;
  v89 = MEMORY[0x1EEE9AC00](v87);
  v91 = &v440 - v90;
  v92 = MEMORY[0x1EEE9AC00](v89);
  v485 = &v440 - v93;
  v94 = MEMORY[0x1EEE9AC00](v92);
  v96 = &v440 - v95;
  v97 = MEMORY[0x1EEE9AC00](v94);
  v476 = &v440 - v98;
  v99 = MEMORY[0x1EEE9AC00](v97);
  v101 = &v440 - v100;
  v102 = MEMORY[0x1EEE9AC00](v99);
  v479 = &v440 - v103;
  v104 = MEMORY[0x1EEE9AC00](v102);
  v106 = &v440 - v105;
  v501 = v68;
  v489 = *(v68 - 8);
  v107 = v489[8];
  v108 = MEMORY[0x1EEE9AC00](v104);
  v451 = &v440 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = MEMORY[0x1EEE9AC00](v108);
  v490 = &v440 - v111;
  v112 = MEMORY[0x1EEE9AC00](v110);
  v498 = &v440 - v113;
  v502 = *(AssociatedTypeWitness - 8);
  v114 = *(v502 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v449 = &v440 - v115;
  v503 = AssociatedTypeWitness;
  v116 = sub_1CF9E75D8();
  v495 = *(v116 - 8);
  v117 = *(v495 + 64);
  v118 = MEMORY[0x1EEE9AC00](v116);
  v452 = &v440 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = MEMORY[0x1EEE9AC00](v118);
  v491 = &v440 - v121;
  v122 = MEMORY[0x1EEE9AC00](v120);
  v499 = &v440 - v123;
  MEMORY[0x1EEE9AC00](v122);
  v125 = &v440 - v124;
  v126 = swift_getTupleTypeMetadata2();
  v127 = *(*(v126 - 8) + 64);
  v128 = MEMORY[0x1EEE9AC00](v126);
  v129 = MEMORY[0x1EEE9AC00](v128);
  v134 = &v440 - v130;
  if ((v131 >> 6) <= 1u)
  {
    if (!(v131 >> 6))
    {
      if (v131 <= 2u)
      {
        if (v131)
        {
          if (v131 == 1)
          {
            v135 = *(type metadata accessor for ItemReconciliationHalf() + 68);
            v136 = v511 + v135;
            v137 = &v513[v135];
            v138 = *&v513[v135 + 24] & 0xF000000000000000;
            v139 = (v138 == 0xB000000000000000) | v513[v135 + 12];
            if (*(v136 + 3) >> 60 == 11 || (v136[12] & 1) != 0)
            {
LABEL_133:
              v171 = v139 ^ 1;
              return v171 & 1;
            }

            v140 = *(v137 + 2);
            v141 = *(v136 + 2);
            if (v138 == 0xB000000000000000)
            {
              v140 = 0;
            }

            v142 = v141 == v140;
LABEL_129:
            v304 = v142;
            v139 = v304 & ~v139;
            goto LABEL_133;
          }

          v208 = *(type metadata accessor for ItemReconciliationHalf() + 68);
          v209 = *(v511 + v208 + 16);
          v519 = *(v511 + v208);
          v520 = v209;
          v210 = *(v511 + v208 + 48);
          v521 = *(v511 + v208 + 32);
          v522 = v210;
          if ((*(&v209 + 1) & 0xF000000000000000) == 0xB000000000000000)
          {
            v211 = 0;
          }

          else
          {
            v211 = v520;
          }

          if ((*(&v209 + 1) & 0xF000000000000000) == 0xB000000000000000)
          {
            v212 = 0xF000000000000000;
          }

          else
          {
            v212 = *(&v520 + 1);
          }

          v213 = &v513[v208];
          v214 = v213[1];
          v515 = *v213;
          v516 = v214;
          v215 = v213[3];
          v517 = v213[2];
          v518 = v215;
          if ((*(&v214 + 1) & 0xF000000000000000) == 0xB000000000000000)
          {
            v216 = 0;
          }

          else
          {
            v216 = v516;
          }

          if ((*(&v516 + 1) & 0xF000000000000000) == 0xB000000000000000)
          {
            v217 = 0xF000000000000000;
          }

          else
          {
            v217 = *(&v516 + 1);
          }

          if (v212 >> 60 == 15)
          {
            if (v217 >> 60 == 15)
            {
              sub_1CEFCCBDC(&v519, v514, &unk_1EC4BF260, &unk_1CFA01B60);
              sub_1CEFCCBDC(&v515, v514, &unk_1EC4BF260, &unk_1CFA01B60);
              sub_1CEFE48D8(v211, v212);
              v171 = 0;
              return v171 & 1;
            }
          }

          else if (v217 >> 60 != 15)
          {
            sub_1CEFCCBDC(&v519, v514, &unk_1EC4BF260, &unk_1CFA01B60);
            sub_1CEFCCBDC(&v515, v514, &unk_1EC4BF260, &unk_1CFA01B60);
            sub_1CEFCCBDC(&v519, v514, &unk_1EC4BF260, &unk_1CFA01B60);
            sub_1CEFCCBDC(&v515, v514, &unk_1EC4BF260, &unk_1CFA01B60);
            v403 = sub_1CF328660(v211, v212, v216, v217);
            sub_1CEFCCC44(&v515, &unk_1EC4BF260, &unk_1CFA01B60);
            sub_1CEFCCC44(&v519, &unk_1EC4BF260, &unk_1CFA01B60);
            sub_1CEFE48D8(v216, v217);
            sub_1CEFE48D8(v211, v212);
            v171 = v403 ^ 1;
            return v171 & 1;
          }

          sub_1CEFCCBDC(&v519, v514, &unk_1EC4BF260, &unk_1CFA01B60);
          sub_1CEFCCBDC(&v515, v514, &unk_1EC4BF260, &unk_1CFA01B60);
          sub_1CEFE48D8(v211, v212);
          sub_1CEFE48D8(v216, v217);
          v171 = 1;
          return v171 & 1;
        }

        v199 = *(type metadata accessor for ItemReconciliationHalf() + 68);
        v200 = (v511 + v199);
        v201 = &v513[v199];
        v202 = v201[3] & 0xF000000000000000;
        v203 = v202 == 0xB000000000000000;
        if (v200[3] >> 60 != 11)
        {
          v203 = v202 != 0xB000000000000000;
          v204 = *v201;
          if (v202 == 0xB000000000000000)
          {
            v204 = 0;
          }

          v205 = *v200;
LABEL_87:
          if (v205 != v204)
          {
            v203 = 0;
          }

          goto LABEL_199;
        }

        goto LABEL_199;
      }

      if (v131 == 3)
      {
        v206 = *(type metadata accessor for ItemReconciliationHalf() + 68);
        v207 = v511 + v206;
        if (*(v511 + v206 + 24) >> 60 == 11 || (v207[48] & 1) != 0)
        {
          v174 = 0;
          v175 = 1;
        }

        else
        {
          v175 = 0;
          v174 = *(v207 + 4);
        }

        v399 = &v513[v206];
        if (*&v513[v206 + 24] >> 60 != 11 && (v399[48] & 1) == 0)
        {
          v203 = 0;
          v400 = *(v399 + 4);
          if (v175)
          {
            goto LABEL_199;
          }

          goto LABEL_198;
        }
      }

      else
      {
        if (v131 != 4)
        {
          v218 = *(type metadata accessor for ItemReconciliationHalf() + 68);
          v219 = v511 + v218;
          v220 = &v513[v218];
          v221 = *(v220 + 3) & 0xF000000000000000;
          v203 = v221 == 0xB000000000000000;
          if (*(v219 + 3) >> 60 != 11)
          {
            v203 = v221 != 0xB000000000000000;
            v204 = *(v220 + 7);
            if (v221 == 0xB000000000000000)
            {
              v204 = 0;
            }

            v205 = *(v219 + 7);
            goto LABEL_87;
          }

LABEL_199:
          v171 = v203 ^ 1;
          return v171 & 1;
        }

        v172 = *(type metadata accessor for ItemReconciliationHalf() + 68);
        v173 = v511 + v172;
        if (*(v511 + v172 + 24) >> 60 == 11 || (v173[48] & 1) != 0)
        {
          v174 = 0;
          v175 = 1;
        }

        else
        {
          v175 = 0;
          v174 = *(v173 + 5);
        }

        v401 = &v513[v172];
        if (*&v513[v172 + 24] >> 60 != 11 && (v401[48] & 1) == 0)
        {
          v203 = 0;
          v400 = *(v401 + 5);
          if (v175)
          {
            goto LABEL_199;
          }

          goto LABEL_198;
        }
      }

      v400 = 0;
      v203 = 1;
      if (v175)
      {
        goto LABEL_199;
      }

LABEL_198:
      v203 = (v174 == v400) & ~v203;
      goto LABEL_199;
    }

    v152 = *(type metadata accessor for ItemReconciliationHalf() + 64);
    v153 = v511 + v152;
    v154 = *(v511 + v152);
    v155 = *(v511 + v152 + 16);
    v156 = &v513[v152];
    v157 = *&v513[v152];
    v158 = v513[v152 + 16];
    if (v155 <= 1)
    {
      if (v153[16])
      {
        if (v158 == 1)
        {
          goto LABEL_110;
        }
      }

      else if (!v158)
      {
        v165 = v154 == v157;
LABEL_111:
        v171 = v165 ^ 1;
        return v171 & 1;
      }
    }

    else
    {
      if (v155 != 2)
      {
        if (v155 == 3)
        {
          if (v158 == 3)
          {
            *&v519 = v154;
            v159 = v154;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
            v160 = sub_1CF9E6948();
            v162 = v161;
            *&v519 = v157;
            v163 = v157;
            if (v160 == sub_1CF9E6948() && v162 == v164)
            {

              v165 = 1;
            }

            else
            {
              v165 = sub_1CF9E8048();
            }

            goto LABEL_111;
          }

          goto LABEL_60;
        }

        v198 = *(v156 + 1);
        if (v154 | *(v153 + 1))
        {
          if (v158 != 4 || v157 != 1 || v198)
          {
            goto LABEL_60;
          }
        }

        else if (v158 != 4 || v198 | v157)
        {
          goto LABEL_60;
        }

LABEL_110:
        v165 = 1;
        goto LABEL_111;
      }

      if (v158 == 2)
      {
        goto LABEL_110;
      }
    }

LABEL_60:
    v165 = 0;
    goto LABEL_111;
  }

  if (v131 >> 6 != 3)
  {
    if (v131 > 0x83u)
    {
      if (v131 > 0x85u)
      {
        if (v131 == 134)
        {
          v197 = type metadata accessor for ItemReconciliationHalf();
          v171 = *(v511 + *(v197 + 60)) ^ v513[*(v197 + 60)];
          return v171 & 1;
        }

        v261 = type metadata accessor for ItemReconciliationHalf();
        v262 = v509;
        v263 = *(v509 + 16);
        v264 = v510;
        v263(v101, v511 + *(v261 + 48), v510);
        v265 = v508;
        v266 = *(v508 - 8);
        v511 = *(v266 + 48);
        LODWORD(v512) = v511(v101, 1, v508);
        if (v512 == 1)
        {
          (*(v262 + 8))(v101, v264);
          v267 = 0;
        }

        else
        {
          v505 = v263;
          v389 = v506;
          v390 = *(v506 + 16);
          v391 = v445;
          v504 = v261;
          v392 = v507;
          v390(v445, v101, v507);
          (*(v266 + 8))(v101, v265);
          (*(v389 + 32))(v446, v391, v392);
          v263 = v505;
          v261 = v504;
          swift_dynamicCast();
          v267 = v519;
        }

        v393 = v476;
        v263(v476, &v513[*(v261 + 48)], v264);
        v394 = v511(v393, 1, v265);
        v276 = v394 == 1;
        if (v394 == 1)
        {
          (*(v262 + 8))(v393, v264);
          v398 = 0;
        }

        else
        {
          v395 = v506;
          v396 = v447;
          v397 = v507;
          (*(v506 + 16))(v447, v393, v507);
          (*(v266 + 8))(v393, v265);
          (*(v395 + 32))(v448, v396, v397);
          swift_dynamicCast();
          v398 = v519;
        }

        if (v512 != 1)
        {
          v281 = v394 != 1 && v267 == v398;
          goto LABEL_184;
        }

LABEL_187:
        v171 = !v276;
        return v171 & 1;
      }

      if (v131 == 132)
      {
        v176 = type metadata accessor for ItemReconciliationHalf();
        v171 = *(v511 + *(v176 + 52)) != v513[*(v176 + 52)];
        return v171 & 1;
      }

      v260 = *(type metadata accessor for ItemReconciliationHalf() + 56);
    }

    else
    {
      if (v131 <= 0x81u)
      {
        if (v131 == 128)
        {
          v507 = v132;
          v512 = v129;
          v166 = *(v129 + 48);
          v167 = v495;
          v168 = *(v495 + 16);
          v168(&v440 - v130, v511, v116);
          v168(&v134[v166], v513, v116);
          v169 = *(v502 + 48);
          v170 = v503;
          if (v169(v134, 1, v503) == 1)
          {
            if (v169(&v134[v166], 1, v170) == 1)
            {
              (*(v167 + 8))(v134, v116);
              v171 = 0;
              return v171 & 1;
            }
          }

          else
          {
            v168(v125, v134, v116);
            if (v169(&v134[v166], 1, v170) != 1)
            {
              v423 = v502;
              v424 = v449;
              (*(v502 + 32))(v449, &v134[v166], v170);
              v425 = *(*(AssociatedConformanceWitness + 40) + 8);
              v165 = sub_1CF9E6868();
              v426 = *(v423 + 8);
              v426(v424, v170);
              v426(v125, v170);
              (*(v167 + 8))(v134, v116);
              goto LABEL_111;
            }

            (*(v502 + 8))(v125, v170);
          }

          (*(v507 + 8))(v134, v512);
          goto LABEL_175;
        }

        v196 = *(type metadata accessor for ItemReconciliationHalf() + 36);
LABEL_100:
        v171 = *(v511 + v196) != *&v513[v196];
        return v171 & 1;
      }

      if (v131 == 130)
      {
        v196 = *(type metadata accessor for ItemReconciliationHalf() + 40);
        goto LABEL_100;
      }

      v260 = *(type metadata accessor for ItemReconciliationHalf() + 44);
    }

    v171 = v513[v260] != *(v511 + v260);
    return v171 & 1;
  }

  if (v131 <= 0xC2u)
  {
    if (v131 != 192)
    {
      if (v131 == 193)
      {
        v512 = type metadata accessor for ItemReconciliationHalf();
        v177 = v509;
        v178 = *(v509 + 16);
        v179 = v510;
        v178(v91, v511 + *(v512 + 48), v510);
        v180 = v508;
        v181 = *(v508 - 8);
        v511 = *(v181 + 48);
        if (v511(v91, 1, v508) == 1)
        {
          (*(v177 + 8))(v91, v179);
          v182 = 0;
          v183 = 1;
        }

        else
        {
          v505 = v178;
          v282 = v506;
          v283 = v455;
          v284 = v507;
          (*(v506 + 16))(v455, v91, v507);
          (*(v181 + 8))(v91, v180);
          (*(v282 + 32))(v456, v283, v284);
          v178 = v505;
          swift_dynamicCast();
          v182 = v520;
          v183 = BYTE8(v520);
        }

        v285 = v486;
        v178(v486, &v513[*(v512 + 48)], v179);
        if (v511(v285, 1, v180) == 1)
        {
          (*(v177 + 8))(v285, v179);
          v286 = 0;
          v139 = 1;
        }

        else
        {
          v299 = v506;
          v300 = v182;
          v301 = v460;
          v302 = v507;
          (*(v506 + 16))(v460, v285, v507);
          (*(v181 + 8))(v285, v180);
          v303 = v301;
          v182 = v300;
          (*(v299 + 32))(v461, v303, v302);
          swift_dynamicCast();
          v286 = v520;
          v139 = BYTE8(v520);
        }

        if (v183)
        {
          goto LABEL_133;
        }

        v142 = v182 == v286;
        goto LABEL_129;
      }

      v506 = v133;
      v507 = v132;
      v512 = v129;
      v501 = type metadata accessor for ItemReconciliationHalf();
      v231 = v509;
      v232 = v511 + *(v501 + 48);
      v233 = v510;
      v511 = *(v509 + 16);
      v511(v82, v232, v510);
      v234 = v508;
      v235 = *(v508 - 8);
      v500 = *(v235 + 6);
      v236 = (v500)(v82, 1, v508);
      v498 = v235;
      if (v236 == 1)
      {
        (*(v231 + 8))(v82, v233);
        v237 = 1;
        v238 = v513;
        v239 = v503;
        v240 = v502;
        v241 = v499;
      }

      else
      {
        v287 = v504;
        v288 = v462;
        v289 = v505;
        (*(v504 + 16))(v462, &v82[*(v234 + 56)], v505);
        (*(v235 + 1))(v82, v234);
        (*(v287 + 32))(v463, v288, v289);
        v290 = v466;
        v291 = v497;
        swift_dynamicCast();
        v240 = v502;
        v241 = v499;
        v239 = v503;
        (*(v502 + 16))(v499, v290, v503);
        (*(v496 + 8))(v290, v291);
        v237 = 0;
        v238 = v513;
      }

      v513 = *(v240 + 56);
      (v513)(v241, v237, 1, v239);
      v292 = &v238[*(v501 + 48)];
      v293 = v481;
      v511(v481, v292, v233);
      if ((v500)(v293, 1, v234) == 1)
      {
        (*(v509 + 8))(v293, v233);
        v294 = 1;
        v295 = v239;
        v296 = v495;
        v297 = v240;
        v298 = v491;
      }

      else
      {
        v305 = v504;
        v306 = &v293[*(v234 + 56)];
        v307 = v293;
        v308 = v468;
        v309 = v505;
        (*(v504 + 16))(v468, v306, v505);
        (*(v498 + 1))(v307, v234);
        (*(v305 + 32))(v469, v308, v309);
        v310 = v474;
        v311 = v497;
        swift_dynamicCast();
        v298 = v491;
        (*(v240 + 16))(v491, v310, v239);
        (*(v496 + 8))(v310, v311);
        v294 = 0;
        v295 = v239;
        v296 = v495;
        v297 = v240;
      }

      (v513)(v298, v294, 1, v295);
      v312 = *(v512 + 48);
      v313 = *(v296 + 16);
      v314 = v506;
      v315 = v499;
      v313(v506, v499, v116);
      v513 = v312;
      v313(&v312[v314], v298, v116);
      v316 = *(v297 + 48);
      if (v316(v314, 1, v295) == 1)
      {
        v317 = *(v296 + 8);
        v317(v298, v116);
        v317(v315, v116);
        if (v316(&v513[v314], 1, v503) == 1)
        {
          v317(v314, v116);
          v171 = 0;
          return v171 & 1;
        }
      }

      else
      {
        v318 = v452;
        v313(v452, v314, v116);
        v319 = v513;
        v320 = v503;
        if (v316(&v513[v314], 1, v503) != 1)
        {
          v404 = v502;
          v405 = &v319[v314];
          v406 = v449;
          (*(v502 + 32))(v449, v405, v320);
          v407 = *(*(AssociatedConformanceWitness + 40) + 8);
          v165 = sub_1CF9E6868();
          v408 = *(v404 + 8);
          v408(v406, v320);
          v409 = *(v296 + 8);
          v409(v491, v116);
          v409(v499, v116);
          v408(v318, v320);
          v409(v314, v116);
          goto LABEL_111;
        }

        v321 = *(v296 + 8);
        v321(v491, v116);
        v321(v499, v116);
        (*(v502 + 8))(v318, v320);
      }

      (*(v507 + 8))(v314, v512);
      goto LABEL_175;
    }

    v505 = type metadata accessor for ItemReconciliationHalf();
    v222 = v509;
    v223 = *(v509 + 16);
    v224 = v510;
    v223(v96, v511 + *(v505 + 48), v510);
    v225 = v508;
    v226 = *(v508 - 8);
    v227 = *(v226 + 48);
    LODWORD(v512) = v227(v96, 1, v508);
    if (v512 == 1)
    {
      (*(v222 + 8))(v96, v224);
      v228 = 0;
      v229 = v513;
      v230 = v506;
    }

    else
    {
      v268 = v506;
      v269 = *(v506 + 16);
      v511 = v223;
      v270 = v453;
      v271 = v507;
      v269(v453, v96, v507);
      v272 = v96;
      v230 = v268;
      (*(v226 + 8))(v272, v225);
      v273 = v270;
      v223 = v511;
      (*(v268 + 32))(v454, v273, v271);
      swift_dynamicCast();
      v228 = DWORD2(v519);
      v229 = v513;
    }

    v274 = v485;
    v223(v485, &v229[*(v505 + 48)], v224);
    v275 = v227(v274, 1, v225);
    v276 = v275 == 1;
    if (v275 == 1)
    {
      (*(v509 + 8))(v274, v224);
      v280 = 0;
    }

    else
    {
      v277 = v274;
      v278 = v457;
      v279 = v507;
      (*(v230 + 16))(v457, v277, v507);
      (*(v226 + 8))(v277, v225);
      (*(v230 + 32))(v458, v278, v279);
      swift_dynamicCast();
      v280 = DWORD2(v519);
    }

    if (v512 != 1)
    {
      v281 = v275 != 1 && v228 == v280;
LABEL_184:
      v276 = v281;
      goto LABEL_187;
    }

    goto LABEL_187;
  }

  if (v131 > 0xC4u)
  {
    if (v131 != 197)
    {
      v255 = *(type metadata accessor for ItemReconciliationHalf() + 72);
      v256 = *(v511 + v255);
      v257 = *&v513[v255];
      v165 = (v256 | v257) == 0;
      if (v256 && v257)
      {
        sub_1CEFD57E0(0, &qword_1EDEAB580, 0x1E69674E0);
        v258 = v257;
        v259 = v256;
        v165 = sub_1CF9E7568();
      }

      goto LABEL_111;
    }

    v507 = type metadata accessor for ItemReconciliationHalf();
    v184 = v509;
    v185 = v511 + *(v507 + 48);
    v186 = v477;
    v187 = v510;
    v512 = *(v509 + 16);
    (v512)(v477, v185, v510);
    v188 = v508;
    v189 = *(v508 - 8);
    v190 = 1;
    v511 = *(v189 + 48);
    v191 = v511(v186, 1, v508);
    v506 = v189;
    if (v191 == 1)
    {
      v189 = v184;
      v192 = v187;
      v193 = v505;
      v194 = v504;
      v195 = v500;
    }

    else
    {
      v194 = v504;
      v195 = v500;
      v193 = v505;
      (*(v504 + 16))(v500, &v186[*(v188 + 56)], v505);
      v190 = 0;
      v192 = v188;
    }

    (*(v189 + 8))(v186, v192);
    v337 = *(v194 + 56);
    v338 = 1;
    v337(v195, v190, 1, v193);
    v339 = v480;
    (v512)(v480, &v513[*(v507 + 48)], v510);
    if (v511(v339, 1, v188) == 1)
    {
      v340 = v509;
      v341 = v510;
      v342 = v493;
    }

    else
    {
      v342 = v493;
      (*(v194 + 16))(v493, &v339[*(v188 + 56)], v193);
      v338 = 0;
      v340 = v506;
      v341 = v188;
    }

    (*(v340 + 8))(v339, v341);
    v337(v342, v338, 1, v193);
    v363 = *(TupleTypeMetadata2 + 48);
    v364 = v482;
    v365 = *(v482 + 16);
    v366 = v483;
    v367 = v500;
    v368 = v484;
    v365(v483, v500, v484);
    v513 = v363;
    v365(&v363[v366], v342, v368);
    v369 = *(v194 + 48);
    if (v369(v366, 1, v193) == 1)
    {
      v370 = *(v364 + 8);
      v370(v342, v368);
      v370(v367, v368);
      if (v369(&v513[v366], 1, v505) == 1)
      {
        v371 = v366;
        v372 = v368;
LABEL_165:
        v370(v371, v372);
        v171 = 0;
        return v171 & 1;
      }
    }

    else
    {
      v381 = v470;
      v365(v470, v366, v368);
      v382 = v513;
      v383 = v505;
      if (v369(&v513[v366], 1, v505) != 1)
      {
        v410 = v504;
        v411 = v444;
        (*(v504 + 32))(v444, &v382[v366], v383);
        v412 = *(v441 + 32);
        v413 = sub_1CF9E6868();
        v414 = *(v410 + 8);
        v414(v411, v383);
        v415 = *(v364 + 8);
        v415(v493, v368);
        v415(v500, v368);
        v414(v381, v383);
        v415(v366, v368);
        v171 = v413 ^ 1;
        return v171 & 1;
      }

      v384 = *(v364 + 8);
      v384(v493, v368);
      v384(v500, v368);
      (*(v504 + 8))(v381, v383);
    }

    (*(v473 + 8))(v366, TupleTypeMetadata2);
LABEL_175:
    v171 = 1;
    return v171 & 1;
  }

  if (v131 != 195)
  {
    v505 = type metadata accessor for ItemReconciliationHalf();
    v242 = v509;
    v243 = v511 + *(v505 + 48);
    v244 = v510;
    v512 = *(v509 + 16);
    (v512)(v106, v243, v510);
    v245 = v508;
    v246 = *(v508 - 8);
    v247 = 1;
    v511 = *(v246 + 48);
    v248 = v511(v106, 1, v508);
    v504 = v246;
    if (v248 == 1)
    {
      v249 = v242;
      v250 = v244;
      v251 = v245;
      v252 = v507;
      v253 = v506;
      v254 = v498;
    }

    else
    {
      v253 = v506;
      v254 = v498;
      v252 = v507;
      (*(v506 + 16))(v498, v106, v507);
      v247 = 0;
      v249 = v246;
      v250 = v245;
      v251 = v245;
    }

    (*(v249 + 8))(v106, v250);
    v343 = *(v253 + 56);
    v344 = 1;
    v343(v254, v247, 1, v252);
    v345 = v479;
    (v512)(v479, &v513[*(v505 + 48)], v510);
    if (v511(v345, 1, v251) == 1)
    {
      v346 = v509;
      v347 = v510;
      v348 = v488;
      v349 = v490;
    }

    else
    {
      v349 = v490;
      (*(v253 + 16))(v490, v345, v252);
      v344 = 0;
      v346 = v504;
      v347 = v251;
      v348 = v488;
    }

    (*(v346 + 8))(v345, v347);
    v373 = v507;
    v343(v349, v344, 1, v507);
    v374 = *(v492 + 48);
    v375 = v489;
    v376 = v489[2];
    v377 = v498;
    v378 = v501;
    v376(v348, v498, v501);
    v513 = v374;
    v376(&v374[v348], v349, v378);
    v379 = *(v253 + 48);
    if (v379(v348, 1, v373) == 1)
    {
      v370 = v375[1];
      v380 = v501;
      v370(v349, v501);
      v370(v377, v380);
      if (v379(&v513[v348], 1, v507) == 1)
      {
        v371 = v348;
        v372 = v501;
        goto LABEL_165;
      }
    }

    else
    {
      v385 = v451;
      v376(v451, v348, v501);
      v386 = v513;
      if (v379(&v513[v348], 1, v507) != 1)
      {
        v416 = v506;
        v417 = v443;
        v418 = v507;
        (*(v506 + 32))(v443, &v386[v348], v507);
        v419 = *(v442 + 32);
        v165 = sub_1CF9E6868();
        v420 = *(v416 + 8);
        v420(v417, v418);
        v421 = v489[1];
        v422 = v501;
        v421(v490, v501);
        v421(v498, v422);
        v420(v385, v418);
        v421(v348, v422);
        goto LABEL_111;
      }

      v387 = v489[1];
      v388 = v501;
      v387(v490, v501);
      v387(v498, v388);
      (*(v506 + 8))(v385, v507);
    }

    (*(v459 + 8))(v348, v492);
    goto LABEL_175;
  }

  v143 = type metadata accessor for ItemReconciliationHalf();
  v144 = v509;
  v145 = *(v509 + 16);
  v146 = v478;
  v147 = v510;
  v145(v478, v511 + *(v143 + 48), v510);
  v148 = v508;
  v149 = *(v508 - 8);
  v150 = *(v149 + 48);
  v151 = v150(v146, 1, v508);
  v511 = v149;
  if (v151 == 1)
  {
    (*(v144 + 8))(v146, v147);
    v507 = 0;
    v512 = 0;
  }

  else
  {
    v322 = v504;
    v323 = *(v504 + 16);
    v324 = &v146[*(v148 + 56)];
    v506 = v143;
    v325 = v464;
    v503 = v150;
    v326 = v145;
    v327 = v146;
    v328 = v505;
    v323(v464, v324, v505);
    v329 = v327;
    v145 = v326;
    v150 = v503;
    (*(v149 + 8))(v329, v148);
    (*(v322 + 32))(v465, v325, v328);
    v330 = v467;
    v331 = v497;
    swift_dynamicCast();
    v332 = &v330[*(v331 + 36)];
    v333 = v332[1];
    v507 = *v332;
    v334 = *(v496 + 8);
    v512 = v333;

    v335 = v330;
    v143 = v506;
    v334(v335, v331);
    v144 = v509;
    v148 = v508;
  }

  v336 = v487;
  v145(v487, &v513[*(v143 + 48)], v147);
  if (v150(v336, 1, v148) == 1)
  {
    (*(v144 + 8))(v336, v147);
    if (v512)
    {
      goto LABEL_209;
    }

LABEL_210:

    v171 = 0;
    return v171 & 1;
  }

  v350 = v504;
  v351 = v471;
  v352 = v505;
  (*(v504 + 16))(v471, &v336[*(v148 + 56)], v505);
  (*(v511 + 1))(v336, v148);
  (*(v350 + 32))(v472, v351, v352);
  v353 = v475;
  v354 = v497;
  swift_dynamicCast();
  v355 = &v353[*(v354 + 36)];
  v357 = *v355;
  v356 = v355[1];
  v358 = *(v496 + 8);

  v358(v353, v354);
  v359 = v512;
  if (!v512)
  {
    if (!v356)
    {
      goto LABEL_210;
    }

LABEL_209:

    v171 = 1;
    return v171 & 1;
  }

  if (!v356)
  {
    goto LABEL_209;
  }

  v360 = v507;
  v361 = sub_1CEFE7394(v507, v359);
  if (v362)
  {
    if (v361 == 12565487 && v362 == 0xA300000000000000)
    {

LABEL_212:
      v428 = sub_1CF9E69E8();
      v429 = sub_1CF025150(v428, v360, v359);
      v360 = MEMORY[0x1D3868C10](v429);
      v431 = v430;

      goto LABEL_214;
    }

    v427 = sub_1CF9E8048();

    if (v427)
    {
      goto LABEL_212;
    }
  }

  v431 = v359;
LABEL_214:
  v432 = sub_1CEFE7394(v357, v356);
  if (v433)
  {
    if (v432 == 12565487 && v433 == 0xA300000000000000)
    {

LABEL_219:
      v435 = sub_1CF9E69E8();
      v436 = sub_1CF025150(v435, v357, v356);
      v357 = MEMORY[0x1D3868C10](v436);
      v438 = v437;

      goto LABEL_221;
    }

    v434 = sub_1CF9E8048();

    if (v434)
    {
      goto LABEL_219;
    }
  }

  v438 = v356;
LABEL_221:
  if (v360 == v357 && v431 == v438)
  {

    swift_bridgeObjectRelease_n();
    v171 = 0;
  }

  else
  {
    v439 = sub_1CF9E8048();

    swift_bridgeObjectRelease_n();
    v171 = v439 ^ 1;
  }

  return v171 & 1;
}

uint64_t sub_1CF24A924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = (*(a7 + 24))(sub_1CF21AEF0, 0, a4, a7);
  if (!v8)
  {
    v10 = v9;
    v7 = [v9 next];
  }

  return v7 & 1;
}

void *sub_1CF24A9A8(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v48 = a3;
  v50 = a5;
  v51 = a8;
  v49 = a6;
  v45 = a2;
  v46 = a1;
  v11 = sub_1CF9E5248();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v43 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E5268();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1CF9E6118();
  v42 = *(v18 - 8);
  v19 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v41 = a7;
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ItemStateVersion();
  v22 = swift_dynamicCastMetatype();
  if (v22)
  {
    MEMORY[0x1EEE9AC00](v22);
    v23 = v47;
    v24 = v48;
    v25 = v49;
    result = (*(*(a9 + 8) + 24))(sub_1CF24F088);
    if (!v23)
    {
      v27 = result;
      v28 = MEMORY[0x1E69E7CC0];
      v53 = MEMORY[0x1E69E7CC0];
      v52 = 0;
      if ([result next])
      {
        v29 = v41;
        do
        {
          v30 = objc_autoreleasePoolPush();
          sub_1CF224C84(&v52, v27, &v53, v24, a4, v50, v25, v29, v51, a9);
          objc_autoreleasePoolPop(v30);
        }

        while (([v27 next] & 1) != 0);
        v28 = v53;
        v31 = v52;
      }

      else
      {
        v31 = 0;
      }

      v39 = *(v28 + 2);

      if (v39 == 100)
      {
        return v31;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v32 = v42;
    v33 = v18;
    v34 = v14;
    v35 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v36 = sub_1CF9E6108();
    v37 = sub_1CF9E72A8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1CEFC7000, v36, v37, "Should not call fixupOutOfSyncFSBaseVersion on non-ItemStateVersion types", v38, 2u);
      MEMORY[0x1D386CDC0](v38, -1, -1);
    }

    (*(v32 + 8))(v21, v33);
    sub_1CF9E5108();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF24D0AC();
    sub_1CF9E57D8();
    sub_1CF9E50D8();
    (*(v44 + 8))(v17, v34);
    return swift_willThrow();
  }

  return result;
}

id sub_1CF24AE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a4;
  v37 = a7;
  v34[1] = a1;
  v7 = sub_1CF9E6068();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v34 - v17;
  v19 = type metadata accessor for Signpost(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v23 = qword_1EDEBBE40;
  (*(v8 + 56))(v18, 1, 1, v7);
  v34[0] = v18;
  sub_1CEFCCBDC(v18, v15, &unk_1EC4BED20, &unk_1CFA00700);
  v24 = *(v8 + 48);
  if (v24(v15, 1, v7) == 1)
  {
    v25 = v23;
    sub_1CF9E6048();
    if (v24(v15, 1, v7) != 1)
    {
      sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v8 + 32))(v11, v15, v7);
  }

  (*(v8 + 16))(v22, v11, v7);
  *&v22[*(v19 + 20)] = v23;
  v26 = &v22[*(v19 + 24)];
  *v26 = "SQLDB: count sync paused items";
  *(v26 + 1) = 30;
  v26[16] = 2;
  v27 = v23;
  sub_1CF9E7468();
  sub_1CF9E6038();
  v29 = *(v8 + 8);
  v28 = (v8 + 8);
  v29(v11, v7);
  sub_1CEFCCC44(v34[0], &unk_1EC4BED20, &unk_1CFA00700);
  v30 = v36;
  v31 = (*(v37 + 24))(sub_1CF227DE8, 0, v35);
  if (v30)
  {
    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5218(v22, type metadata accessor for Signpost);
  }

  else
  {
    v32 = v31;
    if ([v31 next])
    {
      v28 = [v32 longAtIndex_];
    }

    else
    {
      v28 = 0;
    }

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5218(v22, type metadata accessor for Signpost);
  }

  return v28;
}

uint64_t sub_1CF24B27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *(a9 + 32);
  v20 = qword_1F4BED360;
  v21 = unk_1F4BED368;
  v22 = a1;
  v23 = a2;

  v24 = a6;
  v13(sub_1CF24CC4C, v19, a6, a9);
  if (v9)
  {
    swift_arrayDestroy();
  }

  else
  {

    v15 = unk_1F4BED378;
    MEMORY[0x1EEE9AC00](v14);
    v18[2] = v16;
    v18[3] = v15;
    v18[4] = a1;
    v18[5] = a2;

    v13(sub_1CF24CC4C, v18, v24, a9);

    return swift_arrayDestroy();
  }
}

uint64_t sub_1CF24B408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (!swift_dynamicCastMetatype())
  {
    sub_1CF9E7948();

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v9 = (*(*(AssociatedConformanceWitness + 8) + 8))(AssociatedTypeWitness);
    MEMORY[0x1D3868CC0](v9);

    MEMORY[0x1D3868CC0](0x4C4C554E20, 0xE500000000000000);
  }

  v10 = swift_getAssociatedTypeWitness();
  v11 = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedConformanceWitness();
  type metadata accessor for ItemStateVersion();
  if (swift_dynamicCastMetatype())
  {
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA350D0);
    v13 = (*(*(v12 + 8) + 8))(v11);
    MEMORY[0x1D3868CC0](v13);

    v14 = 0xD000000000000027;
    v15 = 0x80000001CFA350F0;
  }

  else
  {
    sub_1CF9E7948();

    v16 = swift_getAssociatedConformanceWitness();
    v17 = (*(*(v16 + 8) + 8))(v10);
    MEMORY[0x1D3868CC0](v17);

    v14 = 0x4C4C554E20;
    v15 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v14, v15);
  v18 = swift_getAssociatedTypeWitness();
  if (!swift_dynamicCastMetatype())
  {
    sub_1CF9E7948();

    v19 = swift_getAssociatedConformanceWitness();
    v20 = (*(*(v19 + 8) + 8))(v18);
    MEMORY[0x1D3868CC0](v20);

    MEMORY[0x1D3868CC0](0x4C4C554E20, 0xE500000000000000);
  }

  v21 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedTypeWitness();
  v23 = swift_getAssociatedConformanceWitness();
  type metadata accessor for ItemStateVersion();
  if (swift_dynamicCastMetatype())
  {
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA35030);
    v24 = (*(*(v23 + 8) + 8))(v22);
    MEMORY[0x1D3868CC0](v24);

    v25 = 0xD000000000000027;
    v26 = 0x80000001CFA35050;
  }

  else
  {
    sub_1CF9E7948();

    v27 = swift_getAssociatedConformanceWitness();
    v28 = (*(*(v27 + 8) + 8))(v21);
    MEMORY[0x1D3868CC0](v28);

    v25 = 0x4C4C554E20;
    v26 = 0xE500000000000000;
  }

  v29 = MEMORY[0x1D3868CC0](v25, v26);
  MEMORY[0x1EEE9AC00](v29);
  v30 = v32;
  v33 = *(a7 + 32);
  v33(sub_1CF24CCA0);

  if (v30)
  {
  }

  (v33)(sub_1CF22B420, 0, a4, a7);
  (v33)(sub_1CF22B43C, 0, a4, a7);
  (v33)(sub_1CF22B458, 0, a4, a7);
  (v33)(sub_1CF22B474, 0, a4, a7);
  (v33)(sub_1CF22B490, 0, a4, a7);
  (v33)(sub_1CF22B4AC, 0, a4, a7);
  (v33)(sub_1CF22B4C8, 0, a4, a7);
  (v33)(sub_1CF22B4E4, 0, a4, a7);
  (v33)(sub_1CF24FAA0, 0, a4, a7);
  (v33)(sub_1CF22B500, 0, a4, a7);
  (v33)(sub_1CF22B51C, 0, a4, a7);
  (v33)(sub_1CF22B538, 0, a4, a7);
  return (v33)(sub_1CF22B554, 0, a4, a7);
}

uint64_t sub_1CF24BD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a7 + 32);
  result = v10(sub_1CF22B570, 0, a4, a7);
  if (!v7)
  {
    v10(sub_1CF22B58C, 0, a4, a7);
    v10(sub_1CF22B5A8, 0, a4, a7);
    v10(sub_1CF22B5C4, 0, a4, a7);
    v10(sub_1CF22B5E0, 0, a4, a7);
    v10(sub_1CF22B5FC, 0, a4, a7);
    v10(sub_1CF22B618, 0, a4, a7);
    v10(sub_1CF22B634, 0, a4, a7);
    v10(sub_1CF22B650, 0, a4, a7);
    v10(sub_1CF22B66C, 0, a4, a7);
    v10(sub_1CF22B688, 0, a4, a7);
    v10(sub_1CF22B6A4, 0, a4, a7);
    return v10(sub_1CF22B6C0, 0, a4, a7);
  }

  return result;
}

uint64_t sub_1CF24BFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a7 + 32);
  result = v10(sub_1CF22B6DC, 0, a4, a7);
  if (!v7)
  {
    v10(sub_1CF22B6F8, 0, a4, a7);
    v10(sub_1CF22B714, 0, a4, a7);
    v10(sub_1CF22B730, 0, a4, a7);
    v10(sub_1CF22B74C, 0, a4, a7);
    v10(sub_1CF22B768, 0, a4, a7);
    v10(sub_1CF22B784, 0, a4, a7);
    v10(sub_1CF22B7A0, 0, a4, a7);
    v10(sub_1CF24FAA4, 0, a4, a7);
    v10(sub_1CF22B7BC, 0, a4, a7);
    return v10(sub_1CF22B7D8, 0, a4, a7);
  }

  return result;
}

uint64_t sub_1CF24C218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a7 + 32);
  result = v10(sub_1CF22B7F4, 0, a4, a7);
  if (!v7)
  {
    v10(sub_1CF22B810, 0, a4, a7);
    v10(sub_1CF22B8CC, 0, a4, a7);
    v10(sub_1CF22B988, 0, a4, a7);
    v10(sub_1CF22BA44, 0, a4, a7);
    v10(sub_1CF22BB00, 0, a4, a7);
    return v10(sub_1CF22BB1C, 0, a4, a7);
  }

  return result;
}

uint64_t sub_1CF24C3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a7 + 32);
  result = v10(sub_1CF22BB38, 0, a4, a7);
  if (!v7)
  {
    v10(sub_1CF22BB54, 0, a4, a7);
    v10(sub_1CF22BB70, 0, a4, a7);
    v10(sub_1CF22BB8C, 0, a4, a7);
    v10(sub_1CF22BBA8, 0, a4, a7);
    v10(sub_1CF22BBC4, 0, a4, a7);
    return v10(sub_1CF22BBE0, 0, a4, a7);
  }

  return result;
}

uint64_t sub_1CF24C584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1CF24BFCC(a1, a2, a3, a4, a5, a6, a7);
  if (!v7)
  {
    v16 = sub_1CF24C3A4(a1, a2, a3, a4, a5, a6, a7);
    MEMORY[0x1EEE9AC00](v16);
    v17 = *(a7 + 32);
    v17(sub_1CF24CC90);
    (v17)(sub_1CF22BDCC, 0, a4, a7);
    (v17)(sub_1CF22BDE8, 0, a4, a7);
    (v17)(sub_1CF22BE04, 0, a4, a7);
    (v17)(sub_1CF24FAA0, 0, a4, a7);
    return (v17)(sub_1CF22BE20, 0, a4, a7);
  }

  return result;
}

uint64_t sub_1CF24C7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1CF24BFCC(a1, a2, a3, a4, a5, a6, a7);
  if (!v7)
  {
    sub_1CF24C3A4(a1, a2, a3, a4, a5, a6, a7);
    return sub_1CF24BD20(a1, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_1CF24C900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = *(a7 + 32);
  result = v14(a8, 0, a4, a7);
  if (!v11)
  {
    v14(a9, 0, a4, a7);
    v14(a10, 0, a4, a7);
    return v14(a11, 0, a4, a7);
  }

  return result;
}

uint64_t sub_1CF24CABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = *(a7 + 32);
  result = v13(a8, 0, a4, a7);
  if (!v10)
  {
    v13(a9, 0, a4, a7);
    return v13(a10, 0, a4, a7);
  }

  return result;
}

uint64_t sub_1CF24CB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1CF24C3A4(a1, a2, a3, a4, a5, a6, a7);
  if (!v7)
  {
    return sub_1CF24C218(a1, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_1CF24CBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(a7 + 32);
  result = v12(a8, 0, a4, a7);
  if (!v9)
  {
    return v12(a9, 0, a4, a7);
  }

  return result;
}

uint64_t sub_1CF24CC60(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF22D13C(a1, v1[4]);
}

uint64_t sub_1CF24CC6C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF22BFF8(a1, v1[4]);
}

uint64_t sub_1CF24CC78(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF22C538(a1, v1[4]);
}

uint64_t sub_1CF24CC84(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF22CB50(a1, v1[4]);
}

uint64_t sub_1CF24CC90()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  return sub_1CF22BC18();
}

uint64_t sub_1CF24CCA0(uint64_t a1)
{
  v7 = v1[6];
  v8 = v1[7];
  v5 = v1[4];
  v6 = v1[5];
  v3 = v1[2];
  v4 = v1[3];
  return sub_1CF22B1AC(a1, v1[8], v1[9], v1[10], v1[11], v1[12], v1[13], v1[14], v1[15]);
}

uint64_t sub_1CF24CCEC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 48);
  return sub_1CF238104(a1, *(v1 + 32), *(v1 + 40));
}

uint64_t sub_1CF24CCFC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1CF24CD3C()
{
  result = qword_1EC4BFB30;
  if (!qword_1EC4BFB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BFB30);
  }

  return result;
}

uint64_t sub_1CF24CDE0(char a1)
{
  v2 = sub_1CF9E5CF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v9 = v8;
  result = (*(v3 + 8))(v6, v2);
  v10 = v9 * 1000000000.0;
  if (COERCE__INT64(fabs(v9 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 9.22337204e18)
  {
    return v10;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1CF24D058(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
  }
}

unint64_t sub_1CF24D0AC()
{
  result = qword_1EDEAB450;
  if (!qword_1EDEAB450)
  {
    sub_1CF9E5268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB450);
  }

  return result;
}

void sub_1CF24D104(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1 != 1)
  {
    sub_1CF24D058(a1, a2, a3, a4);
  }
}

uint64_t sub_1CF24D114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t sub_1CF24D128(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  return sub_1CF237BB4(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80));
}

id sub_1CF24D160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*(a7 + 24))(sub_1CF233DD0, 0, a4, a7);
  if (!v7)
  {
    v9 = result;
    if (([result next] & 1) == 0)
    {
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLReconciliationTable.swift", 141, 2, 3936);
    }

    v10 = [v9 longAtIndex_];

    return v10;
  }

  return result;
}

uint64_t sub_1CF24D218(unint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(char *, uint64_t), uint64_t a5, void *a6, void (*a7)(void), void (*a8)(char *, uint64_t), uint64_t a9)
{
  v104 = a4;
  v107 = a6;
  v108 = a3;
  v101 = a1;
  v102 = a2;
  v105 = a7;
  v106 = a9;
  strcpy(v109, "id parentID filename contentType ");
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v111 = AssociatedTypeWitness;
  v112 = MEMORY[0x1E69E6158];
  v113 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C50C0, &unk_1CFA084A0);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v11 = *(*(TupleTypeMetadata - 1) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v97 = &v87 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C50C0, &unk_1CFA084A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v96 = &v87 - v15;
  v100 = swift_getAssociatedTypeWitness();
  v98 = *(v100 - 8);
  v16 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v87 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v87 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v87 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v87 - v29;
  v31 = *(v106 + 8);
  v32 = a5;
  v33 = a5;
  v34 = a8;
  v35 = v103;
  v36 = sub_1CF24D160(v108, v104, v33, v107, v105, a8, v31);
  if (v35)
  {
    return a8;
  }

  v103 = v32;
  v92 = v24;
  v93 = v21;
  v91 = v18;
  v94 = v27;
  v95 = v30;
  v37 = v102;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v39 = v101;
  *(&v87 - 2) = v101;
  *(&v87 - 1) = v40;
  v41 = v107;
  v42 = v108;
  (*(v106 + 32))(sub_1CF24F724, v38);
  result = sub_1CF24D160(v42, v104, v103, v41, v105, v34, v31);
  if (__OFADD__(v37, 1))
  {
    __break(1u);
  }

  else
  {
    v44 = MEMORY[0x1EEE9AC00](result);
    *(&v87 - 2) = v39;
    *(&v87 - 1) = v45;
    v46 = (*(v31 + 24))(sub_1CF24F72C, v44);
    v47 = v95;
    v48 = v46;
    v108 = 0;
    AssociatedTypeWitness = sub_1CF9E6DA8();
    result = sub_1CF9E6DA8();
    v114 = result;
    if ((v37 & 0x8000000000000000) == 0)
    {
      v49 = &selRef_initWithTarget_;
      v50 = v98;
      if (v37)
      {
        if ([v48 next])
        {
          v90 = (v50 + 16);
          v88 = (v50 + 32);
          v104 = (v50 + 8);
          v51 = *(swift_getAssociatedConformanceWitness() + 8);
          v105 = *(v51 + 16);
          v106 = v51 + 16;
          v52 = v91;
          v89 = v48;
          v87 = v51;
          while (1)
          {
            v53 = v48;
            a8 = v100;
            v54 = v108;
            v105();
            v108 = v54;
            if (v54)
            {

LABEL_35:

              return a8;
            }

            v55 = [v53 isNullAtIndex_];
            v107 = v53;
            if (v55)
            {
              break;
            }

            v56 = [v53 BOOLAtIndex_];
            v57 = [v53 longAtIndex_];
            v58 = v53;
            v59 = v57;
            if (!v56)
            {
              goto LABEL_20;
            }

            v60 = v58;
            a8 = v100;
            v61 = v108;
            v105();
            v108 = v61;
            if (v61)
            {

              (*v104)(v47, v100);
              goto LABEL_35;
            }

            v101 = v59;
            v102 = v37;
            LOBYTE(v59) = 4;
            v62 = [v60 stringAtIndex_];
            v63 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v65 = v64;

            v66 = [v60 isNullAtIndex_];
            v67 = v93;
            v68 = v92;
            if ((v66 & 1) == 0)
            {
              v69 = [v60 longAtIndex_];
              if (v69 >= 5 || ((0x17u >> v69) & 1) == 0)
              {

                sub_1CF1DA5D8();
                swift_allocError();
                *v85 = 0;
                swift_willThrow();

                a8 = *v104;
                v86 = v100;
                (*v104)(v94, v100);
                a8(v47, v86);
                return a8;
              }

              v59 = 0x300020100uLL >> (8 * v69);
            }

            v98 = v63;
            v70 = *v90;
            v71 = v68;
            v72 = v100;
            (*v90)(v71, v47, v100);
            v70(v67, v94, v72);
            v103 = v65;
            if (v66)
            {
              v73 = 1;
              v74 = v97;
              v75 = v96;
            }

            else
            {
              v74 = v97;
              if (v59 > 1u)
              {
                v75 = v96;
                if (v59 == 2)
                {
                  sub_1CF9E5F18();
                }

                else
                {
                  sub_1CF9E5FC8();
                }
              }

              else
              {
                v75 = v96;
                if (v59)
                {
                  sub_1CF9E5F98();
                }

                else
                {
                  sub_1CF9E5F78();
                }
              }

              v73 = 0;
            }

            v77 = sub_1CF9E5FF8();
            (*(*(v77 - 8) + 56))(v75, v73, 1, v77);
            v78 = v100;
            v79 = TupleTypeMetadata[12];
            v80 = &v74[TupleTypeMetadata[16]];
            v81 = TupleTypeMetadata[20];
            v82 = *v88;
            (*v88)(v74, v92, v100);
            v82(&v74[v79], v93, v78);
            v83 = v103;
            *v80 = v98;
            v80[1] = v83;
            sub_1CEFE55D0(v75, &v74[v81], &unk_1EC4C50C0, &unk_1CFA084A0);
            sub_1CF9E6E58();
            sub_1CF9E6E18();
            v84 = *v104;
            (*v104)(v94, v78);
            v47 = v95;
            v84(v95, v78);
            v52 = v91;
            v48 = v89;
            v37 = v102 - 1;
            if (v102 == 1)
            {
              goto LABEL_32;
            }

LABEL_31:
            if (![v107 next])
            {
              goto LABEL_32;
            }
          }

          [v53 longAtIndex_];
LABEL_20:
          v76 = v100;
          (*v90)(v52, v47, v100);
          sub_1CF9E6E58();
          sub_1CF9E6E18();
          (*v104)(v47, v76);
          if (!--v37)
          {
            goto LABEL_32;
          }

          goto LABEL_31;
        }

LABEL_32:
        v49 = &selRef_initWithTarget_;
      }

      a8 = AssociatedTypeWitness;
      [v48 v49[219]];

      return a8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF24DBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a7;
  v45 = a3;
  v46 = a6;
  v44 = a5;
  v52 = a4;
  v49 = a1;
  v50 = a2;
  v7 = sub_1CF9E6068();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  v19 = type metadata accessor for Signpost(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v51 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v22 = qword_1EDEBBE40;
  (*(v8 + 56))(v18, 1, 1, v7);
  sub_1CEFCCBDC(v18, v15, &unk_1EC4BED20, &unk_1CFA00700);
  v24 = v8 + 48;
  v23 = *(v8 + 48);
  if (v23(v15, 1, v7) == 1)
  {
    v25 = v22;
    sub_1CF9E6048();
    if (v23(v15, 1, v7) != 1)
    {
      sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v8 + 32))(v11, v15, v7);
  }

  v26 = v51;
  (*(v8 + 16))(v51, v11, v7);
  *(v26 + *(v19 + 20)) = v22;
  v27 = v26 + *(v19 + 24);
  *v27 = "SQLDB: Fetch pending indexing items";
  *(v27 + 8) = 35;
  *(v27 + 16) = 2;
  v28 = v22;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v8 + 8))(v11, v7);
  v29 = sub_1CEFCCC44(v18, &unk_1EC4BED20, &unk_1CFA00700);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = v49;
  v31 = v50;
  *(&v44 - 2) = v49;
  *(&v44 - 1) = v31;
  v33 = v47;
  v34 = (*(v48 + 24))(sub_1CF24EFE4, v30);
  if (v33)
  {
    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5218(v26, type metadata accessor for Signpost);
    return v24;
  }

  v35 = v34;
  v36 = *(sub_1CF1CBB20() + 2);

  if (v36 >> 31)
  {
    __break(1u);
    goto LABEL_22;
  }

  v38 = *(sub_1CF1CC7A8() + 2);

  if (v38 >> 31)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v39 = __OFADD__(v36, v38);
  v40 = v36 + v38;
  if (v39)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (__OFADD__(v40, 12))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v41 = *(sub_1CEFE9C6C() + 16);

  if (v41 >> 31)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!__OFADD__(v40 + 12, v41))
  {
    v54 = 0;
    v53 = v32;
    if ([v35 next])
    {
      do
      {
        v42 = objc_autoreleasePoolPush();
        sub_1CF2344D8(&v54);
        objc_autoreleasePoolPop(v42);
      }

      while (([v35 next] & 1) != 0);
      v24 = v53;
    }

    else
    {
      v24 = v49;
    }

    sub_1CF9E7458();
    v43 = v51;
    sub_1CF9E6038();
    sub_1CEFD5218(v43, type metadata accessor for Signpost);
    return v24;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1CF24E150(uint64_t a1, uint64_t a2, char *a3, void (*a4)(uint64_t *, void *), char *a5, void *a6, uint64_t a7)
{
  v63 = a7;
  v65 = a6;
  v66 = a4;
  v67 = a5;
  v68 = a1;
  v64 = a3;
  v61 = a2;
  v7 = sub_1CF9E5248();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v58[1] = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E5268();
  v59 = *(v10 - 8);
  v60 = v10;
  v11 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v58[0] = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E6068();
  v14 = *(v13 - 1);
  v15 = v14[8];
  MEMORY[0x1EEE9AC00](v13);
  v17 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v58 - v23;
  v25 = type metadata accessor for Signpost(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v71 = v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v28 = qword_1EDEBBE40;
    (v14[7])(v24, 1, 1, v13);
    sub_1CEFCCBDC(v24, v21, &unk_1EC4BED20, &unk_1CFA00700);
    v29 = v14[6];
    if (v29(v21, 1, v13) == 1)
    {
      v30 = v28;
      sub_1CF9E6048();
      if (v29(v21, 1, v13) != 1)
      {
        sub_1CEFCCC44(v21, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (v14[4])(v17, v21, v13);
    }

    v31 = v71;
    (v14[2])(v71, v17, v13);
    *&v31[*(v25 + 20)] = v28;
    v32 = &v31[*(v25 + 24)];
    *v32 = "SQLDB: Fetch pending indexing deletions";
    *(v32 + 1) = 39;
    v32[16] = 2;
    v33 = v28;
    sub_1CF9E7468();
    sub_1CF9E6038();
    v34 = v14[1];
    ++v14;
    v34(v17, v13);
    v35 = sub_1CEFCCC44(v24, &unk_1EC4BED20, &unk_1CFA00700);
    v36 = MEMORY[0x1EEE9AC00](v35);
    v25 = v68;
    v58[-2] = v68;
    v37 = v63;
    v17 = v64;
    v38 = v62;
    v13 = v65;
    v39 = (*(v63 + 32))(sub_1CF24F038, v36);
    v24 = v38;
    if (v38)
    {
LABEL_8:
      sub_1CF9E7458();
      v43 = v71;
      sub_1CF9E6038();
      sub_1CEFD5218(v43, type metadata accessor for Signpost);
      return v25;
    }

    v62 = v33;
    v40 = MEMORY[0x1EEE9AC00](v39);
    v41 = v61;
    v58[-2] = v25;
    v58[-1] = v41;
    v42 = (*(*(v37 + 8) + 24))(sub_1CF24F040, v40);
    v21 = v42;
    if (![v42 next])
    {
      break;
    }

    v45 = 0;
    while (1)
    {
      v46 = objc_autoreleasePoolPush();
      if (__OFADD__(v45, 1))
      {
        break;
      }

      v14 = v46;
      v47 = [v21 isNullAtIndex_];
      v65 = (v45 + 1);
      if (v47)
      {
        v48 = 0;
        v49 = -1;
      }

      else
      {
        v50 = v21;
        v51 = [v50 longAtIndex_];
        v48 = v51;
        if (v51)
        {
          if (v51 == 0x8000000000000000)
          {
            v49 = 2;
            v48 = 1;
          }

          else if (v51 < 0)
          {
            v48 = -v51;
            if (-v51 >> 32)
            {
              sub_1CF9E51B8();
              sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
              sub_1CF24D0AC();
              v56 = v58[0];
              v57 = v60;
              sub_1CF9E57D8();
              sub_1CF9E50D8();
              (*(v59 + 8))(v56, v57);
              swift_willThrow();

              objc_autoreleasePoolPop(v14);
              goto LABEL_8;
            }

            v49 = 0;
          }

          else
          {
            v49 = 1;
          }
        }

        else
        {
          v49 = 2;
        }
      }

      if ([v21 isNullAtIndex_])
      {
        v13 = 0;
      }

      else
      {
        v52 = v21;
        v13 = [v52 stringAtIndex_];
        if (!v13)
        {
          _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v68 = v25;
          v13 = sub_1CF9E6888();
          v25 = v68;
        }
      }

      v53 = [v21 longAtIndex_];
      if (v53 < v25)
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLReconciliationTable.swift", 141, 2, 4234);
      }

      v54 = v53;
      v69 = v48;
      v70 = v49;
      v17 = v67;
      v66(&v69, v13);

      objc_autoreleasePoolPop(v14);
      ++v45;
      v25 = v54;
      if (([v21 next] & 1) == 0)
      {
        v25 = v54;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_35:
    swift_once();
  }

LABEL_32:

  sub_1CF9E7458();
  v55 = v71;
  sub_1CF9E6038();
  sub_1CEFD5218(v55, type metadata accessor for Signpost);
  return v25;
}

uint64_t sub_1CF24E938(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t (**a6)(uint64_t (*)(void *a1), __n128))
{
  v56 = a6;
  v53 = a2;
  v54 = a5;
  v61 = a4;
  v58 = a3;
  v7 = sub_1CF9E5248();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v48[1] = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E5268();
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v48[0] = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E6068();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v48 - v23;
  v25 = type metadata accessor for Signpost(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v57 = v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *a1;
  v51 = *(a1 + 8);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v28 = qword_1EDEBBE40;
  (*(v14 + 56))(v24, 1, 1, v13);
  sub_1CEFCCBDC(v24, v21, &unk_1EC4BED20, &unk_1CFA00700);
  v29 = *(v14 + 48);
  if (v29(v21, 1, v13) == 1)
  {
    v30 = v28;
    sub_1CF9E6048();
    if (v29(v21, 1, v13) != 1)
    {
      sub_1CEFCCC44(v21, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v14 + 32))(v17, v21, v13);
  }

  v31 = v57;
  (*(v14 + 16))(v57, v17, v13);
  *&v31[*(v25 + 20)] = v28;
  v32 = &v31[*(v25 + 24)];
  *v32 = "SQLDB: Enumerate dataless containers";
  *(v32 + 1) = 36;
  v32[16] = 2;
  v33 = v28;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v14 + 8))(v17, v13);
  v34 = sub_1CEFCCC44(v24, &unk_1EC4BED20, &unk_1CFA00700);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v48[-2] = v52;
  LOBYTE(v48[-1]) = v51;
  v36 = v55;
  v37 = v56[3](sub_1CF24EF74, v35);
  if (v36)
  {
LABEL_8:
    sub_1CF9E7458();
  }

  else
  {
    v38 = v37;
    v56 = v33;
    if ([v37 next])
    {
      do
      {
        v39 = objc_autoreleasePoolPush();
        v40 = v38;
        v41 = [v40 longAtIndex_];
        if (v41 == 0x8000000000000000)
        {
          v43 = 2;
          v42 = 1;
        }

        else
        {
          v42 = v41;
          if (v41)
          {
            if (v41 < 0)
            {
              v42 = -v41;
              if (-v41 >> 32)
              {
                sub_1CF9E51B8();
                sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
                sub_1CF24D0AC();
                v46 = v48[0];
                v47 = v50;
                sub_1CF9E57D8();
                sub_1CF9E50D8();
                (*(v49 + 8))(v46, v47);
                swift_willThrow();

                objc_autoreleasePoolPop(v39);
                goto LABEL_8;
              }

              v43 = 0;
            }

            else
            {
              v43 = 1;
            }
          }

          else
          {
            v43 = 2;
          }
        }

        v59 = v42;
        v60 = v43;
        v58(&v59);
        objc_autoreleasePoolPop(v39);
      }

      while (([v40 next] & 1) != 0);
    }

    sub_1CF9E7458();
  }

  v44 = v57;
  sub_1CF9E6038();
  return sub_1CEFD5218(v44, type metadata accessor for Signpost);
}

unint64_t sub_1CF24EF90()
{
  result = qword_1EDEAA338;
  if (!qword_1EDEAA338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAA338);
  }

  return result;
}

uint64_t type metadata accessor for PendingIndexingItemRow()
{
  result = qword_1EDEA5438;
  if (!qword_1EDEA5438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF24F050(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF228AE0(a1, v1[4]);
}

uint64_t sub_1CF24F05C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF228DE8(a1, v1[4]);
}

uint64_t sub_1CF24F0BC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 64);
  return sub_1CF223E64(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
}

uint64_t sub_1CF24F238(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 88);
  v8 = *(v1 + 56);
  v7 = *(v1 + 40);
  return sub_1CF21F124(a1, *(v1 + 64), *(v1 + 72), *(v1 + 80));
}

uint64_t sub_1CF24F2B8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1CF21DB24();
}

uint64_t sub_1CF24F2C4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1CF21E07C();
}

uint64_t sub_1CF24F2D0(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF21D298(a1, v1[4]);
}

uint64_t sub_1CF24F310(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF21C444(a1, v1[4], v1[5]);
}

uint64_t sub_1CF24F31C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF21C690(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48));
}

uint64_t sub_1CF24F32C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[4];
  v4 = v2[7];
  return sub_1CF21CC08(a1, v2[2], v2[3], v2[5], v2[6], a2);
}

uint64_t sub_1CF24F354(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF21B6AC(a1, v1[4], v1[5]);
}

uint64_t sub_1CF24F3F8(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF2149E8(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48)) & 1;
}

uint64_t sub_1CF24F464@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 32);
  v9 = *(v2 + 16);
  v10 = *(v2 + 40);
  v6 = *(v2 + 56);
  v7 = *(type metadata accessor for ItemReconciliation() - 8);
  return sub_1CF2151CC(a1, *(v2 + ((*(v7 + 64) + ((*(v7 + 80) + 64) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

unint64_t sub_1CF24F550()
{
  result = qword_1EDEA3398;
  if (!qword_1EDEA3398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C01D0, &unk_1CF9FF090);
    sub_1CEFCCCEC(&qword_1EDEA37C0, &qword_1EC4BE188, &qword_1CFA03800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3398);
  }

  return result;
}

unint64_t sub_1CF24F600()
{
  result = qword_1EDEAC2B0;
  if (!qword_1EDEAC2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAC2B0);
  }

  return result;
}

uint64_t sub_1CF24F654(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF21237C(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48));
}

uint64_t sub_1CF24F6C0(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF20ACC8(a1, v1[4], v1[5]);
}

uint64_t sub_1CF24F6CC(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF22982C(a1, v1[4]);
}

uint64_t sub_1CF24F6D8(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF229218(a1, v1[4]);
}

uint64_t sub_1CF24F6E4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF219E9C(a1, *(v1 + 32), *(v1 + 40));
}

uint64_t sub_1CF24F6F4(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF2198F8(a1, v1[4]);
}

uint64_t sub_1CF24F700(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF219374(a1, v1[4]);
}

uint64_t sub_1CF24F70C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF217F60(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 57));
}

uint64_t sub_1CF24F724()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1CF233BF4();
}

void sub_1CF24F75C()
{
  sub_1CF24F868(319, &qword_1EDEA8548, &unk_1EC4BE360, &qword_1CF9FE650);
  if (v0 <= 0x3F)
  {
    sub_1CF24F868(319, &qword_1EDEA8540, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    if (v1 <= 0x3F)
    {
      sub_1CF24F8BC(319, qword_1EDEA52A0);
      if (v2 <= 0x3F)
      {
        sub_1CF24F8BC(319, &qword_1EDEA3740);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1CF24F868(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1CF9E75D8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1CF24F8BC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1CF9E75D8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF24F938(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 888) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 888) = 0;
    }

    if (a2)
    {
      *(result + 464) = a2;
    }
  }

  return result;
}

uint64_t sub_1CF24FAE4(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3 / 1000000000.0;
  sub_1CF9E5C88();
  v12 = a1[3];
  v22[0] = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](91, 0xE100000000000000);
  v13 = sub_1CF9E5C48();
  v14 = [a2 stringFromDate_];

  v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v17 = v16;

  MEMORY[0x1D3868CC0](v15, v17);

  MEMORY[0x1D3868CC0](0x3A534F205DLL, 0xE500000000000000);
  MEMORY[0x1D3868CC0](*(v3 + 8), *(v3 + 16));
  MEMORY[0x1D3868CC0](977421344, 0xE400000000000000);
  v18 = *(v3 + 24);
  v19 = sub_1CF3B0B48();
  MEMORY[0x1D3868CC0](v19);

  MEMORY[0x1D3868CC0](46, 0xE100000000000000);
  v22[1] = *(v3 + 32);
  v23 = 114;
  v24 = 0xE100000000000000;
  v20 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v20);

  MEMORY[0x1D3868CC0](v23, v24);

  MEMORY[0x1D3868CC0](978535968, 0xE400000000000000);
  MEMORY[0x1D3868CC0](*(v3 + 40), *(v3 + 48));
  MEMORY[0x1D3868CC0](978339360, 0xE400000000000000);
  MEMORY[0x1D3868CC0](*(v3 + 56), *(v3 + 64));
  sub_1CF4FB2BC(v25, v26, v12, v22[0]);

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1CF24FDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000075, 0x80000001CFA3C650);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
  return 0;
}

uint64_t sub_1CF24FE58(void *a1)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000039, 0x80000001CFA3C790);
  v2 = sub_1CF9E6888();
  v3 = [a1 bindStringParameter_];

  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v6 = v5;

  MEMORY[0x1D3868CC0](v4, v6);

  return 0;
}

uint64_t sub_1CF24FF30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v53[2] = a7;
  v53[3] = a8;
  v53[1] = a6;
  v15 = sub_1CF9E5CF8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = 0;
  v55 = 0xE000000000000000;
  sub_1CF9E7948();
  v57 = v54;
  v58 = v55;
  MEMORY[0x1D3868CC0](0xD000000000000072, 0x80000001CFA3C5D0);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v21 = v20;
  (*(v16 + 8))(v19, v15);
  v22 = v21 * 1000000000.0;
  if (COERCE__INT64(fabs(v21 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v56 = MEMORY[0x1E69E6530];
  v54 = v22;
  v23 = sub_1CEFF8EA0(&v54);
  v25 = v24;
  sub_1CEFCCC44(&v54, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v25)
  {
LABEL_12:
    result = sub_1CF9E7B68();
    __break(1u);
    return result;
  }

  MEMORY[0x1D3868CC0](v23, v25);

  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  v26 = sub_1CF0757A0(a2, a3);
  MEMORY[0x1D3868CC0](v26);

  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020);
  v27 = [a1 bindUnsignedIntegerParameter_];
  v28 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v30 = v29;

  MEMORY[0x1D3868CC0](v28, v30);

  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  v31 = [a1 bindUnsignedLongParameter_];
  v32 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v34 = v33;

  MEMORY[0x1D3868CC0](v32, v34);

  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020);
  v35 = sub_1CF9E6888();
  v36 = [a1 bindStringParameter_];

  v37 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v39 = v38;

  MEMORY[0x1D3868CC0](v37, v39);

  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  v40 = sub_1CF9E6888();
  v41 = [a1 bindStringParameter_];

  v42 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v44 = v43;

  MEMORY[0x1D3868CC0](v42, v44);

  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  if (a10[1])
  {
    v45 = *a10;
    v46 = a10[1];

    v47 = sub_1CF9E6888();
  }

  else
  {
    v47 = 0;
  }

  v48 = [a1 bindObjectParameter_];
  swift_unknownObjectRelease();
  v49 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v51 = v50;

  MEMORY[0x1D3868CC0](v49, v51);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return v57;
}

unint64_t sub_1CF2503FC(void *a1)
{
  sub_1CF9E7948();

  v2 = sub_1CF9E6888();
  v3 = [a1 bindStringParameter_];

  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v6 = v5;

  MEMORY[0x1D3868CC0](v4, v6);

  return 0xD000000000000028;
}

uint64_t sub_1CF2504D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = FPOSVersion();
  if (v8 && (v9 = v8, v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0(), v12 = v11, v9, sub_1CF250A58(v10, v12, a1, a2, a3), v14 = v13, , (v14 & 1) == 0))
  {
    sub_1CF9E5C88();
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = sub_1CF9E5CF8();
  v17 = *(*(v16 - 8) + 56);

  return v17(a4, v15, 1, v16);
}

uint64_t sub_1CF2505FC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

void sub_1CF25069C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = [a1 longAtIndex_];
  v4 = [a1 stringAtIndex_];
  v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v22 = v6;
  v23 = v5;

  v7 = [a1 unsignedIntAtIndex_];
  v8 = [a1 unsignedLongAtIndex_];
  v9 = [a1 stringAtIndex_];
  v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v20 = v11;
  v21 = v10;

  v12 = [a1 stringAtIndex_];
  v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v15 = v14;

  if ([a1 isNullAtIndex_])
  {

    v16 = 0;
    v17 = 0;
  }

  else
  {
    v18 = [a1 stringAtIndex_];
    v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v17 = v19;
  }

  *a2 = v24;
  *(a2 + 8) = v23;
  *(a2 + 16) = v22;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v21;
  *(a2 + 48) = v20;
  *(a2 + 56) = v13;
  *(a2 + 64) = v15;
  *(a2 + 72) = v16;
  *(a2 + 80) = v17;
}

void sub_1CF250904(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v15[2] = a1;
  v15[3] = a2;
  v7 = (*(a4 + 24))(sub_1CF250D78, v15, a3, a4);
  if (!v5)
  {
    v8 = v7;
    if ([v7 next])
    {
      sub_1CF25069C(v8, v16);
      v9 = v16[0];
      v10 = v16[1];
      v11 = v16[2];
      v12 = v16[3];
      v13 = v16[4];
      v14 = v17;
    }

    else
    {

      v14 = 0;
      v9 = 0uLL;
      v10 = 0uLL;
      v11 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
    }

    *a5 = v9;
    *(a5 + 16) = v10;
    *(a5 + 32) = v11;
    *(a5 + 48) = v12;
    *(a5 + 64) = v13;
    *(a5 + 80) = v14;
  }
}

double sub_1CF2509E4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1CF250904(4412225, 0xE300000000000000, a1, a2, v8);
  if (!v3)
  {
    v6 = v8[3];
    *(a3 + 32) = v8[2];
    *(a3 + 48) = v6;
    *(a3 + 64) = v8[4];
    *(a3 + 80) = v9;
    result = *v8;
    v7 = v8[1];
    *a3 = v8[0];
    *(a3 + 16) = v7;
  }

  return result;
}

id sub_1CF250A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[2] = a1;
  v10[3] = a2;
  v7 = (*(a5 + 24))(sub_1CF250D70, v10, a4, a5);
  if (!v5)
  {
    v8 = v7;
    if ([v7 next])
    {
      v6 = [v8 longAtIndex_];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

void sub_1CF250B14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 24))(sub_1CF2503E0, 0);
  if (!v4)
  {
    v7 = v6;
    v8 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v9 = sub_1CF9E6888();
    [v8 setDateFormat_];

    if ([v7 next])
    {
      v16 = v8;
      v17 = v7;
      do
      {
        v10 = objc_autoreleasePoolPush();
        v11 = v7;
        sub_1CF25069C(v11, v18);
        sub_1CF24FAE4(a2, v8);
        v12 = v20;
        if (v20)
        {
          v13 = v19;

          sub_1CF250D40(v18);
          v14 = a2[3];
          v21 = a2[4];
          __swift_project_boxed_opaque_existential_1(a2, v14);
          sub_1CF9E7948();

          MEMORY[0x1D3868CC0](v13, v12);

          v15 = v14;
          v8 = v16;
          v7 = v17;
          sub_1CF4FB2BC(0xD000000000000011, 0x80000001CFA3C770, v15, v21);
        }

        else
        {
          sub_1CF250D40(v18);
        }

        objc_autoreleasePoolPop(v10);
      }

      while (([v11 next] & 1) != 0);
    }
  }
}

uint64_t sub_1CF250D70(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF24FE58(a1);
}

void sub_1CF250D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF250904(4412225, 0xE300000000000000, a2, a3, &v27);
  if (v3)
  {
    return;
  }

  v24[0] = v27;
  v24[1] = v28;
  v24[3] = v30;
  v25 = v31;
  v24[2] = v29;
  v11 = v32;
  v26 = v32;
  if (!v28)
  {
    return;
  }

  v12 = *&v24[0];
  v13 = *(&v25 + 1);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v15 = v14;
  v16 = (*(v7 + 8))(v10, v6);
  v17 = v15 * 1000000000.0;
  if (COERCE__INT64(fabs(v15 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (__OFSUB__(v17, v12))
  {
LABEL_17:
    __break(1u);
    return;
  }

  if (v11)
  {
    *&v27 = 32;
    *(&v27 + 1) = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v16);
    *&v24[-1] = &v27;

    v19 = sub_1CF2A8918(0x7FFFFFFFFFFFFFFFLL, 1, sub_1CF25107C, &v24[-2], v13, v11, v18);
    sub_1CEFCCC44(v24, &qword_1EC4BEA68, &qword_1CF9FF910);
    if (v19[2])
    {
      v20 = v19[4];
      v21 = v19[5];
      v22 = v19[6];
      v23 = v19[7];

      MEMORY[0x1D3868C10](v20, v21, v22, v23);
    }
  }

  else
  {
    sub_1CEFCCC44(v24, &qword_1EC4BEA68, &qword_1CF9FF910);
  }
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1CF2510C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1CF251108(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CF25116C@<X0>(char *a1@<X8>)
{
  v51 = a1;
  v66 = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v46 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED30, &unk_1CFA00710);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v46 - v9;
  v11 = sub_1CF9E5A58();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v49 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v46 - v16;
  v18 = type metadata accessor for VFSItem(0);
  v48 = v18[12];
  sub_1CEFCCBDC(v1 + v48, v10, &unk_1EC4BED30, &unk_1CFA00710);
  v50 = v3;
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    v47 = v2;
    v19 = v6;
    sub_1CEFCCC44(v10, &unk_1EC4BED30, &unk_1CFA00710);
    v20 = v12;
  }

  else
  {
    v20 = v12;
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      v33 = *(v12 + 32);
      v33(v17, v10, v11);
      v34 = v51;
      v33(v51, v17, v11);
      result = (*(v12 + 56))(v34, 0, 1, v11);
      goto LABEL_15;
    }

    v47 = v2;
    v19 = v6;
    sub_1CEFCCC44(v10, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  v21 = v1 + v18[9];
  v22 = *v21;
  v23 = (v1 + v18[14]);
  if (*(v23 + 4))
  {
    v24 = 0;
  }

  else
  {
    v24 = *v23;
  }

  v25 = *(v21 + 8);

  v61[0] = v22;
  v61[1] = 0;
  v64 = 0;
  v65 = 0;
  v26 = *(v1 + v18[7]);
  v62 = v24;
  v63 = v25;
  v27 = v18[13];
  v46 = v1;
  v28 = *(v1 + v27);
  v55 = v22;
  v56 = 0;
  v57 = v24;
  v58 = v25;
  v59 = 0;
  v60 = 0;
  v52 = -1;
  v29 = fpfs_openfdbyhandle();
  if (v29 < 0)
  {
    v31 = v52;
    v32 = MEMORY[0x1D38683F0]();
    if (v31 < 0)
    {
      LODWORD(v53[0]) = 0;
      BYTE4(v53[0]) = 1;
    }

    else
    {
      LODWORD(v53[0]) = v52;
      BYTE4(v53[0]) = 0;
    }

    v54 = 0;
    v43 = sub_1CF19BBE4(v32, v53);
    sub_1CF1969CC(v53);
    swift_willThrow();
    LODWORD(v53[0]) = sub_1CF9E5308();
    sub_1CF196978();
    sub_1CF9E5658();
    sub_1CF255928(v61);

    v44 = *(v20 + 56);
    v44(v19, 1, 1, v11);
    sub_1CEFCCC44(v19, &unk_1EC4BE310, qword_1CF9FCBE0);
    result = (v44)(v51, 1, 1, v11);
  }

  else
  {
    v30 = v29;
    sub_1CF19811C(v29, v61, v28, v26 == 1, v19);
    close(v30);
    sub_1CF255928(v61);
    v35 = *(v20 + 56);
    v35(v19, 0, 1, v11);
    v36 = v19;
    v37 = *(v20 + 32);
    v38 = v49;
    v37(v49, v36, v11);
    v39 = v48;
    v40 = v46;
    sub_1CEFCCC44(v46 + v48, &unk_1EC4BED30, &unk_1CFA00710);
    (*(v20 + 16))(v40 + v39, v38, v11);
    v35((v40 + v39), 0, 1, v11);
    (*(v50 + 56))(v40 + v39, 0, 1, v47);
    v41 = v51;
    v37(v51, v38, v11);
    result = v35(v41, 0, 1, v11);
  }

LABEL_15:
  v45 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF25174C(uint64_t a1, int a2, uint64_t a3, char a4)
{
  if (a2)
  {
    v8 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](64, 0xE100000000000000);
    v5 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v5);

    result = v8;
    if (a4)
    {
      return result;
    }
  }

  else
  {
    result = sub_1CF9E7F98();
    if (a4)
    {
      return result;
    }
  }

  v9 = result;
  MEMORY[0x1D3868CC0](981103418, 0xE400000000000000);
  v7 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v7);

  return v9;
}

uint64_t sub_1CF251860(void *a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v14[3] = a5;
  v14[6] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEAE0, &qword_1CF9FFB98);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF255E20();
  sub_1CF9E82A8();
  v17 = 0;
  sub_1CF9E7F68();
  if (v5)
  {
    return (*(v8 + 8))(v11, v7);
  }

  v16 = 1;
  sub_1CF9E7F58();
  v15 = 2;
  sub_1CF9E7E88();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1CF251A1C()
{
  v1 = 0x746E756F436E6567;
  if (*v0 != 1)
  {
    v1 = 1702521203;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449656C6966;
  }
}

uint64_t sub_1CF251A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CF255B30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CF251A94(uint64_t a1)
{
  v2 = sub_1CF255E20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF251AD0(uint64_t a1)
{
  v2 = sub_1CF255E20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1CF251B0C(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

uint64_t sub_1CF251B24()
{
  if (*v0)
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 8) == 0;
  }

  if (v1)
  {
    return *(v0 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CF251B5C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (*(a2 + 24))
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v4 = 1;
    }

    if ((v4 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1CF251BB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1CF255C44(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

void sub_1CF251C28(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1CF1DFE74(a2);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  if (!v3)
  {
    *a3 = v6;
    *(a3 + 8) = v8;
    *(a3 + 16) = v10;
    *(a3 + 24) = v12 & 1;
  }
}

uint64_t *sub_1CF251D40@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1CF251D58()
{
  v1 = 0x746E756F436E6567;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E726574746170;
  }
}

uint64_t sub_1CF251DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CF256380(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_1CF251DE0@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1CF251DF4(uint64_t a1)
{
  v2 = sub_1CF255EA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF251E30(uint64_t a1)
{
  v2 = sub_1CF255EA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF251E6C(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_1CF251EBC(a1);
  return v5;
}

uint64_t *sub_1CF251EBC(uint64_t *a1)
{
  v3 = v1;
  v22 = *v1;
  v23 = v2;
  v5 = sub_1CF9E5CF8();
  v19 = *(v5 - 8);
  v6 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEAF8, &qword_1CF9FFBA8);
  v9 = *(v21 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF255EA4();
  v20 = v12;
  v14 = v23;
  sub_1CF9E8298();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v16 = *(*v1 + 48);
    v17 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v23 = a1;
    type metadata accessor for fpfs_tempfile_pattern_t(0);
    v25 = 0;
    sub_1CF25529C(&qword_1EC4BEAC0, type metadata accessor for fpfs_tempfile_pattern_t);
    v15 = v20;
    sub_1CF9E7D88();
    *(v3 + 4) = v24[0];
    LOBYTE(v24[0]) = 1;
    *(v3 + 5) = sub_1CF9E7DD8();
    LOBYTE(v24[0]) = 2;
    sub_1CF25529C(&unk_1EDEAB3A0, MEMORY[0x1E6969530]);
    sub_1CF9E7D88();
    (*(v19 + 32))(v3 + OBJC_IVAR____TtC18FileProviderDaemon23VFSTrackingContinuation_contentModificationDate, v8, v5);
    sub_1CF9E7CA8();
    __swift_destroy_boxed_opaque_existential_1(v24);
    (*(v9 + 8))(v15, v21);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  return v3;
}

uint64_t sub_1CF2522B8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1F0, &qword_1CF9FCCD0);
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEAE8, &qword_1CF9FFBA0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF255EA4();
  sub_1CF9E82A8();
  LODWORD(v21[0]) = *(v2 + 16);
  v22 = 0;
  type metadata accessor for fpfs_tempfile_pattern_t(0);
  sub_1CF25529C(&qword_1EC4BEA90, type metadata accessor for fpfs_tempfile_pattern_t);
  v14 = v20;
  sub_1CF9E7F08();
  if (v14)
  {
    return (*(v9 + 8))(v12, v8);
  }

  v15 = v19;
  v20 = v4;
  v16 = *(v2 + 20);
  LOBYTE(v21[0]) = 1;
  sub_1CF9E7F58();
  LOBYTE(v21[0]) = 2;
  sub_1CF9E5CF8();
  sub_1CF25529C(&qword_1EDEAB3D0, MEMORY[0x1E6969530]);
  sub_1CF9E7F08();
  sub_1CF9E7E28();
  v18 = v21[4];
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  sub_1CF1D6D18();
  sub_1CF9E82A8();
  (*(v15 + 8))(v7, v20);
  (*(v9 + 8))(v12, v8);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t sub_1CF252608(uint64_t a1)
{
  if (*a1 != _TtC18FileProviderDaemon23VFSTrackingContinuation)
  {
    return 0xD000000000000019;
  }

  if (*(v1 + 20) != *(a1 + 20))
  {
    return 0xD000000000000011;
  }

  sub_1CF9E5CF8();
  sub_1CF25529C(&qword_1EDEAB3B0, MEMORY[0x1E6969530]);

  v2 = sub_1CF9E6868();

  if (v2)
  {
    return 0;
  }

  else
  {
    return 0x696D2D656D69746DLL;
  }
}

uint64_t sub_1CF2527A0()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x3A706D743CLL, 0xE500000000000000);
  v1 = fpfs_tempfile_pattern_t.description.getter(*(v0 + 16));
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](0x6E756F636E656720, 0xEA00000000003A74);
  v4 = *(v0 + 20);
  v2 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](980708640, 0xE400000000000000);
  sub_1CF9E5C98();
  sub_1CF9E6F78();
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return HIDWORD(v4);
}

uint64_t sub_1CF2528C4()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon23VFSTrackingContinuation_contentModificationDate;
  v2 = sub_1CF9E5CF8();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_1CF25292C()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon23VFSTrackingContinuation_contentModificationDate;
  v2 = sub_1CF9E5CF8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1CF2529F0()
{
  result = sub_1CF9E5CF8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1CF252A90()
{
  type metadata accessor for ItemMetadata();
  if (v0 <= 0x3F)
  {
    sub_1CF24F8BC(319, &qword_1EDEAEEE0);
    if (v1 <= 0x3F)
    {
      type metadata accessor for fpfs_tempfile_pattern_t(319);
      if (v2 <= 0x3F)
      {
        sub_1CF24F8BC(319, &qword_1EDEAED08);
        if (v3 <= 0x3F)
        {
          sub_1CF252BD0();
          if (v4 <= 0x3F)
          {
            sub_1CF24F8BC(319, &qword_1EDEAED00);
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

void sub_1CF252BD0()
{
  if (!qword_1EDEAFE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE310, qword_1CF9FCBE0);
    v0 = sub_1CF9E75D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEAFE10);
    }
  }
}

unint64_t sub_1CF252C44(void *a1)
{
  a1[2] = sub_1CF1E10C4();
  a1[3] = sub_1CF1E1070();
  result = sub_1CF252C7C();
  a1[4] = result;
  return result;
}

unint64_t sub_1CF252C7C()
{
  result = qword_1EDEAE9A0;
  if (!qword_1EDEAE9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAE9A0);
  }

  return result;
}

uint64_t sub_1CF252CF4()
{
  v1 = type metadata accessor for VFSItem(0);
  v2 = *(*(v1 - 1) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + 8))
  {
    return 0;
  }

  v5 = *(v0 + v1[10]);
  if (v5 <= 0xB)
  {
    if (((1 << v5) & 0xC8E) != 0 || ((1 << v5) & 0x370) != 0)
    {
      sub_1CF0015AC(v0, v4, type metadata accessor for VFSItem);
      v6 = type metadata accessor for VFSTrackingContinuation(0);
      v7 = *(v6 + 48);
      v8 = *(v6 + 52);
      v9 = swift_allocObject();
      *(v9 + 16) = *&v4[v1[10]];
      *(v9 + 20) = *&v4[v1[9] + 8];
      v10 = v1[7];
      v11 = v10 + *(type metadata accessor for ItemMetadata() + 32);
      v12 = OBJC_IVAR____TtC18FileProviderDaemon23VFSTrackingContinuation_contentModificationDate;
      v13 = sub_1CF9E5CF8();
      (*(*(v13 - 8) + 16))(v9 + v12, &v4[v11], v13);
      sub_1CF007B38(v4, type metadata accessor for VFSItem);
    }

    return v5;
  }

  type metadata accessor for fpfs_tempfile_pattern_t(0);
  v15[3] = v5;
  result = sub_1CF9E80C8();
  __break(1u);
  return result;
}

char *sub_1CF252F6C()
{
  v51 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for VFSItem(0);
  v2 = *(*(v1 - 1) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v0 + v1[7]);
  v11 = type metadata accessor for ItemMetadata();
  if (v10[*(v11 + 80)] != 1 || *v10 || (v10[*(v11 + 112)] & 1) != 0)
  {
    goto LABEL_19;
  }

  v42 = MEMORY[0x1E69E7CC0];
  v12 = v0 + v1[9];
  v13 = *v12;
  v14 = v0 + v1[14];
  if (*(v14 + 4))
  {
    v15 = 0;
  }

  else
  {
    v15 = *v14;
  }

  v16 = *(v12 + 8);

  v17 = *(v0 + v1[13]);
  v45 = v13;
  v46 = 0;
  v47 = v15;
  v48 = v16;
  v49 = 0;
  v50 = 0;
  v41 = -1;
  v18 = fpfs_openfdbyhandle();
  if (v18 < 0)
  {
    v20 = v41;
    v21 = MEMORY[0x1D38683F0]();
    if (v20 < 0)
    {
      LODWORD(v43[0]) = 0;
      BYTE4(v43[0]) = 1;
    }

    else
    {
      LODWORD(v43[0]) = v41;
      BYTE4(v43[0]) = 0;
    }

    v44 = 0;
    v23 = sub_1CF19BBE4(v21, v43);
    sub_1CF1969CC(v43);
    swift_willThrow();

    v24 = v23;
    LODWORD(v43[0]) = sub_1CF9E5308();
    sub_1CF196978();
    sub_1CF9E5658();

    v25 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CF0015AC(v0, v4, type metadata accessor for VFSItem);
    v26 = v23;
    v27 = sub_1CF9E6108();
    v28 = sub_1CF9E72A8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v43[0] = v39;
      *v29 = 136315394;
      v30 = sub_1CF255338();
      v32 = v31;
      sub_1CF007B38(v4, type metadata accessor for VFSItem);
      v33 = sub_1CEFD0DF0(v30, v32, v43);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2112;
      swift_getErrorValue();
      v34 = Error.prettyDescription.getter(v40);
      *(v29 + 14) = v34;
      v35 = v38;
      *v38 = v34;
      _os_log_impl(&dword_1CEFC7000, v27, v28, "Unable to create extent map for %s : %@", v29, 0x16u);
      sub_1CEFCCC44(v35, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v35, -1, -1);
      v36 = v39;
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1D386CDC0](v36, -1, -1);
      MEMORY[0x1D386CDC0](v29, -1, -1);
    }

    else
    {

      sub_1CF007B38(v4, type metadata accessor for VFSItem);
    }

    (*(v6 + 8))(v9, v5);
    goto LABEL_18;
  }

  v19 = v18;

  sub_1CF253424(v19, v0, &v42);
  close(v19);
  result = v42;
  if (!*(v42 + 2))
  {
LABEL_18:

LABEL_19:
    result = 0;
  }

  v37 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CF253424(int a1, uint64_t a2, char **a3)
{
  v7 = sub_1CF9E53C8();
  v66 = *(v7 - 8);
  v67 = v7;
  v8 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E6118();
  v63 = *(v10 - 8);
  v64 = v10;
  v11 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v62 = &v60 - v15;
  v16 = a2 + *(type metadata accessor for VFSItem(0) + 28);
  v17 = *(v16 + *(type metadata accessor for ItemMetadata() + 104));
  v18 = lseek(a1, 0, 4);
  if ((v18 & 0x8000000000000000) == 0)
  {
    v61 = v13;
    while (1)
    {
      v19 = lseek(a1, v18, 3);
      v20 = v19;
      if ((v19 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v19 == v17)
      {
        v20 = v17;
        v3 = v18;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_27;
        }

        return;
      }

      if (v19 < v18)
      {
        __break(1u);
        goto LABEL_40;
      }

      v21 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_1CF1F6594(0, *(v21 + 2) + 1, 1, v21);
        *a3 = v21;
      }

      v24 = *(v21 + 2);
      v23 = *(v21 + 3);
      if (v24 >= v23 >> 1)
      {
        v21 = sub_1CF1F6594((v23 > 1), v24 + 1, 1, v21);
        *a3 = v21;
      }

      *(v21 + 2) = v24 + 1;
      v25 = &v21[16 * v24];
      *(v25 + 4) = v18;
      *(v25 + 5) = v20;
      v18 = lseek(a1, v20, 4);
      v3 = v20;
      if ((v18 & 0x8000000000000000) != 0)
      {
        goto LABEL_13;
      }
    }

    if (MEMORY[0x1D38683F0]())
    {
      if (MEMORY[0x1D38683F0]() == 9939394)
      {
        [objc_opt_self() fp:2 errorForDataProtectionClass:?];
      }

      else
      {
        MEMORY[0x1D38683F0]();
        v35 = sub_1CF9E6138();
        if ((v35 & 0x100000000) != 0)
        {
          LODWORD(v68) = 22;
        }

        else
        {
          LODWORD(v68) = v35;
        }

        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF25529C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        v36 = v65;
        v37 = v67;
        sub_1CF9E57D8();
        sub_1CF9E53A8();
        (*(v66 + 8))(v36, v37);
      }

      swift_willThrow();
      return;
    }

    v68 = 0;
    v69 = 0xE000000000000000;
    sub_1CF9E7948();

    v68 = 0xD00000000000001ALL;
    v69 = 0x80000001CFA2DF30;
    v70 = v20;
    v49 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v49);

    MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
    v50 = v68;
    v51 = v69;
    v52 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v53 = sub_1CF9E6108();
    v54 = sub_1CF9E72B8();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v68 = v56;
      *v55 = 136315650;
      v57 = sub_1CF9E7988();
      v59 = sub_1CEFD0DF0(v57, v58, &v68);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2048;
      *(v55 + 14) = 315;
      *(v55 + 22) = 2080;
      *(v55 + 24) = sub_1CEFD0DF0(v50, v51, &v68);
      _os_log_impl(&dword_1CEFC7000, v53, v54, "[ASSERT] ‼️  %s:%lu: %s", v55, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v56, -1, -1);
      MEMORY[0x1D386CDC0](v55, -1, -1);
    }

    (*(v63 + 8))(v61, v64);
    goto LABEL_48;
  }

  v3 = -1;
  v20 = v17;
LABEL_13:
  if (!MEMORY[0x1D38683F0]())
  {
    v68 = 0;
    v69 = 0xE000000000000000;
    sub_1CF9E7948();

    v68 = 0xD00000000000001ALL;
    v69 = 0x80000001CFA2DF30;
    v70 = v18;
    v38 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v38);

    MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
    v39 = v68;
    v40 = v69;
    v41 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v42 = sub_1CF9E6108();
    v43 = sub_1CF9E72B8();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v68 = v45;
      *v44 = 136315650;
      v46 = sub_1CF9E7988();
      v48 = sub_1CEFD0DF0(v46, v47, &v68);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2048;
      *(v44 + 14) = 315;
      *(v44 + 22) = 2080;
      *(v44 + 24) = sub_1CEFD0DF0(v39, v40, &v68);
      _os_log_impl(&dword_1CEFC7000, v42, v43, "[ASSERT] ‼️  %s:%lu: %s", v44, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v45, -1, -1);
      MEMORY[0x1D386CDC0](v44, -1, -1);
    }

    (*(v63 + 8))(v62, v64);
LABEL_48:
    sub_1CF9E7B68();
    __break(1u);
    return;
  }

  if (MEMORY[0x1D38683F0]() == 9939394)
  {
    v18 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
  }

  else
  {
    MEMORY[0x1D38683F0]();
    v26 = sub_1CF9E6138();
    if ((v26 & 0x100000000) != 0)
    {
      LODWORD(v68) = 22;
    }

    else
    {
      LODWORD(v68) = v26;
    }

    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF25529C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    v27 = v65;
    v28 = v67;
    sub_1CF9E57D8();
    v18 = sub_1CF9E53A8();
    (*(v66 + 8))(v27, v28);
  }

  swift_willThrow();
  v29 = v18;
  LODWORD(v68) = sub_1CF9E52A8();
  sub_1CF196978();
  v30 = sub_1CF9E5658();

  if (v30)
  {

    if ((v3 & 0x8000000000000000) == 0)
    {
LABEL_27:
      if (v3 == v20)
      {
        return;
      }

      if (v20 < v3)
      {
LABEL_40:
        __break(1u);
      }

      else
      {
        v18 = *a3;
        v31 = swift_isUniquelyReferenced_nonNull_native();
        *a3 = v18;
        if (v31)
        {
LABEL_30:
          v33 = *(v18 + 16);
          v32 = *(v18 + 24);
          if (v33 >= v32 >> 1)
          {
            v18 = sub_1CF1F6594((v32 > 1), v33 + 1, 1, v18);
            *a3 = v18;
          }

          *(v18 + 16) = v33 + 1;
          v34 = v18 + 16 * v33;
          *(v34 + 32) = v3;
          *(v34 + 40) = v20;
          return;
        }
      }

      v18 = sub_1CF1F6594(0, *(v18 + 16) + 1, 1, v18);
      *a3 = v18;
      goto LABEL_30;
    }
  }
}

uint64_t sub_1CF253D7C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 25705;
    v7 = 1701667182;
    v8 = 0x617461646174656DLL;
    if (a1 != 3)
    {
      v8 = 0xD000000000000015;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x4449746E65726170;
    }

    if (a1 <= 1u)
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
    v1 = 0x5255646568636163;
    v2 = 0x4449656369766564;
    if (a1 != 9)
    {
      v2 = 0x4449636F64;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x56746E65746E6F63;
    v4 = 0xD000000000000010;
    if (a1 != 6)
    {
      v4 = 0xD000000000000013;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1CF253EE0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEA70, &qword_1CF9FFB78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v43 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF2551F4();
  sub_1CF9E82A8();
  v11 = *(v3 + 8);
  *&v68[0] = *v3;
  BYTE8(v68[0]) = v11;
  LOBYTE(v52) = 0;
  sub_1CF255248();
  sub_1CF9E7F08();
  if (!v2)
  {
    v12 = *(v3 + 24);
    *&v68[0] = *(v3 + 16);
    BYTE8(v68[0]) = v12;
    LOBYTE(v52) = 1;
    sub_1CF9E7F08();
    v13 = *(v3 + 40);
    *&v68[0] = *(v3 + 32);
    *(&v68[0] + 1) = v13;
    LOBYTE(v52) = 2;
    sub_1CF1E60E8();

    sub_1CF9E7F08();

    v14 = type metadata accessor for VFSItem(0);
    v15 = v14[7];
    v83 = 3;
    type metadata accessor for ItemMetadata();
    sub_1CF25529C(&qword_1EC4BEA80, type metadata accessor for ItemMetadata);
    sub_1CF9E7F08();
    v16 = (v3 + v14[8]);
    v17 = v16[13];
    v18 = v16[11];
    v79 = v16[12];
    v80 = v17;
    v19 = v16[13];
    v81 = v16[14];
    v20 = v16[9];
    v21 = v16[7];
    v75 = v16[8];
    v76 = v20;
    v22 = v16[9];
    v23 = v16[11];
    v77 = v16[10];
    v78 = v23;
    v24 = v16[5];
    v25 = v16[3];
    v71 = v16[4];
    v72 = v24;
    v26 = v16[5];
    v27 = v16[7];
    v73 = v16[6];
    v74 = v27;
    v28 = v16[1];
    v68[0] = *v16;
    v68[1] = v28;
    v29 = v16[3];
    v31 = *v16;
    v30 = v16[1];
    v69 = v16[2];
    v70 = v29;
    v64 = v79;
    v65 = v19;
    v66 = v16[14];
    v60 = v75;
    v61 = v22;
    v62 = v77;
    v63 = v18;
    v56 = v71;
    v57 = v26;
    v58 = v73;
    v59 = v21;
    v52 = v31;
    v53 = v30;
    v82 = *(v16 + 30);
    v67 = *(v16 + 30);
    v54 = v69;
    v55 = v25;
    v51 = 4;
    sub_1CEFCCBDC(v68, v49, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    sub_1CF2552E4();
    sub_1CF9E7E68();
    v49[12] = v64;
    v49[13] = v65;
    v49[14] = v66;
    v50 = v67;
    v49[8] = v60;
    v49[9] = v61;
    v49[10] = v62;
    v49[11] = v63;
    v49[4] = v56;
    v49[5] = v57;
    v49[6] = v58;
    v49[7] = v59;
    v49[0] = v52;
    v49[1] = v53;
    v49[2] = v54;
    v49[3] = v55;
    sub_1CEFCCC44(v49, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    v32 = (v3 + v14[9]);
    v33 = *v32;
    v34 = *(v32 + 2);
    v35 = v32[2];
    LOBYTE(v32) = *(v32 + 24);
    v45 = v33;
    v46 = v34;
    v47 = v35;
    v48 = v32;
    v44 = 5;
    sub_1CF1E1070();
    sub_1CF9E7F08();
    LODWORD(v45) = *(v3 + v14[10]);
    v44 = 6;
    type metadata accessor for fpfs_tempfile_pattern_t(0);
    sub_1CF25529C(&qword_1EC4BEA90, type metadata accessor for fpfs_tempfile_pattern_t);
    sub_1CF9E7F08();
    v36 = (v3 + v14[11]);
    v37 = *v36;
    LOBYTE(v36) = *(v36 + 4);
    LOBYTE(v45) = 7;
    v44 = v36;
    sub_1CF9E7E78();
    v38 = v14[12];
    LOBYTE(v45) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
    sub_1CF255A24(&qword_1EC4BEA98, &qword_1EC4BEAA0);
    sub_1CF9E7E68();
    v39 = *(v3 + v14[13]);
    LOBYTE(v45) = 9;
    sub_1CF9E7F18();
    v40 = (v3 + v14[14]);
    v41 = *v40;
    LOBYTE(v40) = *(v40 + 4);
    LOBYTE(v45) = 10;
    v44 = v40;
    sub_1CF9E7E98();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1CF25453C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED30, &unk_1CFA00710);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v51 = &v48 - v5;
  v52 = type metadata accessor for ItemMetadata();
  v6 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEAA8, &unk_1CF9FFB80);
  v53 = *(v9 - 8);
  v54 = v9;
  v10 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - v11;
  v13 = type metadata accessor for VFSItem(0);
  v14 = *(*(v13 - 1) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 48);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v20 = *(*(v19 - 8) + 56);
  v81 = v17;
  v58 = v18;
  v20(&v17[v18], 1, 1, v19);
  v21 = a1[3];
  v22 = a1[4];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1CF2551F4();
  v55 = v12;
  v23 = v56;
  sub_1CF9E8298();
  if (v23)
  {
    v24 = v81;
    __swift_destroy_boxed_opaque_existential_1(v57);
    return sub_1CEFCCC44(v24 + v58, &unk_1EC4BED30, &unk_1CFA00710);
  }

  else
  {
    v56 = v19;
    LOBYTE(v60) = 0;
    sub_1CF25597C();
    sub_1CF9E7D88();
    v25 = BYTE8(v65);
    v26 = v81;
    *v81 = v65;
    *(v26 + 8) = v25;
    LOBYTE(v60) = 1;
    sub_1CF9E7D88();
    v27 = BYTE8(v65);
    v26[2] = v65;
    *(v26 + 24) = v27;
    LOBYTE(v60) = 2;
    sub_1CF1E613C();
    sub_1CF9E7D88();
    v28 = *(&v65 + 1);
    v26[4] = v65;
    v26[5] = v28;
    LOBYTE(v65) = 3;
    sub_1CF25529C(&qword_1EC4BEAB0, type metadata accessor for ItemMetadata);
    sub_1CF9E7D88();
    sub_1CEFE4874(v8, v26 + v13[7]);
    v64 = 4;
    sub_1CF2559D0();
    v52 = 0;
    sub_1CF9E7CF8();
    v29 = v26 + v13[8];
    v30 = v78;
    *(v29 + 12) = v77;
    *(v29 + 13) = v30;
    *(v29 + 14) = v79;
    *(v29 + 30) = v80;
    v31 = v74;
    *(v29 + 8) = v73;
    *(v29 + 9) = v31;
    v32 = v76;
    *(v29 + 10) = v75;
    *(v29 + 11) = v32;
    v33 = v70;
    *(v29 + 4) = v69;
    *(v29 + 5) = v33;
    v34 = v72;
    *(v29 + 6) = v71;
    *(v29 + 7) = v34;
    v35 = v66;
    *v29 = v65;
    *(v29 + 1) = v35;
    v36 = v68;
    *(v29 + 2) = v67;
    *(v29 + 3) = v36;
    v59 = 5;
    sub_1CF1E10C4();
    sub_1CF9E7D88();
    v37 = v61;
    v38 = v62;
    v39 = v63;
    v40 = v26 + v13[9];
    *v40 = v60;
    *(v40 + 2) = v37;
    *(v40 + 2) = v38;
    v40[24] = v39;
    type metadata accessor for fpfs_tempfile_pattern_t(0);
    v59 = 6;
    sub_1CF25529C(&qword_1EC4BEAC0, type metadata accessor for fpfs_tempfile_pattern_t);
    sub_1CF9E7D88();
    v49 = v13;
    *(v26 + v13[10]) = v60;
    LOBYTE(v60) = 7;
    v41 = sub_1CF9E7D08();
    v42 = v26 + v49[11];
    *v42 = v41;
    v42[4] = BYTE4(v41) & 1;
    LOBYTE(v60) = 8;
    sub_1CF255A24(&qword_1EC4BEAC8, &unk_1EDEAB400);
    v43 = v51;
    sub_1CF9E7CF8();
    sub_1CF255AC0(v43, v26 + v58);
    LOBYTE(v60) = 9;
    *(v81 + v13[13]) = sub_1CF9E7D98();
    LOBYTE(v60) = 10;
    v44 = sub_1CF9E7D28();
    (*(v53 + 8))(v55, v54);
    v45 = v81;
    v46 = v81 + v13[14];
    *v46 = v44;
    v46[4] = BYTE4(v44) & 1;
    sub_1CF0015AC(v45, v50, type metadata accessor for VFSItem);
    __swift_destroy_boxed_opaque_existential_1(v57);
    return sub_1CF007B38(v45, type metadata accessor for VFSItem);
  }
}

uint64_t sub_1CF254E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CF2564A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CF254E40(uint64_t a1)
{
  v2 = sub_1CF2551F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF254E7C(uint64_t a1)
{
  v2 = sub_1CF2551F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1CF254EB8(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

void sub_1CF254ECC(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t sub_1CF254EE0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t sub_1CF254F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(a1 + 36));
  v4 = *v3;
  v5 = *(v3 + 2);
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 24);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v10 = *(v2 + 32);
  v9 = *(v2 + 40);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v3;
  *(a2 + 48) = v8;
  *(a2 + 56) = v10;
  *(a2 + 64) = v9;
  *(a2 + 32) = 0;
  *(a2 + 40) = v7;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
}

uint64_t sub_1CF254F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(a1 + 32));
  v4 = v3[13];
  v5 = v3[11];
  v37 = v3[12];
  v38 = v4;
  v6 = v3[13];
  v39 = v3[14];
  v7 = v3[9];
  v9 = v3[7];
  v33 = v3[8];
  v8 = v33;
  v34 = v7;
  v10 = v3[9];
  v11 = v3[11];
  v35 = v3[10];
  v12 = v35;
  v36 = v11;
  v13 = v3[5];
  v15 = v3[3];
  v29 = v3[4];
  v14 = v29;
  v30 = v13;
  v16 = v3[5];
  v17 = v3[7];
  v31 = v3[6];
  v18 = v31;
  v32 = v17;
  v19 = v3[1];
  v26[0] = *v3;
  v26[1] = v19;
  v20 = v3[3];
  v22 = *v3;
  v21 = v3[1];
  v27 = v3[2];
  v23 = v27;
  v28 = v20;
  *(a2 + 192) = v37;
  *(a2 + 208) = v6;
  *(a2 + 224) = v3[14];
  *(a2 + 128) = v8;
  *(a2 + 144) = v10;
  *(a2 + 160) = v12;
  *(a2 + 176) = v5;
  *(a2 + 64) = v14;
  *(a2 + 80) = v16;
  *(a2 + 96) = v18;
  *(a2 + 112) = v9;
  *a2 = v22;
  *(a2 + 16) = v21;
  v40 = *(v3 + 30);
  *(a2 + 240) = *(v3 + 30);
  *(a2 + 32) = v23;
  *(a2 + 48) = v15;
  return sub_1CEFCCBDC(v26, v25, &qword_1EC4BECF0, &unk_1CF9FEEB0);
}

unint64_t sub_1CF255088()
{
  result = qword_1EDEAE990;
  if (!qword_1EDEAE990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAE990);
  }

  return result;
}

unint64_t sub_1CF2550E0()
{
  result = qword_1EDEAB740;
  if (!qword_1EDEAB740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB740);
  }

  return result;
}

unint64_t sub_1CF255138()
{
  result = qword_1EDEAD980[0];
  if (!qword_1EDEAD980[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BEA18, &qword_1CF9FFB00);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEAD980);
  }

  return result;
}

uint64_t sub_1CF25519C(uint64_t a1)
{
  result = sub_1CF25529C(&qword_1EDEAEED0, type metadata accessor for VFSItem);
  *(a1 + 8) = result;
  return result;
}