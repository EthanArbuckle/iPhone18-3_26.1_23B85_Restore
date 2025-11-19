size_t sub_18BA39E10(uint64_t a1, uint64_t a2)
{
  v5 = _s4ItemVMa_2();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  v32 = MEMORY[0x1E69E7CC0];
  result = sub_18B85A1AC(0, a2 & ~(a2 >> 63), 0);
  v15 = v32;
  if (!a2)
  {
LABEL_11:

    return a2;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v26 = a2;
    v27 = v2;
    v16 = 0;
    v17 = *(v6 + 72);
    v25 = a1;
    do
    {
      v28 = v16;
      v29 = v16 + 1;
      sub_18B815248(a1 + v17 * v16, v13, _s4ItemVMa_2);
      v18 = *(v15 + 16) + 1;
      v31 = v15;
      v19 = v15;
      while (--v18)
      {
        v20 = v19 + v17;
        sub_18B815248(v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v10, _s4ItemVMa_2);
        updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
        sub_18B82A40C(v10, _s4ItemVMa_2);
        v19 = v20;
        if (updated)
        {
          sub_18B82A40C(v13, _s4ItemVMa_2);
          a2 = v28;
          goto LABEL_11;
        }
      }

      sub_18B815248(v13, v30, _s4ItemVMa_2);
      v15 = v31;
      v32 = v31;
      v23 = *(v31 + 16);
      v22 = *(v31 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_18B85A1AC(v22 > 1, v23 + 1, 1);
        v15 = v32;
      }

      sub_18B82A40C(v13, _s4ItemVMa_2);
      *(v15 + 16) = v23 + 1;
      sub_18B80D354(v30, v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + v23 * v17, _s4ItemVMa_2);
      a1 = v25;
      a2 = v26;
      v16 = v29;
    }

    while (v29 != v26);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_18BA3A0F0(uint64_t a1)
{
  v3 = _s7SectionVMa_1();
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v7 = v1[1];
  v9 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v10 = *(v7 + 16);
  if (*v1)
  {
    sub_18BC1E1A8();
    sub_18B9D0D54(a1, v9, v10, (v8 + 16), v8 + 32);
    v12 = v11;
    v14 = v13;

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v10)
    {
      v15 = 0;
      v16 = *(v4 + 72);
      do
      {
        sub_18B815248(v9, v6, _s7SectionVMa_1);
        if (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0())
        {
          v17 = v6[*(v3 + 20)];
          sub_18B82A40C(v6, _s7SectionVMa_1);
          if (v17 == *(a1 + *(v3 + 20)))
          {
            return 0;
          }
        }

        else
        {
          sub_18B82A40C(v6, _s7SectionVMa_1);
        }

        ++v15;
        v9 += v16;
      }

      while (v10 != v15);
    }

    v14 = 0;
  }

  sub_18B858B80(a1, v14, _s7SectionVMa_1, _s7SectionVMa_1, sub_18B828E80, sub_18BA408B4);
  return 1;
}

uint64_t sub_18BA3A310(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - v5;
  sub_18B83AA0C(a1, &v16 - v5);
  v7 = v1 + 1;
  v8 = v1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[1] = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_18B8408D8(0, *(v8 + 16) + 1, 1);
    v8 = *v7;
  }

  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v11 >= v10 >> 1)
  {
    sub_18B8408D8(v10 > 1, v11 + 1, 1);
    v8 = *v7;
  }

  *(v8 + 16) = v11 + 1;
  result = sub_18B840ED0(v6, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11);
  v1[1] = v8;
  v13 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    if (MEMORY[0x18CFFA660](*(v13 + 16) & 0x3FLL) > v11)
    {
      result = swift_isUniquelyReferenced_native();
      v14 = *v1;
      if ((result & 1) == 0)
      {
        if (!v14)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v15 = sub_18BC1F178();

        *v1 = v15;
        v14 = v15;
      }

      if (v14)
      {
        return sub_18BC1F128();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v11 < 0xF)
  {
    return result;
  }

  return sub_18BA40814();
}

uint64_t sub_18BA3A52C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v34 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v35 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = v30 - v13;
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_16;
  }

  v30[1] = v4;
  v15 = 0;
  v32 = a2;
  v31 = a3;
  v33 = a1;
  while (2)
  {
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    v36 = v15 + 1;
    v16 = *(v35 + 72);
    v17 = a1 + v16 * v15;
    sub_18B83AA0C(v17, v14);
    sub_18BC22158();
    sub_18B83ADFC(v39);
    result = sub_18BC221A8();
    v18 = 1 << *a3;
    v19 = __OFSUB__(v18, 1);
    v20 = v18 - 1;
    if (v19)
    {
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    v21 = v20 & result;
    v22 = v34;
    v23 = sub_18BC1F118();
    v48 = v15;
    v24 = v23;
    v38 = v25;
    v37 = v26;
    sub_18B988BAC(v14, &unk_1EA9D92F0);
    *&v40 = a3;
    *(&v40 + 1) = v22;
    a1 = v33;
    *&v41 = v21;
    *(&v41 + 1) = v24;
    *&v42 = v38;
    *(&v42 + 1) = v37;
    v43 = 0;
    v47 = 0;
    v44 = v40;
    v45 = v41;
    v46 = v42;
    while (1)
    {
      v27 = sub_18BC1F138();
      if (v28)
      {
        break;
      }

      sub_18B83AA0C(a1 + v27 * v16, v14);
      sub_18B83AA0C(v17, v11);
      v29 = sub_18B8598D4(v14, v11);
      sub_18B988BAC(v11, &unk_1EA9D92F0);
      sub_18B988BAC(v14, &unk_1EA9D92F0);
      if (v29)
      {
        return 0;
      }

      sub_18BC1F158();
      v44 = v40;
      v45 = v41;
      v46 = v42;
      v47 = v43;
    }

    result = sub_18BC1F148();
    v15 = v36;
    a3 = v31;
    if (v36 != v32)
    {
      continue;
    }

    return 1;
  }
}

void sub_18BA3A83C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v36 = a4;
  v50 = _s7SectionVMa_1();
  v37 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31[-v9];
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31[-v13];
  if (v12)
  {
    if ((v12 & 0x8000000000000000) == 0)
    {
      v15 = 0;
      v34 = v12;
      v33 = a3;
      v35 = a1;
      v32 = &v31[-v13];
      while (!__OFADD__(v15, 1))
      {
        v38 = v15 + 1;
        v16 = *(v37 + 72);
        v41 = v15;
        v17 = a1 + v16 * v15;
        sub_18B815248(v17, v14, _s7SectionVMa_1);
        sub_18BC22158();
        sub_18BC1EC08();
        sub_18B80D494();
        sub_18BC20A78();
        sub_18BC22178();
        v18 = sub_18BC221A8();
        v19 = 1 << *a3;
        v20 = __OFSUB__(v19, 1);
        v21 = v19 - 1;
        if (v20)
        {
          goto LABEL_16;
        }

        v22 = v21 & v18;
        v23 = v36;
        v24 = sub_18BC1F118();
        v40 = v25;
        v39 = v26;
        sub_18B82A40C(v14, _s7SectionVMa_1);
        *&v42 = a3;
        *(&v42 + 1) = v23;
        a1 = v35;
        *&v43 = v22;
        *(&v43 + 1) = v24;
        *&v44 = v40;
        *(&v44 + 1) = v39;
        v45 = 0;
        v49 = 0;
        v46 = v42;
        v47 = v43;
        v48 = v44;
        while (1)
        {
          v27 = sub_18BC1F138();
          if (v28)
          {
            break;
          }

          sub_18B815248(a1 + v27 * v16, v10, _s7SectionVMa_1);
          sub_18B815248(v17, v7, _s7SectionVMa_1);
          if (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0())
          {
            v29 = v50;
            v30 = v10[*(v50 + 20)];
            sub_18B82A40C(v10, _s7SectionVMa_1);
            LODWORD(v29) = v7[*(v29 + 20)];
            sub_18B82A40C(v7, _s7SectionVMa_1);
            if (v30 == v29)
            {
              return;
            }
          }

          else
          {
            sub_18B82A40C(v7, _s7SectionVMa_1);
            sub_18B82A40C(v10, _s7SectionVMa_1);
          }

          sub_18BC1F158();
          v46 = v42;
          v47 = v43;
          v48 = v44;
          v49 = v45;
        }

        sub_18BC1F148();
        v15 = v38;
        a3 = v33;
        v14 = v32;
        if (v38 == v34)
        {
          return;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
    }

    __break(1u);
  }
}

void sub_18BA3AC10(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v35 = a4;
  v7 = _s4ItemVMa_2();
  v36 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30[-v11];
  if (a2)
  {
    if (a2 < 0)
    {
LABEL_15:
      __break(1u);
    }

    else
    {
      v13 = 0;
      v32 = a2;
      v31 = a3;
      v34 = a1;
      v33 = v7;
      while (1)
      {
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

        v37 = v13 + 1;
        v14 = *(v36 + 72);
        v47 = v13;
        v15 = a1 + v14 * v13;
        sub_18B815248(v15, v12, _s4ItemVMa_2);
        sub_18BC22158();
        sub_18BC1EC08();
        sub_18B80D494();
        sub_18BC20A78();
        v16 = sub_18BC221A8();
        v17 = 1 << *a3;
        v18 = __OFSUB__(v17, 1);
        v19 = v17 - 1;
        if (v18)
        {
          goto LABEL_14;
        }

        v20 = v19 & v16;
        v21 = v35;
        v22 = sub_18BC1F118();
        v38 = v23;
        v25 = v24;
        sub_18B82A40C(v12, _s4ItemVMa_2);
        *&v39 = a3;
        *(&v39 + 1) = v21;
        a1 = v34;
        *&v40 = v20;
        *(&v40 + 1) = v22;
        *&v41 = v38;
        *(&v41 + 1) = v25;
        v42 = 0;
        v46 = 0;
        v43 = v39;
        v44 = v40;
        v45 = v41;
        v26 = sub_18BC1F138();
        if ((v27 & 1) == 0)
        {
          break;
        }

LABEL_4:
        sub_18BC1F148();
        v13 = v37;
        a3 = v31;
        if (v37 == v32)
        {
          return;
        }
      }

      while (1)
      {
        sub_18B815248(a1 + v26 * v14, v12, _s4ItemVMa_2);
        sub_18B815248(v15, v9, _s4ItemVMa_2);
        updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
        sub_18B82A40C(v9, _s4ItemVMa_2);
        sub_18B82A40C(v12, _s4ItemVMa_2);
        if (updated)
        {
          break;
        }

        sub_18BC1F158();
        v43 = v39;
        v44 = v40;
        v45 = v41;
        v46 = v42;
        v26 = sub_18BC1F138();
        if (v29)
        {
          goto LABEL_4;
        }
      }
    }
  }
}

void sub_18BA3AF58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v64 = _s4ItemVMa_2();
  v8 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v63 - v13;
  v15 = *(a2 + 16);
  if (a1 < (v15 >> 1))
  {
    v16 = *a3;
    v17 = 1 << *a3;
    v18 = __OFSUB__(v17, 1);
    v19 = v17 - 1;
    if (v18)
    {
      goto LABEL_56;
    }

    v20 = a3[1];
    if (v20 >> 6 >= -1)
    {
      v21 = 0;
    }

    else
    {
      v21 = v19;
    }

    v22 = (v20 >> 6) + v21 + 1;
    if (v22 < v19)
    {
      v19 = 0;
    }

    a3[1] = a3[1] & 0x3F | ((v22 - v19) << 6);
    if (MEMORY[0x18CFFA660](v16 & 0x3F, v12) / 3 < a1)
    {
      v23 = sub_18BC1F118();
      *&v73 = a3;
      *(&v73 + 1) = a4;
      *&v74 = 0;
      *(&v74 + 1) = v23;
      *&v75 = v24;
      *(&v75 + 1) = v25;
      v76 = 0;
      while (1)
      {
        v65 = v73;
        v66 = v74;
        v67 = v75;
        v68 = v76;
        v8 = &v65;
        v26 = sub_18BC1F138();
        if ((v27 & 1) == 0 && v26 <= a1)
        {
          if (__OFSUB__(v26, 1))
          {
            __break(1u);
            goto LABEL_16;
          }

          sub_18BC1F148();
        }

        sub_18BC1F158();
        if (!v74)
        {
          return;
        }
      }
    }

    if (a1 < 0)
    {
      goto LABEL_58;
    }

    if (v15 < a1)
    {
LABEL_59:
      __break(1u);
    }

    else
    {
      v47 = *(v8 + 80);
      v63 = a2;
      sub_18BC1E1A8();
      if (!a1)
      {
        goto LABEL_50;
      }

      v48 = 0;
      v49 = v63 + ((v47 + 32) & ~v47);
      v50 = *(v8 + 9);
      v51 = 1;
      while (1)
      {
        sub_18B815248(v49 + v50 * v48, v14, _s4ItemVMa_2);
        sub_18BC22158();
        sub_18BC1EC08();
        sub_18B80D494();
        sub_18BC20A78();
        v52 = sub_18BC221A8();
        v53 = 1 << *a3;
        v18 = __OFSUB__(v53, 1);
        v54 = v53 - 1;
        if (v18)
        {
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v55 = v54 & v52;
        v56 = sub_18BC1F118();
        *&v65 = a3;
        *(&v65 + 1) = a4;
        *&v66 = v55;
        *(&v66 + 1) = v56;
        *&v67 = v57;
        *(&v67 + 1) = v58;
        v68 = 0;
        while (*(&v66 + 1))
        {
          v73 = v65;
          v74 = v66;
          v75 = v67;
          v76 = v68;
          v59 = sub_18BC1F138();
          if ((v60 & 1) == 0 && v59 == v51)
          {
            break;
          }

          sub_18BC1F158();
        }

        v69 = v65;
        v70 = v66;
        v71 = v67;
        v72 = v68;
        v61 = sub_18BC1F138();
        if (v62)
        {
          break;
        }

        if (__OFSUB__(v61, 1))
        {
          goto LABEL_53;
        }

        ++v48;
        sub_18BC1F148();
        sub_18B82A40C(v14, _s4ItemVMa_2);
        ++v51;
        if (v48 == a1)
        {
          goto LABEL_50;
        }
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

LABEL_16:
  if (MEMORY[0x18CFFA660](*a3 & 0x3F) / 3 >= (v15 + ~a1))
  {
    goto LABEL_24;
  }

  v28 = sub_18BC1F118();
  *&v73 = a3;
  *(&v73 + 1) = a4;
  *&v74 = 0;
  *(&v74 + 1) = v28;
  *&v75 = v29;
  *(&v75 + 1) = v30;
  v76 = 0;
  while (1)
  {
    v65 = v73;
    v66 = v74;
    v67 = v75;
    v68 = v76;
    v8 = &v65;
    v31 = sub_18BC1F138();
    if ((v32 & 1) != 0 || v31 < a1)
    {
      goto LABEL_18;
    }

    if (__OFADD__(v31, 1))
    {
      break;
    }

    sub_18BC1F148();
LABEL_18:
    sub_18BC1F158();
    if (!v74)
    {
      return;
    }
  }

  __break(1u);
LABEL_24:
  if (v15 < a1)
  {
    goto LABEL_57;
  }

  v33 = *(v8 + 80);
  v63 = a2;
  sub_18BC1E1A8();
  if (v15 != a1)
  {
    v34 = v63 + ((v33 + 32) & ~v33);
    v35 = *(v8 + 9);
    while (1)
    {
      sub_18B815248(v34 + v35 * a1, v10, _s4ItemVMa_2);
      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B80D494();
      sub_18BC20A78();
      v36 = sub_18BC221A8();
      v37 = 1 << *a3;
      v18 = __OFSUB__(v37, 1);
      v38 = v37 - 1;
      if (v18)
      {
        break;
      }

      v39 = v38 & v36;
      v40 = sub_18BC1F118();
      *&v65 = a3;
      *(&v65 + 1) = a4;
      *&v66 = v39;
      *(&v66 + 1) = v40;
      *&v67 = v41;
      *(&v67 + 1) = v42;
      v68 = 0;
      while (*(&v66 + 1))
      {
        v73 = v65;
        v74 = v66;
        v75 = v67;
        v76 = v68;
        v43 = sub_18BC1F138();
        if ((v44 & 1) == 0 && v43 == a1)
        {
          break;
        }

        sub_18BC1F158();
      }

      v69 = v65;
      v70 = v66;
      v71 = v67;
      v72 = v68;
      v45 = sub_18BC1F138();
      if (v46)
      {
        goto LABEL_61;
      }

      if (__OFADD__(v45, 1))
      {
        goto LABEL_55;
      }

      ++a1;
      sub_18BC1F148();
      sub_18B82A40C(v10, _s4ItemVMa_2);
      if (a1 == v15)
      {
        goto LABEL_50;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

LABEL_50:
}

uint64_t sub_18BA3B58C(uint64_t a1, uint64_t a2)
{
  v4 = _s4ItemVMa_2();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BA3B5F0(uint64_t a1)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6A30);
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v3 = &v15 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6A38);
  MEMORY[0x1EEE9AC00](v4);
  sub_18B808B34();
  sub_18BC1E298();
  sub_18BC1E288();
  swift_getKeyPath();
  v15 = sub_18BA3F878();
  v21 = a1;
  sub_18BC1E1A8();

  sub_18BC1E278();

  sub_18BC1E288();
  sub_18BC1E2A8();
  v5 = sub_18BC1E1D8();
  v6 = *(v22 + 8);
  v18 = v5;
  v19 = v6;
  v22 += 8;
  v7 = v20;
  v6(v3, v20);
  sub_18BC1E298();
  sub_18BC1E288();
  swift_getKeyPath();
  sub_18BC1E1A8();

  sub_18BC1E278();

  sub_18BC1E288();
  sub_18BC1E2A8();
  v17 = sub_18BC1E1D8();
  v8 = v19;
  v19(v3, v7);
  sub_18BC1E298();
  sub_18BC1E288();
  swift_getKeyPath();
  sub_18BC1E1A8();

  sub_18BC1E278();

  sub_18BC1E288();
  sub_18BC1E2A8();
  v16 = sub_18BC1E1D8();
  v9 = v20;
  v8(v3, v20);
  sub_18BC1E298();
  sub_18BC1E288();
  swift_getKeyPath();
  sub_18BC1E1A8();

  sub_18BC1E278();

  sub_18BC1E288();
  sub_18BC1E2A8();
  v10 = sub_18BC1E1D8();
  v19(v3, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6A40);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_18BC3FC90;
  v12 = v17;
  *(v11 + 32) = v18;
  *(v11 + 40) = v12;
  *(v11 + 48) = v16;
  *(v11 + 56) = v10;
  v13 = sub_18BC1E1C8();

  return v13;
}

uint64_t sub_18BA3BB44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6A10);
  v3 = *(v2 - 8);
  v23 = v2;
  v24 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6A18);
  MEMORY[0x1EEE9AC00](v6);
  sub_18B808D6C();
  sub_18BC1E298();
  sub_18BC1E288();
  swift_getKeyPath();
  v22 = sub_18BA3F7A8();
  v17 = a1;
  sub_18BC1E1A8();

  sub_18BC1E278();

  sub_18BC1E288();
  sub_18BC1E2A8();
  v7 = sub_18BC1E1D8();
  v8 = v23;
  v9 = *(v24 + 8);
  v20 = v7;
  v21 = v9;
  v24 += 8;
  v9(v5, v23);
  sub_18BC1E298();
  sub_18BC1E288();
  swift_getKeyPath();
  sub_18BC1E1A8();

  sub_18BC1E278();

  sub_18BC1E288();
  sub_18BC1E2A8();
  v19 = sub_18BC1E1D8();
  v10 = v21;
  v21(v5, v8);
  sub_18BC1E298();
  sub_18BC1E288();
  swift_getKeyPath();
  sub_18BC1E1A8();

  sub_18BC1E278();

  sub_18BC1E288();
  sub_18BC1E2A8();
  v18 = sub_18BC1E1D8();
  v11 = v23;
  v10(v5, v23);
  sub_18BC1E298();
  sub_18BC1E288();
  swift_getKeyPath();
  sub_18BC1E1A8();

  sub_18BC1E278();

  sub_18BC1E288();
  sub_18BC1E2A8();
  v12 = sub_18BC1E1D8();
  v21(v5, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6A20);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_18BC3FC90;
  v14 = v19;
  *(v13 + 32) = v20;
  *(v13 + 40) = v14;
  *(v13 + 48) = v18;
  *(v13 + 56) = v12;
  v15 = sub_18BC1E1C8();

  return v15;
}

uint64_t sub_18BA3C070()
{
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  return sub_18BC1E0B8();
}

uint64_t sub_18BA3C108(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(uint64_t))
{
  v6 = sub_18BC1E248();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  a3();
  sub_18BC1E1A8();

  a4(v10);
  sub_18BC1E238();
  v11 = sub_18BC1E228();
  (*(v7 + 8))(v9, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6988);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_18BC3E410;
  *(v12 + 32) = v11;
  v13 = sub_18BC1E218();

  return v13;
}

uint64_t sub_18BA3C288(uint64_t a1)
{
  v26 = a1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D69F8);
  v1 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v3 = v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6A00);
  MEMORY[0x1EEE9AC00](v4);
  sub_18BA3F600();
  sub_18BC1E298();
  sub_18BC1E288();
  swift_getKeyPath();
  v18[1] = sub_18BA3F7FC(&qword_1EA9D69E8, &qword_1EA9D69F0, &unk_18BC46140, sub_18BA3F7A8);
  sub_18BC1E1A8();

  sub_18BC1E278();

  sub_18BC1E288();
  sub_18BC1E2A8();
  v5 = sub_18BC1E1D8();
  v7 = v1 + 8;
  v6 = *(v1 + 8);
  v22 = v5;
  v23 = v6;
  v8 = v25;
  v6(v3, v25);
  v24 = v7;
  sub_18BC1E298();
  sub_18BC1E288();
  swift_getKeyPath();
  sub_18BC1E1A8();

  sub_18BC1E278();

  sub_18BC1E288();
  sub_18BC1E2A8();
  v21 = sub_18BC1E1D8();
  v9 = v23;
  v23(v3, v8);
  sub_18BC1E298();
  sub_18BC1E288();
  swift_getKeyPath();
  sub_18BC1E1A8();

  sub_18BC1E278();

  sub_18BC1E288();
  sub_18BC1E2A8();
  v20 = sub_18BC1E1D8();
  v9(v3, v25);
  sub_18BC1E298();
  sub_18BC1E288();
  swift_getKeyPath();
  sub_18BC1E1A8();

  sub_18BC1E278();

  sub_18BC1E288();
  sub_18BC1E2A8();
  v19 = sub_18BC1E1D8();
  v10 = v25;
  v11 = v23;
  v23(v3, v25);
  sub_18BC1E298();
  sub_18BC1E288();
  swift_getKeyPath();
  sub_18BC1E1A8();

  sub_18BC1E278();

  sub_18BC1E288();
  sub_18BC1E2A8();
  v12 = sub_18BC1E1D8();
  v11(v3, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6A08);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_18BC43BC0;
  v14 = v21;
  *(v13 + 32) = v22;
  *(v13 + 40) = v14;
  v15 = v19;
  *(v13 + 48) = v20;
  *(v13 + 56) = v15;
  *(v13 + 64) = v12;
  v16 = sub_18BC1E1C8();

  return v16;
}

uint64_t sub_18BA3C8D0()
{
  v0 = sub_18BC1E248();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_18BA3F7FC(&qword_1EA9D69E8, &qword_1EA9D69F0, &unk_18BC46140, sub_18BA3F7A8);
  sub_18BC1E1A8();

  sub_18BA3F600();
  sub_18BC1E238();
  v4 = sub_18BC1E228();
  (*(v1 + 8))(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6988);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_18BC3E410;
  *(v5 + 32) = v4;
  v6 = sub_18BC1E218();

  return v6;
}

uint64_t sub_18BA3CA6C()
{
  v0 = sub_18BC1E1F8();
  v1 = sub_18BC1E1F8();
  v2 = sub_18BC1E1F8();
  v3 = sub_18BC1E1F8();
  v4 = sub_18BC1E1F8();
  v5 = sub_18BC1E1F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6990);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18BC43BF0;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = sub_18BC1E1E8();

  return v7;
}

uint64_t sub_18BA3CB78()
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D69D0);
  v17 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v1 = &v10 - v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D69D8);
  MEMORY[0x1EEE9AC00](v2);
  sub_18BA3F654();
  sub_18BC1E298();
  sub_18BC1E288();
  swift_getKeyPath();
  v12 = sub_18BA3F7FC(&qword_1EA9D69B0, &qword_1EA9D69B8, &unk_18BC460D0, sub_18BA3F750);
  sub_18BC1E1A8();

  sub_18BC1E278();

  sub_18BC1E288();
  swift_getKeyPath();
  v16 = sub_18BA3F7A8();
  sub_18BC1E1A8();

  sub_18BC1E278();

  sub_18BC1E288();
  sub_18BC1E2A8();
  v14 = sub_18BC1E1D8();
  v11 = *(v17 + 8);
  v17 += 8;
  v3 = v15;
  v11(v1, v15);
  sub_18BC1E298();
  sub_18BC1E288();
  swift_getKeyPath();
  sub_18BC1E1A8();

  sub_18BC1E278();

  sub_18BC1E288();
  swift_getKeyPath();
  sub_18BC1E1A8();

  sub_18BC1E278();

  sub_18BC1E288();
  sub_18BC1E2A8();
  v13 = sub_18BC1E1D8();
  v4 = v11;
  v11(v1, v3);
  sub_18BC1E298();
  sub_18BC1E288();
  swift_getKeyPath();
  sub_18BC1E1A8();

  sub_18BC1E278();

  sub_18BC1E288();
  swift_getKeyPath();
  sub_18BC1E1A8();

  sub_18BC1E278();

  sub_18BC1E288();
  sub_18BC1E2A8();
  v5 = sub_18BC1E1D8();
  v4(v1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D69E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18BC3FC60;
  v7 = v13;
  *(v6 + 32) = v14;
  *(v6 + 40) = v7;
  *(v6 + 48) = v5;
  v8 = sub_18BC1E1C8();

  return v8;
}

uint64_t sub_18BA3D0F4()
{
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  return sub_18BC1E0B8();
}

uint64_t sub_18BA3D144()
{
  v0 = sub_18BC1E248();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_18BA3F7FC(&qword_1EA9D69B0, &qword_1EA9D69B8, &unk_18BC460D0, sub_18BA3F750);
  sub_18BC1E1A8();

  sub_18BA3F654();
  sub_18BC1E238();
  v4 = sub_18BC1E228();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_18BA3F7A8();
  sub_18BC1E1A8();

  sub_18BC1E238();
  v6 = sub_18BC1E228();
  v5(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6988);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_18BC3E400;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = sub_18BC1E218();

  return v8;
}

uint64_t sub_18BA3D360()
{
  v0 = sub_18BC1E1F8();
  v1 = sub_18BC1E1F8();
  v2 = sub_18BC1E1F8();
  v3 = sub_18BC1E1F8();
  v4 = sub_18BC1E1F8();
  v5 = sub_18BC1E1F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6990);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18BC43BF0;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = sub_18BC1E1E8();

  return v7;
}

uint64_t sub_18BA3D49C()
{
  v0 = sub_18BC1E1F8();
  v1 = sub_18BC1E1F8();
  v2 = sub_18BC1E1F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6990);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_18BC3FC60;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_18BC1E1E8();

  return v4;
}

uint64_t sub_18BA3D554(uint64_t a1)
{
  v25 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6998);
  v1 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v3 = &v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D69A0);
  MEMORY[0x1EEE9AC00](v4);
  sub_18B80A188();
  sub_18BC1E298();
  sub_18BC1E288();
  swift_getKeyPath();
  v23 = sub_18BA3F6FC();
  sub_18BC1E1A8();

  sub_18BC1E278();

  sub_18BC1E288();
  sub_18BC1E2A8();
  v20 = sub_18BC1E1D8();
  v6 = v1 + 8;
  v5 = *(v1 + 8);
  v7 = v24;
  v5(v3, v24);
  v21 = v6;
  v22 = v5;
  sub_18BC1E298();
  sub_18BC1E288();
  swift_getKeyPath();
  sub_18BC1E1A8();

  sub_18BC1E278();

  sub_18BC1E288();
  sub_18BC1E2A8();
  v19 = sub_18BC1E1D8();
  v5(v3, v7);
  sub_18BC1E298();
  sub_18BC1E288();
  swift_getKeyPath();
  sub_18BC1E1A8();

  sub_18BC1E278();

  sub_18BC1E288();
  sub_18BC1E2A8();
  v18 = sub_18BC1E1D8();
  v22(v3, v24);
  sub_18BC1E298();
  sub_18BC1E288();
  swift_getKeyPath();
  sub_18BC1E1A8();

  sub_18BC1E278();

  sub_18BC1E288();
  sub_18BC1E2A8();
  v17 = sub_18BC1E1D8();
  v8 = v24;
  v9 = v22;
  v22(v3, v24);
  sub_18BC1E298();
  sub_18BC1E288();
  swift_getKeyPath();
  sub_18BC1E1A8();

  sub_18BC1E278();

  sub_18BC1E288();
  sub_18BC1E2A8();
  v10 = sub_18BC1E1D8();
  v9(v3, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D69A8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_18BC43BC0;
  v12 = v19;
  *(v11 + 32) = v20;
  *(v11 + 40) = v12;
  v13 = v17;
  *(v11 + 48) = v18;
  *(v11 + 56) = v13;
  *(v11 + 64) = v10;
  v14 = sub_18BC1E1C8();

  return v14;
}

uint64_t sub_18BA3DB30@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_18BC1E348();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1E0A8();
  v6 = sub_18BC1E338();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  return result;
}

uint64_t sub_18BA3DC60()
{
  v0 = sub_18BC1E1F8();
  v1 = sub_18BC1E1F8();
  v2 = sub_18BC1E1F8();
  v3 = sub_18BC1E1F8();
  v4 = sub_18BC1E1F8();
  v5 = sub_18BC1E1F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6990);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18BC43BF0;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = sub_18BC1E1E8();

  return v7;
}

uint64_t sub_18BA3DD98(uint64_t a1)
{
  v30 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6968);
  v2 = *(v1 - 8);
  v31 = v1;
  v32 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20[-v3];
  v24 = sub_18BC1E1B8();
  v5 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6970);
  MEMORY[0x1EEE9AC00](v8);
  sub_18B8091E0();
  sub_18BC1E298();
  sub_18BC1E288();
  swift_getKeyPath();
  v29 = sub_18BA3F6A8();
  sub_18BC1E1A8();

  sub_18BC1E278();

  sub_18BC1E288();
  v9 = *MEMORY[0x1E695A1D8];
  v28 = *(v5 + 104);
  v21 = v9;
  v10 = v24;
  v28(v7, v9, v24);
  sub_18BC1E268();
  v11 = *(v5 + 8);
  v26 = v5 + 8;
  v27 = v11;
  v11(v7, v10);
  sub_18BC1E288();
  sub_18BC1E2A8();
  v23 = sub_18BC1E1D8();
  v12 = *(v32 + 8);
  v32 += 8;
  v25 = v12;
  v12(v4, v31);
  sub_18BC1E298();
  sub_18BC1E288();
  swift_getKeyPath();
  sub_18BC1E1A8();

  sub_18BC1E278();

  sub_18BC1E288();
  v13 = v9;
  v14 = v24;
  v28(v7, v13, v24);
  sub_18BC1E268();
  v27(v7, v14);
  sub_18BC1E288();
  sub_18BC1E2A8();
  v22 = sub_18BC1E1D8();
  v25(v4, v31);
  sub_18BC1E298();
  sub_18BC1E288();
  swift_getKeyPath();
  sub_18BC1E1A8();

  sub_18BC1E278();

  sub_18BC1E288();
  v28(v7, v21, v14);
  sub_18BC1E268();
  v27(v7, v14);
  sub_18BC1E288();
  sub_18BC1E2A8();
  v15 = sub_18BC1E1D8();
  v25(v4, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6978);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_18BC3FC60;
  v17 = v22;
  *(v16 + 32) = v23;
  *(v16 + 40) = v17;
  *(v16 + 48) = v15;
  v18 = sub_18BC1E1C8();

  return v18;
}

uint64_t sub_18BA3E320()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6948);
  v1 = *(v0 - 8);
  v16 = v0;
  v17 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6950);
  MEMORY[0x1EEE9AC00](v4);
  sub_18B808F6C();
  sub_18BC1E298();
  sub_18BC1E288();
  swift_getKeyPath();
  sub_18BA3F6A8();
  sub_18BC1E1A8();

  sub_18BC1E278();

  sub_18BC1E288();
  sub_18BC1E2A8();
  v15 = sub_18BC1E1D8();
  v5 = v16;
  v13 = *(v17 + 8);
  v17 += 8;
  v13(v3, v16);
  sub_18BC1E298();
  sub_18BC1E288();
  swift_getKeyPath();
  sub_18BC1E1A8();

  sub_18BC1E278();

  sub_18BC1E288();
  sub_18BC1E2A8();
  v14 = sub_18BC1E1D8();
  v6 = v13;
  v13(v3, v5);
  sub_18BC1E298();
  sub_18BC1E288();
  swift_getKeyPath();
  sub_18BC1E1A8();

  sub_18BC1E278();

  sub_18BC1E288();
  sub_18BC1E2A8();
  v7 = sub_18BC1E1D8();
  v6(v3, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6960);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_18BC3FC60;
  v9 = v14;
  *(v8 + 32) = v15;
  *(v8 + 40) = v9;
  *(v8 + 48) = v7;
  v10 = sub_18BC1E1C8();

  return v10;
}

uint64_t sub_18BA3E758()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6918);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - v2;
  sub_18B807638();
  sub_18BC1E258();
  v4 = sub_18BC1E1D8();
  v5 = *(v1 + 8);
  v5(v3, v0);
  sub_18BC1E258();
  v6 = sub_18BC1E1D8();
  v5(v3, v0);
  sub_18BC1E258();
  v7 = sub_18BC1E1D8();
  v5(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6920);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_18BC3FC60;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  *(v8 + 48) = v7;
  v9 = sub_18BC1E1C8();

  return v9;
}

uint64_t sub_18BA3E984()
{
  v0 = sub_18BC1E2D8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = sub_18BB903E4();
  sub_18B807638();
  sub_18BC1E2E8();
  v4 = sub_18BC1E2C8();
  (*(v1 + 8))(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D68F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_18BC3E410;
  *(v5 + 32) = v4;
  v6 = sub_18BC1E2B8();

  return v6;
}

uint64_t sub_18BA3EB0C()
{
  v23 = sub_18BC1E1B8();
  v16 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v22 = &v16 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D68F8);
  MEMORY[0x1EEE9AC00](v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6900);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - v4;
  sub_18B809BA0();
  sub_18BC1E258();
  v21 = sub_18BC1E1D8();
  v6 = *(v3 + 8);
  v6(v5, v2);
  sub_18BC1E258();
  v20 = sub_18BC1E1D8();
  v6(v5, v2);
  sub_18BC1E258();
  v19 = sub_18BC1E1D8();
  v6(v5, v2);
  sub_18BC1E258();
  v18 = sub_18BC1E1D8();
  v6(v5, v2);
  sub_18BC1E258();
  v17 = sub_18BC1E1D8();
  v6(v5, v2);
  sub_18BC1E298();
  sub_18BC1E288();
  v7 = v16;
  v9 = v22;
  v8 = v23;
  (*(v16 + 104))(v22, *MEMORY[0x1E695A1D8], v23);
  sub_18BC1E268();
  (*(v7 + 8))(v9, v8);
  sub_18BC1E288();
  sub_18BC1E2A8();
  v10 = sub_18BC1E1D8();
  v6(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6908);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_18BC43BF0;
  v12 = v20;
  *(v11 + 32) = v21;
  *(v11 + 40) = v12;
  v13 = v18;
  *(v11 + 48) = v19;
  *(v11 + 56) = v13;
  *(v11 + 64) = v17;
  *(v11 + 72) = v10;
  v14 = sub_18BC1E1C8();

  return v14;
}

uint64_t sub_18BA3EFB0()
{
  v0 = sub_18BC1E2D8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B809BA0();
  sub_18BC1E2E8();
  v4 = sub_18BC1E2C8();
  (*(v1 + 8))(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D68F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_18BC3E410;
  *(v5 + 32) = v4;
  v6 = sub_18BC1E2B8();

  return v6;
}

uint64_t sub_18BA3F128(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 == -1)
  {
  }

  else
  {
    swift_once();
  }

  return sub_18BC1E3F8();
}

uint64_t sub_18BA3F1BC()
{
  v0 = sub_18BC1E2D8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_18BA6A59C();
  sub_18B808B34();
  sub_18BC1E2E8();
  v16 = sub_18BC1E2C8();
  v4 = *(v1 + 8);
  v4(v3, v0);
  v17 = sub_18BA6AAF4();
  sub_18B808D6C();
  sub_18BC1E2E8();
  v5 = sub_18BC1E2C8();
  v4(v3, v0);
  v17 = sub_18BA6B018();
  sub_18BA3F600();
  sub_18BC1E2E8();
  v6 = sub_18BC1E2C8();
  v4(v3, v0);
  v17 = sub_18BA8000C();
  v18 = v7;
  sub_18BA3F654();
  sub_18BC1E2E8();
  v8 = sub_18BC1E2C8();
  v4(v3, v0);
  v17 = sub_18BA6CD14();
  sub_18B80A188();
  sub_18BC1E2E8();
  v9 = sub_18BC1E2C8();
  v4(v3, v0);
  v17 = sub_18BB9522C();
  sub_18B8091E0();
  sub_18BC1E2E8();
  v10 = sub_18BC1E2C8();
  v4(v3, v0);
  v17 = sub_18BB95234();
  sub_18B808F6C();
  sub_18BC1E2E8();
  v11 = sub_18BC1E2C8();
  v4(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D68F0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_18BC45E80;
  *(v12 + 32) = v16;
  *(v12 + 40) = v5;
  *(v12 + 48) = v6;
  *(v12 + 56) = v8;
  *(v12 + 64) = v9;
  *(v12 + 72) = v10;
  *(v12 + 80) = v11;
  v13 = sub_18BC1E2B8();

  return v13;
}

unint64_t sub_18BA3F600()
{
  result = qword_1EA9D6938;
  if (!qword_1EA9D6938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6938);
  }

  return result;
}

unint64_t sub_18BA3F654()
{
  result = qword_1EA9D6940;
  if (!qword_1EA9D6940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6940);
  }

  return result;
}

unint64_t sub_18BA3F6A8()
{
  result = qword_1EA9D6958;
  if (!qword_1EA9D6958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6958);
  }

  return result;
}

unint64_t sub_18BA3F6FC()
{
  result = qword_1EA9D6980;
  if (!qword_1EA9D6980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6980);
  }

  return result;
}

unint64_t sub_18BA3F750()
{
  result = qword_1EA9D69C0;
  if (!qword_1EA9D69C0)
  {
    type metadata accessor for TabEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D69C0);
  }

  return result;
}

unint64_t sub_18BA3F7A8()
{
  result = qword_1EA9D69C8;
  if (!qword_1EA9D69C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D69C8);
  }

  return result;
}

uint64_t sub_18BA3F7FC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18BA3F878()
{
  result = qword_1EA9D6A28;
  if (!qword_1EA9D6A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D4C90);
    sub_18BA3F6FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6A28);
  }

  return result;
}

unint64_t sub_18BA3F908()
{
  result = qword_1ED6511A8;
  if (!qword_1ED6511A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED6511A8);
  }

  return result;
}

uint64_t sub_18BA3F954()
{
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18B7C1244(&qword_1EA9D3970, MEMORY[0x1E69695A8]);
  sub_18BC20A78();
  return sub_18BC221A8();
}

uint64_t sub_18BA3F9F0()
{
  sub_18BC1EC08();
  sub_18B7C1244(&qword_1EA9D3970, MEMORY[0x1E69695A8]);
  return sub_18BC20A78();
}

uint64_t sub_18BA3FA70()
{
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18B7C1244(&qword_1EA9D3970, MEMORY[0x1E69695A8]);
  sub_18BC20A78();
  return sub_18BC221A8();
}

void *sub_18BA3FB08()
{
  result = swift_allocObject();
  result[4] = 0;
  result[5] = 0;
  result[2] = CGRectMake;
  result[3] = 0;
  return result;
}

uint64_t sub_18BA3FB44(uint64_t result, uint64_t a2)
{
  v3 = v2[4];
  v4 = v2[5];
  v2[4] = result;
  v2[5] = a2;
  if (!a2)
  {
    if (!v4)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (!v4 || (v3 == result ? (v5 = v4 == a2) : (v5 = 0), !v5 && (sub_18BC21FD8() & 1) == 0))
  {
LABEL_12:
    swift_beginAccess();
    v6 = v2[2];
    sub_18BC1E1A8();
    v6(v2, 0);
  }
}

uint64_t sub_18BA3FC0C()
{
  result = sub_18BC1F1A8();
  if (v0)
  {
    return sub_18BA41DAC(0, 0);
  }

  __break(1u);
  return result;
}

uint64_t sub_18BA3FCB4(uint64_t a1, uint64_t a2)
{
  v98 = _s4ItemVMa_2();
  v95 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v91 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v92 = &v87 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v97 = &v87 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v87 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v87 - v13;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  v15 = sub_18BBA070C(a1, a2);
  v88 = sub_18BA64CDC(MEMORY[0x1E69E7CC0]);
  v16 = *(v15 + 56);
  v99 = v15;
  v100 = v15 + 56;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v94 = (v17 + 63) >> 6;
  sub_18BC1E3F8();
  v87 = 0;
  v20 = 0;
  v96 = v14;
  while (v19)
  {
LABEL_10:
    v25 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v26 = v95;
    v27 = *(v95 + 72);
    sub_18B8555A0(*(v99 + 48) + v27 * (v25 | (v20 << 6)), v14, _s4ItemVMa_2);
    v29 = v93[1];
    v28 = v93[2];
    v30 = v28 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v31 = v14;
    v32 = *(v28 + 16);
    if (v29)
    {
      sub_18BC1E1A8();
      v21 = sub_18B9D0B20(v31, v30, v32, (v29 + 16), v29 + 32);
      v23 = v22;

      sub_18B815440(v31, _s4ItemVMa_2);
      v14 = v31;
      if ((v23 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (v32)
    {
      v21 = 0;
      while (1)
      {
        sub_18B8555A0(v30, v11, _s4ItemVMa_2);
        updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
        sub_18B815440(v11, _s4ItemVMa_2);
        if (updated)
        {
          break;
        }

        ++v21;
        v30 += v27;
        if (v32 == v21)
        {
          goto LABEL_15;
        }
      }

      sub_18B815440(v96, _s4ItemVMa_2);
LABEL_17:
      v34 = *(*v93 + 16);
      if (!v34)
      {
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      v35 = 0;
      v36 = (*v93 + 40);
      while (v21 < *(v36 - 1) || v21 >= *v36)
      {
        v36 += 2;
        if (v34 == ++v35)
        {
          goto LABEL_89;
        }
      }

      sub_18B7B171C(v87);
      v38 = v88;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101[0] = v38;
      v41 = sub_18BB8B348(v35);
      v42 = v38[2];
      v43 = (v40 & 1) == 0;
      v44 = v42 + v43;
      if (__OFADD__(v42, v43))
      {
        goto LABEL_99;
      }

      v45 = v40;
      if (v38[3] >= v44)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v40)
          {
            goto LABEL_33;
          }

LABEL_32:
          sub_18B87163C(v101);
          sub_18BB327A0(v41, v35, v101[0], v88);
          goto LABEL_33;
        }

        sub_18BB29C24();
        v88 = v101[0];
        if ((v45 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        sub_18BB2E5B4(v44, isUniquelyReferenced_nonNull_native);
        v88 = v101[0];
        v46 = sub_18BB8B348(v35);
        if ((v45 & 1) != (v47 & 1))
        {
          goto LABEL_101;
        }

        v41 = v46;
        if ((v45 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

LABEL_33:
      v48 = v88[7];
      v49 = *(v48 + 8 * v41);
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_100;
      }

      *(v48 + 8 * v41) = v51;
      v87 = sub_18B87163C;
      v14 = v96;
    }

    else
    {
LABEL_15:
      v14 = v96;
      sub_18B815440(v96, _s4ItemVMa_2);
    }
  }

  while (1)
  {
    v24 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_88;
    }

    if (v24 >= v94)
    {
      break;
    }

    v19 = *(v100 + 8 * v24);
    ++v20;
    if (v19)
    {
      v20 = v24;
      goto LABEL_10;
    }
  }

  v96 = v93[2];
  v52 = *(v96 + 2);
  sub_18BC1E3F8();
  if (v52)
  {
    v53 = 0;
    v54 = (*(v95 + 80) + 32) & ~*(v95 + 80);
    v55 = *(v95 + 72);
    v94 = &v96[v54];
    v95 = v54;
    while (1)
    {
      if (*(v99 + 16))
      {
        v56 = v99;
        sub_18BC22158();
        v57 = sub_18BC1EC08();
        v89 = sub_18B80D494();
        v90 = v57;
        sub_18BC20A78();
        v58 = sub_18BC221A8();
        v59 = -1 << *(v56 + 32);
        v60 = v58 & ~v59;
        if ((*(v100 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60))
        {
          break;
        }
      }

LABEL_39:
      if (++v53 == v52)
      {
        goto LABEL_74;
      }
    }

    v61 = ~v59;
    while (1)
    {
      sub_18B8555A0(*(v99 + 48) + v60 * v55, v11, _s4ItemVMa_2);
      v62 = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B815440(v11, _s4ItemVMa_2);
      if (v62)
      {
        break;
      }

      v60 = (v60 + 1) & v61;
      if (((*(v100 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    v63 = v53 + 1;
    v64 = v96;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    while (1)
    {
      v65 = *(v64 + 2);
      if (v63 == v65)
      {
        break;
      }

      if (v63 >= v65)
      {
        goto LABEL_90;
      }

      v96 = v64;
      v66 = &v64[v95];
      v94 = v63 * v55;
      sub_18B8555A0(&v64[v95 + v63 * v55], v97, _s4ItemVMa_2);
      if (*(v99 + 16) && (v67 = v99, sub_18BC22158(), sub_18BC20A78(), v68 = sub_18BC221A8(), v69 = -1 << *(v67 + 32), v70 = v68 & ~v69, ((*(v100 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) != 0))
      {
        v71 = ~v69;
        while (1)
        {
          sub_18B8555A0(*(v99 + 48) + v70 * v55, v11, _s4ItemVMa_2);
          v72 = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
          sub_18B815440(v11, _s4ItemVMa_2);
          if (v72)
          {
            break;
          }

          v70 = (v70 + 1) & v71;
          if (((*(v100 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) == 0)
          {
            goto LABEL_59;
          }
        }

        sub_18B815440(v97, _s4ItemVMa_2);
        v64 = v96;
        v50 = __OFADD__(v63++, 1);
        if (v50)
        {
          goto LABEL_73;
        }
      }

      else
      {
LABEL_59:
        sub_18B815440(v97, _s4ItemVMa_2);
        if (v53 == v63)
        {
LABEL_49:
          v64 = v96;
          v50 = __OFADD__(v53++, 1);
          if (v50)
          {
            goto LABEL_91;
          }
        }

        else
        {
          v64 = v96;
          if ((v53 & 0x8000000000000000) != 0)
          {
            goto LABEL_92;
          }

          v73 = *(v96 + 2);
          if (v53 >= v73)
          {
            goto LABEL_93;
          }

          sub_18B8555A0(&v66[v53 * v55], v92, _s4ItemVMa_2);
          if (v63 >= v73)
          {
            goto LABEL_94;
          }

          v74 = v94;
          sub_18B8555A0(&v66[v94], v91, _s4ItemVMa_2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v64 = sub_18B86BA68(v64);
          }

          if (v53 >= *(v64 + 2))
          {
            goto LABEL_95;
          }

          v75 = &v64[v95];
          sub_18BA3B58C(v91, &v64[v95 + v53 * v55]);
          if (v63 >= *(v64 + 2))
          {
            goto LABEL_96;
          }

          sub_18BA3B58C(v92, &v75[v74]);
          v93[2] = v64;
          v50 = __OFADD__(v53++, 1);
          if (v50)
          {
            goto LABEL_91;
          }
        }

        v50 = __OFADD__(v63++, 1);
        if (v50)
        {
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }
      }
    }
  }

  else
  {
LABEL_74:
    v64 = v96;
    v53 = *(v96 + 2);
  }

  v76 = *(v64 + 2);
  v77 = v88;
  if (v76 >= v53)
  {
    sub_18BA41C90(v53, v76);
    sub_18BA408E0(_s4ItemVMa_2, sub_18BA40C00);

    v78 = 0;
    v79 = 1 << *(v77 + 32);
    v80 = -1;
    if (v79 < 64)
    {
      v80 = ~(-1 << v79);
    }

    v81 = v80 & v77[8];
    for (i = (v79 + 63) >> 6; v81; v78 = v83)
    {
      v83 = v78;
LABEL_83:
      v84 = __clz(__rbit64(v81)) | (v83 << 6);
      v85 = *(v77[7] + 8 * v84);
      if (__OFSUB__(0, v85))
      {
        goto LABEL_97;
      }

      v81 &= v81 - 1;
      sub_18B859708(*(v77[6] + 8 * v84), -v85);
    }

    while (1)
    {
      v83 = v78 + 1;
      if (__OFADD__(v78, 1))
      {
        break;
      }

      if (v83 >= i)
      {

        return sub_18B7B171C(v87);
      }

      v81 = v77[v83 + 8];
      ++v78;
      if (v81)
      {
        goto LABEL_83;
      }
    }

LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  result = sub_18BC22078();
  __break(1u);
  return result;
}

BOOL sub_18BA4069C(uint64_t a1)
{
  sub_18B833990(a1, v3);
  v1 = v4;
  if (v4 >= 4)
  {
    sub_18B831014(v3);
  }

  else
  {
    sub_18B833D9C(v3);
  }

  return v1 < 4;
}

uint64_t sub_18BA406FC()
{

  return swift_deallocClassInstance();
}

BOOL sub_18BA40780(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = _s4ItemVMa_2();
  return ((*(a1 + *(v5 + 44)))(v3, v4) & 1) == 0;
}

uint64_t sub_18BA40814()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  v4 = *(v3 + 16);
  if (v2 || v4 >= 0x10)
  {
    v6 = MEMORY[0x18CFFA680](v4);
    if (v2 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    v5 = sub_18BA40998(v3, v7, 0, v2);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  return result;
}

uint64_t sub_18BA408E0(uint64_t (*a1)(void), void *(*a2)(uint64_t *__return_ptr, unint64_t, void, uint64_t, uint64_t))
{
  v5 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 24) & 0x3FLL;
  }

  else
  {
    v6 = 0;
  }

  v7 = v2[1];
  v8 = *(v7 + 16);
  if (v6 || v8 >= 0x10)
  {
    v10 = MEMORY[0x18CFFA680](v8);
    if (v6 <= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v6;
    }

    v9 = sub_18BA40A18(v7, v11, 0, v6, a1, a2);
  }

  else
  {
    v9 = 0;
  }

  *v2 = v9;
  return result;
}

uint64_t sub_18BA40998(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x18CFFA680](v6);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x18CFFA690](v8, a4);
    sub_18BA40AB0(a1, (v10 + 16), v10 + 32);
    return v10;
  }

  return result;
}

uint64_t sub_18BA40A18(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(void), void *(*a6)(uint64_t *__return_ptr, unint64_t, void, uint64_t, uint64_t))
{
  v10 = *(a1 + 16);
  if (a3)
  {
    v11 = 0;
  }

  else
  {
    v11 = a2;
  }

  v12 = MEMORY[0x18CFFA680](v10);
  result = 0;
  if (v12 <= v11)
  {
    v12 = v11;
  }

  if (v12 <= a4)
  {
    v12 = a4;
  }

  if (v12 >= 5)
  {
    v14 = MEMORY[0x18CFFA690](v12, a4);
    sub_18BA40B58(a1, v14 + 16, v14 + 32, a5, a6);
    return v14;
  }

  return result;
}

void sub_18BA40C00(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v24 = a1;
  v23 = _s4ItemVMa_2();
  MEMORY[0x1EEE9AC00](v23);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a2;
  if (a2)
  {
    if ((v32 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v11 = *(v7 + 72);
      while (1)
      {
        sub_18B8555A0(v24 + v11 * v10, v9, _s4ItemVMa_2);
        sub_18BC22158();
        sub_18BC1EC08();
        sub_18B80D494();
        sub_18BC20A78();
        v12 = sub_18BC221A8();
        v13 = 1 << *a3;
        v14 = __OFSUB__(v13, 1);
        v15 = v13 - 1;
        if (v14)
        {
          break;
        }

        v16 = v15 & v12;
        v17 = sub_18BC1F118();
        v19 = v18;
        v21 = v20;
        sub_18B815440(v9, _s4ItemVMa_2);
        v25 = a3;
        v26 = a4;
        v27 = v16;
        v28 = v17;
        v29 = v19;
        v30 = v21;
        v31 = 0;
        while (v28)
        {
          sub_18BC1F158();
        }

        sub_18BC1F148();
        if (++v10 == v32)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_18BA40DF8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v24 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0) - 8;
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v10;
  v30 = a2;
  if (a2)
  {
    if ((v30 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v13 = *(v9 + 72);
      while (1)
      {
        sub_18B83AA0C(v24 + v13 * v12, v11);
        sub_18BC22158();
        sub_18B83ADFC(v25);
        result = sub_18BC221A8();
        v14 = 1 << *a3;
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (v15)
        {
          break;
        }

        v17 = v16 & result;
        v18 = sub_18BC1F118();
        v20 = v19;
        v22 = v21;
        sub_18B86C50C(v11);
        v25[0] = a3;
        v25[1] = a4;
        v25[2] = v17;
        v26 = v18;
        v27 = v20;
        v28 = v22;
        v29 = 0;
        while (v26)
        {
          sub_18BC1F158();
        }

        result = sub_18BC1F148();
        if (++v12 == v30)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_18BA40FA4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v24 = a1;
  v23 = _s7SectionVMa_1();
  MEMORY[0x1EEE9AC00](v23);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a2;
  if (a2)
  {
    if ((v32 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v11 = *(v7 + 72);
      while (1)
      {
        sub_18B8555A0(v24 + v11 * v10, v9, _s7SectionVMa_1);
        sub_18BC22158();
        sub_18BC1EC08();
        sub_18B80D494();
        sub_18BC20A78();
        sub_18BC22178();
        v12 = sub_18BC221A8();
        v13 = 1 << *a3;
        v14 = __OFSUB__(v13, 1);
        v15 = v13 - 1;
        if (v14)
        {
          break;
        }

        v16 = v15 & v12;
        v17 = sub_18BC1F118();
        v19 = v18;
        v21 = v20;
        sub_18B815440(v9, _s7SectionVMa_1);
        v25 = a3;
        v26 = a4;
        v27 = v16;
        v28 = v17;
        v29 = v19;
        v30 = v21;
        v31 = 0;
        while (v28)
        {
          sub_18BC1F158();
        }

        sub_18BC1F148();
        if (++v10 == v32)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_18BA411A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t))
{
  v7 = *(a3 + 16);
  if (v7)
  {
    v9 = 0;
    v10 = *(_s4ItemVMa_2() - 8);
    v11 = a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v12 = *(v10 + 72);
    while (1)
    {
      result = a4(v11);
      if (v4)
      {
        break;
      }

      if (result)
      {
        *(*a1 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      }

      ++v9;
      v11 += v12;
      if (v7 == v9)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v14 = *a1;
    v15 = a1[1];
    v16 = sub_18B8390A8();
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    return sub_18BA41548(v14, v15, 0, 1, v16, a2, a3);
  }

  return result;
}

void *sub_18BA412F4(uint64_t a1, uint64_t *a2, void *(*a3)(__int128 *__return_ptr))
{
  result = a3(&v8);
  if (!v3)
  {
    v6 = *a2;
    v7 = a2[1];
    *a2 = v8;
    return sub_18BA41DAC(v6, v7);
  }

  return result;
}

void sub_18BA41348(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  v22 = a4;
  v20 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    sub_18B833990(*(a3 + 48) + 40 * v15, v21);
    v16 = v22(v21);
    sub_18B833D9C(v21);
    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:
        sub_18BC1E1A8();
        sub_18BC07944(a1, a2, v20, a3);
        return;
      }
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
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_18BA414B8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_18BA41348(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_18BA41548(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a6;
  if (a4)
  {
    if (result && a2)
    {
      a3 = 0;
      v10 = 8 * a2;
      v11 = result;
      while (1)
      {
        v12 = vcnt_s8(*v11);
        v12.i16[0] = vaddlv_u8(v12);
        v13 = __OFADD__(a3, v12.u32[0]);
        a3 += v12.u32[0];
        if (v13)
        {
          break;
        }

        ++v11;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

    goto LABEL_14;
  }

LABEL_7:
  if (!a3)
  {
LABEL_14:
    sub_18BA41A88(a5, 0);

    return 0;
  }

  if (a3 != *(a7 + 16))
  {
    result = a3 + a5;
    if (__OFADD__(a3, a5))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    sub_18BA41A88(result, 0);
    v7 = 0;
    v21 = 0;
    goto LABEL_20;
  }

  if (a6)
  {
    v14 = a3;
    v7 = a5;
    swift_beginAccess();
    v15 = MEMORY[0x18CFFA660](*(v9 + 16) & 0x3FLL);
    a3 = v14;
    a5 = v7;
    v16 = v15 - v14;
    if (!__OFSUB__(v15, v14))
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  v16 = 15 - a3;
  if (__OFSUB__(15, a3))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    result = sub_18BC1F1B8();
    if ((v17 & 1) == 0)
    {
      v18 = result;
      while ((v18 & 0x8000000000000000) == 0)
      {
        if (v18 >= *(a7 + 16))
        {
          goto LABEL_30;
        }

        v19 = *(_s4ItemVMa_2() - 8);
        sub_18BA41798(a7 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v18);
        result = sub_18BC1F1B8();
        v18 = result;
        if (v20)
        {
          v7 = v21;
          goto LABEL_26;
        }
      }

LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_26:

    return v7;
  }

LABEL_11:
  if (v16 >= a5)
  {
    return v9;
  }

  result = a3 + a5;
  if (!__OFADD__(a3, a5))
  {
    sub_18BA41A88(result, 0);
    return v9;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_18BA41798(uint64_t a1)
{
  v3 = _s4ItemVMa_2();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B8555A0(a1, v6, _s4ItemVMa_2);
  v8 = v1 + 1;
  v7 = v1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[1] = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_18B85A1AC(0, *(v7 + 16) + 1, 1);
    v7 = *v8;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (v11 >= v10 >> 1)
  {
    sub_18B85A1AC(v10 > 1, v11 + 1, 1);
    v7 = *v8;
  }

  *(v7 + 16) = v11 + 1;
  result = sub_18B8297D4(v6, v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, _s4ItemVMa_2);
  v1[1] = v7;
  v13 = *v1;
  if (!*v1)
  {
    if (v11 < 0xF)
    {
      return result;
    }

    return sub_18BA408E0(_s4ItemVMa_2, sub_18BA40C00);
  }

  swift_beginAccess();
  if (MEMORY[0x18CFFA660](*(v13 + 16) & 0x3FLL) <= v11)
  {
    return sub_18BA408E0(_s4ItemVMa_2, sub_18BA40C00);
  }

  result = swift_isUniquelyReferenced_native();
  v14 = *v1;
  if ((result & 1) == 0)
  {
    if (!v14)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v15 = sub_18BC1F178();

    *v1 = v15;
    v14 = v15;
  }

  if (!v14)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_18BC22158();
  sub_18BC1EC08();
  sub_18B80D494();
  sub_18BC1E1A8();
  sub_18BC20A78();
  result = sub_18BC221A8();
  v16 = 1 << *(v14 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
    goto LABEL_19;
  }

  v19 = v18 & result;
  v20 = sub_18BC1F118();
  v23[0] = v14 + 16;
  v23[1] = v14 + 32;
  v23[2] = v19;
  v24 = v20;
  v25 = v21;
  v26 = v22;
  v27 = 0;
  while (v24)
  {
    sub_18BC1F158();
  }

  sub_18BC1F148();
}

uint64_t sub_18BA41A88(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v3 = v2;
  v5 = result;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v7 + 24) >> 1)
  {
    v10 = *v3;
    if (*v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v7 + 16) <= v5)
    {
      v14 = v5;
    }

    else
    {
      v14 = *(v7 + 16);
    }

    sub_18B85A1AC(isUniquelyReferenced_nonNull_native, v14, 0);
    v7 = *v6;
    v10 = *v3;
    if (*v3)
    {
LABEL_5:
      swift_beginAccess();
      v11 = *(v10 + 16) & 0x3FLL;
      v12 = MEMORY[0x18CFFA680](v5);
      if (a2)
      {
        v13 = v12;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v16 = v12;
        swift_beginAccess();
        v12 = v16;
        v13 = *(v10 + 24) & 0x3FLL;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      if (v13 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }

      goto LABEL_30;
    }
  }

  v12 = MEMORY[0x18CFFA680](v5);
  v11 = 0;
  if (a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v12 > 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  if (v13 <= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = v13;
  }

  result = MEMORY[0x18CFFA680](*(v7 + 16));
  if (result <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = result;
  }

  if (v18 < v11)
  {
    if (v13 <= v18)
    {
      v15 = v18;
    }

    else
    {
      v15 = v13;
    }

LABEL_30:
    v19 = sub_18BA40A18(v7, v15, 0, v13, _s4ItemVMa_2, sub_18BA40C00);

    *v3 = v19;
    return result;
  }

  if (!v10 || (result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v20 = *v3;
    if (*v3)
    {
      goto LABEL_35;
    }

LABEL_39:
    if (!v13)
    {
      return result;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (!*v3)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v20 = sub_18BC1F178();

  *v3 = v20;
  if (!v20)
  {
    goto LABEL_39;
  }

LABEL_35:
  result = swift_beginAccess();
  if ((*(v20 + 24) & 0x3FLL) != v13)
  {
    *(v20 + 24) = *(v20 + 24) & 0xFFFFFFFFFFFFFFC0 | v13 & 0x3F;
  }

  return result;
}

unint64_t sub_18BA41C90(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_22:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    goto LABEL_14;
  }

  if (v8 > *(v4 + 24) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

LABEL_14:
    sub_18B85A1AC(isUniquelyReferenced_nonNull_native, v10, 1);
  }

  return sub_18BAE38E0(v6, a2, 0);
}

uint64_t sub_18BA41D58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18BA411A4(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
  if (!v3)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_18BA41DAC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_18BA41DF0(unsigned __int8 *a1, uint64_t a2)
{
  v25 = _s4ItemVMa_0();
  MEMORY[0x1EEE9AC00](v25);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  v9 = *a1;
  v10 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v11 = *(v4 + 72);
  while (1)
  {
    sub_18B80DF38(v10, v6);
    if (v9 != *v6 || v6[1] != a1[1] || (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0() & 1) == 0)
    {
      goto LABEL_4;
    }

    v12 = v25[7];
    v13 = *&v6[v12];
    v14 = *&a1[v12];
    if (v13)
    {
      if (!v14)
      {
        goto LABEL_4;
      }

      sub_18B7B0AC0(0, &qword_1ED6514F0);
      v15 = v14;
      v16 = v13;
      v17 = sub_18BC215C8();

      if ((v17 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if (v14)
    {
      goto LABEL_4;
    }

    if (v6[v25[8]] != a1[v25[8]] || v6[v25[9]] != a1[v25[9]])
    {
      goto LABEL_4;
    }

    v18 = v25[10];
    v19 = &v6[v18];
    v20 = *&v6[v18 + 8];
    v21 = &a1[v18];
    v22 = *(v21 + 1);
    if (v20)
    {
      break;
    }

    if (!v22)
    {
      goto LABEL_20;
    }

LABEL_4:
    sub_18B7ED178(v6, _s4ItemVMa_0);
    ++v8;
    v10 += v11;
    if (v7 == v8)
    {
      return 0;
    }
  }

  if (!v22 || (*v19 != *v21 || v20 != v22) && (sub_18BC21FD8() & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_20:
  sub_18B7ED178(v6, _s4ItemVMa_0);
  return v8;
}

unint64_t sub_18BA42054(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_18BC219A8();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x18CFFD010](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_18B7B0AC0(0, &qword_1EA9D46F0);
    v8 = sub_18BC215C8();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_18BA42164(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = 0;
  if (v2)
  {
    v4 = *(a1 + 88);
    v5 = *(a1 + 96);
    for (i = (a2 + 128); ; i += 37)
    {
      v7 = *(i - 1) == v4 && *i == v5;
      if (v7 || (sub_18BC21FD8() & 1) != 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        return 0;
      }
    }
  }

  return v3;
}

void sub_18BA421F0(unint64_t a1, uint64_t a2, char a3)
{
  v4 = v3 + qword_1ED6515F0;
  if (*(v3 + qword_1ED6515F0) != (a1 & 1) || ((*(v4 + 1) ^ (a1 >> 8) & 1) & 1) != 0 || ((*(v4 + 2) ^ (a1 >> 16) & 1) & 1) != 0 || ((*(v4 + 3) ^ (a1 >> 24) & 1) & 1) != 0 || ((*(v4 + 4) ^ BYTE4(a1) & 1) & 1) != 0 || ((*(v4 + 5) ^ (a1 >> 40) & 1) & 1) != 0 || ((*(v4 + 6) ^ HIWORD(a1) & 1) & 1) != 0 || ((*(v4 + 7) ^ HIBYTE(a1) & 1) & 1) != 0 || *(v4 + 8) != a2 || ((*(v4 + 16) ^ a3 & 1) & 1) != 0)
  {
    sub_18BA43928(a1, a2);
  }
}

void *sub_18BA422D4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    [result setNeedsLayout];
    v2 = swift_allocObject();
    *(v2 + 16) = v1;
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_18B848FAC;
    *(v4 + 24) = v2;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_18B9D53AC;
    *(v5 + 24) = v4;
    aBlock[4] = sub_18B9D53B0;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18B7E3BF4;
    aBlock[3] = &block_descriptor_282;
    v6 = _Block_copy(aBlock);
    v7 = v1;
    sub_18BC1E1A8();
    sub_18BC1E1A8();

    [v3 performWithoutAnimation_];
    _Block_release(v6);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_18BA424B4()
{
  v0 = [objc_opt_self() safari_browserDefaults];
  v1 = sub_18BC20B98();
  v2 = [v0 safari:v1 BOOLForKey:1 defaultValue:?];

  v3 = 0x8000000000000008;
  if (v2)
  {
    v3 = 0x8000000000000010;
  }

  qword_1EA9F7FE0 = v3;
}

void *sub_18BA4255C()
{
  v1 = qword_1ED6516A0;
  if (*&v0[qword_1ED6516A0])
  {
    v2 = *&v0[qword_1ED6516A0];
  }

  else
  {
    v3 = [v0 traitCollection];
    type metadata accessor for SingleLineLabelWidthCache();
    v2 = swift_allocObject();
    v4 = MEMORY[0x1E69E7CC0];
    v2[2] = sub_18BA648E0(MEMORY[0x1E69E7CC0]);
    v2[3] = 0;
    v2[4] = sub_18BA64A04(v4);
    v2[5] = v3;
    *&v0[v1] = v2;
    sub_18BC1E1A8();
  }

  sub_18BC1E1A8();
  return v2;
}

void sub_18BA42618(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_18BA44AB0(a1);
  }
}

uint64_t sub_18BA42674@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5380);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - v3;
  v5 = _s4ItemVMa_0();
  v28 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18B7C34FC();
  if ([v8 isDragging])
  {

LABEL_4:
    v10 = *(v28 + 56);

    return v10(a1, 1, 1, v5);
  }

  v9 = [v8 isDecelerating];

  if (v9)
  {
    goto LABEL_4;
  }

  v12 = sub_18B7D292C();
  v13 = sub_18B7C34FC();
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v33.origin.x = v15;
  v33.origin.y = v17;
  v33.size.width = v19;
  v33.size.height = v21;
  MidX = CGRectGetMidX(v33);
  v34.origin.x = v15;
  v34.origin.y = v17;
  v34.size.width = v19;
  v34.size.height = v21;
  MidY = CGRectGetMidY(v34);
  v24 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation;
  swift_beginAccess();
  sub_18B80DBC4(v12 + v24, v29);
  v25 = v30;
  v26 = v31;
  __swift_project_boxed_opaque_existential_1Tm(v29, v30);
  (*(v26 + 128))(v25, v26, MidX, MidY);

  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  if ((*(v28 + 48))(v4, 1, v5) == 1)
  {
    sub_18B988BAC(v4, &unk_1EA9D5380);
  }

  else
  {
    sub_18B80DF9C(v4, v7);
    if (v7[1] == 1)
    {
      sub_18B80DF9C(v7, a1);
      return (*(v28 + 56))(a1, 0, 1, v5);
    }

    sub_18B7ED178(v7, _s4ItemVMa_0);
  }

  return (*(v28 + 56))(a1, 1, 1, v5);
}

void sub_18BA429B0(int a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5380);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v84 - v7;
  v9 = _s4ItemVMa_0();
  v10 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v16 = &v84 - v15;
  v17 = qword_1ED651630;
  [*&v3[qword_1ED651630] invalidate];
  v18 = *&v3[v17];
  *&v3[v17] = 0;

  if ((v3[qword_1ED6515F0 + 2] & 1) == 0)
  {
    if (a1)
    {
      return;
    }

    goto LABEL_6;
  }

  if ((a1 & 1) == 0)
  {
LABEL_6:
    v19 = &v3[qword_1ED651628];
    if (v3[qword_1ED651628 + 32])
    {
      return;
    }

    *v19 = 0u;
    *(v19 + 1) = 0u;
    v19[32] = 1;
    v20 = 0.0;
    if ((a2 & 1) == 0)
    {
      goto LABEL_41;
    }

LABEL_8:
    type metadata accessor for AnimationSettings();
    inited = swift_initStaticObject();
    goto LABEL_42;
  }

  sub_18BA42674(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_18B988BAC(v8, &unk_1EA9D5380);
    return;
  }

  sub_18B80DF9C(v8, v16);
  v22 = sub_18B7D292C();
  v23 = *&v22[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content + 8];
  sub_18BC1E3F8();

  v24 = v23;
  v25 = *(v23 + 16);
  if (!v25)
  {

LABEL_38:
    sub_18B7ED178(v16, _s4ItemVMa_0);
    return;
  }

  v85 = a2;
  v86 = a1;
  v26 = 0;
  v90 = v16;
  v27 = *v16;
  v28 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v87 = v24;
  v29 = v24 + v28;
  v30 = *(v10 + 72);
  while (1)
  {
    sub_18B80DF38(v29, v12);
    if (v27 != *v12 || v12[1] != v90[1] || (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0() & 1) == 0)
    {
      goto LABEL_12;
    }

    v31 = v9[7];
    v32 = *&v12[v31];
    v33 = *&v90[v31];
    if (v32)
    {
      if (!v33)
      {
        goto LABEL_12;
      }

      v89 = sub_18B7B0AC0(0, &qword_1ED6514F0);
      v88 = v33;
      v34 = v32;
      v35 = sub_18BC215C8();

      if ((v35 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (v33)
    {
      goto LABEL_12;
    }

    if (v12[v9[8]] != v90[v9[8]] || v12[v9[9]] != v90[v9[9]])
    {
      goto LABEL_12;
    }

    v36 = v9[10];
    v37 = &v12[v36];
    v38 = *&v12[v36 + 8];
    v39 = &v90[v36];
    v40 = *(v39 + 1);
    if (v38)
    {
      break;
    }

    if (!v40)
    {
      goto LABEL_28;
    }

LABEL_12:
    sub_18B7ED178(v12, _s4ItemVMa_0);
    ++v26;
    v29 += v30;
    if (v25 == v26)
    {

      v16 = v90;
      goto LABEL_38;
    }
  }

  if (!v40 || (*v37 != *v39 || v38 != v40) && (sub_18BC21FD8() & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_28:
  sub_18B7ED178(v12, _s4ItemVMa_0);

  v41 = sub_18B7D292C();
  v42 = v41[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content];
  v43 = v41[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content + 1];
  v44 = *&v41[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content + 8];
  sub_18BC1E3F8();

  if (v43)
  {
    v45 = 256;
  }

  else
  {
    v45 = 0;
  }

  v46 = v45 | v42;
  v47 = v90;
  sub_18BA314F4(v90, v46, v44);
  v49 = v48;
  v51 = v50;
  v53 = v52;

  if (v53)
  {
    goto LABEL_39;
  }

  if (__OFSUB__(v51, v49))
  {
    __break(1u);
    return;
  }

  if (v51 - v49 < 2)
  {
LABEL_39:
    sub_18B7ED178(v47, _s4ItemVMa_0);
    return;
  }

  [v3 bounds];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = &v3[qword_1ED651600];
  swift_beginAccess();
  v94.origin.x = UIEdgeInsetsInsetRect(v55, v57, v59, v61, v62[1], v62[2]);
  Width = CGRectGetWidth(v94);
  v64 = sub_18B7D292C();
  v65 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation;
  swift_beginAccess();
  sub_18B80DBC4(v64 + v65, v91);
  v66 = v92;
  v67 = v93;
  __swift_project_boxed_opaque_existential_1Tm(v91, v92);
  v68 = (*(v67 + 160))(v49, v51, v66, v67);

  __swift_destroy_boxed_opaque_existential_1Tm(v91);
  if (v68 > Width)
  {
    sub_18B7ED178(v90, _s4ItemVMa_0);
    return;
  }

  v69 = sub_18B7D292C();
  v70 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation;
  swift_beginAccess();
  sub_18B80DBC4(v69 + v70, v91);
  v71 = v92;
  v72 = v93;
  __swift_project_boxed_opaque_existential_1Tm(v91, v92);
  v73 = (*(v72 + 96))(v26, v71, v72);

  __swift_destroy_boxed_opaque_existential_1Tm(v91);
  v74 = sub_18B7D292C();
  v75 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation;
  swift_beginAccess();
  sub_18B80DBC4(v74 + v75, v91);
  v76 = v92;
  v77 = v93;
  __swift_project_boxed_opaque_existential_1Tm(v91, v92);
  v78 = (*(v77 + 104))(v49, v51, v76, v77);
  v80 = v79;

  sub_18B7ED178(v90, _s4ItemVMa_0);
  __swift_destroy_boxed_opaque_existential_1Tm(v91);
  v81 = &v3[qword_1ED651628];
  *v81 = v78;
  *(v81 + 1) = v80;
  *(v81 + 2) = v49;
  *(v81 + 3) = v51;
  v81[32] = 0;
  v20 = v73 - v78;
  LOBYTE(a1) = v86;
  if (v85)
  {
    goto LABEL_8;
  }

LABEL_41:
  inited = 0x8000000000000010;
LABEL_42:
  v82 = swift_allocObject();
  *(v82 + 16) = v3;
  *(v82 + 24) = v20;
  *(v82 + 32) = a1 & 1;
  v83 = v3;
  sub_18B7EAA64(sub_18BA48C24, v82, CGRectMake, 0, inited);

  sub_18B7EBAE8(inited);
}

void sub_18BA431A0(uint64_t a1, char a2, double a3)
{
  v6 = sub_18BA422AC();
  [v6 setValue_];

  v7 = [*(a1 + qword_1ED651678) maskView];
  if (v7)
  {
    v8 = v7;
    v9 = objc_opt_self();
    v10 = &selRef_blackColor;
    if ((a2 & 1) == 0)
    {
      v10 = &selRef_clearColor;
    }

    v11 = [v9 *v10];
    [v8 setBackgroundColor_];
  }

  sub_18BA45480();
  sub_18B7F623C();
  sub_18BA456CC();
}

void sub_18BA4327C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = _s4ItemVMa_0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v3 + qword_1ED651628 + 32) & 1) == 0)
  {
    v10 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content;
    v11 = *(a1 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content + 8);
    v12 = *(v11 + 16);
    v13 = MEMORY[0x1E69E7CC0];
    if (v12)
    {
      v29 = a2;
      v30 = v3;
      v31 = MEMORY[0x1E69E7CC0];
      sub_18B9B6794(0, v12, 0);
      v13 = v31;
      v14 = v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v15 = *(v7 + 72);
      do
      {
        sub_18B80DF38(v14, v9);
        v16 = v9[1];
        sub_18B7ED178(v9, _s4ItemVMa_0);
        v31 = v13;
        v18 = *(v13 + 16);
        v17 = *(v13 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_18B9B6794((v17 > 1), v18 + 1, 1);
          v13 = v31;
        }

        *(v13 + 16) = v18 + 1;
        *(v13 + v18 + 32) = v16;
        v14 += v15;
        --v12;
      }

      while (v12);
      v10 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content;
      a2 = v29;
    }

    v19 = *(a2 + v10 + 8);
    v20 = *(v19 + 16);
    v21 = MEMORY[0x1E69E7CC0];
    if (v20)
    {
      v31 = MEMORY[0x1E69E7CC0];
      sub_18B9B6794(0, v20, 0);
      v21 = v31;
      v22 = v19 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v23 = *(v7 + 72);
      do
      {
        sub_18B80DF38(v22, v9);
        v24 = v9[1];
        sub_18B7ED178(v9, _s4ItemVMa_0);
        v31 = v21;
        v26 = *(v21 + 16);
        v25 = *(v21 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_18B9B6794((v25 > 1), v26 + 1, 1);
          v21 = v31;
        }

        *(v21 + 16) = v26 + 1;
        *(v21 + v26 + 32) = v24;
        v22 += v23;
        --v20;
      }

      while (v20);
    }

    v27 = sub_18B98E2D0(v13, v21);

    if ((v27 & 1) == 0)
    {
      sub_18BA429B0(0, 0);
    }
  }
}

void sub_18BA4352C(double a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5380);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = aBlock - v4;
  sub_18BA42674(aBlock - v4);
  v6 = _s4ItemVMa_0();
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6);
  sub_18B988BAC(v5, &unk_1EA9D5380);
  if (v7 != 1)
  {
    v8 = qword_1ED651630;
    [*(v1 + qword_1ED651630) invalidate];
    v9 = *(v1 + v8);
    *(v1 + v8) = 0;

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_18BA48C1C;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18B8370D4;
    aBlock[3] = &block_descriptor_261;
    v11 = _Block_copy(aBlock);
    v12 = objc_opt_self();
    sub_18BC1E1A8();
    v13 = [v12 timerWithTimeInterval:0 repeats:v11 block:a1];
    _Block_release(v11);

    v14 = *(v1 + v8);
    *(v1 + v8) = v13;
    v15 = v13;

    v16 = [objc_opt_self() mainRunLoop];
    [v16 addTimer:v15 forMode:*MEMORY[0x1E695DA28]];
  }
}

void sub_18BA43784()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_18BA429B0(1, 1);
  }
}

unint64_t sub_18BA437E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  v5 = 256;
  if (*(a1 + 1))
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 & 0xFFFFFFFFFFFFFFFELL | *a1 & 1;
  v8 = 0x10000;
  if (*(a1 + 2))
  {
    v9 = 0x10000;
  }

  else
  {
    v9 = 0;
  }

  v10 = 0x1000000;
  if (*(a1 + 3))
  {
    v11 = 0x1000000;
  }

  else
  {
    v11 = 0;
  }

  v12 = v7 | v9 | v11;
  if (*(a1 + 4))
  {
    v13 = 0x100000000;
  }

  else
  {
    v13 = 0;
  }

  if (*(a1 + 5))
  {
    v14 = 0x10000000000;
  }

  else
  {
    v14 = 0;
  }

  if (*(a1 + 6))
  {
    v15 = 0x1000000000000;
  }

  else
  {
    v15 = 0;
  }

  v16 = v13 | v14;
  if (*(a1 + 7))
  {
    v17 = 0x100000000000000;
  }

  else
  {
    v17 = 0;
  }

  v18 = v12 | v16 | v15;
  if ((*(a2 + 1) & 1) == 0)
  {
    v5 = 0;
  }

  v19 = v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  if ((*(a2 + 2) & 1) == 0)
  {
    v8 = 0;
  }

  if ((*(a2 + 3) & 1) == 0)
  {
    v10 = 0;
  }

  v20 = v19 | v8 | v10;
  if (*(a2 + 4))
  {
    v21 = 0x100000000;
  }

  else
  {
    v21 = 0;
  }

  if (*(a2 + 5))
  {
    v22 = 0x10000000000;
  }

  else
  {
    v22 = 0;
  }

  if (*(a2 + 6))
  {
    v23 = 0x1000000000000;
  }

  else
  {
    v23 = 0;
  }

  v24 = v21 | v22;
  if (*(a2 + 7))
  {
    v25 = 0x100000000000000;
  }

  else
  {
    v25 = 0;
  }

  v26 = v20 | v24 | v23;
  v27 = *(a1 + 16);
  v28 = *(a2 + 16) & 1;

  return sub_18BA47800(v18 | v17, v3, v27 & 1, v26 | v25, v4, v28);
}

void sub_18BA43928(unint64_t a1, uint64_t a2)
{
  v5 = *&v2[qword_1ED651618 + 8];
  v6 = &v2[qword_1ED6515F0];
  v7 = v2[qword_1ED6515F0 + 16];
  v8 = &v2[qword_1ED651620];
  *v8 = *&v2[qword_1ED651618];
  *(v8 + 1) = v5;
  *(v8 + 1) = xmmword_18BC46290;
  v8[32] = v7;
  sub_18BC1E3F8();

  v9 = sub_18B7C34FC();
  [v9 setPagingEnabled_];

  v10 = sub_18B7C34FC();
  v11 = v10;
  v12 = MEMORY[0x1E69DE3A8];
  if (v6[1])
  {
    v12 = MEMORY[0x1E69DE3A0];
  }

  [v10 setDecelerationRate_];

  v13 = v6[6];
  v14 = &selRef_setContentMode_;
  v15 = &xmmword_18BC3DFF8 + 8;
  if (a2 && (HIWORD(a1) & 1) == v13)
  {
    [v2 setNeedsLayout];
    v30 = v6[5];
LABEL_12:
    if (((a1 >> 40) & 1) == v30)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v16 = *&v2[qword_1ED651678];
  [v16 setClipsToBounds_];
  if (v6[6] == 1)
  {
    v17 = objc_opt_self();
    v18 = sub_18BC20B98();
    v19 = [v17 sf:v18 imageNamed:?];

    v20 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
    v21 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v22 = v20;
    v23 = [v21 initWithWhite:0.0 alpha:0.4];
    [v22 setBackgroundColor_];
  }

  else
  {
    v22 = 0;
  }

  [v16 setMaskView_];

  v24 = swift_allocObject();
  *(v24 + 16) = v2;
  v25 = objc_opt_self();
  v26 = swift_allocObject();
  *(v26 + 16) = sub_18BA48EEC;
  *(v26 + 24) = v24;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_18B9D53AC;
  *(v27 + 24) = v26;
  v57 = sub_18B9D53B0;
  v58 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v54 = 1107296256;
  v55 = sub_18B7E3BF4;
  v56 = &block_descriptor_243;
  v28 = _Block_copy(&aBlock);
  v29 = v2;
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v25 performWithoutAnimation_];
  _Block_release(v28);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
    __break(1u);
LABEL_38:
    __break(1u);
    return;
  }

  [v29 setNeedsLayout];
  v30 = v6[5];
  v15 = (&xmmword_18BC3DFF8 + 8);
  v14 = &selRef_setContentMode_;
  if (a2)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (v30)
  {
    v31 = objc_opt_self();
    v32 = sub_18BC20B98();
    v33 = [v31 sf:v32 imageNamed:?];

    v34 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
    v35 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v36 = v34;
    v37 = [v35 initWithWhite:0.0 alpha:0.0];
    [v36 setBackgroundColor_];
  }

  else
  {
    v36 = 0;
  }

  [v2 v14[200]];

  v38 = swift_allocObject();
  *(v38 + 16) = v2;
  v39 = objc_opt_self();
  v40 = swift_allocObject();
  *(v40 + 16) = sub_18BA48BF8;
  *(v40 + 24) = v38;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_18B9D53AC;
  *(v41 + 24) = v40;
  v57 = sub_18B9D53B0;
  v58 = v41;
  aBlock = MEMORY[0x1E69E9820];
  v54 = *(v15 + 134);
  v55 = sub_18B7E3BF4;
  v56 = &block_descriptor_257;
  v42 = _Block_copy(&aBlock);
  v43 = v2;
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v39 performWithoutAnimation_];
  _Block_release(v42);
  LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

  if (v39)
  {
    goto LABEL_38;
  }

LABEL_17:
  if (v6[6] == 1)
  {
    v44 = *&v2[qword_1ED651650];
    v45 = [v44 superview];
    if (!v45)
    {
      [v2 insertSubview:v44 atIndex:0];
      goto LABEL_23;
    }

    if (v6[6])
    {
      goto LABEL_23;
    }
  }

  v46 = *&v2[qword_1ED651650];
  v47 = [v46 superview];
  if (v47)
  {

    [v46 removeFromSuperview];
  }

LABEL_23:
  if (v6[7] != 1)
  {
LABEL_26:
    v50 = *&v2[qword_1ED651668];
    v51 = [v50 superview];
    if (v51)
    {

      [*&v2[qword_1ED651678] removeFromSuperview];
      [v50 removeFromSuperview];
    }

LABEL_28:
    if (a2)
    {
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  v48 = *&v2[qword_1ED651668];
  v49 = [v48 superview];
  if (v49)
  {

    if (v6[7])
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v52 = *&v2[qword_1ED651660];
  [v52 addSubview_];
  [v52 addSubview_];
  if (a2)
  {
LABEL_29:
    if (((a1 >> 16) & 1) == v6[2])
    {
      return;
    }
  }

LABEL_30:
  [v2 bounds];
  v60.origin.x = 0.0;
  v60.origin.y = 0.0;
  v60.size.width = 0.0;
  v60.size.height = 0.0;
  if (!CGRectEqualToRect(v59, v60))
  {
    if (v6[2] == 1)
    {
      sub_18BA4352C(1.0);
    }

    else
    {
      sub_18BA429B0(0, 1);
    }
  }
}

uint64_t sub_18BA44110(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*a3 && CGRectEqualToRect(*(a1 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_scrollViewState + 32), *(a2 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_scrollViewState + 32)))
  {
    sub_18BA45EF0(a1);
  }

  sub_18BA4255C();
  if (*(a2 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content + 1))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_18BA31354(v5 | *(a2 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content), *(a2 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content + 8));
  sub_18BA1DA28(v6);
}

uint64_t sub_18BA441D4(uint64_t a1)
{
  v51 = a1;
  v49 = _s4ItemVMa_0();
  v2 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v45 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5378);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5380);
  v46 = *(v8 - 8);
  v9 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v48 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v45 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  v18 = sub_18B7D292C();
  v19 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_highlightedItem;
  swift_beginAccess();
  sub_18B7CA054(v18 + v19, v17, &unk_1EA9D5380);

  v20 = *(v5 + 56);
  sub_18B7CA054(v51, v7, &unk_1EA9D5380);
  v50 = v17;
  v21 = v49;
  sub_18B7CA054(v17, &v7[v20], &unk_1EA9D5380);
  v22 = *(v2 + 48);
  if (v22(v7, 1, v21) != 1)
  {
    sub_18B7CA054(v7, v14, &unk_1EA9D5380);
    if (v22(&v7[v20], 1, v21) != 1)
    {
      v43 = v45;
      sub_18B80DF9C(&v7[v20], v45);
      v44 = sub_18B81B8AC(v14, v43);
      sub_18B7ED178(v43, _s4ItemVMa_0);
      sub_18B7ED178(v14, _s4ItemVMa_0);
      sub_18B988BAC(v7, &unk_1EA9D5380);
      v24 = v50;
      if (v44)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    sub_18B7ED178(v14, _s4ItemVMa_0);
    v24 = v50;
LABEL_6:
    sub_18B988BAC(v7, &qword_1EA9D5378);
LABEL_7:
    v25 = sub_18B7D292C();
    v26 = v51;
    v27 = v47;
    sub_18B7CA054(v51, v47, &unk_1EA9D5380);
    v28 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_highlightedItem;
    swift_beginAccess();
    sub_18B7FD070(v27, v25 + v28, &unk_1EA9D5380);
    swift_endAccess();

    type metadata accessor for AnimationSettings();
    inited = swift_initStaticObject();
    sub_18B7CA054(v24, v27, &unk_1EA9D5380);
    v30 = v26;
    v31 = v48;
    sub_18B7CA054(v30, v48, &unk_1EA9D5380);
    v32 = *(v46 + 80);
    v33 = (v32 + 16) & ~v32;
    v34 = (v9 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = (v32 + v34 + 8) & ~v32;
    v36 = swift_allocObject();
    sub_18B7CF39C(v27, v36 + v33, &unk_1EA9D5380);
    *(v36 + v34) = v1;
    sub_18B7CF39C(v31, v36 + v35, &unk_1EA9D5380);
    v37 = objc_opt_self();
    v38 = swift_allocObject();
    v38[2] = inited;
    v38[3] = sub_18BA48B00;
    v38[4] = v36;
    v56 = sub_18B7D80AC;
    v57 = v38;
    aBlock = MEMORY[0x1E69E9820];
    v53 = 1107296256;
    v54 = sub_18B7B0DB0;
    v55 = &block_descriptor_226;
    v39 = _Block_copy(&aBlock);
    v40 = v1;
    sub_18BC1E1A8();
    v24 = v50;

    v56 = CGRectMake;
    v57 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v53 = 1107296256;
    v54 = sub_18B8043A0;
    v55 = &block_descriptor_229_0;
    v41 = _Block_copy(&aBlock);

    [v37 _animateUsingSpringBehavior_tracking_animations_completion_];
    _Block_release(v41);
    _Block_release(v39);

    goto LABEL_8;
  }

  v23 = v22(&v7[v20], 1, v21);
  v24 = v50;
  if (v23 != 1)
  {
    goto LABEL_6;
  }

  sub_18B988BAC(v7, &unk_1EA9D5380);
LABEL_8:
  sub_18B988BAC(v51, &unk_1EA9D5380);
  return sub_18B988BAC(v24, &unk_1EA9D5380);
}

uint64_t sub_18BA44844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5380);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = _s4ItemVMa_0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v19 - v15;
  sub_18B7CA054(a1, v9, &unk_1EA9D5380);
  v17 = *(v11 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_18B988BAC(v9, &unk_1EA9D5380);
  }

  else
  {
    sub_18B80DF9C(v9, v16);
    sub_18BA45288(v16);
    sub_18B7ED178(v16, _s4ItemVMa_0);
  }

  sub_18B7CA054(v20, v6, &unk_1EA9D5380);
  if (v17(v6, 1, v10) == 1)
  {
    return sub_18B988BAC(v6, &unk_1EA9D5380);
  }

  sub_18B80DF9C(v6, v13);
  sub_18BA45288(v13);
  return sub_18B7ED178(v13, _s4ItemVMa_0);
}

void sub_18BA44AB0(void *a1)
{
  v3 = _s4ItemVMa_0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v75 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D65F0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v66 = (&v61 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D6B10);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v74 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v61 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5380);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  if (!a1)
  {
    (*(v4 + 56))(v16, 1, 1, v3, v19);
    sub_18BA441D4(v16);
    return;
  }

  v62 = &v61 - v18;
  v67 = v4;
  v63 = v3;
  v20 = a1;
  v21 = sub_18B7D292C();
  v64 = v1;
  v22 = *(v1 + qword_1ED651660);
  v61 = v20;
  [v20 locationInView_];
  v71 = v23;
  v70 = v24;
  v65 = *&v21[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content + 8];
  v25 = *(v65 + 16);
  v68 = &v21[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_metrics];
  v73 = v21;
  v69 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation;
  swift_beginAccess();
  i = 0;
  v72 = (v7 + 56);
  v27 = (v7 + 48);
  v28 = v74;
  if (v25)
  {
    goto LABEL_4;
  }

LABEL_3:
  v29 = 1;
  for (i = v25; ; ++i)
  {
    (*v72)(v28, v29, 1, v6);
    sub_18B7CF39C(v28, v13, &unk_1EA9D6B10);
    if ((*v27)(v13, 1, v6) == 1)
    {

      v59 = 1;
      v60 = v62;
LABEL_16:
      (*(v67 + 56))(v60, v59, 1, v63);
      sub_18BA441D4(v60);

      return;
    }

    v33 = *v13;
    sub_18B80DF9C(v13 + *(v6 + 48), v75);
    v34 = v73;
    v35 = v69;
    sub_18B80DBC4(v73 + v69, v76);
    v37 = v77;
    v36 = v78;
    __swift_project_boxed_opaque_existential_1Tm(v76, v77);
    v38 = (*(v36 + 120))(v33, v37, v36);
    v40 = v39;
    v42 = v41;
    Height = v43;
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    sub_18B80DBC4(v34 + v35, v76);
    v45 = v77;
    v46 = v78;
    __swift_project_boxed_opaque_existential_1Tm(v76, v77);
    v47 = sub_18BA72398(v45, v46);
    v49 = v48;
    v51 = v50;
    v53 = v52;
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    if (v68[48])
    {
      v80.origin.x = v47;
      v80.origin.y = v49;
      v80.size.width = v51;
      v80.size.height = v53;
      MaxX = CGRectGetMaxX(v80);
      v81.origin.x = v38;
      v81.origin.y = v40;
      v81.size.width = v42;
      v81.size.height = Height;
      v55 = MaxX - CGRectGetMaxX(v81);
      v82.origin.x = v38;
      v82.origin.y = v40;
      v82.size.width = v42;
      v82.size.height = Height;
      MinY = CGRectGetMinY(v82);
      v83.origin.x = v38;
      v83.origin.y = v40;
      v83.size.width = v42;
      v83.size.height = Height;
      Width = CGRectGetWidth(v83);
      v84.origin.x = v38;
      v84.origin.y = v40;
      v84.size.width = v42;
      v84.size.height = Height;
      Height = CGRectGetHeight(v84);
      v38 = v55;
      v40 = MinY;
      v42 = Width;
    }

    v85.origin.x = v38;
    v85.origin.y = v40;
    v85.size.width = v42;
    v85.size.height = Height;
    v79.x = v71;
    v79.y = v70;
    v58 = CGRectContainsPoint(v85, v79);
    v28 = v74;
    if (v58)
    {

      v60 = v62;
      sub_18B80DF9C(v75, v62);
      v59 = 0;
      goto LABEL_16;
    }

    sub_18B7ED178(v75, _s4ItemVMa_0);
    if (i == v25)
    {
      goto LABEL_3;
    }

LABEL_4:
    if ((i & 0x8000000000000000) != 0)
    {
      break;
    }

    if (i >= *(v65 + 16))
    {
      goto LABEL_18;
    }

    v30 = v65 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * i;
    v31 = *(v6 + 48);
    v32 = v66;
    *v66 = i;
    sub_18B80DF38(v30, v32 + v31);
    sub_18B7CF39C(v32, v28, &unk_1EA9D65F0);
    v29 = 0;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_18BA4511C()
{
  v1 = &v0[qword_1ED651628];
  if (v0[qword_1ED651628 + 32])
  {
    [v0 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v10 = &v0[qword_1ED651600];
    swift_beginAccess();
    v20.origin.x = UIEdgeInsetsInsetRect(v3, v5, v7, v9, v10[1], v10[2]);
    CGRectGetWidth(v20);
  }

  else
  {
    v12 = *(v1 + 2);
    v11 = *(v1 + 3);
    v13 = sub_18B7D292C();
    v14 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation;
    swift_beginAccess();
    sub_18B80DBC4(v13 + v14, v17);
    v15 = v18;
    v16 = v19;
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    (*(v16 + 160))(v12, v11, v15, v16);

    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    swift_beginAccess();
  }
}

void sub_18BA45288(unsigned __int8 *a1)
{
  v3 = sub_18B7D292C();
  v4 = *&v3[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content + 8];
  sub_18BC1E3F8();

  v5 = sub_18BA41DF0(a1, v4);
  LOBYTE(v3) = v6;

  if ((v3 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6AF0);
    sub_18BC1EDD8();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_18BC3E410;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB730);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_18BC3E410;
    *(v8 + 32) = v5;
    MEMORY[0x18CFFA250]();
    v9 = sub_18B7D292C();
    sub_18BA47890(0x656C7573706163, 0xE700000000000000, v7, v9, v1);
  }
}

double sub_18BA45420()
{
  v0 = *MEMORY[0x1E69DE788];
  swift_beginAccess();
  return v0;
}

id sub_18BA45480()
{
  [v0 bounds];
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MidY = CGRectGetMidY(v16);
  sub_18BA4511C();
  v8 = v7;
  [v0 bounds];
  v9 = CGRectGetHeight(v17);
  v10 = *&v0[qword_1ED651650];
  [v10 setFrame_];
  if (v9 >= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = v9;
  }

  v12 = v11 * 0.5;

  return [v10 _setContinuousCornerRadius_];
}

id sub_18BA45570()
{
  v1 = *(v0 + qword_1ED651678);
  v2 = *(v0 + qword_1ED651660);
  [v2 bounds];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  MidX = CGRectGetMidX(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  [v1 setCenter_];
  [v2 bounds];
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  [v1 _setContinuousCornerRadius_];
  v11 = *(v0 + qword_1ED651680);
  [v2 bounds];
  [v11 setBounds_];
  [v1 bounds];
  v12 = v22.origin.x;
  v13 = v22.origin.y;
  v14 = v22.size.width;
  v15 = v22.size.height;
  v16 = CGRectGetMidX(v22);
  v23.origin.x = v12;
  v23.origin.y = v13;
  v23.size.width = v14;
  v23.size.height = v15;
  MidY = CGRectGetMidY(v23);

  return [v11 setCenter_];
}

void sub_18BA456CC()
{
  v1 = [v0 maskView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 setFrame_];
  }

  v3 = *&v0[qword_1ED651678];
  v4 = [v3 maskView];
  if (v4)
  {
    v5 = v4;
    [v3 bounds];
    [v5 setFrame_];
  }
}

id sub_18BA457B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v7 = sub_18BA45810(v3, a2, a3);
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

id sub_18BA45810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E69DD268]) init];
  v6 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_18BC3E3E0;
  *(v7 + 32) = v5;
  sub_18B7B0AC0(0, &qword_1EA9D50B0);
  v8 = v5;
  v9 = sub_18BC20D88();

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13[4] = a2;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_18B7B0DB0;
  v13[3] = a3;
  v11 = _Block_copy(v13);

  [v6 _createTransformerWithInputAnimatableProperties_presentationValueChangedCallback_];
  _Block_release(v11);

  return v8;
}

void sub_18BA45994()
{
  v1 = v0;
  v2 = *&v0[qword_1ED6515F0 + 8];
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
  sub_18BC1E1A8();
  sub_18B7CC404(v3);

  v1[qword_1ED651690] = 0;
  v4 = sub_18B7D292C();
  sub_18B820C90();

  v5 = sub_18B820824();
  [v5 value];
  v7 = v6;

  v8 = sub_18B7D292C();
  v9 = *&v8[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_interactiveInsertionInfo + 8];

  if (v7 != v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    *(v12 + 16) = sub_18BA4826C;
    *(v12 + 24) = v10;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_18B9D53AC;
    *(v13 + 24) = v12;
    v17[4] = sub_18B9D53B0;
    v17[5] = v13;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_18B7E3BF4;
    v17[3] = &block_descriptor_198;
    v14 = _Block_copy(v17);
    v15 = v1;
    sub_18BC1E1A8();
    sub_18BC1E1A8();

    [v11 performWithoutAnimation_];
    _Block_release(v14);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_18BA45BDC()
{
  v2 = sub_18B820824();
  v0 = sub_18B7D292C();
  v1 = *&v0[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_interactiveInsertionInfo + 8];

  [v2 setValue_];
}

uint64_t sub_18BA45C58(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = *(Strong + qword_1ED6515F8 + 16);
  v5 = Strong;
  sub_18BC1E1A8();

  v6 = v4(a2);

  return v6;
}

uint64_t sub_18BA45CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(result + qword_1ED6515F8 + 32);
    v6 = result;
    sub_18BC1E1A8();

    v5(a3);
  }

  return result;
}

void sub_18BA45D98(double a1)
{
  v5 = sub_18BA422AC();
  v2 = sub_18B7C34FC();
  [v2 contentOffset];
  v4 = v3;

  [v5 setValue_];
}

uint64_t sub_18BA45E18(uint64_t result)
{
  v1 = *(result + qword_1ED651648);
  v2 = *(v1 + 24);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 24) = v4;
    if (!v4)
    {
      result = swift_beginAccess();
      v5 = *(v1 + 16);
      v6 = *(v5 + 16);
      if (v6)
      {
        sub_18BC1E1A8();
        sub_18BC1E3F8();
        v7 = v5 + 40;
        do
        {
          v8 = *(v7 - 8);
          v9 = *(v1 + 24) > 0;
          sub_18BC1E1A8();
          v8(&v9);

          v7 += 16;
          --v6;
        }

        while (v6);
      }
    }
  }

  return result;
}

void sub_18BA45EF0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5380);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20[-v5];
  v7 = _s4ItemVMa_0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v2 + qword_1ED6515F0 + 1) == 1)
  {
    v11 = *(a1 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_scrollViewState + 32);
    v12 = *(a1 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_scrollViewState + 40);
    v13 = *(a1 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_scrollViewState + 48);
    v14 = *(a1 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_scrollViewState + 56);
    v24.origin.x = v11;
    v24.origin.y = v12;
    v24.size.width = v13;
    v24.size.height = v14;
    MidX = CGRectGetMidX(v24);
    v25.origin.x = v11;
    v25.origin.y = v12;
    v25.size.width = v13;
    v25.size.height = v14;
    MidY = CGRectGetMidY(v25);
    v17 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation;
    swift_beginAccess();
    sub_18B80DBC4(a1 + v17, v21);
    v18 = v22;
    v19 = v23;
    __swift_project_boxed_opaque_existential_1Tm(v21, v22);
    (*(v19 + 128))(v18, v19, MidX, MidY);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_18B988BAC(v6, &unk_1EA9D5380);
    }

    else
    {
      sub_18B80DF9C(v6, v10);
      sub_18BA46150(v10);
      sub_18B7ED178(v10, _s4ItemVMa_0);
    }
  }
}

void sub_18BA46150(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18B7D292C();
  v5 = *&v4[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content + 8];
  sub_18BC1E3F8();

  v19[2] = a1;
  v6 = sub_18BBC2B94(sub_18BA4821C, v19, v5);
  LOBYTE(v4) = v7;

  if ((v4 & 1) == 0)
  {
    if (*&v2[qword_1ED651610])
    {
      v8 = v2;
      v9 = sub_18BC1E1A8();
      sub_18BAE8084(v9, v8, v6);
    }

    else
    {
      v10 = v2;
      v11 = sub_18B7C34FC();
      v12 = sub_18B7D292C();
      v13 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation;
      swift_beginAccess();
      sub_18B80DBC4(v12 + v13, v20);
      v14 = v21;
      v15 = v22;
      __swift_project_boxed_opaque_existential_1Tm(v20, v21);
      v16 = (*(v15 + 96))(v6, v14, v15);
      v18 = v17;

      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      [v11 setContentOffset_];

      if ((v10[qword_1ED651628 + 32] & 1) == 0)
      {
        sub_18BA429B0(1, 0);
      }
    }
  }
}

void sub_18BA46314(void *a1)
{
  v2 = sub_18BC1E6A8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1E678();
  v6 = a1;
  if (sub_18B7FC33C())
  {
    [*&v6[qword_1ED651698] setHidden_];
    (*(v3 + 8))(v5, v2);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

void sub_18BA46450(uint64_t a1)
{
  if (*(v1 + qword_1ED651610))
  {
    sub_18BC1E1A8();
    sub_18BAE733C(a1);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_18BAD16FC();
    swift_unknownObjectRelease();
  }

  sub_18BA4352C(1.0);
}

void sub_18BA464DC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_18BA46450(v4);
}

uint64_t sub_18BA46544(uint64_t result, char a2)
{
  v4 = *(v2 + qword_1ED651610);
  if (v4)
  {
    v5 = result;
    v6 = *(v4 + 16);
    *(v4 + 16) = 0;
    sub_18BC1E1A8();

    sub_18B7CE56C();
    sub_18BAE7534(v5);
  }

  if ((a2 & 1) == 0)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_18BAD16FC();

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_18BA465FC(void *a1, uint64_t a2, void *a3, char a4)
{
  v6 = a3;
  v7 = a1;
  sub_18BA46544(v6, a4);
}

void sub_18BA4666C(char *a1, uint64_t a2, void *a3)
{
  if (*&a1[qword_1ED651610])
  {
    v4 = a3;
    v5 = a1;
    sub_18BC1E1A8();
    sub_18BAE772C(v4);
  }
}

uint64_t sub_18BA46700(void *a1)
{
  v2 = v1;
  v4 = sub_18B7D2DB4();
  type metadata accessor for Assertion();
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  *(v5 + 24) = 0;
  v4[5] = v5;

  [v4[6] contentOffset];
  v7 = v6;
  v9 = v8;
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = v7;
  v10[4] = v9;
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_18B840544;
  *(v12 + 24) = v10;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_18B9D53AC;
  *(v13 + 24) = v12;
  v21[4] = sub_18B9D53B0;
  v21[5] = v13;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = sub_18B7E3BF4;
  v21[3] = &block_descriptor_145;
  v14 = _Block_copy(v21);
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v11 performWithoutAnimation_];
  _Block_release(v14);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  else
  {
    sub_18BA429B0(0, 1);
    v16 = *(v2 + qword_1ED651610);
    if (v16)
    {
      v17 = *(v16 + 16);
      *(v16 + 16) = a1;
      sub_18BC1E1A8();
      v18 = a1;

      sub_18B7CE56C();
      sub_18BAE7924(v18);
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      if (*(result + OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_keepsCapsuleViewExpanded))
      {
        v19 = 1;
      }

      else
      {
        v20 = sub_18B7C34FC();
        if ([v20 isDragging])
        {
          v19 = 1;
        }

        else
        {
          v19 = [v20 isDecelerating];
        }
      }

      sub_18BAD09A8(v19);
      result = swift_unknownObjectRelease();
    }

    *(v2 + qword_1ED651688) = 1;
  }

  return result;
}

void sub_18BA46A0C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_18BA46700(v4);
}

void sub_18BA46A74(void *a1, uint64_t a2, void *a3, double *a4)
{
  v6 = a3;
  v7 = a1;
  sub_18BA48370(v6, a4);
}

void sub_18BA46AE4(unint64_t a1)
{
  v3 = _s4ItemVMa_0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) == 0)
  {
    v7 = sub_18B7D292C();
    v8 = *&v7[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content + 8];
    sub_18BC1E3F8();

    v9 = *(v8 + 16);

    if (v9 > a1)
    {
      v10 = *(v1 + qword_1ED6515F8 + 32);
      sub_18BC1E1A8();
      v11 = sub_18B7D292C();
      v12 = *&v11[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content + 8];
      sub_18BC1E3F8();

      if (*(v12 + 16) <= a1)
      {
        __break(1u);
      }

      else
      {
        sub_18B80DF38(v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * a1, v6);

        v10(v6);

        sub_18B7ED178(v6, _s4ItemVMa_0);
      }
    }
  }
}

void sub_18BA46C74(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = a1;
  sub_18BA46AE4(a3);
}

id sub_18BA46CC8(void *a1)
{
  v2 = v1;
  v38 = a1;
  v3 = sub_18BC1EC08();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &v1[qword_1ED6515F0];
  type metadata accessor for InteractiveInsertionGroup();
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 16) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0x3FE0000000000000;
  *v7 = 1;
  *(v7 + 1) = v8;
  v7[16] = 1;
  v9 = &v1[qword_1ED6515F8];
  *v9 = CGRectMake;
  v9[1] = 0;
  v9[2] = sub_18B8390A8;
  v9[3] = 0;
  v9[4] = CGRectMake;
  v9[5] = 0;
  v10 = &v1[qword_1ED651600];
  UIEdgeInsetsMakeWithEdges();
  *v10 = 0x4046000000000000;
  v11 = *MEMORY[0x1E69DDCE0];
  *(v10 + 24) = *(MEMORY[0x1E69DDCE0] + 16);
  *(v10 + 8) = v11;
  *(v10 + 5) = 0x3FD999999999999ALL;
  v10[48] = 0;
  *(v10 + 7) = 0x4020000000000000;
  *(v10 + 8) = v12;
  *(v10 + 9) = v13;
  *(v10 + 10) = v14;
  *(v10 + 11) = v15;
  *(v10 + 6) = xmmword_18BC462A0;
  *&v2[qword_1ED651608 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[qword_1ED651610] = 0;
  v16 = &v2[qword_1ED651618];
  v41 = 60;
  v42 = 0xE100000000000000;
  v37 = type metadata accessor for ScrollingCapsuleCollectionView();
  v40 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6B20);
  v17 = sub_18BC20BF8();
  MEMORY[0x18CFFC150](v17);

  MEMORY[0x18CFFC150](8250, 0xE200000000000000);
  sub_18BC1DE28();
  v18 = sub_18BC1EBA8();
  v20 = v19;
  (*(v4 + 8))(v6, v3);
  MEMORY[0x18CFFC150](v18, v20);

  MEMORY[0x18CFFC150](15913, 0xE200000000000000);
  v21 = v42;
  *v16 = v41;
  v16[1] = v21;
  v22 = &v2[qword_1ED651620];
  *v22 = 0;
  *(v22 + 1) = 0;
  *(v22 + 2) = 0;
  *(v22 + 3) = 0x3FD999999999999ALL;
  v22[32] = 0;
  v23 = &v2[qword_1ED651628];
  *v23 = 0u;
  *(v23 + 1) = 0u;
  v23[32] = 1;
  *&v2[qword_1ED651630] = 0;
  *&v2[qword_1ED651638] = 0;
  *&v2[qword_1ED651640] = 0x3FF0000000000000;
  v24 = qword_1ED651648;
  type metadata accessor for Assertion();
  v25 = swift_allocObject();
  *(v25 + 16) = MEMORY[0x1E69E7CC0];
  *(v25 + 24) = 0;
  *&v2[v24] = v25;
  v26 = qword_1ED651650;
  *&v2[v26] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v27 = qword_1ED651658;
  *&v2[v27] = [objc_allocWithZone(type metadata accessor for CapsuleTabGroupView()) init];
  v28 = qword_1ED651660;
  type metadata accessor for HighlightTrackingView();
  *&v2[v28] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v29 = qword_1ED651668;
  _s4LensCMa();
  *&v2[v29] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v30 = qword_1ED651670;
  _s12LensPunchoutCMa();
  *&v2[v30] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v31 = qword_1ED651678;
  *&v2[v31] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v32 = qword_1ED651680;
  *&v2[v32] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v2[qword_1ED651688] = 0;
  v2[qword_1ED651690] = 0;
  v33 = qword_1ED651698;
  *&v2[v33] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v2[qword_1ED6516A0] = 0;
  *&v2[qword_1ED6516A8] = 0;
  v34 = v38;
  v39.receiver = v2;
  v39.super_class = v37;
  v35 = objc_msgSendSuper2(&v39, sel_initWithCoder_, v38);

  if (v35)
  {
  }

  return v35;
}

void sub_18BA47178()
{

  sub_18B7B55F4(v0 + qword_1ED651608);

  v1 = *(v0 + qword_1ED6516A8);
}

id sub_18BA47300()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScrollingCapsuleCollectionView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_18BA47338(uint64_t a1)
{

  sub_18B7B55F4(a1 + qword_1ED651608);

  v2 = *(a1 + qword_1ED6516A8);
}

uint64_t sub_18BA474C4()
{
  v1 = _s7ContentVMa_1();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  swift_beginAccess();
  if (*(v0 + v5))
  {
    v6 = *(v0 + v5);
  }

  else
  {
    *v3 = MEMORY[0x1E69E7CC0];
    v7 = *(v1 + 20);
    v8 = sub_18BC1EC08();
    (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
    (*((*v4 & *v0) + 0x1C0))(&v11, v3);
    sub_18B7ED178(v3, _s7ContentVMa_1);
    v6 = v11;
    *(v0 + v5) = v11;
    sub_18BC1E1A8();
  }

  sub_18BC1E1A8();
  return v6;
}

uint64_t sub_18BA476A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_18BA476F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_18BA47740(double a1, double a2)
{
  v4 = sub_18B7D292C();
  v5 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation;
  swift_beginAccess();
  sub_18B80DBC4(v4 + v5, v10);
  v6 = v11;
  v7 = v12;
  __swift_project_boxed_opaque_existential_1Tm(v10, v11);
  v8 = (*(v7 + 176))(v6, v7, a1, a2);

  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return v8;
}

uint64_t sub_18BA47890(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, void *a5)
{
  v92 = a4;
  v9 = _s4ItemVMa_0();
  v81 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v75 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v78 = &v75 - v12;
  v13 = sub_18BC1EDD8();
  v90 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v93 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v84 = &v75 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6AF8);
  v99[3] = v17;
  v99[4] = sub_18BA4830C();
  v99[0] = a3;
  v18 = *((*MEMORY[0x1E69E7D40] & *a5) + 0x98);
  swift_beginAccess();
  v19 = *(a5 + v18);
  v20 = *(v19 + 16);
  sub_18BC1E3F8();
  if (v20)
  {
    sub_18BC1E3F8();
    v86 = a1;
    v21 = sub_18B7C4104(a1, a2);
    if (v22)
    {
      v23 = *(*(v19 + 56) + 8 * v21);
      sub_18BC1E1A8();

      v24 = __swift_project_boxed_opaque_existential_1Tm(v99, v17);
      v25 = MEMORY[0x1EEE9AC00](v24);
      v27 = (&v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v28 + 16))(v27, v25);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v96);
      *boxed_opaque_existential_0Tm = *v27;
      boxed_opaque_existential_0Tm[1] = 0;
      v91 = &v92[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content];
      swift_beginAccess();
      v94 = v23;
      swift_beginAccess();
      v82 = (v90 + 32);
      v83 = (v90 + 48);
      v79 = (v90 + 8);
      v80 = v13;
      v85 = a2;
      v30 = v86;
      v31 = v78;
      v32 = v84;
      v77 = a5;
      while (1)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v96, AssociatedTypeWitness);
        sub_18BC21868();
        if ((*v83)(v32, 1, v13) == 1)
        {

          __swift_destroy_boxed_opaque_existential_1Tm(v96);
          return __swift_destroy_boxed_opaque_existential_1Tm(v99);
        }

        (*v82)(v93, v32, v13);
        v50 = *(v91 + 1);
        v51 = sub_18BC1EDE8();
        if ((v51 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v51 >= *(v50 + 16))
        {
          goto LABEL_28;
        }

        v52 = *(v81 + 80);
        sub_18B80DF38(v50 + ((v52 + 32) & ~v52) + *(v81 + 72) * v51, v31);
        v53 = sub_18BC1EDE8();
        sub_18B812F3C(v53, v100);
        v54 = v94;
        if (*(v94[10] + 16))
        {
          sub_18BC1E1A8();
          sub_18BC1E3F8();
          sub_18B80CA2C(v31);
          v56 = v55;

          v54 = v94;
        }

        else
        {
          v56 = 0;
        }

        v106 = v100[0];
        v107 = v100[1];
        v108[0] = (v56 | v101) & 1;
        *&v108[1] = v102;
        *&v108[64] = *&v105[15];
        *&v108[49] = *v105;
        *&v108[33] = v104;
        *&v108[17] = v103;
        if (v102 & 1) != 0 || *(v54[7] + 16) && (sub_18BC1E1A8(), sub_18BC1E3F8(), sub_18B80CA2C(v31), v58 = v57, , , v54 = v94, (v58) || (v59 = v54[15], v60 = v54[16], __swift_project_boxed_opaque_existential_1Tm(v54 + 12, v59), v61 = v94[2], sub_18BC1E1A8(), v61(v95, v31), a2 = v85, , v30 = v86, v62 = sub_18B814A2C(v95, v59, v60), __swift_destroy_boxed_opaque_existential_1Tm(v95), v54 = v94, (v62))
        {
          if (v91[1])
          {
            v63 = 256;
          }

          else
          {
            v63 = 0;
          }

          v64 = sub_18B80C750(v31, v63 | *v91, v50, v54);
          v90 = v65;
          v66 = v31;
          v68 = v67;
          v69 = (*((*MEMORY[0x1E69E7D40] & *a5) + 0x210))(v66, v30, a2);
          v70 = [v64 superview];
          if (!v70 || (v71 = v70, sub_18B7B0AC0(0, &qword_1EA9D46F0), v72 = v69, v73 = sub_18BC215C8(), v71, v72, (v73 & 1) == 0))
          {
            [v69 addSubview_];
          }

          v33 = 0x8000000000000010;
          v87 = v68 & 1;
          if ((v68 & 1) == 0)
          {
            v33 = 0x8000000000000008;
          }

          v88 = v33;
          v34 = v78;
          v35 = v75;
          sub_18B80DF38(v78, v75);
          v36 = (v52 + 152) & ~v52;
          v37 = (v36 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
          v89 = v69;
          v38 = (v36 + v76 + 23) & 0xFFFFFFFFFFFFFFF8;
          v39 = swift_allocObject();
          v40 = v90;
          *(v39 + 16) = v64;
          *(v39 + 24) = v40;
          v41 = *&v108[48];
          *(v39 + 96) = *&v108[32];
          *(v39 + 112) = v41;
          *(v39 + 128) = *&v108[64];
          v42 = v107;
          *(v39 + 32) = v106;
          *(v39 + 48) = v42;
          v43 = *&v108[16];
          *(v39 + 64) = *v108;
          *(v39 + 80) = v43;
          *(v39 + 144) = v94;
          sub_18B80DF9C(v35, v39 + v36);
          v44 = v39 + v37;
          v45 = v92;
          *v44 = v92;
          *(v44 + 8) = v87;
          a5 = v77;
          *(v39 + v38) = v77;
          sub_18BC1E1A8();
          v46 = v64;
          v47 = v45;
          v48 = a5;
          v49 = v88;
          sub_18B80ECB4(sub_18B80F3F4, v39, v88);
          v31 = v34;

          sub_18B7EBAE8(v49);

          a2 = v85;
          v30 = v86;
        }

        else
        {
          sub_18B7F4620(&v106);
          sub_18B814EEC(v31);
        }

        sub_18B7ED178(v31, _s4ItemVMa_0);
        v13 = v80;
        (*v79)(v93, v80);
        v32 = v84;
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }
  }

  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

void sub_18BA481A0(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18BA46150(a1);
}

uint64_t objectdestroy_207Tm()
{

  return swift_deallocObject();
}

unint64_t sub_18BA4830C()
{
  result = qword_1EA9D6B00;
  if (!qword_1EA9D6B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D6AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6B00);
  }

  return result;
}

uint64_t sub_18BA48370(void *a1, double *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D65F0);
  v80 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v82 = (&v76 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D6B10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v88 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v76 - v11);
  v77 = _s4ItemVMa_0();
  v81 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v89 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v76 = &v76 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v76 - v17;
  v18 = sub_18B7D292C();
  v19 = *a2;
  v20 = a2[1];
  v21 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation;
  swift_beginAccess();
  sub_18B80DBC4(v18 + v21, v90);
  v22 = v91;
  v23 = v92;
  __swift_project_boxed_opaque_existential_1Tm(v90, v91);
  v24 = (*(v23 + 152))(v22, v23, v19, v20);
  v26 = v25;

  __swift_destroy_boxed_opaque_existential_1Tm(v90);
  *a2 = v24;
  a2[1] = v26;
  if (*(v3 + qword_1ED651610))
  {
    sub_18BC1E1A8();
    sub_18BAE7B1C(a1, v24, v26);
  }

  *(v3 + qword_1ED651688) = 0;
  v27 = *a2;
  v28 = a2[1];
  [a1 bounds];
  v30 = v29;
  v32 = v31;
  v79 = v3;
  v33 = sub_18B7D292C();
  v94.origin.x = v27;
  v94.origin.y = v28;
  v94.size.width = v30;
  v94.size.height = v32;
  MidX = CGRectGetMidX(v94);
  v95.origin.x = v27;
  v95.origin.y = v28;
  v95.size.width = v30;
  v95.size.height = v32;
  MidY = CGRectGetMidY(v95);
  v83 = *&v33[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content + 8];
  v87 = *(v83 + 16);
  v34 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation;
  v84 = &v33[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_metrics];
  result = swift_beginAccess();
  v36 = 0;
  v37 = (v80 + 56);
  v38 = (v80 + 48);
  v39 = v88;
  while (1)
  {
    if (v36 == v87)
    {
      v40 = 1;
      v36 = v87;
      goto LABEL_9;
    }

    if ((v36 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v36 >= *(v83 + 16))
    {
      goto LABEL_20;
    }

    v41 = v83 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v36;
    v42 = *(v6 + 48);
    v43 = v82;
    *v82 = v36;
    sub_18B80DF38(v41, v43 + v42);
    sub_18B7CF39C(v43, v39, &unk_1EA9D65F0);
    v40 = 0;
    ++v36;
LABEL_9:
    (*v37)(v39, v40, 1, v6);
    sub_18B7CF39C(v39, v12, &unk_1EA9D6B10);
    if ((*v38)(v12, 1, v6) == 1)
    {

LABEL_18:
      v74 = *(v79 + qword_1ED6515F0 + 8);
      v75 = *(v74 + 40);
      *(v74 + 40) = 0;
      sub_18BC1E1A8();
      sub_18B7CC404(v75);
    }

    v44 = *v12;
    sub_18B80DF9C(v12 + *(v6 + 48), v89);
    sub_18B80DBC4(&v33[v34], v90);
    v46 = v91;
    v45 = v92;
    __swift_project_boxed_opaque_existential_1Tm(v90, v91);
    v47 = (*(v45 + 120))(v44, v46, v45);
    v49 = v48;
    v51 = v50;
    Height = v52;
    __swift_destroy_boxed_opaque_existential_1Tm(v90);
    sub_18B80DBC4(&v33[v34], v90);
    v54 = v91;
    v55 = v92;
    __swift_project_boxed_opaque_existential_1Tm(v90, v91);
    v56 = sub_18BA72398(v54, v55);
    v58 = v57;
    v60 = v59;
    v62 = v61;
    __swift_destroy_boxed_opaque_existential_1Tm(v90);
    if (v84[48])
    {
      v96.origin.x = v56;
      v96.origin.y = v58;
      v96.size.width = v60;
      v96.size.height = v62;
      MaxX = CGRectGetMaxX(v96);
      v97.origin.x = v47;
      v97.origin.y = v49;
      v97.size.width = v51;
      v97.size.height = Height;
      v64 = MaxX - CGRectGetMaxX(v97);
      v98.origin.x = v47;
      v98.origin.y = v49;
      v98.size.width = v51;
      v98.size.height = Height;
      MinY = CGRectGetMinY(v98);
      v99.origin.x = v47;
      v99.origin.y = v49;
      v99.size.width = v51;
      v99.size.height = Height;
      Width = CGRectGetWidth(v99);
      v100.origin.x = v47;
      v100.origin.y = v49;
      v100.size.width = v51;
      v100.size.height = Height;
      Height = CGRectGetHeight(v100);
      v47 = v64;
      v49 = MinY;
      v51 = Width;
    }

    v101.origin.x = v47;
    v101.origin.y = v49;
    v101.size.width = v51;
    v101.size.height = Height;
    v93.x = MidX;
    v93.y = MidY;
    v67 = CGRectContainsPoint(v101, v93);
    v39 = v88;
    if (v67)
    {

      v68 = v76;
      sub_18B80DF9C(v89, v76);
      v69 = v78;
      sub_18B80DF9C(v68, v78);
      if (*(v69 + *(v77 + 32)))
      {
        v70 = v79;
        v71 = *(v79 + qword_1ED6515F0 + 8);
        v72 = *(v71 + 40);
        *(v71 + 40) = 3;
        sub_18BC1E1A8();
        sub_18B7CC404(v72);

        v73 = *(v70 + qword_1ED6515F8);
        sub_18BC1E1A8();
        v73(v69);

        return sub_18B7ED178(v69, _s4ItemVMa_0);
      }

      sub_18B7ED178(v69, _s4ItemVMa_0);
      goto LABEL_18;
    }

    result = sub_18B7ED178(v89, _s4ItemVMa_0);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_18BA48B00()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5380) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);

  return sub_18BA44844(v0 + v3, v5, v0 + ((v2 + v4 + 8) & ~v2));
}

uint64_t objectdestroy_171Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t sub_18BA48C3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_18BA48C80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_18BA48CCC(uint64_t a1)
{
  v3 = *(_s4ItemVMa_0() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_18BA45CF0(a1, v4, v5);
}

uint64_t objectdestroy_291Tm()
{
  v1 = (_s4ItemVMa_0() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[8];
  v4 = sub_18BC1EC08();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_18BA48E4C()
{
  v1 = *(_s4ItemVMa_0() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_18BA45C58(v2, v3);
}

uint64_t sub_18BA48F00(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18BA48F20(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 80) = v3;
  return result;
}

BOOL sub_18BA48F70(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_18B7EBA3C(v8, v9);
}

double sub_18BA48FCC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_18B7DFD58(a1);
  if ([objc_opt_self() isSolariumEnabled])
  {
    v4 = 44.0;
  }

  else
  {
    v4 = 50.0;
    if (*(a1 + 56))
    {
      v4 = 44.0;
    }
  }

  *a2 = xmmword_18BC465A0;
  *(a2 + 16) = xmmword_18BC465B0;
  *(a2 + 32) = xmmword_18BC465C0;
  *(a2 + 48) = v4;
  result = 32.0;
  *(a2 + 56) = xmmword_18BC465D0;
  *(a2 + 72) = 0x4046000000000000;
  return result;
}

char *sub_18BA4906C()
{
  v1 = OBJC_IVAR____TtC12MobileSafari12SFBadgeLabel_label;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v42.receiver = v0;
  v42.super_class = type metadata accessor for SFBadgeLabel();
  v2 = objc_msgSendSuper2(&v42, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v3 = objc_opt_self();
  v4 = v2;
  v5 = sub_18BC20B98();
  v6 = [v3 sf:v5 colorNamed:?];

  [v4 setBackgroundColor_];
  v7 = OBJC_IVAR____TtC12MobileSafari12SFBadgeLabel_label;
  [*&v4[OBJC_IVAR____TtC12MobileSafari12SFBadgeLabel_label] setAdjustsFontForContentSizeCategory_];
  v8 = *&v4[v7];
  v9 = objc_opt_self();
  v10 = *MEMORY[0x1E69DDD28];
  v11 = v8;
  v12 = [v9 preferredFontForTextStyle_];
  [v11 setFont_];

  v13 = *&v4[v7];
  v14 = sub_18BC20B98();

  [v13 setText_];

  [*&v4[v7] setTextAlignment_];
  [*&v4[v7] setTranslatesAutoresizingMaskIntoConstraints_];
  v15 = *&v4[v7];
  type metadata accessor for UILayoutPriority(0);
  sub_18BA49778();
  v16 = v15;
  sub_18BC1F388();
  LODWORD(v17) = v41;
  [v16 setContentHuggingPriority:0 forAxis:v17];

  v18 = *&v4[v7];
  sub_18BC1F388();
  LODWORD(v19) = v41;
  [v18 setContentCompressionResistancePriority:1 forAxis:v19];

  [v4 addSubview_];
  v40 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_18BC41E50;
  v21 = [*&v4[v7] leadingAnchor];
  v22 = [v4 leadingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:6.0];

  *(v20 + 32) = v23;
  v24 = [*&v4[v7] trailingAnchor];
  v25 = [v4 trailingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:-6.0];

  *(v20 + 40) = v26;
  v27 = [*&v4[v7] topAnchor];
  v28 = [v4 topAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:6.0];

  sub_18BC1F388();
  LODWORD(v30) = v41;
  v31 = [v29 sf:v30 withPriority:?];

  *(v20 + 48) = v31;
  v32 = [*&v4[v7] centerYAnchor];
  v33 = [v4 centerYAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v20 + 56) = v34;
  v35 = [v4 widthAnchor];
  v36 = [v4 heightAnchor];

  v37 = [v35 constraintGreaterThanOrEqualToAnchor_];
  *(v20 + 64) = v37;
  sub_18BA497D0();
  v38 = sub_18BC20D88();

  [v40 activateConstraints_];

  return v4;
}

id sub_18BA49710()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFBadgeLabel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_18BA49778()
{
  result = qword_1EA9D6B30;
  if (!qword_1EA9D6B30)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6B30);
  }

  return result;
}

unint64_t sub_18BA497D0()
{
  result = qword_1EA9D4700;
  if (!qword_1EA9D4700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9D4700);
  }

  return result;
}

void sub_18BA4981C()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    v2 = sub_18BC219A8();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x18CFFD010](v3, v1);
      }

      else
      {
        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      ++v3;
      *&v4[OBJC_IVAR___SFTabThumbnailView_contentScale] = 0x3FF0000000000000;
      CGAffineTransformMakeScale(&v13, 1.0, 1.0);
      a = v13.a;
      b = v13.b;
      c = v13.c;
      d = v13.d;
      tx = v13.tx;
      ty = v13.ty;
      [*&v5[OBJC_IVAR___SFTabThumbnailView_shadowView] setTransform_];
      v12 = *&v5[OBJC_IVAR___SFTabThumbnailView_contentView];
      v13.a = a;
      v13.b = b;
      v13.c = c;
      v13.d = d;
      v13.tx = tx;
      v13.ty = ty;
      [v12 setTransform_];
    }

    while (v2 != v3);
  }
}

uint64_t sub_18BA49974()
{

  return swift_deallocClassInstance();
}

uint64_t sub_18BA499D4(void *a1)
{
  *(v1 + 16) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 40) = MEMORY[0x1E69E7CC0];
  *(v1 + 48) = 1;
  *(v1 + 56) = v3;
  *(v1 + 64) = 1;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 1;
  swift_weakInit();
  *(v1 + 104) = 0;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;

  *(v1 + 24) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_18BC3E3E0;
  *(v5 + 32) = a1;
  *(v1 + 32) = v5;
  v6 = a1;
  return v1;
}

uint64_t sub_18BA49A80(void *a1, void *a2)
{
  *(v2 + 16) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v2 + 40) = MEMORY[0x1E69E7CC0];
  *(v2 + 48) = 1;
  *(v2 + 56) = v5;
  *(v2 + 64) = 1;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 1;
  swift_weakInit();
  *(v2 + 104) = 0;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  v6 = *(v2 + 16);
  *(v2 + 16) = a1;
  v7 = a1;

  *(v2 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_18BC41E60;
  *(v8 + 32) = v7;
  *(v8 + 40) = a2;
  *(v2 + 32) = v8;
  v9 = a2;
  return v2;
}

uint64_t sub_18BA49B40(void *a1)
{
  v2 = v1[2];
  v1[2] = a1;
  v3 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18BC41E60;
  v5 = v1[3];
  *(v4 + 32) = v3;
  *(v4 + 40) = v5;
  v1[4] = v4;
  v6 = v3;
  v7 = v5;

  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = v6;
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_18BA4C8B0;
  *(v10 + 24) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_18B9D53AC;
  *(v11 + 24) = v10;
  v16[4] = sub_18B9D53B0;
  v16[5] = v11;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_18B7E3BF4;
  v16[3] = &block_descriptor_120;
  v12 = _Block_copy(v16);
  v13 = v6;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v9 performWithoutAnimation_];
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18BA49D4C(uint64_t a1, char *a2)
{
  v4 = *(a1 + 24);
  sub_18BA4A4C0(v4, a2, 2);

  v5 = *(a1 + 24);
  v6 = *&v5[OBJC_IVAR___SFTabThumbnailView_controlsContainerView];
  v7 = v5;
  v8 = [v6 layer];
  v9 = [v8 presentationLayer];
  if (v9)
  {
    v10 = v9;

    v8 = v10;
  }

  [v8 opacity];
  v12 = v11;

  v13 = *&a2[OBJC_IVAR___SFTabThumbnailView_controlsVisibility];
  *&a2[OBJC_IVAR___SFTabThumbnailView_controlsVisibility] = v12;
  if (v13 != v12)
  {
    sub_18BA15D30();
  }

  v14 = *&a2[OBJC_IVAR___SFTabThumbnailView_controlsContainerView];
  v15 = sub_18B7DE654();
  [v15 value];
  v17 = v16;

  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  *(v18 + 24) = v17;
  v19 = objc_opt_self();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_18B7EA1B8;
  *(v20 + 24) = v18;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_18B9D53AC;
  *(v21 + 24) = v20;
  v25[4] = sub_18B9D53B0;
  v25[5] = v21;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 1107296256;
  v25[2] = sub_18B7E3BF4;
  v25[3] = &block_descriptor_134;
  v22 = _Block_copy(v25);
  v23 = v14;
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v19 performWithoutAnimation_];
  _Block_release(v22);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18BA49FE0()
{
  sub_18BA4A758();

  swift_weakDestroy();

  return v0;
}

uint64_t sub_18BA4A04C()
{
  sub_18BA49FE0();

  return swift_deallocClassInstance();
}

uint64_t sub_18BA4A080(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 16))
  {
    v4 = *(v1 + 136);
    if (v4)
    {
      v5 = *(v4 + 16);
      sub_18BC1E1A8();
      v6 = [v5 layer];
      v7 = sub_18BC20BD8();
      sub_18BAE35D8(v7, v8);

      v9 = *(v2 + 136);
      if (v9)
      {
        *(v9 + 41) = 1;
      }
    }

    [*(v2 + 24) setHidden_];
  }

  v10 = objc_opt_self();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = sub_18BA4C8A8;
  v11[4] = v2;
  v19 = sub_18B7E767C;
  v20 = v11;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_18B7B0DB0;
  v18 = &block_descriptor_103;
  v12 = _Block_copy(&v15);
  swift_retain_n();
  sub_18BC1E1A8();

  v19 = CGRectMake;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_18B8043A0;
  v18 = &block_descriptor_106;
  v13 = _Block_copy(&v15);

  [v10 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v13);
  _Block_release(v12);
}

uint64_t sub_18BA4A2A8(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 >> 62)
  {
    result = sub_18BC219A8();
    v2 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return result;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    sub_18BC1E3F8();
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x18CFFD010](i, v1);
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      v5 = v4;
      [v4 setAlpha_];
    }
  }

  return result;
}

uint64_t sub_18BA4A390(void *a1, char a2)
{
  type metadata accessor for TabThumbnailView();
  result = swift_dynamicCastClass();
  if (result)
  {
    v6 = result;
    v7 = *(v2 + 32);
    if (v7 >> 62)
    {
      result = sub_18BC219A8();
      v8 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v8)
      {
        return result;
      }
    }

    if (v8 < 1)
    {
      __break(1u);
    }

    else
    {
      v9 = a1;
      sub_18BC1E3F8();
      for (i = 0; i != v8; ++i)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x18CFFD010](i, v7);
        }

        else
        {
          v11 = *(v7 + 8 * i + 32);
        }

        v12 = v11;
        sub_18BA4A4C0(v6, v11, a2);
      }
    }
  }

  return result;
}

id sub_18BA4A4C0(char *a1, char *a2, char a3)
{
  v4 = v3;
  if (qword_1EA9D2288 != -1)
  {
    swift_once();
  }

  v8 = sub_18BC1F2C8();
  __swift_project_value_buffer(v8, qword_1EA9F7E50);
  v9 = sub_18BC1F2A8();
  v10 = sub_18BC21228();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_18B7AC000, v9, v10, "Moving match-move view over reference", v11, 2u);
    MEMORY[0x18CFFEEE0](v11, -1, -1);
  }

  [a1 alpha];
  [a2 setAlpha_];
  v12 = *&a1[OBJC_IVAR___SFTabThumbnailView_configuration + 48];
  v35[2] = *&a1[OBJC_IVAR___SFTabThumbnailView_configuration + 32];
  v35[3] = v12;
  v35[4] = *&a1[OBJC_IVAR___SFTabThumbnailView_configuration + 64];
  v36 = *&a1[OBJC_IVAR___SFTabThumbnailView_configuration + 80];
  v13 = *&a1[OBJC_IVAR___SFTabThumbnailView_configuration + 16];
  v35[0] = *&a1[OBJC_IVAR___SFTabThumbnailView_configuration];
  v35[1] = v13;
  sub_18BA1A650(v35, v33);
  sub_18BA1A548(v35);
  sub_18BA1A688(v35);
  sub_18BB9669C(a1, a3);
  v14 = &a2[OBJC_IVAR___SFTabThumbnailView_metrics];
  v15 = *&a2[OBJC_IVAR___SFTabThumbnailView_metrics + 144];
  v33[8] = *&a2[OBJC_IVAR___SFTabThumbnailView_metrics + 128];
  v33[9] = v15;
  v34 = *&a2[OBJC_IVAR___SFTabThumbnailView_metrics + 160];
  v16 = *&a2[OBJC_IVAR___SFTabThumbnailView_metrics + 80];
  v33[4] = *&a2[OBJC_IVAR___SFTabThumbnailView_metrics + 64];
  v33[5] = v16;
  v17 = *&a2[OBJC_IVAR___SFTabThumbnailView_metrics + 112];
  v33[6] = *&a2[OBJC_IVAR___SFTabThumbnailView_metrics + 96];
  v33[7] = v17;
  v18 = *&a2[OBJC_IVAR___SFTabThumbnailView_metrics + 16];
  v33[0] = *&a2[OBJC_IVAR___SFTabThumbnailView_metrics];
  v33[1] = v18;
  v19 = *&a2[OBJC_IVAR___SFTabThumbnailView_metrics + 48];
  v33[2] = *&a2[OBJC_IVAR___SFTabThumbnailView_metrics + 32];
  v33[3] = v19;
  memmove(&a2[OBJC_IVAR___SFTabThumbnailView_metrics], &a1[OBJC_IVAR___SFTabThumbnailView_metrics], 0xA8uLL);
  v20 = *(v14 + 9);
  v31[8] = *(v14 + 8);
  v31[9] = v20;
  v32 = *(v14 + 20);
  v21 = *(v14 + 5);
  v31[4] = *(v14 + 4);
  v31[5] = v21;
  v22 = *(v14 + 7);
  v31[6] = *(v14 + 6);
  v31[7] = v22;
  v23 = *(v14 + 1);
  v31[0] = *v14;
  v31[1] = v23;
  v24 = *(v14 + 3);
  v31[2] = *(v14 + 2);
  v31[3] = v24;
  if (!sub_18BA1A2E4(v31, v33))
  {
    sub_18BA18DB4();
  }

  v25 = *(v4 + 88);
  v26 = &a2[OBJC_IVAR___SFTabThumbnailView_restingSize];
  *v26 = *(v4 + 72);
  v26[16] = v25;
  [a2 setNeedsLayout];
  v27 = *&a1[OBJC_IVAR___SFTabThumbnailView_closeHandler];
  v28 = *&a1[OBJC_IVAR___SFTabThumbnailView_closeHandler + 8];
  v29 = &a2[OBJC_IVAR___SFTabThumbnailView_closeHandler];
  *v29 = v27;
  *(v29 + 1) = v28;
  swift_retain_n();

  sub_18BA15E70();

  return [a2 layoutIfNeeded];
}

void sub_18BA4A758()
{
  if (*(v0 + 64) == 1)
  {
    swift_beginAccess();
    v1 = *(v0 + 56);
    v2 = *(v1 + 16);
    if (v2)
    {
      sub_18BC1E3F8();
      v3 = v1 + 40;
      do
      {
        v4 = *(v3 - 8);
        v10 = v0;
        sub_18BC1E1A8();
        v4(&v10);

        v3 += 16;
        --v2;
      }

      while (v2);
    }

    *(v0 + 64) = 0;
    v5 = *(v0 + 32);
    if (v5 >> 62)
    {
      v6 = sub_18BC219A8();
      if (!v6)
      {
        return;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        return;
      }
    }

    if (v6 < 1)
    {
      __break(1u);
    }

    else
    {
      sub_18BC1E3F8();
      for (i = 0; i != v6; ++i)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x18CFFD010](i, v5);
        }

        else
        {
          v8 = *(v5 + 8 * i + 32);
        }

        v9 = v8;
        [v8 removeFromSuperview];
      }
    }
  }
}

uint64_t sub_18BA4A8A0(uint64_t result, double a2)
{
  v3 = *(result + 32);
  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (1)
    {
      result = objc_opt_self();
      v13 = result;
      if (v4 < 1)
      {
        break;
      }

      sub_18BC1E3F8();
      v5 = 0;
      while (1)
      {
        v6 = (v3 & 0xC000000000000001) != 0 ? MEMORY[0x18CFFD010](v5, v3) : *(v3 + 8 * v5 + 32);
        v7 = v6;
        v8 = swift_allocObject();
        *(v8 + 16) = v7;
        *(v8 + 24) = a2;
        v9 = swift_allocObject();
        *(v9 + 16) = sub_18B7EA1B8;
        *(v9 + 24) = v8;
        v10 = swift_allocObject();
        *(v10 + 16) = sub_18B9D53AC;
        *(v10 + 24) = v9;
        aBlock[4] = sub_18B9D53B0;
        aBlock[5] = v10;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_18B7E3BF4;
        aBlock[3] = &block_descriptor_76_0;
        v11 = _Block_copy(aBlock);
        v12 = v7;
        sub_18BC1E1A8();
        sub_18BC1E1A8();

        [v13 performWithoutAnimation_];

        _Block_release(v11);
        LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

        if (v8)
        {
          break;
        }

        if (v4 == ++v5)
        {
        }
      }

      __break(1u);
LABEL_13:
      result = sub_18BC219A8();
      v4 = result;
      if (!result)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_18BA4AAF8(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = a2;
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = sub_18BA4C89C;
  v8[4] = v6;
  v16 = sub_18B7D80AC;
  v17 = v8;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_18B7B0DB0;
  v15 = &block_descriptor_93;
  v9 = _Block_copy(&v12);
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  v16 = CGRectMake;
  v17 = 0;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_18B8043A0;
  v15 = &block_descriptor_96;
  v10 = _Block_copy(&v12);

  [v7 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v10);
  _Block_release(v9);
}

uint64_t sub_18BA4ACC0(uint64_t result, double a2)
{
  v3 = *(result + 32);
  if (v3 >> 62)
  {
    result = sub_18BC219A8();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    sub_18BC1E3F8();
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x18CFFD010](v5, v3);
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = sub_18B7DE654();
      [v8 setValue_];
    }

    while (v4 != v5);
  }

  return result;
}

uint64_t sub_18BA4ADD0()
{
  v1 = *(v0 + 32);
  if (v1 >> 62)
  {
    result = sub_18BC219A8();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v47 = result - 1;
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v45 = v1 & 0xC000000000000001;
    sub_18BC1E3F8();
    v3 = 0;
    v4 = &selRef_setContentMode_;
    v46 = v1;
    if ((v1 & 0xC000000000000001) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    for (i = MEMORY[0x18CFFD010](v3, v1); ; i = *(v1 + 8 * v3 + 32))
    {
      v6 = i;
      v7 = OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleContainerView;
      v8 = v4;
      [*&i[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleContainerView] v4[108]];
      v9 = &v6[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration];
      v70[0] = *&v6[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration];
      v11 = *&v6[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 32];
      v10 = *&v6[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 48];
      v12 = *&v6[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 16];
      *&v71[9] = *&v6[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 57];
      v70[2] = v11;
      *v71 = v10;
      v70[1] = v12;
      v13 = *&v70[0];
      v14 = *&v6[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 24];
      v15 = *&v6[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 56];
      v67 = *&v6[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 40];
      v68 = v15;
      v69 = v6[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 72];
      v65 = *&v6[OBJC_IVAR___SFTabThumbnailView_borrowedCapsuleViewRegistration + 8];
      v66 = v14;
      if (*&v70[0])
      {
        *v64 = *&v70[0];
        *&v64[24] = v66;
        *&v64[40] = v67;
        *&v64[56] = v68;
        v64[72] = v69;
        *&v64[8] = v65;
        sub_18B7CA054(v70, v62, &unk_1EA9D92A0);
        v16 = v13;
        sub_18B988BAC(v64, &unk_1EA9D92A0);
        v17 = [v16 layer];
        v18 = sub_18BC20B98();
        [v17 removeAnimationForKey_];
      }

      else
      {
        *v64 = 0;
        *&v64[24] = v66;
        *&v64[40] = v67;
        *&v64[56] = v68;
        v64[72] = v69;
        *&v64[8] = v65;
        sub_18B7CA054(v70, v62, &unk_1EA9D92A0);
        sub_18B988BAC(v64, &unk_1EA9D92A0);
      }

      v62[0] = *v9;
      v19 = *(v9 + 1);
      v20 = *(v9 + 2);
      v21 = *(v9 + 3);
      *(v63 + 9) = *(v9 + 57);
      v62[2] = v20;
      v63[0] = v21;
      v62[1] = v19;
      *(v9 + 2) = 0u;
      *(v9 + 3) = 0u;
      *(v9 + 57) = 0u;
      *v9 = 0u;
      *(v9 + 1) = 0u;
      sub_18B988BAC(v62, &unk_1EA9D92A0);
      *v64 = *v9;
      v23 = *(v9 + 2);
      v22 = *(v9 + 3);
      v24 = *(v9 + 1);
      *&v64[57] = *(v9 + 57);
      *&v64[32] = v23;
      *&v64[48] = v22;
      *&v64[16] = v24;
      v25 = *v64;
      if (*v64)
      {
        if (v64[72])
        {
          v26 = *&v6[v7];
          v27 = *v64;
          [v26 v8 + 1656];
          [*&v6[v7] addSubview_];
          v28 = *v64;
        }

        else
        {
          v28 = *v64;
        }

        v29 = *&v6[OBJC_IVAR___SFTabThumbnailView_capsuleMatchMoveReferenceView];
        v30 = v28;
        v31 = [v25 layer];
        v32 = [v29 layer];
        sub_18BAE31BC(v32);

        sub_18B988BAC(v64, &unk_1EA9D92A0);
        [v25 v8 + 1656];
        v33 = sub_18BA188F4();
        [v33 presentationValue];
        v35 = v34;

        v36 = _SFUninterpolate(v35, 0.2, 0.9);
        v60[0] = *v9;
        v37 = *(v9 + 1);
        v38 = *(v9 + 2);
        v39 = *(v9 + 3);
        *(v61 + 9) = *(v9 + 57);
        v60[2] = v38;
        v61[0] = v39;
        v60[1] = v37;
        v40 = *&v60[0];
        v41 = *(v9 + 24);
        v42 = *(v9 + 56);
        v57 = *(v9 + 40);
        v58 = v42;
        v59 = v9[72];
        v55 = *(v9 + 8);
        v56 = v41;
        v4 = v8;
        if (*&v60[0])
        {
          v51 = v56;
          v52 = v57;
          v53 = v58;
          if (v36 <= 0.0)
          {
            v36 = 0.0;
          }

          v43 = v36 <= 1.0 ? v36 : 1.0;
          v49 = *&v60[0];
          v54 = v59;
          v50 = v55;
          sub_18B7CA054(v60, v48, &unk_1EA9D92A0);
          v44 = v40;
          sub_18B988BAC(&v49, &unk_1EA9D92A0);
          [v44 setAlpha_];
        }

        else
        {
          v49 = 0;
          v51 = v56;
          v52 = v57;
          v53 = v58;
          v54 = v59;
          v50 = v55;
          sub_18B7CA054(v60, v48, &unk_1EA9D92A0);
          sub_18B988BAC(&v49, &unk_1EA9D92A0);
        }

        v1 = v46;
        sub_18BA18614();

        sub_18B988BAC(v64, &unk_1EA9D92A0);
      }

      else
      {

        v1 = v46;
        v4 = v8;
      }

      if (v47 == v3)
      {
        break;
      }

      ++v3;
      if (v45)
      {
        goto LABEL_5;
      }

LABEL_6:
      ;
    }
  }

  return result;
}

uint64_t sub_18BA4B310(uint64_t result, double a2)
{
  v3 = *(result + 32);
  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (1)
    {
      result = objc_opt_self();
      v13 = result;
      if (v4 < 1)
      {
        break;
      }

      sub_18BC1E3F8();
      v5 = 0;
      while (1)
      {
        v6 = (v3 & 0xC000000000000001) != 0 ? MEMORY[0x18CFFD010](v5, v3) : *(v3 + 8 * v5 + 32);
        v7 = v6;
        v8 = swift_allocObject();
        *(v8 + 16) = v7;
        *(v8 + 24) = a2;
        v9 = swift_allocObject();
        *(v9 + 16) = sub_18BA4C874;
        *(v9 + 24) = v8;
        v10 = swift_allocObject();
        *(v10 + 16) = sub_18B7D1EC4;
        *(v10 + 24) = v9;
        aBlock[4] = sub_18B7D1E94;
        aBlock[5] = v10;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_18B7E3BF4;
        aBlock[3] = &block_descriptor_16;
        v11 = _Block_copy(aBlock);
        v12 = v7;
        sub_18BC1E1A8();
        sub_18BC1E1A8();

        [v13 performWithoutAnimation_];

        _Block_release(v11);
        LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

        if (v8)
        {
          break;
        }

        if (v4 == ++v5)
        {
        }
      }

      __break(1u);
LABEL_13:
      result = sub_18BC219A8();
      v4 = result;
      if (!result)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_18BA4B568()
{
  v1 = *(v0 + 32);
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }

    goto LABEL_3;
  }

  v2 = sub_18BC219A8();
  if (v2)
  {
LABEL_3:
    if (v2 < 1)
    {
      __break(1u);
      return;
    }

    sub_18BC1E3F8();
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x18CFFD010](v3, v1);
      }

      else
      {
        v9 = *(v1 + 8 * v3 + 32);
      }

      v8 = v9;
      v10 = OBJC_IVAR___SFTabThumbnailView_iconRegistration;
      *&v9[OBJC_IVAR___SFTabThumbnailView_iconRegistration] = 0;

      v11 = *&v8[OBJC_IVAR___SFTabThumbnailView_pinnedTitleView];
      if (!v11)
      {
        goto LABEL_8;
      }

      v12 = *&v8[v10];
      v13 = OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_iconRegistration;
      v14 = *&v11[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_iconRegistration];
      if (v14)
      {
        swift_beginAccess();
        *(v14 + 24) = CGRectMake;
        *(v14 + 32) = 0;
        sub_18BC1E1A8();
        sub_18BC1E1A8();
        v15 = v11;
      }

      else
      {
        sub_18BC1E1A8();
        v16 = v11;
      }

      *&v11[v13] = v12;
      sub_18BC1E1A8();

      v17 = *&v11[v13];
      if (v17 && (v18 = swift_allocObject(), swift_unknownObjectWeakInit(), swift_beginAccess(), *(v17 + 24) = sub_18BA4C894, *(v17 + 32) = v18, , (v19 = *&v11[v13]) != 0))
      {
        swift_beginAccess();
        v20 = *(v19 + 16);
        v4 = *&v11[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_imageView];
        if (v20)
        {
          v6 = v20;
          v7 = v6;
          goto LABEL_7;
        }
      }

      else
      {
        v4 = *&v11[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_imageView];
      }

      v5 = sub_18BC20B98();
      v6 = [objc_opt_self() systemImageNamed_];

      v7 = 0;
LABEL_7:
      [v4 setImage_];

      v8 = v6;
LABEL_8:
      ++v3;

      if (v2 == v3)
      {

        return;
      }
    }
  }
}

uint64_t sub_18BA4B814(uint64_t a1, uint64_t a2)
{
  v43 = sub_18BC1EC08();
  v5 = *(v43 - 8);
  result = MEMORY[0x1EEE9AC00](v43);
  v42 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 32);
  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return result;
    }

    goto LABEL_3;
  }

  v35 = *(v2 + 32);
  result = sub_18BC219A8();
  v8 = v35;
  v9 = result;
  if (result)
  {
LABEL_3:
    if (v9 < 1)
    {
      __break(1u);
      return result;
    }

    v38 = v8 & 0xC000000000000001;
    v10 = v8;
    sub_18BC1E3F8();
    swift_beginAccess();
    v11 = v10;
    v12 = 0;
    v36 = (v5 + 32);
    v37 = (v5 + 16);
    v44 = a1;
    v40 = v10;
    v41 = a2;
    v39 = v9;
    while (1)
    {
      if (v38)
      {
        v14 = MEMORY[0x18CFFD010](v12, v11);
      }

      else
      {
        v14 = *(v11 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = *(a2 + 64);
      if (!*(v16 + 16))
      {
        goto LABEL_15;
      }

      sub_18BC1E3F8();
      v17 = sub_18B857EE4(a1);
      if ((v18 & 1) == 0)
      {
        break;
      }

      v19 = *(*(v16 + 56) + 8 * v17);
      sub_18BC1E3F8();

      v20 = sub_18BA61718(v19);

      if (!v20)
      {
        goto LABEL_15;
      }

      swift_beginAccess();
      v21 = *(v20 + 16);
      v22 = v21;

LABEL_16:
      v24 = v42;
      v23 = v43;
      (*v37)(v42, a1, v43);
      type metadata accessor for TabIconRegistration(0);
      v25 = swift_allocObject();
      *(v25 + 2) = 0;
      *(v25 + 3) = CGRectMake;
      *(v25 + 4) = 0;
      swift_weakInit();
      swift_beginAccess();
      v26 = *(v25 + 2);
      *(v25 + 2) = v21;
      v27 = v21;

      (*v36)(&v25[OBJC_IVAR____TtC12MobileSafari19TabIconRegistration_id], v24, v23);
      a2 = v41;
      swift_weakAssign();
      sub_18BA62EFC(v25);
      if (v21)
      {
      }

      else
      {
        sub_18BA61EC0(v44);
      }

      v28 = OBJC_IVAR___SFTabThumbnailView_iconRegistration;
      *&v15[OBJC_IVAR___SFTabThumbnailView_iconRegistration] = v25;
      sub_18BC1E1A8();

      v29 = *&v15[OBJC_IVAR___SFTabThumbnailView_pinnedTitleView];
      if (v29)
      {
        v30 = *&v15[v28];
        v31 = OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_iconRegistration;
        v32 = *&v29[OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_iconRegistration];
        if (v32)
        {
          swift_beginAccess();
          *(v32 + 24) = CGRectMake;
          *(v32 + 32) = 0;
          sub_18BC1E1A8();
          sub_18BC1E1A8();
          v33 = v29;
        }

        else
        {
          sub_18BC1E1A8();
          v34 = v29;
        }

        v13 = v39;
        *&v29[v31] = v30;
        sub_18BC1E1A8();

        sub_18BAB6EA4();
      }

      else
      {

        v13 = v39;
      }

      ++v12;
      a1 = v44;
      v11 = v40;
      if (v13 == v12)
      {
      }
    }

LABEL_15:
    v21 = 0;
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_18BA4BC20(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = *(v2 + 24);
  type metadata accessor for ThumbnailAttachedCapsuleVisibilityAnimator();
  v7 = swift_allocObject();
  *(v7 + 32) = 0;
  *(v7 + 16) = a2;
  *(v7 + 24) = v6;
  v8 = qword_1EA9D24E0;
  v9 = v6;
  if (v8 != -1)
  {
    v9 = swift_once();
  }

  v10 = qword_1EA9F83F8;
  v11 = *(v3 + 120);
  if (v11)
  {
    MEMORY[0x1EEE9AC00](v9);
    v19[2] = v11;
    v19[3] = &off_1EFF2C918;
    swift_beginAccess();
    sub_18BC1E1A8();
    result = sub_18BB0B63C(sub_18BA4C8E8, v19);
    v13 = *(*(v3 + 40) + 16);
    if (v13 < result)
    {
      __break(1u);
      return result;
    }

    sub_18BB7A6A0(result, v13);
    swift_endAccess();
    *(v11 + 33) = 1;

    *(v7 + 32) = 1;
  }

  *(v3 + 120) = v7;
  swift_retain_n();

  swift_beginAccess();
  v14 = *(v3 + 40);
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 40) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_18B9B5B34(0, *(v14 + 2) + 1, 1, v14);
    *(v3 + 40) = v14;
  }

  v17 = *(v14 + 2);
  v16 = *(v14 + 3);
  if (v17 >= v16 >> 1)
  {
    v14 = sub_18B9B5B34((v16 > 1), v17 + 1, 1, v14);
  }

  *(v14 + 2) = v17 + 1;
  v18 = &v14[32 * v17];
  *(v18 + 4) = v7;
  *(v18 + 5) = &off_1EFF2C918;
  *(v18 + 6) = v10;
  *(v18 + 7) = a1;
  *(v3 + 40) = v14;
  swift_endAccess();
}

uint64_t sub_18BA4BE70(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = *(v2 + 32);
  type metadata accessor for ThumbnailControlsVisibilityAnimator();
  v7 = swift_allocObject();
  *(v7 + 32) = 0;
  *(v7 + 16) = a2;
  *(v7 + 24) = v6;
  v8 = qword_1EA9D24E0;
  v9 = sub_18BC1E3F8();
  if (v8 != -1)
  {
    v9 = swift_once();
  }

  v10 = qword_1EA9F83F8;
  v11 = *(v3 + 128);
  if (v11)
  {
    MEMORY[0x1EEE9AC00](v9);
    v19[2] = v11;
    v19[3] = &off_1EFF2A9F8;
    swift_beginAccess();
    sub_18BC1E1A8();
    result = sub_18BB0B63C(sub_18BA4C8E8, v19);
    v13 = *(*(v3 + 40) + 16);
    if (v13 < result)
    {
      __break(1u);
      return result;
    }

    sub_18BB7A6A0(result, v13);
    swift_endAccess();
    *(v11 + 33) = 1;

    *(v7 + 32) = 1;
  }

  *(v3 + 128) = v7;
  swift_retain_n();

  swift_beginAccess();
  v14 = *(v3 + 40);
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 40) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_18B9B5B34(0, *(v14 + 2) + 1, 1, v14);
    *(v3 + 40) = v14;
  }

  v17 = *(v14 + 2);
  v16 = *(v14 + 3);
  if (v17 >= v16 >> 1)
  {
    v14 = sub_18B9B5B34((v16 > 1), v17 + 1, 1, v14);
  }

  *(v14 + 2) = v17 + 1;
  v18 = &v14[32 * v17];
  *(v18 + 4) = v7;
  *(v18 + 5) = &off_1EFF2A9F8;
  *(v18 + 6) = v10;
  *(v18 + 7) = a1;
  *(v3 + 40) = v14;
  swift_endAccess();
}

uint64_t sub_18BA4C0C4(uint64_t result, uint64_t a2, double a3)
{
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3;
    v7 = result;
    v9 = *(v3 + 24);
    type metadata accessor for OpacityPairAnimator();
    v10 = swift_allocObject();
    v11 = v10;
    *(v10 + 40) = 0;
    *(v10 + 16) = v4;
    *(v10 + 24) = v9;
    *(v10 + 32) = a3;
    v12 = *(v5 + 136);
    if (v12)
    {
      MEMORY[0x1EEE9AC00](v10);
      v23[2] = v12;
      v23[3] = &off_1EFF2EAF0;
      swift_beginAccess();
      v13 = v4;
      v14 = v9;
      sub_18BC1E1A8();
      result = sub_18BB0B63C(sub_18BA4C880, v23);
      v15 = *(*(v5 + 40) + 16);
      if (v15 < result)
      {
        __break(1u);
        return result;
      }

      sub_18BB7A6A0(result, v15);
      swift_endAccess();
      *(v12 + 41) = 1;

      *(v11 + 40) = 1;
    }

    else
    {
      v16 = v4;
      v17 = v9;
    }

    *(v5 + 136) = v11;
    swift_retain_n();

    swift_beginAccess();
    v18 = *(v5 + 40);
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 40) = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_18B9B5B34(0, *(v18 + 2) + 1, 1, v18);
      *(v5 + 40) = v18;
    }

    v21 = *(v18 + 2);
    v20 = *(v18 + 3);
    if (v21 >= v20 >> 1)
    {
      v18 = sub_18B9B5B34((v20 > 1), v21 + 1, 1, v18);
    }

    *(v18 + 2) = v21 + 1;
    v22 = &v18[32 * v21];
    *(v22 + 4) = v11;
    *(v22 + 5) = &off_1EFF2EAF0;
    *(v22 + 6) = a2;
    *(v22 + 7) = v7;
    *(v5 + 40) = v18;
    swift_endAccess();
  }

  return result;
}

uint64_t sub_18BA4C310(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 32);
  if (v3 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_18BC219A8())
  {
    sub_18BC1E3F8();
    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x18CFFD010](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = *&v6[OBJC_IVAR___SFTabThumbnailView_snapshotRegistration];
      sub_18BC1E1A8();

      if (v9)
      {
        sub_18BA7832C(v9);
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

LABEL_13:

  v10 = *(v2 + 32);
  if (!(v10 >> 62))
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

    goto LABEL_15;
  }

  result = sub_18BC219A8();
  if (result)
  {
LABEL_15:
    v40 = result - 1;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v39 = v10 & 0xC000000000000001;
    sub_18BC1E3F8();
    v12 = 0;
    v13 = a1;
    v38 = v10;
    while (1)
    {
      if (v39)
      {
        v14 = MEMORY[0x18CFFD010](v12, v10);
      }

      else
      {
        v14 = *(v10 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = sub_18B856BBC(v13);
      if (qword_1EA9D21A0 != -1)
      {
        swift_once();
      }

      v17 = *&qword_1EA9F79C0;
      v18 = qword_1EA9F79C8;
      v19 = v16 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibility;
      swift_beginAccess();
      v20 = *v19;
      v21 = *(v19 + 8);
      *v19 = v17;
      *(v19 + 8) = v18;
      if (v17 != v20 || v18 != v21)
      {
        v23 = *(v16 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibilityDidChangeHandler);
        v24 = sub_18BC1E1A8();
        v23(v24);
      }

      v25 = OBJC_IVAR___SFTabThumbnailView_snapshotRegistration;
      v26 = *&v15[OBJC_IVAR___SFTabThumbnailView_snapshotRegistration];
      if (v26)
      {
        swift_beginAccess();
        *(v26 + 80) = CGRectMake;
        *(v26 + 88) = 0;
      }

      *&v15[v25] = v16;
      sub_18BC1E1A8();

      v27 = *&v15[v25];
      if (v27 && (v28 = swift_allocObject(), swift_unknownObjectWeakInit(), swift_beginAccess(), *(v27 + 80) = sub_18B9D4DC8, *(v27 + 88) = v28, , (v29 = *&v15[v25]) != 0))
      {
        swift_beginAccess();
        v30 = v29[1];
        v31 = v29[2];
        v32 = v29[4];
        v42[2] = v29[3];
        v42[3] = v32;
        v42[0] = v30;
        v42[1] = v31;
        v33 = *&v15[OBJC_IVAR___SFTabThumbnailView_snapshotImageView];
        v34 = *(&v30 + 1);
        if (*(&v30 + 1))
        {
          sub_18BC1E1A8();
        }

        else
        {
          sub_18BC1E1A8();
          v35 = [v15 window];
          if (v35)
          {

            v36 = sub_18BC20B98();
            v34 = [objc_opt_self() systemImageNamed_];

            v13 = a1;
          }

          else
          {
            v34 = 0;
          }
        }

        sub_18B7CA054(v42, v41, &qword_1EA9D92C0);
        sub_18B7CA054(v42, v41, &qword_1EA9D92C0);
        [v33 setImage_];

        [v15 setNeedsLayout];

        sub_18B988BAC(v42, &qword_1EA9D92C0);

        if (v40 == v12)
        {
        }

        v10 = v38;
      }

      else
      {
        [*&v15[OBJC_IVAR___SFTabThumbnailView_snapshotImageView] setImage_];

        if (v40 == v12)
        {
        }
      }

      ++v12;
    }
  }

  return result;
}

uint64_t sub_18BA4C81C()
{
  swift_weakAssign();
}

id SFBrowsingAssistantCardItem.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

{
  v1 = &v0[OBJC_IVAR___SFBrowsingAssistantCardItem_bodyText];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR___SFBrowsingAssistantCardItem_disclaimerText];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v0[OBJC_IVAR___SFBrowsingAssistantCardItem_contextMenuInteraction] = 0;
  *&v0[OBJC_IVAR___SFBrowsingAssistantCardItem_customBodyView] = 0;
  *&v0[OBJC_IVAR___SFBrowsingAssistantCardItem_primaryAction] = 0;
  *&v0[OBJC_IVAR___SFBrowsingAssistantCardItem_readerContext] = 0;
  *&v0[OBJC_IVAR___SFBrowsingAssistantCardItem_secondaryAction] = 0;
  v3 = &v0[OBJC_IVAR___SFBrowsingAssistantCardItem_selectionHandler];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR___SFBrowsingAssistantCardItem_title];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v0[OBJC_IVAR___SFBrowsingAssistantCardItem_type] = 1;
  swift_unknownObjectWeakInit();
  v6.receiver = v0;
  v6.super_class = SFBrowsingAssistantCardItem;
  return objc_msgSendSuper2(&v6, sel_init);
}

id static SFBrowsingAssistantCardItem.entityCard(searchResult:webpageIdentifier:componentIdentifier:actionHandler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_allocWithZone(SFBrowsingAssistantCardItem) init];
  [v12 setType_];
  v13 = sub_18BA4CAC8(a1, a5, a6, a2, a3, a4);
  [v12 setCustomBodyView_];

  return v12;
}

id sub_18BA4CAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v10 = [objc_allocWithZone(SFBrowsingAssistantSearchResultView) initWithSearchResult_];
  v13[4] = a2;
  v13[5] = a3;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_18B8370CC;
  v13[3] = &block_descriptor_88;
  v11 = _Block_copy(v13);
  sub_18BC1E1A8();

  [v10 setActionHandler_];
  _Block_release(v11);
  if (a5)
  {
    a5 = sub_18BC20B98();
  }

  [v10 setWebpageIdentifier_];

  [v10 setComponentIdentifier_];
  return v10;
}

id static SFBrowsingAssistantCardItem.listenToPageCard()()
{
  v0 = [objc_allocWithZone(SFBrowsingAssistantCardItem) init];
  [v0 setType_];
  return v0;
}

id static SFBrowsingAssistantCardItem.readerCard(readerContext:title:summary:disclaimer:contextMenuInteraction:showReaderHandler:listenToPageHandler:listenToPageActionState:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(), uint64_t a12, uint64_t a13)
{
  v18 = [objc_allocWithZone(SFBrowsingAssistantCardItem) init];
  [v18 setType_];
  [v18 setReaderContext_];
  if (a3)
  {
    a3 = sub_18BC20B98();
  }

  [v18 setTitle_];

  if (a5)
  {
    v19 = sub_18BC20B98();
  }

  else
  {
    v19 = 0;
  }

  [v18 setBodyText_];

  if (a7)
  {
    a7 = sub_18BC20B98();
  }

  [v18 setDisclaimerText_];

  v20 = swift_allocObject();
  *(v20 + 16) = a9;
  *(v20 + 24) = a10;
  v31 = sub_18BA4EE54;
  v32 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_18B8370CC;
  v30 = &block_descriptor_17;
  v21 = _Block_copy(&aBlock);
  sub_18BC1E1A8();

  [v18 setSelectionHandler_];
  _Block_release(v21);
  [v18 setContextMenuInteraction_];
  sub_18B7B0AC0(0, &qword_1EA9D52D0);
  v22 = swift_allocObject();
  *(v22 + 16) = a9;
  *(v22 + 24) = a10;
  sub_18BC1E1A8();
  v23 = sub_18BC215E8();
  [v18 setPrimaryAction_];

  if (a11)
  {
    v31 = a11;
    v32 = a12;
    aBlock = MEMORY[0x1E69E9820];
    v28 = 1107296256;
    v29 = sub_18B7B0DB0;
    v30 = &block_descriptor_6;
    v24 = _Block_copy(&aBlock);
    sub_18BC1E1A8();
  }

  else
  {
    v24 = 0;
  }

  v25 = [swift_getObjCClassFromMetadata() listenToPageActionForHandler:v24 state:a13];
  _Block_release(v24);
  [v18 setSecondaryAction_];

  return v18;
}

id static SFBrowsingAssistantCardItem.readerOptionsCard(readerContext:dismissReaderHandler:listenToPageHandler:listenToPageActionState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_allocWithZone(SFBrowsingAssistantCardItem) init];
  [v12 setType_];
  [v12 setReaderContext_];
  sub_18B7B0AC0(0, &qword_1EA9D52D0);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  sub_18BC1E1A8();
  v14 = sub_18BC215E8();
  [v12 setPrimaryAction_];

  if (a4)
  {
    aBlock[4] = a4;
    aBlock[5] = a5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18B7B0DB0;
    aBlock[3] = &block_descriptor_12_0;
    v15 = _Block_copy(aBlock);
    sub_18BC1E1A8();
  }

  else
  {
    v15 = 0;
  }

  v16 = [swift_getObjCClassFromMetadata() listenToPageActionForHandler:v15 state:a6];
  _Block_release(v15);
  [v12 setSecondaryAction_];

  return v12;
}

void *SFBrowsingAssistantCardItem.contextMenuInteraction.getter()
{
  v1 = OBJC_IVAR___SFBrowsingAssistantCardItem_contextMenuInteraction;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SFBrowsingAssistantCardItem.contextMenuInteraction.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SFBrowsingAssistantCardItem_contextMenuInteraction;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *SFBrowsingAssistantCardItem.customBodyView.getter()
{
  v1 = OBJC_IVAR___SFBrowsingAssistantCardItem_customBodyView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SFBrowsingAssistantCardItem.customBodyView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SFBrowsingAssistantCardItem_customBodyView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *SFBrowsingAssistantCardItem.primaryAction.getter()
{
  v1 = OBJC_IVAR___SFBrowsingAssistantCardItem_primaryAction;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SFBrowsingAssistantCardItem.primaryAction.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SFBrowsingAssistantCardItem_primaryAction;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t SFBrowsingAssistantCardItem.readerContext.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SFBrowsingAssistantCardItem_readerContext;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

void *SFBrowsingAssistantCardItem.secondaryAction.getter()
{
  v1 = OBJC_IVAR___SFBrowsingAssistantCardItem_secondaryAction;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_18BA4DC3C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void SFBrowsingAssistantCardItem.secondaryAction.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SFBrowsingAssistantCardItem_secondaryAction;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t SFBrowsingAssistantCardItem.selectionHandler.getter()
{
  v1 = (v0 + OBJC_IVAR___SFBrowsingAssistantCardItem_selectionHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_18B824D48(*v1);
  return v2;
}

uint64_t SFBrowsingAssistantCardItem.selectionHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___SFBrowsingAssistantCardItem_selectionHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_18B7B171C(v6);
}

void *sub_18BA4DF48@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 selectionHandler];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    result = swift_allocObject();
    result[2] = sub_18B83729C;
    result[3] = v5;
    v6 = sub_18B9B8844;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  a2[1] = result;
  return result;
}

void sub_18BA4DFF0(uint64_t a1, void **a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(a1 + 8);
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = *a2;
    v7[4] = sub_18B9B880C;
    v7[5] = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_18B8370CC;
    v7[3] = &block_descriptor_75;
    v3 = _Block_copy(v7);
    sub_18BC1E1A8();
  }

  else
  {
    v6 = *a2;
  }

  [v6 setSelectionHandler_];
  _Block_release(v3);
}

id sub_18BA4E0F0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  if (*(v3 + 8))
  {
    sub_18BC1E3F8();
    v4 = sub_18BC20B98();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_18BA4E184(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  sub_18BC1E3F8();
  return v3;
}

uint64_t sub_18BA4E1E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_18BC20BD8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_18BA4E26C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

void sub_18BA4E2C8(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_18BC20BD8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_18BA4E32C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (*(a1 + 8))
  {
    v7 = sub_18BC20B98();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

uint64_t SFBrowsingAssistantCardItem.type.getter()
{
  v1 = OBJC_IVAR___SFBrowsingAssistantCardItem_type;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SFBrowsingAssistantCardItem.type.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SFBrowsingAssistantCardItem_type;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SFBrowsingAssistantCardItem.observer.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall SFBrowsingAssistantCardItem.notifyObserverCardDidUpdate()()
{
  v1 = [v0 observer];
  if (v1)
  {
    [v1 cardItemDidUpdate_];

    swift_unknownObjectRelease();
  }
}

id _sSo27SFBrowsingAssistantCardItemC12MobileSafariE07consentC013notNowHandler08continueJ0AByyc_yyctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(SFBrowsingAssistantCardItem) init];
  [v8 setType_];
  sub_18B7B0AC0(0, &qword_1EA9D52D0);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  sub_18BC1E1A8();
  v10 = sub_18BC215E8();
  [v8 setPrimaryAction_];

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  sub_18BC1E1A8();
  v12 = sub_18BC215E8();
  [v8 setSecondaryAction_];

  return v8;
}

id _sSo27SFBrowsingAssistantCardItemC12MobileSafariE18listenToPageAction10forHandler5stateSo8UIActionCSgyycSg_So08SFReaderc6ListenhiJ5StateVtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18BC1EE48();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  if (a1)
  {
    sub_18B7B0AC0(0, &qword_1EA9D52D0);
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    sub_18B824D48(a1);
    sub_18BC1E1A8();
    v14 = sub_18BC215E8();
    v15 = v14;
    if (a3 == 2)
    {
      sub_18BC1EE38();
      sub_18BC1EE28();
      (*(v7 + 8))(v12, v6);
      goto LABEL_6;
    }

    if (a3 == 1)
    {
      sub_18BC1EE38();
      sub_18BC1EE38();
      sub_18BC1EE18();
      v16 = *(v7 + 8);
      v16(v9, v6);
      v16(v12, v6);
LABEL_6:
      v17 = sub_18BC20B98();

      [v15 setTitle_];

      v18 = v15;
      v19 = sub_18BC20B98();
      [v18 setAccessibilityIdentifier_];

      [v18 setAttributes_];
      sub_18B7B171C(a1);
      return v18;
    }

    sub_18B7B171C(a1);
  }

  return 0;
}

id sub_18BA4EE58(void *a1)
{
  v3 = &v1[qword_1EA9D6BA8];
  *v3 = sub_18BB6C178;
  v3[1] = 0;
  v3[2] = CGRectMake;
  v3[3] = 0;
  v3[4] = CGRectMake;
  v3[5] = 0;
  v3[6] = CGRectMake;
  v3[7] = 0;
  v3[8] = CGRectMake;
  v3[9] = 0;
  v3[10] = CGRectMake;
  v3[11] = 0;
  v3[12] = sub_18B7E9C50;
  v3[13] = 0;
  v3[14] = CGRectMake;
  v3[15] = 0;
  v3[16] = CGRectMake;
  v3[17] = 0;
  v3[18] = CGRectMake;
  v3[19] = 0;
  v3[20] = CGRectMake;
  v3[21] = 0;
  v3[22] = sub_18B9A926C;
  v3[23] = 0;
  v3[24] = sub_18B9A9278;
  v3[25] = 0;
  v3[26] = CGRectMake;
  v3[27] = 0;
  v3[28] = sub_18B8390A8;
  v3[29] = 0;
  v3[30] = sub_18B814EE4;
  v3[31] = 0;
  v3[32] = CGRectMake;
  v3[33] = 0;
  v3[34] = CGRectMake;
  v3[35] = 0;
  v3[36] = CGRectMake;
  v3[37] = 0;
  v3[38] = sub_18B8390A8;
  v3[39] = 0;
  v3[40] = CGRectMake;
  v3[41] = 0;
  v3[42] = CGRectMake;
  v3[43] = 0;
  v3[44] = sub_18B7E9C50;
  v3[45] = 0;
  v3[46] = sub_18B7E9C50;
  v3[47] = 0;
  v3[48] = CGRectMake;
  v3[49] = 0;
  v4 = qword_1EA9D6BB0;
  type metadata accessor for HighlightTrackingView();
  *&v1[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[qword_1EA9D6BB8] = 0;
  *&v1[qword_1EA9D6BC0 + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = qword_1EA9D6BC8;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x1E69DD6B8]) init];
  *&v1[qword_1EA9D6BD0] = 0;
  *&v1[qword_1EA9D6BD8 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[qword_1EA9D6BE0] = 0;
  *&v1[qword_1EA9D6BE8] = 0;
  *&v1[qword_1EA9D6BF0] = 0;
  *&v1[qword_1EA9D6BF8] = 0;
  v6 = &v1[qword_1EA9D6C00];
  *v6 = 0;
  v6[1] = 0;
  v1[qword_1EA9D6C08] = 0;
  v1[qword_1EA9D6C10] = 0;
  *&v1[qword_1EA9D6C18] = 0;
  *&v1[qword_1EA9D6C20] = 0;
  *&v1[qword_1EA9D6C28] = 0;
  v7 = qword_1EA9D6C30;
  v8 = _s4PageVMa_0();
  v9 = *(*(v8 - 8) + 56);
  v9(&v1[v7], 1, 1, v8);
  v10 = qword_1EA9D6C38;
  v11 = MEMORY[0x1E69E7CC0];
  *&v1[v10] = sub_18B7E0324(MEMORY[0x1E69E7CC0]);
  v9(&v1[qword_1EA9F7FE8], 1, 1, v8);
  v12 = qword_1EA9D6C40;
  type metadata accessor for Assertion();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = 0;
  *&v1[v12] = v13;
  v14 = qword_1EA9D6C48;
  *&v1[v14] = [objc_allocWithZone(MEMORY[0x1E69DD060]) init];
  v15 = qword_1EA9D6C50;
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  *(v16 + 24) = 0;
  *&v1[v15] = v16;
  v1[qword_1EA9F7FF0] = 0;
  v17 = qword_1EA9D6C58;
  v18 = swift_allocObject();
  *(v18 + 16) = v11;
  *(v18 + 24) = 0;
  *&v1[v17] = v18;
  v19 = &v1[qword_1EA9D6C60];
  v20 = sub_18B7CA9C8(v11);
  *v19 = CGRectMake;
  v19[1] = 0;
  v19[2] = v20;
  v21 = MEMORY[0x1E69DDCE0];
  v22 = &v1[qword_1EA9F7FF8];
  v23 = *MEMORY[0x1E69DDCE0];
  v24 = *(MEMORY[0x1E69DDCE0] + 8);
  *(v22 + 2) = xmmword_18BC46730;
  *(v22 + 4) = xmmword_18BC3DD80;
  *(v22 + 5) = xmmword_18BC46740;
  *(v22 + 6) = xmmword_18BC46750;
  v25 = *(MEMORY[0x1E695F050] + 16);
  *(v22 + 120) = *MEMORY[0x1E695F050];
  v26 = *(v21 + 16);
  v27 = *(v21 + 24);
  *v22 = v23;
  *(v22 + 1) = v24;
  *(v22 + 2) = v26;
  *(v22 + 3) = v27;
  *(v22 + 6) = 0x3FE75C28F5C28F5CLL;
  v22[56] = 0;
  *(v22 + 15) = *(v48 + 3);
  *(v22 + 57) = v48[0];
  *(v22 + 14) = 0x3FE999999999999ALL;
  *(v22 + 136) = v25;
  type metadata accessor for InteractiveInsertionGroup();
  v28 = swift_allocObject();
  *(v28 + 24) = 0;
  *(v28 + 32) = 0;
  *(v28 + 16) = 0;
  *(v28 + 40) = 0;
  *(v28 + 48) = 0x3FE0000000000000;
  v32 = v28;
  v33 = 1;
  v34 = v23;
  v35 = v24;
  v36 = v26;
  v37 = v27;
  v38 = 1;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 1;
  swift_unknownObjectWeakInit();
  v47 = 0;
  sub_18BA5A9A0(&v32, &v1[qword_1EA9D6BA0]);
  v31.receiver = v1;
  v31.super_class = type metadata accessor for TabOverviewSwitcher();
  v29 = objc_msgSendSuper2(&v31, sel_initWithCoder_, a1);

  if (v29)
  {
  }

  return v29;
}

void sub_18BA4F490(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      v7 = *(Strong + qword_1EA9D6BB0);
      v8 = a1;
      [v8 locationInView_];
      sub_18BA523FC(v4, v9, v10);
      sub_18BA51A3C(v4);
    }

    else
    {
      v11 = _s4PageVMa_0();
      (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
      sub_18BA51A3C(v4);
    }
  }
}

void sub_18BA4F5C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_18BA56DEC();
  }
}

uint64_t sub_18BA4F614(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = _s4PageVMa_0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = *(sub_18B7CC308() + 192);
    sub_18BC1E3F8();

    MEMORY[0x1EEE9AC00](v14);
    *(&v17 - 2) = a1;
    sub_18B830354(sub_18BA5A210, v13, v6);

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

      return sub_18B988BAC(v6, &unk_1EA9DBE90);
    }

    sub_18B82FD54(v6, v10, _s4PageVMa_0);
    v15 = sub_18B862854(v10, 0xD000000000000017, 0x800000018BC60750);
    if (v15)
    {
      v16 = v15;
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        if (a2)
        {
          swift_beginAccess();
          sub_18BBE8574(a1);
          swift_endAccess();
          swift_beginAccess();
          sub_18BBE8574(a1);
          swift_endAccess();
        }

        else
        {
          sub_18B9BD684(a1);
          sub_18B9BD690(a1);
        }

        return sub_18B82D1D4(v10, _s4PageVMa_0);
      }

      v12 = v16;
    }

    return sub_18B82D1D4(v10, _s4PageVMa_0);
  }

  return result;
}

uint64_t sub_18BA4F928(uint64_t result)
{
  v1 = *(result + qword_1EA9D6C58);
  v2 = *(v1 + 24);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 24) = v4;
    if (!v4)
    {
      result = swift_beginAccess();
      v5 = *(v1 + 16);
      v6 = *(v5 + 16);
      if (v6)
      {
        sub_18BC1E1A8();
        sub_18BC1E3F8();
        v7 = v5 + 40;
        do
        {
          v8 = *(v7 - 8);
          v9 = *(v1 + 24) > 0;
          sub_18BC1E1A8();
          v8(&v9);

          v7 += 16;
          --v6;
        }

        while (v6);
      }
    }
  }

  return result;
}

uint64_t sub_18BA4FA00(uint64_t a1)
{
  v3 = _s4ItemVMa_2();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1 + qword_1EA9D6C60;
  swift_beginAccess();
  v8 = (v6 + 16);
  v7 = *(v6 + 16);
  if (*(v7 + 16))
  {
    v9 = sub_18BB8B494(a1);
    if (v10)
    {
      v11 = *(*(v7 + 56) + 8 * v9);
      if (v11 < 2)
      {
        sub_18B82D0A4(a1, v5, _s4ItemVMa_2);
        sub_18BAD27B8(0, 1, v5);
        (*v6)(a1, 0);
      }

      else
      {
        v12 = v11 - 1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = *v8;
        *v8 = 0x8000000000000000;
        sub_18BAA7998(v12, a1, isUniquelyReferenced_nonNull_native);
        *v8 = v15;
      }
    }
  }

  return swift_endAccess();
}

uint64_t sub_18BA4FB54()
{
  v1 = _s4PageVMa_0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(sub_18B7CC308() + 192);
  sub_18BC1E3F8();

  v7 = *(v5 + 16);
  if (!v7)
  {
  }

  v8 = 0;
  while (v8 < *(v5 + 16))
  {
    sub_18B82D0A4(v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v8, v4, _s4PageVMa_0);
    updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
    result = sub_18B82D1D4(v4, _s4PageVMa_0);
    if (updated)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6AF0);
      sub_18BC1EDD8();
      v10 = swift_allocObject();
      v13 = xmmword_18BC3E410;
      *(v10 + 16) = xmmword_18BC3E410;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB730);
      v11 = swift_allocObject();
      *(v11 + 16) = v13;
      *(v11 + 32) = v8;
      MEMORY[0x18CFFA250]();
      v12 = sub_18B7CC308();
      sub_18BC0B910(0xD000000000000017, 0x800000018BC60750, v10, v12, 0, v0);
    }

    if (v7 == ++v8)
    {
    }
  }

  __break(1u);
  return result;
}

void sub_18BA4FDC8(void *a1)
{
  v2 = sub_18B7E189C(sub_18B7C2E68);
  type metadata accessor for Assertion();
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  *(v3 + 24) = 0;
  v2[5] = v3;

  [v2[6] contentOffset];
  v5 = v4;
  v7 = v6;
  v8 = swift_allocObject();
  v8[2] = v2;
  v8[3] = v5;
  v8[4] = v7;
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_18BA5AAC4;
  *(v10 + 24) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_18B9D53AC;
  *(v11 + 24) = v10;
  v17[4] = sub_18B9D53B0;
  v17[5] = v11;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_18B7E3BF4;
  v17[3] = &block_descriptor_313;
  v12 = _Block_copy(v17);
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v9 performWithoutAnimation_];
  _Block_release(v12);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    v13 = sub_18B7CEA3C();
    if (v13)
    {
      v14 = v13;
      v15 = sub_18B852D5C();
      if (v15)
      {
        v16 = v15;
        [*(v15 + OBJC_IVAR___SFTabOverviewLargeTitleView_titleTextField) resignFirstResponder];
      }
    }

    if (([a1 isDecelerating] & 1) == 0)
    {
      sub_18BA56DEC();
    }
  }
}

BOOL sub_18BA50054(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v11[8] = *(a1 + 128);
  v12 = *(a1 + 144);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v13[8] = *(a2 + 128);
  v14 = *(a2 + 144);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_18B7CC0D4(v11, v13);
}

void sub_18BA500E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_18BA531C0(a4, a1, a2);
  }
}

uint64_t sub_18BA50160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(result + qword_1EA9D6BA8 + 48);
    v9 = result;
    sub_18BC1E1A8();

    v8(a4, a1, a2);
  }

  return result;
}

uint64_t sub_18BA50204(double a1, double a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    Strong = swift_unknownObjectUnownedLoadStrong();
    v6 = Strong;
    if (v4[qword_1EA9F7FF0] == 1)
    {

      return 0;
    }

    v7 = &v4[qword_1EA9D6BA0];
    swift_beginAccess();
    if (v7[160] == 1)
    {
      [v6 bounds];
      MaxY = CGRectGetMaxY(v10);

      v9 = *&v4[qword_1EA9F7FF8 + 32];
      if (MaxY - v9 < a2)
      {
        return 0;
      }
    }

    else
    {
    }

    return 1;
  }

  return result;
}

uint64_t sub_18BA5031C(uint64_t a1, uint64_t a2)
{
  v3 = _s4PageVMa_0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5340);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = sub_18B7CC308();
    v38 = v6;
    v21 = sub_18B7C2E68(v20);
    [v21 bounds];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v40.origin.x = v23;
    v40.origin.y = v25;
    v40.size.width = v27;
    v40.size.height = v29;
    MidX = CGRectGetMidX(v40);
    v41.origin.x = v23;
    v41.origin.y = v25;
    v41.size.width = v27;
    v41.size.height = v29;
    MidY = CGRectGetMidY(v41);
    sub_18B7CECB4(v17, MidX, MidY);

    v6 = v38;
  }

  else
  {
    (*(v4 + 56))(v17, 1, 1, v3);
  }

  sub_18B82D0A4(a2, v14, _s4PageVMa_0);
  (*(v4 + 56))(v14, 0, 1, v3);
  v32 = *(v6 + 48);
  sub_18B7CA054(v17, v8, &unk_1EA9DBE90);
  sub_18B7CA054(v14, &v8[v32], &unk_1EA9DBE90);
  v33 = *(v4 + 48);
  if (v33(v8, 1, v3) != 1)
  {
    sub_18B7CA054(v8, v11, &unk_1EA9DBE90);
    if (v33(&v8[v32], 1, v3) != 1)
    {
      v35 = v39;
      sub_18B82FD54(&v8[v32], v39, _s4PageVMa_0);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B82D1D4(v35, _s4PageVMa_0);
      sub_18B988BAC(v14, &unk_1EA9DBE90);
      sub_18B988BAC(v17, &unk_1EA9DBE90);
      sub_18B82D1D4(v11, _s4PageVMa_0);
      sub_18B988BAC(v8, &unk_1EA9DBE90);
      return updated & 1;
    }

    sub_18B988BAC(v14, &unk_1EA9DBE90);
    sub_18B988BAC(v17, &unk_1EA9DBE90);
    sub_18B82D1D4(v11, _s4PageVMa_0);
    goto LABEL_9;
  }

  sub_18B988BAC(v14, &unk_1EA9DBE90);
  sub_18B988BAC(v17, &unk_1EA9DBE90);
  if (v33(&v8[v32], 1, v3) != 1)
  {
LABEL_9:
    sub_18B988BAC(v8, &qword_1EA9D5340);
    updated = 0;
    return updated & 1;
  }

  sub_18B988BAC(v8, &unk_1EA9DBE90);
  updated = 1;
  return updated & 1;
}

void sub_18BA50814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [Strong setNeedsLayout];
    if (!swift_unknownObjectWeakLoadStrong())
    {

      return;
    }

    if (a4)
    {
      if (a2)
      {
LABEL_5:

LABEL_9:
        swift_unknownObjectRelease();
        return;
      }
    }

    else if (!a2)
    {
      goto LABEL_5;
    }

    sub_18B9E899C();

    goto LABEL_9;
  }
}

uint64_t sub_18BA508CC(uint64_t a1)
{
  v3 = _s4ItemVMa_2();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s7SectionVMa_1();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _s4PageVMa_0();
  v11 = *(a1 + *(result + 20) + 96);
  v23 = *(v11 + 16);
  if (!v23)
  {
    return 0;
  }

  v21 = v7;
  v22 = v1;
  v12 = 0;
  v19 = v11;
  v20 = v8;
  while (v12 < *(v11 + 16))
  {
    v13 = v24;
    sub_18B82D0A4(v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v12, v24, _s7SectionVMa_1);
    v14 = 0;
    ++v12;
    v15 = *(v13 + *(v7 + 28));
    v16 = *(v15 + 16);
    while (v16 != v14)
    {
      sub_18B82D0A4(v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14++, v6, _s4ItemVMa_2);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B82D1D4(v6, _s4ItemVMa_2);
      if (updated)
      {
        sub_18B82D1D4(v24, _s7SectionVMa_1);
        return 1;
      }
    }

    result = sub_18B82D1D4(v24, _s7SectionVMa_1);
    v8 = v20;
    v7 = v21;
    v11 = v19;
    if (v12 == v23)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}