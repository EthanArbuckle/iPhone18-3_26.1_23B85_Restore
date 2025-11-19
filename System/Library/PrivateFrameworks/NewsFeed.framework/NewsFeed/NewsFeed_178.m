uint64_t sub_1D6B97548(uint64_t a1)
{
  sub_1D5F572B0(0, &qword_1EC892BF8, &qword_1EC892BF0, &protocol descriptor for ContextMenuItemOptionsProviding, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D6B975D4()
{
  result = qword_1EDF3B7F0;
  if (!qword_1EDF3B7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3B7F0);
  }

  return result;
}

uint64_t sub_1D6B97628(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF1 && *(a1 + 67))
  {
    return (*a1 + 241);
  }

  v3 = *(a1 + 66);
  if (v3 <= 0xF)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D6B97670(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 66) = 0;
    *(result + 64) = 0;
    *result = a2 - 241;
    if (a3 >= 0xF1)
    {
      *(result + 67) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF1)
    {
      *(result + 67) = 0;
    }

    if (a2)
    {
      *(result + 66) = -a2;
    }
  }

  return result;
}

uint64_t _s11ItemOptionsOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE0)
  {
    goto LABEL_17;
  }

  if (a2 + 32 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 32) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 32;
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

      return (*a1 | (v4 << 8)) - 32;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v8 = v6 - 33;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11ItemOptionsOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE0)
  {
    v4 = 0;
  }

  if (a2 > 0xDF)
  {
    v5 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
    *result = a2 + 32;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D6B97864(uint64_t a1)
{
  sub_1D5B7DF64(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6B978C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D6B97960(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t _s8NewsFeed22FormatFontMetricSizingV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if ((sub_1D633A310(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 == 12)
  {
    return v3 == 12;
  }

  if (v3 == 12)
  {
    return 0;
  }

  v6 = FormatFontScalingStyle.rawValue.getter(v4);
  v8 = v7;
  if (v6 != FormatFontScalingStyle.rawValue.getter(v9) || v8 != v10)
  {
    v11 = sub_1D72646CC();

    return (v11 & 1) != 0;
  }

  return 1;
}

unint64_t sub_1D6B97B18(uint64_t a1)
{
  result = sub_1D6B97B40();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B97B40()
{
  result = qword_1EC892C18;
  if (!qword_1EC892C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892C18);
  }

  return result;
}

unint64_t sub_1D6B97B94(void *a1)
{
  a1[1] = sub_1D666D900();
  a1[2] = sub_1D66F8B88();
  result = sub_1D6B97BCC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6B97BCC()
{
  result = qword_1EC892C20;
  if (!qword_1EC892C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892C20);
  }

  return result;
}

uint64_t sub_1D6B97C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = v9;
  v88 = a8;
  v92 = a6;
  v93 = a7;
  v90 = a4;
  v96 = a1;
  v97 = a2;
  sub_1D6B9C508(0, &qword_1EDF3C480, MEMORY[0x1E69680B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v98 = &v81 - v15;
  v89 = type metadata accessor for GroupLayoutBindingContext();
  v16 = v89[14];
  v91 = v8;
  v17 = *(*&v8[v16] + 16);

  if (!v17 || (sub_1D5BCF83C(0x7573734964656546, 0xE900000000000065, v97, a3), (v18 & 1) == 0) || (v19 = , v20 = sub_1D714E90C(v19), , !v20))
  {
    v61 = *(v96 + 16);
    v62 = 32;
    while (v61)
    {
      v63 = *(v96 + v62);
      v62 += 8;
      --v61;
      if (!v63)
      {

        return MEMORY[0x1E69E7CC0];
      }
    }

    *&v100 = v96;

    v17 = v10;
    sub_1D5E239F4(&v100);
    if (v10)
    {
      goto LABEL_65;
    }

    v64 = v100;
    if (!*(v100 + 16))
    {
      goto LABEL_63;
    }

    goto LABEL_42;
  }

  v86 = a3;
  v83 = v10;
  v21 = *(v20 + 16);
  v109 = v20;
  if (v21)
  {
    v22 = 0;
    v85 = a5 & 0xFFFFFFFFFFFFBFBFLL;
    v87 = a5 & 0xFFFFFFFFFFFFFFBFLL;
    v23 = v20 + 32;
    v24 = MEMORY[0x1E69E7CC0];
    v81 = v21 - 1;
    v82 = v20 + 32;
    v94 = v21;
    v95 = a5;
LABEL_6:
    v84 = v24;
    v25 = (v23 + 144 * v22);
    v26 = v22;
    while (1)
    {
      if (v26 >= *(v20 + 16))
      {
        goto LABEL_62;
      }

      v100 = *v25;
      v27 = v25[1];
      v28 = v25[2];
      v29 = v25[4];
      v103 = v25[3];
      v104 = v29;
      v101 = v27;
      v102 = v28;
      v30 = v25[5];
      v31 = v25[6];
      v32 = v25[7];
      *(v107 + 9) = *(v25 + 121);
      v106 = v31;
      v107[0] = v32;
      v105 = v30;
      v33 = v100;
      if (v29 == 1)
      {
        sub_1D5ECF2C4(&v100, v99);
        v34 = [v33 coverImageAssetHandle];
        if (v34)
        {
          v35 = v34;
          [v33 coverImageAspectRatio];
          v36 = v33;
          v37 = v35;
          v38 = [v36 layeredCoverJSON];
          if (v38)
          {
            v39 = v38;
            sub_1D726207C();

            v40 = v98;
            sub_1D72579DC();
            v41 = sub_1D7257A4C();
            (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
            LOBYTE(v39) = sub_1D725AB8C();

            sub_1D60D0CFC(v40);
            if ((v39 & 1) == 0)
            {
              [v36 layeredCoverAspectRatio];

              v21 = v94;
              a5 = v95;
              v20 = v109;
              if (!v85)
              {
                goto LABEL_30;
              }

              goto LABEL_8;
            }

            v21 = v94;
            a5 = v95;
          }

          else
          {
          }

          v20 = v109;
          if (!v87)
          {
            goto LABEL_30;
          }
        }

        else if (!a5)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_1D5ECF2C4(&v100, v99);
        v42 = [v33 coverImageAssetHandle];
        if (v42)
        {
          v43 = v42;
          [v33 coverImageAspectRatio];
          v44 = v33;
          v45 = v43;
          v46 = [v44 layeredCoverJSON];
          if (v46)
          {
            v47 = v46;
            sub_1D726207C();

            v48 = v98;
            sub_1D72579DC();
            v49 = sub_1D7257A4C();
            (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
            LOBYTE(v47) = sub_1D725AB8C();

            sub_1D60D0CFC(v48);
            if (v47)
            {

              v50 = -4161;
            }

            else
            {
              [v44 layeredCoverAspectRatio];

              v50 = -20545;
            }

            v21 = v94;
            a5 = v95;
          }

          else
          {

            v50 = -4161;
          }

          v20 = v109;
        }

        else
        {
          v50 = -4097;
        }

        if ((v50 & a5) == 0)
        {
LABEL_30:
          v24 = v84;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v108 = v24;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D6997F04(0, *(v24 + 16) + 1, 1);
            v24 = v108;
          }

          v53 = *(v24 + 16);
          v52 = *(v24 + 24);
          if (v53 >= v52 >> 1)
          {
            sub_1D6997F04((v52 > 1), v53 + 1, 1);
            v24 = v108;
          }

          v22 = v26 + 1;
          *(v24 + 16) = v53 + 1;
          v54 = (v24 + 144 * v53);
          v54[2] = v100;
          v55 = v101;
          v56 = v102;
          v57 = v104;
          v54[5] = v103;
          v54[6] = v57;
          v54[3] = v55;
          v54[4] = v56;
          v58 = v105;
          v59 = v106;
          v60 = v107[0];
          *(v54 + 153) = *(v107 + 9);
          v54[8] = v59;
          v54[9] = v60;
          v54[7] = v58;
          v23 = v82;
          v20 = v109;
          if (v81 != v26)
          {
            goto LABEL_6;
          }

          goto LABEL_44;
        }
      }

LABEL_8:
      ++v26;
      sub_1D5ECF320(&v100);
      v25 += 9;
      if (v21 == v26)
      {
        v24 = v84;
LABEL_44:
        if (!v90)
        {
          goto LABEL_49;
        }

        goto LABEL_45;
      }
    }
  }

  v24 = MEMORY[0x1E69E7CC0];
  if (v90)
  {
LABEL_45:
    v68 = v91;
    if ((*v91 & 1) == 0)
    {

      v69 = sub_1D62F0AF0(v24);

      v24 = v69;
    }

    v70 = v83;
  }

  else
  {
LABEL_49:
    v70 = v83;
    v68 = v91;
  }

  v71 = *&v68[v89[18]];
  v72 = *&v68[v89[19]];
  if (__OFSUB__(v71, v72))
  {
    goto LABEL_64;
  }

  sub_1D6C50C60(v24, v71 - v72);
  v73 = v96;
  a3 = sub_1D6B9922C(v96, v74, v20);
  v76 = v75;

  if (a3)
  {

    *&v100 = 0x7573734964656546;
    *(&v100 + 1) = 0xE900000000000065;
    *&v101 = v97;
    *(&v101 + 1) = v86;
    v77 = v76;
    if (v88)
    {
LABEL_54:
      v78 = sub_1D5F631C8(v109);

      sub_1D5BDACA8(&v100, v78);

      return a3;
    }

LABEL_53:

    v109 = v77;
    goto LABEL_54;
  }

  a3 = sub_1D6B9922C(v73, v24, v20);
  v77 = v80;

  if (a3)
  {
    *&v100 = 0x7573734964656546;
    *(&v100 + 1) = 0xE900000000000065;
    *&v101 = v97;
    *(&v101 + 1) = v86;
    if (v88)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  *&v100 = v73;

  v17 = v70;
  sub_1D5E239F4(&v100);
  if (!v70)
  {
    v64 = v100;
    a3 = v86;
    if (!*(v100 + 16))
    {
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

LABEL_42:
    v65 = *(v64 + 32);

    sub_1D5ED8048();
    swift_allocError();
    *v66 = 0x7573734964656546;
    *(v66 + 8) = 0xE900000000000065;
    *(v66 + 16) = v97;
    *(v66 + 24) = a3;
    *(v66 + 32) = a5;
    *(v66 + 40) = v65;
    v67 = v93;
    *(v66 + 48) = v92;
    *(v66 + 56) = v67;
    *(v66 + 64) = 0;
    swift_willThrow();

    return a3;
  }

LABEL_65:

  __break(1u);
  return result;
}

uint64_t sub_1D6B984A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = sub_1D5E23B28(*(a1 + 16), 0);
    v6 = sub_1D5E249A8(v16, (v5 + 4), v4, a1, a2);

    if (v6 != v4)
    {
      goto LABEL_20;
    }
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v8 = v5[2];
  if (v8 < 2)
  {
    return v5;
  }

  v9 = 0;
  v10 = v8 >> 1;
  v11 = v8 - 1;
  v12 = 40 * v8 - 8;
  for (i = 4; ; i += 5)
  {
    if (v9 == v11)
    {
      goto LABEL_9;
    }

    v14 = v5[2];
    if (v9 >= v14)
    {
      break;
    }

    result = sub_1D5B68374(&v5[i], v16);
    if (v11 >= v14)
    {
      goto LABEL_18;
    }

    sub_1D5B68374(v5 + v12, v15);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1D5EC3A10(v5);
    }

    __swift_destroy_boxed_opaque_existential_1(&v5[i]);
    result = sub_1D5B63F14(v15, &v5[i]);
    if (v11 >= v5[2])
    {
      goto LABEL_19;
    }

    __swift_destroy_boxed_opaque_existential_1(v5 + v12);
    result = sub_1D5B63F14(v16, v5 + v12);
LABEL_9:
    ++v9;
    --v11;
    v12 -= 40;
    if (v10 == v9)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void sub_1D6B986F8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  v9 = a2(0);
  v29 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v30 = &v25 - v15;
  v16 = *(a1 + 16);
  if (v16 < 2)
  {
    return;
  }

  v17 = 0;
  v18 = v16 >> 1;
  v19 = v16 - 1;
  v28 = a5;
  v26 = a4;
  v27 = v16 >> 1;
  while (1)
  {
    if (v17 == v19)
    {
      goto LABEL_5;
    }

    v20 = *(a1 + 16);
    if (v17 >= v20)
    {
      break;
    }

    v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v22 = *(v29 + 72);
    sub_1D5BE40E0(a1 + v21 + v22 * v17, v30, a3);
    if (v19 >= v20)
    {
      goto LABEL_14;
    }

    sub_1D5BE40E0(a1 + v21 + v22 * v19, v12, a3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = v26(a1);
    }

    v23 = a1 + v21;
    v24 = v28;
    sub_1D6B9C5D0(v12, v23 + v22 * v17, v28);
    if (v19 >= *(a1 + 16))
    {
      goto LABEL_15;
    }

    sub_1D6B9C5D0(v30, v23 + v22 * v19, v24);
    v18 = v27;
LABEL_5:
    ++v17;
    --v19;
    if (v18 == v17)
    {
      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

unint64_t sub_1D6B988E0(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = sub_1D7263BFC();
    if (v19)
    {
      v20 = v19;
      v1 = sub_1D5C38490(v19, 0);
      sub_1D609B6A8(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x1E69E7CC0];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_1D7263BFC();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1DA6FB460]();
          v11 = MEMORY[0x1DA6FB460](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_1D5EC4BFC(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_1D5EC4BFC(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
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
  }
}

uint64_t sub_1D6B98AF0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = 40 * v2 - 8;
  for (i = 4; ; i += 5)
  {
    if (v3 == v5)
    {
      goto LABEL_5;
    }

    v8 = v1[2];
    if (v3 >= v8)
    {
      break;
    }

    result = sub_1D5B68374(&v1[i], v10);
    if (v5 >= v8)
    {
      goto LABEL_14;
    }

    sub_1D5B68374(v1 + v6, v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1D5EC3A10(v1);
    }

    __swift_destroy_boxed_opaque_existential_1(&v1[i]);
    result = sub_1D5B63F14(v9, &v1[i]);
    if (v5 >= v1[2])
    {
      goto LABEL_15;
    }

    __swift_destroy_boxed_opaque_existential_1(v1 + v6);
    result = sub_1D5B63F14(v10, v1 + v6);
LABEL_5:
    ++v3;
    --v5;
    v6 -= 40;
    if (v4 == v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D6B98C0C()
{
  v1 = v0;
  v2 = type metadata accessor for FormatDebuggerCallStackFrame(0);
  v23 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v23 - v7;
  sub_1D6B9C508(0, &qword_1EC885CE8, type metadata accessor for FormatDebuggerCallStackFrame, MEMORY[0x1E69D6AD8]);
  v10 = v9;
  v11 = *(v9 - 8);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  (*(v11 + 16))(&v23 - v14, v0, v10, v13);
  sub_1D6B9C56C(&qword_1EC892C48, &qword_1EC885CE8, type metadata accessor for FormatDebuggerCallStackFrame);
  v15 = sub_1D726240C();
  v16 = v15[2];
  result = (*(v11 + 8))(v1, v10);
  if (v16 < 2)
  {
    return v15;
  }

  v18 = 0;
  for (i = v16 - 1; ; --i)
  {
    if (v18 == i)
    {
      goto LABEL_5;
    }

    v20 = v15[2];
    if (v18 >= v20)
    {
      break;
    }

    v21 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v22 = *(v23 + 72);
    result = sub_1D5BE40E0(v15 + v21 + v22 * v18, v8, type metadata accessor for FormatDebuggerCallStackFrame);
    if (i >= v20)
    {
      goto LABEL_14;
    }

    sub_1D5BE40E0(v15 + v21 + v22 * i, v24, type metadata accessor for FormatDebuggerCallStackFrame);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1D5EC3C68(v15);
    }

    result = sub_1D6B9C5D0(v24, v15 + v21 + v22 * v18, type metadata accessor for FormatDebuggerCallStackFrame);
    if (i >= v15[2])
    {
      goto LABEL_15;
    }

    result = sub_1D6B9C5D0(v8, v15 + v21 + v22 * i, type metadata accessor for FormatDebuggerCallStackFrame);
LABEL_5:
    if (v16 >> 1 == ++v18)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D6B98F1C()
{
  v1 = v0;
  v2 = type metadata accessor for FormatDebuggerWorkspaceStackFrame();
  v23 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v23 - v7;
  sub_1D6B9C508(0, &qword_1EC8811C8, type metadata accessor for FormatDebuggerWorkspaceStackFrame, MEMORY[0x1E69D6AD8]);
  v10 = v9;
  v11 = *(v9 - 8);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  (*(v11 + 16))(&v23 - v14, v0, v10, v13);
  sub_1D6B9C56C(&qword_1EC892C40, &qword_1EC8811C8, type metadata accessor for FormatDebuggerWorkspaceStackFrame);
  v15 = sub_1D726240C();
  v16 = v15[2];
  result = (*(v11 + 8))(v1, v10);
  if (v16 < 2)
  {
    return v15;
  }

  v18 = 0;
  for (i = v16 - 1; ; --i)
  {
    if (v18 == i)
    {
      goto LABEL_5;
    }

    v20 = v15[2];
    if (v18 >= v20)
    {
      break;
    }

    v21 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v22 = *(v23 + 72);
    result = sub_1D5BE40E0(v15 + v21 + v22 * v18, v8, type metadata accessor for FormatDebuggerWorkspaceStackFrame);
    if (i >= v20)
    {
      goto LABEL_14;
    }

    sub_1D5BE40E0(v15 + v21 + v22 * i, v24, type metadata accessor for FormatDebuggerWorkspaceStackFrame);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1D5EC3C54(v15);
    }

    result = sub_1D6B9C5D0(v24, v15 + v21 + v22 * v18, type metadata accessor for FormatDebuggerWorkspaceStackFrame);
    if (i >= v15[2])
    {
      goto LABEL_15;
    }

    result = sub_1D6B9C5D0(v8, v15 + v21 + v22 * i, type metadata accessor for FormatDebuggerWorkspaceStackFrame);
LABEL_5:
    if (v16 >> 1 == ++v18)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D6B9922C(uint64_t a1, uint64_t a2, __int128 *a3)
{

  v6 = sub_1D5C1222C(v5);
  v7 = *(v6 + 16);
  v8 = 32;
  do
  {
    if (!v7)
    {

      return 0;
    }

    v9 = *(v6 + v8);
    v8 += 8;
    --v7;
  }

  while (*(a2 + 16) < v9 && v9 != 0x7FFFFFFFFFFFFFFFLL);

  v12 = sub_1D691601C(v9, a2);
  v14 = v13;
  i = v15;
  if ((v15 & 1) == 0)
  {
    v17 = v11;

    v18 = v17;
LABEL_10:
    sub_1D5EC2CBC(v12, v18, v14, i);
    v20 = v19;
LABEL_18:
    isUniquelyReferenced_nonNull_native = swift_unknownObjectRelease();
    goto LABEL_19;
  }

  v50 = v11;
  sub_1D72647AC();
  swift_unknownObjectRetain_n();

  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    swift_unknownObjectRelease();
    v22 = MEMORY[0x1E69E7CC0];
  }

  v23 = *(v22 + 16);

  if (__OFSUB__(i >> 1, v14))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v23 != (i >> 1) - v14)
  {
LABEL_36:
    swift_unknownObjectRelease();
    v18 = v50;
    goto LABEL_10;
  }

  v20 = swift_dynamicCastClass();
  isUniquelyReferenced_nonNull_native = swift_unknownObjectRelease();
  if (!v20)
  {
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

LABEL_19:
  v50 = v20;
  v14 = *(a3 + 2);
  if (v14)
  {
    v25 = 0;
    v26 = a3 + 2;
    v27 = MEMORY[0x1E69E7CC0];
    v48 = a3 + 2;
    do
    {
      v49 = v27;
      a3 = &v26[9 * v25];
      for (i = v25; ; ++i)
      {
        if (i >= v14)
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v28 = a3[6];
        v29 = a3[7];
        v30 = a3[4];
        v59 = a3[5];
        v60 = v28;
        v61[0] = v29;
        *(v61 + 9) = *(a3 + 121);
        v31 = a3[3];
        v56 = a3[2];
        v57 = v31;
        v58 = v30;
        v32 = a3[1];
        v54 = *a3;
        v55 = v32;
        v25 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_34;
        }

        v33 = a3[7];
        v52[6] = a3[6];
        v53[0] = v33;
        *(v53 + 9) = *(a3 + 121);
        v34 = a3[3];
        v52[2] = a3[2];
        v52[3] = v34;
        v35 = a3[5];
        v52[4] = a3[4];
        v52[5] = v35;
        v36 = a3[1];
        v52[0] = *a3;
        v52[1] = v36;
        MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native, v27);
        v12 = v47;
        v47[2] = v52;
        sub_1D5ECF2C4(&v54, &v51);
        if ((sub_1D61509E8(sub_1D6B9C4B0, v47, v50) & 1) == 0)
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = sub_1D5ECF320(&v54);
        a3 += 9;
        if (v25 == v14)
        {
          return v50;
        }
      }

      v37 = v49;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v37;
      v62 = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1D6997F04(0, *(v37 + 16) + 1, 1);
        v27 = v62;
      }

      v39 = *(v27 + 16);
      v38 = *(v27 + 24);
      v12 = (v39 + 1);
      if (v39 >= v38 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_1D6997F04((v38 > 1), v39 + 1, 1);
        v27 = v62;
      }

      *(v27 + 16) = v12;
      v40 = (v27 + 144 * v39);
      v40[2] = v54;
      v41 = v55;
      v42 = v56;
      v43 = v58;
      v40[5] = v57;
      v40[6] = v43;
      v40[3] = v41;
      v40[4] = v42;
      v44 = v59;
      v45 = v60;
      v46 = v61[0];
      *(v40 + 153) = *(v61 + 9);
      v40[8] = v45;
      v40[9] = v46;
      v40[7] = v44;
      v26 = v48;
    }

    while (v25 != v14);
  }

  return v50;
}

uint64_t sub_1D6B99590(void *a1)
{
  v3 = v1;
  sub_1D6B9CD7C(0, &qword_1EC892CF0, sub_1D6B9CD28, &type metadata for J18_V1.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B9CD28();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D6B9CDE4(&qword_1EC8801E8, type metadata accessor for CGRect);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5EF985C(0, &qword_1EDF04EE0, &type metadata for CoverIssueViewLayout.Attributes, MEMORY[0x1E69E62F8]);
    sub_1D5EF9DFC(&qword_1EC880BB0, sub_1D5EF9E8C);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6B997EC(uint64_t a1)
{
  v2 = sub_1D6B9CD28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B99828(uint64_t a1)
{
  v2 = sub_1D6B9CD28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6B99864@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6B9CA74(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D6B998C4()
{
  sub_1D6B9C738();

  return sub_1D725A24C();
}

uint64_t sub_1D6B99940@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D6B9CD7C(0, &qword_1EDF18000, sub_1D5EF96F4, &type metadata for CoverIssueViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1D6B999FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v52 = a2;
  v53 = a1;
  v43 = a3;
  v46 = sub_1D725895C();
  v6 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GroupLayoutContext();
  v54 = *(v10 - 8);
  v55 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v48 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v42 - v15;
  v17 = type metadata accessor for GroupLayoutBindingContext();
  v49 = *(v17 - 8);
  v50 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v47 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v3;
  v21 = *(v3 + 1);
  v22 = v3[16];
  sub_1D5BE40E0(a1, v47, type metadata accessor for GroupLayoutBindingContext);
  v51 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE40E0(a2, v16, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v45 = sub_1D725893C();
  v44 = v23;
  (*(v6 + 8))(v9, v46);
  v64 = &type metadata for J18_V1;
  v24 = sub_1D5ECDFEC();
  v65 = v24;
  LOBYTE(v62) = v20;
  *(&v62 + 1) = v21;
  v63 = v22;
  type metadata accessor for GroupLayoutKey();
  v25 = swift_allocObject();
  sub_1D5BEE8A0(v21, v22);
  v60 = sub_1D7264C5C();
  v61 = v26;
  v58 = 95;
  v59 = 0xE100000000000000;
  v56 = 45;
  v57 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v27 = sub_1D7263A6C();
  v29 = v28;
  v30 = v48;

  *(v25 + 16) = v27;
  *(v25 + 24) = v29;
  v31 = (v25 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v32 = v44;
  *v31 = v45;
  v31[1] = v32;
  sub_1D5B68374(&v62, v25 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v33 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA904(v47, v25 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  (*(v49 + 56))(v25 + v33, 0, 1, v50);
  v34 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA904(v16, v25 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  (*(v54 + 56))(v25 + v34, 0, 1, v55);
  __swift_destroy_boxed_opaque_existential_1(&v62);
  v64 = &type metadata for J18_V1;
  v65 = v24;
  LOBYTE(v62) = v20;
  *(&v62 + 1) = v21;
  v63 = v22;
  sub_1D5BE40E0(v52, v30, v51);
  sub_1D5BEE8A0(v21, v22);
  v35 = v66;
  v36 = sub_1D6B97C40(&unk_1F5113B78, 0, 0, 0, 0, 0, 0, 0);
  if (v35)
  {
    sub_1D5BE7B0C(v30, type metadata accessor for GroupLayoutContext);

    return __swift_destroy_boxed_opaque_existential_1(&v62);
  }

  else
  {
    v38 = v36;
    v39 = type metadata accessor for J18_V1.Bound();
    v40 = v43;
    v43[3] = v39;
    v40[4] = sub_1D6B9CDE4(&qword_1EC892C38, type metadata accessor for J18_V1.Bound);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
    *boxed_opaque_existential_1 = v25;
    sub_1D5B63F14(&v62, (boxed_opaque_existential_1 + 1));
    result = sub_1D5BDA904(v30, boxed_opaque_existential_1 + *(v39 + 24), type metadata accessor for GroupLayoutContext);
    *(boxed_opaque_existential_1 + *(v39 + 28)) = v38;
  }

  return result;
}

uint64_t sub_1D6B99F38@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = sub_1D725A36C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + *(type metadata accessor for J18_V1.Bound() + 28));
  v36 = v1;
  v9 = sub_1D5ECA874(sub_1D6B9C6B8, v35, v8);
  *&v28 = 0;
  v10 = v9;
  *&v38 = v9;
  sub_1D5EF985C(0, &qword_1EDF04EC8, &type metadata for CoverIssueViewLayout.Context, MEMORY[0x1E69E62F8]);
  v12 = v11;
  sub_1D5BD4984(&qword_1EDF04EB8, &qword_1EDF04EC8, &type metadata for CoverIssueViewLayout.Context);
  v30 = v12;
  v13 = sub_1D7262C1C();
  v14 = *MEMORY[0x1E69D7130];
  v15 = sub_1D7259D1C();
  (*(*(v15 - 8) + 104))(v7, v14, v15);
  (*(v4 + 104))(v7, *MEMORY[0x1E69D7370], v3);
  v32 = v13;
  v33 = 6;
  v34 = v2;
  sub_1D6B9C870(0, &qword_1EC892C68, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v16 = sub_1D725A4CC();

  v29 = v16;
  v17 = v28;
  sub_1D725A4DC();
  if (v17)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v18 = v40;
    v19 = MEMORY[0x1E69E62F8];
    sub_1D5EF985C(0, &qword_1EDF04EE0, &type metadata for CoverIssueViewLayout.Attributes, MEMORY[0x1E69E62F8]);
    sub_1D5BD4984(&qword_1EDF04EC0, &qword_1EDF04EC8, &type metadata for CoverIssueViewLayout.Context);
    v20 = sub_1D5BD4984(&qword_1EDF04ED8, &qword_1EDF04EE0, &type metadata for CoverIssueViewLayout.Attributes);
    v28 = v38;
    v27 = v39;
    v37 = v18;
    *&v38 = v10;
    MEMORY[0x1EEE9AC00](v20, v21);

    v22 = sub_1D725C00C();

    v23 = v31;
    *v31 = 0;
    *(v23 + 24) = v27;
    *(v23 + 8) = v28;
    *&v38 = v22;
    sub_1D5EF985C(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes, v19);
    sub_1D5BD4984(&qword_1EDF1B4C0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
    sub_1D5BDEFF8();
    v24 = sub_1D72623BC();

    v26 = MEMORY[0x1E69E7CC0];
    *(v23 + 5) = v24;
    *(v23 + 6) = v26;
  }

  return result;
}

uint64_t sub_1D6B9A3BC@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D725891C();
  v7 = *(v6 - 8);
  v155 = v6;
  v156 = v7;
  MEMORY[0x1EEE9AC00](v6, v8);
  v154 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B9C508(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v146 = &v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v145 = &v144 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v144 - v18;
  v153 = &v144 - v18;
  v20 = a1[7];
  v178 = a1[6];
  v179[0] = v20;
  *(v179 + 9) = *(a1 + 121);
  v21 = a1[3];
  v174 = a1[2];
  v175 = v21;
  v22 = a1[5];
  v176 = a1[4];
  v177 = v22;
  v23 = a1[1];
  v172 = *a1;
  v173 = v23;
  v24 = *a2;
  sub_1D5D62850(v180);
  v25 = a2 + *(type metadata accessor for J18_V1.Bound() + 24);
  v26 = type metadata accessor for GroupLayoutContext();
  v27 = *(*&v25[*(v26 + 40)] + 16);
  v28 = *&v25[*(v26 + 32)];
  sub_1D5B68374(v27 + 16, &v157);
  sub_1D5B68374(v27 + 56, &v168);
  v29 = v28 * *(v27 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  v30 = swift_allocObject();
  sub_1D5B63F14(&v157, v30 + 16);
  sub_1D5B63F14(&v168, v30 + 56);
  *(v30 + 96) = v29;
  sub_1D5ECF2C4(&v172, &v160);
  FeedLayoutStylerFactory.styler()(v171);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v30 + 16);
  __swift_destroy_boxed_opaque_existential_1(v30 + 56);
  swift_deallocClassInstance();
  v31 = v176;
  v32 = a3;
  *(a3 + 88) = v177;
  v33 = v179[0];
  *(a3 + 104) = v178;
  *(a3 + 120) = v33;
  *(a3 + 129) = *(v179 + 9);
  v34 = v172;
  *(a3 + 24) = v173;
  v35 = v175;
  *(a3 + 40) = v174;
  *(a3 + 56) = v35;
  *(a3 + 72) = v31;
  *(a3 + 8) = v34;
  v36 = v180[4];
  *(a3 + 232) = v180[5];
  v37 = v181[0];
  *(a3 + 248) = v180[6];
  *(a3 + 264) = v37;
  *(a3 + 273) = *(v181 + 9);
  v38 = v180[0];
  *(a3 + 168) = v180[1];
  v39 = v180[3];
  *(a3 + 184) = v180[2];
  *(a3 + 200) = v39;
  *(a3 + 216) = v36;
  *a3 = v24;
  *(a3 + 152) = v38;
  sub_1D5B68374(v171, a3 + 296);
  sub_1D5B68374(v171, &v168);
  v151 = *(v7 + 56);
  v152 = v7 + 56;
  v151(v19, 1, 1, v6);
  v40 = swift_allocObject();
  v41 = v179[0];
  v40[7] = v178;
  v40[8] = v41;
  *(v40 + 137) = *(v179 + 9);
  v42 = v175;
  v40[3] = v174;
  v40[4] = v42;
  v43 = v177;
  v40[5] = v176;
  v40[6] = v43;
  v44 = v173;
  v40[1] = v172;
  v40[2] = v44;
  sub_1D6B9C508(0, &qword_1EDF34760, sub_1D5BAA1F0, type metadata accessor for CachedText);
  v147 = v45;
  v46 = swift_allocObject();
  *(v46 + 2) = 0xC04E000000000000;
  v47 = v170;
  __swift_project_boxed_opaque_existential_1(&v168, v169);
  v166 = v178;
  v167[0] = v179[0];
  *(v167 + 9) = *(v179 + 9);
  v162 = v174;
  v163 = v175;
  v164 = v176;
  v165 = v177;
  v160 = v172;
  v161 = v173;
  sub_1D5ECF2C4(&v172, &v157);
  sub_1D5ECF2C4(&v172, &v157);

  v48 = sub_1D6CAFA6C();
  v49 = (*(v47 + 80))(v48);

  *&v46[*(*v46 + 120)] = v49;
  *&v46[*(*v46 + 136)] = v49;
  v50 = v49;
  v51 = v154;
  sub_1D725890C();
  v52 = *(*v46 + 128);
  v53 = v155;
  v54 = *(v156 + 32);
  v156 += 32;
  v149 = v54;
  v54(&v46[v52], v51, v155);
  v148 = objc_opt_self();
  LOBYTE(v51) = [v148 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v168);
  v46[qword_1EDF347F8] = v51;
  v55 = v153;
  sub_1D5DF42F8(v153, &v46[qword_1EDF347F0]);
  v56 = swift_allocObject();
  v56[2] = sub_1D5EF97AC;
  v56[3] = v40;
  v56[4] = v50;
  *(v46 + 3) = sub_1D5EF97B4;
  *(v46 + 4) = v56;
  v32[42] = v46;
  sub_1D5B68374(v171, &v168);
  v151(v55, 1, 1, v53);
  v57 = swift_allocObject();
  v58 = v179[0];
  v57[7] = v178;
  v57[8] = v58;
  *(v57 + 137) = *(v179 + 9);
  v59 = v175;
  v57[3] = v174;
  v57[4] = v59;
  v60 = v177;
  v57[5] = v176;
  v57[6] = v60;
  v61 = v173;
  v57[1] = v172;
  v57[2] = v61;
  v62 = swift_allocObject();
  *(v62 + 2) = 0xC04E000000000000;
  v63 = v170;
  __swift_project_boxed_opaque_existential_1(&v168, v169);
  v166 = v178;
  v167[0] = v179[0];
  *(v167 + 9) = *(v179 + 9);
  v162 = v174;
  v163 = v175;
  v164 = v176;
  v165 = v177;
  v160 = v172;
  v161 = v173;
  sub_1D5ECF2C4(&v172, &v157);
  v64 = sub_1D6CAFA6C();
  v65 = (*(v63 + 88))(v64);

  *&v62[*(*v62 + 120)] = v65;
  *&v62[*(*v62 + 136)] = v65;
  v66 = v65;
  v67 = v154;
  sub_1D725890C();
  v68 = v155;
  v149(&v62[*(*v62 + 128)], v67, v155);
  LOBYTE(v67) = [v148 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v168);
  v62[qword_1EDF347F8] = v67;
  sub_1D5DF42F8(v153, &v62[qword_1EDF347F0]);
  v69 = swift_allocObject();
  v69[2] = sub_1D5EF97C0;
  v69[3] = v57;
  v69[4] = v66;
  *(v62 + 3) = sub_1D5EF9FF8;
  *(v62 + 4) = v69;
  v150 = v32;
  v32[43] = v62;
  sub_1D5B68374(v171, &v157);
  v151(v145, 1, 1, v68);
  v70 = swift_allocObject();
  v71 = v179[0];
  v70[7] = v178;
  v70[8] = v71;
  *(v70 + 137) = *(v179 + 9);
  v72 = v175;
  v70[3] = v174;
  v70[4] = v72;
  v73 = v177;
  v70[5] = v176;
  v70[6] = v73;
  v74 = v173;
  v70[1] = v172;
  v70[2] = v74;
  v75 = swift_allocObject();
  *(v75 + 2) = 0xC04E000000000000;
  v77 = v158;
  v76 = v159;
  __swift_project_boxed_opaque_existential_1(&v157, v158);
  if (v177 == 1 || !v178)
  {
    v78 = v172;
    sub_1D5ECF2C4(&v172, &v160);
    v79 = [v78 coverDate];
    sub_1D726207C();
  }

  else
  {
    sub_1D5ECF2C4(&v172, &v160);
  }

  v80 = sub_1D726213C();
  v82 = v81;

  v83 = (*(v76 + 96))(v80, v82, v77, v76);

  *&v75[*(*v75 + 120)] = v83;
  *&v75[*(*v75 + 136)] = v83;
  v84 = v83;
  v85 = v154;
  sub_1D725890C();
  v86 = v155;
  v149(&v75[*(*v75 + 128)], v85, v155);
  LOBYTE(v85) = [v148 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v157);
  v75[qword_1EDF347F8] = v85;
  sub_1D5DF42F8(v145, &v75[qword_1EDF347F0]);
  v87 = swift_allocObject();
  v87[2] = sub_1D5EF97C8;
  v87[3] = v70;
  v87[4] = v84;
  *(v75 + 3) = sub_1D5EF9FF8;
  *(v75 + 4) = v87;
  v150[44] = v75;
  sub_1D5B68374(v171, &v157);
  v151(v146, 1, 1, v86);
  v88 = swift_allocObject();
  v89 = v179[0];
  v88[7] = v178;
  v88[8] = v89;
  *(v88 + 137) = *(v179 + 9);
  v90 = v175;
  v88[3] = v174;
  v88[4] = v90;
  v91 = v177;
  v88[5] = v176;
  v88[6] = v91;
  v92 = v173;
  v88[1] = v172;
  v88[2] = v92;
  v93 = swift_allocObject();
  *(v93 + 2) = 0xC04E000000000000;
  v94 = BYTE8(v173);
  v95 = v159;
  __swift_project_boxed_opaque_existential_1(&v157, v158);
  if (v94 == 2)
  {
    LOBYTE(v168) = 2;
    sub_1D5ECF2C4(&v172, &v160);
    v96 = sub_1D6CAFB7C();
    v97 = (*(v95 + 96))(v96);
  }

  else
  {
    LOBYTE(v168) = v94;
    sub_1D5ECF2C4(&v172, &v160);
    v98 = sub_1D6CAFB7C();
    v97 = (*(v95 + 104))(v98);
  }

  v99 = v97;

  *&v93[*(*v93 + 120)] = v99;
  *&v93[*(*v93 + 136)] = v99;
  v100 = v99;
  v101 = v154;
  sub_1D725890C();
  v102 = v101;
  v103 = v155;
  v149(&v93[*(*v93 + 128)], v102, v155);
  v104 = [v148 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v157);
  v93[qword_1EDF347F8] = v104;
  sub_1D5DF42F8(v146, &v93[qword_1EDF347F0]);
  v105 = swift_allocObject();
  v105[2] = sub_1D5EF97D0;
  v105[3] = v88;
  v105[4] = v100;
  *(v93 + 3) = sub_1D5EF9FF8;
  *(v93 + 4) = v105;
  v150[45] = v93;
  sub_1D5B68374(v171, &v160);
  v151(v153, 1, 1, v103);
  v106 = swift_allocObject();
  *(v106 + 2) = 0xC04E000000000000;
  v107 = *(&v161 + 1);
  v108 = v162;
  __swift_project_boxed_opaque_existential_1(&v160, *(&v161 + 1));
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v146 = ObjCClassFromMetadata;
  v145 = objc_opt_self();
  v110 = [v145 bundleForClass_];
  sub_1D725811C();

  v111 = sub_1D726213C();
  v113 = v112;

  v114 = (*(v108 + 112))(v111, v113, v107, v108);

  *&v106[*(*v106 + 120)] = v114;
  *&v106[*(*v106 + 136)] = v114;
  v115 = v114;
  v116 = v154;
  sub_1D725890C();
  v117 = v155;
  v149(&v106[*(*v106 + 128)], v116, v155);
  LOBYTE(v116) = [v148 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v160);
  v106[qword_1EDF347F8] = v116;
  v118 = v153;
  sub_1D5DF42F8(v153, &v106[qword_1EDF347F0]);
  v119 = swift_allocObject();
  v119[2] = sub_1D6EAD6D0;
  v119[3] = 0;
  v119[4] = v115;
  *(v106 + 3) = sub_1D5EF9FF8;
  *(v106 + 4) = v119;
  v150[46] = v106;
  sub_1D5B68374(v171, &v160);
  v151(v118, 1, 1, v117);
  v120 = swift_allocObject();
  *(v120 + 2) = 0xC04E000000000000;
  v121 = *(&v161 + 1);
  v122 = v162;
  __swift_project_boxed_opaque_existential_1(&v160, *(&v161 + 1));
  v123 = [v145 bundleForClass_];
  sub_1D725811C();

  v124 = sub_1D726213C();
  v126 = v125;

  v127 = (*(v122 + 120))(v124, v126, v121, v122);

  *&v120[*(*v120 + 120)] = v127;
  *&v120[*(*v120 + 136)] = v127;
  v128 = v127;
  v129 = v154;
  sub_1D725890C();
  v130 = v155;
  v131 = v149;
  v149(&v120[*(*v120 + 128)], v129, v155);
  v132 = v148;
  LOBYTE(v124) = [v148 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v160);
  v120[qword_1EDF347F8] = v124;
  v133 = v153;
  sub_1D5DF42F8(v153, &v120[qword_1EDF347F0]);
  v134 = swift_allocObject();
  v134[2] = sub_1D6EAD7F8;
  v134[3] = 0;
  v134[4] = v128;
  *(v120 + 3) = sub_1D5EF9FF8;
  *(v120 + 4) = v134;
  v150[47] = v120;
  sub_1D5B68374(v171, &v157);
  v151(v133, 1, 1, v130);
  v135 = swift_allocObject();
  v136 = v179[0];
  v135[7] = v178;
  v135[8] = v136;
  *(v135 + 137) = *(v179 + 9);
  v137 = v175;
  v135[3] = v174;
  v135[4] = v137;
  v138 = v177;
  v135[5] = v176;
  v135[6] = v138;
  v139 = v173;
  v135[1] = v172;
  v135[2] = v139;
  sub_1D5EF97E0();
  v140 = swift_allocObject();
  *(v140 + 2) = 0xC04E000000000000;
  sub_1D5ECF2C4(&v172, &v160);
  sub_1D6EAD930(&v172, &v160);
  sub_1D5ECF320(&v172);
  v141 = v160;
  *&v140[*(*v140 + 120)] = v160;
  *&v140[*(*v140 + 136)] = v141;
  swift_bridgeObjectRetain_n();
  sub_1D725890C();
  v131(&v140[*(*v140 + 128)], v129, v130);
  LOBYTE(v133) = [v132 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v157);
  v140[qword_1EDF347F8] = v133;
  sub_1D5DF42F8(v153, &v140[qword_1EDF347F0]);
  v142 = swift_allocObject();
  *(v142 + 16) = sub_1D5EF97D8;
  *(v142 + 24) = v135;
  *(v142 + 32) = v141;
  *(v140 + 3) = sub_1D5EF98AC;
  *(v140 + 4) = v142;
  result = __swift_destroy_boxed_opaque_existential_1(v171);
  v150[48] = v140;
  return result;
}

void sub_1D6B9B640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a1;
  v53 = a4;
  v42 = a3;
  sub_1D6B9CD7C(0, &qword_1EC892C80, sub_1D6B9C6E4, &type metadata for J18_V1.Layout, MEMORY[0x1E69D74B0]);
  v51 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v50 = (&v41 - v8);
  v54 = *(a2 + 16);
  v55 = a2;
  if (v54)
  {
    v9 = 0;
    v10 = *(v55 + 32);
    v55 += 32;
    v41 = v10 + 32;
    v48 = *MEMORY[0x1E69D7488];
    v46 = (v7 + 8);
    v47 = (v7 + 104);
    v45 = *MEMORY[0x1E69D74A8];
    v44 = *MEMORY[0x1E69D7098];
    p_cache = _TtC8NewsFeed15ManagerAssembly.cache;
    v43 = xmmword_1D7273AE0;
    v49 = v10;
    do
    {
      v27 = *(v55 + 8 * v9);
      v28 = *(v27 + 16);
      v29 = *(v10 + 16);
      v60 = v9;
      if (v28 == v29)
      {
        if (v28)
        {

          if (v27 != v10)
          {
            v30 = v27 + 32;

            v31 = v41;
            do
            {
              sub_1D5EF92B8(v30, v62);
              sub_1D5EF92B8(v31, v61);
              v33 = v62[0];
              v34 = v61[0];
              v35 = *(v62[0] + 16) == *(v61[0] + 16) && *(v62[0] + 24) == *(v61[0] + 24);
              if (!v35 && (sub_1D72646CC() & 1) == 0 || ((v36 = p_cache[155], v37 = *&v36[v33], v38 = *&v36[v33 + 8], v39 = &v36[v34], v37 == *v39) ? (v40 = v38 == *(v39 + 1)) : (v40 = 0), !v40 && (sub_1D72646CC() & 1) == 0))
              {
                sub_1D5EF93F0(v61);
                sub_1D5EF93F0(v62);
LABEL_29:

                v28 = *(v27 + 16);
                goto LABEL_26;
              }

              if (v62[2] == v61[2] && v62[3] == v61[3])
              {
                sub_1D5EF93F0(v61);
                sub_1D5EF93F0(v62);
              }

              else
              {
                v32 = sub_1D72646CC();
                sub_1D5EF93F0(v61);
                sub_1D5EF93F0(v62);
                if ((v32 & 1) == 0)
                {
                  goto LABEL_29;
                }
              }

              v30 += 392;
              v31 += 392;
              --v28;
            }

            while (v28);
          }
        }

        else
        {
        }
      }

      else
      {

LABEL_26:
        if (v28 != v42)
        {

          goto LABEL_5;
        }
      }

      v12 = v52;
      v62[0] = v52;
      v13 = swift_allocObject();
      *(v13 + 16) = 0x4024000000000000;
      v15 = v50;
      v14 = v51;
      *v50 = v13;
      v16 = *v47;
      (*v47)(v15, v48, v14);
      v17 = MEMORY[0x1E69D7150];
      v58 = v27;
      sub_1D6B9C870(0, &qword_1EC892C88, MEMORY[0x1E69D7150]);
      v57 = v18;
      v56 = sub_1D6B9C794(&qword_1EC892C90, &qword_1EC892C88, v17);
      sub_1D7259A9C();
      v59 = *v46;
      v59(v15, v14);
      v62[0] = v12;
      v16(v15, v45, v14);
      sub_1D6B9C7D8();
      sub_1D6B9CD7C(0, &qword_1EC892CA0, sub_1D6B9C6E4, &type metadata for J18_V1.Layout, MEMORY[0x1E69D70D8]);
      v20 = v19;
      v21 = p_cache;
      v22 = *(v19 - 8);
      v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = v43;
      v25 = (*(v22 + 104))(v24 + v23, v44, v20);
      p_cache = v21;
      MEMORY[0x1EEE9AC00](v25, v26);
      sub_1D72599EC();

      v10 = v49;
      v59(v15, v14);
LABEL_5:
      v9 = v60 + 1;
    }

    while (v60 + 1 != v54);
  }
}

void sub_1D6B9BBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v62 = sub_1D725A36C();
  v5 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v6);
  v61 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B9CD7C(0, &qword_1EC892C80, sub_1D6B9C6E4, &type metadata for J18_V1.Layout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (&v50 - v12);
  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = type metadata accessor for J18_V1.Bound();
    v60 = *(a3 + *(v15 + 24) + *(type metadata accessor for GroupLayoutContext() + 40));
    v16 = a2 + 32;
    v59 = *MEMORY[0x1E69D7200];
    v58 = *MEMORY[0x1E69D7208];
    v57 = *MEMORY[0x1E69D7468];
    v56 = (v10 + 104);
    v55 = *MEMORY[0x1E69D7050];
    v53 = (v10 + 8);
    v54 = (v5 + 104);
    v52 = *MEMORY[0x1E69D7080];
    v51 = *MEMORY[0x1E69D7378];
    v50 = xmmword_1D7273AE0;
    do
    {
      v65 = v16;
      v66 = v14;
      sub_1D5EF92B8(v16, v68);
      v67 = v63;
      KeyPath = swift_getKeyPath();
      sub_1D5EF9444();
      v18 = v17;
      v19 = swift_allocBox();
      v21 = v20;
      v22 = *(v18 + 48);
      sub_1D725993C();
      v23 = swift_allocBox();
      sub_1D725992C();
      *v21 = v23;
      v24 = sub_1D725A09C();
      v25 = *(*(v24 - 8) + 104);
      v25(v21, v59, v24);
      v25((v21 + v22), v58, v24);
      *v13 = v19;
      (*v56)(v13, v57, v9);
      sub_1D6B9C7D8();
      sub_1D6B9CD7C(0, &qword_1EC892CA0, sub_1D6B9C6E4, &type metadata for J18_V1.Layout, MEMORY[0x1E69D70D8]);
      v27 = v26;
      v28 = *(v26 - 8);
      v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = v50;
      sub_1D6B9CD7C(0, &qword_1EC892CA8, sub_1D6B9C6E4, &type metadata for J18_V1.Layout, MEMORY[0x1E69D7078]);
      (*(*(v31 - 8) + 104))(v30 + v29, v55, v31);
      (*(v28 + 104))(v30 + v29, v52, v27);
      v32 = *(v60 + 24);
      v33 = v70;
      v34 = v71;
      __swift_project_boxed_opaque_existential_1(v69, v70);
      v35 = v9;
      v36 = *(v34 + 16);

      v37 = v36(v33, v34);
      if (qword_1EDF05CE0 != -1)
      {
        swift_once();
      }

      [qword_1EDFFC540 size];
      v40 = v37 * (v38 / v39);
      v41 = v70;
      v42 = v71;
      __swift_project_boxed_opaque_existential_1(v69, v70);
      (*(v42 + 48))(v41, v42);
      v43 = v70;
      v44 = v71;
      __swift_project_boxed_opaque_existential_1(v69, v70);
      v45 = (*(v44 + 56))(v43, v44);
      v47 = MEMORY[0x1EEE9AC00](v45, v46).n128_u64[0];
      *(&v50 - 6) = v32;
      *(&v50 - 5) = v68;
      *(&v50 - 4) = v40;
      *(&v50 - 3) = v37;
      v49 = v47;
      (*v54)(v61, v51, v62);
      sub_1D5EF94BC();
      swift_allocObject();
      sub_1D725A4CC();

      v48 = MEMORY[0x1E69D6F38];
      sub_1D6B9C870(0, &qword_1EC892CB0, MEMORY[0x1E69D6F38]);
      sub_1D6B9C794(&qword_1EC892CB8, &qword_1EC892CB0, v48);
      v49 = sub_1D5EF9664();
      sub_1D7259A4C();

      (*v53)(v13, v35);
      sub_1D5EF93F0(v68);
      v16 = v65 + 392;
      v14 = v66 - 1;
      v9 = v35;
    }

    while (v66 != 1);
  }
}

uint64_t sub_1D6B9C2B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = swift_allocObject();
  sub_1D5EF92B8(a2, v10 + 16);
  memcpy((v10 + 408), a3, 0x180uLL);
  v11 = a4 + *(type metadata accessor for J18_V1.Bound() + 24);
  result = type metadata accessor for GroupLayoutContext();
  v13 = *(v11 + *(result + 28));
  v14 = __OFADD__(v13, a1);
  v15 = v13 + a1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(v10 + 792) = v15;
    *a5 = v10 | 0x5000000000000000;
  }

  return result;
}

unint64_t sub_1D6B9C38C(uint64_t a1)
{
  *(a1 + 8) = sub_1D6B9C3BC();
  result = sub_1D6B9C410();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6B9C3BC()
{
  result = qword_1EC892C28;
  if (!qword_1EC892C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892C28);
  }

  return result;
}

unint64_t sub_1D6B9C410()
{
  result = qword_1EC892C30;
  if (!qword_1EC892C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892C30);
  }

  return result;
}

uint64_t type metadata accessor for J18_V1.Bound()
{
  result = qword_1EC892C50;
  if (!qword_1EC892C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6B9C4B0(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(a1 + 8) == *(v2 + 8) && *(a1 + 16) == *(v2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC() & 1;
  }
}

void sub_1D6B9C508(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D6B9C56C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D6B9C508(255, a2, a3, MEMORY[0x1E69D6AD8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6B9C5D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6B9C660(uint64_t a1)
{
  result = sub_1D6B9CDE4(&qword_1EC892C60, type metadata accessor for J18_V1.Bound);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B9C6E4()
{
  result = qword_1EC892C70;
  if (!qword_1EC892C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892C70);
  }

  return result;
}

unint64_t sub_1D6B9C738()
{
  result = qword_1EC892C78;
  if (!qword_1EC892C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892C78);
  }

  return result;
}

uint64_t sub_1D6B9C794(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D6B9C870(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6B9C7D8()
{
  if (!qword_1EC892C98)
  {
    sub_1D6B9CD7C(255, &qword_1EC892CA0, sub_1D6B9C6E4, &type metadata for J18_V1.Layout, MEMORY[0x1E69D70D8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC892C98);
    }
  }
}

void sub_1D6B9C870(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for J18_V1.Layout;
    v8[1] = &type metadata for J18_V1.Layout.Attributes;
    v8[2] = sub_1D6B9C6E4();
    v8[3] = sub_1D6B9C738();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D6B9C918()
{
  result = qword_1EC892CC0;
  if (!qword_1EC892CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892CC0);
  }

  return result;
}

unint64_t sub_1D6B9C970()
{
  result = qword_1EC892CC8;
  if (!qword_1EC892CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892CC8);
  }

  return result;
}

unint64_t sub_1D6B9C9C8()
{
  result = qword_1EC892CD0;
  if (!qword_1EC892CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892CD0);
  }

  return result;
}

unint64_t sub_1D6B9CA20()
{
  result = qword_1EC892CD8;
  if (!qword_1EC892CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892CD8);
  }

  return result;
}

uint64_t sub_1D6B9CA74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D6B9CD7C(0, &qword_1EC892CE0, sub_1D6B9CD28, &type metadata for J18_V1.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B9CD28();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D6B9CDE4(&qword_1EDF1A740, type metadata accessor for CGRect);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5EF985C(0, &qword_1EDF04EE0, &type metadata for CoverIssueViewLayout.Attributes, MEMORY[0x1E69E62F8]);
  v20 = 1;
  sub_1D5EF9DFC(&qword_1EDF04ED0, sub_1D5EF9D40);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D6B9CD28()
{
  result = qword_1EC892CE8;
  if (!qword_1EC892CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892CE8);
  }

  return result;
}

void sub_1D6B9CD7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D6B9CDE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D6B9CE40()
{
  result = qword_1EC892CF8;
  if (!qword_1EC892CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892CF8);
  }

  return result;
}

unint64_t sub_1D6B9CE98()
{
  result = qword_1EC892D00;
  if (!qword_1EC892D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892D00);
  }

  return result;
}

unint64_t sub_1D6B9CEF0()
{
  result = qword_1EC892D08;
  if (!qword_1EC892D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892D08);
  }

  return result;
}

uint64_t dispatch thunk of PuzzleImageShareAttributeProviderType.shareImage(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D6036AEC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PuzzleImageShareAttributeProviderType.shareIcon(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D6045DDC;

  return v9(a1, a2, a3);
}

uint64_t sub_1D6B9D194(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1D605F85C();
    v2 = sub_1D726412C();
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
    sub_1D5B76B10(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1D5B7C390(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1D5B7C390(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1D5B7C390(v31, v32);
    result = sub_1D7263C7C();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1D5B7C390(v32, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_1D6B9D450(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1D5C09D34();
    v1 = sub_1D726412C();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v26 = *(*(a1 + 56) + v11);
    v13 = v26;
    sub_1D5B5A498(0, &qword_1EDF1A720);
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_1D5B7C390((v27 + 8), v25);
    sub_1D5B7C390(v25, v27);
    sub_1D726207C();
    sub_1D7264A0C();
    sub_1D72621EC();
    v16 = sub_1D7264A5C();

    v17 = -1 << *(v1 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v6 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v6 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v6 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v14;
    result = sub_1D5B7C390(v27, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id sub_1D6B9D6FC()
{
  v1 = *(v0 + 176);
  if (v1)
  {
    v2 = *(v0 + 176);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
    [v3 setUnitsStyle_];
    [v3 setAllowedUnits_];
    [v3 setZeroFormattingBehavior_];
    v4 = *(v0 + 176);
    *(v0 + 176) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1D6B9D7A4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D6B9D7C4, 0, 0);
}

uint64_t sub_1D6B9D7C4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = [v2 identifier];
  v6 = sub_1D726207C();
  v8 = v7;

  v9 = (*(*(v4 + 8) + 56))(v6, v8, v3);
  v0[4] = v9;

  if (v9)
  {
    v10 = v9;
    if (sub_1D6BA27D8(v10))
    {
      v11 = swift_task_alloc();
      v0[5] = v11;
      *v11 = v0;
      v11[1] = sub_1D6B9D974;
      v12 = v0[2];

      return sub_1D6B9DEDC(v12, v10);
    }
  }

  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = sub_1D6B9DD78;
  v15 = v0[2];

  return sub_1D6BA3D38(v15);
}

uint64_t sub_1D6B9D974(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D6B9DA74, 0, 0);
}

uint64_t sub_1D6B9DA74()
{
  if (v0[6])
  {
    v1 = v0[4];

    v2 = v0[6];
    v3 = v0[1];

    return v3(v2);
  }

  else
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v5 = sub_1D725C42C();
    __swift_project_value_buffer(v5, qword_1EDFFCFA8);
    v6 = sub_1D725C3FC();
    v7 = sub_1D7262EDC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D5B42000, v6, v7, "PuzzleImageShareAttributeProvider: Failed to generate completedPuzzleImage, using the regular layout...", v8, 2u);
      MEMORY[0x1DA6FD500](v8, -1, -1);
    }

    v9 = swift_task_alloc();
    v0[7] = v9;
    *v9 = v0;
    v9[1] = sub_1D6B9DC10;
    v10 = v0[2];

    return sub_1D6BA3D38(v10);
  }
}

uint64_t sub_1D6B9DC10(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D6B9DD10, 0, 0);
}

uint64_t sub_1D6B9DD10()
{
  v1 = v0[4];

  v2 = v0[8];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1D6B9DD78(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D6B9DE78, 0, 0);
}

uint64_t sub_1D6B9DE78()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D6B9DEDC(uint64_t a1, uint64_t a2)
{
  v3[40] = a2;
  v3[41] = v2;
  v3[39] = a1;
  v4 = sub_1D7264B8C();
  v3[42] = v4;
  v3[43] = *(v4 - 8);
  v3[44] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6B9DFA0, 0, 0);
}

uint64_t sub_1D6B9DFA0()
{
  v19 = v0;
  *(v0 + 360) = sub_1D6B9E860(*(v0 + 312), *(v0 + 320));
  *(v0 + 368) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 376) = v2;
    *v2 = v0;
    v2[1] = sub_1D6B9E1F8;
    v3 = *(v0 + 320);
    v4 = *(v0 + 312);

    return sub_1D6B9EA9C(v4, v3);
  }

  else
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v6 = sub_1D725C42C();
    __swift_project_value_buffer(v6, qword_1EDFFCFA8);
    swift_unknownObjectRetain();
    v7 = sub_1D725C3FC();
    v8 = sub_1D7262EBC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 312);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315138;
      v12 = [v9 identifier];
      v13 = sub_1D726207C();
      v15 = v14;

      v16 = sub_1D5BC5100(v13, v15, &v18);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_1D5B42000, v7, v8, "PuzzleImageShareAttributeProvider: Failed to get score for puzzle %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1DA6FD500](v11, -1, -1);
      MEMORY[0x1DA6FD500](v10, -1, -1);
    }

    v17 = *(v0 + 8);

    return v17(0);
  }
}

uint64_t sub_1D6B9E1F8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 384) = a1;
  *(v3 + 392) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1D6B9E2F8, 0, 0);
}

uint64_t sub_1D6B9E2F8()
{
  sub_1D5B68374(v0[41] + 136, (v0 + 34));
  v0[50] = sub_1D726290C();
  v0[51] = sub_1D72628FC();
  v2 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D6B9E3A0, v2, v1);
}

uint64_t sub_1D6B9E3A0()
{

  type metadata accessor for CompletedShareImageFactory();
  swift_allocObject();
  v1 = swift_unknownObjectRetain();
  *(v0 + 416) = sub_1D6BA2A94(v1, v0 + 272);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1D6B9E440, 0, 0);
}

uint64_t sub_1D6B9E440()
{
  v1 = sub_1D6BA3688(*(v0 + 312));
  v56 = v2;
  v57 = v1;
  v3 = sub_1D6BA388C();
  v54 = v4;
  v55 = v3;
  swift_getObjectType();
  if ((FCPuzzleProviding.puzzleTypeTraits.getter() & 0x200400) == 0)
  {
    goto LABEL_13;
  }

  v5 = [*(v0 + 320) rankID];
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *(v0 + 328);
  v7 = *(v0 + 312);
  v8 = v5;
  v9 = sub_1D726207C();
  v11 = v10;

  v12 = v6[15];
  v13 = v6[16];
  __swift_project_boxed_opaque_existential_1(v6 + 12, v12);
  v14 = [objc_msgSend(v7 puzzleType)];
  swift_unknownObjectRelease();
  v15 = sub_1D726207C();
  v17 = v16;

  v18 = (*(v13 + 8))(v9, v11, v15, v17, v12, v13);

  if (!v18)
  {
    goto LABEL_13;
  }

  v19 = [v18 icon];
  if (!v19)
  {
    goto LABEL_12;
  }

  v20 = v19;
  v21 = sub_1D726207C();
  v23 = v22;

  if ((sub_1D6BA232C(v21, v23) & 0x100000000) != 0)
  {

    goto LABEL_10;
  }

  if (sub_1D6BA247C(v21, v23) != 1)
  {

LABEL_12:

    goto LABEL_13;
  }

  v25 = *(v0 + 344);
  v24 = *(v0 + 352);
  v26 = *(v0 + 336);
  sub_1D7264B9C();
  v27 = sub_1D7264B7C();

  (*(v25 + 8))(v24, v26);
  if ((v27 & 1) == 0)
  {
LABEL_10:

LABEL_13:
    v21 = 0;
    v23 = 0;
  }

  v28 = [*(v0 + 320) rankID];
  v52 = v21;
  v53 = v23;
  if (v28)
  {
    v29 = v28;
    v30 = sub_1D726207C();
    v50 = v31;
    v51 = v30;
  }

  else
  {
    v50 = 0;
    v51 = 0;
  }

  v32 = *(v0 + 392);
  v33 = *(v0 + 384);
  v35 = *(v0 + 360);
  v34 = *(v0 + 368);
  v37 = *(v0 + 312);
  v36 = *(v0 + 320);
  v38 = sub_1D6BA3A40(v37, v36);
  v40 = v39;
  v41 = sub_1D6BA3BEC(v37, v36);
  *(v0 + 144) = v57;
  *(v0 + 152) = v56;
  *(v0 + 160) = v55;
  *(v0 + 168) = v54;
  *(v0 + 176) = v35;
  *(v0 + 184) = v34;
  *(v0 + 192) = v52;
  *(v0 + 200) = v53;
  *(v0 + 208) = v33;
  *(v0 + 216) = v32;
  *(v0 + 224) = v51;
  *(v0 + 232) = v50;
  *(v0 + 240) = v38;
  *(v0 + 248) = v40;
  *(v0 + 256) = v41;
  *(v0 + 264) = v42;
  v43 = *(v0 + 192);
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v43;
  v44 = *(v0 + 256);
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 128) = v44;
  v45 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v45;
  v46 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v46;
  *(v0 + 424) = sub_1D72628FC();
  v48 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D6B9E774, v48, v47);
}

uint64_t sub_1D6B9E774()
{

  sub_1D6BA00EC((v0 + 16));
  *(v0 + 432) = v1;
  sub_1D6BA4244(v0 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1D6B9E7F0, 0, 0);
}

uint64_t sub_1D6B9E7F0()
{

  v1 = *(v0 + 432);

  v2 = *(v0 + 8);

  return v2(v1);
}

id sub_1D6B9E860(void *a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = FCPuzzleProviding.puzzleTypeTraits.getter();
  if ((v6 & 0x200) != 0)
  {
    v9 = [a2 playDuration];
    v10 = sub_1D6B9D6FC();
    v11 = [v10 stringFromTimeInterval_];

    if (v11)
    {
      v12 = sub_1D726207C();

      return v12;
    }

    return 0;
  }

  if ((v6 & 0x400) != 0)
  {
    result = [a2 rankID];
    if (!result)
    {
      return result;
    }

    v13 = result;
    v14 = sub_1D726207C();
    v16 = v15;

    v17 = v3[15];
    v18 = v3[16];
    __swift_project_boxed_opaque_existential_1(v3 + 12, v17);
    v19 = [objc_msgSend(a1 puzzleType)];
    swift_unknownObjectRelease();
    v20 = sub_1D726207C();
    v22 = v21;

    v23 = (*(v18 + 8))(v14, v16, v20, v22, v17, v18);

    if (v23)
    {
      v24 = [v23 name];
      v25 = sub_1D726207C();

      return v25;
    }

    return 0;
  }

  if ((v6 & 0x100000) == 0)
  {
    return 0;
  }

  result = [a2 score];
  if (result)
  {
    v8 = result;
    [result integerValue];

    return sub_1D72644BC();
  }

  return result;
}

uint64_t sub_1D6B9EA9C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for PuzzleStatisticValue(0);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = type metadata accessor for PuzzleStatisticCategory(0);
  v3[9] = swift_task_alloc();
  v3[10] = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  v3[11] = swift_task_alloc();
  v3[12] = type metadata accessor for PuzzleStatistic();
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6B9EBD0, 0, 0);
}

uint64_t sub_1D6B9EBD0()
{
  swift_getObjectType();
  v1 = FCPuzzleProviding.puzzleTypeTraits.getter();
  *(v0 + 112) = v1;
  if ((~v1 & 0xA00) != 0)
  {

    v10 = *(v0 + 8);

    return v10(0, 0);
  }

  else
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 16);
    v4 = v2[10];
    v5 = v2[11];
    __swift_project_boxed_opaque_existential_1(v2 + 7, v4);
    *(v0 + 144) = 5;
    v6 = [v3 puzzleType];
    *(v0 + 120) = v6;
    v11 = (*(v5 + 16) + **(v5 + 16));
    v7 = swift_task_alloc();
    *(v0 + 128) = v7;
    *v7 = v0;
    v7[1] = sub_1D6B9EDD8;
    v8 = *(v0 + 104);

    return v11(v8, v0 + 144, v6, v4, v5);
  }
}

uint64_t sub_1D6B9EDD8()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1D6B9F4FC;
  }

  else
  {
    swift_unknownObjectRelease();
    v2 = sub_1D6B9EEF4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6B9EEF4()
{
  sub_1D6BA42D8(*(v0 + 104) + *(*(v0 + 96) + 20), *(v0 + 72), type metadata accessor for PuzzleStatisticCategory);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v4 = *(v0 + 72);
    sub_1D6BA44C0(*(v0 + 104), type metadata accessor for PuzzleStatistic);
    v5 = type metadata accessor for PuzzleStatisticCategory;
LABEL_18:
    v31 = v5;
    v30 = v4;
    goto LABEL_19;
  }

  v1 = *(v0 + 16);
  sub_1D6BA4274(*(v0 + 72), *(v0 + 88));
  v2 = [v1 difficulty];
  if (v2 == 30)
  {
    v2 = 24;
    goto LABEL_8;
  }

  if (v2 == 20)
  {
LABEL_8:
    v3 = *(v0 + 88) + *(*(v0 + 80) + v2);
    goto LABEL_9;
  }

  if (v2 != 10)
  {
    v4 = *(v0 + 104);
    v33 = *(v0 + 88);
    goto LABEL_17;
  }

  v3 = *(v0 + 88);
LABEL_9:
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  sub_1D6BA42D8(v3, v7, type metadata accessor for PuzzleStatisticValue);
  sub_1D6BA42D8(v7, v6, type metadata accessor for PuzzleStatisticValue);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v27 = *(v0 + 104);
    v28 = *(v0 + 88);
    v29 = *(v0 + 48);
    sub_1D6BA44C0(*(v0 + 56), type metadata accessor for PuzzleStatisticValue);
    sub_1D6BA44C0(v28, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
    sub_1D6BA44C0(v27, type metadata accessor for PuzzleStatistic);
    v30 = v29;
    v31 = type metadata accessor for PuzzleStatisticValue;
LABEL_19:
    sub_1D6BA44C0(v30, v31);
    v23 = 0;
    v25 = 0;
    goto LABEL_20;
  }

  v8 = *(v0 + 48);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = [*(v0 + 24) playDuration];
  if ((v10 & 1) != 0 || v11 != v9)
  {
    v4 = *(v0 + 104);
    v32 = *(v0 + 88);
    sub_1D6BA44C0(*(v0 + 56), type metadata accessor for PuzzleStatisticValue);
    v33 = v32;
LABEL_17:
    sub_1D6BA44C0(v33, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
    v5 = type metadata accessor for PuzzleStatistic;
    goto LABEL_18;
  }

  v12 = *(v0 + 112);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  if ((v12 & 2) != 0)
  {
    v36 = *(v0 + 16);
    sub_1D725811C();

    sub_1D5B67A60(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1D7273AE0;
    v38 = [v36 difficultyDescription];
    if (v38)
    {
      v39 = v38;
      v40 = sub_1D726207C();
      v42 = v41;
    }

    else
    {
      v40 = 0;
      v42 = 0;
    }

    v43 = *(v0 + 104);
    v44 = *(v0 + 88);
    v45 = *(v0 + 56);
    *(v37 + 56) = MEMORY[0x1E69E6158];
    *(v37 + 64) = sub_1D5B7E2C0();
    if (v42)
    {
      v46 = v40;
    }

    else
    {
      v46 = 0;
    }

    if (v42)
    {
      v47 = v42;
    }

    else
    {
      v47 = 0xE000000000000000;
    }

    *(v37 + 32) = v46;
    *(v37 + 40) = v47;
    v23 = sub_1D72620BC();
    v25 = v48;

    sub_1D6BA44C0(v45, type metadata accessor for PuzzleStatisticValue);
    sub_1D6BA44C0(v44, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
    v26 = v43;
  }

  else
  {
    v15 = *(v0 + 104);
    v16 = *(v0 + 88);
    v17 = *(v0 + 56);
    v18 = *(v0 + 16);
    sub_1D725811C();

    sub_1D5B67A60(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1D7273AE0;
    v20 = sub_1D6B9F7B4(v18);
    v22 = v21;
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = sub_1D5B7E2C0();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    v23 = sub_1D72620BC();
    v25 = v24;

    sub_1D6BA44C0(v17, type metadata accessor for PuzzleStatisticValue);
    sub_1D6BA44C0(v16, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
    v26 = v15;
  }

  sub_1D6BA44C0(v26, type metadata accessor for PuzzleStatistic);
LABEL_20:

  v34 = *(v0 + 8);

  return v34(v23, v25);
}

uint64_t sub_1D6B9F4FC()
{
  v22 = v0;
  swift_unknownObjectRelease();
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = sub_1D725C42C();
  __swift_project_value_buffer(v2, qword_1EDFFCFA8);
  swift_unknownObjectRetain();
  v3 = v1;
  v4 = sub_1D725C3FC();
  v5 = sub_1D7262EBC();
  swift_unknownObjectRelease();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[17];
  if (v6)
  {
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 136315394;
    v12 = [objc_msgSend(v8 puzzleType];
    swift_unknownObjectRelease();
    v13 = sub_1D726207C();
    v15 = v14;

    v16 = sub_1D5BC5100(v13, v15, &v21);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2112;
    v17 = v7;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v18;
    *v10 = v18;
    _os_log_impl(&dword_1D5B42000, v4, v5, "Failed to get fastest time for puzzleType %s [%@]", v9, 0x16u);
    sub_1D6BA44C0(v10, sub_1D5F156F4);
    MEMORY[0x1DA6FD500](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1DA6FD500](v11, -1, -1);
    MEMORY[0x1DA6FD500](v9, -1, -1);
  }

  else
  {
  }

  v19 = v0[1];

  return v19(0, 0);
}

uint64_t sub_1D6B9F7B4(void *a1)
{
  v2 = [objc_msgSend(a1 puzzleType)];
  swift_unknownObjectRelease();
  if (v2)
  {
    v3 = sub_1D726207C();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      return v3;
    }
  }

  v8 = [objc_msgSend(a1 puzzleType)];
  swift_unknownObjectRelease();
  v9 = sub_1D726207C();

  return v9;
}

uint64_t sub_1D6B9F8B0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);

  return swift_deallocClassInstance();
}

uint64_t sub_1D6B9F908(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D6036AEC;

  return sub_1D6B9D7A4(a1);
}

uint64_t sub_1D6B9F9A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D6045DDC;

  return sub_1D6BA3D38(a1);
}

id sub_1D6B9FA34()
{
  v1 = v0;
  sub_1D5B67A60(0, &qword_1EC892D70, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v39 - v4;
  v46 = sub_1D726378C();
  v6 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1D726381C();
  v11 = MEMORY[0x1EEE9AC00](v48, v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *MEMORY[0x1E69DC550];
  v15 = *(v14 + 104);
  v50 = v14 + 104;
  v51 = v15;
  v15(v13, v11);
  v16 = OBJC_IVAR____TtC8NewsFeedP33_1AB23A019A94525840AAA3EBFB74EFAE26CompletedShareImageFactory_fastestButtonConfig;
  swift_beginAccess();
  sub_1D726377C();
  swift_endAccess();
  v17 = objc_opt_self();
  v40 = v17;
  v18 = [v17 whiteColor];
  swift_beginAccess();
  sub_1D72637FC();
  v44 = *MEMORY[0x1E69DC508];
  v19 = *(v6 + 104);
  v45 = v6 + 104;
  v47 = v19;
  v41 = v9;
  v19(v9);
  sub_1D726379C();
  swift_endAccess();
  v20 = [objc_opt_self() configurationWithPointSize:4 weight:1 scale:12.0];
  v21 = sub_1D726203C();
  v22 = [objc_opt_self() systemImageNamed:v21 withConfiguration:v20];

  swift_beginAccess();
  sub_1D726384C();
  sub_1D72637CC();
  sub_1D72637AC();
  sub_1D72637BC();
  swift_endAccess();
  v23 = *(v1 + 144);
  v24 = sub_1D726389C();
  v25 = *(v24 - 8);
  v43 = *(v25 + 16);
  v43(v5, v1 + v16, v24);
  v42 = *(v25 + 56);
  v42(v5, 0, 1, v24);
  sub_1D72638CC();
  LODWORD(v26) = 1144750080;
  [v23 setContentHuggingPriority:0 forAxis:v26];
  v51(v13, v49, v48);
  v27 = OBJC_IVAR____TtC8NewsFeedP33_1AB23A019A94525840AAA3EBFB74EFAE26CompletedShareImageFactory_emojiTopButtonConfig;
  swift_beginAccess();
  sub_1D726377C();
  swift_endAccess();
  v28 = [v17 whiteColor];
  swift_beginAccess();
  sub_1D72637FC();
  v29 = v41;
  v47(v41, v44, v46);
  sub_1D726379C();
  sub_1D72637EC();
  swift_endAccess();
  v30 = *(v1 + OBJC_IVAR____TtC8NewsFeedP33_1AB23A019A94525840AAA3EBFB74EFAE26CompletedShareImageFactory_emojiTopButton);
  v43(v5, v1 + v27, v24);
  v42(v5, 0, 1, v24);
  sub_1D72638CC();
  LODWORD(v31) = 1148846080;
  [v30 setContentHuggingPriority:1 forAxis:v31];
  LODWORD(v32) = 1144750080;
  [v30 setContentHuggingPriority:0 forAxis:v32];
  v51(v13, v49, v48);
  v33 = OBJC_IVAR____TtC8NewsFeedP33_1AB23A019A94525840AAA3EBFB74EFAE26CompletedShareImageFactory_emojiBottomButtonConfig;
  swift_beginAccess();
  sub_1D726377C();
  swift_endAccess();
  v34 = [v40 whiteColor];
  swift_beginAccess();
  sub_1D72637FC();
  v47(v29, v44, v46);
  sub_1D726379C();
  sub_1D72637EC();
  swift_endAccess();
  v35 = *(v1 + OBJC_IVAR____TtC8NewsFeedP33_1AB23A019A94525840AAA3EBFB74EFAE26CompletedShareImageFactory_emojiBottomButton);
  v43(v5, v1 + v33, v24);
  v42(v5, 0, 1, v24);
  sub_1D72638CC();
  LODWORD(v36) = 1148846080;
  [v35 setContentHuggingPriority:1 forAxis:v36];
  LODWORD(v37) = 1144750080;
  return [v35 setContentHuggingPriority:0 forAxis:v37];
}

void sub_1D6BA00EC(void *a1)
{
  v2 = v1;
  v4 = sub_1D726378C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v125 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D725815C();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D72580BC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1E69E6720];
  sub_1D5B67A60(0, &qword_1EC892D70, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v107 - v20;
  sub_1D5B67A60(0, &qword_1EC87FF50, MEMORY[0x1E6968848], v17);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v126 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v128 = &v107 - v27;
  sub_1D6BA16FC(a1[10], a1[11], v130);
  v28 = v130[0];
  if (v130[0])
  {
    v110 = v5;
    v111 = v4;
    v121 = v13;
    v29 = v130[1];
    v112 = v130[2];
    v109 = v130[3];
    v113 = v131;
    v115 = v132;
    v114 = v133;
    v30 = *(v2 + 112);
    v31 = a1[1];
    v120 = v11;
    v124 = v12;
    if (v31)
    {
      v32 = sub_1D726203C();
    }

    else
    {
      v32 = 0;
    }

    [v30 setText_];

    [v30 setTextColor_];
    v37 = *(v2 + 120);
    if (a1[3])
    {
      v38 = sub_1D726203C();
    }

    else
    {
      v38 = 0;
    }

    [v37 setText_];

    v39 = [v28 colorWithAlphaComponent_];
    [v37 setTextColor_];

    v40 = *(v2 + 128);
    v41 = sub_1D726203C();
    [v40 setText_];

    [v40 setTextColor_];
    v42 = OBJC_IVAR____TtC8NewsFeedP33_1AB23A019A94525840AAA3EBFB74EFAE26CompletedShareImageFactory_fastestButtonConfig;
    swift_beginAccess();
    v43 = v29;
    sub_1D726380C();
    swift_endAccess();
    v44 = a1[9];
    v45 = v43;
    v127 = v44;
    sub_1D6BA1530(v44, v29, v128);

    swift_beginAccess();
    sub_1D72637DC();
    swift_endAccess();
    v46 = sub_1D726389C();
    v47 = *(v46 - 8);
    v48 = *(v47 + 16);
    v123 = v47 + 16;
    v122 = v48;
    v48(v21, v2 + v42, v46);
    v51 = *(v47 + 56);
    v49 = v47 + 56;
    v50 = v51;
    v51(v21, 0, 1, v46);
    sub_1D72638CC();
    if (a1[7])
    {
      v118 = v49;
      v119 = v45;
      v52 = *(v2 + 136);
      v53 = sub_1D6BA12DC(56.0);
      v116 = v52;
      [v52 setImage_];

      v54 = a1[13];
      v117 = v50;
      if (!v54)
      {
        goto LABEL_23;
      }

      v55 = HIBYTE(v54) & 0xF;
      if ((v54 & 0x2000000000000000) == 0)
      {
        v55 = a1[12] & 0xFFFFFFFFFFFFLL;
      }

      if (v55)
      {
        v108 = v46;
        swift_beginAccess();
        v56 = v112;
        v107 = v112;
        sub_1D726380C();
        swift_endAccess();

        sub_1D725814C();
        sub_1D72580CC();
        v57 = objc_opt_self();
        v58 = v113;
        v59 = 12.0;
        if (v113)
        {
          v59 = 19.0;
        }

        v60 = MEMORY[0x1E69DB980];
        if ((v113 & 1) == 0)
        {
          v60 = MEMORY[0x1E69DB978];
        }

        aBlock[0] = [v57 systemFontOfSize:v59 weight:*v60];
        sub_1D62DE440();
        sub_1D72580DC();
        aBlock[0] = v56;
        sub_1D62DE4FC();
        v61 = v107;
        sub_1D72580DC();
        v62 = v121;
        v63 = v126;
        v64 = v124;
        (*(v121 + 32))(v126, v16, v124);
        (*(v62 + 56))(v63, 0, 1, v64);
        swift_beginAccess();
        sub_1D72637DC();
        swift_endAccess();
        if (v58)
        {
          v65 = [objc_opt_self() clearColor];
        }

        else
        {
          v78 = v109;
        }

        swift_beginAccess();
        sub_1D72637FC();
        swift_endAccess();
        v46 = v108;
        if (v58)
        {
          swift_beginAccess();
          sub_1D72637BC();
          (*(v110 + 104))(v125, *MEMORY[0x1E69DC500], v111);
          sub_1D726379C();
          swift_endAccess();
        }
      }

      else
      {
LABEL_23:
        v66 = objc_opt_self();
        v67 = [v66 clearColor];
        swift_beginAccess();
        sub_1D726380C();
        swift_endAccess();
        v68 = [v66 clearColor];
        swift_beginAccess();
        sub_1D72637FC();
        swift_endAccess();
        v64 = v124;
      }

      v79 = a1[15];
      if (!v79)
      {
        goto LABEL_39;
      }

      v80 = HIBYTE(v79) & 0xF;
      if ((v79 & 0x2000000000000000) == 0)
      {
        v80 = a1[14] & 0xFFFFFFFFFFFFLL;
      }

      if (v80)
      {
        swift_beginAccess();
        v81 = v115;
        v126 = v115;
        sub_1D726380C();
        v82 = v114;
        sub_1D72637FC();
        swift_endAccess();

        sub_1D725814C();
        v83 = v128;
        sub_1D72580CC();
        aBlock[0] = [objc_opt_self() systemFontOfSize:12.0 weight:*MEMORY[0x1E69DB980]];
        sub_1D62DE440();
        sub_1D72580DC();
        aBlock[0] = v81;
        sub_1D62DE4FC();
        v84 = v126;
        sub_1D72580DC();
        (*(v121 + 56))(v83, 0, 1, v64);
        swift_beginAccess();
        sub_1D72637DC();
      }

      else
      {
LABEL_39:
        v85 = objc_opt_self();
        v86 = [v85 clearColor];
        swift_beginAccess();
        sub_1D726380C();
        swift_endAccess();
        v87 = [v85 clearColor];
        swift_beginAccess();
        sub_1D72637FC();
      }

      swift_endAccess();
      v88 = OBJC_IVAR____TtC8NewsFeedP33_1AB23A019A94525840AAA3EBFB74EFAE26CompletedShareImageFactory_emojiTopButtonConfig;
      swift_beginAccess();
      v89 = v122;
      v122(v21, v2 + v88, v46);
      v90 = v117;
      v117(v21, 0, 1, v46);
      sub_1D72638CC();
      v91 = OBJC_IVAR____TtC8NewsFeedP33_1AB23A019A94525840AAA3EBFB74EFAE26CompletedShareImageFactory_emojiBottomButtonConfig;
      swift_beginAccess();
      v89(v21, v2 + v91, v46);
      v90(v21, 0, 1, v46);
      sub_1D72638CC();
      v92 = v116;
      LODWORD(v93) = 1148846080;
      [v116 setContentHuggingPriority:1 forAxis:v93];
      LODWORD(v94) = 1148846080;
      [v92 setContentCompressionResistancePriority:1 forAxis:v94];
      v95 = *(v2 + 72);
      v96 = [v95 arrangedSubviews];
      sub_1D5B5A498(0, &qword_1EDF1A710);
      v75 = sub_1D726267C();

      v72 = &off_1E84D3000;
      if ((v75 & 0xC000000000000001) != 0)
      {
        goto LABEL_56;
      }

      v45 = v119;
      if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v97 = *(v75 + 40);
      while (1)
      {

        [v97 v72[449]];

        v98 = [v95 arrangedSubviews];
        v75 = sub_1D726267C();

        if ((v75 & 0xC000000000000001) != 0)
        {
          v99 = MEMORY[0x1DA6FB460](2, v75);
        }

        else
        {
          if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
          {
            goto LABEL_58;
          }

          v99 = *(v75 + 48);
        }

        v77 = v99;

        [v77 v72[449]];
LABEL_48:

        v95 = [*(v2 + 80) arrangedSubviews];
        sub_1D5B5A498(0, &qword_1EDF1A710);
        v100 = sub_1D726267C();

        if ((v100 & 0xC000000000000001) != 0)
        {
          v101 = MEMORY[0x1DA6FB460](1, v100);
        }

        else
        {
          if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
          {
            goto LABEL_55;
          }

          v101 = *(v100 + 40);
        }

        v102 = v101;

        [v102 v72[449]];

        [*(v2 + OBJC_IVAR____TtC8NewsFeedP33_1AB23A019A94525840AAA3EBFB74EFAE26CompletedShareImageFactory_widthConstraint) setConstant_];
        v103 = *(v2 + 64);
        [v103 setBackgroundColor_];
        [v103 setNeedsLayout];
        [v103 layoutIfNeeded];
        v104 = [objc_allocWithZone(MEMORY[0x1E69DCA80]) init];
        [v104 setPreferredRange_];
        [v103 bounds];
        v75 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize:v104 format:{v105, v106}];
        v95 = swift_allocObject();
        v95[2] = sub_1D6BA43A0;
        v95[3] = v2;
        aBlock[4] = sub_1D6139588;
        aBlock[5] = v95;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D62E78B0;
        aBlock[3] = &block_descriptor_82;
        v72 = _Block_copy(aBlock);

        [v75 imageWithActions_];

        sub_1D6BA4340(v130, &unk_1EC892D80, &type metadata for CompletedShareImageFactoryTheme, MEMORY[0x1E69E6720], sub_1D6BA43F0);
        _Block_release(v72);
        LOBYTE(v104) = swift_isEscapingClosureAtFileLocation();

        if ((v104 & 1) == 0)
        {
          return;
        }

        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        v97 = MEMORY[0x1DA6FB460](1, v75);
        v45 = v119;
      }
    }

    v69 = *(v2 + 72);
    v70 = [v69 arrangedSubviews];
    sub_1D5B5A498(0, &qword_1EDF1A710);
    v71 = sub_1D726267C();

    if ((v71 & 0xC000000000000001) != 0)
    {
      v73 = MEMORY[0x1DA6FB460](1, v71);
      v72 = &off_1E84D3000;
    }

    else
    {
      v72 = &off_1E84D3000;
      if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        __break(1u);
        goto LABEL_63;
      }

      v73 = *(v71 + 40);
    }

    [v73 v72[449]];

    v74 = [v69 arrangedSubviews];
    v75 = sub_1D726267C();

    if ((v75 & 0xC000000000000001) != 0)
    {
      v76 = MEMORY[0x1DA6FB460](2, v75);
      goto LABEL_30;
    }

    if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v76 = *(v75 + 48);
LABEL_30:
      v77 = v76;

      [v77 v72[449]];
      goto LABEL_48;
    }

LABEL_63:
    __break(1u);
    return;
  }

  if (qword_1EDF3B838 != -1)
  {
LABEL_59:
    swift_once();
  }

  v33 = sub_1D725C42C();
  __swift_project_value_buffer(v33, qword_1EDFFCFA8);
  v34 = sub_1D725C3FC();
  v35 = sub_1D7262EBC();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1D5B42000, v34, v35, "Could not get configured theme. Skipping image generation", v36, 2u);
    MEMORY[0x1DA6FD500](v36, -1, -1);
  }
}

UIImage *sub_1D6BA12DC(double a1)
{
  v2 = sub_1D726203C();
  v3 = [objc_opt_self() systemFontOfSize_];
  sub_1D5B67A60(0, &qword_1EC892D88, sub_1D6BA4440, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v5 = MEMORY[0x1E69DB648];
  *(inited + 16) = xmmword_1D7273AE0;
  v6 = *v5;
  *(inited + 32) = v6;
  *(inited + 40) = v3;
  v7 = v6;
  v8 = v3;
  v9 = sub_1D605E3E4(inited);
  swift_setDeallocating();
  sub_1D6BA44C0(inited + 32, sub_1D6BA4440);
  sub_1D6B9D450(v9);
  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v10 = sub_1D7261D2C();

  [v2 sizeWithAttributes_];
  v12 = v11;
  v14 = v13;

  v19.width = v12;
  v19.height = v14;
  UIGraphicsBeginImageContextWithOptions(v19, 0, 0.0);
  v15 = [objc_opt_self() clearColor];
  [v15 set];

  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = v12;
  v20.size.height = v14;
  UIRectFill(v20);
  sub_1D6B9D450(v9);

  v16 = sub_1D7261D2C();

  [v2 drawAtPoint:v16 withAttributes:{0.0, 0.0}];

  v17 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v17;
}

uint64_t sub_1D6BA1530@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1D725815C();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  if (a1)
  {

    sub_1D725814C();
    sub_1D72580CC();
    v8 = [objc_opt_self() systemFontOfSize:12.0 weight:*MEMORY[0x1E69DB980]];
    sub_1D62DE440();
    sub_1D72580DC();
    sub_1D62DE4FC();
    v9 = a2;
    sub_1D72580DC();
    v10 = sub_1D72580BC();
    return (*(*(v10 - 8) + 56))(a3, 0, 1, v10);
  }

  else
  {
    v12 = sub_1D72580BC();
    v13 = *(*(v12 - 8) + 56);

    return v13(a3, 1, 1, v12);
  }
}

id sub_1D6BA16FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = v3[2];
  swift_getObjectType();
  v8 = FCPuzzleProviding.puzzleTypeTraits.getter();
  if ((v8 & 0x1000) != 0)
  {
    v20 = [objc_msgSend(v7 puzzleType)];
    swift_unknownObjectRelease();
    if (v20)
    {
      v21 = [v20 ne_color];

      result = [objc_opt_self() whiteColor];
LABEL_27:
      v35 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      goto LABEL_28;
    }

    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v36 = sub_1D725C42C();
    __swift_project_value_buffer(v36, qword_1EDFFCFA8);

    v10 = sub_1D725C3FC();
    v11 = sub_1D7262EBC();

    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_19;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v62 = v13;
    *v12 = 136315138;
    v37 = [v7 identifier];
    v38 = sub_1D726207C();
    v40 = v39;

    v41 = sub_1D5BC5100(v38, v40, &v62);

    *(v12 + 4) = v41;
    v19 = "No background color defined for %s. Cannot configure theme";
    goto LABEL_18;
  }

  if ((v8 & 0x2000) == 0)
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v9 = sub_1D725C42C();
    __swift_project_value_buffer(v9, qword_1EDFFCFA8);

    v10 = sub_1D725C3FC();
    v11 = sub_1D7262EBC();

    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_19;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v62 = v13;
    *v12 = 136315138;
    v14 = [v7 identifier];
    v15 = sub_1D726207C();
    v17 = v16;

    v18 = sub_1D5BC5100(v15, v17, &v62);

    *(v12 + 4) = v18;
    v19 = "No theme trait defined for %s. Cannot configure theme";
LABEL_18:
    _os_log_impl(&dword_1D5B42000, v10, v11, v19, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1DA6FD500](v13, -1, -1);
    MEMORY[0x1DA6FD500](v12, -1, -1);
LABEL_19:

LABEL_26:
    result = 0;
    v21 = 0;
    goto LABEL_27;
  }

  v23 = v3[6];
  v24 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v23);
  v25 = (*(v24 + 8))(v7, a1, a2, v23, v24);
  v26 = v25;
  if (!v25 || (v27 = [v25 shareTextForegroundColor]) == 0)
  {
LABEL_21:
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v42 = sub_1D725C42C();
    __swift_project_value_buffer(v42, qword_1EDFFCFA8);

    v43 = sub_1D725C3FC();
    v44 = sub_1D7262EBC();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v62 = v46;
      *v45 = 136315138;
      v47 = [v7 identifier];
      v48 = sub_1D726207C();
      v50 = v49;

      v51 = sub_1D5BC5100(v48, v50, &v62);

      *(v45 + 4) = v51;
      _os_log_impl(&dword_1D5B42000, v43, v44, "No text or background color defined for %s. Cannot configure theme", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x1DA6FD500](v46, -1, -1);
      MEMORY[0x1DA6FD500](v45, -1, -1);
    }

    swift_unknownObjectRelease();
    goto LABEL_26;
  }

  v28 = v27;
  v29 = [v27 ne_color];

  v30 = [v26 navigationBarBackgroundColor];
  if (!v30)
  {

    goto LABEL_21;
  }

  v31 = v30;
  v21 = [v30 ne_color];

  v32 = [v26 shareText2UseLargeFontNoCapsule];
  v33 = [v26 shareText2ForegroundColor];
  if (v33)
  {
    v34 = v33;
    v35 = [v33 ne_color];
  }

  else
  {
    v35 = 0;
  }

  v56 = [v26 shareText2BackgroundColor];
  if (v56)
  {
    v57 = v56;
    v52 = [v56 ne_color];
  }

  else
  {
    v52 = 0;
  }

  v58 = [v26 shareText3ForegroundColor];
  if (v58)
  {
    v59 = v58;
    v54 = [v58 ne_color];
  }

  else
  {
    v54 = 0;
  }

  v60 = [v26 shareText3BackgroundColor];
  if (v60)
  {
    v61 = v60;
    v55 = [v60 ne_color];

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v55 = 0;
  }

  v53 = v32;
  result = v29;
LABEL_28:
  *a3 = result;
  a3[1] = v21;
  a3[2] = v35;
  a3[3] = v52;
  a3[4] = v53;
  a3[5] = v54;
  a3[6] = v55;
  return result;
}

id *sub_1D6BA1DA4()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 3));

  v1 = OBJC_IVAR____TtC8NewsFeedP33_1AB23A019A94525840AAA3EBFB74EFAE26CompletedShareImageFactory_fastestButtonConfig;
  v2 = sub_1D726389C();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  v3(v0 + OBJC_IVAR____TtC8NewsFeedP33_1AB23A019A94525840AAA3EBFB74EFAE26CompletedShareImageFactory_emojiTopButtonConfig, v2);
  v3(v0 + OBJC_IVAR____TtC8NewsFeedP33_1AB23A019A94525840AAA3EBFB74EFAE26CompletedShareImageFactory_emojiBottomButtonConfig, v2);

  return v0;
}

uint64_t sub_1D6BA1EE8()
{
  sub_1D6BA1DA4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CompletedShareImageFactory()
{
  result = qword_1EC892D60;
  if (!qword_1EC892D60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6BA1F90()
{
  result = sub_1D726389C();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1D6BA2080(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1D72622FC();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1DA6F9950](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_1D6BA20FC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1D6BA2194(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1D6BA2208(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1D6BA2194(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1D6BA2080(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D6BA2208(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1D7263E5C();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

unint64_t sub_1D6BA232C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1D6BA20FC(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_1D7263D3C();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_1D7263E5C() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_1D6BA247C(unint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = v5 | (v4 << 16);
  v7 = sub_1D6BA26CC(0xFuLL, a1, a2);
  v8 = sub_1D6BA26CC(v6, a1, a2);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 >= v8 >> 14)
  {
    if (v11 >= v10)
    {
      return 0;
    }

    v13 = 0;
    while (1)
    {
      while (1)
      {
        if (__OFSUB__(v13--, 1))
        {
          goto LABEL_41;
        }

        if ((a2 & 0x1000000000000000) == 0)
        {
          break;
        }

        result = sub_1D726219C();
        if (v11 >= result >> 14)
        {
          return v13;
        }
      }

      v20 = result >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v29 = a1;
        v30 = a2 & 0xFFFFFFFFFFFFFFLL;
        if ((*(&v28 + v20 + 7) & 0xC0) == 0x80)
        {
          v26 = -2;
          do
          {
            v27 = *(&v29 + v20 + v26--) & 0xC0;
          }

          while (v27 == 128);
          v25 = v26 + 1;
          goto LABEL_36;
        }
      }

      else
      {
        v21 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v28 = result;
          v21 = sub_1D7263E5C();
          result = v28;
        }

        v22 = v21 + v20;
        if ((*(v22 - 1) & 0xC0) == 0x80)
        {
          v23 = -2;
          do
          {
            v24 = *(v22 + v23--) & 0xC0;
          }

          while (v24 == 128);
          v25 = v23 + 1;
          goto LABEL_36;
        }
      }

      v25 = -1;
LABEL_36:
      result = (result + (v25 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      if (v11 >= result >> 14)
      {
        return v13;
      }
    }
  }

  for (i = 0; ; ++i)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1D726218C();
    }

    else
    {
      v14 = result >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v29 = a1;
        v30 = a2 & 0xFFFFFFFFFFFFFFLL;
        v16 = *(&v29 + v14);
      }

      else
      {
        v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v15 = sub_1D7263E5C();
        }

        v16 = *(v15 + v14);
      }

      v17 = v16;
      v18 = __clz(v16 ^ 0xFF) - 24;
      if (v17 >= 0)
      {
        LOBYTE(v18) = 1;
      }

      result = ((v14 + v18) << 16) | 5;
    }

    if (v11 <= result >> 14)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

unint64_t sub_1D6BA26CC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1D6BA2764(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1D6BA2208(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1D6BA2764(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1D6BA2080(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6BA27D8(void *a1)
{
  v2 = sub_1D725891C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B67A60(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  *&v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8).n128_u64[0];
  v11 = &v20 - v10;
  v12 = [a1 completedDate];
  if (v12)
  {
    v13 = v12;
    sub_1D72588BC();

    (*(v3 + 32))(v11, v6, v2);
    (*(v3 + 56))(v11, 0, 1, v2);
    sub_1D6BA4340(v11, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1D5B67A60);
    v14 = [a1 usedReveal];
    sub_1D5B5A498(0, &qword_1EDF1A660);
    v15 = sub_1D72636DC();
    v16 = v15;
    if (v14)
    {
      v17 = sub_1D726370C();

      v18 = v17 ^ 1;
    }

    else
    {

      v18 = 1;
    }
  }

  else
  {
    (*(v3 + 56))(v11, 1, 1, v2);
    sub_1D6BA4340(v11, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1D5B67A60);
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1D6BA2A94(uint64_t a1, uint64_t a2)
{
  v116 = a2;
  v113 = sub_1D726389C();
  v5 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v6);
  v8 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC8NewsFeedP33_1AB23A019A94525840AAA3EBFB74EFAE26CompletedShareImageFactory_width) = 0;
  v9 = (v2 + OBJC_IVAR____TtC8NewsFeedP33_1AB23A019A94525840AAA3EBFB74EFAE26CompletedShareImageFactory_textInsets);
  __asm { FMOV            V0.2D, #14.0 }

  *v9 = _Q0;
  v9[1] = _Q0;
  *(v2 + OBJC_IVAR____TtC8NewsFeedP33_1AB23A019A94525840AAA3EBFB74EFAE26CompletedShareImageFactory_emojiIconSize) = vdupq_n_s64(0x404C000000000000uLL);
  *(v2 + 16) = a1;
  sub_1D5B68374(a2, v2 + 24);
  v15 = objc_allocWithZone(MEMORY[0x1E69DCC10]);
  swift_unknownObjectRetain();
  v16 = [v15 initWithFrame_];
  *(v2 + 112) = v16;
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 systemFontOfSize_];
  [v18 setFont_];

  [*(v2 + 112) setAdjustsFontForContentSizeCategory_];
  v20 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  *(v2 + 120) = v20;
  v21 = *MEMORY[0x1E69DB980];
  v22 = v20;
  v23 = [v17 systemFontOfSize:13.0 weight:v21];
  [v22 setFont_];

  [*(v2 + 120) setAdjustsFontForContentSizeCategory_];
  v24 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  *(v2 + 128) = v24;
  v25 = v24;
  v26 = [v17 systemFontOfSize:28.0 weight:v21];
  [v25 setFont_];

  [*(v2 + 128) setAdjustsFontForContentSizeCategory_];
  v27 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  *(v2 + 136) = v27;
  [v27 setContentMode_];
  LODWORD(v28) = 1144750080;
  [*(v2 + 136) setContentHuggingPriority:0 forAxis:v28];
  v29 = objc_opt_self();
  v30 = [v29 buttonWithType_];
  *&v115 = OBJC_IVAR____TtC8NewsFeedP33_1AB23A019A94525840AAA3EBFB74EFAE26CompletedShareImageFactory_emojiTopButton;
  *(v2 + OBJC_IVAR____TtC8NewsFeedP33_1AB23A019A94525840AAA3EBFB74EFAE26CompletedShareImageFactory_emojiTopButton) = v30;
  [v30 setPreferredBehavioralStyle_];
  sub_1D726387C();
  v31 = *(v5 + 32);
  v32 = v113;
  v31(v2 + OBJC_IVAR____TtC8NewsFeedP33_1AB23A019A94525840AAA3EBFB74EFAE26CompletedShareImageFactory_emojiTopButtonConfig, v8, v113);
  v33 = [v29 buttonWithType_];
  v114 = OBJC_IVAR____TtC8NewsFeedP33_1AB23A019A94525840AAA3EBFB74EFAE26CompletedShareImageFactory_emojiBottomButton;
  *(v2 + OBJC_IVAR____TtC8NewsFeedP33_1AB23A019A94525840AAA3EBFB74EFAE26CompletedShareImageFactory_emojiBottomButton) = v33;
  [v33 setPreferredBehavioralStyle_];
  sub_1D726387C();
  v31(v2 + OBJC_IVAR____TtC8NewsFeedP33_1AB23A019A94525840AAA3EBFB74EFAE26CompletedShareImageFactory_emojiBottomButtonConfig, v8, v32);
  v34 = [v29 buttonWithType_];
  *(v2 + 144) = v34;
  [v34 setPreferredBehavioralStyle_];
  sub_1D726387C();
  v31(v2 + OBJC_IVAR____TtC8NewsFeedP33_1AB23A019A94525840AAA3EBFB74EFAE26CompletedShareImageFactory_fastestButtonConfig, v8, v32);
  sub_1D6BA43F0(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v36 = v35;
  v37 = swift_allocObject();
  v112 = xmmword_1D72816D0;
  *(v37 + 16) = xmmword_1D72816D0;
  v38 = *(v2 + 128);
  v39 = *(v2 + 144);
  *(v37 + 32) = v38;
  *(v37 + 40) = v39;
  v40 = objc_allocWithZone(MEMORY[0x1E69DCF90]);
  sub_1D5B5A498(0, &qword_1EDF1A710);
  v41 = v38;
  v42 = v39;
  v43 = sub_1D726265C();

  v44 = [v40 initWithArrangedSubviews_];

  *(v2 + 80) = v44;
  [v44 setAxis_];
  [*(v2 + 80) setAlignment_];
  v113 = v36;
  v45 = swift_allocObject();
  *(v45 + 16) = v112;
  v46 = *(v2 + 120);
  v47 = *(v2 + 80);
  *(v45 + 32) = v46;
  *(v45 + 40) = v47;
  v48 = objc_allocWithZone(MEMORY[0x1E69DCF90]);
  v49 = v46;
  v50 = v47;
  v51 = sub_1D726265C();

  v52 = [v48 initWithArrangedSubviews_];

  *(v2 + 88) = v52;
  [v52 setAxis_];
  [*(v2 + 88) setSpacing_];
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1D7298B00;
  v54 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  LODWORD(v55) = 1112014848;
  [v54 setContentCompressionResistancePriority:0 forAxis:v55];
  LODWORD(v56) = 1112014848;
  [v54 setContentCompressionResistancePriority:1 forAxis:v56];
  v57 = v114;
  v58 = v115;
  v59 = *(v2 + v115);
  *(v53 + 32) = v54;
  *(v53 + 40) = v59;
  v60 = *(v2 + v57);
  *(v53 + 48) = v60;
  v61 = objc_allocWithZone(MEMORY[0x1E69DD250]);
  v62 = v59;
  v63 = v60;
  v64 = [v61 initWithFrame_];
  LODWORD(v65) = 1112014848;
  [v64 setContentCompressionResistancePriority:0 forAxis:v65];
  LODWORD(v66) = 1112014848;
  [v64 setContentCompressionResistancePriority:1 forAxis:v66];
  *(v53 + 56) = v64;
  v67 = objc_allocWithZone(MEMORY[0x1E69DCF90]);
  v68 = sub_1D726265C();

  v69 = [v67 initWithArrangedSubviews_];

  *(v2 + 96) = v69;
  [v69 setAxis_];
  [*(v2 + 96) setCustomSpacing:*(v2 + v58) afterView:6.0];
  [*(v2 + 96) setAlignment_];
  v70 = swift_allocObject();
  v115 = xmmword_1D728AF30;
  *(v70 + 16) = xmmword_1D728AF30;
  v71 = *(v2 + 136);
  v72 = *(v2 + 96);
  *(v70 + 32) = v71;
  *(v70 + 40) = v72;
  v73 = objc_allocWithZone(MEMORY[0x1E69DD250]);
  v74 = v71;
  v75 = v72;
  v76 = [v73 initWithFrame_];
  LODWORD(v77) = 1112014848;
  [v76 setContentCompressionResistancePriority:0 forAxis:v77];
  LODWORD(v78) = 1112014848;
  [v76 setContentCompressionResistancePriority:1 forAxis:v78];
  *(v70 + 48) = v76;
  v79 = objc_allocWithZone(MEMORY[0x1E69DCF90]);
  v80 = sub_1D726265C();

  v81 = [v79 initWithArrangedSubviews_];

  *(v2 + 104) = v81;
  [v81 setAxis_];
  [*(v2 + 104) setAlignment_];
  [*(v2 + 104) setCustomSpacing:*(v2 + 136) afterView:8.0];
  *(v2 + 64) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v82 = swift_allocObject();
  *(v82 + 16) = v115;
  v83 = *(v2 + 88);
  v85 = *(v2 + 104);
  v84 = *(v2 + 112);
  *(v82 + 32) = v84;
  *(v82 + 40) = v83;
  *(v82 + 48) = v85;
  v86 = objc_allocWithZone(MEMORY[0x1E69DCF90]);
  v87 = v84;
  v88 = v83;
  v89 = v85;
  v90 = sub_1D726265C();

  v91 = [v86 initWithArrangedSubviews_];

  *(v2 + 72) = v91;
  [v91 setAxis_];
  [*(v2 + 72) setSpacing_];
  [*(v2 + 72) setCustomSpacing:*(v2 + 112) afterView:12.0];
  [*(v2 + 64) addSubview_];
  [*(v2 + 64) setTranslatesAutoresizingMaskIntoConstraints_];
  [*(v2 + 72) setTranslatesAutoresizingMaskIntoConstraints_];
  [*(v2 + 80) setTranslatesAutoresizingMaskIntoConstraints_];
  v92 = [*(v2 + 64) widthAnchor];
  v93 = [v92 constraintEqualToConstant_];

  *(v2 + OBJC_IVAR____TtC8NewsFeedP33_1AB23A019A94525840AAA3EBFB74EFAE26CompletedShareImageFactory_widthConstraint) = v93;
  v94 = objc_opt_self();
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_1D72EC970;
  v96 = [*(v2 + 72) topAnchor];
  v97 = [*(v2 + 64) topAnchor];
  v98 = [v96 constraintEqualToAnchor:v97 constant:14.0];

  *(v95 + 32) = v98;
  v99 = [*(v2 + 72) leadingAnchor];
  v100 = [*(v2 + 64) leadingAnchor];
  v101 = [v99 constraintEqualToAnchor:v100 constant:14.0];

  *(v95 + 40) = v101;
  v102 = [*(v2 + 72) trailingAnchor];
  v103 = [*(v2 + 64) trailingAnchor];
  v104 = [v102 constraintEqualToAnchor:v103 constant:-14.0];

  *(v95 + 48) = v104;
  v105 = [*(v2 + 72) bottomAnchor];
  v106 = [*(v2 + 64) bottomAnchor];
  v107 = [v105 constraintEqualToAnchor:v106 constant:-14.0];

  v108 = *(v2 + OBJC_IVAR____TtC8NewsFeedP33_1AB23A019A94525840AAA3EBFB74EFAE26CompletedShareImageFactory_widthConstraint);
  *(v95 + 56) = v107;
  *(v95 + 64) = v108;
  sub_1D5B5A498(0, &qword_1EC87FF48);
  v109 = v108;
  v110 = sub_1D726265C();

  [v94 activateConstraints_];

  sub_1D6B9FA34();
  __swift_destroy_boxed_opaque_existential_1(v116);
  return v2;
}

uint64_t sub_1D6BA3688(void *a1)
{
  swift_getObjectType();
  v2 = [objc_msgSend(a1 puzzleType)];
  swift_unknownObjectRelease();
  if (!v2)
  {
    return 0;
  }

  v3 = sub_1D726207C();
  v5 = v4;

  v6 = FCPuzzleProviding.puzzleTypeTraits.getter();
  v7 = MEMORY[0x1E69E6158];
  if ((v6 & 0x80) != 0)
  {
    sub_1D5BF4D9C();
    v3 = sub_1D7263A2C();
    v9 = v8;

    v5 = v9;
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  sub_1D5B67A60(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7273AE0;
  *(v12 + 56) = v7;
  *(v12 + 64) = sub_1D5B7E2C0();
  *(v12 + 32) = v3;
  *(v12 + 40) = v5;
  v13 = sub_1D72620BC();

  return v13;
}

uint64_t sub_1D6BA388C()
{
  swift_getObjectType();
  v0 = FCPuzzleProviding.puzzleTypeTraits.getter();
  if ((v0 & 0x200) == 0 && (v0 & 0x400) == 0 && (v0 & 0x100000) == 0)
  {
    return 0;
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v1 = sub_1D725811C();

  return v1;
}

id sub_1D6BA3A40(uint64_t a1, void *a2)
{
  swift_getObjectType();
  if ((FCPuzzleProviding.puzzleTypeTraits.getter() & 0x100000) != 0)
  {
    result = [a2 score];
    if (!result)
    {
      return result;
    }

    v4 = result;
    sub_1D7262BCC();
  }

  return 0;
}

id sub_1D6BA3BEC(uint64_t a1, void *a2)
{
  swift_getObjectType();
  if ((FCPuzzleProviding.puzzleTypeTraits.getter() & 0x100000) == 0)
  {
    return 0;
  }

  v4 = [a2 scoreType];
  if (v4 && (v5 = v4, v6 = [v4 integerValue], v5, v6 == 1))
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    v9 = sub_1D725811C();
  }

  else
  {
    result = [a2 progressMovesDescription];
    if (!result)
    {
      return result;
    }

    v8 = result;
    v9 = sub_1D726207C();
  }

  v10 = v9;

  return v10;
}

uint64_t sub_1D6BA3D58()
{
  v1 = [*(v0 + 48) thumbnailSmallImageAssetHandle];
  *(v0 + 56) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v1 filePath];
    if (v3)
    {
      v4 = v3;
      v5 = sub_1D726207C();
      v7 = v6;

      *(v0 + 32) = v5;
      *(v0 + 40) = v7;
      sub_1D6BA43F0(0, qword_1EDF179A0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
      swift_allocObject();
      v8 = sub_1D725BB1C();
    }

    else
    {
      *(swift_task_alloc() + 16) = v2;
      sub_1D6BA43F0(0, qword_1EDF179A0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
      swift_allocObject();
      v8 = sub_1D725BBAC();
    }

    *(v0 + 64) = v8;
    v11 = swift_task_alloc();
    *(v0 + 72) = v11;
    *v11 = v0;
    v11[1] = sub_1D6BA3F44;

    return MEMORY[0x1EEE44EE0](v0 + 16);
  }

  else
  {
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1D6BA3F44()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1D6BA4060;
  }

  else
  {

    v2 = sub_1D6045CB0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6BA4060()
{
  v18 = v0;

  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v1 = sub_1D725C42C();
  __swift_project_value_buffer(v1, qword_1EDFFCFA8);
  swift_unknownObjectRetain();
  v2 = sub_1D725C3FC();
  v3 = sub_1D7262EBC();
  swift_unknownObjectRelease();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[10];
  v6 = v0[7];
  if (v4)
  {
    v7 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = [v7 identifier];
    v11 = sub_1D726207C();
    v13 = v12;

    v14 = sub_1D5BC5100(v11, v13, &v17);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_1D5B42000, v2, v3, "Failed downloading asset handle for Puzzle ID: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1DA6FD500](v9, -1, -1);
    MEMORY[0x1DA6FD500](v8, -1, -1);
  }

  v15 = v0[1];

  return v15(0);
}

uint64_t sub_1D6BA4274(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6BA42D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6BA4340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

id sub_1D6BA43A0()
{
  v1 = *(v0 + 64);
  [v1 bounds];

  return [v1 drawViewHierarchyInRect:1 afterScreenUpdates:?];
}

void sub_1D6BA43F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D6BA4440()
{
  if (!qword_1EC892D90)
  {
    type metadata accessor for Key(255);
    sub_1D5B5A498(255, &qword_1EDF1A720);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC892D90);
    }
  }
}

uint64_t sub_1D6BA44C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6BA4530(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D6BA4578(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t FeedContentConfigType.seenContentMarker()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v25 - v13;
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v26 = &v25 - v18;
  v27 = v3;
  v19 = *(a2 + 40);
  v19(a1, a2, v17);
  (v19)(a1, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v22 = *(v7 + 8);
  v22(v10, AssociatedTypeWitness);
  v31 = v21;
  v29 = a1;
  v30 = a2;
  swift_getAssociatedTypeWitness();
  sub_1D72627FC();
  swift_getWitnessTable();
  sub_1D7263E7C();
  v23 = v26;
  (*(AssociatedConformanceWitness + 72))();

  v22(v14, AssociatedTypeWitness);
  (*(a2 + 56))(v23, a1, a2);
  return (v22)(v23, AssociatedTypeWitness);
}

uint64_t sub_1D6BA4898()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v1 = *(AssociatedConformanceWitness + 56);
  v2 = swift_checkMetadataState();
  v1(&v4, v2, AssociatedConformanceWitness);
  return v4;
}

double sub_1D6BA4A00()
{
  v2 = *v0;
  v12 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext();
  v6 = v5();
  v7 = sub_1D5E02AFC(v6, v2);

  if (!v1)
  {
    v8 = v5();
    sub_1D5E02AFC(v8, v12);

    v9 = v5();
    sub_1D5E02AFC(v9, v3);

    v10 = v5();
    sub_1D5E02AFC(v10, v4);
  }

  return v7;
}

uint64_t FormatEdgeInsets.description.getter()
{
  sub_1D7263D4C();

  v0 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v0);

  MEMORY[0x1DA6F9910](0x203A6C202CLL, 0xE500000000000000);
  v1 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v1);

  MEMORY[0x1DA6F9910](0x203A62202CLL, 0xE500000000000000);
  v2 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v2);

  MEMORY[0x1DA6F9910](0x203A72202CLL, 0xE500000000000000);
  v3 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v3);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 540701736;
}

uint64_t FormatEdgeInsetsEquation.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D7263D4C();

  v5 = sub_1D6936F98(v1);
  MEMORY[0x1DA6F9910](v5);

  MEMORY[0x1DA6F9910](0x203A6C202CLL, 0xE500000000000000);
  v6 = sub_1D6936F98(v2);
  MEMORY[0x1DA6F9910](v6);

  MEMORY[0x1DA6F9910](0x203A62202CLL, 0xE500000000000000);
  v7 = sub_1D6936F98(v4);
  MEMORY[0x1DA6F9910](v7);

  MEMORY[0x1DA6F9910](0x203A72202CLL, 0xE500000000000000);
  v8 = sub_1D6936F98(v3);
  MEMORY[0x1DA6F9910](v8);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 540701736;
}

uint64_t _s8NewsFeed24FormatEdgeInsetsEquationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  if ((sub_1D633A310(*a1, *a2) & 1) == 0 || (sub_1D633A310(v2, v5) & 1) == 0 || (sub_1D633A310(v4, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_1D633A310(v3, v6);
}

unint64_t sub_1D6BA4F74(uint64_t a1)
{
  result = sub_1D6BA4F9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6BA4F9C()
{
  result = qword_1EC892D98;
  if (!qword_1EC892D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892D98);
  }

  return result;
}

unint64_t sub_1D6BA5030()
{
  result = qword_1EC892DA0;
  if (!qword_1EC892DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892DA0);
  }

  return result;
}

unint64_t sub_1D6BA5084(uint64_t a1)
{
  result = sub_1D6BA50AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6BA50AC()
{
  result = qword_1EC892DA8;
  if (!qword_1EC892DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892DA8);
  }

  return result;
}

uint64_t sub_1D6BA5140(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6BA5194()
{
  result = qword_1EC892DB0;
  if (!qword_1EC892DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892DB0);
  }

  return result;
}

uint64_t SharingRecipeActivity.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6BA5294()
{
  result = qword_1EC892DB8;
  if (!qword_1EC892DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892DB8);
  }

  return result;
}

uint64_t sub_1D6BA5310()
{
  sub_1D7263D4C();

  strcpy(v4, "<html><body>");
  BYTE5(v4[1]) = 0;
  HIWORD(v4[1]) = -5120;
  swift_beginAccess();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  MEMORY[0x1DA6F9910](v2, v1);

  MEMORY[0x1DA6F9910](0x3C3E79646F622F3CLL, 0xEE003E6C6D74682FLL);
  return v4[0];
}

uint64_t sub_1D6BA53E0@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  v5 = *v2;
  sub_1D7263D4C();

  v6 = sub_1D6BA5A70(a1);
  MEMORY[0x1DA6F9910](v6);

  MEMORY[0x1DA6F9910](0x676E6F7274732F3CLL, 0xE90000000000003ELL);
  swift_beginAccess();
  MEMORY[0x1DA6F9910](0x3E676E6F7274733CLL, 0xE800000000000000);
  swift_endAccess();

  a2[3] = v5;
  a2[4] = &off_1F51B62F0;
  *a2 = v2;
}

uint64_t sub_1D6BA5510@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  v4 = *v2;
  v16 = 4091964;
  v17 = 0xE300000000000000;
  sub_1D6089234(a1, v13);
  v5 = v14;
  if (v14)
  {
    v6 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = (*(v6 + 64))(v5, v6);
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_1D60892F0(v13);
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  MEMORY[0x1DA6F9910](v7, v9);

  MEMORY[0x1DA6F9910](1047539516, 0xE400000000000000);
  v10 = v16;
  v11 = v17;
  swift_beginAccess();
  MEMORY[0x1DA6F9910](v10, v11);
  swift_endAccess();

  a2[3] = v4;
  a2[4] = &off_1F51B62F0;
  *a2 = v2;
}

uint64_t sub_1D6BA5664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v11 = *v5;
  v24[1] = a2;
  v25 = v11;
  v12 = sub_1D7257A4C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_1D7263D4C();

  v26 = 0x3D6665726820613CLL;
  v27 = 0xE900000000000022;
  v28 = a3;
  v29 = a4;
  sub_1D725799C();
  sub_1D5BF4D9C();
  v17 = sub_1D7263A7C();
  v19 = v18;
  (*(v13 + 8))(v16, v12);
  if (v19)
  {
    a3 = v17;
    a4 = v19;
  }

  else
  {
  }

  MEMORY[0x1DA6F9910](a3, a4);

  MEMORY[0x1DA6F9910](15906, 0xE200000000000000);
  v20 = sub_1D6BA5A70(a1);
  MEMORY[0x1DA6F9910](v20);

  MEMORY[0x1DA6F9910](1046556476, 0xE400000000000000);
  v21 = v26;
  v22 = v27;
  swift_beginAccess();
  MEMORY[0x1DA6F9910](v21, v22);
  swift_endAccess();

  a5[3] = v25;
  a5[4] = &off_1F51B62F0;
  *a5 = v6;
}

uint64_t sub_1D6BA58BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  swift_beginAccess();
  MEMORY[0x1DA6F9910](0x3E2F2072623CLL, 0xE600000000000000);
  swift_endAccess();
  a3[3] = a1;
  a3[4] = a2;
  *a3 = v7;
}

uint64_t sub_1D6BA59B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = *v4;
  v9 = sub_1D6BA5A70(a1);
  v11 = v10;
  swift_beginAccess();
  MEMORY[0x1DA6F9910](v9, v11);
  swift_endAccess();

  a4[3] = a2;
  a4[4] = a3;
  *a4 = v8;
}

uint64_t sub_1D6BA5A70(uint64_t a1)
{
  sub_1D726221C();
  sub_1D7262D4C();
  if (v2)
  {
  }

  else
  {
    sub_1D5BF4D9C();
    a1 = sub_1D7263A6C();
  }

  sub_1D726221C();
  sub_1D7262D4C();
  if ((v3 & 1) == 0)
  {
    sub_1D5BF4D9C();
    a1 = sub_1D7263A6C();
  }

  sub_1D726221C();
  sub_1D7262D4C();
  if ((v4 & 1) == 0)
  {
    sub_1D5BF4D9C();
    a1 = sub_1D7263A6C();
  }

  sub_1D726221C();
  sub_1D7262D4C();
  if ((v5 & 1) == 0)
  {
    sub_1D5BF4D9C();
    a1 = sub_1D7263A6C();
  }

  sub_1D726221C();
  sub_1D7262D4C();
  if ((v6 & 1) == 0)
  {
    sub_1D5BF4D9C();
    a1 = sub_1D7263A6C();
  }

  return a1;
}

uint64_t sub_1D6BA5DB4@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1D6BA5E14(uint64_t *a1@<X8>)
{
  v2 = 0x7469617274726F70;
  if (*v1)
  {
    v2 = 0x70616373646E616CLL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D6BA5F18()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6BA5FA0()
{
  sub_1D72621EC();
}

uint64_t sub_1D6BA6014()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6BA6098(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x70616373646E616CLL;
  }

  else
  {
    v3 = 0x7469617274726F70;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v5 = 0x70616373646E616CLL;
  }

  else
  {
    v5 = 0x7469617274726F70;
  }

  if (*a2)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6BA6144()
{
  if (*v0)
  {
    return 0x70616373646E614CLL;
  }

  else
  {
    return 0x7469617274726F50;
  }
}

unint64_t sub_1D6BA6198()
{
  result = qword_1EC892DC0;
  if (!qword_1EC892DC0)
  {
    sub_1D6BA61F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892DC0);
  }

  return result;
}

void sub_1D6BA61F0()
{
  if (!qword_1EC892DC8)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC892DC8);
    }
  }
}

unint64_t sub_1D6BA6244()
{
  result = qword_1EC892DD0;
  if (!qword_1EC892DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892DD0);
  }

  return result;
}

unint64_t sub_1D6BA6298()
{
  result = qword_1EC892DD8;
  if (!qword_1EC892DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892DD8);
  }

  return result;
}

id sub_1D6BA62EC(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 24);
  if (*(a1 + 8))
  {
    v10 = v2;
    v4 = objc_allocWithZone(MEMORY[0x1E69B5360]);
    v5 = sub_1D726203C();
    if (!v3)
    {
      v6 = 0;
LABEL_7:
      v7 = [v4 initWithTitle:v5 issueDescription:v6];

      v8 = [objc_allocWithZone(MEMORY[0x1E69B5348]) initWithIssue:v10 overrides:v7];
      return v8;
    }

LABEL_6:
    v6 = sub_1D726203C();
    goto LABEL_7;
  }

  if (v3)
  {
    v10 = v2;
    v4 = objc_allocWithZone(MEMORY[0x1E69B5360]);
    v5 = 0;
    goto LABEL_6;
  }

  return v2;
}

uint64_t FormatIssue.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatIssue.overrides.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 32);
  *(a1 + 8) = *(v1 + 40);
  *(a1 + 24) = v2;
}

uint64_t FormatIssue.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
}

uint64_t FormatIssue.properties.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;
}

NewsFeed::FormatIssue::Overrides __swiftcall FormatIssue.Overrides.init(title:issueDescription:)(Swift::String_optional title, Swift::String_optional issueDescription)
{
  *v2 = title;
  v2[1] = issueDescription;
  result.issueDescription = issueDescription;
  result.title = title;
  return result;
}

uint64_t FormatIssue.__allocating_init(identifier:overrides:selectors:properties:)(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = a3[1];
  *(v10 + 32) = *a3;
  *(v10 + 48) = v11;
  swift_beginAccess();
  *(v10 + 64) = a4;
  swift_beginAccess();
  *(v10 + 72) = a5;
  return v10;
}

uint64_t FormatIssue.init(identifier:overrides:selectors:properties:)(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v8 = a3[1];
  *(v5 + 32) = *a3;
  *(v5 + 48) = v8;
  swift_beginAccess();
  *(v5 + 64) = a4;
  swift_beginAccess();
  *(v5 + 72) = a5;
  return v5;
}

uint64_t FormatIssue.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatIssue.init(from:)(a1);
  return v2;
}

void *FormatIssue.init(from:)(void *a1)
{
  v2 = v1;
  sub_1D6BA78F4(0, &qword_1EDF03B40, sub_1D5E1925C, &type metadata for FormatIssue.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1925C();
  v9 = v25;
  sub_1D7264B0C();
  if (v9)
  {
    swift_deallocPartialClassInstance();
    v20 = a1;
  }

  else
  {
    v10 = v24;
    LOBYTE(v27) = 0;
    v11 = v5;
    v1[2] = sub_1D72642BC();
    v1[3] = v12;
    LOBYTE(v26) = 1;
    sub_1D6BA7768();
    sub_1D726427C();
    v25 = v8;
    v13 = v28;
    v23 = a1;
    v14 = v1;
    if (v28 == 1)
    {
      if (qword_1EC87D920 != -1)
      {
        swift_once();
      }

      v13 = *(&xmmword_1EC892DE0 + 1);
      v15 = xmmword_1EC892DE0;
      v17 = qword_1EC892DF0;
      v16 = qword_1EC892DF8;
    }

    else
    {
      v15 = v27;
      v17 = v29;
      v16 = v30;
    }

    v14[4] = v15;
    v14[5] = v13;
    v2 = v14;
    v14[6] = v17;
    v14[7] = v16;
    sub_1D5B81B04();
    LOBYTE(v26) = 2;
    sub_1D5C4EA9C();
    v18 = v25;
    sub_1D726427C();
    if (v27)
    {
      v19 = v27;
    }

    else
    {
      v19 = MEMORY[0x1E69E7CD0];
    }

    swift_beginAccess();
    v14[8] = v19;
    sub_1D5E4C584();
    v31 = 3;
    sub_1D69E3D00(&qword_1EDF3C910, sub_1D5B59CD8);
    sub_1D726427C();
    if (v26)
    {
      v22 = v26;
    }

    else
    {
      v22 = MEMORY[0x1E69E7CC0];
    }

    (*(v10 + 8))(v18, v11);
    swift_beginAccess();
    v14[9] = v22;
    v20 = v23;
  }

  __swift_destroy_boxed_opaque_existential_1(v20);
  return v2;
}

uint64_t sub_1D6BA6BDC(uint64_t a1)
{
  v2 = sub_1D5E1925C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6BA6C18(uint64_t a1)
{
  v2 = sub_1D5E1925C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatIssue.deinit()
{

  return v0;
}

uint64_t FormatIssue.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t FormatIssue.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D6BA78F4(0, &qword_1EDF02840, sub_1D5E1925C, &type metadata for FormatIssue.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1925C();
  sub_1D7264B5C();
  LOBYTE(v17) = 0;
  sub_1D72643FC();
  if (v2)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v11 = *(v3 + 56);
  v17 = *(v3 + 32);
  v18 = *(v3 + 40);
  v19 = v11;
  v16 = 1;
  sub_1D6BA77BC();

  sub_1D726443C();

  swift_beginAccess();
  if (*(*(v3 + 64) + 16))
  {

    sub_1D5E09154(v13, v10, 2);
  }

  swift_beginAccess();
  v14 = *(v3 + 72);
  if (*(v14 + 16))
  {
    v20 = 3;
    v15 = v14;
    sub_1D6BA7810();
    sub_1D5E4C584();
    sub_1D69E3D00(&qword_1EDF05030, sub_1D5B59D2C);

    sub_1D72647EC();
  }

  else
  {
  }

  (*(v7 + 8))(v10, v6);
}

void *sub_1D6BA7048@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatIssue.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t FormatIssue.Overrides.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatIssue.Overrides.issueDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double sub_1D6BA7130()
{
  result = 0.0;
  xmmword_1EC892DE0 = 0u;
  *&qword_1EC892DF0 = 0u;
  return result;
}

uint64_t static FormatIssue.Overrides.none.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC87D920 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EC892DF8;
  *a1 = xmmword_1EC892DE0;
  *(a1 + 8) = *(&xmmword_1EC892DE0 + 8);
  *(a1 + 24) = v1;
}

uint64_t sub_1D6BA71D4()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1D6BA7210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73BA360 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D6BA72F0(uint64_t a1)
{
  v2 = sub_1D6BA78A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6BA732C(uint64_t a1)
{
  v2 = sub_1D6BA78A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatIssue.Overrides.encode(to:)(void *a1)
{
  sub_1D6BA78F4(0, &qword_1EDF02838, sub_1D6BA78A0, &type metadata for FormatIssue.Overrides.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v12 - v7;
  v9 = *(v1 + 16);
  v12[1] = *(v1 + 24);
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6BA78A0();
  sub_1D7264B5C();
  v14 = 0;
  v10 = v12[3];
  sub_1D726437C();
  if (!v10)
  {
    v13 = 1;
    sub_1D726437C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t FormatIssue.Overrides.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a2;
  sub_1D6BA78F4(0, &qword_1EDF03B38, sub_1D6BA78A0, &type metadata for FormatIssue.Overrides.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6BA78A0();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v19;
  v21 = 0;
  v11 = sub_1D726422C();
  v13 = v12;
  v18 = v11;
  v20 = 1;
  v14 = sub_1D726422C();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *v10 = v18;
  v10[1] = v13;
  v10[2] = v14;
  v10[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D6BA7768()
{
  result = qword_1EDF12920;
  if (!qword_1EDF12920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12920);
  }

  return result;
}

unint64_t sub_1D6BA77BC()
{
  result = qword_1EDF12930;
  if (!qword_1EDF12930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12930);
  }

  return result;
}

unint64_t sub_1D6BA7810()
{
  result = qword_1EC87F8A8;
  if (!qword_1EC87F8A8)
  {
    sub_1D6BA78F4(255, &qword_1EDF02840, sub_1D5E1925C, &type metadata for FormatIssue.CodingKeys, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F8A8);
  }

  return result;
}

unint64_t sub_1D6BA78A0()
{
  result = qword_1EDF12948;
  if (!qword_1EDF12948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12948);
  }

  return result;
}

void sub_1D6BA78F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D6BA795C(void *a1)
{
  a1[1] = sub_1D6BA79E8(&unk_1EDF12900);
  a1[2] = sub_1D6BA79E8(&unk_1EDF12910);
  result = sub_1D6BA79E8(&qword_1EC892E00);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6BA79E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatIssue();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6BA7A4C(void *a1)
{
  a1[1] = sub_1D6BA7768();
  a1[2] = sub_1D6BA77BC();
  result = sub_1D6BA7A84();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6BA7A84()
{
  result = qword_1EC892E08;
  if (!qword_1EC892E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892E08);
  }

  return result;
}

unint64_t sub_1D6BA7B60()
{
  result = qword_1EC892E10;
  if (!qword_1EC892E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892E10);
  }

  return result;
}

unint64_t sub_1D6BA7BB8()
{
  result = qword_1EC892E18;
  if (!qword_1EC892E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892E18);
  }

  return result;
}

unint64_t sub_1D6BA7C10()
{
  result = qword_1EDF12938;
  if (!qword_1EDF12938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12938);
  }

  return result;
}

unint64_t sub_1D6BA7C68()
{
  result = qword_1EDF12940;
  if (!qword_1EDF12940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12940);
  }

  return result;
}

unint64_t sub_1D6BA7CC0()
{
  result = qword_1EDF12950;
  if (!qword_1EDF12950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12950);
  }

  return result;
}

unint64_t sub_1D6BA7D18()
{
  result = qword_1EDF12958;
  if (!qword_1EDF12958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12958);
  }

  return result;
}

NewsFeed::FormatDerivedDataErrorScope_optional __swiftcall FormatDerivedDataErrorScope.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FormatDerivedDataErrorScope.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x6E6F6974706FLL;
    v7 = 0x746165706572;
    if (v1 != 8)
    {
      v7 = 0x7261696C69787561;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x6143686374697773;
    if (v1 != 5)
    {
      v8 = 1835365481;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x697461726F636564;
    v3 = 1953459315;
    v4 = 0x656C797473;
    if (v1 != 3)
    {
      v4 = 0x686374697773;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x70756F7267;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

unint64_t sub_1D6BA7EF8()
{
  result = qword_1EC892E20;
  if (!qword_1EC892E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892E20);
  }

  return result;
}

uint64_t sub_1D6BA7F4C()
{
  sub_1D7264A0C();
  sub_1D694DEC0();
  return sub_1D7264A5C();
}

uint64_t sub_1D6BA7F9C()
{
  sub_1D7264A0C();
  sub_1D694DEC0();
  return sub_1D7264A5C();
}

uint64_t sub_1D6BA7FEC@<X0>(uint64_t *a1@<X8>)
{
  result = FormatDerivedDataErrorScope.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t type metadata accessor for FormatDerivedDataError()
{
  result = qword_1EC892E28;
  if (!qword_1EC892E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6BA8070()
{
  sub_1D6BA85D0(319, &qword_1EC892E38);
  if (v0 <= 0x3F)
  {
    sub_1D6BA85D0(319, &qword_1EC892E40);
    if (v1 <= 0x3F)
    {
      sub_1D6BA85D0(319, &qword_1EC892E48);
      if (v2 <= 0x3F)
      {
        sub_1D6BA85D0(319, &qword_1EC892E50);
        if (v3 <= 0x3F)
        {
          sub_1D5C829EC(319, &qword_1EC892E58);
          if (v4 <= 0x3F)
          {
            sub_1D6BA864C();
            if (v5 <= 0x3F)
            {
              sub_1D5C829EC(319, &qword_1EC892E68);
              if (v6 <= 0x3F)
              {
                sub_1D6BA86CC();
                if (v7 <= 0x3F)
                {
                  sub_1D6BA86FC();
                  if (v8 <= 0x3F)
                  {
                    sub_1D5C829EC(319, &qword_1EC892E80);
                    if (v9 <= 0x3F)
                    {
                      sub_1D5C829EC(319, &qword_1EC892E88);
                      if (v10 <= 0x3F)
                      {
                        sub_1D6BA8A78(319, &qword_1EC892E90);
                        if (v11 <= 0x3F)
                        {
                          sub_1D6BA872C();
                          if (v12 <= 0x3F)
                          {
                            sub_1D6BA8A78(319, &qword_1EC892EA8);
                            if (v13 <= 0x3F)
                            {
                              sub_1D5C928DC();
                              if (v14 <= 0x3F)
                              {
                                sub_1D6BA87C4();
                                if (v15 <= 0x3F)
                                {
                                  sub_1D5C829EC(319, &qword_1EC892EB8);
                                  if (v16 <= 0x3F)
                                  {
                                    sub_1D5C829EC(319, &qword_1EC892EC0);
                                    if (v17 <= 0x3F)
                                    {
                                      sub_1D6BA87F4();
                                      if (v18 <= 0x3F)
                                      {
                                        sub_1D6BA883C();
                                        if (v19 <= 0x3F)
                                        {
                                          sub_1D6BA88B4(319, &qword_1EC892ED8, &qword_1EDF43BA0, MEMORY[0x1E69E6158], sub_1D5B49714);
                                          if (v20 <= 0x3F)
                                          {
                                            sub_1D610B3F4(319, v20);
                                            if (v21 <= 0x3F)
                                            {
                                              sub_1D610AF78();
                                              if (v22 <= 0x3F)
                                              {
                                                sub_1D5C829EC(319, &qword_1EC892EE0);
                                                if (v23 <= 0x3F)
                                                {
                                                  sub_1D6BA8908();
                                                  if (v24 <= 0x3F)
                                                  {
                                                    sub_1D6BA88B4(319, &unk_1EDF01CE0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280], sub_1D5B49474);
                                                    if (v25 <= 0x3F)
                                                    {
                                                      sub_1D5C829EC(319, &qword_1EC892EE8);
                                                      if (v26 <= 0x3F)
                                                      {
                                                        sub_1D6BA8984();
                                                        if (v27 <= 0x3F)
                                                        {
                                                          sub_1D69DABE8();
                                                          if (v28 <= 0x3F)
                                                          {
                                                            sub_1D6BA8A78(319, &qword_1EC892EF8);
                                                            if (v29 <= 0x3F)
                                                            {
                                                              sub_1D5B81B04();
                                                              if (v30 <= 0x3F)
                                                              {
                                                                sub_1D5C829EC(319, &qword_1EC892F00);
                                                                if (v31 <= 0x3F)
                                                                {
                                                                  sub_1D5C739AC();
                                                                  if (v32 <= 0x3F)
                                                                  {
                                                                    sub_1D6BA8AD4();
                                                                    if (v33 <= 0x3F)
                                                                    {
                                                                      sub_1D5C9290C();
                                                                      if (v34 <= 0x3F)
                                                                      {
                                                                        sub_1D5C829EC(319, &qword_1EC892F10);
                                                                        if (v35 <= 0x3F)
                                                                        {
                                                                          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

void sub_1D6BA85D0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1D5B49474(255, &qword_1EDF3C5D0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D6BA864C()
{
  if (!qword_1EC892E60)
  {
    sub_1D5B49714(255, &qword_1EDF43BA0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC892E60);
    }
  }
}

uint64_t sub_1D6BA86CC()
{
  result = qword_1EC892E70;
  if (!qword_1EC892E70)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EC892E70);
  }

  return result;
}

uint64_t sub_1D6BA86FC()
{
  result = qword_1EC892E78;
  if (!qword_1EC892E78)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EC892E78);
  }

  return result;
}

void sub_1D6BA872C()
{
  if (!qword_1EC892E98)
  {
    sub_1D6BA8A18(255, &qword_1EC892EA0, sub_1D5E2A690);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC892E98);
    }
  }
}

uint64_t sub_1D6BA87C4()
{
  result = qword_1EC892EB0;
  if (!qword_1EC892EB0)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EC892EB0);
  }

  return result;
}

void sub_1D6BA87F4()
{
  if (!qword_1EC892EC8)
  {
    sub_1D5B81B04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC892EC8);
    }
  }
}

void sub_1D6BA883C()
{
  if (!qword_1EC892ED0)
  {
    sub_1D5B49714(255, &unk_1EDF3C820);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC892ED0);
    }
  }
}

void sub_1D6BA88B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6BA8908()
{
  if (!qword_1EDF1B628)
  {
    sub_1D5B49714(255, &qword_1EDF43BA0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF1B628);
    }
  }
}

void sub_1D6BA8984()
{
  if (!qword_1EC892EF0)
  {
    sub_1D6BA8A18(255, &qword_1EDF1AD58, sub_1D5B4B090);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC892EF0);
    }
  }
}

void sub_1D6BA8A18(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1D7262BAC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D6BA8A78(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

ValueMetadata *sub_1D6BA8AD4()
{
  result = qword_1EC892F08;
  if (!qword_1EC892F08)
  {
    result = &type metadata for FormatDerivedDataFileKey;
    atomic_store(&type metadata for FormatDerivedDataFileKey, &qword_1EC892F08);
  }

  return result;
}

uint64_t sub_1D6BA8B08()
{
  v1 = type metadata accessor for FormatDerivedDataError();
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = (&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6BAB524(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x656C6C65636E6143;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v18 = *v4;
      v19 = v4[1];
      v20 = v4[2];
      v21 = 0x697461726F636544;
      v22 = 0xEA00000000006E6FLL;
      goto LABEL_26;
    case 2:
      v18 = *v4;
      v19 = v4[1];
      v20 = v4[2];
      v21 = 0x656C797453;
      goto LABEL_25;
    case 3:
      v18 = *v4;
      v19 = v4[1];
      v20 = v4[2];
      v21 = 0x6E6F6974704FLL;
      v22 = 0xE600000000000000;
      goto LABEL_26;
    case 4:
      return v4[1];
    case 5:
      sub_1D6BAB5F0(v4, type metadata accessor for FormatDerivedDataError);
      return 0xD000000000000043;
    case 6:
      v23 = *v4;
      v24 = v4[1];
      v25 = v4[2];
      v12 = v4[3];
      v38 = 0;
      v39 = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0x272070756F7247, 0xE700000000000000);
      MEMORY[0x1DA6F9910](v23, v24);

      MEMORY[0x1DA6F9910](0xD00000000000002ALL, 0x80000001D73EA420);
      v26 = v25;
      goto LABEL_52;
    case 7:
      v13 = *v4;
      v12 = v4[1];
      v38 = 0;
      v39 = 0xE000000000000000;
      sub_1D7263D4C();

      v14 = 0x80000001D73EA400;
      v15 = 0xD000000000000019;
      goto LABEL_35;
    case 8:
    case 9:
    case 19:
      sub_1D6BAB5F0(v4, type metadata accessor for FormatDerivedDataError);
      return 0xD00000000000002CLL;
    case 10:
      sub_1D6BAB5F0(v4, type metadata accessor for FormatDerivedDataError);
      return 0xD00000000000003ELL;
    case 11:
      sub_1D6BAB5F0(v4, type metadata accessor for FormatDerivedDataError);
      return 0xD000000000000059;
    case 12:
    case 20:
      sub_1D6BAB5F0(v4, type metadata accessor for FormatDerivedDataError);
      return 0xD000000000000046;
    case 13:
      sub_1D6BAB5F0(v4, type metadata accessor for FormatDerivedDataError);
      return 0xD00000000000004FLL;
    case 14:
      sub_1D6BAB5F0(v4, type metadata accessor for FormatDerivedDataError);
      return 0xD000000000000057;
    case 15:
      v13 = *v4;
      v12 = v4[1];
      v38 = 0;
      v39 = 0xE000000000000000;
      sub_1D7263D4C();

      v14 = 0x80000001D73E9570;
      v15 = 0xD000000000000025;
LABEL_35:
      v38 = v15;
      v39 = v14;
      goto LABEL_51;
    case 16:
      sub_1D6BAB5F0(v4, type metadata accessor for FormatDerivedDataError);
      goto LABEL_30;
    case 17:
      sub_1D6BAB5F0(v4, type metadata accessor for FormatDerivedDataError);
      return 0xD00000000000001BLL;
    case 18:
      sub_1D6BAB5F0(v4, type metadata accessor for FormatDerivedDataError);
      return 0xD000000000000032;
    case 21:
      sub_1D6BAB5F0(v4, type metadata accessor for FormatDerivedDataError);
      return 0xD00000000000004BLL;
    case 22:
      sub_1D6BAB5F0(v4, type metadata accessor for FormatDerivedDataError);
      return 0xD000000000000055;
    case 23:
      sub_1D6BAB5F0(v4, type metadata accessor for FormatDerivedDataError);
      return 0xD00000000000005ALL;
    case 24:
      sub_1D6BAB5F0(v4, type metadata accessor for FormatDerivedDataError);
      return 0xD00000000000004DLL;
    case 25:
      v36 = *v4;
      v35 = v4[1];
      v38 = 0;
      v39 = 0xE000000000000000;
      sub_1D7263D4C();

      v38 = 0xD000000000000011;
      v39 = 0x80000001D73EA010;
      MEMORY[0x1DA6F9910](v36, v35);

      v33 = 0xD00000000000001ELL;
      v34 = 0x80000001D73EA030;
      goto LABEL_53;
    case 26:
      sub_1D6BAB5F0(v4, type metadata accessor for FormatDerivedDataError);
      return 0xD000000000000047;
    case 27:
      sub_1D6BAB5F0(v4, type metadata accessor for FormatDerivedDataError);
      return 0xD000000000000041;
    case 28:

      sub_1D610B3F4(0, v29);
      v31 = v30;
      v32 = *(v30 + 48);

      sub_1D6BAB5F0(v4 + *(v31 + 80), type metadata accessor for FormatSlotDefinition);
      sub_1D6BAB5F0(v4 + v32, type metadata accessor for FormatSlotDefinition);
      return 0xD000000000000053;
    case 29:
      sub_1D610AF78();
      sub_1D6BAB5F0(v4 + *(v28 + 48), type metadata accessor for FormatSlotDefinition);
      sub_1D6BAB5F0(v4, type metadata accessor for FormatSlotDefinition);
      return 0xD00000000000003BLL;
    case 30:
      sub_1D6BAB5F0(v4, type metadata accessor for FormatDerivedDataError);
      return 0xD000000000000060;
    case 31:
      sub_1D6BAB5F0(v4, type metadata accessor for FormatDerivedDataError);
      return 0xD000000000000051;
    case 32:
      sub_1D6BAB5F0(v4, type metadata accessor for FormatDerivedDataError);
      return 0xD000000000000053;
    case 33:
      sub_1D6BAB5F0(v4, type metadata accessor for FormatDerivedDataError);
      return 0xD00000000000003CLL;
    case 34:
      sub_1D6BAB5F0(v4, type metadata accessor for FormatDerivedDataError);
      return 0xD000000000000039;
    case 35:
      sub_1D69DABE8();
      v11 = *(v10 + 48);
      sub_1D6BAB5F0(v4 + *(v10 + 64), type metadata accessor for FormatSlotDefinitionItemSet);
      sub_1D6BAB5F0(v4 + v11, type metadata accessor for FormatSlotDefinitionItemSet);
      return 0xD000000000000060;
    case 36:
      sub_1D6BAB5F0(v4, type metadata accessor for FormatDerivedDataError);
      return 0xD000000000000025;
    case 37:
      v13 = v4[4];
      v12 = v4[5];

      v38 = 0;
      v39 = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD000000000000044, 0x80000001D73E9C30);
LABEL_51:
      v26 = v13;
LABEL_52:
      MEMORY[0x1DA6F9910](v26, v12);

      v33 = 39;
      v34 = 0xE100000000000000;
LABEL_53:
      MEMORY[0x1DA6F9910](v33, v34);
      goto LABEL_54;
    case 38:
      sub_1D6BAB5F0(v4, type metadata accessor for FormatDerivedDataError);
      return 0xD000000000000034;
    case 39:
      sub_1D6BAB5F0(v4, type metadata accessor for FormatDerivedDataError);
      return 0xD000000000000058;
    case 40:
      return 0xD000000000000032;
    case 41:
      sub_1D6BAB5F0(v4, type metadata accessor for FormatDerivedDataError);
      return 0x6C616E7265746E49;
    case 42:
      v7 = *v4;
      v8 = v4[1];
      v9 = *(v4 + 16);
      v38 = 0;
      v39 = 0xE000000000000000;
      sub_1D7263D4C();
      v41 = v38;
      v42 = v39;
      MEMORY[0x1DA6F9910](0xD00000000000001ALL, 0x80000001D73E9A20);
      v38 = v7;
      v39 = v8;
      v40 = v9;
      sub_1D7263F9C();
      sub_1D5F7C628(v7, v8, v9);
      return v41;
    case 43:
      v17 = *v4;
      v16 = v4[1];
      v38 = 0;
      v39 = 0xE000000000000000;
      sub_1D7263D4C();

      v38 = 0xD00000000000001FLL;
      v39 = 0x80000001D73E9A00;
      MEMORY[0x1DA6F9910](v17, v16);

LABEL_54:
      result = v38;
      break;
    case 44:
      sub_1D6BAB5F0(v4, type metadata accessor for FormatDerivedDataError);
      result = 0xD00000000000001CLL;
      break;
    case 45:
      result = 0xD000000000000027;
      break;
    case 46:
      return result;
    case 47:
      result = 0x6C706D4920746F4ELL;
      break;
    case 48:
LABEL_30:
      result = 0xD000000000000015;
      break;
    case 49:
      result = 0xD000000000000035;
      break;
    default:
      v18 = *v4;
      v19 = v4[1];
      v20 = v4[2];
      v21 = 0x70756F7247;
LABEL_25:
      v22 = 0xE500000000000000;
LABEL_26:
      v27 = sub_1D6BAB6B8(v21, v22, v18, v19, v20);

      result = v27;
      break;
  }

  return result;
}

unint64_t sub_1D6BA9760(uint64_t a1)
{
  result = sub_1D5E40444();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6BA9788()
{
  v1 = type metadata accessor for FormatSlotDefinitionItemSet();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v196 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v196 - v7;
  v9 = type metadata accessor for FormatSlotDefinition();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = (&v196 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for FormatDerivedDataError();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v196 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6BAB524(v0, v16);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 4u:
      v99 = *v16;

      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0x2064696C61766E49, 0xE800000000000000);
      LOBYTE(v198[0]) = v99;
      sub_1D7263F9C();
      v27 = 0x656C69706D6F6320;
      v100 = 0xEF65706F63732072;
      goto LABEL_57;
    case 5u:
      v126 = *v16;
      v127 = *(v16 + 1);
      v129 = *(v16 + 2);
      v128 = *(v16 + 3);
      v130 = *(v16 + 4);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD000000000000025, 0x80000001D73E98B0);
      MEMORY[0x1DA6F9910](v126, v127);

      MEMORY[0x1DA6F9910](0xD00000000000003FLL, 0x80000001D73E98E0);
      v131 = MEMORY[0x1DA6F9D20](v130, MEMORY[0x1E69E6158]);
      v133 = v132;

      MEMORY[0x1DA6F9910](v131, v133);

      MEMORY[0x1DA6F9910](0xD00000000000001ELL, 0x80000001D73E9920);
      MEMORY[0x1DA6F9910](v129, v128);

      v26 = ".\n\ncompiler:\n  slots:\n    id: ";
      v27 = 0xD00000000000009BLL;
      goto LABEL_56;
    case 6u:
      v141 = *(v16 + 2);
      v142 = *(v16 + 3);

      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD000000000000099, 0x80000001D73E97F0);
      MEMORY[0x1DA6F9910](v141, v142);

      v26 = "pe: slot\ndata:\n  slotId: ";
      v27 = 0xD000000000000011;
      goto LABEL_56;
    case 7u:
      sub_1D6BAB5F0(v16, type metadata accessor for FormatDerivedDataError);
      return 0xD00000000000002CLL;
    case 8u:
      v150 = *v16;
      v149 = *(v16 + 1);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD00000000000001ALL, 0x80000001D73E9640);
      MEMORY[0x1DA6F9910](v150, v149);

      v26 = "to be overriden:\n\nid: ";
      v27 = 0xD000000000000067;
      goto LABEL_56;
    case 9u:
      v107 = *v16;
      v108 = *(v16 + 1);
      sub_1D5DEA520(*(v16 + 2), *(v16 + 3), v16[32]);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD00000000000001ALL, 0x80000001D73E9640);
      MEMORY[0x1DA6F9910](v107, v108);

      v26 = "to be overriden:\n\nid: ";
      v27 = 0xD000000000000067;
      goto LABEL_56;
    case 0xAu:
      v145 = *v16;
      v146 = *(v16 + 1);
      v147 = v16[16];
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD00000000000001ALL, 0x80000001D73E9640);
      MEMORY[0x1DA6F9910](v145, v146);
      MEMORY[0x1DA6F9910](0xD0000000000000E6, 0x80000001D73E9660);
      MEMORY[0x1DA6F9910](v145, v146);

      MEMORY[0x1DA6F9910](0xD00000000000002CLL, 0x80000001D73E8610);
      LOBYTE(v198[0]) = v147;
      goto LABEL_39;
    case 0xBu:
      v93 = *v16;
      v92 = *(v16 + 1);
      v94 = v16[16];
      v95 = v16[17];
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD00000000000008BLL, 0x80000001D73E8580);
      MEMORY[0x1DA6F9910](v93, v92);
      MEMORY[0x1DA6F9910](0xD00000000000002CLL, 0x80000001D73E8610);
      LOBYTE(v198[0]) = v94;
      v96 = FormatOptionType.rawValue.getter();
      MEMORY[0x1DA6F9910](v96);

      MEMORY[0x1DA6F9910](0x203A64690A0ALL, 0xE600000000000000);
      MEMORY[0x1DA6F9910](v93, v92);

      v97 = 0xD00000000000002CLL;
      v98 = 0x80000001D73E8610;
      goto LABEL_22;
    case 0xCu:
      v103 = *v16;
      v104 = *(v16 + 1);
      v105 = v16[16];
      v95 = v16[17];
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD00000000000003ALL, 0x80000001D73E8540);
      MEMORY[0x1DA6F9910](v103, v104);

      MEMORY[0x1DA6F9910](0x70797420666F2027, 0xEA00000000002065);
      LOBYTE(v198[0]) = v105;
      v106 = FormatOptionType.rawValue.getter();
      MEMORY[0x1DA6F9910](v106);

      v97 = 0x7974206874697720;
      v98 = 0xEB00000000206570;
LABEL_22:
      MEMORY[0x1DA6F9910](v97, v98);
      LOBYTE(v198[0]) = v95;
LABEL_39:
      v148 = FormatOptionType.rawValue.getter();
      MEMORY[0x1DA6F9910](v148);

      goto LABEL_58;
    case 0xDu:
      v138 = *v16;
      v139 = *(v16 + 1);
      v140 = v16[16];
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0x6974706F20656854, 0xEC00000027206E6FLL);
      MEMORY[0x1DA6F9910](v138, v139);

      MEMORY[0x1DA6F9910](0xD000000000000011, 0x80000001D73E95F0);
      LOBYTE(v198[0]) = v140;
      sub_1D7263F9C();
      MEMORY[0x1DA6F9910](0xD000000000000027, 0x80000001D73E9610);
      sub_1D5E2A690();
      goto LABEL_53;
    case 0xEu:
      v73 = *v16;
      v72 = *(v16 + 1);
      v74 = *(v16 + 2);
      v75 = *(v16 + 3);
      v76 = *(v16 + 4);
      v77 = *(v16 + 7);
      v197 = *(v16 + 6);
      v78 = *(v16 + 8);
      v79 = v16[40];
      v80 = v16[72];
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      v198[0] = v201;
      MEMORY[0x1DA6F9910](0xD000000000000014, 0x80000001D73E95D0);
      MEMORY[0x1DA6F9910](v73, v72);

      MEMORY[0x1DA6F9910](0xD000000000000011, 0x80000001D73E95F0);
      *&v201 = v74;
      *(&v201 + 1) = v75;
      v202 = v76;
      LOBYTE(v203) = v79;
      v81 = FormatDerivedDataOptionType.description.getter();
      v83 = v82;
      sub_1D6057684(v74, v75, v76, v79);
      MEMORY[0x1DA6F9910](v81, v83);

      MEMORY[0x1DA6F9910](0xD000000000000027, 0x80000001D73E9610);
      v84 = v197;
      *&v201 = v197;
      *(&v201 + 1) = v77;
      v202 = v78;
      LOBYTE(v203) = v80;
      v85 = FormatDerivedDataOptionType.description.getter();
      v87 = v86;
      sub_1D6057684(v84, v77, v78, v80);
      MEMORY[0x1DA6F9910](v85, v87);

      goto LABEL_48;
    case 0xFu:
      v113 = *v16;
      v112 = *(v16 + 1);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD000000000000025, 0x80000001D73E9570);
      MEMORY[0x1DA6F9910](v113, v112);

      v26 = " a system image for '";
      v27 = 0xD000000000000029;
      goto LABEL_56;
    case 0x10u:
      v59 = *v16;
      v58 = *(v16 + 1);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD000000000000019, 0x80000001D73E9500);
      MEMORY[0x1DA6F9910](v59, v58);

      v26 = "Are you sure the bundle '";
      v27 = 0xD000000000000049;
      goto LABEL_56;
    case 0x11u:
      v118 = *v16;
      v119 = *(v16 + 1);
      v121 = *(v16 + 2);
      v120 = *(v16 + 3);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();

      *&v201 = 0x67616D6920656854;
      *(&v201 + 1) = 0xEB00000000272065;
      MEMORY[0x1DA6F9910](v121, v120);

      MEMORY[0x1DA6F9910](0xD000000000000020, 0x80000001D73E94D0);
      MEMORY[0x1DA6F9910](v118, v119);

      v27 = 39;
      v100 = 0xE100000000000000;
      goto LABEL_57;
    case 0x12u:
      v144 = *v16;
      v143 = *(v16 + 1);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0x67616D6920656854, 0xEB00000000272065);
      MEMORY[0x1DA6F9910](v144, v143);

      v26 = " use a remote font?";
      v27 = 0xD00000000000002CLL;
      goto LABEL_56;
    case 0x13u:
      v166 = *v16;
      v165 = *(v16 + 1);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD000000000000021, 0x80000001D73E93A0);
      MEMORY[0x1DA6F9910](v166, v165);

      v26 = "he font by name '";
      v27 = 0xD000000000000053;
      goto LABEL_56;
    case 0x14u:
      v123 = *v16;
      v122 = *(v16 + 1);
      v125 = *(v16 + 2);
      v124 = *(v16 + 3);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0x706F727020656854, 0xEE00272079747265);
      MEMORY[0x1DA6F9910](v125, v124);

      MEMORY[0x1DA6F9910](0xD00000000000001BLL, 0x80000001D73E9060);
      MEMORY[0x1DA6F9910](v123, v122);

      v26 = "he slot item definition.";
      v27 = 0xD0000000000000ADLL;
      goto LABEL_56;
    case 0x15u:
      v135 = *v16;
      v134 = *(v16 + 1);
      v137 = *(v16 + 2);
      v136 = *(v16 + 3);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0x706F727020656854, 0xEE00272079747265);
      MEMORY[0x1DA6F9910](v137, v136);

      MEMORY[0x1DA6F9910](0xD00000000000001BLL, 0x80000001D73E9060);
      MEMORY[0x1DA6F9910](v135, v134);

      v26 = " item auxiliary definition.";
      v27 = 0xD0000000000000B8;
      goto LABEL_56;
    case 0x16u:
      v160 = *v16;
      v159 = *(v16 + 1);
      v162 = *(v16 + 2);
      v161 = *(v16 + 3);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0x706F727020656854, 0xEE00272079747265);
      MEMORY[0x1DA6F9910](v162, v161);

      MEMORY[0x1DA6F9910](0xD00000000000001BLL, 0x80000001D73E9060);
      MEMORY[0x1DA6F9910](v160, v159);

      v26 = "liary item definition.";
      v27 = 0xD0000000000000CBLL;
      goto LABEL_56;
    case 0x17u:
      v171 = *v16;
      v170 = *(v16 + 1);
      v173 = *(v16 + 2);
      v172 = *(v16 + 3);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0x706F727020656854, 0xEE00272079747265);
      MEMORY[0x1DA6F9910](v173, v172);

      MEMORY[0x1DA6F9910](0xD00000000000001BLL, 0x80000001D73E9060);
      MEMORY[0x1DA6F9910](v171, v170);

      v26 = "' was defined on the slot '";
      v27 = 0xD0000000000000D6;
      goto LABEL_56;
    case 0x18u:
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0x69747265706F7250, 0xEB00000000207365);
      v109 = sub_1D7262B1C();
      v111 = v110;

      MEMORY[0x1DA6F9910](v109, v111);

      v26 = "dar on News Feed | iOS";
      v27 = 0xD0000000000000CALL;
      goto LABEL_56;
    case 0x19u:
      sub_1D6BAB5F0(v16, type metadata accessor for FormatDerivedDataError);
      return 0xD0000000000000C6;
    case 0x1Au:
      v188 = *v16;
      v187 = *(v16 + 1);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD00000000000002BLL, 0x80000001D73E8DD0);
      v189 = MEMORY[0x1E69E6530];
      v190 = MEMORY[0x1DA6F9D20](v188, MEMORY[0x1E69E6530]);
      v192 = v191;

      MEMORY[0x1DA6F9910](v190, v192);

      MEMORY[0x1DA6F9910](0xD000000000000037, 0x80000001D73E8E00);
      v193 = MEMORY[0x1DA6F9D20](v187, v189);
      v195 = v194;

      MEMORY[0x1DA6F9910](v193, v195);

      v26 = "r requires support for ";
      v27 = 0xD00000000000007ELL;
      goto LABEL_56;
    case 0x1Bu:
      v47 = *v16;
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD00000000000001ELL, 0x80000001D73E8D30);
      v48 = MEMORY[0x1DA6F9D20](v47, MEMORY[0x1E69E6158]);
      v50 = v49;

      MEMORY[0x1DA6F9910](v48, v50);

      v26 = "The package has defined slots ";
      v27 = 0xD000000000000072;
      goto LABEL_56;
    case 0x1Cu:
      v175 = *v16;
      v174 = *(v16 + 1);
      sub_1D610B3F4(0, v17);
      v177 = &v16[v176[16]];
      v179 = *v177;
      v178 = *(v177 + 1);
      v180 = v176[20];
      sub_1D6BAB588(&v16[v176[12]], v12, type metadata accessor for FormatSlotDefinition);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0x2720746F6C53, 0xE600000000000000);
      MEMORY[0x1DA6F9910](*v12, v12[1]);
      MEMORY[0x1DA6F9910](0xD000000000000031, 0x80000001D73E8C60);
      MEMORY[0x1DA6F9910](v175, v174);

      MEMORY[0x1DA6F9910](0x6020646E612027, 0xE700000000000000);
      MEMORY[0x1DA6F9910](v179, v178);

      MEMORY[0x1DA6F9910](0xD000000000000081, 0x80000001D73E8CA0);
      v181 = v201;
      sub_1D6BAB5F0(v12, type metadata accessor for FormatSlotDefinition);
      sub_1D6BAB5F0(&v16[v180], type metadata accessor for FormatSlotDefinition);
      return v181;
    case 0x1Du:
      sub_1D610AF78();
      v183 = *(v182 + 48);
      sub_1D6BAB588(v16, v12, type metadata accessor for FormatSlotDefinition);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0x2720746F6C53, 0xE600000000000000);
      MEMORY[0x1DA6F9910](*v12, v12[1]);
      MEMORY[0x1DA6F9910](0xD0000000000000B2, 0x80000001D73E8BA0);
      v184 = v201;
      sub_1D6BAB5F0(v12, type metadata accessor for FormatSlotDefinition);
      sub_1D6BAB5F0(&v16[v183], type metadata accessor for FormatSlotDefinition);
      return v184;
    case 0x1Eu:
      v152 = *v16;
      v151 = *(v16 + 1);
      v153 = *(v16 + 4);
      v154 = *(v16 + 5);
      v155 = *(v16 + 6);
      v156 = *(v16 + 7);
      v157 = v16[64];

      sub_1D5E32940(v153, v154, v155, v156, v157);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD00000000000002BLL, 0x80000001D73E8B30);
      MEMORY[0x1DA6F9910](v152, v151);

      v26 = "provides layout for state '";
      v27 = 0xD000000000000037;
      goto LABEL_56;
    case 0x1Fu:
      v114 = *v16;
      v115 = *(v16 + 1);
      v44 = *(v16 + 2);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD000000000000023, 0x80000001D73E8AC0);
      MEMORY[0x1DA6F9910](v114, v115);

      v45 = "put created event '";
      v46 = 0xD00000000000003FLL;
      goto LABEL_29;
    case 0x20u:
      v158 = *v16;
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD00000000000007ELL, 0x80000001D73E8A40);
      *&v198[0] = v158;
      sub_1D5B49474(0, &qword_1EDF3C5D0);
      sub_1D7263F9C();

      goto LABEL_58;
    case 0x21u:
      v89 = *v16;
      v88 = *(v16 + 1);
      v91 = *(v16 + 2);
      v90 = *(v16 + 3);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD000000000000022, 0x80000001D73E89E0);
      MEMORY[0x1DA6F9910](v91, v90);

      MEMORY[0x1DA6F9910](0x27206D6F72662027, 0xE800000000000000);
      MEMORY[0x1DA6F9910](v89, v88);

      v26 = "is nesting scope '";
      v27 = 0xD000000000000024;
      goto LABEL_56;
    case 0x22u:
      v51 = *v16;
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD000000000000010, 0x80000001D73E8880);
      LOBYTE(v198[0]) = v51;
      sub_1D7263F9C();
      MEMORY[0x1DA6F9910](0xD000000000000017, 0x80000001D73E8900);
      sub_1D5B4B090();
      v52 = sub_1D7262B1C();
      v54 = v53;

      MEMORY[0x1DA6F9910](v52, v54);

      MEMORY[0x1DA6F9910](0xD00000000000001BLL, 0x80000001D73E8920);
      v55 = sub_1D7262B1C();
      v57 = v56;

      MEMORY[0x1DA6F9910](v55, v57);

      v26 = " into an item set of kinds ";
      v27 = 0xD00000000000009ALL;
      goto LABEL_56;
    case 0x23u:
      v34 = *v16;
      sub_1D69DABE8();
      v36 = *(v35 + 64);
      sub_1D6BAB588(&v16[*(v35 + 48)], v8, type metadata accessor for FormatSlotDefinitionItemSet);
      sub_1D6BAB588(&v16[v36], v4, type metadata accessor for FormatSlotDefinitionItemSet);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD000000000000010, 0x80000001D73E8880);
      LOBYTE(v198[0]) = v34;
      sub_1D7263F9C();
      MEMORY[0x1DA6F9910](0xD000000000000052, 0x80000001D73E88A0);
      sub_1D5B4B090();
      v37 = sub_1D7262B1C();
      MEMORY[0x1DA6F9910](v37);

      MEMORY[0x1DA6F9910](0x3D746E756F6320, 0xE700000000000000);
      LODWORD(v198[0]) = *(v8 + 1);
      v38 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v38);

      MEMORY[0x1DA6F9910](540877088, 0xE400000000000000);
      v39 = sub_1D7262B1C();
      MEMORY[0x1DA6F9910](v39);

      MEMORY[0x1DA6F9910](0x3D746E756F6320, 0xE700000000000000);
      LODWORD(v198[0]) = *(v4 + 1);
      v40 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v40);

      v41 = v201;
      sub_1D6BAB5F0(v4, type metadata accessor for FormatSlotDefinitionItemSet);
      sub_1D6BAB5F0(v8, type metadata accessor for FormatSlotDefinitionItemSet);
      return v41;
    case 0x24u:
      v42 = *v16;
      v43 = *(v16 + 1);
      v44 = *(v16 + 2);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD00000000000001CLL, 0x80000001D73E8800);
      MEMORY[0x1DA6F9910](v42, v43);

      v45 = "A block was referenced for '";
      v46 = 0xD00000000000005ALL;
LABEL_29:
      MEMORY[0x1DA6F9910](v46, v45 | 0x8000000000000000);
      v116 = MEMORY[0x1DA6F9D20](v44, MEMORY[0x1E69E6158]);
      goto LABEL_54;
    case 0x25u:
      v28 = *v16;
      v29 = *(v16 + 1);
      v31 = *(v16 + 2);
      v30 = *(v16 + 3);
      v33 = *(v16 + 4);
      v32 = *(v16 + 5);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD000000000000021, 0x80000001D73E8720);
      MEMORY[0x1DA6F9910](v28, v29);

      MEMORY[0x1DA6F9910](0xD000000000000023, 0x80000001D73E8750);
      MEMORY[0x1DA6F9910](v31, v30);

      MEMORY[0x1DA6F9910](0xD000000000000010, 0x80000001D73E8780);
      MEMORY[0x1DA6F9910](v33, v32);

      v26 = ". First seen in ";
      v27 = 0xD000000000000059;
      goto LABEL_56;
    case 0x26u:
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD0000000000000D8, 0x80000001D73E8640);
LABEL_53:
      v116 = sub_1D7262B1C();
LABEL_54:
      v185 = v116;
      v186 = v117;

      MEMORY[0x1DA6F9910](v185, v186);

      goto LABEL_58;
    case 0x27u:
      v164 = *v16;
      v163 = *(v16 + 1);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD000000000000036, 0x80000001D73E84C0);
      MEMORY[0x1DA6F9910](v164, v163);

      v26 = "to set an option from ";
      v27 = 0xD00000000000003CLL;
      goto LABEL_56;
    case 0x28u:
      v101 = *v16;
      v102 = v16[1];
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD00000000000003ELL, 0x80000001D73E8390);
      LOBYTE(v198[0]) = v102;
      sub_1D7263F9C();
      MEMORY[0x1DA6F9910](0xD00000000000001BLL, 0x80000001D73E83D0);
      LOBYTE(v198[0]) = v101;
      sub_1D7263F9C();
      goto LABEL_58;
    case 0x29u:
      return *v16;
    case 0x2Au:
      v167 = *v16;
      v168 = *(v16 + 1);
      v169 = v16[16];
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      v198[0] = v201;
      MEMORY[0x1DA6F9910](0xD000000000000055, 0x80000001D73E81E0);
      *&v201 = v167;
      *(&v201 + 1) = v168;
      LOBYTE(v202) = v169;
      sub_1D7263F9C();
      sub_1D5F7C628(v167, v168, v169);
      goto LABEL_48;
    case 0x2Bu:
      v25 = *v16;
      v24 = *(v16 + 1);
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD00000000000003ELL, 0x80000001D73E8170);
      MEMORY[0x1DA6F9910](v25, v24);

      v26 = "'s value from another option '";
      v27 = 0xD00000000000002ELL;
LABEL_56:
      v100 = v26 | 0x8000000000000000;
LABEL_57:
      MEMORY[0x1DA6F9910](v27, v100);
LABEL_58:
      result = v201;
      break;
    case 0x2Cu:
      v60 = *v16;
      v61 = *(v16 + 1);
      v62 = *(v16 + 3);
      v63 = *(v16 + 4);
      v64 = v16[40];
      v65 = v16[16];
      *&v201 = 0;
      *(&v201 + 1) = 0xE000000000000000;
      sub_1D7263D4C();
      v198[0] = v201;
      MEMORY[0x1DA6F9910](0xD000000000000015, 0x80000001D73E8120);
      *&v201 = v62;
      *(&v201 + 1) = v63;
      LOBYTE(v202) = v64;
      v66 = sub_1D6A623D4();
      v68 = v67;
      sub_1D6007850(v62, v63, v64);
      MEMORY[0x1DA6F9910](v66, v68);

      MEMORY[0x1DA6F9910](0xD00000000000002DLL, 0x80000001D73E8140);
      v69 = sub_1D69BA33C(v60, v61, v65);
      v71 = v70;
      sub_1D6007718(v60, v61, v65);
      MEMORY[0x1DA6F9910](v69, v71);

      MEMORY[0x1DA6F9910](39, 0xE100000000000000);
LABEL_48:
      result = *&v198[0];
      break;
    case 0x2Du:
      result = 0xD000000000000062;
      break;
    case 0x2Eu:
      result = 0xD000000000000016;
      break;
    case 0x2Fu:
      result = 0xD000000000000041;
      break;
    case 0x30u:
      result = 0xD000000000000053;
      break;
    case 0x31u:
      result = 0xD00000000000014ALL;
      break;
    default:
      v18 = *(v16 + 2);

      v200 = v18;
      v19 = v18;
      sub_1D5B49474(0, &qword_1EDF3C5D0);
      sub_1D5B49474(0, &qword_1EC890C50);
      if (swift_dynamicCast())
      {
        sub_1D5B7DDE8(v198, &v201);
        v20 = v203;
        v21 = v204;
        __swift_project_boxed_opaque_existential_1(&v201, v203);
        v22 = (*(v21 + 24))(v20, v21);

        __swift_destroy_boxed_opaque_existential_1(&v201);
        result = v22;
      }

      else
      {

        v199 = 0;
        memset(v198, 0, sizeof(v198));
        sub_1D6BAB5F0(v198, sub_1D6BAB650);
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t sub_1D6BAB524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatDerivedDataError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6BAB588(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6BAB5F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6BAB650()
{
  if (!qword_1EC89C7A0)
  {
    sub_1D5B49474(255, &qword_1EC890C50);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC89C7A0);
    }
  }
}

uint64_t sub_1D6BAB6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5)
{
  v16 = a5;
  v9 = a5;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D5B49474(0, &qword_1EC890C50);
  if (swift_dynamicCast())
  {
    sub_1D5B7DDE8(v14, v17);
    v10 = v18;
    v11 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v12 = (*(v11 + 16))(v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v17);
    return v12;
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_1D6BAB5F0(v14, sub_1D6BAB650);
    v17[0] = a1;
    v17[1] = a2;

    MEMORY[0x1DA6F9910](10016, 0xE200000000000000);
    MEMORY[0x1DA6F9910](a3, a4);
    MEMORY[0x1DA6F9910](39, 0xE100000000000000);
    return v17[0];
  }
}

unint64_t _s8NewsFeed14FormatHBoxNodeC4sizeAA0C4SizeOvg_0@<X0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *a1 = v3;
  return sub_1D5C82CD8(v3);
}

uint64_t _s8NewsFeed14FormatHBoxNodeC7reverseAA0C7BooleanOvg_0@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return sub_1D5E04CC4(v3);
}

uint64_t _s8NewsFeed14FormatHBoxNodeC4nameSSSgvg_0()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t _s8NewsFeed14FormatHBoxNodeC11descriptionSSSgvg_0()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t FormatHBoxNode.resize.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 72);
  a1[1] = v2;
}

uint64_t FormatHBoxNode.reversed.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 104) = a1;
  return result;
}

uint64_t FormatHBoxNode.__deallocating_deinit()
{
  FormatHBoxNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t _s8NewsFeed14FormatHBoxNodeC4nameSSSgvs_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t _s8NewsFeed14FormatHBoxNodeC11descriptionSSSgvs_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

unint64_t sub_1D6BABEF4(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 64);
  sub_1D5C82CD8(v2);
  *(v3 + 64) = v2;
  return sub_1D5C92A8C(v4);
}

unint64_t _s8NewsFeed14FormatHBoxNodeC4sizeAA0C4SizeOvs_0(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = v2;
  return sub_1D5C92A8C(v3);
}

uint64_t _s8NewsFeed14FormatHBoxNodeC11adjustmentsSayAA0C10AdjustmentOGvs_0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
}

uint64_t sub_1D6BAC124@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  v6 = *(v3 + 128);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  return sub_1D5E04CC4(v4);
}

uint64_t sub_1D6BAC178(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 112);
  v7 = *(v5 + 120);
  v8 = *(v5 + 128);
  sub_1D5E04CC4(v2);
  *(v5 + 112) = v2;
  *(v5 + 120) = v3;
  *(v5 + 128) = v4;
  return sub_1D5D2F2C4(v6, v7, v8);
}

uint64_t _s8NewsFeed14FormatHBoxNodeC7reverseAA0C7BooleanOvs_0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  swift_beginAccess();
  v5 = *(v1 + 112);
  v6 = *(v1 + 120);
  v7 = *(v1 + 128);
  *(v1 + 112) = v2;
  *(v1 + 120) = v3;
  *(v1 + 128) = v4;
  return sub_1D5D2F2C4(v5, v6, v7);
}

uint64_t _s8NewsFeed14FormatHBoxNodeC4flexAA0c7FlexBoxE4ItemVSgvg_0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[17];
  v3 = v1[18];
  v4 = v1[19];
  v5 = v1[20];
  v6 = v1[21];
  v7 = v1[22];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6);
}

uint64_t sub_1D6BAC2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10, char a11, uint64_t *a12, __int128 *a13)
{
  v19 = swift_allocObject();
  v20 = *a7;
  v26 = a8[1];
  v27 = *a8;
  v30 = a12[1];
  v31 = *a12;
  v21 = *(a12 + 16);
  v32 = *(a13 + 5);
  v33 = *(a13 + 4);
  *(v19 + 48) = 0u;
  *(v19 + 32) = 0u;
  swift_beginAccess();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  swift_beginAccess();
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;

  swift_beginAccess();
  *(v19 + 48) = a5;
  *(v19 + 56) = a6;

  swift_beginAccess();
  *(v19 + 64) = v20;
  *(v19 + 72) = v27;
  *(v19 + 80) = v26;
  swift_beginAccess();
  *(v19 + 88) = a9;
  swift_beginAccess();
  *(v19 + 96) = a10;
  swift_beginAccess();
  *(v19 + 104) = a11;
  if (v21 == 255)
  {
    v22 = a11 & 1;
  }

  else
  {
    v22 = v31;
  }

  if (v21 == 255)
  {
    v23 = 0;
  }

  else
  {
    v23 = v30;
  }

  swift_beginAccess();
  *(v19 + 112) = v22;
  *(v19 + 120) = v23;
  *(v19 + 128) = (v21 != 255) & v21;
  v24 = *a13;
  *(v19 + 152) = a13[1];
  *(v19 + 136) = v24;
  *(v19 + 168) = v33;
  *(v19 + 176) = v32;
  return v19;
}

uint64_t sub_1D6BAC4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10, char a11, uint64_t *a12, __int128 *a13)
{
  v26 = *a8;
  v27 = *a7;
  v25 = a8[1];
  v28 = a12[1];
  v29 = *a12;
  v18 = *(a12 + 16);
  v30 = *(a13 + 5);
  v31 = *(a13 + 4);
  *(v13 + 48) = 0u;
  *(v13 + 32) = 0u;
  swift_beginAccess();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  swift_beginAccess();
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;

  swift_beginAccess();
  *(v13 + 48) = a5;
  *(v13 + 56) = a6;

  swift_beginAccess();
  *(v13 + 64) = v27;
  *(v13 + 72) = v26;
  *(v13 + 80) = v25;
  swift_beginAccess();
  *(v13 + 88) = a9;
  swift_beginAccess();
  *(v13 + 96) = a10;
  swift_beginAccess();
  *(v13 + 104) = a11;
  if (v18 == 255)
  {
    v19 = a11 & 1;
  }

  else
  {
    v19 = v29;
  }

  if (v18 == 255)
  {
    v20 = 0;
  }

  else
  {
    v20 = v28;
  }

  swift_beginAccess();
  *(v13 + 112) = v19;
  *(v13 + 120) = v20;
  *(v13 + 128) = (v18 != 255) & v18;
  v21 = *a13;
  *(v13 + 152) = a13[1];
  *(v13 + 136) = v21;
  *(v13 + 168) = v31;
  *(v13 + 176) = v30;
  return v13;
}

uint64_t _s8NewsFeed14FormatHBoxNodeCfd_0()
{

  sub_1D5C92A8C(*(v0 + 64));

  sub_1D5D2F2C4(*(v0 + 112), *(v0 + 120), *(v0 + 128));
  sub_1D5EB2398(*(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168));
  return v0;
}

uint64_t sub_1D6BAC72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  sub_1D725991C();
  v12 = sub_1D6B14744(a4, a5);
  v13 = *(a2 + 96);
  v14 = *(v13 + 16);

  if (v14)
  {
    v16 = 0;
    v17 = 32;
    while (v16 < *(v13 + 16))
    {
      v18 = *(v13 + v17);
      v19 = *(v13 + v17 + 32);
      v24[1] = *(v13 + v17 + 16);
      v24[2] = v19;
      v24[0] = v18;
      v20 = *(v13 + v17 + 48);
      v21 = *(v13 + v17 + 64);
      v22 = *(v13 + v17 + 80);
      v25 = *(v13 + v17 + 96);
      v24[4] = v21;
      v24[5] = v22;
      v24[3] = v20;
      sub_1D5C5C4CC(v24, &v23);
      sub_1D6FC044C(a1, v12, a6);
      if (v6)
      {

        return sub_1D5C5C540(v24);
      }

      ++v16;
      result = sub_1D5C5C540(v24);
      v17 += 104;
      if (v14 == v16)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
  }

  return result;
}

uint64_t FormatBoxNodeResize.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static FormatBoxNodeResize.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t sub_1D6BAC8F0(uint64_t a1)
{
  result = sub_1D6BACBA8(&qword_1EC892F18, type metadata accessor for FormatHBoxNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6BAC948(void *a1)
{
  a1[1] = sub_1D6BACBA8(&qword_1EDF327C8, type metadata accessor for FormatHBoxNode);
  a1[2] = sub_1D6BACBA8(&qword_1EDF11B98, type metadata accessor for FormatHBoxNode);
  result = sub_1D6BACBA8(&qword_1EC892F20, type metadata accessor for FormatHBoxNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6BAC9F4(uint64_t a1)
{
  result = sub_1D6BACBA8(&qword_1EC892F28, type metadata accessor for FormatHBoxNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6BACA4C(uint64_t a1)
{
  result = sub_1D6BACBA8(&qword_1EC892F30, type metadata accessor for FormatVBoxNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6BACAA4(void *a1)
{
  a1[1] = sub_1D6BACBA8(&qword_1EDF32048, type metadata accessor for FormatVBoxNode);
  a1[2] = sub_1D6BACBA8(&qword_1EDF11B30, type metadata accessor for FormatVBoxNode);
  result = sub_1D6BACBA8(&qword_1EC892F38, type metadata accessor for FormatVBoxNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6BACB50(uint64_t a1)
{
  result = sub_1D6BACBA8(&qword_1EC892F40, type metadata accessor for FormatVBoxNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6BACBA8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6BACBEC(uint64_t a1)
{
  result = sub_1D6BACC14();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6BACC14()
{
  result = qword_1EC892F48;
  if (!qword_1EC892F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892F48);
  }

  return result;
}

unint64_t sub_1D6BACC68(void *a1)
{
  a1[1] = sub_1D5C73B78();
  a1[2] = sub_1D6689AF0();
  result = sub_1D6BACCA0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6BACCA0()
{
  result = qword_1EC892F50;
  if (!qword_1EC892F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892F50);
  }

  return result;
}

uint64_t keypath_get_7Tm@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t keypath_get_9Tm@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

unint64_t keypath_get_11Tm_0@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = v4;
  return sub_1D5C82CD8(v4);
}

uint64_t keypath_get_13Tm@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 88);
}

uint64_t keypath_get_17Tm@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 104);
  return result;
}

uint64_t keypath_set_18Tm(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 104) = v2;
  return result;
}

uint64_t FeedLayoutStylerFactory.styler()@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  (*(v4 + 24))(v16, v3, v4);
  sub_1D5B68374((v1 + 7), &v13);
  v5 = type metadata accessor for CoverIssueViewStyler();
  v6 = swift_allocObject();
  *(v6 + 16) = 0x4012000000000000;
  v7 = v16[1];
  *(v6 + 24) = v16[0];
  *(v6 + 40) = v7;
  *(v6 + 56) = v16[2];
  v8 = v14;
  v9 = v15;
  __swift_project_boxed_opaque_existential_1(&v13, v14);
  (*(v9 + 40))(v17, v8, v9);
  v10 = v17[0];
  *(v6 + 88) = v17[1];
  v11 = v17[3];
  *(v6 + 104) = v17[2];
  *(v6 + 120) = v11;
  *(v6 + 136) = v18;
  *(v6 + 72) = v10;
  result = sub_1D5B63F14(&v13, v6 + 144);
  a1[3] = v5;
  a1[4] = &off_1F51AA330;
  *a1 = v6;
  return result;
}

{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  (*(v4 + 24))(v16, v3, v4);
  sub_1D5B68374((v1 + 7), &v13);
  v5 = type metadata accessor for CoverChannelViewStyler();
  v6 = swift_allocObject();
  v7 = v16[1];
  *(v6 + 16) = v16[0];
  *(v6 + 32) = v7;
  *(v6 + 48) = v16[2];
  v8 = v14;
  v9 = v15;
  __swift_project_boxed_opaque_existential_1(&v13, v14);
  (*(v9 + 40))(v17, v8, v9);
  v10 = v17[3];
  *(v6 + 96) = v17[2];
  *(v6 + 112) = v10;
  *(v6 + 128) = v18;
  v11 = v17[1];
  *(v6 + 64) = v17[0];
  *(v6 + 80) = v11;
  result = sub_1D5B63F14(&v13, v6 + 136);
  a1[3] = v5;
  a1[4] = &off_1F5133BC0;
  *a1 = v6;
  return result;
}

uint64_t FeedLayoutStylerFactory.__allocating_init(fontBookProvider:colorPaletteProvider:scaleFactor:)(__int128 *a1, __int128 *a2, double a3)
{
  v6 = swift_allocObject();
  sub_1D5B63F14(a1, v6 + 16);
  sub_1D5B63F14(a2, v6 + 56);
  *(v6 + 96) = a3;
  return v6;
}

uint64_t sub_1D6BAD1B0@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  (*(v4 + 16))(&v14, v3, v4);
  sub_1D5B68374((v1 + 7), &v11);
  v5 = type metadata accessor for GapOfflineViewStyler();
  v6 = swift_allocObject();
  *(v6 + 16) = v14;
  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_1(&v11, v12);
  (*(v8 + 24))(&v10, v7, v8);
  *(v6 + 32) = v10;
  result = sub_1D5B63F14(&v11, v6 + 48);
  a1[3] = v5;
  a1[4] = &off_1F51CAA40;
  *a1 = v6;
  return result;
}

uint64_t FeedLayoutStylerFactory.init(fontBookProvider:colorPaletteProvider:scaleFactor:)(__int128 *a1, __int128 *a2, double a3)
{
  sub_1D5B63F14(a1, v3 + 16);
  sub_1D5B63F14(a2, v3 + 56);
  *(v3 + 96) = a3;
  return v3;
}

uint64_t FeedLayoutStylerFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  return v0;
}

uint64_t FeedLayoutStylerFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t SharingPuzzleActivity.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

uint64_t SharingPuzzleTypeActivity.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6BAD59C()
{
  result = qword_1EC892F58;
  if (!qword_1EC892F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892F58);
  }

  return result;
}

unint64_t sub_1D6BAD5F4()
{
  result = qword_1EC892F60;
  if (!qword_1EC892F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892F60);
  }

  return result;
}

void sub_1D6BAD648(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = objc_opt_self();
  v8 = sub_1D726203C();
  LODWORD(v7) = [v7 isPuzzleTypeIdentifier_];

  if (v7)
  {
    v9 = *(v3 + 32);
    v10 = sub_1D726203C();
    v11 = [v9 cachedPuzzleTypeForID_];

    if (v11)
    {
      goto LABEL_7;
    }

    v12 = sub_1D726203C();
    v13 = [v9 cachedPuzzleTypeForID_];
  }

  else
  {
    v14 = *(v3 + 24);
    v15 = sub_1D726203C();
    v11 = [v14 fastCachedTagForID_];

    if (v11)
    {
      goto LABEL_7;
    }

    v12 = sub_1D726203C();
    v13 = [v14 slowCachedTagForID_];
  }

  v11 = v13;

  if (!v11)
  {
    *(a3 + 144) = 0;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return;
  }

LABEL_7:
  swift_unknownObjectRetain();
  v16 = [*(v3 + 16) subscribedTagIDs];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1D726267C();

    v19 = sub_1D5B86020(v18);

    v20 = [v11 identifier];
    v21 = sub_1D726207C();
    v23 = v22;

    LOBYTE(v20) = sub_1D5BE240C(v21, v23, v19);

    *(a3 + 80) = xmmword_1D7279980;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0;
    swift_unknownObjectRelease();
    *a3 = a1;
    *(a3 + 8) = a2;
    *(a3 + 16) = v11;
    *(a3 + 24) = 0;
    *(a3 + 48) = 0;
    *(a3 + 56) = 0xE000000000000000;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    v24 = MEMORY[0x1E69E7CD0];
    *(a3 + 64) = v20 & 1;
    *(a3 + 72) = v24;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D6BAD8EC()
{

  return swift_deallocClassInstance();
}

NewsFeed::FeedGroupClusterOrderingMode_optional __swiftcall FeedGroupClusterOrderingMode.init(rawValue:)(Swift::String rawValue)
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

uint64_t FeedGroupClusterOrderingMode.rawValue.getter()
{
  v1 = 0x6C616E6F73726570;
  if (*v0 != 1)
  {
    v1 = 0x6669737265766964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C616369706F74;
  }
}

uint64_t sub_1D6BAD9FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6C616E6F73726570;
  v4 = 0xEC00000064657A69;
  if (v2 != 1)
  {
    v3 = 0x6669737265766964;
    v4 = 0xEB00000000646569;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6C616369706F74;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x6C616E6F73726570;
  v8 = 0xEC00000064657A69;
  if (*a2 != 1)
  {
    v7 = 0x6669737265766964;
    v8 = 0xEB00000000646569;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6C616369706F74;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

unint64_t sub_1D6BADB24()
{
  result = qword_1EC892F68;
  if (!qword_1EC892F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892F68);
  }

  return result;
}

uint64_t sub_1D6BADB78()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6BADC2C()
{
  sub_1D72621EC();
}

uint64_t sub_1D6BADCCC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6BADD88(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEC00000064657A69;
  v5 = 0x6C616E6F73726570;
  if (v2 != 1)
  {
    v5 = 0x6669737265766964;
    v4 = 0xEB00000000646569;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C616369706F74;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1D6BADEB8()
{
  result = qword_1EDF13550;
  if (!qword_1EDF13550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13550);
  }

  return result;
}

uint64_t sub_1D6BADF0C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v101 = a3;
  v92 = a2;
  v97 = a4;
  v5 = type metadata accessor for FormatOption();
  v87 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = (&v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5C268(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v95 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v93 = &v87 - v14;
  v98 = sub_1D725BD1C();
  v100 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98, v15);
  v96 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v99 = &v87 - v19;
  sub_1D5C2AB28(0);
  v88 = v20;
  v89 = *(v20 - 8);
  v94 = v89;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5971C();
  v25 = v24 - 8;
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1D725895C();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = &v87 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6BAFA3C(0);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v37 = &v87 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B68374((a1 + 1), v104);
  sub_1D5BD8258(v101, v37, type metadata accessor for FeedContext);
  v38 = type metadata accessor for FeedContext();
  (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
  sub_1D70E1950(v104, v37, v106);
  sub_1D725894C();
  v91 = sub_1D725893C();
  v90 = v39;
  (*(v30 + 8))(v33, v29);
  swift_storeEnumTagMultiPayload();
  sub_1D5BD8258(v23, v28, sub_1D5C2AB28);
  sub_1D5B5C0A4(0, &qword_1EDF3C600, sub_1D5C2AB28, MEMORY[0x1E69E6F90]);
  v40 = (v94[80] + 32) & ~v94[80];
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1D7273AE0;
  v42 = v23;
  v43 = a1;
  sub_1D6BAFA90(v42, v41 + v40, sub_1D5C2AB28);
  v44 = *(v25 + 44);
  v94 = v28;
  *&v28[v44] = v41;
  v45 = a1[8];
  if (*(v45 + 16) && (v46 = sub_1D5B69D90(0x6974704F64656546, 0xEE007473694C6E6FLL), (v47 & 1) != 0))
  {
    sub_1D5B68374(*(v45 + 56) + 40 * v46, v104);
  }

  else
  {
    v105 = 0;
    memset(v104, 0, sizeof(v104));
  }

  v48 = v98;
  sub_1D5B5C0A4(0, qword_1EDF38BD0, sub_1D5B7EFE8, MEMORY[0x1E69E6720]);
  if ((swift_dynamicCast() & 1) != 0 && (v49 = v102) != 0)
  {
    v50 = v103;

    sub_1D5CDE22C(v49);
  }

  else
  {
    v50 = MEMORY[0x1E69E7CC0];
  }

  v51 = *(v50 + 16);
  if (v51)
  {
    v89 = a1;
    *&v104[0] = MEMORY[0x1E69E7CC0];
    sub_1D69988B8(0, v51, 0);
    v52 = *&v104[0];
    v53 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    v88 = v50;
    v54 = v50 + v53;
    v55 = *(v87 + 72);
    do
    {
      sub_1D5BD8258(v54, v8, type metadata accessor for FormatOption);
      v56 = *v8;
      v57 = v8[1];
      v58 = v8[2];

      sub_1D5D28AA4(v8, type metadata accessor for FormatOption);
      *&v104[0] = v52;
      v60 = *(v52 + 16);
      v59 = *(v52 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_1D69988B8((v59 > 1), v60 + 1, 1);
        v52 = *&v104[0];
      }

      *(v52 + 16) = v60 + 1;
      v61 = (v52 + 24 * v60);
      v61[4] = v56;
      v61[5] = v57;
      v61[6] = v58;
      v54 += v55;
      --v51;
    }

    while (v51);

    v43 = v89;
    v48 = v98;
  }

  else
  {

    v52 = MEMORY[0x1E69E7CC0];
  }

  v62 = v43[4];
  v63 = v43[5];
  __swift_project_boxed_opaque_existential_1(v43 + 1, v62);
  v64 = (*(v63 + 80))(v62, v63);
  v65 = v101;
  v98 = sub_1D70E15E8(v64);

  MEMORY[0x1EEE9AC00](v66, v67);
  *(&v87 - 2) = v106;
  *(&v87 - 1) = v65;
  v92 = sub_1D5ECB234(sub_1D6BAFA70, (&v87 - 4), v68);
  v69 = v93;
  sub_1D725BD3C();
  v70 = v100;
  v71 = *(v100 + 48);
  v72 = v71(v69, 1, v48);
  v73 = v95;
  if (v72 == 1)
  {
    sub_1D725BCDC();
    v74 = v71(v69, 1, v48);
    v75 = v96;
    if (v74 != 1)
    {
      sub_1D5D28AA4(v69, sub_1D5B5C268);
    }
  }

  else
  {
    (*(v70 + 32))(v99, v69, v48);
    v75 = v96;
  }

  sub_1D725BD3C();
  if (v71(v73, 1, v48) == 1)
  {
    sub_1D725BCCC();
    v76 = v48;
    v77 = v75;
    if (v71(v73, 1, v48) != 1)
    {
      sub_1D5D28AA4(v73, sub_1D5B5C268);
    }
  }

  else
  {
    (*(v70 + 32))(v75, v73, v48);
    v76 = v48;
    v77 = v75;
  }

  v78 = type metadata accessor for FormatContentSubgroup();
  v79 = v97;
  v80 = v97 + v78[10];
  v81 = type metadata accessor for FormatMetadata();
  sub_1D725BD3C();
  *v80 = 0;
  *(v80 + 1) = 0;
  v82 = *(v100 + 32);
  v82(&v80[v81[5]], v99, v76);
  v82(&v80[v81[6]], v77, v76);
  v83 = MEMORY[0x1E69E7CD0];
  *&v80[v81[8]] = MEMORY[0x1E69E7CD0];
  *&v80[v81[9]] = v83;
  *&v80[v81[10]] = v83;
  *&v80[v81[11]] = v83;
  v84 = v90;
  *v79 = v91;
  v79[1] = v84;
  sub_1D6BAFA90(v94, v79 + v78[5], sub_1D5B5971C);
  *(v79 + v78[6]) = v52;
  *(v79 + v78[7]) = v98;
  v85 = MEMORY[0x1E69E7CC0];
  *(v79 + v78[9]) = MEMORY[0x1E69E7CC0];
  *(v79 + v78[8]) = v92;
  *(v79 + v78[12]) = v85;
  *(v79 + v78[11]) = v85;
  sub_1D5D28AA4(v43, type metadata accessor for GroupLayoutBindingContext);
  sub_1D6BAFAF8(v106);
  return sub_1D5D28AA4(v101, type metadata accessor for FeedContext);
}

uint64_t sub_1D6BAE998@<X0>(void *a1@<X0>, int64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v131 = a3;
  v126 = a2;
  v109 = a4;
  v134 = *MEMORY[0x1E69E9840];
  sub_1D5B5C268(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v108 = v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v130 = v105 - v10;
  v127 = sub_1D725BD1C();
  v112 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127, v11);
  v110 = v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v113 = v105 - v15;
  v16 = type metadata accessor for FormatOption();
  v111 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = (v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6BAFA3C(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v128 = v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2AB28(0);
  v24 = *(v23 - 1);
  v123 = v23;
  v124 = v24;
  v132 = v24;
  MEMORY[0x1EEE9AC00](v23, v25);
  v122 = v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5971C();
  v28 = v27 - 8;
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = v105 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1D725895C();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v34);
  v36 = v105 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1[1];
  v38 = a1[4];
  v119 = a1[3];
  v120 = v37;
  v115 = v38;
  v39 = a1[5];
  v129 = a1[6];
  v40 = a1[8];
  v125 = a1[7];
  v117 = a1[9];
  v118 = v40;
  sub_1D725894C();
  v107 = sub_1D725893C();
  v116 = v41;
  (*(v33 + 8))(v36, v32);
  v42 = v122;
  swift_storeEnumTagMultiPayload();
  sub_1D5BD8258(v42, v31, sub_1D5C2AB28);
  sub_1D5B5C0A4(0, &qword_1EDF3C600, sub_1D5C2AB28, MEMORY[0x1E69E6F90]);
  v43 = (*(v132 + 80) + 32) & ~*(v132 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1D7273AE0;
  sub_1D6BAFA90(v42, v44 + v43, sub_1D5C2AB28);
  v45 = *(v28 + 44);
  v124 = v31;
  *&v31[v45] = v44;
  v46 = *(v39 + 16);
  v114 = v39;
  if (v46)
  {
    v133 = MEMORY[0x1E69E7CC0];
    sub_1D69988B8(0, v46, 0);
    v47 = v133;
    v48 = v39 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
    v132 = v111[9];
    do
    {
      sub_1D5BD8258(v48, v19, type metadata accessor for FormatOption);
      v50 = *v19;
      v49 = v19[1];
      v51 = v19[2];

      sub_1D5D28AA4(v19, type metadata accessor for FormatOption);
      v133 = v47;
      v53 = *(v47 + 16);
      v52 = *(v47 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_1D69988B8((v52 > 1), v53 + 1, 1);
        v47 = v133;
      }

      *(v47 + 16) = v53 + 1;
      v54 = (v47 + 24 * v53);
      v54[4] = v50;
      v54[5] = v49;
      v54[6] = v51;
      v48 += v132;
      --v46;
    }

    while (v46);
  }

  else
  {
    v47 = MEMORY[0x1E69E7CC0];
  }

  v55 = v131;
  v56 = v128;
  sub_1D5BD8258(v131, v128, sub_1D6BAFA3C);
  v57 = type metadata accessor for FeedContext();
  v58 = (*(*(v57 - 8) + 48))(v56, 1, v57);
  v59 = v126;
  v60 = v127;
  v61 = v129;
  v62 = v130;
  v132 = v47;
  if (v58 == 1)
  {
    v63 = v129;
    sub_1D5D28AA4(v56, sub_1D6BAFA3C);
  }

  else
  {
    v64 = *(v56 + *(v57 + 40));

    v65 = sub_1D5D6021C(MEMORY[0x1E69E7CD0], v64);
    if (*(v65 + 16) <= *(v61 + 16) >> 3)
    {
      v133 = v61;

      sub_1D6836478(v65);

      v66 = v133;
    }

    else
    {

      v66 = sub_1D6E14F70(v65, v61);
    }

    v68 = *(v66 + 32);
    v106 = ((1 << v68) + 63) >> 6;
    v69 = 8 * v106;
    if ((v68 & 0x3Fu) > 0xD)
    {
      goto LABEL_46;
    }

    while (1)
    {
      v105[1] = v105;
      MEMORY[0x1EEE9AC00](v67, v69);
      v111 = (v105 - ((v70 + 15) & 0x3FFFFFFFFFFFFFF0));
      bzero(v111, v70);
      v71 = 0;
      v72 = 1 << *(v66 + 32);
      v73 = -1;
      if (v72 < 64)
      {
        v73 = ~(-1 << v72);
      }

      v62 = v73 & *(v66 + 56);
      v59 = (v72 + 63) >> 6;
      v122 = 0;
      v123 = "ormatGroupNodeMaskGradientLayer";
      while (v62)
      {
        v74 = __clz(__rbit64(v62));
        v62 &= v62 - 1;
LABEL_25:
        v55 = v74 | (v71 << 6);
        v60 = *(*(v66 + 48) + 16 * v55 + 8);

        if (sub_1D726230C() & 1) != 0 || (sub_1D726230C())
        {
        }

        else
        {
          v77 = sub_1D726230C();

          if ((v77 & 1) == 0)
          {
            *(v111 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55;
            if (__OFADD__(v122++, 1))
            {
              __break(1u);
LABEL_31:
              v79 = sub_1D6EC09F8(v111, v106, v122, v66);
              v59 = v126;
              v60 = v127;
              goto LABEL_32;
            }
          }
        }
      }

      v75 = v71;
      v62 = v130;
      v55 = v131;
      while (1)
      {
        v71 = v75 + 1;
        if (__OFADD__(v75, 1))
        {
          break;
        }

        if (v71 >= v59)
        {
          goto LABEL_31;
        }

        v76 = *(v66 + 56 + 8 * v71);
        ++v75;
        if (v76)
        {
          v74 = __clz(__rbit64(v76));
          v62 = (v76 - 1) & v76;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_46:
      v101 = v69;

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }

      v69 = v101;
    }

    v102 = swift_slowAlloc();
    v103 = v121;
    v104 = sub_1D70E22F0(v102, v106, v66, sub_1D70E2238);
    v121 = v103;
    if (v103)
    {

      result = MEMORY[0x1DA6FD500](v102, -1, -1);
      __break(1u);
      return result;
    }

    v79 = v104;

    MEMORY[0x1DA6FD500](v102, -1, -1);
    v55 = v131;
LABEL_32:
    sub_1D5D28AA4(v128, type metadata accessor for FeedContext);

    v63 = v79;
  }

  MEMORY[0x1EEE9AC00](v80, v81);
  v105[-2] = v55;
  v82 = v121;
  v83 = sub_1D5ECBCD0(sub_1D6BAFB4C, &v105[-4], v59);
  if (v82)
  {
    sub_1D5D28AA4(v124, sub_1D5B5971C);

    v84 = v55;
  }

  else
  {
    v130 = v83;

    sub_1D725BD3C();
    v85 = v112;
    v86 = *(v112 + 48);
    if (v86(v62, 1, v60) == 1)
    {
      sub_1D725BCDC();
      if (v86(v62, 1, v60) != 1)
      {
        sub_1D5D28AA4(v62, sub_1D5B5C268);
      }
    }

    else
    {
      (*(v85 + 32))(v113, v62, v60);
    }

    v129 = v63;
    v87 = v108;
    sub_1D725BD3C();
    if (v86(v87, 1, v60) == 1)
    {
      v88 = v110;
      sub_1D725BCCC();
      v89 = v60;
      if (v86(v87, 1, v60) != 1)
      {
        sub_1D5D28AA4(v87, sub_1D5B5C268);
      }
    }

    else
    {
      v90 = *(v85 + 32);
      v88 = v110;
      v90(v110, v87, v60);
      v89 = v60;
    }

    v91 = type metadata accessor for FormatContentSubgroup();
    v92 = v109;
    v93 = v109 + v91[10];
    v94 = type metadata accessor for FormatMetadata();
    sub_1D725BD3C();
    *v93 = 0;
    *(v93 + 1) = 0;
    v95 = *(v112 + 32);
    v95(&v93[v94[5]], v113, v89);
    v95(&v93[v94[6]], v88, v89);
    v96 = MEMORY[0x1E69E7CD0];
    *&v93[v94[8]] = MEMORY[0x1E69E7CD0];
    *&v93[v94[9]] = v96;
    *&v93[v94[10]] = v96;
    *&v93[v94[11]] = v96;
    v97 = v116;
    *v92 = v107;
    v92[1] = v97;
    sub_1D6BAFA90(v124, v92 + v91[5], sub_1D5B5971C);
    v84 = v131;
    *(v92 + v91[6]) = v132;
    v98 = v130;
    *(v92 + v91[7]) = v129;
    v99 = MEMORY[0x1E69E7CC0];
    *(v92 + v91[9]) = MEMORY[0x1E69E7CC0];
    *(v92 + v91[8]) = v98;
    *(v92 + v91[12]) = v99;
    *(v92 + v91[11]) = v99;
  }

  return sub_1D5D28AA4(v84, sub_1D6BAFA3C);
}