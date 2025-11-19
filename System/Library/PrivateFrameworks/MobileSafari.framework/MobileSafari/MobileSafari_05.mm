size_t sub_18B837C8C()
{
  v47 = _s4ItemVMa_2();
  v37 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v2 = &v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_18BC1EC08();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s7SectionVMa_1();
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 96);
  v13 = MEMORY[0x1E69E7CC0];
  v42 = *(v12 + 16);
  if (v42)
  {
    v14 = 0;
    v41 = *(v8 + 28);
    v15 = *(v9 + 80);
    v39 = *(v9 + 72);
    v40 = v12 + ((v15 + 32) & ~v15);
    v45 = v4 + 32;
    v46 = (v4 + 16);
    v16 = MEMORY[0x1E69E7CC0];
    v38 = v3;
    v36 = v11;
    while (1)
    {
      v43 = v14;
      v44 = v16;
      sub_18B815248(v40 + v39 * v14, v11, _s7SectionVMa_1);
      v18 = *&v11[v41];
      v19 = *(v18 + 16);
      if (v19)
      {
        v48 = v13;
        sub_18B855A90(0, v19, 0);
        v20 = v48;
        v21 = v18 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
        v22 = *(v37 + 72);
        do
        {
          sub_18B815248(v21, v2, _s4ItemVMa_2);
          (*v46)(v6, &v2[*(v47 + 20)], v3);
          sub_18B82A40C(v2, _s4ItemVMa_2);
          v48 = v20;
          v23 = v6;
          v24 = v3;
          v26 = *(v20 + 16);
          v25 = *(v20 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_18B855A90(v25 > 1, v26 + 1, 1);
            v20 = v48;
          }

          *(v20 + 16) = v26 + 1;
          (*(v4 + 32))(v20 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v26, v23, v24);
          v21 += v22;
          --v19;
          v3 = v24;
          v6 = v23;
        }

        while (v19);
        v11 = v36;
        result = sub_18B82A40C(v36, _s7SectionVMa_1);
        v13 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        result = sub_18B82A40C(v11, _s7SectionVMa_1);
        v20 = v13;
      }

      v27 = *(v20 + 16);
      v16 = v44;
      v28 = v44[2];
      v29 = v28 + v27;
      if (__OFADD__(v28, v27))
      {
        break;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v29 > v16[3] >> 1)
      {
        if (v28 <= v29)
        {
          v30 = v28 + v27;
        }

        else
        {
          v30 = v28;
        }

        result = sub_18B8559C0(result, v30, 1, v16);
        v16 = result;
      }

      v3 = v38;
      if (*(v20 + 16))
      {
        if ((v16[3] >> 1) - v16[2] < v27)
        {
          goto LABEL_28;
        }

        swift_arrayInitWithCopy();

        if (v27)
        {
          v31 = v16[2];
          v32 = __OFADD__(v31, v27);
          v33 = v31 + v27;
          if (v32)
          {
            goto LABEL_29;
          }

          v16[2] = v33;
        }
      }

      else
      {

        if (v27)
        {
          goto LABEL_27;
        }
      }

      v14 = v43 + 1;
      if (v43 + 1 == v42)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_25:
    v34 = sub_18B838118(v16);

    return v34;
  }

  return result;
}

uint64_t sub_18B838118(uint64_t a1)
{
  v2 = sub_18BC1EC08();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_18BBA3BF0(&qword_1EA9D3970, MEMORY[0x1E69695A8]);
  result = MEMORY[0x18CFFC500](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_18B855AD4(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

void sub_18B8382B4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = sub_18BC1EC08();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;
    sub_18BC1E3F8();
    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_18B9CD870(v9, v5);
      (*(v7 + 8))(v9, v6);
      sub_18B988BAC(v5, &unk_1EA9D3AE0);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_18B8384D0(uint64_t a1, int a2)
{
  v70 = a2;
  v72 = _s7SectionVMa_1();
  v4 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v6 = &v69[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v69[-v8];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v69[-v11];
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v69[-v13];
  v14 = MEMORY[0x1E69E7CC0];
  *&v99 = MEMORY[0x1E69E7CC0];
  sub_18B838D94(MEMORY[0x1E69E7CC0]);
  *(&v99 + 1) = v15;
  *&v100 = v16;
  *(&v100 + 1) = sub_18B839428(v14);
  sub_18B8396E0(v14);
  *&v101 = v17;
  *(&v101 + 1) = v18;
  v98 = MEMORY[0x1E69E7CD0];
  v71 = v2;
  v19 = (v2 + OBJC_IVAR___SFTabOverview_configuration);
  swift_beginAccess();
  if (v19[129] == 1)
  {
    v95 = 0uLL;
    *&v96[0] = 0;
    *(v96 + 8) = xmmword_18BC42B60;
    sub_18B839B3C(v97, &v95);
    sub_18B833D9C(v97);
  }

  if (v19[130] == 1 && (*a1 & 1) != 0)
  {
    v95 = 0uLL;
    *&v96[0] = 0;
    *(v96 + 8) = xmmword_18BC3FCA0;
    sub_18B839B3C(v97, &v95);
    sub_18B833D9C(v97);
  }

  if (v19[131] == 1)
  {
    v95 = 0uLL;
    *&v96[0] = 0;
    *(v96 + 8) = xmmword_18BC42B70;
    sub_18B839B3C(v97, &v95);
    sub_18B833D9C(v97);
  }

  v20 = *(a1 + 24);
  v21 = *(a1 + 56);
  v97[2] = *(a1 + 40);
  v97[3] = v21;
  v97[4] = *(a1 + 72);
  v97[0] = *(a1 + 8);
  v97[1] = v20;
  if (*(&v20 + 1))
  {
    v84 = *(a1 + 8);
    v85 = *(a1 + 24);
    v86 = *(&v20 + 1);
    v22 = *(a1 + 56);
    v87 = *(a1 + 40);
    v88 = v22;
    v89 = *(a1 + 72);
    v90 = v84;
    v23 = *(a1 + 72);
    v24 = *(a1 + 40);
    v93 = *(a1 + 56);
    v94 = v23;
    v91 = *(a1 + 24);
    v92 = v24;
    v25 = *(a1 + 8);
    v26 = *(a1 + 72);
    v27 = *(a1 + 40);
    v96[2] = *(a1 + 56);
    v96[3] = v26;
    v28 = *(a1 + 24);
    v95 = v25;
    v96[0] = v28;
    v96[1] = v27;
    sub_18B828980(&v95, v83);
    sub_18B828980(&v90, v83);
    sub_18B86C1C0();
    sub_18BC21A68();
    sub_18B839B3C(&v84, v83);
    sub_18B988BAC(v97, &qword_1EA9D50D8);
    sub_18B833D9C(&v84);
  }

  v29 = v98;
  v30 = v76;
  swift_storeEnumTagMultiPayload();
  sub_18B83A52C(v29, v30);

  sub_18B988BAC(v30, &unk_1EA9D92F0);
  v31 = *(a1 + 96);
  v32 = v72;
  v75 = *(v31 + 16);
  if (!v75)
  {
LABEL_51:
    v67 = sub_18B82FEA0();
    v68 = *(v67 + *((*MEMORY[0x1E69E7D40] & *v67) + 0x90));

    v95 = v99;
    v96[0] = v100;
    v96[1] = v101;
    sub_18B83BE78(&v95, v70 & 1);
  }

  v33 = 0;
  v73 = (v71 + OBJC_IVAR___SFTabOverview_headerRegistration);
  v34 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v74 = v31 + v34;
  v35 = *(v4 + 72);
  v81 = v34;
  v82 = v35;
  while (1)
  {
    sub_18B8554D0(v74 + v82 * v33, v12, _s7SectionVMa_1);
    v38 = v101;
    v39 = *(&v101 + 1) + v81;
    v40 = *(*(&v101 + 1) + 16);
    if (!v101)
    {
      for (; v40; --v40)
      {
        sub_18B8554D0(v39, v9, _s7SectionVMa_1);
        if (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0())
        {
          v47 = v9[*(v32 + 20)];
          sub_18B815380(v9, _s7SectionVMa_1);
          if (v47 == v12[*(v32 + 20)])
          {
            goto LABEL_19;
          }
        }

        else
        {
          sub_18B815380(v9, _s7SectionVMa_1);
        }

        v39 += v82;
      }

LABEL_18:
      sub_18B858DBC(v12, v40);
      goto LABEL_19;
    }

    sub_18BC1E1A8();
    sub_18B9D0D54(v12, v39, v40, (v38 + 16), v38 + 32);
    v42 = v41;
    v40 = v43;

    if (v42)
    {
      goto LABEL_18;
    }

LABEL_19:
    v44 = v99;
    v45 = *(v99 + 16);
    if (v45)
    {
      v46 = *(v99 + 16 + 16 * v45 + 8);
    }

    else
    {
      v46 = 0;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = v33;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v44 = sub_18B858E00(0, v45 + 1, 1, v44);
    }

    v50 = *(v44 + 2);
    v49 = *(v44 + 3);
    if (v50 >= v49 >> 1)
    {
      v44 = sub_18B858E00((v49 > 1), v50 + 1, 1, v44);
    }

    *(v44 + 2) = v50 + 1;
    *&v44[16 * v50 + 32] = vdupq_n_s64(v46);
    *&v99 = v44;
    v51 = *&v12[*(v32 + 28)];
    v52 = v101;
    v53 = *(&v101 + 1) + v81;
    v54 = *(*(&v101 + 1) + 16);
    if (!v101)
    {
      if (v54)
      {
        v78 = v44 + 32;
        v79 = v51;
        v55 = 0;
        while (1)
        {
          sub_18B8554D0(v53, v6, _s7SectionVMa_1);
          if (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0())
          {
            v60 = v6[*(v32 + 20)];
            result = sub_18B815380(v6, _s7SectionVMa_1);
            if (v60 == v12[*(v32 + 20)])
            {
              goto LABEL_42;
            }
          }

          else
          {
            sub_18B815380(v6, _s7SectionVMa_1);
          }

          ++v55;
          v53 += v82;
          if (v54 == v55)
          {
            goto LABEL_33;
          }
        }
      }

      v59 = 0;
      goto LABEL_45;
    }

    v78 = v44 + 32;
    v79 = v51;
    sub_18BC1E1A8();
    v55 = sub_18B9D0D54(v12, v53, v54, (v52 + 16), v52 + 32);
    v57 = v56;

    if ((v57 & 1) == 0)
    {
      break;
    }

LABEL_33:
    v59 = 0;
LABEL_44:
    v51 = v79;
LABEL_45:
    sub_18B858F04(v51, v59, v12);
    *&v84 = MEMORY[0x1E69E7CD0];
    if (*v73)
    {
      v64 = v73[1];
      ObjectType = swift_getObjectType();
      v66 = *(v64 + 40);
      swift_unknownObjectRetain();
      if (v66(v12, ObjectType, v64))
      {
        *&v92 = 0;
        v90 = 0u;
        v91 = 0u;
        sub_18B839B3C(&v95, &v90);
        swift_unknownObjectRelease();
        sub_18B833D9C(&v95);
        v36 = v84;
      }

      else
      {
        swift_unknownObjectRelease();
        v36 = MEMORY[0x1E69E7CD0];
      }

      v32 = v72;
    }

    else
    {
      v36 = MEMORY[0x1E69E7CD0];
    }

    v33 = v80 + 1;
    v37 = v76;
    sub_18B8554D0(v12, v76, _s7SectionVMa_1);
    swift_storeEnumTagMultiPayload();
    sub_18B83A52C(v36, v37);

    sub_18B988BAC(v37, &unk_1EA9D92F0);
    sub_18B815380(v12, _s7SectionVMa_1);
    if (v33 == v75)
    {
      goto LABEL_51;
    }
  }

  if ((v55 & 0x8000000000000000) == 0)
  {
LABEL_42:
    if (v55 >= *(v44 + 2))
    {
      goto LABEL_53;
    }

    v61 = &v78[16 * v55];
    v63 = *v61;
    v62 = *(v61 + 1);
    v59 = v62 - v63;
    if (__OFSUB__(v62, v63))
    {
      goto LABEL_54;
    }

    goto LABEL_44;
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

void sub_18B838D94(uint64_t a1)
{
  v2 = _s4ItemVMa_2();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v22 - v7;
  v9 = sub_18B8390A8();
  v10 = sub_18B83929C(&v25, a1, 0, 1, v9, _s4ItemVMa_2, sub_18BA3AC10, sub_18BA39E10);
  v11 = *(a1 + 16);
  v12 = v25;
  if (v25 != v11)
  {
    if ((v25 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 >= v25)
    {
      v24 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v23 = a1 + v24;
      sub_18BB59A90(a1, a1 + v24, 0, (2 * v25) | 1);
      v26 = v10;
      v27 = v13;
      if (*(a1 + 16) >= v11)
      {
        v22[1] = v10;
        v22[2] = a1;
        v14 = *(v3 + 72);
        sub_18BC1E1A8();
        while (1)
        {
          sub_18B815248(v23 + v14 * v12, v8, _s4ItemVMa_2);
          v15 = v26;
          v16 = v27 + v24;
          v17 = *(v27 + 16);
          if (v26)
          {
            sub_18BC1E1A8();
            sub_18B9D0B20(v8, v16, v17, (v15 + 16), v15 + 32);
            v19 = v18;
            v17 = v20;

            if ((v19 & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          else if (v17)
          {
            do
            {
              sub_18B815248(v16, v5, _s4ItemVMa_2);
              updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
              sub_18B82A40C(v5, _s4ItemVMa_2);
              if (updated)
              {
                goto LABEL_7;
              }

              v16 += v14;
            }

            while (--v17);
          }

          sub_18B858B80(v8, v17, _s4ItemVMa_2, _s4ItemVMa_2, sub_18B85A1AC, sub_18BA407E8);
LABEL_7:
          ++v12;
          sub_18B82A40C(v8, _s4ItemVMa_2);
          if (v12 == v11)
          {

            return;
          }
        }
      }

LABEL_19:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_19;
  }
}

uint64_t sub_18B8390B0(uint64_t a1, void *a2, SEL *a3)
{
  v6 = _s4PageVMa();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = &v21 - v11;
  v13 = [a2 *a3];
  sub_18B8162EC(a1, v12, _s4PageVMa);
  v14 = objc_allocWithZone(SFTabSwitcherPage);
  sub_18B8162EC(v12, v8, _s4PageVMa);
  v15 = type metadata accessor for SFTabSwitcherPageInternal(0);
  v16 = objc_allocWithZone(v15);
  sub_18B8162EC(v8, v16 + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped, _s4PageVMa);
  v22.receiver = v16;
  v22.super_class = v15;
  v17 = objc_msgSendSuper2(&v22, sel_init);
  sub_18B8165D8(v8, _s4PageVMa);
  *&v14[OBJC_IVAR___SFTabSwitcherPage__internal] = v17;
  v21.receiver = v14;
  v21.super_class = SFTabSwitcherPage;
  v18 = objc_msgSendSuper2(&v21, sel_init);
  sub_18B8165D8(v12, _s4PageVMa);
  v19 = v13[2](v13, v18);
  _Block_release(v13);

  return v19;
}

uint64_t sub_18B83929C(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t (*a6)(void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a8)(unint64_t, uint64_t))
{
  v14 = *(a2 + 16);
  if (a4)
  {
    v15 = 0;
  }

  else
  {
    v15 = a3;
  }

  v16 = MEMORY[0x18CFFA680](*(a2 + 16));
  if (v16 <= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= a5)
  {
    v18 = a5;
  }

  else
  {
    v18 = v17;
  }

  if (v18 > 4)
  {
    v20 = MEMORY[0x18CFFA690]();
    v21 = *(a6(0) - 8);
    a7(a2 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v14, v20 + 16, v20 + 32);
    *a1 = v22;
    return v20;
  }

  else if (v14 >= 2)
  {
    v23 = *(a6(0) - 8);
    v24 = a8(a2 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), v14);
    result = 0;
    *a1 = v24;
  }

  else
  {
    result = 0;
    *a1 = v14;
  }

  return result;
}

unint64_t sub_18B839450(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v24 = a2;
  v25 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4);
    v11 = sub_18BC21D88();
    v23 = *(v6 + 48);
    v12 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v13 = *(v7 + 72);
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v12, v9, v24);
      result = sub_18B83B1C8(v9);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v11 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = v11[6];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
      result = sub_18B7CF39C(v9, v17 + *(*(v18 - 8) + 72) * v16, &unk_1EA9D92F0);
      *(v11[7] + 8 * v16) = *&v9[v23];
      v19 = v11[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v11[2] = v21;
      v12 += v13;
      if (!--v10)
      {

        return v11;
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

id sub_18B839634(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = (a1 + *a3);
  v5 = v4[1];
  v8[4] = *v4;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_18B839A2C;
  v8[3] = a4;
  v6 = _Block_copy(v8);
  sub_18BC1E1A8();

  return v6;
}

void sub_18B8396E0(uint64_t a1)
{
  v2 = _s7SectionVMa_1();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v23 - v7;
  v9 = sub_18B8390A8();
  v10 = sub_18B83929C(&v25, a1, 0, 1, v9, _s7SectionVMa_1, sub_18BA3A83C, sub_18BA39AC8);
  v11 = *(a1 + 16);
  v12 = v25;
  if (v25 != v11)
  {
    if ((v25 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 >= v25)
    {
      v24 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v13 = a1 + v24;
      sub_18BB59A68(a1, a1 + v24, 0, (2 * v25) | 1);
      v26 = v10;
      v27 = v14;
      if (*(a1 + 16) >= v11)
      {
        v23[0] = v10;
        v23[1] = a1;
        v15 = *(v3 + 72);
        sub_18BC1E1A8();
        while (1)
        {
          sub_18B815248(v13 + v15 * v12, v8, _s7SectionVMa_1);
          v16 = v26;
          v17 = v27 + v24;
          v18 = *(v27 + 16);
          if (v26)
          {
            sub_18BC1E1A8();
            sub_18B9D0D54(v8, v17, v18, (v16 + 16), v16 + 32);
            v20 = v19;
            v18 = v21;

            if ((v20 & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          else
          {
            for (; v18; --v18)
            {
              sub_18B815248(v17, v5, _s7SectionVMa_1);
              if (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0())
              {
                v22 = v5[*(v2 + 20)];
                sub_18B82A40C(v5, _s7SectionVMa_1);
                if (v22 == v8[*(v2 + 20)])
                {
                  goto LABEL_7;
                }
              }

              else
              {
                sub_18B82A40C(v5, _s7SectionVMa_1);
              }

              v17 += v15;
            }
          }

          sub_18B858B80(v8, v18, _s7SectionVMa_1, _s7SectionVMa_1, sub_18B828E80, sub_18BA408B4);
LABEL_7:
          ++v12;
          sub_18B82A40C(v8, _s7SectionVMa_1);
          if (v12 == v11)
          {

            return;
          }
        }
      }

LABEL_22:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_22;
  }
}

uint64_t sub_18B839A2C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_18BC1E1A8();
  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t SFFluidTabOverviewSupplementary.hash(into:)()
{
  sub_18B833990(v0, &v5);
  if (*(&v6 + 1) > 1)
  {
    if (*(&v6 + 1) == 2)
    {
      v1 = 3;
      return MEMORY[0x18CFFD660](v1);
    }

    if (*(&v6 + 1) == 3)
    {
      v1 = 4;
      return MEMORY[0x18CFFD660](v1);
    }

LABEL_8:
    v3[0] = v5;
    v3[1] = v6;
    v4 = v7;
    MEMORY[0x18CFFD660](2);
    sub_18BC21A58();
    return sub_18B831014(v3);
  }

  if (!*(&v6 + 1))
  {
    v1 = 0;
    return MEMORY[0x18CFFD660](v1);
  }

  if (*(&v6 + 1) != 1)
  {
    goto LABEL_8;
  }

  v1 = 1;
  return MEMORY[0x18CFFD660](v1);
}

uint64_t sub_18B839B3C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_18BC22158();
  sub_18B833990(a2, &v25);
  v15 = a1;
  if (*(&v26 + 1) > 1)
  {
    if (*(&v26 + 1) == 2)
    {
      v6 = 3;
      goto LABEL_11;
    }

    if (*(&v26 + 1) == 3)
    {
      v6 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!*(&v26 + 1))
    {
      v6 = 0;
      goto LABEL_11;
    }

    if (*(&v26 + 1) == 1)
    {
      v6 = 1;
LABEL_11:
      MEMORY[0x18CFFD660](v6);
      goto LABEL_12;
    }
  }

  v18[0] = v25;
  v18[1] = v26;
  v19 = v27;
  MEMORY[0x18CFFD660](2);
  sub_18BC21A58();
  sub_18B831014(v18);
LABEL_12:
  v7 = sub_18BC221A8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_33:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_18B833990(a2, v20);
    *&v25 = *v2;
    sub_18B839E84(v20, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v25;
    v13 = *(a2 + 16);
    *v15 = *a2;
    *(v15 + 16) = v13;
    *(v15 + 32) = *(a2 + 32);
    return 1;
  }

  v10 = ~v8;
  while (1)
  {
    sub_18B833990(*(v5 + 48) + 40 * v9, &v25);
    sub_18B833990(&v25, v20);
    sub_18B833990(a2, &v22);
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        sub_18B833D9C(&v25);
        if (*(&v23 + 1) == 2)
        {
          goto LABEL_34;
        }

        goto LABEL_28;
      }

      if (v21 == 3)
      {
        sub_18B833D9C(&v25);
        if (*(&v23 + 1) == 3)
        {
          goto LABEL_34;
        }

        goto LABEL_28;
      }
    }

    else
    {
      if (!v21)
      {
        sub_18B833D9C(&v25);
        if (!*(&v23 + 1))
        {
          goto LABEL_34;
        }

        goto LABEL_28;
      }

      if (v21 == 1)
      {
        sub_18B833D9C(&v25);
        if (*(&v23 + 1) == 1)
        {
          goto LABEL_34;
        }

        goto LABEL_28;
      }
    }

    sub_18B833990(v20, v18);
    if (*(&v23 + 1) >= 4uLL)
    {
      break;
    }

    sub_18B833D9C(&v25);
    sub_18B831014(v18);
LABEL_28:
    sub_18B988BAC(v20, &unk_1EA9D4F50);
LABEL_29:
    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  v16[0] = v22;
  v16[1] = v23;
  v17 = v24;
  v11 = MEMORY[0x18CFFCF40](v18, v16);
  sub_18B831014(v16);
  sub_18B833D9C(&v25);
  sub_18B831014(v18);
  if ((v11 & 1) == 0)
  {
    sub_18B833D9C(v20);
    goto LABEL_29;
  }

LABEL_34:
  sub_18B833D9C(v20);
  sub_18B833D9C(a2);
  sub_18B833990(*(v5 + 48) + 40 * v9, v15);
  return 0;
}

uint64_t sub_18B839E84(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_39;
  }

  if (a3)
  {
    sub_18B86C03C();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_18B9CBD44();
      goto LABEL_39;
    }

    sub_18B83A1F8();
  }

  v8 = *v3;
  sub_18BC22158();
  sub_18B833990(v5, &v30);
  if (*(&v31 + 1) > 1)
  {
    if (*(&v31 + 1) == 2)
    {
      v9 = 3;
      goto LABEL_18;
    }

    if (*(&v31 + 1) == 3)
    {
      v9 = 4;
      goto LABEL_18;
    }

LABEL_15:
    v23[0] = v30;
    v23[1] = v31;
    v24 = v32;
    MEMORY[0x18CFFD660](2);
    sub_18BC21A58();
    sub_18B831014(v23);
    goto LABEL_19;
  }

  if (!*(&v31 + 1))
  {
    v9 = 0;
    goto LABEL_18;
  }

  if (*(&v31 + 1) != 1)
  {
    goto LABEL_15;
  }

  v9 = 1;
LABEL_18:
  MEMORY[0x18CFFD660](v9);
LABEL_19:
  result = sub_18BC221A8();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_18B833990(*(v8 + 48) + 40 * a2, &v30);
      sub_18B833990(&v30, v25);
      sub_18B833990(v5, &v27);
      if (v26 > 1)
      {
        if (v26 == 2)
        {
          sub_18B833D9C(&v30);
          if (*(&v28 + 1) == 2)
          {
            goto LABEL_42;
          }

          goto LABEL_22;
        }

        if (v26 == 3)
        {
          sub_18B833D9C(&v30);
          if (*(&v28 + 1) == 3)
          {
            goto LABEL_42;
          }

          goto LABEL_22;
        }
      }

      else
      {
        if (!v26)
        {
          sub_18B833D9C(&v30);
          if (!*(&v28 + 1))
          {
            goto LABEL_42;
          }

          goto LABEL_22;
        }

        if (v26 == 1)
        {
          sub_18B833D9C(&v30);
          if (*(&v28 + 1) == 1)
          {
            goto LABEL_42;
          }

          goto LABEL_22;
        }
      }

      sub_18B833990(v25, v23);
      if (*(&v28 + 1) < 4uLL)
      {
        sub_18B833D9C(&v30);
        sub_18B831014(v23);
LABEL_22:
        result = sub_18B988BAC(v25, &unk_1EA9D4F50);
        goto LABEL_23;
      }

      v21[0] = v27;
      v21[1] = v28;
      v22 = v29;
      v12 = MEMORY[0x18CFFCF40](v23, v21);
      sub_18B831014(v21);
      sub_18B833D9C(&v30);
      sub_18B831014(v23);
      if (v12)
      {
        goto LABEL_42;
      }

      result = sub_18B833D9C(v25);
LABEL_23:
      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_39:
  v13 = *v20;
  *(*v20 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 40 * a2;
  v15 = *v5;
  v16 = *(v5 + 16);
  *(v14 + 32) = *(v5 + 32);
  *v14 = v15;
  *(v14 + 16) = v16;
  v17 = *(v13 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
LABEL_42:
    sub_18B833D9C(v25);
    result = sub_18BC22068();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v19;
  }

  return result;
}

void sub_18B83A1F8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5020);
  v3 = sub_18BC21A88();
  if (*(v2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_11:
      sub_18B833990(*(v2 + 48) + 40 * (v9 | (v4 << 6)), v12);
      sub_18BB61D04(v12, v3);
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        goto LABEL_13;
      }

      v11 = *(v2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v1 = v3;
  }
}

uint64_t sub_18B83A338()
{
  v1 = _s7SectionVMa_0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s4PageVMa();
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR___SFTabSwitcherPage__internal);
  v10 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v9 + v10, v8, _s4PageVMa);
  v11 = *&v8[*(v6 + 76)];
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = *(v1 + 28);
    v15 = v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v16 = *(v2 + 72);
    while (1)
    {
      result = sub_18B8162EC(v15, v4, _s7SectionVMa_0);
      v18 = *(*&v4[v14] + 16);
      v19 = __OFADD__(v13, v18);
      v13 += v18;
      if (v19)
      {
        break;
      }

      sub_18B8165D8(v4, _s7SectionVMa_0);
      v15 += v16;
      if (!--v12)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = 0;
LABEL_7:
    sub_18B8165D8(v8, _s4PageVMa);
    return v13;
  }

  return result;
}

uint64_t sub_18B83A52C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = a1;
  v5 = _s4ItemVMa_2();
  v41 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v39 - v9;
  v11 = _s7SectionVMa_1();
  v40 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - v18;
  v43 = a2;
  sub_18B83AA0C(a2, &v39 - v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload)
  {
    sub_18B8297D4(v19, v10, _s4ItemVMa_2);
    v21 = v3;
    v26 = v3[1];
    v25 = v3[2];
    v27 = v25 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v16 = *(v25 + 16);
    if (!v26)
    {
      if (v16)
      {
        v34 = *(v41 + 72);
        while (1)
        {
          sub_18B8555A0(v27, v8, _s4ItemVMa_2);
          updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
          sub_18B815440(v8, _s4ItemVMa_2);
          if (updated)
          {
            break;
          }

          v27 += v34;
          if (!--v16)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
LABEL_22:
        sub_18B815440(v10, _s4ItemVMa_2);
        __break(1u);
      }

      v32 = _s4ItemVMa_2;
      v33 = v10;
LABEL_24:
      sub_18B815440(v33, v32);
      goto LABEL_25;
    }

    sub_18BC1E1A8();
    sub_18B9D0B20(v10, v27, v16, (v26 + 16), v26 + 32);
    v29 = v28;

    sub_18B815440(v10, _s4ItemVMa_2);
    if ((v29 & 1) == 0)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  else
  {
    sub_18B8297D4(v19, v16, _s7SectionVMa_1);
    v21 = v3;
    v19 = v3[4];
    v22 = v3[5];
    v3 = v40;
    v10 = (v22 + ((*(v40 + 80) + 32) & ~*(v40 + 80)));
    v5 = *(v22 + 16);
    if (v19)
    {
      sub_18BC1E1A8();
      sub_18B9D0D54(v16, v10, v5, v19 + 2, (v19 + 32));
      v24 = v23;

      EnumCaseMultiPayload = sub_18B815440(v16, _s7SectionVMa_1);
      if (v24)
      {
        __break(1u);
LABEL_6:
        v21 = v3;
        if (EnumCaseMultiPayload == 2)
        {
          sub_18B86C50C(v19);
        }
      }

LABEL_25:
      v36 = v42;
      sub_18BC1E3F8();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v21[3];
      result = sub_18B83AC64(v36, v43, isUniquelyReferenced_nonNull_native);
      v21[3] = v44;
      return result;
    }
  }

  if (v5)
  {
    v30 = v3[9];
    do
    {
      sub_18B8555A0(v10, v14, _s7SectionVMa_1);
      if (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0())
      {
        v31 = v14[*(v11 + 20)];
        sub_18B815440(v14, _s7SectionVMa_1);
        if (v31 == v16[*(v11 + 20)])
        {
          v32 = _s7SectionVMa_1;
          v33 = v16;
          goto LABEL_24;
        }
      }

      else
      {
        sub_18B815440(v14, _s7SectionVMa_1);
      }

      v10 += v30;
      --v5;
    }

    while (v5);
  }

  result = sub_18B815440(v16, _s7SectionVMa_1);
  __break(1u);
  return result;
}

uint64_t sub_18B83AA0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B83AA80()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - v2;
  v4 = _s4PageVMa();
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B7CFD08(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_18B988BAC(v3, &qword_1EA9D52E0);
  }

  sub_18B81F940(v3, v7, _s4PageVMa);
  v9 = *(v0 + OBJC_IVAR___SFTabOverviewDisplayItem_searchController);
  if (v9)
  {
    v10 = [v9 searchBar];
    v11 = v10;
    if (v7[v4[11]] & 1) != 0 || (v7[v4[10]])
    {
      v12 = 0;
    }

    else
    {
      v12 = v7[v4[12]] ^ 1;
    }

    [v10 setEnabled_];
  }

  return sub_18B7DFF04(v7, _s4PageVMa);
}

uint64_t sub_18B83AC64(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = *v3;
  v13 = sub_18B83B1C8(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_18BB29D70();
      goto LABEL_7;
    }

    sub_18B83B9F0(v16, a3 & 1);
    v21 = sub_18B83B1C8(a2);
    if ((v17 & 1) == (v22 & 1))
    {
      v13 = v21;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_18B83AA0C(a2, v10);
      return sub_18B83BD64(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_18BC22078();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v19[7] + 8 * v13) = a1;
}

uint64_t sub_18B83ADFC(uint64_t a1)
{
  v3 = _s4ItemVMa_2();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s7SectionVMa_1();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v21 - v13;
  sub_18B83AA0C(v1, v21 - v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      return MEMORY[0x18CFFD660](0);
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5090);
    v18 = swift_projectBox();
    v19 = *(v17 + 48);
    sub_18B833990(v18, v26);
    sub_18B83AA0C(v18 + v19, v12);
    MEMORY[0x18CFFD660](3);
    sub_18B833990(v26, &v23);
    if (*(&v24 + 1) > 1)
    {
      if (*(&v24 + 1) == 2)
      {
        v20 = 3;
        goto LABEL_17;
      }

      if (*(&v24 + 1) == 3)
      {
        v20 = 4;
        goto LABEL_17;
      }
    }

    else
    {
      if (!*(&v24 + 1))
      {
        v20 = 0;
        goto LABEL_17;
      }

      if (*(&v24 + 1) == 1)
      {
        v20 = 1;
LABEL_17:
        MEMORY[0x18CFFD660](v20);
        goto LABEL_18;
      }
    }

    v21[0] = v23;
    v21[1] = v24;
    v22 = v25;
    MEMORY[0x18CFFD660](2);
    sub_18BC21A58();
    sub_18B831014(v21);
LABEL_18:
    sub_18B83ADFC(a1);
    sub_18B988BAC(v12, &unk_1EA9D92F0);
    sub_18B833D9C(v26);
  }

  if (EnumCaseMultiPayload)
  {
    sub_18B8297D4(v14, v5, _s4ItemVMa_2);
    MEMORY[0x18CFFD660](2);
    sub_18BC1EC08();
    sub_18B82BA00(&qword_1EA9D3970);
    sub_18BC20A78();
    return sub_18B8154A0(v5, _s4ItemVMa_2);
  }

  else
  {
    sub_18B8297D4(v14, v8, _s7SectionVMa_1);
    MEMORY[0x18CFFD660](1);
    sub_18BC1EC08();
    sub_18B82BA00(&qword_1EA9D3970);
    sub_18BC20A78();
    sub_18BC22178();
    return sub_18B8154A0(v8, _s7SectionVMa_1);
  }
}

uint64_t sub_18B83B1F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v61 - v2;
  v68 = _s4PageVMa_0();
  v4 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v63 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v61 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v61 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6D38);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v61 - v14;
  result = sub_18B7EA91C();
  v16 = 0;
  v74 = 0;
  v17 = *(result + 64);
  v61 = result + 64;
  v66 = result;
  v18 = 1 << *(result + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v69 = v0;
  v62 = (v0 + qword_1EA9D6BA8);
  v21 = (v18 + 63) >> 6;
  v65 = v4;
  v67 = (v4 + 48);
  v71 = v3;
  v72 = v12;
  while (v20)
  {
    v22 = v16;
LABEL_15:
    v25 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v26 = v25 | (v22 << 6);
    v27 = v66;
    v28 = v64;
    sub_18B82D0A4(*(v66 + 48) + *(v65 + 72) * v26, v64, _s4PageVMa_0);
    v29 = *(v27 + 56);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6D40);
    v31 = *(v30 + 48);
    v75 = *(v29 + 16 * v26);
    v32 = v28;
    v12 = v72;
    sub_18B82FD54(v32, v72, _s4PageVMa_0);
    *&v12[v31] = v75;
    (*(*(v30 - 8) + 56))(v12, 0, 1, v30);
    v33 = v75;
    v24 = v22;
    v3 = v71;
LABEL_16:
    v34 = v12;
    v35 = v70;
    sub_18B7CF39C(v34, v70, &qword_1EA9D6D38);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6D40);
    if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
    {
    }

    v37 = v24;
    v38 = v35 + *(v36 + 48);
    v39 = *v38;
    v40 = *(v38 + 8);
    v41 = v35;
    v42 = v73;
    sub_18B82FD54(v41, v73, _s4PageVMa_0);
    v43 = *(sub_18B7CC308() + 192);
    sub_18BC1E3F8();

    MEMORY[0x1EEE9AC00](v44);
    *(&v61 - 2) = v42;
    v45 = v74;
    sub_18B830354(sub_18B9EB46C, v43, v3);
    v74 = v45;

    if ((*v67)(v3, 1, v68) == 1)
    {
      sub_18B82D1D4(v73, _s4PageVMa_0);

      result = sub_18B988BAC(v3, &unk_1EA9DBE90);
    }

    else
    {
      v46 = v63;
      sub_18B82FD54(v3, v63, _s4PageVMa_0);
      ObjectType = swift_getObjectType();
      v48 = *v62;
      sub_18BC1E1A8();
      v49 = v48(v46);
      v3 = v71;
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v56 = v55;

      v57 = (*(v40 + 32))(v76, ObjectType, v40);
      *v58 = v50;
      *(v58 + 1) = v52;
      *(v58 + 2) = v54;
      *(v58 + 3) = v56;
      v57(v76, 0);
      sub_18B9BF880();

      v59 = v73;
      sub_18B82D1D4(v46, _s4PageVMa_0);
      result = sub_18B82D1D4(v59, _s4PageVMa_0);
    }

    v16 = v37;
    v12 = v72;
  }

  if (v21 <= v16 + 1)
  {
    v23 = v16 + 1;
  }

  else
  {
    v23 = v21;
  }

  v24 = v23 - 1;
  while (1)
  {
    v22 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6D40);
      (*(*(v60 - 8) + 56))(v12, 1, 1, v60);
      v20 = 0;
      goto LABEL_16;
    }

    v20 = *(v61 + 8 * v22);
    ++v16;
    if (v20)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_18B83B854(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0) - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_18B83AA0C(*(v2 + 48) + v12 * v10, v8);
      v13 = sub_18B8598D4(v8, a1);
      sub_18B988BAC(v8, &unk_1EA9D92F0);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

void sub_18B83B9B4()
{
  sub_18B7C9974();
  v1 = v0;
  sub_18B83B1F4();

  sub_18B7F063C();
}

uint64_t sub_18B83B9F0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v33 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D71E0);
  v36 = a2;
  result = sub_18BC21D78();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(v35 + 72);
      v23 = *(v7 + 48) + v22 * v21;
      if (v36)
      {
        sub_18B7CF39C(v23, v37, &unk_1EA9D92F0);
        v24 = *(*(v7 + 56) + 8 * v21);
      }

      else
      {
        sub_18B7CA054(v23, v37, &unk_1EA9D92F0);
        v24 = *(*(v7 + 56) + 8 * v21);
        sub_18BC1E3F8();
      }

      sub_18BC22158();
      sub_18B83ADFC(v38);
      result = sub_18BC221A8();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = sub_18B7CF39C(v37, *(v9 + 48) + v22 * v17, &unk_1EA9D92F0);
      *(*(v9 + 56) + 8 * v17) = v24;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_18B83BD64(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  result = sub_18B7CF39C(a2, v8 + *(*(v9 - 8) + 72) * a1, &unk_1EA9D92F0);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

size_t sub_18B83BE28(size_t a1, int64_t a2, char a3)
{
  result = sub_18B825BA0(a1, a2, a3, *v3, &qword_1EA9D4BE0, &unk_18BC42898, _s4ItemVMa_0);
  *v3 = result;
  return result;
}

uint64_t sub_18B83BE78(__int128 *a1, int a2)
{
  v3 = v2;
  v144 = a2;
  v170 = _s4ItemVMa_2();
  v153 = *(v170 - 8);
  v5 = MEMORY[0x1EEE9AC00](v170);
  v166 = v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v169 = v143 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v165 = v143 - v9;
  v168 = _s7SectionVMa_1();
  v154 = *(v168 - 8);
  v10 = MEMORY[0x1EEE9AC00](v168);
  v12 = v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v171 = v143 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v148 = v143 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v172 = v143 - v17;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v151 = *(v160 - 8);
  v18 = MEMORY[0x1EEE9AC00](v160);
  v162 = v143 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v156 = v143 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v143 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v161 = v143 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v155 = v143 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v164 = v143 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v152 = v143 - v31;
  v32 = &v3[qword_1EA9D95C0];
  swift_beginAccess();
  v33 = v32[1];
  v176[0] = *v32;
  v176[1] = v33;
  v145 = v32;
  v176[2] = v32[2];
  v34 = &v3[qword_1EA9D95C8];
  swift_beginAccess();
  v163 = v34[1];
  v167 = v34[4];
  sub_18B7CA054(v176, &v173, &unk_1EA9D4F90);
  v35 = a1[1];
  *v34 = *a1;
  *(v34 + 1) = v35;
  *(v34 + 2) = a1[2];

  v146 = v3;
  v36 = *&v3[qword_1EA9D95F0];
  if (v36)
  {
    v37 = *&v3[qword_1EA9D95F0 + 8];
    v38 = v152;
    v39 = v160;
    swift_storeEnumTagMultiPayload();
    v40 = a1[1];
    v173 = *a1;
    v174 = v40;
    v175 = a1[2];
    v157 = a1;
    sub_18B7CA054(a1, v177, &unk_1EA9D4F90);
    sub_18B824D48(v36);
    v158 = v37;
    v159 = v36;
    v41 = v36(v38, &v173);
    sub_18B988BAC(v38, &unk_1EA9D92F0);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_18B83A52C(v41, v38);
    sub_18B988BAC(v38, &unk_1EA9D92F0);
    swift_endAccess();

    isUniquelyReferenced_nonNull_native = v34[5];
    v43 = *(isUniquelyReferenced_nonNull_native + 16);
    v167 = v34;
    if (v43)
    {
      v44 = v34[4];
      v147 = (*(v154 + 80) + 32) & ~*(v154 + 80);
      v150 = isUniquelyReferenced_nonNull_native + v147;
      v143[1] = v44;
      sub_18BC1E1A8();
      sub_18BC1E1A8();
      v45 = 0;
      v46 = v166;
      v152 = v24;
      v149 = isUniquelyReferenced_nonNull_native;
      while (1)
      {
        if (v45 >= v43)
        {
          __break(1u);
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        v47 = *(v154 + 72);
        sub_18B8554D0(v150 + v47 * v45, v24, _s7SectionVMa_1);
        swift_storeEnumTagMultiPayload();
        v48 = v157[1];
        v173 = *v157;
        v174 = v48;
        v175 = v157[2];
        v163 = v159(v24, &v173);
        swift_beginAccess();
        sub_18B7CA054(v24, v156, &unk_1EA9D92F0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 1)
        {
          if (EnumCaseMultiPayload == 2)
          {
            sub_18B988BAC(v156, &unk_1EA9D92F0);
          }
        }

        else
        {
          if (!EnumCaseMultiPayload)
          {
            v39 = v171;
            sub_18B829704(v156, v171, _s7SectionVMa_1);
            isUniquelyReferenced_nonNull_native = v34[4];
            v50 = v34[5];
            v51 = v50 + v147;
            v52 = *(v50 + 16);
            if (isUniquelyReferenced_nonNull_native)
            {
              sub_18BC1E1A8();
              sub_18B9D0D54(v39, v51, v52, (isUniquelyReferenced_nonNull_native + 16), isUniquelyReferenced_nonNull_native + 32);
              v54 = v53;

              sub_18B815380(v39, _s7SectionVMa_1);
              v34 = v167;
              if ((v54 & 1) == 0)
              {
                goto LABEL_30;
              }

              goto LABEL_101;
            }

            for (; v52; --v52)
            {
              sub_18B8554D0(v51, v12, _s7SectionVMa_1);
              if (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0())
              {
                v60 = v168;
                v61 = v12[*(v168 + 20)];
                sub_18B815380(v12, _s7SectionVMa_1);
                v62 = *(v60 + 20);
                v46 = v166;
                v39 = v171;
                if (v61 == v171[v62])
                {
                  sub_18B815380(v171, _s7SectionVMa_1);
                  v34 = v167;
                  goto LABEL_30;
                }
              }

              else
              {
                sub_18B815380(v12, _s7SectionVMa_1);
              }

              v51 += v47;
            }

LABEL_108:
            sub_18B815380(v39, _s7SectionVMa_1);
            __break(1u);
LABEL_109:
            sub_18B815380(v172, _s7SectionVMa_1);
            __break(1u);
LABEL_110:
            sub_18B815380(v46, _s4ItemVMa_2);
            __break(1u);
LABEL_111:
            sub_18B815380(v165, _s4ItemVMa_2);
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            result = sub_18BC22078();
            __break(1u);
            return result;
          }

          sub_18B829704(v156, v46, _s4ItemVMa_2);
          isUniquelyReferenced_nonNull_native = v34[1];
          v55 = v34[2];
          v56 = v55 + ((*(v153 + 80) + 32) & ~*(v153 + 80));
          v57 = *(v55 + 16);
          if (isUniquelyReferenced_nonNull_native)
          {
            sub_18BC1E1A8();
            sub_18B9D0B20(v46, v56, v57, (isUniquelyReferenced_nonNull_native + 16), isUniquelyReferenced_nonNull_native + 32);
            v59 = v58;

            sub_18B815380(v46, _s4ItemVMa_2);
            v34 = v167;
            if ((v59 & 1) == 0)
            {
              goto LABEL_30;
            }

            goto LABEL_102;
          }

          if (!v57)
          {
            goto LABEL_110;
          }

          v63 = *(v153 + 72);
          while (1)
          {
            v64 = v169;
            sub_18B8554D0(v56, v169, _s4ItemVMa_2);
            updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
            sub_18B815380(v64, _s4ItemVMa_2);
            if (updated)
            {
              break;
            }

            v56 += v63;
            if (!--v57)
            {
              goto LABEL_110;
            }
          }

          sub_18B815380(v46, _s4ItemVMa_2);
          v34 = v167;
          v24 = v152;
        }

LABEL_30:
        v66 = v24;
        v67 = v162;
        sub_18B7CA054(v66, v162, &unk_1EA9D92F0);
        sub_18BC1E3F8();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v177[0] = v34[3];
        v68 = *&v177[0];
        v34[3] = 0x8000000000000000;
        v69 = sub_18B83B1C8(v67);
        v71 = *(v68 + 16);
        v72 = (v70 & 1) == 0;
        v73 = __OFADD__(v71, v72);
        v74 = v71 + v72;
        if (v73)
        {
          goto LABEL_96;
        }

        v75 = v70;
        if (*(v68 + 24) < v74)
        {
          break;
        }

        v24 = v152;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_35;
        }

        v81 = v69;
        sub_18BB29D70();
        v69 = v81;
        isUniquelyReferenced_nonNull_native = *&v177[0];
        if ((v75 & 1) == 0)
        {
LABEL_36:
          v46 = v12;
          v77 = v162;
          v39 = v163;
          *(isUniquelyReferenced_nonNull_native + 8 * (v69 >> 6) + 64) |= 1 << v69;
          v78 = v69;
          sub_18B7CA054(v77, *(isUniquelyReferenced_nonNull_native + 48) + *(v151 + 72) * v69, &unk_1EA9D92F0);
          *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v78) = v39;

          sub_18B988BAC(v77, &unk_1EA9D92F0);
          v79 = *(isUniquelyReferenced_nonNull_native + 16);
          v73 = __OFADD__(v79, 1);
          v80 = v79 + 1;
          if (v73)
          {
            goto LABEL_99;
          }

          *(isUniquelyReferenced_nonNull_native + 16) = v80;
          v39 = &unk_18BC42990;
          v46 = v166;
          goto LABEL_5;
        }

LABEL_4:
        *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v69) = v163;

        v39 = &unk_18BC42990;
        sub_18B988BAC(v162, &unk_1EA9D92F0);
LABEL_5:
        ++v45;
        v34 = v167;
        v167[3] = isUniquelyReferenced_nonNull_native;

        swift_endAccess();
        sub_18B988BAC(v24, &unk_1EA9D92F0);
        isUniquelyReferenced_nonNull_native = v149;
        v43 = *(v149 + 16);
        if (v45 == v43)
        {

          goto LABEL_42;
        }
      }

      sub_18B83B9F0(v74, isUniquelyReferenced_nonNull_native);
      v69 = sub_18B83B1C8(v162);
      v24 = v152;
      if ((v75 & 1) != (v76 & 1))
      {
        goto LABEL_113;
      }

LABEL_35:
      isUniquelyReferenced_nonNull_native = *&v177[0];
      if ((v75 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_4;
    }

LABEL_42:
    v82 = v34[2];
    v83 = *(v82 + 2);
    v156 = v34[1];
    if (v83)
    {
      v162 = (*(v153 + 80) + 32) & ~*(v153 + 80);
      v171 = &v82[v162];
      sub_18BC1E1A8();
      sub_18BC1E1A8();
      v46 = 0;
      isUniquelyReferenced_nonNull_native = v157;
      v166 = v82;
      v39 = v148;
      while (v46 < v83)
      {
        v84 = *(v153 + 72);
        v85 = v164;
        sub_18B8554D0(&v171[v84 * v46], v164, _s4ItemVMa_2);
        swift_storeEnumTagMultiPayload();
        v86 = *(isUniquelyReferenced_nonNull_native + 16);
        v173 = *isUniquelyReferenced_nonNull_native;
        v174 = v86;
        v175 = *(isUniquelyReferenced_nonNull_native + 32);
        isUniquelyReferenced_nonNull_native = v159(v85, &v173);
        swift_beginAccess();
        sub_18B7CA054(v85, v155, &unk_1EA9D92F0);
        v87 = swift_getEnumCaseMultiPayload();
        if (v87 > 1)
        {
          if (v87 == 2)
          {
            sub_18B988BAC(v155, &unk_1EA9D92F0);
          }
        }

        else
        {
          v163 = isUniquelyReferenced_nonNull_native;
          if (v87)
          {
            v95 = v165;
            sub_18B829704(v155, v165, _s4ItemVMa_2);
            v97 = v167[1];
            v96 = v167[2];
            v98 = v96 + v162;
            v99 = *(v96 + 16);
            if (v97)
            {
              sub_18BC1E1A8();
              sub_18B9D0B20(v95, v98, v99, (v97 + 16), v97 + 32);
              v101 = v100;

              sub_18B815380(v95, _s4ItemVMa_2);
              isUniquelyReferenced_nonNull_native = v163;
              if (v101)
              {
                goto LABEL_104;
              }
            }

            else
            {
              if (!v99)
              {
                goto LABEL_111;
              }

              while (1)
              {
                v105 = v169;
                sub_18B8554D0(v98, v169, _s4ItemVMa_2);
                v106 = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
                sub_18B815380(v105, _s4ItemVMa_2);
                if (v106)
                {
                  break;
                }

                v98 += v84;
                if (!--v99)
                {
                  goto LABEL_111;
                }
              }

              sub_18B815380(v165, _s4ItemVMa_2);
LABEL_69:
              isUniquelyReferenced_nonNull_native = v163;
            }
          }

          else
          {
            sub_18B829704(v155, v172, _s7SectionVMa_1);
            v89 = v167[4];
            v88 = v167[5];
            v90 = v88 + ((*(v154 + 80) + 32) & ~*(v154 + 80));
            v91 = *(v88 + 16);
            if (!v89)
            {
              if (v91)
              {
                v102 = *(v154 + 72);
                while (1)
                {
                  sub_18B8554D0(v90, v39, _s7SectionVMa_1);
                  if (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0())
                  {
                    v103 = v168;
                    v104 = v39[*(v168 + 20)];
                    sub_18B815380(v39, _s7SectionVMa_1);
                    if (v104 == *(v172 + *(v103 + 20)))
                    {
                      sub_18B815380(v172, _s7SectionVMa_1);
                      goto LABEL_69;
                    }
                  }

                  else
                  {
                    sub_18B815380(v39, _s7SectionVMa_1);
                  }

                  v90 += v102;
                  if (!--v91)
                  {
                    goto LABEL_109;
                  }
                }
              }

              goto LABEL_109;
            }

            sub_18BC1E1A8();
            v92 = v172;
            sub_18B9D0D54(v172, v90, v91, (v89 + 16), v89 + 32);
            v94 = v93;

            sub_18B815380(v92, _s7SectionVMa_1);
            isUniquelyReferenced_nonNull_native = v163;
            if (v94)
            {
              goto LABEL_103;
            }
          }
        }

        v107 = v161;
        sub_18B7CA054(v164, v161, &unk_1EA9D92F0);
        v108 = isUniquelyReferenced_nonNull_native;
        sub_18BC1E3F8();
        isUniquelyReferenced_nonNull_native = v167;
        v109 = swift_isUniquelyReferenced_nonNull_native();
        *&v177[0] = *(isUniquelyReferenced_nonNull_native + 24);
        v110 = *&v177[0];
        *(isUniquelyReferenced_nonNull_native + 24) = 0x8000000000000000;
        v111 = sub_18B83B1C8(v107);
        v113 = *(v110 + 16);
        v114 = (v112 & 1) == 0;
        v73 = __OFADD__(v113, v114);
        v115 = v113 + v114;
        if (v73)
        {
          goto LABEL_98;
        }

        v116 = v112;
        if (*(v110 + 24) >= v115)
        {
          if ((v109 & 1) == 0)
          {
            v124 = v111;
            sub_18BB29D70();
            v111 = v124;
          }
        }

        else
        {
          sub_18B83B9F0(v115, v109);
          v111 = sub_18B83B1C8(v161);
          if ((v116 & 1) != (v117 & 1))
          {
            goto LABEL_113;
          }
        }

        v118 = v166;
        isUniquelyReferenced_nonNull_native = *&v177[0];
        if (v116)
        {
          *(*(*&v177[0] + 56) + 8 * v111) = v108;

          sub_18B988BAC(v161, &unk_1EA9D92F0);
        }

        else
        {
          v119 = v46;
          *(*&v177[0] + 8 * (v111 >> 6) + 64) |= 1 << v111;
          v120 = v111;
          v121 = v161;
          v46 = &unk_1EA9D92F0;
          sub_18B7CA054(v161, *(isUniquelyReferenced_nonNull_native + 48) + *(v151 + 72) * v111, &unk_1EA9D92F0);
          *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v120) = v108;

          sub_18B988BAC(v121, &unk_1EA9D92F0);
          v122 = *(isUniquelyReferenced_nonNull_native + 16);
          v73 = __OFADD__(v122, 1);
          v123 = v122 + 1;
          if (v73)
          {
            goto LABEL_100;
          }

          *(isUniquelyReferenced_nonNull_native + 16) = v123;
          v46 = v119;
        }

        ++v46;
        v34 = v167;
        v167[3] = isUniquelyReferenced_nonNull_native;

        swift_endAccess();
        sub_18B988BAC(v164, &unk_1EA9D92F0);
        v83 = *(v118 + 2);
        isUniquelyReferenced_nonNull_native = v157;
        if (v46 == v83)
        {
          goto LABEL_80;
        }
      }

LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    sub_18BC1E1A8();
    sub_18BC1E1A8();
LABEL_80:
    sub_18B7B171C(v159);
  }

  else
  {
    sub_18B7CA054(a1, &v173, &unk_1EA9D4F90);
  }

  v125 = v146;
  v126 = v145;
  if (v146[qword_1EA9D95E0] == 1)
  {
    result = sub_18B988BAC(v176, &unk_1EA9D4F90);
    v125[qword_1EA9D95E8] = (v125[qword_1EA9D95E8] | v144) & 1;
    return result;
  }

  v128 = *v34;
  v129 = v34[1];
  v130 = v34;
  v131 = v34[2];
  v132 = v34[3];
  v133 = v130[4];
  v46 = v130[5];
  v134 = v145[4];
  v171 = v145[1];
  v172 = v134;
  *v145 = v128;
  v126[1] = v129;
  v126[2] = v131;
  v126[3] = v132;
  v126[4] = v133;
  v126[5] = v46;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  v39 = v146;

  v135 = qword_1EA9D95D0;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = *&v39[v135];
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
LABEL_105:
    v136 = sub_18BC219A8();
    v137 = v145;
    if (!v136)
    {
      goto LABEL_93;
    }

LABEL_86:
    if (v136 < 1)
    {
      __break(1u);
      goto LABEL_108;
    }

    sub_18BC1E3F8();
    v138 = 0;
    do
    {
      if ((isUniquelyReferenced_nonNull_native & 0xC000000000000001) != 0)
      {
        v139 = MEMORY[0x18CFFD010](v138, isUniquelyReferenced_nonNull_native);
      }

      else
      {
        v139 = *(isUniquelyReferenced_nonNull_native + 8 * v138 + 32);
        sub_18BC1E1A8();
      }

      ++v138;
      swift_beginAccess();
      (*(*v139 + 168))(v137);
      swift_endAccess();
    }

    while (v136 != v138);

    goto LABEL_93;
  }

  v136 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  v137 = v145;
  if (v136)
  {
    goto LABEL_86;
  }

LABEL_93:
  v140 = v137[1];
  v177[0] = *v137;
  v177[1] = v140;
  v177[2] = v137[2];
  sub_18B7CA054(v176, &v173, &unk_1EA9D4F90);
  sub_18B7CA054(v177, &v173, &unk_1EA9D4F90);
  sub_18B83E780(v176, v177, &v173);
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (!Strong)
  {
    goto LABEL_112;
  }

  v142 = Strong;
  sub_18B8470C0(&v173, v144 & 1);
  sub_18B988BAC(v176, &unk_1EA9D4F90);

  return sub_18B988BAC(&v173, &unk_1EA9D50E0);
}

void sub_18B83D2AC(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - v8;
  v10 = *(v1 + 40);
  if (v10)
  {
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = *(v1 + 32) & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      MEMORY[0x1EEE9AC00](v7);
      *(&v38 - 2) = v12;
      *(&v38 - 1) = v10;
      sub_18BC1E3F8();
      v13 = sub_18BA3FC0C();
      v15 = v14;

      sub_18BA3FCB4(v13, v15);
      if (*(*(a1 + 16) + 16))
      {
      }

      else
      {
        v16 = *(a1 + 24);
        swift_storeEnumTagMultiPayload();
        v17 = *(v16 + 16);
        v40 = v15;
        v41 = v13;
        if (v17 && (v18 = sub_18B83B1C8(v9), (v19 & 1) != 0))
        {
          v20 = *(*(v16 + 56) + 8 * v18);
          sub_18BC1E3F8();
        }

        else
        {
          v20 = MEMORY[0x1E69E7CD0];
        }

        sub_18B86C50C(v9);
        v21 = *(v20 + 32);
        v22 = v21 & 0x3F;
        v39 = ((1 << v21) + 63) >> 6;
        v23 = 8 * v39;
        v24 = sub_18BC1E3F8();
        if (v22 > 0xD)
        {
          goto LABEL_33;
        }

        while (1)
        {
          v38 = &v38;
          MEMORY[0x1EEE9AC00](v24);
          v42 = &v38 - ((v23 + 15) & 0x3FFFFFFFFFFFFFF0);
          bzero(v42, v23);
          v43 = 0;
          v23 = 0;
          v25 = 1 << *(v20 + 32);
          v26 = -1;
          if (v25 < 64)
          {
            v26 = ~(-1 << v25);
          }

          v27 = v26 & *(v20 + 56);
          v28 = (v25 + 63) >> 6;
          while (v27)
          {
            v29 = __clz(__rbit64(v27));
            v27 &= v27 - 1;
LABEL_22:
            v32 = v29 | (v23 << 6);
            sub_18B833990(*(v20 + 48) + 40 * v32, v51);
            sub_18B833990(v51, &v46);
            if (*(&v47 + 1) < 4uLL)
            {
              sub_18B833D9C(&v46);
              sub_18B833D9C(v51);
              *&v42[(v32 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v32;
              if (__OFADD__(v43++, 1))
              {
                __break(1u);
LABEL_27:
                sub_18BC07944(v42, v39, v43, v20);
                v35 = v34;
                goto LABEL_28;
              }
            }

            else
            {
              sub_18B831014(&v46);
              sub_18B833D9C(v51);
            }
          }

          v30 = v23;
          while (1)
          {
            v23 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              break;
            }

            if (v23 >= v28)
            {
              goto LABEL_27;
            }

            v31 = *(v20 + 56 + 8 * v23);
            ++v30;
            if (v31)
            {
              v29 = __clz(__rbit64(v31));
              v27 = (v31 - 1) & v31;
              goto LABEL_22;
            }
          }

          __break(1u);
LABEL_33:
          sub_18BC1E3F8();
          if (!swift_stdlib_isStackAllocationSafe())
          {
            break;
          }
        }

        v37 = swift_slowAlloc();
        v35 = sub_18BA414B8(v37, v39, v20, sub_18BA4069C);

        MEMORY[0x18CFFEEE0](v37, -1, -1);
LABEL_28:

        v44 = v35;
        if (qword_1EA9D2270 != -1)
        {
          swift_once();
        }

        v51[2] = xmmword_1EA9F7DF0;
        v51[3] = *&qword_1EA9F7E00;
        v51[4] = xmmword_1EA9F7E10;
        v51[0] = xmmword_1EA9F7DD0;
        v51[1] = unk_1EA9F7DE0;
        v48 = xmmword_1EA9F7DF0;
        v49 = *&qword_1EA9F7E00;
        v50 = xmmword_1EA9F7E10;
        v46 = xmmword_1EA9F7DD0;
        v47 = unk_1EA9F7DE0;
        sub_18B828980(v51, v45);
        sub_18B86C1C0();
        sub_18BC21A68();
        sub_18B839B3C(&v46, v45);
        sub_18B833D9C(&v46);
        v36 = v44;
        swift_storeEnumTagMultiPayload();
        sub_18B83A52C(v36, v5);

        sub_18B86C50C(v5);
      }
    }
  }
}

id sub_18B83D7A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, double a5, double a6)
{
  v8 = v6;
  sub_18B83E000(a1, &aBlock);
  if (v59)
  {
    p_aBlock = &aBlock;
    sub_18B7C3FA4(&aBlock, v62);
    v15 = *(v6 + 40);
    v16 = *(v15 + 24);
    if (v16 > 0)
    {
      goto LABEL_5;
    }

    [*(v6 + 48) contentOffset];
    v18 = v17;
    v20 = v19;
    v6 = swift_allocObject();
    *(v6 + 16) = v8;
    *(v6 + 24) = v18;
    *(v6 + 32) = v20;
    v21 = objc_opt_self();
    v22 = swift_allocObject();
    *(v22 + 16) = sub_18B83FCC8;
    *(v22 + 24) = v6;
    v7 = swift_allocObject();
    v7[2] = sub_18B9D53AC;
    v7[3] = v22;
    v60 = sub_18B9D53B0;
    v61 = v7;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v58 = sub_18B7E3BF4;
    v59 = &block_descriptor_83;
    p_aBlock = _Block_copy(&aBlock);
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    sub_18BC1E1A8();

    [v21 performWithoutAnimation_];
    _Block_release(p_aBlock);
    LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

    if ((v21 & 1) == 0)
    {
      v15 = *(v8 + 40);
      v16 = *(v15 + 24);
LABEL_5:
      v24 = __OFADD__(v16, 1);
      v25 = v16 + 1;
      if (v24)
      {
        __break(1u);
      }

      else
      {
        *(v15 + 24) = v25;
        if (v25 == 1)
        {
          swift_beginAccess();
          v26 = *(v15 + 16);
          v27 = *(v26 + 16);
          if (v27)
          {
            sub_18BC1E1A8();
            sub_18BC1E3F8();
            v28 = v26 + 40;
            do
            {
              v29 = *(v28 - 8);
              LOBYTE(aBlock) = *(v15 + 24) > 0;
              sub_18BC1E1A8();
              v29(&aBlock);

              v28 += 16;
              --v27;
            }

            while (v27);
          }
        }

        v6 = *(v8 + 40);
        v30 = __swift_project_boxed_opaque_existential_1Tm(v62, v63);
        v31 = swift_allocObject();
        *(v31 + 16) = v8;
        *(v31 + 24) = a5;
        *(v31 + 32) = a6;
        *(v31 + 40) = v6;
        *(v31 + 48) = a2 & 1;
        p_aBlock = *v30;
        a2 = swift_allocObject();
        *(a2 + 16) = sub_18BA22F98;
        *(a2 + 24) = v31;
        swift_beginAccess();
        v7 = *(p_aBlock + 3);
        swift_retain_n();
        sub_18BC1E1A8();
        sub_18BC1E1A8();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(p_aBlock + 3) = v7;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_12;
        }
      }

      v7 = sub_18B9B5814(0, v7[2] + 1, 1, v7);
      *(p_aBlock + 3) = v7;
LABEL_12:
      v34 = v7[2];
      v33 = v7[3];
      if (v34 >= v33 >> 1)
      {
        v7 = sub_18B9B5814((v33 > 1), v34 + 1, 1, v7);
      }

      v7[2] = v34 + 1;
      v35 = &v7[2 * v34];
      v35[4] = sub_18B7D1E94;
      v35[5] = a2;
      *(p_aBlock + 3) = v7;
      swift_endAccess();

      v36 = __swift_project_boxed_opaque_existential_1Tm(v62, v63);
      v37 = swift_allocObject();
      v37[2] = v8;
      v37[3] = v6;
      v37[4] = a3;
      v37[5] = a4;
      v38 = *v36;
      v39 = swift_allocObject();
      *(v39 + 16) = sub_18BA22FCC;
      *(v39 + 24) = v37;
      swift_beginAccess();
      v40 = *(v38 + 32);
      sub_18BC1E1A8();
      sub_18BC1E1A8();
      sub_18B824D48(a3);
      sub_18BC1E1A8();
      v41 = swift_isUniquelyReferenced_nonNull_native();
      *(v38 + 32) = v40;
      if ((v41 & 1) == 0)
      {
        v40 = sub_18B9B5814(0, v40[2] + 1, 1, v40);
        *(v38 + 32) = v40;
      }

      v43 = v40[2];
      v42 = v40[3];
      if (v43 >= v42 >> 1)
      {
        v40 = sub_18B9B5814((v42 > 1), v43 + 1, 1, v40);
      }

      v40[2] = v43 + 1;
      v44 = &v40[2 * v43];
      v44[4] = sub_18B9D53B0;
      v44[5] = v39;
      *(v38 + 32) = v40;
      swift_endAccess();

      return __swift_destroy_boxed_opaque_existential_1Tm(v62);
    }

LABEL_26:
    __break(1u);
    return result;
  }

  sub_18B83E6A8(&aBlock);
  type metadata accessor for Assertion();
  v45 = swift_allocObject();
  *(v45 + 16) = MEMORY[0x1E69E7CC0];
  *(v45 + 24) = 0;
  *(v6 + 40) = v45;

  v46 = *(v6 + 48);
  [*(v8 + 48) contentOffset];
  v48 = v47;
  v50 = v49;
  v51 = swift_allocObject();
  v51[2] = v8;
  v51[3] = v48;
  v51[4] = v50;
  v52 = objc_opt_self();
  v53 = swift_allocObject();
  *(v53 + 16) = sub_18B83FCC8;
  *(v53 + 24) = v51;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_18B9D53AC;
  *(v54 + 24) = v53;
  v60 = sub_18B9D53B0;
  v61 = v54;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v58 = sub_18B7E3BF4;
  v59 = &block_descriptor_68;
  v55 = _Block_copy(&aBlock);
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v52 performWithoutAnimation_];
  _Block_release(v55);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_26;
  }

  result = [v46 setContentOffset_];
  if (a3)
  {
    return a3(1);
  }

  return result;
}

uint64_t sub_18B83DED0()
{

  return swift_deallocObject();
}

uint64_t sub_18B83DF08()
{

  return swift_deallocObject();
}

uint64_t sub_18B83DF50()
{

  return swift_deallocObject();
}

uint64_t sub_18B83DF90()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18B83E000(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5060);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B83E070(uint64_t *a1)
{
  v2 = v1;
  v58 = a1;
  v3 = *v1;
  v4 = *(*v1 + 176);
  v52 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v51 = &v43 - v5;
  v7 = *(v6 + 184);
  v8 = sub_18BC21848();
  v53 = *(v8 - 8);
  v54 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v43 - v11;
  v13 = sub_18BC1EDD8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v1[4];
  v17 = sub_18BC20E78();
  WitnessTable = swift_getWitnessTable();
  v57 = v17;
  if ((sub_18BC21198() & 1) == 0)
  {
    v59[0] = v1[4];
    v62 = v4;
    v63 = v7;
    v18 = *(v3 + 208);
    v64 = *(v3 + 192);
    v65 = v18;
    v19 = type metadata accessor for SFFluidCollectionView.DataSource.Snapshot();
    SFFluidCollectionView.DataSource.Snapshot.deleteItems<A>(_:)(v59, v19, v57, WitnessTable);
  }

  v20 = qword_1EA9F8260;
  swift_beginAccess();
  sub_18B83E710(v2 + v20, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_18B988BAC(v12, &unk_1EA9D5BD0);
  }

  v46 = v14;
  (*(v14 + 32))(v16, v12, v13);
  v49 = v13;
  v44 = sub_18BC1EDB8();
  v22 = v58[1];
  v23 = v3;
  v24 = v4;
  v26 = v58[2];
  v25 = v58[3];
  v27 = v58[4];
  v28 = v58[5];
  v62 = *v58;
  v63 = v22;
  *&v64 = v26;
  *(&v64 + 1) = v25;
  *&v65 = v27;
  *(&v65 + 1) = v28;
  sub_18BC1E1A8();
  v45 = v28;
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  v47 = v16;
  v29 = sub_18BC1EDC8();
  v48 = v24;
  v59[0] = v24;
  v59[1] = v7;
  v30 = *(v23 + 208);
  v60 = *(v23 + 192);
  v61 = v30;
  v31 = type metadata accessor for SFFluidCollectionView.DataSource.Snapshot();
  v50 = SFFluidCollectionView.DataSource.Snapshot.numberOfItems(inSectionAt:)(v29);

  sub_18B85EDB0(v7, v7);
  v32 = *(v7 - 8);
  swift_allocObject();
  v33 = sub_18BC20DB8();
  v35 = v34;
  v36 = *(*v2 + 240);
  swift_beginAccess();
  v37 = v2 + v36;
  v38 = v55;
  (*(v53 + 16))(v55, v37, v54);
  result = (*(v32 + 48))(v38, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (v50 >= v44)
    {
      v39 = v44;
    }

    else
    {
      v39 = v50;
    }

    (*(v32 + 32))(v35, v38, v7);
    v59[0] = sub_18B82D294(v33);
    v40 = v47;
    sub_18BC1EDC8();
    v41 = v51;
    v42 = v48;
    sub_18BC21C08();
    SFFluidCollectionView.DataSource.Snapshot.insertItems<A>(_:at:in:)(v59, v39, v41, v31, v57, WitnessTable);
    (*(v52 + 8))(v41, v42);

    return (*(v46 + 8))(v40, v49);
  }

  return result;
}

uint64_t sub_18B83E6A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18B83E710(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B83E780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v123 = a3;
  v149 = _s4ItemVMa_2();
  v142 = *(v149 - 1);
  v5 = MEMORY[0x1EEE9AC00](v149);
  v136 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v137 = &v122 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v122 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v148 = &v122 - v12;
  v150 = _s7SectionVMa_1();
  v140 = *(v150 - 8);
  v13 = MEMORY[0x1EEE9AC00](v150);
  v130 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v129 = &v122 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v122 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v134 = &v122 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v135 = &v122 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v122 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5120);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v146 = &v122 - v27;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5128);
  v138 = *(v128 - 8);
  v28 = MEMORY[0x1EEE9AC00](v128);
  v125 = &v122 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v126 = &v122 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5130);
  v32 = *(v31 - 8);
  v143 = v31;
  v144 = v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v122 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v131 = &v122 - v36;
  *&v158[0] = MEMORY[0x1E69E7CD0];
  v37 = *(a1 + 16);
  *(v158 + 8) = *a1;
  *(&v158[1] + 8) = v37;
  *(&v158[2] + 8) = *(a1 + 32);
  v38 = a2;
  v39 = *(a2 + 16);
  *(&v158[3] + 8) = *a2;
  *(&v158[4] + 8) = v39;
  *(&v158[5] + 8) = *(a2 + 32);
  v40 = *(a2 + 8);
  v145 = *(v38 + 16);
  v41 = v38;
  v132 = v38;
  v133 = a1;
  v42 = *(a1 + 8);
  v147 = *(a1 + 16);
  sub_18B7CA054(a1, &v152, &unk_1EA9D4F90);
  sub_18B7CA054(v41, &v152, &unk_1EA9D4F90);
  sub_18B812E34(&qword_1EA9D9230, 255, _s4ItemVMa_2);
  v139 = v42;
  v141 = v40;
  sub_18BC1F058();
  v43 = v131;
  v44 = v143;
  sub_18BC21DF8();
  (*(v144 + 8))(v35, v44);
  sub_18B83F760(v43, &v152);
  v124 = v152;
  v127 = v153;
  v154 = v152;
  *v155 = v153;
  v46 = *(v132 + 32);
  v45 = *(v132 + 40);
  v47 = *(v133 + 40);
  sub_18B812E34(&qword_1EA9D5138, 255, _s7SectionVMa_1);
  v48 = v125;
  v143 = v47;
  v144 = v45;
  v131 = v46;
  sub_18BC1F058();
  v49 = v126;
  v50 = v128;
  sub_18BC21DF8();
  (*(v138 + 8))(v48, v50);
  sub_18B83FCCC(v49, &v152);
  v126 = *(&v152 + 1);
  v128 = v152;
  v138 = v153;
  *&v155[8] = v152;
  *&v155[24] = v153;
  sub_18B84022C();
  sub_18B84022C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  sub_18B7B0B08(&qword_1EA9D9F90, &unk_1EA9D92F0);
  v51 = v146;
  sub_18BC1F058();

  sub_18B841DF8(v51, &v152);
  v52 = sub_18B843E70(sub_18B85B6D0, 0, v124);
  v53 = sub_18B844028(v52);

  v54 = sub_18B843E70(sub_18B85B6D0, 0, *(&v124 + 1));
  v55 = sub_18B844028(v54);

  v56 = sub_18B9B9B74(v127, _s4ItemVMa_2, _s4ItemVMa_2, 1, _s4ItemVMa_2);
  v57 = sub_18B844028(v56);

  sub_18BC1E3F8();
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  sub_18B845298(v53);
  sub_18B845298(v55);
  sub_18B845298(v57);

  v58 = sub_18B846900(sub_18B85B7C0, 0, v128);
  v59 = sub_18B844028(v58);
  v60 = v145;

  v61 = sub_18B846900(sub_18B85B7C0, 0, v126);
  v62 = sub_18B844028(v61);

  v63 = sub_18B9B9B74(v138, _s7SectionVMa_1, _s7SectionVMa_1, 0, _s7SectionVMa_1);
  v64 = sub_18B844028(v63);

  v146 = v59;
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  sub_18B845298(v59);
  sub_18B845298(v62);
  v65 = MEMORY[0x1E69E7CD0];
  sub_18B845298(v64);
  v66 = v147;

  v156 = v152;
  *&v157 = v153;
  v151 = v65;
  v67 = *(v60 + 16);
  if (v67)
  {
    v68 = v142;
    v69 = (*(v68 + 80) + 32) & ~*(v68 + 80);
    v138 = v60 + v69;
    v146 = (v66 + v69);
    sub_18BC1E1A8();
    result = sub_18BC1E1A8();
    v71 = 0;
    v72 = v68;
    v73 = v148;
    while (1)
    {
      if (v71 >= v67)
      {
        __break(1u);
        goto LABEL_62;
      }

      v75 = *(v72 + 72);
      sub_18B8554D0(v138 + v75 * v71, v73, _s4ItemVMa_2);
      v76 = *(v66 + 16);
      v77 = v139;
      if (v139)
      {
        sub_18BC1E1A8();
        v78 = sub_18B9D0B20(v73, v146, v76, (v77 + 16), v77 + 32);
        v80 = v79;

        if (v80)
        {
          goto LABEL_6;
        }

        if ((v78 & 0x8000000000000000) != 0)
        {
          goto LABEL_63;
        }
      }

      else
      {
        if (!v76)
        {
          goto LABEL_6;
        }

        v78 = 0;
        v81 = v146;
        while (1)
        {
          sub_18B8554D0(v81, v11, _s4ItemVMa_2);
          updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
          result = sub_18B815380(v11, _s4ItemVMa_2);
          if (updated)
          {
            break;
          }

          ++v78;
          v81 += v75;
          v73 = v148;
          if (v76 == v78)
          {
            goto LABEL_6;
          }
        }

        v73 = v148;
      }

      if (v78 >= *(v147 + 16))
      {
        goto LABEL_64;
      }

      v83 = v137;
      sub_18B8554D0(&v146[v78 * v75], v137, _s4ItemVMa_2);
      if (*v73 != *v83)
      {
        goto LABEL_4;
      }

      v84 = v149[7];
      v85 = v83[v84];
      if (v73[v149[6]] != v85 || v85 != v73[v84] || v73[v149[8]] != v83[v149[8]] || v73[v149[9]] != v83[v149[9]] || *&v73[v149[10]] != *&v83[v149[10]] || (sub_18B86E84C(*&v73[v149[12]], *&v83[v149[12]]) & 1) == 0)
      {
        goto LABEL_4;
      }

      v86 = v149[13];
      v87 = &v73[v86];
      v88 = *&v73[v86 + 8];
      v89 = &v83[v86];
      v90 = *(v89 + 1);
      if (v88)
      {
        break;
      }

      if (v90)
      {
        goto LABEL_4;
      }

LABEL_5:
      sub_18B815380(v83, _s4ItemVMa_2);
LABEL_6:
      ++v71;
      result = sub_18B815380(v73, _s4ItemVMa_2);
      v60 = v145;
      v67 = *(v145 + 16);
      v66 = v147;
      v72 = v142;
      if (v71 == v67)
      {

        v65 = v151;
        goto LABEL_33;
      }
    }

    if (v90 && (*v87 == *v89 && v88 == v90 || (sub_18BC21FD8() & 1) != 0))
    {
      goto LABEL_5;
    }

LABEL_4:
    v74 = v136;
    sub_18B8554D0(v73, v136, _s4ItemVMa_2);
    sub_18B85A4D8(v11, v74);
    sub_18B815380(v11, _s4ItemVMa_2);
    goto LABEL_5;
  }

LABEL_33:
  *(&v157 + 1) = v65;
  v91 = v144;
  v92 = *(v144 + 16);
  if (!v92)
  {
    sub_18BC1E3F8();
LABEL_51:
    v110 = sub_18B846EA0(v147, v60);
    v112 = v132;
    v111 = v133;
    if (v110 & 1) != 0 && (sub_18B846DD4(*v133, *v132) & 1) != 0 && (sub_18B846FD8(v143, v91))
    {
      v113 = sub_18B846998(*(v111 + 24), *(v112 + 24));
      sub_18B988BAC(v112, &unk_1EA9D4F90);
      sub_18B988BAC(v111, &unk_1EA9D4F90);
      if (v113)
      {
        v114 = v123;
        if (*(v65 + 2))
        {

          v115 = 0;
        }

        else
        {
          v121 = *(*&v158[0] + 16);

          v115 = v121 == 0;
        }

        goto LABEL_59;
      }
    }

    else
    {
      sub_18B988BAC(v112, &unk_1EA9D4F90);
      sub_18B988BAC(v111, &unk_1EA9D4F90);
    }

    v115 = 0;
    v114 = v123;
LABEL_59:
    BYTE8(v158[6]) = v115;
    v116 = v158[4];
    v114[8] = v158[3];
    v114[9] = v116;
    v114[10] = v158[5];
    v117 = v158[0];
    v114[4] = v157;
    v114[5] = v117;
    v118 = v158[2];
    v114[6] = v158[1];
    v114[7] = v118;
    v119 = *v155;
    *v114 = v154;
    v114[1] = v119;
    v120 = v156;
    v114[2] = *&v155[16];
    v114[3] = v120;
    *(v114 + 169) = *(&v158[5] + 9);
    return result;
  }

  v93 = (*(v140 + 80) + 32) & ~*(v140 + 80);
  v94 = v144 + v93;
  v95 = v143 + v93;
  v149 = v65;
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  result = sub_18BC1E1A8();
  v96 = 0;
  while (v96 < *(v91 + 16))
  {
    v97 = *(v140 + 72);
    sub_18B8554D0(v94 + v97 * v96, v25, _s7SectionVMa_1);
    v98 = *(v143 + 16);
    if (v98)
    {
      v99 = v95;
      while (1)
      {
        sub_18B8554D0(v99, v19, _s7SectionVMa_1);
        if ((_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0() & 1) != 0 && v19[*(v150 + 20)] == v25[*(v150 + 20)])
        {
          break;
        }

        sub_18B815380(v19, _s7SectionVMa_1);
        v99 += v97;
        if (!--v98)
        {
          goto LABEL_36;
        }
      }

      v100 = v134;
      sub_18B829704(v19, v134, _s7SectionVMa_1);
      v101 = v100;
      v102 = v135;
      sub_18B829704(v101, v135, _s7SectionVMa_1);
      v103 = *(v150 + 32);
      v104 = *&v25[v103];
      v105 = *&v25[v103 + 8];
      v106 = (v102 + v103);
      v107 = v104 == *v106 && v105 == v106[1];
      if (!v107 && (sub_18BC21FD8() & 1) == 0)
      {
        v108 = v130;
        sub_18B8554D0(v25, v130, _s7SectionVMa_1);
        v109 = v129;
        sub_18B85A99C(v129, v108);
        sub_18B815380(v109, _s7SectionVMa_1);
      }

      sub_18B815380(v135, _s7SectionVMa_1);
    }

LABEL_36:
    ++v96;
    result = sub_18B815380(v25, _s7SectionVMa_1);
    v91 = v144;
    if (v96 == v92)
    {

      v60 = v145;
      v65 = v149;
      goto LABEL_51;
    }
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

uint64_t sub_18B83F728()
{

  return swift_deallocClassInstance();
}

uint64_t sub_18B83F760@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v45 = a2;
  v3 = _s4ItemVMa_2();
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v49 = &v42 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v48 = &v42 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5190);
  v11 = MEMORY[0x1EEE9AC00](v52);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5130);
  v46 = *(v16 - 8);
  v17 = v46;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v42 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5198);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v42 - v22;
  v24 = MEMORY[0x1E69E7CD0];
  v55 = MEMORY[0x1E69E7CD0];
  v56 = MEMORY[0x1E69E7CD0];
  v54 = MEMORY[0x1E69E7CD0];
  v25 = *(v17 + 16);
  v44 = a1;
  v25(v19, a1, v16);
  v25(v23, v19, v16);
  v26 = *(v21 + 44);
  sub_18B7B0B08(&qword_1EA9D51A0, &qword_1EA9D5130);
  sub_18BC21128();
  v27 = *(v46 + 8);
  v46 += 8;
  v27(v19, v16);
  sub_18BC21158();
  v28 = v24;
  v29 = v24;
  if (*&v23[v26] != v53[0])
  {
    v43 = v27;
    v51 = v13 + 8;
    while (1)
    {
      v34 = sub_18BC211C8();
      sub_18B7CA054(v35, v15, &qword_1EA9D5190);
      v34(v53, 0);
      sub_18BC21168();
      sub_18B7CF39C(v15, v13, &qword_1EA9D5190);
      LODWORD(v34) = swift_getEnumCaseMultiPayload();
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D51A8);
      v37 = *(v36 + 48);
      v38 = v51[*(v36 + 64)];
      if (v34 == 1)
      {
        v30 = v48;
        sub_18B829704(&v13[v37], v48, _s4ItemVMa_2);
        if (!v38)
        {
          goto LABEL_5;
        }

        v30 = v48;
        v39 = v50;
        sub_18B8554D0(v48, v50, _s4ItemVMa_2);
        v32 = v39;
      }

      else
      {
        v30 = v47;
        sub_18B829704(&v13[v37], v47, _s4ItemVMa_2);
        v31 = v50;
        sub_18B8554D0(v30, v50, _s4ItemVMa_2);
        v32 = v31;
      }

      v33 = v49;
      sub_18B85A4D8(v49, v32);
      sub_18B815380(v33, _s4ItemVMa_2);
LABEL_5:
      sub_18B815380(v30, _s4ItemVMa_2);
      sub_18BC21158();
      if (*&v23[v26] == v53[0])
      {
        v28 = v55;
        v29 = v56;
        v24 = v54;
        v27 = v43;
        break;
      }
    }
  }

  v27(v44, v16);
  result = sub_18B988BAC(v23, &qword_1EA9D5198);
  v41 = v45;
  *v45 = v29;
  v41[1] = v28;
  v41[2] = v24;
  return result;
}

uint64_t sub_18B83FCCC@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v45 = a2;
  v3 = _s7SectionVMa_1();
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v49 = &v42 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v48 = &v42 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5170);
  v11 = MEMORY[0x1EEE9AC00](v52);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5128);
  v46 = *(v16 - 8);
  v17 = v46;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v42 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5178);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v42 - v22;
  v24 = MEMORY[0x1E69E7CD0];
  v55 = MEMORY[0x1E69E7CD0];
  v56 = MEMORY[0x1E69E7CD0];
  v54 = MEMORY[0x1E69E7CD0];
  v25 = *(v17 + 16);
  v44 = a1;
  v25(v19, a1, v16);
  v25(v23, v19, v16);
  v26 = *(v21 + 44);
  sub_18B7B0B08(&qword_1EA9D5180, &qword_1EA9D5128);
  sub_18BC21128();
  v27 = *(v46 + 8);
  v46 += 8;
  v27(v19, v16);
  sub_18BC21158();
  v28 = v24;
  v29 = v24;
  if (*&v23[v26] != v53[0])
  {
    v43 = v27;
    v51 = v13 + 8;
    while (1)
    {
      v34 = sub_18BC211C8();
      sub_18B7CA054(v35, v15, &qword_1EA9D5170);
      v34(v53, 0);
      sub_18BC21168();
      sub_18B7CF39C(v15, v13, &qword_1EA9D5170);
      LODWORD(v34) = swift_getEnumCaseMultiPayload();
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5188);
      v37 = *(v36 + 48);
      v38 = v51[*(v36 + 64)];
      if (v34 == 1)
      {
        v30 = v48;
        sub_18B829704(&v13[v37], v48, _s7SectionVMa_1);
        if (!v38)
        {
          goto LABEL_5;
        }

        v30 = v48;
        v39 = v50;
        sub_18B8554D0(v48, v50, _s7SectionVMa_1);
        v32 = v39;
      }

      else
      {
        v30 = v47;
        sub_18B829704(&v13[v37], v47, _s7SectionVMa_1);
        v31 = v50;
        sub_18B8554D0(v30, v50, _s7SectionVMa_1);
        v32 = v31;
      }

      v33 = v49;
      sub_18B85A99C(v49, v32);
      sub_18B815380(v33, _s7SectionVMa_1);
LABEL_5:
      sub_18B815380(v30, _s7SectionVMa_1);
      sub_18BC21158();
      if (*&v23[v26] == v53[0])
      {
        v28 = v55;
        v29 = v56;
        v24 = v54;
        v27 = v43;
        break;
      }
    }
  }

  v27(v44, v16);
  result = sub_18B988BAC(v23, &qword_1EA9D5178);
  v41 = v45;
  *v45 = v29;
  v41[1] = v28;
  v41[2] = v24;
  return result;
}

void sub_18B84022C()
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5168);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v26 - v1;
  v2 = *(v0 + 24);
  v3 = *(v2 + 64);
  v28 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v3;
  v27 = (v4 + 63) >> 6;
  v31 = v2;
  sub_18BC1E3F8();
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (v6)
  {
    v34 = v8;
LABEL_11:
    v10 = __clz(__rbit64(v6)) | (v7 << 6);
    v11 = v31;
    v12 = *(v31 + 48);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
    v32 = *(v13 - 8);
    v33 = v13;
    v14 = v29;
    v15 = sub_18B7CA054(v12 + *(v32 + 72) * v10, v29, &unk_1EA9D92F0);
    v16 = *(*(v11 + 56) + 8 * v10);
    *(v14 + *(v30 + 48)) = v16;
    MEMORY[0x1EEE9AC00](v15);
    *(&v26 - 2) = v14;
    sub_18BC1E3F8();
    v17 = sub_18B8405C4(sub_18B840D54, (&v26 - 4), v16);
    sub_18B988BAC(v14, &qword_1EA9D5168);
    v18 = *(v17 + 16);
    v8 = v34;
    v19 = v34[2];
    v20 = v19 + v18;
    if (__OFADD__(v19, v18))
    {
      goto LABEL_25;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v20 > v8[3] >> 1)
    {
      if (v19 <= v20)
      {
        v22 = v19 + v18;
      }

      else
      {
        v22 = v19;
      }

      v8 = sub_18B841200(isUniquelyReferenced_nonNull_native, v22, 1, v8);
    }

    v6 &= v6 - 1;
    if (*(v17 + 16))
    {
      if ((v8[3] >> 1) - v8[2] < v18)
      {
        goto LABEL_27;
      }

      swift_arrayInitWithCopy();

      if (v18)
      {
        v23 = v8[2];
        v24 = __OFADD__(v23, v18);
        v25 = v23 + v18;
        if (v24)
        {
          goto LABEL_28;
        }

        v8[2] = v25;
      }
    }

    else
    {

      if (v18)
      {
        goto LABEL_26;
      }
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v27)
    {

      sub_18B841510(v8);
      return;
    }

    v6 = *(v28 + 8 * v9);
    ++v7;
    if (v6)
    {
      v34 = v8;
      v7 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

id sub_18B840550()
{
  v1 = *(v0 + 2);
  v2 = v0[3];
  v3 = v0[4];
  [*(v1 + 48) setContentOffset_];
  [*(v1 + 24) setValue_];
  v4 = *(v1 + 32);

  return [v4 setValue_];
}

uint64_t sub_18B8405C4(void (*a1)(_BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a1;
  v32 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v35 = &v28 - v7;
  v8 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_18B8408D8(0, v8, 0);
    v36 = v38;
    v34 = a3 + 56;
    v10 = sub_18BC21918();
    v11 = v10;
    v12 = 0;
    v28 = a3 + 64;
    v29 = v8;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a3 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v34 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_23;
      }

      v16 = *(a3 + 36);
      sub_18B833990(*(a3 + 48) + 40 * v11, v37);
      v31(v37);
      v33 = v4;
      v10 = v37;
      if (v4)
      {
        goto LABEL_27;
      }

      sub_18B833D9C(v37);
      v17 = v36;
      v38 = v36;
      v19 = *(v36 + 16);
      v18 = *(v36 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_18B8408D8(v18 > 1, v19 + 1, 1);
        v17 = v38;
      }

      *(v17 + 16) = v19 + 1;
      v20 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v36 = v17;
      v10 = sub_18B840ED0(v35, v17 + v20 + *(v30 + 72) * v19);
      v13 = 1 << *(a3 + 32);
      if (v11 >= v13)
      {
        goto LABEL_24;
      }

      v21 = *(v34 + 8 * v15);
      if ((v21 & (1 << v11)) == 0)
      {
        goto LABEL_25;
      }

      if (v16 != *(a3 + 36))
      {
        goto LABEL_26;
      }

      v22 = v21 & (-2 << (v11 & 0x3F));
      if (v22)
      {
        v13 = __clz(__rbit64(v22)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v14 = v29;
      }

      else
      {
        v23 = v15 << 6;
        v24 = v15 + 1;
        v14 = v29;
        v25 = (v28 + 8 * v15);
        while (v24 < (v13 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            v10 = sub_18B7B4FF8(v11, v16, 0);
            v13 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        v10 = sub_18B7B4FF8(v11, v16, 0);
      }

LABEL_4:
      ++v12;
      v11 = v13;
      v4 = v33;
      if (v12 == v14)
      {
        return v36;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    sub_18B833D9C(v10);

    __break(1u);
  }

  return result;
}

size_t sub_18B8408D8(size_t a1, int64_t a2, char a3)
{
  result = sub_18B840918(a1, a2, a3, *v3, &qword_1EA9D4CA0, &unk_18BC4F890, &unk_1EA9D92F0);
  *v3 = result;
  return result;
}

size_t sub_18B840918(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
LABEL_30:
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

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void sub_18B840B00(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_18B840B68(v4);
}

uint64_t sub_18B840B68(void *a1)
{
  v3 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  v4 = sub_18BC1E1A8();
  v3(v4);

  [a1 contentOffset];
  v6 = v5;
  v8 = v7;
  v9 = sub_18B7CC308();
  v10 = *(v9 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 32);
  v11 = *(v9 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 40);

  if (v6 != v10 || v8 != v11)
  {
    [v1 setNeedsLayout];
  }

  if (*(v1 + qword_1EA9D6BD0))
  {
    sub_18BC1E1A8();
    sub_18B840D74(a1);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_18B842370();
    swift_unknownObjectRelease();
  }

  return sub_18BA50F18();
}

uint64_t sub_18B840C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5090);
  v7 = swift_allocBox();
  v9 = v8;
  v10 = *(v6 + 48);
  sub_18B833990(a1, v8);
  sub_18B7CA054(a2, v9 + v10, &unk_1EA9D92F0);
  *a3 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18B840D74(uint64_t result)
{
  if (*(*(v1 + 24) + 24) <= 0)
  {
    v2 = result;
    swift_beginAccess();
    v3 = *(v1 + 32);
    if (*(v3 + 16))
    {
      sub_18BC1E3F8();
      v4 = sub_18B7E172C(v2);
      if (v5)
      {
        sub_18B7CE7E4(*(v3 + 56) + 16 * v4, v7);

        v6 = sub_18B7CDFCC(v7, v8);
        MEMORY[0x1EEE9AC00](v6);
        sub_18BAE7E18(sub_18B840EC4);
        return sub_18B7E1848(v8);
      }
    }

    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

uint64_t sub_18B840ED0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_18B840F40(uint64_t a1, void *a2, uint64_t a3)
{
  swift_unknownObjectUnownedLoadStrong();
  v6 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  [a2 contentOffset];
  v8 = (*(v6 + 32))(ObjectType, v6);
  v10 = v9;
  swift_unknownObjectRelease();
  swift_beginAccess();
  v11 = *(a3 + 32);
  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 64);
  v15 = (v12 + 63) >> 6;
  sub_18BC1E3F8();
  v16 = 0;
  if (!v14)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v24 = v16;
LABEL_14:
      v27 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v28 = v27 | (v24 << 6);
      v29 = *(*(v11 + 48) + 8 * v28);
      sub_18B7CE7E4(*(v11 + 56) + 16 * v28, v32);
      v33 = v29;
      sub_18B7CDFCC(v32, v34);
      v30 = v29;
      v26 = v24;
LABEL_15:
      sub_18B7CE840(&v33, &v35);
      v31 = v35;
      if (!v35)
      {

        return;
      }

      sub_18B7CDFCC(&v36, &v33);
      sub_18B7B0AC0(0, &qword_1EA9D5BE0);
      if (sub_18BC215C8())
      {
        break;
      }

      swift_unknownObjectUnownedLoadStrong();
      v17 = v34[0];
      v18 = swift_getObjectType();
      v19 = (*(v17 + 24))(v18, v17, v8, v10);
      v21 = v20;
      swift_unknownObjectRelease();
      [v31 setContentOffset_];
      swift_unknownObjectUnownedLoadStrong();
      v22 = v34[0];
      v23 = swift_getObjectType();
      (*(v22 + 56))(a2, v23, v22);

      swift_unknownObjectRelease();
      sub_18B7E1848(&v33);
      v16 = v26;
      if (!v14)
      {
        goto LABEL_7;
      }
    }

    sub_18B7E1848(&v33);

    v16 = v26;
  }

  while (v14);
LABEL_7:
  if (v15 <= v16 + 1)
  {
    v25 = v16 + 1;
  }

  else
  {
    v25 = v15;
  }

  v26 = v25 - 1;
  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v15)
    {
      v14 = 0;
      v33 = 0;
      v34[0] = 0;
      v34[1] = 0;
      goto LABEL_15;
    }

    v14 = *(v11 + 64 + 8 * v24);
    ++v16;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

size_t sub_18B841200(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4CA0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
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

void sub_18B8413F0(void *a1)
{
  v3 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  v4 = sub_18BC1E1A8();
  v3(v4);

  [a1 contentOffset];
  v6 = v5;
  v8 = v7;
  v9 = sub_18B7D292C();
  v10 = *&v9[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_scrollViewState + 32];
  v11 = *&v9[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_scrollViewState + 40];

  if (v6 != v10 || v8 != v11)
  {
    [v1 setNeedsLayout];
  }

  if (*(v1 + qword_1ED651610))
  {
    sub_18BC1E1A8();
    sub_18B840D74(a1);
  }
}

void sub_18B841510(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v21 - v7;
  v9 = sub_18B8390A8();
  v10 = sub_18B841C88(&v24, a1, 0, 1, v9);
  v11 = *(a1 + 16);
  v12 = v24;
  if (v24 != v11)
  {
    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 >= v24)
    {
      v23 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v22 = a1 + v23;
      sub_18BB598B0(a1, a1 + v23, 0, (2 * v24) | 1);
      v25 = v10;
      v26 = v13;
      if (*(a1 + 16) >= v11)
      {
        v21[1] = v10;
        v21[2] = a1;
        v14 = *(v3 + 72);
        sub_18BC1E1A8();
        while (1)
        {
          sub_18B83AA0C(v22 + v14 * v12, v8);
          v15 = v25;
          v16 = v26 + v23;
          v17 = *(v26 + 16);
          if (v25)
          {
            sub_18BC1E1A8();
            sub_18B9D0FB8(v8, v16, v17, (v15 + 16), v15 + 32);
            v19 = v18;

            if ((v19 & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          else if (v17)
          {
            do
            {
              sub_18B83AA0C(v16, v6);
              v20 = sub_18B8598D4(v6, v8);
              sub_18B988BAC(v6, &unk_1EA9D92F0);
              if (v20)
              {
                goto LABEL_7;
              }

              v16 += v14;
            }

            while (--v17);
          }

          sub_18BA3A310(v8);
LABEL_7:
          ++v12;
          sub_18B988BAC(v8, &unk_1EA9D92F0);
          if (v12 == v11)
          {

            return;
          }
        }
      }

LABEL_19:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_19;
  }
}

void sub_18B841784(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_18B8413F0(v4);
}

void sub_18B8417EC()
{
  v1 = v0;
  v2 = sub_18B7D292C();
  v3 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation;
  swift_beginAccess();
  sub_18B80DBC4(v2 + v3, &aBlock);
  v4 = v39;
  v5 = v40;
  __swift_project_boxed_opaque_existential_1Tm(&aBlock, v39);
  LOBYTE(v3) = (*(v5 + 11))(v4, v5);

  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  if (v3)
  {
    v6 = sub_18B7D292C();
    v7 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation;
    swift_beginAccess();
    sub_18B80DBC4(v6 + v7, &aBlock);
    v8 = v39;
    v9 = v40;
    __swift_project_boxed_opaque_existential_1Tm(&aBlock, v39);
    sub_18BA72188(v8, v9);
    v11 = v10;

    __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
    if (v11 == 0.0)
    {
      [v1 layoutIfNeeded];
      return;
    }
  }

  v12 = &v1[qword_1ED651628];
  if ((v1[qword_1ED651628 + 32] & 1) == 0)
  {
    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    v16 = *v12;
    v15 = *(v12 + 1);
    v17 = swift_allocObject();
    v17[2] = v1;
    v17[3] = v16;
    v17[4] = v15;
    v17[5] = v14;
    v17[6] = v13;
    v18 = objc_opt_self();
    v19 = swift_allocObject();
    *(v19 + 16) = sub_18BA48188;
    *(v19 + 24) = v17;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_18B7D1EC4;
    *(v20 + 24) = v19;
    v40 = sub_18B7D1E94;
    v41 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v37 = 1107296256;
    v38 = sub_18B7E3BF4;
    v39 = &block_descriptor_15;
    v21 = _Block_copy(&aBlock);
    v22 = v1;
    sub_18BC1E1A8();
    sub_18BC1E1A8();

    [v18 performWithoutAnimation_];
    _Block_release(v21);
    LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

    if (v18)
    {
      __break(1u);
    }

    else
    {
      v23 = *&v22[qword_1ED651648];
      v24 = *(v23 + 24);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (!v25)
      {
        *(v23 + 24) = v26;
        if (v26 == 1)
        {
          swift_beginAccess();
          v27 = *(v23 + 16);
          v28 = *(v27 + 16);
          if (v28)
          {
            sub_18BC1E1A8();
            sub_18BC1E3F8();
            v29 = v27 + 40;
            do
            {
              v30 = *(v29 - 8);
              LOBYTE(aBlock) = *(v23 + 24) > 0;
              sub_18BC1E1A8();
              v30(&aBlock);

              v29 += 16;
              --v28;
            }

            while (v28);
          }
        }

        [v22 setNeedsLayout];
        [v22 layoutIfNeeded];
        v31 = *MEMORY[0x1E69DDA98];
        if (*MEMORY[0x1E69DDA98])
        {
          v32 = swift_allocObject();
          *(v32 + 16) = v22;
          v40 = sub_18BA48198;
          v41 = v32;
          aBlock = MEMORY[0x1E69E9820];
          v37 = 1107296256;
          v38 = sub_18B7B0DB0;
          v39 = &block_descriptor_131_0;
          v33 = _Block_copy(&aBlock);
          v34 = v22;
          v35 = v31;

          [v35 _performBlockAfterCATransactionCommits_];
          _Block_release(v33);

          return;
        }

LABEL_17:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_17;
  }
}

uint64_t sub_18B841C40()
{

  return swift_deallocObject();
}

uint64_t sub_18B841C88(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = MEMORY[0x18CFFA680](*(a2 + 16));
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  if (v12 > 4)
  {
    v14 = MEMORY[0x18CFFA690]();
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0) - 8);
    sub_18BA3A52C(a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v8, (v14 + 16), v14 + 32);
    *a1 = v16;
    return v14;
  }

  else if (v8 >= 2)
  {
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0) - 8);
    v18 = sub_18B86C274(a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v8);
    result = 0;
    *a1 = v18;
  }

  else
  {
    result = 0;
    *a1 = v8;
  }

  return result;
}

uint64_t sub_18B841DF8@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v48 = &v42 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v47 = &v42 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v42 - v10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5148);
  v11 = MEMORY[0x1EEE9AC00](v52);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v42 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5120);
  v45 = *(v15 - 8);
  v16 = v45;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v42 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5150);
  v20 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v42 - v21;
  v23 = MEMORY[0x1E69E7CD0];
  v56 = MEMORY[0x1E69E7CD0];
  v57 = MEMORY[0x1E69E7CD0];
  v55 = MEMORY[0x1E69E7CD0];
  v24 = *(v16 + 16);
  v43 = a1;
  v24(v18, a1, v15);
  v24(v22, v18, v15);
  v25 = *(v20 + 44);
  sub_18B7B0B08(&qword_1EA9D5158, &qword_1EA9D5120);
  sub_18BC21128();
  v26 = *(v45 + 8);
  v45 += 8;
  v26(v18, v15);
  v53 = v15;
  sub_18BC21158();
  v27 = v23;
  v28 = v23;
  if (*&v22[v25] != v54[0])
  {
    v42 = v26;
    v50 = v13 + 8;
    while (1)
    {
      v33 = sub_18BC211C8();
      v34 = v51;
      sub_18B7CA054(v35, v51, &qword_1EA9D5148);
      v33(v54, 0);
      sub_18BC21168();
      sub_18B7CF39C(v34, v13, &qword_1EA9D5148);
      LODWORD(v33) = swift_getEnumCaseMultiPayload();
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5160);
      v37 = v50[*(v36 + 64)];
      v38 = &v13[*(v36 + 48)];
      if (v33 == 1)
      {
        v29 = v47;
        sub_18B7CF39C(v38, v47, &unk_1EA9D92F0);
        if (!v37)
        {
          goto LABEL_5;
        }

        v29 = v47;
        v39 = v49;
        sub_18B7CA054(v47, v49, &unk_1EA9D92F0);
        v31 = v39;
      }

      else
      {
        v29 = v46;
        sub_18B7CF39C(v38, v46, &unk_1EA9D92F0);
        v30 = v49;
        sub_18B7CA054(v29, v49, &unk_1EA9D92F0);
        v31 = v30;
      }

      v32 = v48;
      sub_18B842590(v48, v31);
      sub_18B988BAC(v32, &unk_1EA9D92F0);
LABEL_5:
      sub_18B988BAC(v29, &unk_1EA9D92F0);
      sub_18BC21158();
      if (*&v22[v25] == v54[0])
      {
        v27 = v56;
        v28 = v57;
        v23 = v55;
        v26 = v42;
        break;
      }
    }
  }

  v26(v43, v53);
  result = sub_18B988BAC(v22, &qword_1EA9D5150);
  v41 = v44;
  *v44 = v28;
  v41[1] = v27;
  v41[2] = v23;
  return result;
}

void sub_18B842370()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  v4 = _s4PageVMa();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B7CFD08(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_18B988BAC(v3, &qword_1EA9D52E0);
  }

  else
  {
    sub_18B81F940(v3, v7, _s4PageVMa);
    if ((([objc_opt_self() isSolariumEnabled] & 1) != 0 || (v7[*(v4 + 40)] & 1) == 0 && (v7[*(v4 + 48)] & 1) == 0) && (v8 = *(v0 + OBJC_IVAR___SFTabOverviewDisplayItem_navigationBarTitleView)) != 0 && v8[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 2] == 1)
    {
      v9 = *&v8[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_textField];
      v10 = v8;
      [v9 resignFirstResponder];
      sub_18B7DFF04(v7, _s4PageVMa);
    }

    else
    {
      sub_18B7DFF04(v7, _s4PageVMa);
    }
  }
}

uint64_t sub_18B842590(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v19 = v2;
  v8 = *v2;
  sub_18BC22158();
  v21 = a2;
  sub_18B83ADFC(v22);
  v9 = sub_18BC221A8();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v5 + 72);
    while (1)
    {
      sub_18B7CA054(*(v8 + 48) + v13 * v11, v7, &unk_1EA9D92F0);
      v14 = sub_18B8598D4(v7, v21);
      sub_18B988BAC(v7, &unk_1EA9D92F0);
      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_18B988BAC(v21, &unk_1EA9D92F0);
    sub_18B7CA054(*(v8 + 48) + v13 * v11, v20, &unk_1EA9D92F0);
    return 0;
  }

  else
  {
LABEL_5:
    v15 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v21;
    sub_18B7CA054(v21, v7, &unk_1EA9D92F0);
    v22[0] = *v15;
    sub_18B8434FC(v7, v11, isUniquelyReferenced_nonNull_native);
    *v15 = v22[0];
    sub_18B7CF39C(v17, v20, &unk_1EA9D92F0);
    return 1;
  }
}

uint64_t sub_18B8427D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v114 = a5;
  v112 = a4;
  v118 = a1;
  v119 = a2;
  v115 = sub_18BC1ED38();
  v117 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v108 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v106 = &v101 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v102 = &v101 - v13;
  v105 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v116 = &v101 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB750);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v101 - v22;
  v113 = a3;
  v24 = *(a3 + 192);
  aBlock[0] = *(a4 + 192);
  v107 = v24;
  *&v120 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB758);
  sub_18B7B0B08(&qword_1EA9DB760, &qword_1EA9DB758);
  sub_18B82BA44(&qword_1EA9D9428, _s4PageVMa_0);
  sub_18BC20AA8();
  sub_18B82BA44(&qword_1EA9D6D00, _s4PageVMa_0);
  sub_18BC21DF8();
  v25 = *(v18 + 8);
  v110 = v18 + 8;
  v109 = v25;
  v25(v20, v17);
  (*(v18 + 16))(v20, v23, v17);
  v26 = (*(v18 + 80) + 40) & ~*(v18 + 80);
  v27 = swift_allocObject();
  v28 = v118;
  v29 = v119;
  *(v27 + 2) = v6;
  *(v27 + 3) = v28;
  *(v27 + 4) = v29;
  v30 = *(v18 + 32);
  v111 = v17;
  v30(&v27[v26], v20, v17);
  *&v27[(v19 + v26 + 7) & 0xFFFFFFFFFFFFFFF8] = v112;
  v31 = objc_opt_self();
  v32 = swift_allocObject();
  *(v32 + 16) = sub_18B84418C;
  *(v32 + 24) = v27;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_18B9D53AC;
  *(v33 + 24) = v32;
  v124 = sub_18B9D53B0;
  v125 = v33;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B7E3BF4;
  v123 = &block_descriptor_206_0;
  v34 = _Block_copy(aBlock);
  v104 = v6;
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v31 performWithoutAnimation_];
  _Block_release(v34);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_22:
    v6 = sub_18B9B5814(0, v6[2] + 1, 1, v6);
    *(isEscapingClosureAtFileLocation + 24) = v6;
    goto LABEL_4;
  }

  v36 = v116;
  v103 = v23;
  sub_18BBC8EA0(v116);
  sub_18B7CA054(v114, aBlock, &unk_1EA9D5060);
  if (!v123)
  {
    v50 = v104;
    sub_18B988BAC(aBlock, &unk_1EA9D5060);
    v53 = v117;
    v54 = *(v117 + 16);
    v55 = v105 + 7;
    v52 = v115;
    goto LABEL_8;
  }

  v37 = __swift_project_boxed_opaque_existential_1Tm(aBlock, v123);
  v38 = v117;
  v39 = v102;
  v40 = v115;
  v101 = *(v117 + 16);
  v101(v102, v36, v115);
  v41 = (*(v38 + 80) + 40) & ~*(v38 + 80);
  v105 += 7;
  v42 = (v105 + v41) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  v31 = v104;
  v44 = v118;
  v45 = v119;
  *(v43 + 2) = v104;
  *(v43 + 3) = v44;
  *(v43 + 4) = v45;
  (*(v38 + 32))(&v43[v41], v39, v40);
  *&v43[v42] = v113;
  isEscapingClosureAtFileLocation = *v37;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_18BBCEE00;
  *(v32 + 24) = v43;
  swift_beginAccess();
  v6 = *(isEscapingClosureAtFileLocation + 24);
  v46 = v31;
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(isEscapingClosureAtFileLocation + 24) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_4:
  v49 = v6[2];
  v48 = v6[3];
  if (v49 >= v48 >> 1)
  {
    v6 = sub_18B9B5814((v48 > 1), v49 + 1, 1, v6);
  }

  v50 = v31;
  v6[2] = v49 + 1;
  v51 = &v6[2 * v49];
  v51[4] = sub_18B9D53B0;
  v51[5] = v32;
  *(isEscapingClosureAtFileLocation + 24) = v6;
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  v52 = v115;
  v36 = v116;
  v53 = v117;
  v54 = v101;
  v55 = v105;
LABEL_8:
  v56 = v106;
  v54(v106, v36, v52);
  v57 = v108;
  v54(v108, v56, v52);
  v58 = (*(v53 + 80) + 24) & ~*(v53 + 80);
  v59 = (v55 + v58) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  *(v60 + 16) = v50;
  (*(v53 + 32))(v60 + v58, v56, v52);
  v61 = v107;
  *(v60 + v59) = v107;
  v62 = (v60 + ((v59 + 15) & 0xFFFFFFFFFFFFFFF8));
  v64 = v118;
  v63 = v119;
  *v62 = v118;
  v62[1] = v63;
  sub_18B7CA054(v114, &v120, &unk_1EA9D5060);
  if (!v121)
  {
    v99 = v50;
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    sub_18B988BAC(&v120, &unk_1EA9D5060);
    sub_18B86DC78(v57, v61, v64, v63);

    v100 = *(v53 + 8);
    v100(v57, v52);
    v100(v116, v52);
    return v109(v103, v111);
  }

  v114 = v60;
  v66 = *(v53 + 8);
  v65 = v53 + 8;
  v67 = v50;
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  v108 = v66;
  (v66)(v57, v52);
  sub_18B7C3FA4(&v120, aBlock);
  v68 = sub_18B7CD924();
  v69 = sub_18B7CD924();
  v70 = sub_18BC1E3F8();
  sub_18BBF22CC(v70, v68);
  v72 = v71;
  v73 = *((*MEMORY[0x1E69E7D40] & *v67) + 0x98);
  swift_beginAccess();
  v74 = *(v67 + v73);
  if (!*(v74 + 16))
  {
    goto LABEL_24;
  }

  v117 = v65;
  sub_18BC1E3F8();
  v75 = sub_18B7C4104(v64, v63);
  if ((v76 & 1) == 0)
  {

LABEL_24:
    result = sub_18BC21CF8();
    __break(1u);
    return result;
  }

  v77 = v64;
  v78 = *(*(v74 + 56) + 8 * v75);
  sub_18BC1E1A8();

  swift_beginAccess();
  sub_18B7FDB4C(v72);
  swift_endAccess();
  v79 = __swift_project_boxed_opaque_existential_1Tm(aBlock, v123);
  v80 = swift_allocObject();
  v80[2] = v78;
  v80[3] = v72;
  v80[4] = v67;
  v80[5] = v77;
  v80[6] = v63;
  v81 = *v79;
  v82 = swift_allocObject();
  *(v82 + 16) = sub_18BBCEDE8;
  *(v82 + 24) = v80;
  swift_beginAccess();
  v83 = *(v81 + 32);
  v67;
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  v84 = swift_isUniquelyReferenced_nonNull_native();
  *(v81 + 32) = v83;
  if ((v84 & 1) == 0)
  {
    v83 = sub_18B9B5814(0, v83[2] + 1, 1, v83);
    *(v81 + 32) = v83;
  }

  v86 = v83[2];
  v85 = v83[3];
  if (v86 >= v85 >> 1)
  {
    v83 = sub_18B9B5814((v85 > 1), v86 + 1, 1, v83);
  }

  v83[2] = v86 + 1;
  v87 = &v83[2 * v86];
  v87[4] = sub_18B9D53B0;
  v87[5] = v82;
  *(v81 + 32) = v83;
  swift_endAccess();

  sub_18BBE9484(v118, v119, v69, v113);

  v88 = *__swift_project_boxed_opaque_existential_1Tm(aBlock, v123);
  v89 = swift_allocObject();
  v90 = v114;
  *(v89 + 16) = sub_18BBCED28;
  *(v89 + 24) = v90;
  swift_beginAccess();
  v91 = *(v88 + 32);
  sub_18BC1E1A8();
  v92 = swift_isUniquelyReferenced_nonNull_native();
  *(v88 + 32) = v91;
  if ((v92 & 1) == 0)
  {
    v91 = sub_18B9B5814(0, v91[2] + 1, 1, v91);
    *(v88 + 32) = v91;
  }

  v93 = v111;
  v94 = v103;
  v96 = v91[2];
  v95 = v91[3];
  if (v96 >= v95 >> 1)
  {
    v91 = sub_18B9B5814((v95 > 1), v96 + 1, 1, v91);
  }

  v91[2] = v96 + 1;
  v97 = &v91[2 * v96];
  v97[4] = sub_18B9D53B0;
  v97[5] = v89;
  *(v88 + 32) = v91;
  swift_endAccess();

  (v108)(v116, v115);
  v109(v94, v93);
  return __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
}

uint64_t sub_18B8434FC(uint64_t a1, unint64_t a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v26 = v8;
  v27 = v3;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v25 = v9;
    sub_18B85B7F0(v12 + 1, &unk_1EA9D92F0, &unk_18BC42990, &unk_1EA9D9F80);
  }

  else
  {
    if (v13 > v12)
    {
      sub_18B9CC0C8();
      goto LABEL_12;
    }

    v25 = v9;
    sub_18B8437FC(v12 + 1, &unk_1EA9D92F0, &unk_18BC42990, &unk_1EA9D9F80);
  }

  v14 = *v3;
  sub_18BC22158();
  sub_18B83ADFC(v28);
  v15 = sub_18BC221A8();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v18 = *(v8 + 72);
    do
    {
      sub_18B7CA054(*(v14 + 48) + v18 * a2, v11, &unk_1EA9D92F0);
      v19 = sub_18B8598D4(v11, a1);
      sub_18B988BAC(v11, &unk_1EA9D92F0);
      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_18B7CF39C(a1, *(v20 + 48) + *(v26 + 72) * a2, &unk_1EA9D92F0);
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v20 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_18BC22068();
  __break(1u);
  return result;
}

uint64_t sub_18B843778()
{
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18B7E05C8(&qword_1EA9D3970, MEMORY[0x1E69695A8]);
  sub_18BC20A78();
  return sub_18BC221A8();
}

uint64_t sub_18B8437FC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v6 = v4;
  v34 = a2;
  v35 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v33 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31 - v8;
  v10 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  result = sub_18BC21A88();
  v12 = result;
  if (*(v10 + 16))
  {
    v32 = v4;
    v13 = 0;
    v14 = 1 << *(v10 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v10 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = *(v33 + 72);
      sub_18B7CA054(*(v10 + 48) + v23 * (v20 | (v13 << 6)), v9, v34);
      sub_18BC22158();
      sub_18B83ADFC(v36);
      result = sub_18BC221A8();
      v24 = -1 << *(v12 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v18 + 8 * v26);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v19 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_18B7CF39C(v9, *(v12 + 48) + v19 * v23, v34);
      ++*(v12 + 16);
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v6 = v32;
        goto LABEL_26;
      }

      v22 = *(v10 + 56 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v6 = v12;
  }

  return result;
}

uint64_t sub_18B843AB8(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v7 = v5;
  v40 = a1;
  v41 = a2;
  v9 = a4(0);
  v39 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v38 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v44 = &v34 - v13;
  v14 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v46 = MEMORY[0x1E69E7CC0];
    v42 = a3;
    sub_18B8408D8(0, v14, 0);
    v45 = v46;
    v43 = v42 + 56;
    v16 = sub_18BC21918();
    v17 = v42;
    v18 = v16;
    v19 = 0;
    v34 = v42 + 64;
    v35 = v14;
    v36 = v11;
    v37 = a5;
    while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(v17 + 32))
    {
      v21 = v18 >> 6;
      if ((*(v43 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        goto LABEL_23;
      }

      v22 = *(v17 + 36);
      sub_18B85B608(*(v17 + 48) + *(v39 + 72) * v18, v11, a5);
      v40(v11);
      v16 = v11;
      if (v7)
      {
        goto LABEL_27;
      }

      sub_18B85B760(v11, a5);
      v23 = v45;
      v46 = v45;
      v25 = *(v45 + 16);
      v24 = *(v45 + 24);
      a5 = (v25 + 1);
      if (v25 >= v24 >> 1)
      {
        sub_18B8408D8(v24 > 1, v25 + 1, 1);
        v23 = v46;
      }

      *(v23 + 16) = a5;
      v26 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v45 = v23;
      v16 = sub_18B840ED0(v44, v23 + v26 + *(v38 + 72) * v25);
      v17 = v42;
      v20 = 1 << *(v42 + 32);
      if (v18 >= v20)
      {
        goto LABEL_24;
      }

      v27 = *(v43 + 8 * v21);
      if ((v27 & (1 << v18)) == 0)
      {
        goto LABEL_25;
      }

      if (v22 != *(v42 + 36))
      {
        goto LABEL_26;
      }

      v28 = v27 & (-2 << (v18 & 0x3F));
      if (v28)
      {
        v20 = __clz(__rbit64(v28)) | v18 & 0x7FFFFFFFFFFFFFC0;
        a5 = v37;
      }

      else
      {
        v29 = v21 << 6;
        v30 = v21 + 1;
        v31 = (v34 + 8 * v21);
        a5 = v37;
        while (v30 < (v20 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            v16 = sub_18B7B4FF8(v18, v22, 0);
            v17 = v42;
            v20 = __clz(__rbit64(v32)) + v29;
            goto LABEL_4;
          }
        }

        v16 = sub_18B7B4FF8(v18, v22, 0);
        v17 = v42;
      }

LABEL_4:
      ++v19;
      v18 = v20;
      v7 = 0;
      v11 = v36;
      if (v19 == v35)
      {
        return v45;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    sub_18B85B760(v16, a5);

    __break(1u);
  }

  return result;
}

uint64_t sub_18B843EB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = sub_18BC1ED38();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a5;
  sub_18BBC86C0(v12);
  if (sub_18BC1ED08())
  {
    return (*(v10 + 8))(v12, v9);
  }

  sub_18B844218(v12, v19);
  v15 = v20;
  v16 = v21;
  v17 = __swift_project_boxed_opaque_existential_1Tm(v19, v20);
  sub_18B844824(a2, a3, v17, v13, 1, a1, v15, v16);
  (*(v10 + 8))(v12, v9);
  return __swift_destroy_boxed_opaque_existential_1Tm(v19);
}

uint64_t sub_18B844028(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_18B8441B4();
  result = MEMORY[0x18CFFC500](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_18B83AA0C(v12, v6);
      sub_18B842590(v8, v6);
      sub_18B988BAC(v8, &unk_1EA9D92F0);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

unint64_t sub_18B8441B4()
{
  result = qword_1EA9D9F90;
  if (!qword_1EA9D9F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA9D92F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D9F90);
  }

  return result;
}

uint64_t sub_18B844218@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  v50 = a1;
  v46 = a2;
  v3 = sub_18BC1EDD8();
  v49 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v52 = &v45 - v9;
  v10 = sub_18BC1ED38();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  v17 = *(*(v2 + 192) + 16);
  sub_18B82BA44(&qword_1EA9DB6E8, MEMORY[0x1E6969B50]);
  sub_18BC218F8();
  if (v17)
  {
    v18 = 0;
    do
    {
      v19 = v18 + 1;
      v53[0] = v18;
      sub_18BC218D8();
      v18 = v19;
    }

    while (v17 != v19);
  }

  v20 = *(v11 + 32);
  v20(v16, v13, v10);
  v21 = type metadata accessor for SingleElementIndexPathSequence();
  v54 = v21;
  v55 = sub_18B82BA44(&qword_1EA9DB6F0, type metadata accessor for SingleElementIndexPathSequence);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v53);
  sub_18BC1ECA8();
  v20(boxed_opaque_existential_0Tm + *(v21 + 20), v16, v10);
  v23 = __swift_project_boxed_opaque_existential_1Tm(v53, v54);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26, v24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v28 = __swift_allocate_boxed_opaque_existential_0Tm(v56);
  sub_18BBCEB04(v26, v28, type metadata accessor for SingleElementIndexPathSequence);
  __swift_destroy_boxed_opaque_existential_1Tm(v53);
  v29 = 0;
  v30 = (v49 + 48);
  v31 = (v49 + 32);
  v32 = (v49 + 8);
  v47 = (v49 + 16);
  v33 = MEMORY[0x1E69E7CC0];
  v48 = v5;
  do
  {
    __swift_mutable_project_boxed_opaque_existential_1(v56, AssociatedTypeWitness);
    sub_18BC21868();
    v36 = v52;
    if ((*v30)(v52, 1, v3) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6AF8);
      v44 = v46;
      v46[3] = v43;
      result = sub_18B7B0B08(&qword_1EA9D6B00, &qword_1EA9D6AF8);
      v44[4] = result;
      *v44 = v33;
      return result;
    }

    v37 = *v31;
    v38 = v51;
    (*v31)(v51, v36, v3);
    if (sub_18BC1ED18())
    {
      (*v47)(v5, v38, v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_18B81F634(0, v33[2] + 1, 1, v33);
      }

      v40 = v33[2];
      v39 = v33[3];
      if (v40 >= v39 >> 1)
      {
        v33 = sub_18B81F634(v39 > 1, v40 + 1, 1, v33);
      }

      v41 = v49;
      (*(v49 + 8))(v51, v3);
      v33[2] = v40 + 1;
      v42 = v33 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v40;
      v5 = v48;
      result = v37(v42, v48, v3);
    }

    else
    {
      result = (*v32)(v38, v3);
    }
  }

  while (!__OFADD__(v29++, 1));
  __break(1u);
  return result;
}

uint64_t sub_18B844824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6, uint64_t a7, uint64_t a8)
{
  v84 = a5;
  v80 = a4;
  v14 = _s4PageVMa_0();
  v83 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v77 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v77 - v17;
  v79 = sub_18BC1EDD8();
  v93 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v87 = &v77 - v22;
  v100 = a7;
  v101 = a8;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v99);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_0Tm, a3, a7);
  v24 = *((*MEMORY[0x1E69E7D40] & *a6) + 0x98);
  swift_beginAccess();
  v92 = a6;
  v25 = *(a6 + v24);
  if (*(v25 + 16))
  {
    sub_18BC1E3F8();
    v26 = sub_18B7C4104(a1, a2);
    if (v27)
    {
      v28 = *(*(v25 + 56) + 8 * v26);
      sub_18BC1E1A8();

      v29 = __swift_project_boxed_opaque_existential_1Tm(v99, v100);
      v30 = MEMORY[0x1EEE9AC00](v29);
      (*(v32 + 16))(&v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v30);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_0Tm(v96);
      sub_18BC20CC8();
      swift_beginAccess();
      v94 = v28;
      swift_beginAccess();
      v85 = (v93 + 32);
      v86 = (v93 + 48);
      v81 = (v93 + 8);
      v82 = v20;
      v33 = v79;
      v34 = v80;
      while (1)
      {
        v54 = v87;
        __swift_mutable_project_boxed_opaque_existential_1(v96, AssociatedTypeWitness);
        sub_18BC21868();
        if ((*v86)(v54, 1, v33) == 1)
        {

          __swift_destroy_boxed_opaque_existential_1Tm(v96);
          return __swift_destroy_boxed_opaque_existential_1Tm(v99);
        }

        (*v85)(v20, v54, v33);
        v55 = *(v34 + 192);
        v56 = sub_18BC1EDE8();
        if ((v56 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v56 >= *(v55 + 16))
        {
          goto LABEL_25;
        }

        v93 = *(v83 + 80);
        sub_18B80EBD8(v55 + ((v93 + 32) & ~v93) + *(v83 + 72) * v56, v18, _s4PageVMa_0);
        v57 = sub_18BC1EDE8();
        sub_18B845484(v57, v84, v102);
        v58 = v94;
        if (*(v94[10] + 16))
        {
          sub_18BC1E1A8();
          sub_18BC1E3F8();
          sub_18B8629FC(v18);
          v60 = v59;
        }

        else
        {
          v60 = 0;
        }

        v108 = v102[0];
        v109 = v102[1];
        v110[0] = (v60 | v103) & 1;
        *&v110[1] = v104;
        *&v110[64] = *&v107[15];
        *&v110[49] = *v107;
        *&v110[33] = v106;
        *&v110[17] = v105;
        if (v104 & 1) != 0 || *(v58[7] + 16) && (sub_18BC1E1A8(), sub_18BC1E3F8(), sub_18B8629FC(v18), v62 = v61, , , (v62) || (v63 = v58[15], v64 = v58[16], __swift_project_boxed_opaque_existential_1Tm(v58 + 12, v63), v65 = v94[2], sub_18BC1E1A8(), v65(v95, v18), , v58 = v94, v66 = sub_18B814A2C(v95, v63, v64), __swift_destroy_boxed_opaque_existential_1Tm(v95), (v66))
        {
          v67 = sub_18B849380(v18, *(v34 + 184), v55, v58);
          v91 = v68;
          v70 = v69;
          v71 = sub_18B7C2E68(v67);
          v72 = [v67 superview];
          if (!v72 || (v73 = v72, sub_18B7F4394(), v74 = v71, v75 = sub_18BC215C8(), v73, v74, (v75 & 1) == 0))
          {
            [v71 addSubview_];
          }

          v35 = v93;
          v36 = 0x8000000000000010;
          v88 = v70 & 1;
          if ((v70 & 1) == 0)
          {
            v36 = 0x8000000000000008;
          }

          v89 = v36;
          v37 = v18;
          v38 = v18;
          v39 = v77;
          sub_18B80EBD8(v37, v77, _s4PageVMa_0);
          v40 = (v35 + 152) & ~v35;
          v41 = (v40 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
          v90 = v71;
          v42 = (v40 + v78 + 23) & 0xFFFFFFFFFFFFFFF8;
          v43 = swift_allocObject();
          v44 = v91;
          *(v43 + 16) = v67;
          *(v43 + 24) = v44;
          v45 = *&v110[48];
          *(v43 + 96) = *&v110[32];
          *(v43 + 112) = v45;
          *(v43 + 128) = *&v110[64];
          v46 = v109;
          *(v43 + 32) = v108;
          *(v43 + 48) = v46;
          v47 = *&v110[16];
          *(v43 + 64) = *v110;
          *(v43 + 80) = v47;
          *(v43 + 144) = v94;
          v48 = v39;
          v18 = v38;
          sub_18B80EC40(v48, v43 + v40, _s4PageVMa_0);
          v49 = v43 + v41;
          v34 = v80;
          *v49 = v80;
          *(v49 + 8) = v88;
          v50 = v92;
          *(v43 + v42) = v92;
          sub_18BC1E1A8();
          v51 = v67;
          sub_18BC1E1A8();
          v52 = v50;
          v53 = v89;
          sub_18B80ECB4(sub_18B867070, v43, v89);

          sub_18B7EBAE8(v53);

          v33 = v79;
        }

        else
        {
          sub_18B7F4620(&v108);
          sub_18B84910C(v18);
        }

        sub_18B812EDC(v18, _s4PageVMa_0);
        v20 = v82;
        (*v81)(v82, v33);
      }

      __break(1u);
LABEL_25:
      __break(1u);
    }
  }

  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

uint64_t sub_18B8450C4()
{
  v1 = _s4PageVMa_0();
  v2 = (*(*(v1 - 8) + 80) + 152) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);

  v4 = sub_18BC1EC08();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = v0 + v2 + *(v1 + 20);
  if (*(v5 + 32))
  {
  }

  v6 = *(v5 + 88);
  if (v6 != 1)
  {
  }

  v7 = v0 + v2 + *(v1 + 32);
  if (*(v7 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18B845298(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v22 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v22 - v7;
  result = MEMORY[0x1EEE9AC00](v6);
  v11 = &v22 - v10;
  v12 = 0;
  v23 = a1;
  v15 = *(a1 + 56);
  v14 = a1 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  if ((v17 & v13) != 0)
  {
    do
    {
      v20 = v12;
LABEL_9:
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      sub_18B7CA054(*(v23 + 48) + *(v22 + 72) * (v21 | (v20 << 6)), v11, &unk_1EA9D92F0);
      sub_18B7CF39C(v11, v5, &unk_1EA9D92F0);
      sub_18B842590(v8, v5);
      result = sub_18B988BAC(v8, &unk_1EA9D92F0);
    }

    while (v18);
  }

  while (1)
  {
    v20 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v20 >= v19)
    {
    }

    v18 = *(v14 + 8 * v20);
    ++v12;
    if (v18)
    {
      v12 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18B845484@<X0>(unint64_t a1@<X0>, int a2@<W1>, CGPoint *a3@<X8>)
{
  v4 = v3;
  v175 = a3;
  *&v180 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5340));
  v7 = MEMORY[0x1EEE9AC00](v180);
  v174 = &v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v173 = &v164 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v168 = &v164 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  *&width = &v164 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v167 = &v164 - v16;
  MEMORY[0x1EEE9AC00](v15);
  *&height = &v164 - v17;
  v181 = _s4PageVMa_0();
  v183 = *(v181 - 8);
  v18 = MEMORY[0x1EEE9AC00](v181);
  v166 = &v164 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v182 = &v164 - v20;
  v21 = sub_18BC1EDD8();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v164 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB730);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_18BC3E410;
  *(v25 + 32) = a1;
  sub_18BC1E1A8();
  MEMORY[0x18CFFA250](v25);
  v172 = a2;
  sub_18B831DF0(0xD000000000000017, 0x800000018BC60750, a2, &v206);

  result = (*(v22 + 8))(v24, v21);
  v203 = v210;
  v204 = v211;
  v205 = v212;
  v199 = v206;
  v200 = v207;
  v201 = v208;
  v202 = v209;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_52;
  }

  v27 = *(v3 + 192);
  if (*(v27 + 16) <= a1)
  {
LABEL_52:
    __break(1u);
    return result;
  }

  v29 = v182;
  v28 = v183;
  sub_18B831A68(v27 + ((*(*&v183 + 80) + 32) & ~*(*&v183 + 80)) + *(*&v183 + 72) * a1, v182);
  v30 = v3 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_metrics;
  v31 = *(v3 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_metrics + 16);
  v227 = *(v3 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_metrics);
  v228 = v31;
  v171 = sub_18B846940();
  sub_18BC21A68();
  y = v205.y;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v227.x = y;
  sub_18B7F3BB8(v234, 0xD000000000000014, 0x800000018BC62220, isUniquelyReferenced_nonNull_native);
  x = v227.x;
  v176 = (v4 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState);
  v35 = *(v4 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 48);
  v165 = v4 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 48;
  v227 = v35;
  sub_18B846F84();
  sub_18BC21A68();
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v227.x = x;
  sub_18B7F3BB8(v234, 0xD000000000000014, 0x800000018BC62240, v36);
  v37 = v227.x;
  v227.x = *(v30 + 64);
  *&v38 = COERCE_DOUBLE(sub_18B7F3B64());
  sub_18BC21A68();
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v227.x = v37;
  v169 = "preferredThumbnailAspectRatio";
  sub_18B7F3BB8(v234, 0xD000000000000011, 0x800000018BC622C0, v39);
  v40 = v227.x;
  v205.y = v227.x;
  v227.x = *(v30 + 72);
  sub_18BC21A68();
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v227.x = v40;
  sub_18B7F3BB8(v234, 0x4F746E65746E6F63, 0xEE00797469636170, v41);
  v42 = v227.x;
  v205.y = v227.x;
  v227.x = *(v30 + 80);
  v179 = *&v38;
  sub_18BC21A68();
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v227.x = v42;
  sub_18B7F3BB8(v234, 0x53746E65746E6F63, 0xEC000000656C6163, v43);
  v205.y = v227.x;
  v44 = *&height;
  sub_18B831A68(v29, *&height);
  v45 = v181;
  v170 = *(*&v28 + 56);
  v170(v44, 0, 1, v181);
  v46 = OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_highlightedPeekingPage;
  swift_beginAccess();
  v47 = *(v180 + 48);
  v48 = v173;
  sub_18B8319E8(v44, v173);
  v49 = v4 + v46;
  v50 = v48;
  sub_18B8319E8(v49, v48 + v47);
  v51 = *(*&v28 + 48);
  v52 = v51(v50, 1, v45);
  *&v183 = *&v28 + 48;
  if (v52 != 1)
  {
    v54 = v167;
    sub_18B8319E8(v50, v167);
    if (v51(v50 + v47, 1, v45) != 1)
    {
      v164 = v30;
      v55 = v166;
      sub_18B82FCEC(v50 + v47, v166, _s4PageVMa_0);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B82D174(v55, _s4PageVMa_0);
      sub_18B988BAC(*&height, &unk_1EA9DBE90);
      sub_18B82D174(v54, _s4PageVMa_0);
      v30 = v164;
      sub_18B988BAC(v50, &unk_1EA9DBE90);
      v53 = v182;
      if (updated)
      {
        goto LABEL_11;
      }

LABEL_9:
      sub_18B813FB0(0x696C686769487369, 0xED00006465746867, v234);
      sub_18B988BAC(v234, &qword_1EA9D4080);
      goto LABEL_12;
    }

    sub_18B988BAC(*&height, &unk_1EA9DBE90);
    sub_18B82D174(v54, _s4PageVMa_0);
LABEL_8:
    sub_18B988BAC(v50, &qword_1EA9D5340);
    v53 = v182;
    goto LABEL_9;
  }

  sub_18B988BAC(v44, &unk_1EA9DBE90);
  if (v51(v50 + v47, 1, v45) != 1)
  {
    goto LABEL_8;
  }

  sub_18B988BAC(v50, &unk_1EA9DBE90);
  v53 = v182;
LABEL_11:
  LOBYTE(v227.x) = 1;
  sub_18BC21A68();
  v57 = v205.y;
  v58 = swift_isUniquelyReferenced_nonNull_native();
  v227.x = v57;
  sub_18B7F3BB8(v234, 0x696C686769487369, 0xED00006465746867, v58);
  v205.y = v227.x;
LABEL_12:
  v59 = *&width;
  sub_18B831A68(v53, *&width);
  v170(v59, 0, 1, v45);
  v60 = OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_hoveredPeekingPage;
  swift_beginAccess();
  v61 = *(v180 + 48);
  v62 = v174;
  sub_18B8319E8(v59, v174);
  sub_18B8319E8(v4 + v60, v62 + v61);
  v63 = v4;
  if (v51(v62, 1, v45) != 1)
  {
    v66 = v168;
    sub_18B8319E8(v62, v168);
    if (v51(v62 + v61, 1, v45) != 1)
    {
      v67 = v166;
      sub_18B82FCEC(v62 + v61, v166, _s4PageVMa_0);
      v68 = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B82D174(v67, _s4PageVMa_0);
      sub_18B988BAC(*&width, &unk_1EA9DBE90);
      sub_18B82D174(v66, _s4PageVMa_0);
      sub_18B988BAC(v62, &unk_1EA9DBE90);
      v65 = v172;
      if (v68)
      {
        goto LABEL_20;
      }

LABEL_18:
      sub_18B813FB0(0x657265766F487369, 0xE900000000000064, v234);
      sub_18B988BAC(v234, &qword_1EA9D4080);
      goto LABEL_21;
    }

    sub_18B988BAC(*&width, &unk_1EA9DBE90);
    sub_18B82D174(v66, _s4PageVMa_0);
    v65 = v172;
LABEL_17:
    sub_18B988BAC(v62, &qword_1EA9D5340);
    goto LABEL_18;
  }

  sub_18B988BAC(v59, &unk_1EA9DBE90);
  v64 = v51(v62 + v61, 1, v45);
  v65 = v172;
  if (v64 != 1)
  {
    goto LABEL_17;
  }

  sub_18B988BAC(v62, &unk_1EA9DBE90);
LABEL_20:
  LOBYTE(v227.x) = 1;
  sub_18BC21A68();
  v69 = v205.y;
  v70 = swift_isUniquelyReferenced_nonNull_native();
  v227.x = v69;
  sub_18B7F3BB8(v234, 0x657265766F487369, 0xE900000000000064, v70);
  v205.y = v227.x;
LABEL_21:
  [objc_opt_self() isSolariumEnabled];
  p_height = (v30 + 144);
  p_x = (v30 + 120);
  p_y = (v30 + 128);
  v74 = (v30 + 136);
  if (CGRectIsEmpty(*(v30 + 120)))
  {
    p_x = &v176[1].origin.x;
    p_height = &v176[1].size.height;
    p_y = &v176[1].origin.y;
    v74 = v165;
  }

  v75 = *p_height;
  v76 = *v74;
  v77 = *p_y;
  v78 = *p_x;
  UIEdgeInsetsReplace();
  UIEdgeInsetsInsetRect(v78, v77, v76, v75, v79, v80);
  v227.x = v81 / v82;
  sub_18BC21A68();
  v83 = v205.y;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v227.x = v83;
  sub_18B7F3BB8(v234, 0xD00000000000001DLL, 0x800000018BC622A0, v84);
  v85 = v227.x;
  v86 = v63;
  if (*(v63 + 177))
  {
    UIEdgeInsetsMakeWithEdges();
    v91 = v182;
    v92 = v176;
  }

  else
  {
    v92 = v176;
    UIEdgeInsetsReplace();
    v91 = v182;
  }

  v227.x = v87;
  v227.y = v88;
  v228.width = v89;
  v228.height = v90;
  sub_18BC21A68();
  v93 = swift_isUniquelyReferenced_nonNull_native();
  v227.x = v85;
  sub_18B7F3BB8(v234, 0xD000000000000012, 0x800000018BC652A0, v93);
  v94 = v227.x;
  v205.y = v227.x;
  if (v65)
  {
    v95 = *(v30 + 104);
    v234[4] = v203;
    v234[5] = v204;
    v234[6] = v205;
    v234[0] = v199;
    v234[1] = v200;
    v234[3] = v202;
    v234[2] = v201;
    v220.x = v95 + sub_18B8481C8();
    sub_18BC21A68();
    v96 = swift_isUniquelyReferenced_nonNull_native();
    v220.x = v94;
    sub_18B7F3BB8(&v227, 0xD000000000000011, v169 | 0x8000000000000000, v96);
    v97 = v220.x;
    v205.y = v220.x;
    v98 = *(v30 + 112);
    v231 = v203;
    v232 = v204;
    v227 = v199;
    v228 = v200;
    v230 = v202;
    v229 = v201;
    v233 = v205;
    v213.x = v98 * sub_18B8483B8();
    sub_18BC21A68();
    v99 = swift_isUniquelyReferenced_nonNull_native();
    v213.x = v97;
    sub_18B7F3BB8(&v220, 0x53746E65746E6F63, 0xEC000000656C6163, v99);
    v94 = v213.x;
    v205.y = v213.x;
  }

  v100 = (v30 + 56);
  v101 = v206;
  v102 = v207;
  UIEdgeInsetsMakeWithEdges();
  v179 = v101.y;
  v180 = *&v101.x;
  height = v102.height;
  width = v102.width;
  v183 = UIEdgeInsetsInsetRect(v101.x, v101.y, v102.width, v102.height, v103, v104);
  v106 = v105;
  v108 = v107;
  v110 = v109;
  v111 = v92[1].origin.x;
  v112 = v92[1].origin.y;
  v113 = v92[1].size.width;
  v114 = v92[1].size.height;
  v236.origin.x = v111;
  v236.origin.y = v112;
  v236.size.width = v113;
  v236.size.height = v114;
  MidX = CGRectGetMidX(v236);
  v237.origin.x = v111;
  v237.origin.y = v112;
  v237.size.width = v113;
  v237.size.height = v114;
  v235.y = CGRectGetMidY(v237);
  v238.origin.x = v183;
  v238.origin.y = v106;
  v238.size.width = v108;
  v238.size.height = v110;
  v235.x = MidX;
  if (CGRectContainsPoint(v238, v235))
  {
    goto LABEL_34;
  }

  if (*(v86 + 177) == 1)
  {
    v117 = v179;
    v116 = *&v180;
    *&v239.origin.x = v180;
    v239.origin.y = v179;
    v119 = height;
    v118 = width;
    v239.size.width = width;
    v239.size.height = height;
    v120 = CGRectGetMidX(v239);
    v121 = CGRectGetMidX(v92[1]);
    if (v120 >= v121)
    {
      MaxX = CGRectGetMaxX(v92[1]);
    }

    else
    {
      v240.origin.x = v116;
      v240.origin.y = v117;
      v240.size.width = v118;
      v240.size.height = v119;
      MaxX = CGRectGetMaxX(v240);
      v116 = v92[1].origin.x;
      v117 = v92[1].origin.y;
      v118 = v92[1].size.width;
      v119 = v92[1].size.height;
    }

    v241.origin.x = v116;
    v241.origin.y = v117;
    v241.size.width = v118;
    v241.size.height = v119;
    MinX = CGRectGetMinX(v241);
    v124 = v212.x;
    v125 = *(v30 + 88);
    LOBYTE(v213.x) = v120 < v121;
    v213.y = v125;
    v214.width = MaxX - MinX;
    sub_18BA2DBFC();
    sub_18BC21A68();
    v126 = swift_isUniquelyReferenced_nonNull_native();
    v213.x = v94;
    sub_18B7F3BB8(&v220, 0x49676E696B656570, 0xEB000000006F666ELL, v126);
    v205.y = v213.x;
    v205.x = v124 + -1.0;
LABEL_34:
    if (*(v86 + 177) == 1)
    {
      v224 = v203;
      v225 = v204;
      v226 = v205;
      v220 = v199;
      v221 = v200;
      v222 = v201;
      v223 = v202;
      v127 = v92[1].origin.x;
      v128 = v92[1].origin.y;
      v129 = v92[1].size.width;
      v130 = v92[1].size.height;
      if (*v100 == 1)
      {
        v131 = v92[1].size.height;
        v132 = v92[1].origin.x;
        v133 = v92[1].origin.y;
        v134 = v92[1].size.width;
        v242.size.width = sub_18B7D2C68();
        v242.size.height = v135;
        v242.origin.x = 0.0;
        v242.origin.y = 0.0;
        v136 = CGRectGetMaxX(v242);
        v243.origin.x = v132;
        v243.origin.y = v133;
        v243.size.width = v134;
        v243.size.height = v131;
        v137 = v136 - CGRectGetMaxX(v243);
        v244.origin.x = v132;
        v244.origin.y = v133;
        v244.size.width = v134;
        v244.size.height = v131;
        MinY = CGRectGetMinY(v244);
        v245.origin.x = v132;
        v245.origin.y = v133;
        v245.size.width = v134;
        v245.size.height = v131;
        v139 = CGRectGetWidth(v245);
        v246.origin.x = v132;
        v246.origin.y = v133;
        v246.size.width = v134;
        v246.size.height = v131;
        v130 = CGRectGetHeight(v246);
        v127 = v137;
        v128 = MinY;
        v129 = v139;
      }

      v140 = v220;
      v141 = v221;
      v142 = CGRectGetMidX(*&v127);
      v247.origin = v140;
      v247.size = v141;
      v143 = (v142 - CGRectGetMidX(v247)) * (1.0 - *(v30 + 80));
      v194 = v224;
      v195 = v225;
      v196 = v226;
      v192 = v222;
      v193 = v223;
      sub_18B81407C(&v220, &v213);
      v248.origin = v140;
      v248.size = v141;
      v249 = CGRectOffset(v248, v143, 0.0);
      v144 = v249.origin.x;
      v145 = v249.origin.y;
      v146 = v249.size.width;
      v147 = v249.size.height;
      v217 = v203;
      v218 = v204;
      v219 = v205;
      v213 = v199;
      v214 = v200;
      v215 = v201;
      v216 = v202;
      sub_18B7F4620(&v213);
      v199.x = v144;
      v199.y = v145;
      v200.width = v146;
      v200.height = v147;
      v203 = v194;
      v204 = v195;
      v205 = v196;
      v201 = v192;
      v202 = v193;
    }
  }

  v148 = *(v91 + *(v181 + 24));
  v224 = v203;
  v225 = v204;
  v226 = v205;
  v220 = v199;
  v221 = v200;
  v222 = v201;
  v223 = v202;
  if (v148 == 1)
  {
    sub_18B8634FC(&v220, &v213);
  }

  else
  {
    sub_18B8483D8(&v220, &v213);
  }

  v149 = v215.y;
  v151 = v213.y;
  v150 = v213.x;
  v152 = v214.height;
  v153 = v214.width;
  sub_18B848F50(&v213, &v199);
  if (*v100 == 1)
  {
    v250.size.width = sub_18B7D2C68();
    v250.size.height = v154;
    v250.origin.x = 0.0;
    v250.origin.y = 0.0;
    v155 = CGRectGetMaxX(v250);
    v251.origin.x = v150;
    v251.origin.y = v151;
    v251.size.width = v153;
    v251.size.height = v152;
    v156 = v155 - CGRectGetMaxX(v251);
    v252.origin.x = v150;
    v252.origin.y = v151;
    v252.size.width = v153;
    v252.size.height = v152;
    v157 = CGRectGetMinY(v252);
    v253.origin.x = v150;
    v253.origin.y = v151;
    v253.size.width = v153;
    v253.size.height = v152;
    v158 = CGRectGetWidth(v253);
    v254.origin.x = v150;
    v254.origin.y = v151;
    v254.size.width = v153;
    v254.size.height = v152;
    v152 = CGRectGetHeight(v254);
    v150 = v156;
    v151 = v157;
    v153 = v158;
  }

  v199.x = v150;
  v199.y = v151;
  v200.width = v153;
  v200.height = v152;
  if (v148 && *(*(v86 + 16) + 40))
  {
    v159 = 1;
  }

  else if (v65 || v149 >= 0.01)
  {
    v255.origin.x = v150;
    v255.origin.y = v151;
    v255.size.width = v153;
    v255.size.height = v152;
    v159 = CGRectIntersectsRect(v255, v92[1]);
  }

  else
  {
    v159 = 0;
  }

  sub_18B82D174(v91, _s4PageVMa_0);
  BYTE1(v201.x) = v159;
  v189 = v203;
  v190 = v204;
  v185 = v199;
  v186 = v200;
  v187 = v201;
  v188 = v202;
  v193 = v200;
  v194 = v201;
  v191 = v205;
  v192 = v199;
  v197 = v204;
  v198 = v205;
  v195 = v202;
  v196 = v203;
  sub_18B81407C(&v185, &v184);
  result = sub_18B7F4620(&v192);
  v160 = v190;
  v161 = v175;
  v175[4] = v189;
  v161[5] = v160;
  v161[6] = v191;
  v162 = v186;
  *v161 = v185;
  v161[1] = v162;
  v163 = v188;
  v161[2] = v187;
  v161[3] = v163;
  return result;
}

unint64_t sub_18B846940()
{
  result = qword_1EA9D6548;
  if (!qword_1EA9D6548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6548);
  }

  return result;
}

uint64_t sub_18B846998(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v48 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v49 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8638);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  result = MEMORY[0x1EEE9AC00](v9);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v50 = &v44 - v11;
  v45 = a1;
  v46 = v12;
  v13 = 0;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  while (v19)
  {
    v51 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v13 << 6);
    v22 = v46;
LABEL_16:
    v28 = v45;
    v29 = v47;
    sub_18B83AA0C(*(v45 + 48) + *(v48 + 72) * v21, v47);
    v30 = *(*(v28 + 56) + 8 * v21);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5168);
    v32 = *(v31 + 48);
    sub_18B7CF39C(v29, v22, &unk_1EA9D92F0);
    *(v22 + v32) = v30;
    (*(*(v31 - 8) + 56))(v22, 0, 1, v31);
    sub_18BC1E3F8();
    v25 = v50;
LABEL_17:
    sub_18B7CF39C(v22, v25, &qword_1EA9D8638);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5168);
    v34 = (*(*(v33 - 8) + 48))(v25, 1, v33);
    v35 = v34 == 1;
    if (v34 == 1)
    {
      return v35;
    }

    v36 = *(v33 + 48);
    v37 = v49;
    sub_18B7CF39C(v25, v49, &unk_1EA9D92F0);
    v38 = *(v25 + v36);
    sub_18B83B1C8(v37);
    v40 = v39;
    sub_18B86C50C(v37);
    if ((v40 & 1) == 0)
    {

      return 0;
    }

    v41 = sub_18BC1E3F8();
    v42 = sub_18B86C574(v41, v38);

    v19 = v51;
    if ((v42 & 1) == 0)
    {
      return v35;
    }
  }

  if (v20 <= v13 + 1)
  {
    v23 = v13 + 1;
  }

  else
  {
    v23 = v20;
  }

  v24 = v23 - 1;
  v22 = v46;
  v25 = v50;
  while (1)
  {
    v26 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v26 >= v20)
    {
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5168);
      (*(*(v43 - 8) + 56))(v22, 1, 1, v43);
      v51 = 0;
      v13 = v24;
      goto LABEL_17;
    }

    v27 = *(v15 + 8 * v26);
    ++v13;
    if (v27)
    {
      v51 = (v27 - 1) & v27;
      v21 = __clz(__rbit64(v27)) | (v26 << 6);
      v13 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18B846DD4(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 != a2[1].i64[0])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 2;
  v4 = a2 + 2;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vmovn_s64(vceqq_s64(v6, v7));
    if ((v8.i8[0] & v8.i8[4] & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while (v2);
  return v8.i8[0] & v8.i8[4] & 1;
}

unint64_t sub_18B846E4C()
{
  result = qword_1EA9D93B0;
  if (!qword_1EA9D93B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D93B0);
  }

  return result;
}

uint64_t sub_18B846EA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || (v5 = *(_s4ItemVMa_2() - 8), a1 == a2))
    {
      updated = 1;
    }

    else
    {
      v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v7 = a1 + v6;
      v8 = a2 + v6;
      v9 = *(v5 + 72);
      do
      {
        updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
        if ((updated & 1) == 0)
        {
          break;
        }

        v8 += v9;
        v7 += v9;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    updated = 0;
  }

  return updated & 1;
}

unint64_t sub_18B846F84()
{
  result = qword_1EA9D6550;
  if (!qword_1EA9D6550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6550);
  }

  return result;
}

uint64_t sub_18B846FD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2)
    {
      return 1;
    }

    v5 = _s7SectionVMa_1();
    v6 = a2;
    v7 = *(v5 - 8);
    if (a1 == a2)
    {
      return 1;
    }

    v8 = v5;
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v10 = a1 + v9;
    v11 = v6 + v9;
    v12 = *(v7 + 72);
    while ((_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0() & 1) != 0 && *(v10 + *(v8 + 20)) == *(v11 + *(v8 + 20)))
    {
      v11 += v12;
      v10 += v12;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

id sub_18B8470C0(_OWORD *a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  v131 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9300);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v133 = &v123[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v126 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v135 = &v123[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v123[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9CA0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v132 = &v123[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v123[-v15];
  if (v4)
  {
    sub_18B9CB7BC();
    v17 = sub_18B84814C();
    v19 = v18;
    memmove(v141, v18, 0x139uLL);
    if (sub_18B81CA10(v141) != 1)
    {
      v20 = v19[17];
      v139[8] = v19[16];
      v139[9] = v20;
      v139[10] = v19[18];
      v21 = v19[13];
      v139[4] = v19[12];
      v139[5] = v21;
      v22 = v19[15];
      v139[6] = v19[14];
      v139[7] = v22;
      v23 = v19[9];
      v139[0] = v19[8];
      v139[1] = v23;
      v24 = v19[11];
      v139[2] = v19[10];
      v139[3] = v24;
      *(&v139[10] + 9) = *(v19 + 297);
      v25 = v131;
      v26 = *v131;
      v27 = v131[1];
      v28 = v131[3];
      v19[10] = v131[2];
      v19[11] = v28;
      v19[8] = v26;
      v19[9] = v27;
      v29 = v25[4];
      v30 = v25[5];
      v31 = v25[7];
      v19[14] = v25[6];
      v19[15] = v31;
      v19[12] = v29;
      v19[13] = v30;
      v32 = v25[8];
      v33 = v25[9];
      v34 = v25[10];
      *(v19 + 297) = *(v25 + 169);
      v19[17] = v33;
      v19[18] = v34;
      v19[16] = v32;
      sub_18B7CA054(v25, v138, &unk_1EA9D50E0);
      sub_18B988BAC(v139, &unk_1EA9D50E0);
    }

    (v17)(&v137, 0);
  }

  v35 = sub_18B84814C();
  v37 = v36;
  memmove(v141, v36, 0x139uLL);
  result = sub_18B81CA10(v141);
  if (result == 1)
  {
    (v35)(v139, 0);
  }

  else
  {
    v39 = *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x110));
    if (!v39)
    {
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      return result;
    }

    *v37 = *(*(v39 + *((*v39 & *MEMORY[0x1E69E7D40]) + 0xB8)) + 24) > 0;
    (v35)(v139, 0);
  }

  v40 = v131;
  v134 = v16;
  v136 = v11;
  if (qword_1EA9D2280 == -1)
  {
    goto LABEL_10;
  }

  while (1)
  {
    swift_once();
LABEL_10:
    v41 = sub_18BC1F2C8();
    __swift_project_value_buffer(v41, qword_1EA9F7E38);
    sub_18B7CA054(v40, v139, &unk_1EA9D50E0);
    v42 = sub_18BC1F2A8();
    v43 = sub_18BC21228();
    sub_18B988BAC(v40, &unk_1EA9D50E0);
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v139[0] = v45;
      *v44 = 136315394;
      if (v4)
      {
        v46 = 0x646574616D696E61;
      }

      else
      {
        v46 = 0x6D696E612D6E6F6ELL;
      }

      if (v4)
      {
        v47 = 0xE800000000000000;
      }

      else
      {
        v47 = 0xEC00000064657461;
      }

      v48 = sub_18B7EA850(v46, v47, v139);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      v49 = sub_18B9C9F00();
      v51 = sub_18B7EA850(v49, v50, v139);

      *(v44 + 14) = v51;
      _os_log_impl(&dword_18B7AC000, v42, v43, "applying transaction (%s): %s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x18CFFEEE0](v45, -1, -1);
      MEMORY[0x18CFFEEE0](v44, -1, -1);
    }

    if (*(v40 + 184))
    {
      sub_18B81F588(v138);
      v52 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x1B0);
      swift_beginAccess();
      memcpy(v139, (v3 + v52), 0x139uLL);
      memcpy((v3 + v52), v138, 0x139uLL);
      return sub_18B988BAC(v139, &qword_1EA9D5100);
    }

    v124 = v4;
    v53 = MEMORY[0x1E69E7D40];
    result = *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0xF0));
    if (!result)
    {
      goto LABEL_78;
    }

    [result dismissMenu];
    v54 = *((*v53 & *v3) + 0x1A8);
    swift_beginAccess();
    v55 = v3 + v54;
    v56 = v134;
    sub_18B7CA054(v55, v134, &unk_1EA9D9CA0);
    updated = type metadata accessor for SFFluidCollectionViewTrackedUpdateToken();
    v58 = *(updated - 8);
    v59 = *(v58 + 48);
    v130 = updated;
    v60 = v59(v56, 1);
    sub_18B988BAC(v56, &unk_1EA9D9CA0);
    v125 = v3;
    if (v60 != 1)
    {
      goto LABEL_40;
    }

    v61 = *((*v53 & *v3) + 0x100);
    swift_beginAccess();
    v62 = *(v3 + v61);
    if ((v62 & 0xC000000000000001) != 0)
    {
      sub_18BC1E3F8();
      sub_18BC21958();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D50F0);
      sub_18B7B0B08(&qword_1EA9D50F8, &qword_1EA9D50F0);
      sub_18BC210A8();
      v63 = *(&v138[0] + 1);
      v62 = *&v138[0];
      v4 = *(&v138[1] + 1);
      v64 = *&v138[1];
      v65 = *&v138[2];
    }

    else
    {
      v66 = -1 << *(v62 + 32);
      v63 = v62 + 56;
      v64 = ~v66;
      v67 = -v66;
      v68 = v67 < 64 ? ~(-1 << v67) : -1;
      v65 = v68 & *(v62 + 56);
      sub_18BC1E3F8();
      v4 = 0;
    }

    v40 = (v64 + 64) >> 6;
    v127 = v64;
    v128 = (v58 + 56);
    v129 = v63;
    if (v62 < 0)
    {
      break;
    }

LABEL_29:
    v69 = v4;
    v70 = v65;
    v71 = v4;
    if (v65)
    {
LABEL_33:
      v72 = (v70 - 1) & v70;
      v73 = *(*(v62 + 48) + ((v71 << 9) | (8 * __clz(__rbit64(v70)))));
      sub_18BC1E1A8();
      if (v73)
      {
        goto LABEL_37;
      }

      goto LABEL_39;
    }

    while (1)
    {
      v71 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        break;
      }

      if (v71 >= v40)
      {
        goto LABEL_39;
      }

      v70 = *(v63 + 8 * v71);
      ++v69;
      if (v70)
      {
        goto LABEL_33;
      }
    }

LABEL_74:
    __break(1u);
  }

  while (1)
  {
    v74 = sub_18BC219D8();
    if (!v74)
    {
      break;
    }

    v140 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D50F0);
    swift_dynamicCast();
    v73 = *&v139[0];
    v71 = v4;
    v72 = v65;
    if (!*&v139[0])
    {
      break;
    }

LABEL_37:
    v75 = v62;
    v76 = v132;
    (*v128)(v132, 1, 1, v130);
    v77 = *(*v73 + 160);
    swift_beginAccess();
    sub_18B7FD070(v76, v73 + v77, &unk_1EA9D9CA0);
    swift_endAccess();
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40);
    v79 = *(v78 - 8);
    v134 = v72;
    v3 = *(v79 + 56);
    v80 = v133;
    (v3)(v133, 1, 1, v78);
    v81 = *(*v73 + 168);
    swift_beginAccess();
    sub_18B7FD070(v80, v73 + v81, &unk_1EA9D9300);
    swift_endAccess();
    (v3)(v80, 1, 1, v78);
    v82 = *(*v73 + 176);
    swift_beginAccess();
    v83 = v80;
    v62 = v75;
    v63 = v129;
    sub_18B7FD070(v83, v73 + v82, &unk_1EA9D9300);
    swift_endAccess();

    v4 = v71;
    v65 = v134;
    if ((v62 & 0x8000000000000000) == 0)
    {
      goto LABEL_29;
    }
  }

LABEL_39:
  sub_18B7D2E34();
  v3 = v125;
  v40 = v131;
  v53 = MEMORY[0x1E69E7D40];
LABEL_40:
  v84 = *((*v53 & *v3) + 0x150);
  swift_beginAccess();
  v85 = *(v3 + v84);
  v86 = (v85 + 64);
  v87 = 1 << *(v85 + 32);
  if (v87 < 64)
  {
    v88 = ~(-1 << v87);
  }

  else
  {
    v88 = -1;
  }

  v4 = v88 & *(v85 + 64);
  v89 = (v87 + 63) >> 6;
  v129 = v85;
  sub_18BC1E3F8();
  v90 = 0;
  v127 = v89;
  v128 = v86;
  v91 = v136;
  while (v4)
  {
LABEL_51:
    v93 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v94 = *(*(v129 + 56) + ((v90 << 9) | (8 * v93)));
    v95 = *(*v94 + 184);
    swift_beginAccess();
    sub_18B7CA054(v94 + v95, v91, &unk_1EA9D92F0);
    v96 = *(v40 + 48);
    v97 = *(v40 + 56);
    v133 = v96;
    v98 = *(v97 + 16);
    v130 = v94;
    if (v98)
    {
      sub_18BC22158();
      sub_18BC1E1A8();
      sub_18B83ADFC(v139);
      v99 = sub_18BC221A8();
      v100 = -1 << *(v97 + 32);
      v101 = v99 & ~v100;
      v134 = (v97 + 56);
      if ((*(v97 + 56 + ((v101 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v101))
      {
        v132 = ~v100;
        v102 = *(v126 + 72);
        while (1)
        {
          v103 = v135;
          v3 = &unk_1EA9D92F0;
          sub_18B7CA054(*(v97 + 48) + v102 * v101, v135, &unk_1EA9D92F0);
          v104 = sub_18B8598D4(v103, v136);
          sub_18B988BAC(v103, &unk_1EA9D92F0);
          if (v104)
          {
            break;
          }

          v101 = (v101 + 1) & v132;
          if (((*&v134[(v101 >> 3) & 0xFFFFFFFFFFFFFF8] >> v101) & 1) == 0)
          {
            goto LABEL_58;
          }
        }

        v91 = v136;
        sub_18B988BAC(v136, &unk_1EA9D92F0);
        *(v130 + *(*v130 + 200)) = 1;
        goto LABEL_66;
      }
    }

    else
    {
      sub_18BC1E1A8();
    }

LABEL_58:
    v105 = v133;
    if (!*(v133 + 2) || (sub_18BC22158(), sub_18B83ADFC(v139), v106 = sub_18BC221A8(), v107 = -1 << v105[32], v3 = v106 & ~v107, v134 = v105 + 56, ((*&v105[((v3 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v3) & 1) == 0))
    {
LABEL_44:

      v91 = v136;
      sub_18B988BAC(v136, &unk_1EA9D92F0);
      goto LABEL_45;
    }

    v108 = ~v107;
    v109 = *(v126 + 72);
    while (1)
    {
      v110 = v135;
      sub_18B7CA054(*(v105 + 6) + v109 * v3, v135, &unk_1EA9D92F0);
      v111 = sub_18B8598D4(v110, v136);
      sub_18B988BAC(v110, &unk_1EA9D92F0);
      if (v111)
      {
        break;
      }

      v3 = (v3 + 1) & v108;
      v105 = v133;
      if (((*&v134[(v3 >> 3) & 0xFFFFFFFFFFFFFF8] >> v3) & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    v91 = v136;
    sub_18B988BAC(v136, &unk_1EA9D92F0);
    *(v130 + *(*v130 + 200)) = 0;
LABEL_66:

LABEL_45:
    v40 = v131;
    v89 = v127;
    v86 = v128;
  }

  while (1)
  {
    v92 = v90 + 1;
    if (__OFADD__(v90, 1))
    {
      __break(1u);
      goto LABEL_74;
    }

    if (v92 >= v89)
    {
      break;
    }

    v4 = v86[v92];
    ++v90;
    if (v4)
    {
      v90 = v92;
      goto LABEL_51;
    }
  }

  v112 = v125;
  v113 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_18BC1E1A8();
  sub_18B8487D0(MEMORY[0x1E69E7CD0], 1);

  v114 = v112 + *((*v113 & *v112) + 0x88);
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong() || (v115 = *(v114 + 1), ObjectType = swift_getObjectType(), LOBYTE(v115) = (*(v115 + 168))(v112, ObjectType, v115), result = swift_unknownObjectRelease(), (v115 & 1) == 0))
  {
    if (v124)
    {
      return [v112 layoutIfNeeded];
    }

    v117 = objc_opt_self();
    v118 = swift_allocObject();
    *(v118 + 16) = v112;
    v119 = swift_allocObject();
    *(v119 + 16) = sub_18B848F4C;
    *(v119 + 24) = v118;
    *&v139[2] = sub_18B9D53B0;
    *(&v139[2] + 1) = v119;
    *&v139[0] = MEMORY[0x1E69E9820];
    *(&v139[0] + 1) = 1107296256;
    *&v139[1] = sub_18B7E3BF4;
    *(&v139[1] + 1) = &block_descriptor_605;
    v120 = _Block_copy(v139);
    v121 = v112;
    sub_18BC1E1A8();

    [v117 performWithoutAnimation_];
    _Block_release(v120);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_77;
    }
  }

  return result;
}

unint64_t sub_18B8480F8()
{
  result = qword_1EA9D93A8;
  if (!qword_1EA9D93A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D93A8);
  }

  return result;
}

double sub_18B8481C8()
{
  v1 = *(v0 + 104);
  v2 = 0.0;
  if (*(v1 + 16))
  {
    v3 = sub_18B7C4104(0xD000000000000011, 0x800000018BC622C0);
    if (v4)
    {
      sub_18B7F44EC(*(v1 + 56) + 40 * v3, v7);
      if (swift_dynamicCast())
      {
        return v6;
      }
    }
  }

  return v2;
}

uint64_t type metadata accessor for SFFluidCollectionViewTrackedUpdateToken()
{
  result = qword_1EA9DA048;
  if (!qword_1EA9DA048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_18B8482B4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 104);
  v4 = 1.0;
  if (*(v3 + 16))
  {
    v5 = sub_18B7C4104(a1, a2);
    if (v6)
    {
      sub_18B7F44EC(*(v3 + 56) + 40 * v5, v9);
      if (swift_dynamicCast())
      {
        return v8;
      }
    }
  }

  return v4;
}

uint64_t sub_18B84834C(uint64_t a1, uint64_t a2)
{
  v4 = sub_18BC1EC08();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

__n128 sub_18B8483D8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  x = *a1;
  y = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 80);
  v60 = *(a1 + 64);
  v61 = v9;
  v62 = *(a1 + 96);
  v10 = *(a1 + 48);
  v58 = *(a1 + 32);
  v59 = v10;
  v11 = sub_18BC1EDD8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_interactiveInsertionStyle) != 1 && (*(v2 + 184) & 1) != 0 && (v16 = v13, sub_18B8489A0(), v17 >= 0.0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB730);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_18BC3E410;
    *(v20 + 32) = *(*(v2 + 192) + 16) - 2;
    sub_18BC1E1A8();
    MEMORY[0x18CFFA250](v20);
    sub_18B831DF0(0xD000000000000017, 0x800000018BC60750, 0, v46);

    (*(v12 + 8))(v15, v16);
    sub_18B7F4620(v46);
    MinX = CGRectGetMinX(v46[0]);
    v22 = (v2 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState);
    v23 = UIEdgeInsetsInsetRect(*(v2 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 32), *(v2 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 40), *(v2 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 48), *(v2 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 56), *(v2 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState), *(v2 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 8));
    v27 = v2 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_metrics;
    if (*(v2 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_metrics + 56) == 1)
    {
      v28 = Height;
      v29 = v23;
      v30 = v24;
      v31 = v25;
      v63.size.width = sub_18B7D2C68();
      v63.size.height = v32;
      v63.origin.x = 0.0;
      v63.origin.y = 0.0;
      MaxX = CGRectGetMaxX(v63);
      v64.origin.x = v29;
      v64.origin.y = v30;
      v64.size.width = v31;
      v64.size.height = v28;
      v34 = MaxX - CGRectGetMaxX(v64);
      v65.origin.x = v29;
      v65.origin.y = v30;
      v65.size.width = v31;
      v65.size.height = v28;
      MinY = CGRectGetMinY(v65);
      v66.origin.x = v29;
      v66.origin.y = v30;
      v66.size.width = v31;
      v66.size.height = v28;
      Width = CGRectGetWidth(v66);
      v67.origin.x = v29;
      v67.origin.y = v30;
      v67.size.width = v31;
      v67.size.height = v28;
      Height = CGRectGetHeight(v67);
      v23 = v34;
      v24 = MinY;
      v25 = Width;
    }

    if (*(v2 + 177) == 1)
    {
      v37 = CGRectGetMinX(*&v23);
      v38 = sub_18B7E1178();
      v39 = 0.0;
      if (*(v2 + 177) == 1)
      {
        v39 = *(v27 + 88);
      }

      v40 = v37 - v38 + v39;
    }

    else
    {
      v41 = CGRectGetMinX(v22[1]);
      v40 = v41 - sub_18B7E1178();
    }

    v42 = v40 - MinX;
    sub_18B8489A0();
    v44 = _SFUninterpolate(v43, 0.0, 0.33);
    if (v44 <= 0.0)
    {
      v44 = 0.0;
    }

    if (v44 > 1.0)
    {
      v44 = 1.0;
    }

    sub_18B848CA0(&v47, v44);
    v45 = v42 * *(v2 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_interactiveInsertionInfo + 32);
    v55 = v50;
    v56 = v51;
    v57 = v52;
    v53 = v48;
    v54 = v49;
    v68 = CGRectOffset(v47, v45, 0.0);
    x = v68.origin.x;
    y = v68.origin.y;
    v7 = v68.size.width;
    v8 = v68.size.height;
  }

  else
  {
    sub_18B81407C(a1, &v47);
    v55 = v60;
    v56 = v61;
    v57 = v62;
    v53 = v58;
    v54 = v59;
  }

  *a2 = x;
  *(a2 + 8) = y;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  v18 = v56;
  *(a2 + 64) = v55;
  *(a2 + 80) = v18;
  *(a2 + 96) = v57;
  result = v54;
  *(a2 + 32) = v53;
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_18B8487D0(uint64_t a1, int a2)
{
  v3 = a2;
  v5 = a2 & 0x100;
  v6 = a2 & 0x10000;
  if (*(v2 + 91) == 1 && v6 == 0)
  {
    swift_beginAccess();
    if (*(v2 + 80))
    {
      result = swift_beginAccess();
      if (*(v2 + 80))
      {
        v15 = *(v2 + 88) | v3;
        *(v2 + 88) = v15 & 1;
        *(v2 + 90) = *(v2 + 90);
        if ((v15 & 1) == 0)
        {
          v16 = sub_18BC1E3F8();
          sub_18B845298(v16);
        }

        return swift_endAccess();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      *(v2 + 80) = a1;
      *(v2 + 90) = 0;
      *(v2 + 88) = v3 & 1 | v5;
      sub_18BC1E3F8();
    }
  }

  else
  {
    swift_beginAccess();
    v8 = *(v2 + 72) | v3;
    *(v2 + 72) = v8 & 1;
    *(v2 + 74) = *(v2 + 74) & 1 | (v6 != 0);
    if ((v8 & 1) == 0)
    {
      v9 = sub_18BC1E3F8();
      sub_18B845298(v9);
    }

    v10 = swift_endAccess();
    result = (*(*v2 + 432))(v10);
    if (result)
    {
      v13 = v12;
      ObjectType = swift_getObjectType();
      v17 = a1;
      v18 = v3 & 1;
      v19 = HIBYTE(v5);
      v20 = BYTE2(v6);
      (*(v13 + 24))(&v17, ObjectType, v13);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_18B8489A0()
{
  v1 = sub_18BC1EDD8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_18B7E1178() != 0.0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB730);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_18BC3E410;
    *(v5 + 32) = *(*(v0 + 192) + 16) - 1;
    sub_18BC1E1A8();
    MEMORY[0x18CFFA250](v5);
    sub_18B831DF0(0xD000000000000017, 0x800000018BC60750, 0, v29);

    (*(v2 + 8))(v4, v1);
    sub_18B7F4620(v29);
    v6 = *v29;
    v7 = *&v29[1];
    v8 = v30;
    v9 = v31;
    v10 = *(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 32);
    v11 = *(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 40);
    v12 = *(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 48);
    Height = *(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 56);
    if (*(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_metrics + 56) == 1)
    {
      v27 = v30;
      v14 = Height;
      v26 = v31;
      v15 = v10;
      v16 = v11;
      v17 = v12;
      v32.size.width = sub_18B7D2C68();
      v32.size.height = v18;
      v32.origin.x = 0.0;
      v32.origin.y = 0.0;
      MaxX = CGRectGetMaxX(v32);
      v33.origin.x = v15;
      v33.origin.y = v16;
      v33.size.width = v17;
      v33.size.height = v14;
      v20 = CGRectGetMaxX(v33);
      v28 = v7;
      v21 = v6;
      v22 = MaxX - v20;
      v34.origin.x = v15;
      v34.origin.y = v16;
      v34.size.width = v17;
      v34.size.height = v14;
      MinY = CGRectGetMinY(v34);
      v35.origin.x = v15;
      v35.origin.y = v16;
      v35.size.width = v17;
      v35.size.height = v14;
      Width = CGRectGetWidth(v35);
      v36.origin.x = v15;
      v9 = v26;
      v36.origin.y = v16;
      v36.size.width = v17;
      v36.size.height = v14;
      v8 = v27;
      Height = CGRectGetHeight(v36);
      v10 = v22;
      v6 = v21;
      v7 = v28;
      v11 = MinY;
      v12 = Width;
    }

    CGRectGetMaxX(*&v10);
    v37.origin.x = v6;
    v37.origin.y = v7;
    v37.size.width = v8;
    v37.size.height = v9;
    CGRectGetMinX(v37);
    sub_18B7E1178();
  }
}

__n128 sub_18B848CA0@<Q0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v5 = *(v2 + 64);
  v6 = *(v2 + 80);
  v7 = *(v2 + 32);
  v23 = *(v2 + 48);
  v24 = v5;
  v25 = v6;
  v8 = *(v2 + 16);
  v20 = *v2;
  v9 = *(v2 + 96);
  v10 = *(v2 + 104);
  v26 = v9;
  v21 = v8;
  v22 = v7;
  v19 = a2;
  sub_18B81407C(v3, v18);
  sub_18B7F3B64();
  sub_18BC21A68();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v10;
  sub_18B7F3BB8(v18, 0xD000000000000011, 0x800000018BC65280, isUniquelyReferenced_nonNull_native);
  result = v23;
  v13 = v25;
  *(a1 + 64) = v24;
  *(a1 + 80) = v13;
  v14 = v21;
  v15 = v22;
  *a1 = v20;
  *(a1 + 16) = v14;
  v16 = v19;
  v17 = v26;
  *(a1 + 32) = v15;
  *(a1 + 48) = result;
  *(a1 + 96) = v17;
  *(a1 + 104) = v16;
  return result;
}

void *sub_18B848D98()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7038);
  v2 = *v0;
  v3 = sub_18BC21D68();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        sub_18B7F44EC(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
        result = sub_18BC1E3F8();
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

        v1 = v27;
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

uint64_t sub_18B848FBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = _s4PageVMa_0();
  a2[4] = sub_18B7F4EE4(&qword_1EA9D6D00, _s4PageVMa_0);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a2);
  return sub_18B7EC6E4(a1, boxed_opaque_existential_0Tm, _s4PageVMa_0);
}

void sub_18B84904C(void *a1)
{
  v1 = a1;
  sub_18B81D9D4();
}

uint64_t sub_18B8490A0()
{
  result = sub_18B812A74();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    LOBYTE(v3) = (*(v3 + 168))(v0, ObjectType, v3);
    swift_unknownObjectRelease();
    return v3 & 1;
  }

  return result;
}

void sub_18B84910C(uint64_t a1)
{
  v2 = v1;
  v4 = _s4PageVMa_0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  v7 = v1[2];
  sub_18BC1E1A8();
  v7(v23, a1);

  swift_beginAccess();
  v8 = v1[4];
  if (*(v8 + 16))
  {
    sub_18BC1E3F8();
    v9 = sub_18B8629FC(a1);
    if (v10)
    {
      v11 = *(v8 + 56) + 16 * v9;
      v12 = *(v11 + 8);
      v13 = *v11;

      v14 = v2[15];
      v15 = v2[16];
      __swift_project_boxed_opaque_existential_1Tm(v2 + 12, v14);
      v16 = v13;
      LOBYTE(v14) = sub_18B86EA9C(v16, v23, v14, v15);

      if ((v14 & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v23);

        return;
      }

      sub_18B7EC6E4(a1, v6, _s4PageVMa_0);
      swift_beginAccess();
      sub_18BAD2E54(0, 0, v6);
      swift_endAccess();
      v17 = v2[15];
      v18 = v2[16];
      __swift_project_boxed_opaque_existential_1Tm(v2 + 12, v17);
      v19 = v16;
      sub_18B86ED4C(v19, v23, v17, v18);

      [v19 setHidden_];
      [v19 _removeAllRetargetableAnimations_];
      swift_beginAccess();
      v20 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v2[17];
      v2[17] = 0x8000000000000000;
      sub_18B865A74(v20, v12, a1, isUniquelyReferenced_nonNull_native);
      v2[17] = v22;
      swift_endAccess();
    }

    else
    {
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v23);
}

id sub_18B849380(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v30 = &_s7ContentVN_1;
  v31 = &off_1EFF33718;
  v28[0] = a2;
  v29 = a3;
  swift_beginAccess();
  v6 = a4[4];
  v7 = *(v6 + 16);
  sub_18BC1E3F8();
  if (v7)
  {
    sub_18BC1E3F8();
    v8 = sub_18B8629FC(a1);
    if (v9)
    {
      v10 = *(*(v6 + 56) + 16 * v8);

      goto LABEL_9;
    }
  }

  swift_beginAccess();
  v11 = sub_18B8496F0(a1);
  AssociatedConformanceWitness = v12;
  swift_endAccess();
  if (v11)
  {
    ObjectType = swift_getObjectType();
    v26[0] = v11;
    v15 = *(AssociatedConformanceWitness + 16);
    v16 = v11;
    v15(ObjectType, AssociatedConformanceWitness);
    v17 = [v16 layer];

    [v17 clearHasBeenCommitted];
  }

  else
  {
    v18 = a4[15];
    v19 = a4[16];
    __swift_project_boxed_opaque_existential_1Tm(a4 + 12, v18);
    v20 = (*(v19 + 72))(v18, v19);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v16 = v20;
  }

  swift_beginAccess();
  v10 = v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = a4[4];
  a4[4] = 0x8000000000000000;
  sub_18B865A74(v10, AssociatedConformanceWitness, a1, isUniquelyReferenced_nonNull_native);
  a4[4] = v27;
  swift_endAccess();
  v22 = a4[15];
  v23 = a4[16];
  __swift_project_boxed_opaque_existential_1Tm(a4 + 12, v22);
  v24 = a4[2];
  sub_18BC1E1A8();
  v24(v26, a1);

  sub_18B80D714(v10, v26, v28, v22, v23);

  __swift_destroy_boxed_opaque_existential_1Tm(v26);
LABEL_9:
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  return v10;
}

id sub_18B849650()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x168) + 8);
  if (sub_18BC1E3F8())
  {

    if ((v1 & 0x100) != 0)
    {
      return 0;
    }
  }

  if (sub_18B8490A0())
  {
    return 0;
  }

  else
  {
    return [objc_opt_self() areAnimationsEnabled];
  }
}

id sub_18B8496F0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6D50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = _s4PageVMa_0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  if (!*(v9 + 16))
  {
    return 0;
  }

  v10 = sub_18B8629FC(a1);
  if (v11)
  {
    v12 = *(*(v9 + 56) + 16 * v10);
    sub_18B7EC6E4(a1, v8, _s4PageVMa_0);
    v13 = v12;
    sub_18BAD2E54(0, 0, v8);
    return v13;
  }

  if (!*(v9 + 16))
  {
    return 0;
  }

  v15 = sub_18BC21918();
  v16 = sub_18BC097CC(v5, v15, *(v9 + 36), 0, sub_18BB2C110, _s4PageVMa_0, _s4PageVMa_0, sub_18BB5D7A0);
  sub_18B7ED118(v5, _s4PageVMa_0);
  return v16;
}

id sub_18B8498E4()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = qword_1EA9D6BA0;
  swift_beginAccess();
  sub_18B7E0DF0(Strong + v1, v5);

  sub_18B7DFE48(&v6, v4);
  sub_18B7D4D24(v5);
  v2 = objc_allocWithZone(type metadata accessor for TabOverview());
  return sub_18B849AF4(v4, 0.0, 0.0, 0.0, 0.0);
}

uint64_t sub_18B849988@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  a2[5] = v10;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  return sub_18BC1E3F8();
}

uint64_t sub_18B849A44(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[4];
  v5 = a1[5];
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = *(a1 + 1);
  *(v1 + 48) = v6;
  *(v1 + 56) = v5;
}

id sub_18B849AF4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = &v5[OBJC_IVAR___SFTabOverview_handlers];
  *v12 = CGRectMake;
  v12[1] = 0;
  v12[2] = sub_18B7E9C50;
  v12[3] = 0;
  v12[4] = CGRectMake;
  v12[5] = 0;
  v12[6] = CGRectMake;
  v12[7] = 0;
  v12[8] = CGRectMake;
  v12[9] = 0;
  v12[10] = CGRectMake;
  v12[11] = 0;
  v12[12] = sub_18B9A926C;
  v12[13] = 0;
  v12[14] = sub_18B9A9278;
  v12[15] = 0;
  v12[16] = CGRectMake;
  v12[17] = 0;
  v12[18] = sub_18B8390A8;
  v12[19] = 0;
  v12[20] = sub_18B814EE4;
  v12[21] = 0;
  v12[22] = CGRectMake;
  v12[23] = 0;
  v12[24] = CGRectMake;
  v12[25] = 0;
  v12[26] = CGRectMake;
  v12[27] = 0;
  v12[28] = sub_18B8390A8;
  v12[29] = 0;
  v12[30] = CGRectMake;
  v12[31] = 0;
  v12[32] = CGRectMake;
  v12[33] = 0;
  v12[34] = sub_18B7E9C50;
  v12[35] = 0;
  v12[36] = sub_18B7E9C50;
  v12[37] = 0;
  v12[38] = CGRectMake;
  v12[39] = 0;
  v13 = &v5[OBJC_IVAR___SFTabOverview_headerRegistration];
  *v13 = 0;
  v13[1] = 0;
  *&v5[OBJC_IVAR___SFTabOverview_tabIconPool] = 0;
  *&v5[OBJC_IVAR___SFTabOverview_tabSnapshotPool] = 0;
  v14 = OBJC_IVAR___SFTabOverview_tabSnapshotRegistrations;
  v15 = MEMORY[0x1E69E7CC0];
  *&v5[v14] = sub_18B84A540(MEMORY[0x1E69E7CC0]);
  v16 = &v5[OBJC_IVAR___SFTabOverview_content];
  v17 = MEMORY[0x1E69E7CD0];
  *(&v66 + 1) = MEMORY[0x1E69E7CD0];
  *v60 = 0;
  v60[4] = 0;
  memset(v67, 0, sizeof(v67));
  sub_18B988BAC(v67, &qword_1EA9D50D8);
  memset(&v60[8], 0, 80);
  *&v60[88] = 1;
  *&v61 = v15;
  *(&v61 + 1) = v17;
  v62 = 0uLL;
  *&v63 = 0;
  *(&v63 + 1) = CGRectMake;
  v64 = 0uLL;
  v65 = 0xE000000000000000;
  *&v66 = 0xE000000000000000;
  sub_18B829CB0();
  v76 = v63;
  v77 = 0uLL;
  v78 = 0xE000000000000000;
  v79 = v66;
  v72 = *&v60[64];
  v73 = *&v60[80];
  v74 = v61;
  v75 = 0uLL;
  v68 = *v60;
  v69 = *&v60[16];
  v70 = *&v60[32];
  v71 = *&v60[48];
  v80[8] = v63;
  v80[9] = 0uLL;
  v80[10] = 0xE000000000000000;
  v80[11] = v66;
  v80[4] = *&v60[64];
  v80[5] = *&v60[80];
  v80[6] = v61;
  v80[7] = 0uLL;
  v80[0] = *v60;
  v80[1] = *&v60[16];
  v80[2] = *&v60[32];
  v80[3] = *&v60[48];
  sub_18B82B150(&v68, v59);
  sub_18B82B2F0(v80);
  v18 = v77;
  v16[8] = v76;
  v16[9] = v18;
  v19 = v79;
  v16[10] = v78;
  v16[11] = v19;
  v20 = v73;
  v16[4] = v72;
  v16[5] = v20;
  v21 = v75;
  v16[6] = v74;
  v16[7] = v21;
  v22 = v69;
  *v16 = v68;
  v16[1] = v22;
  v23 = v71;
  v16[2] = v70;
  v16[3] = v23;
  *&v5[OBJC_IVAR___SFTabOverview_itemsClosedWithGesture] = v17;
  *&v5[OBJC_IVAR___SFTabOverview_itemsToCloseAfterCommit] = v17;
  v24 = &v5[OBJC_IVAR___SFTabOverview_itemViewMetrics];
  v60[0] = 1;
  v59[0] = 1;
  *v24 = xmmword_18BC42B80;
  *(v24 + 2) = 0x4008000000000000;
  *(v24 + 24) = 0u;
  *(v24 + 40) = 0u;
  v24[56] = 1;
  *(v24 + 8) = 0;
  *(v24 + 9) = 0;
  v24[80] = 1;
  *(v24 + 88) = xmmword_18BC42B90;
  *(v24 + 104) = xmmword_18BC42BA0;
  *(v24 + 120) = vdupq_n_s64(0x404E000000000000uLL);
  *(v24 + 136) = xmmword_18BC42BB0;
  *(v24 + 152) = xmmword_18BC42BC0;
  *(v24 + 168) = xmmword_18BC42BD0;
  *(v24 + 184) = xmmword_18BC42BE0;
  v25 = &v5[OBJC_IVAR___SFTabOverview_itemsWithHiddenThumbnail];
  *(v24 + 200) = xmmword_18BC42BF0;
  *v25 = sub_18B84A7F4(v15);
  v25[1] = v26;
  v25[2] = v27;
  v28 = &v6[OBJC_IVAR___SFTabOverview_itemsWithHiddenTitle];
  *v28 = sub_18B84A7F4(v15);
  v28[1] = v29;
  v28[2] = v30;
  v31 = &v6[OBJC_IVAR___SFTabOverview_hiddenItems];
  *v31 = sub_18B84A7F4(v15);
  v31[1] = v32;
  v31[2] = v33;
  v34 = &v6[OBJC_IVAR___SFTabOverview_browserContentInsets];
  *v34 = 0u;
  *(v34 + 1) = 0u;
  v34[32] = 1;
  v35 = &v6[OBJC_IVAR___SFTabOverview_browserReferenceSize];
  *v35 = 0;
  *(v35 + 1) = 0;
  v35[16] = 1;
  v36 = &v6[OBJC_IVAR___SFTabOverview_didScroll];
  *v36 = CGRectMake;
  v36[1] = 0;
  v37 = OBJC_IVAR___SFTabOverview_gridLayout;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5228);
  v38 = swift_allocObject();
  v39 = *(*v38 + 1352);
  v40 = _s4ItemVMa_2();
  (*(*(v40 - 8) + 56))(v38 + v39, 1, 1, v40);
  *(v38 + *(*v38 + 1360)) = 0;
  v41 = *(*v38 + 1368);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40);
  (*(*(v42 - 8) + 56))(v38 + v41, 1, 1, v42);
  *(v38 + *(*v38 + 1376)) = 0;
  *&v6[v37] = sub_18B84ED80();
  *&v6[OBJC_IVAR___SFTabOverview____lazy_storage___gridSizingInfo] = 0;
  v43 = &v6[OBJC_IVAR___SFTabOverview_metrics];
  *v43 = xmmword_18BC42C00;
  *(v43 + 1) = xmmword_18BC42C10;
  *(v43 + 4) = 0x3FE3333333333333;
  *&v6[OBJC_IVAR___SFTabOverview_preferredThumbnailAspectRatio] = 0;
  *&v6[OBJC_IVAR___SFTabOverview_contentBlurRadius] = 0;
  *&v6[OBJC_IVAR___SFTabOverview_contentOpacity] = 0x3FF0000000000000;
  *&v6[OBJC_IVAR___SFTabOverview_contentScale] = 0x3FF0000000000000;
  v44 = &v6[OBJC_IVAR___SFTabOverview_contentObscuringConfiguration];
  *v44 = xmmword_18BC3DD80;
  v44[16] = 1;
  *(v44 + 24) = xmmword_18BC3DD80;
  v44[40] = 1;
  v6[OBJC_IVAR___SFTabOverview_isHighlighted] = 0;
  v6[OBJC_IVAR___SFTabOverview_isHovered] = 0;
  v45 = &v6[OBJC_IVAR___SFTabOverview_peekingInfo];
  *v45 = 2;
  v45[1] = 0;
  v45[2] = 0;
  v6[OBJC_IVAR___SFTabOverview_needsResetLayout] = 0;
  v46 = &v6[OBJC_IVAR___SFTabOverview_targetScrollPositionForNextLayoutPass];
  *v46 = 0u;
  v46[1] = 0u;
  v46[2] = 0u;
  v46[3] = 0u;
  v47 = &v6[OBJC_IVAR___SFTabOverview_searchState];
  *v47 = 0;
  v47[1] = 0;
  *&v6[OBJC_IVAR___SFTabOverview____lazy_storage___searchFilter] = 0;
  v48 = &v6[OBJC_IVAR___SFTabOverview_searchStateDidChange];
  *v48 = CGRectMake;
  v48[1] = 0;
  v49 = OBJC_IVAR___SFTabOverview_closingItemsContainerView;
  type metadata accessor for PassthroughView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v6[v49] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v51 = OBJC_IVAR___SFTabOverview_transitionContainerView;
  *&v6[v51] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v6[OBJC_IVAR___SFTabOverview_overlayView] = 0;
  v52 = OBJC_IVAR___SFTabOverview_backgroundView;
  _s14BackgroundViewCMa_0();
  *&v6[v52] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v6[OBJC_IVAR___SFTabOverview____lazy_storage___collectionView] = 0;
  v53 = OBJC_IVAR___SFTabOverview_contentBelowSearchBarView;
  type metadata accessor for BlurrableView();
  *&v6[v53] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v54 = OBJC_IVAR___SFTabOverview_overlayContainerView;
  *&v6[v54] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v6[OBJC_IVAR___SFTabOverview_peekingOverlayView] = 0;
  v55 = OBJC_IVAR___SFTabOverview_searchBarContainerView;
  *&v6[v55] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  swift_unknownObjectWeakInit();
  sub_18B7DFE48(a1, &v6[OBJC_IVAR___SFTabOverview_configuration]);
  v58.receiver = v6;
  v58.super_class = type metadata accessor for TabOverview();
  v56 = objc_msgSendSuper2(&v58, sel_initWithFrame_, a2, a3, a4, a5);
  sub_18B850F58();

  sub_18B7CA0E4(a1);
  return v56;
}

int64x2_t sub_18B84A364@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SFFluidCollectionView.Element();
  v3 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  swift_getTupleTypeMetadata2();
  v4 = sub_18BC20DE8();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_18B7C29AC(v4, v2, v3, WitnessTable);

  *a1 = v6;
  v7 = _s14LayoutSnapshotV9RectSliceVMa();
  v8 = sub_18BC210E8();
  swift_getTupleTypeMetadata2();
  v9 = sub_18BC20DE8();
  v10 = swift_getWitnessTable();
  v11 = sub_18B7C29AC(v9, v7, v8, v10);

  *(a1 + 8) = v11;
  sub_18B84A728((a1 + 16));
  result = vdupq_n_s64(0x4090000000000000uLL);
  *(a1 + 24) = result;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  return result;
}

unint64_t sub_18B84A540(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7200);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7208);
    v7 = sub_18BC21D88();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v9, v5, &qword_1EA9D7200);
      result = sub_18B857EE4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_18BC1EC08();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_18B84A728@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SFFluidCollectionView.Element();
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EA9DAA28);
  swift_getTupleTypeMetadata2();
  v4 = sub_18BC20DE8();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_18B7C29AC(v4, v2, v3, WitnessTable);

  *a1 = v6;
  return result;
}

double (*sub_18B84A7F4(uint64_t a1))(void, void, void, void)
{
  v2 = _s4ItemVMa_2();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18B7CA9C8(MEMORY[0x1E69E7CC0]);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return CGRectMake;
  }

  v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v9 = *(v3 + 72);
  while (1)
  {
    sub_18B8554D0(v8, v5, _s4ItemVMa_2);
    if (!v6[2])
    {
      break;
    }

    v10 = sub_18BB8B494(v5);
    if ((v11 & 1) == 0)
    {
      break;
    }

    v12 = *(v6[7] + 8 * v10);
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_32;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v6;
    v15 = sub_18BB8B494(v5);
    v17 = v6[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      goto LABEL_33;
    }

    v21 = v16;
    if (v6[3] < v20)
    {
      sub_18BB2EAD0(v20, isUniquelyReferenced_nonNull_native);
      v15 = sub_18BB8B494(v5);
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_35;
      }

LABEL_22:
      v6 = v41;
      if (v21)
      {
        goto LABEL_23;
      }

      goto LABEL_27;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_22;
    }

    v35 = v15;
    sub_18BB2A5A4();
    v15 = v35;
    v6 = v41;
    if (v21)
    {
LABEL_23:
      *(v6[7] + 8 * v15) = v13;
      goto LABEL_4;
    }

LABEL_27:
    v6[(v15 >> 6) + 8] |= 1 << v15;
    v36 = v15;
    sub_18B8554D0(v5, v6[6] + v15 * v9, _s4ItemVMa_2);
    *(v6[7] + 8 * v36) = v13;
    sub_18B815380(v5, _s4ItemVMa_2);
    v37 = v6[2];
    v19 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v19)
    {
      goto LABEL_34;
    }

    v6[2] = v38;
LABEL_5:
    v8 += v9;
    if (!--v7)
    {
      return CGRectMake;
    }
  }

  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = v6;
  v24 = sub_18BB8B494(v5);
  v26 = v6[2];
  v27 = (v25 & 1) == 0;
  v19 = __OFADD__(v26, v27);
  v28 = v26 + v27;
  if (!v19)
  {
    v29 = v25;
    if (v6[3] >= v28)
    {
      if (v23)
      {
        goto LABEL_18;
      }

      v34 = v24;
      sub_18BB2A5A4();
      v24 = v34;
      v6 = v41;
      if ((v29 & 1) == 0)
      {
LABEL_19:
        v6[(v24 >> 6) + 8] |= 1 << v24;
        v31 = v24;
        sub_18B8554D0(v5, v6[6] + v24 * v9, _s4ItemVMa_2);
        *(v6[7] + 8 * v31) = 1;
        v32 = v6[2];
        v19 = __OFADD__(v32, 1);
        v33 = v32 + 1;
        if (v19)
        {
          goto LABEL_31;
        }

        v6[2] = v33;
        goto LABEL_4;
      }
    }

    else
    {
      sub_18BB2EAD0(v28, v23);
      v24 = sub_18BB8B494(v5);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_35;
      }

LABEL_18:
      v6 = v41;
      if ((v29 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    *(v6[7] + 8 * v24) = 1;
LABEL_4:
    sub_18B815380(v5, _s4ItemVMa_2);
    goto LABEL_5;
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_18BC22078();
  __break(1u);
  return result;
}

uint64_t sub_18B84AB9C(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v38 = *(*v2 + 80);
  v37 = v4[11];
  v36 = v4[12];
  v35 = v4[13];
  v34 = sub_18B8103B0();
  *&v50 = v38;
  *(&v50 + 1) = v37;
  v51 = &type metadata for SFFluidTabOverviewSupplementary;
  v52 = v36;
  v53 = v35;
  v54 = v34;
  v33 = type metadata accessor for SFFluidCollectionView.Element();
  v5 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v7 = &v33 - v6;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v13 = a1[4];
  v12 = a1[5];
  *&v50 = *a1;
  v8 = v50;
  *(&v50 + 1) = v9;
  v51 = v10;
  v52 = v11;
  v53 = v13;
  v54 = v12;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  sub_18B84AFF4(&v50);
  *(v2 + 32) = 0;
  *(v2 + 152) = 0;
  *(v2 + 48) = 0;
  *&v50 = v8;
  *(&v50 + 1) = v9;
  v51 = v10;
  v52 = v11;
  v53 = v13;
  v54 = v12;
  v14 = v33;
  swift_storeEnumTagMultiPayload();
  *&v45 = v38;
  *(&v45 + 1) = v37;
  v46 = &type metadata for SFFluidTabOverviewSupplementary;
  v47 = v36;
  v48 = v35;
  v49 = v34;
  v15 = type metadata accessor for SFFluidCollectionView.DataSource.Snapshot();
  v16 = SFFluidCollectionView.DataSource.Snapshot.supplementaries(for:)(v7, v15);
  result = (*(v5 + 8))(v7, v14);
  v18 = 0;
  v19 = 1 << *(v16 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v16 + 56);
  v22 = (v19 + 63) >> 6;
  v23 = &unk_1EA9DA358;
  while (v21)
  {
LABEL_9:
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    result = sub_18B833990(*(v16 + 48) + 40 * (v25 | (v18 << 6)), &v50);
    if (v52 > 1)
    {
      if (v52 == 2)
      {
        *(v2 + 33) = 1;
      }

      else if (v52 != 3)
      {
        goto LABEL_15;
      }
    }

    else if (v52)
    {
      if (v52 == 1)
      {
        *(v2 + 32) = 1;
      }

      else
      {
LABEL_15:
        v45 = v50;
        v46 = v51;
        v47 = v52;
        v48 = v53;
        *(v2 + 152) = 1;
        sub_18B7F44EC(&v45, v41);
        __swift_instantiateConcreteTypeFromMangledNameV2(v23);
        if (swift_dynamicCast())
        {
          sub_18B7C3FA4(v39, v42);
          v26 = v23;
          v27 = v43;
          v28 = v44;
          __swift_project_boxed_opaque_existential_1Tm(v42, v43);
          *(v2 + 48) = (*(v28 + 16))(v27, v28) & 1;
          v29 = v43;
          v30 = v44;
          __swift_project_boxed_opaque_existential_1Tm(v42, v43);
          v31 = v29;
          v23 = v26;
          v32 = (*(v30 + 24))(v31, v30);
          sub_18B831014(&v45);
          *(v2 + 153) = v32 & 1;
          result = __swift_destroy_boxed_opaque_existential_1Tm(v42);
        }

        else
        {
          sub_18B831014(&v45);
          memset(v39, 0, sizeof(v39));
          v40 = 0;
          result = sub_18BB82E5C(v39);
        }
      }
    }
  }

  while (1)
  {
    v24 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v24 >= v22)
    {
    }

    v21 = *(v16 + 56 + 8 * v24);
    ++v18;
    if (v21)
    {
      v18 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18B84AFF4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *(v1 + 176) = *a1;
  *(v1 + 184) = v2;
  *(v1 + 192) = *(a1 + 16);
  *(v1 + 208) = v3;
  *(v1 + 216) = v4;
}

uint64_t sub_18B84B080(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18B84B0C8(uint64_t a1)
{
  result = sub_18B84B080(&qword_1EA9D5138, _s7SectionVMa_1);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18B84B120(uint64_t a1, uint64_t a2)
{
  sub_18BC22158();
  SFFluidCollectionView.Element.hash(into:)(v4, a2);
  return sub_18BC221A8();
}

uint64_t SFFluidCollectionView.Element.hash(into:)(uint64_t a1, uint64_t a2)
{
  v43 = *(a2 + 32);
  v44 = a1;
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = *(v5 + 24);
  v41 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v38 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = (&v37 - v21);
  v23 = *(v15 + 16);
  v23(&v37 - v21, v2, a2, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v40 = *v22;
      v27 = v43;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v29 = swift_projectBox();
      v30 = *(TupleTypeMetadata2 + 48);
      v31 = v41;
      v32 = v42;
      (*(v42 + 16))(v41, v29, v27);
      (v23)(v18, v29 + v30, a2);
      v33 = v44;
      MEMORY[0x18CFFD660](3);
      sub_18BC20A78();
      SFFluidCollectionView.Element.hash(into:)(v33, a2);
      (*(v15 + 8))(v18, a2);
      (*(v32 + 8))(v31, v27);
    }

    else
    {
      return MEMORY[0x18CFFD660](0);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v34 = v39;
    v35 = v22;
    v36 = v40;
    (*(v39 + 32))(v8, v35, v40);
    MEMORY[0x18CFFD660](2);
    sub_18BC20A78();
    return (*(v34 + 8))(v8, v36);
  }

  else
  {
    v25 = v38;
    (*(v38 + 32))(v13, v22, v10);
    MEMORY[0x18CFFD660](1);
    sub_18BC20A78();
    return (*(v25 + 8))(v13, v10);
  }
}

uint64_t static SFFluidCollectionView.Element.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v89 = a1;
  v90 = a2;
  v85 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v77 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v78 = &v72 - v7;
  v84 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v74 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v14;
  v87 = v15;
  v91 = v14;
  v92 = v15;
  v79 = v16;
  v80 = v17;
  v93 = v16;
  v94 = v17;
  v81 = v18;
  v95 = v18;
  v96 = v19;
  v76 = v19;
  v20 = type metadata accessor for SFFluidCollectionView.Element();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v75 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v83 = &v72 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v72 - v26);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v72 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v72 - v32;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = *(TupleTypeMetadata2 - 8);
  v36 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v38 = &v72 - v37;
  v40 = *(v39 + 48);
  v88 = v21;
  v41 = *(v21 + 16);
  v41(&v72 - v37, v89, v20, v36);
  (v41)(&v38[v40], v90, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (v41)(v30, v38, v20);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v84 + 8))(v30, v87);
        goto LABEL_15;
      }

      v62 = v84;
      v63 = v74;
      v64 = v87;
      (*(v84 + 32))(v74, &v38[v40], v87);
      v59 = sub_18BC20AE8();
      v65 = *(v62 + 8);
      v65(v63, v64);
      v66 = v30;
    }

    else
    {
      (v41)(v33, v38, v20);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v82 + 8))(v33, v86);
LABEL_15:
        (*(v35 + 8))(v38, TupleTypeMetadata2);
LABEL_16:
        v59 = 0;
        return v59 & 1;
      }

      v67 = v82;
      v68 = v73;
      v64 = v86;
      (*(v82 + 32))(v73, &v38[v40], v86);
      v59 = sub_18BC20AE8();
      v65 = *(v67 + 8);
      v65(v68, v64);
      v66 = v33;
    }

    v65(v66, v64);
    (*(v88 + 8))(v38, v20);
    return v59 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    (v41)(v27, v38, v20);
    v43 = *v27;
    if (swift_getEnumCaseMultiPayload() != 2)
    {

      goto LABEL_15;
    }

    v44 = v79;
    v45 = swift_getTupleTypeMetadata2();
    v90 = v43;
    v46 = swift_projectBox();
    v82 = v46;
    v84 = *(v45 + 48);
    v89 = *&v38[v40];
    v47 = swift_projectBox();
    v48 = *(v85 + 16);
    v49 = v78;
    v48(v78, v46, v44);
    v50 = v77;
    v48(v77, v47, v44);
    v51 = v84;
    (v41)(v83, v82 + v84, v20);
    v52 = v47 + v51;
    v53 = v75;
    (v41)(v75, v52, v20);
    v54 = v50;
    v55 = v44;
    v56 = v49;
    v57 = v76;
    if ((sub_18BC20AE8() & 1) == 0)
    {
      v70 = *(v88 + 8);
      v70(v53, v20);
      v70(v83, v20);
      v71 = *(v85 + 8);
      v71(v50, v55);
      v71(v56, v55);

      v70(v38, v20);
      goto LABEL_16;
    }

    v58 = v83;
    v59 = static SFFluidCollectionView.Element.== infix(_:_:)(v83, v53, v86, v87, v55, v80, v81, v57);
    v60 = *(v88 + 8);
    v60(v53, v20);
    v60(v58, v20);
    v61 = *(v85 + 8);
    v61(v54, v55);
    v61(v56, v55);

    v60(v38, v20);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_15;
    }

    (*(v88 + 8))(v38, v20);
    v59 = 1;
  }

  return v59 & 1;
}

uint64_t sub_18B84BDF0(uint64_t a1)
{
  result = sub_18B82AD7C(&qword_1EA9D9230, _s4ItemVMa_2);
  *(a1 + 8) = result;
  return result;
}

void sub_18B84BE74(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 600);
  v5 = *(*v1 + 608);
  v6 = *(*v1 + 616);
  v7 = *(*v1 + 624);
  v8 = sub_18B8103B0();
  *&v111 = v4;
  *(&v111 + 1) = v5;
  *&v112 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v112 + 1) = v6;
  v89 = v7;
  *&v113 = v7;
  *(&v113 + 1) = v8;
  v84 = type metadata accessor for SFFluidCollectionView.Element();
  v9 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v75 - v10;
  v11 = *(*&v4 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v82 = &v75 - v17;
  v18 = *(v3 + 456);
  v97 = v1;
  v76 = v18(v16);
  if (v76)
  {
    v99 = v8;
    v94 = v6;
    v95 = v5;
    v96 = a1;
    sub_18B810930(&v111);
    v19 = *(&v113 + 1);
    v75 = sub_18BC1E1A8();

    v81 = *(v19 + 16);
    if (v81)
    {
      v20 = 0;
      v79 = (v11 + 32);
      v78 = (v11 + 8);
      v21 = v89;
      v22 = v14;
      v80 = v19;
      v98 = v14;
      v93 = (v9 + 8);
      v92 = (v11 + 16);
      v77 = v4;
      do
      {
        v23 = v82;
        v87 = v20;
        sub_18BC21C08();
        (*v79)(v22, v23, COERCE_DOUBLE(*&v4));
        sub_18B85BADC(v22);
        v25 = v24;
        v26 = sub_18B85BC44(v22);
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v33 = v22;
        *&v34 = COERCE_DOUBLE(sub_18B85BEA4(v22, v26, v27, v29, v31, v25));
        if (sub_18B81280C())
        {
          v36 = v35;
          ObjectType = swift_getObjectType();
          *&v38 = COERCE_DOUBLE((*(v36 + 104))(v76, v97, v33, ObjectType, v36));
          v40 = v39;
          swift_unknownObjectRelease();
          if (v40)
          {
            v41 = v34;
          }

          else
          {
            v41 = v38;
          }
        }

        else
        {
          v41 = v34;
        }

        v42 = v41 < v34;
        if (v41 >= v34)
        {
          v41 = v34;
        }

        v88 = *&v41;
        LOBYTE(v111) = 0;
        v43 = v95;
        v44 = v94;
        SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(0x49737265746E6563, 0xEC000000736D6574, &v111, MEMORY[0x1E69E6370], &v107);
        v45 = v21;
        v47 = *(&v107 + 1);
        v46 = *&v107;
        v48 = v108;
        v91 = *v92;
        v49 = v83;
        v91(v83, v98, *&v4);
        v50 = v84;
        swift_storeEnumTagMultiPayload();
        v110 = v42;
        v101 = v46;
        v102 = v47;
        LOBYTE(v103) = v48;
        *&v111 = v4;
        *(&v111 + 1) = v43;
        *&v112 = &type metadata for SFFluidTabOverviewSupplementary;
        *(&v112 + 1) = v44;
        *&v113 = v45;
        *(&v113 + 1) = v99;
        v90 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot.Metrics();
        sub_18B85D588(&v110, &v101, v49, v90, MEMORY[0x1E69E6370]);
        v100 = *v93;
        v100(v49, v50);

        *&v107 = 1;
        v51 = MEMORY[0x1E69E6530];
        SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(0x736E6D756C6F63, 0xE700000000000000, &v107, MEMORY[0x1E69E6530], &v111);
        v86 = v111;
        v52 = v112;
        v91(v49, v98, *&v4);
        swift_storeEnumTagMultiPayload();
        v101 = v88;
        v107 = v86;
        *&v108 = v52;
        sub_18B85D588(&v101, &v107, v49, v90, v51);
        v100(v49, v50);

        type metadata accessor for UIEdgeInsets(0);
        v88 = *&v53;
        v54 = v50;
        sub_18B85E0CC(0x65736E496D657469, &v111, 0xEA00000000007374);
        v55 = v111;
        v56 = v98;
        v57 = v91;
        v91(v49, v98, *&v4);
        v86 = v112;
        v85 = v113;
        swift_storeEnumTagMultiPayload();
        v101 = sub_18B85E178(v56);
        v102 = v58;
        v103 = v59;
        v104 = v60;
        v107 = v55;
        v109 = v85;
        v108 = v86;
        v61 = v90;
        sub_18B85D588(&v101, &v107, v49, v90, *&v88);
        v100(v49, v54);

        sub_18B85E0CC(0x496E6F6974636573, &v111, 0xED0000737465736ELL);
        v62 = v111;
        v57(v49, v56, *&v4);
        v86 = v112;
        v85 = v113;
        swift_storeEnumTagMultiPayload();
        v101 = v26;
        v102 = v28;
        v103 = *&v30;
        v104 = v32;
        v107 = v62;
        v109 = v85;
        v108 = v86;
        sub_18B85D588(&v101, &v107, v49, v61, *&v88);
        v63 = v100;
        v100(v49, v54);

        sub_18B810930(&v111);
        v107 = v111;
        v108 = v112;
        v109 = v113;
        v57(v49, v56, *&v4);
        v64 = v99;
        swift_storeEnumTagMultiPayload();
        v101 = v4;
        v102 = v95;
        v103 = &type metadata for SFFluidTabOverviewSupplementary;
        v104 = v94;
        v105 = v89;
        v106 = v64;
        v65 = type metadata accessor for SFFluidCollectionView.DataSource.Snapshot();
        v66 = SFFluidCollectionView.DataSource.Snapshot.supplementaries(for:)(v49, v65);
        v63(v49, v54);

        *&v113 = 0;
        v111 = 0u;
        v112 = 0u;
        LOBYTE(v63) = sub_18B85CEA8(&v111, v66);

        sub_18B833D9C(&v111);
        v22 = v98;
        if (v63)
        {
          sub_18BA3372C(v98);
          v68 = v67;
          *&v107 = 0;
          v69 = v89;
          v4 = v77;
          v70 = MEMORY[0x1E69E7DE0];
          SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(0x6548726564616568, 0xEC00000074686769, &v107, MEMORY[0x1E69E7DE0], &v111);
          v71 = v111;
          v72 = v112;
          v73 = v83;
          v91(v83, v22, *&v4);
          v74 = v84;
          swift_storeEnumTagMultiPayload();
          v101 = v68;
          v107 = v71;
          *&v108 = v72;
          sub_18B85D588(&v101, &v107, v73, v90, v70);
          v100(v73, v74);

          (*v78)(v22, COERCE_DOUBLE(*&v4));
          v21 = v69;
        }

        else
        {
          v4 = v77;
          (*v78)(v98, *&v77);
          v21 = v89;
        }

        v20 = v87 + 1;
      }

      while (v81 != v87 + 1);
    }
  }
}