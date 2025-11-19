void sub_1C45FAC9C(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1 + 32;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = (MEMORY[0x1E69E7CC0] + 32);
  while (1)
  {
    while (v3)
    {
      v9 = *(v3 + 16);
      if (v2 == v9)
      {
        break;
      }

      if (v2 >= v9)
      {
        goto LABEL_31;
      }

      v12 = (v3 + 40 * v2);
      v13 = v12[5];
      v14 = v12[6];
      v15 = v12[7];
      v35 = v14;
      v36 = v12[4];
      v16 = v12[8];
      v38 = v16;
      v39 = v13;
      v37 = v15;
      if (v4)
      {
        v17 = v16;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v18 = v17;
        v19 = v7;
      }

      else
      {
        v20 = v7[3];
        sub_1C4431F7C();
        if (v21)
        {
          goto LABEL_34;
        }

        sub_1C4412CD0();
        if (v21 ^ v24 | v23)
        {
          v25 = 1;
        }

        else
        {
          v25 = v22;
        }

        sub_1C456902C(&qword_1EC0B9D08, &qword_1C4F11670);
        v19 = swift_allocObject();
        v26 = (j__malloc_size(v19) - 32) / 40;
        v19[2] = v25;
        v19[3] = 2 * v26;
        v27 = v19 + 4;
        v28 = v7[3] >> 1;
        v8 = &v19[5 * v28 + 4];
        v4 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v28;
        if (v7[2])
        {
          if (v19 != v7 || v27 >= &v7[5 * v28 + 4])
          {
            memmove(v27, v7 + 4, 40 * v28);
          }

          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v30 = v38;
          v7[2] = 0;
        }

        else
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v31 = v38;
        }
      }

      v24 = __OFSUB__(v4--, 1);
      if (v24)
      {
        goto LABEL_32;
      }

      ++v2;
      *v8 = v36;
      v8[1] = v39;
      v8[2] = v35;
      v8[3] = v37;
      v8[4] = v38;
      v8 += 5;
      v7 = v19;
    }

    v10 = *(a1 + 16);
    if (v5 == v10)
    {
      break;
    }

    if (v5 >= v10)
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v11 = *(v6 + 8 * v5);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v2 = 0;
    v3 = v11;
    ++v5;
  }

  v32 = v7[3];
  if (v32 < 2)
  {
    return;
  }

  v33 = v32 >> 1;
  v24 = __OFSUB__(v33, v4);
  v34 = v33 - v4;
  if (!v24)
  {
    v7[2] = v34;
    return;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_1C45FAED4(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1 + 32;
  v7 = MEMORY[0x1E69E7CC0];
  for (i = MEMORY[0x1E69E7CC0] + 32; v3; i += 48)
  {
LABEL_3:
    v9 = *(v3 + 16);
    if (v2 == v9)
    {
      break;
    }

    if (v2 >= v9)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v13 = v3 + 48 * v2;
    v33 = *(v13 + 48);
    v34 = *(v13 + 40);
    v31 = *(v13 + 64);
    v32 = *(v13 + 56);
    v30 = *(v13 + 72);
    if (v4)
    {
      v14 = *(v13 + 32);
      sub_1C45D7F78(v14, *(v13 + 40), *(v13 + 48), *(v13 + 56), *(v13 + 64), *(v13 + 72));
      v15 = v7;
      goto LABEL_27;
    }

    v16 = v7[3];
    sub_1C4431F7C();
    if (v18)
    {
      goto LABEL_37;
    }

    v14 = v17;
    sub_1C4412CD0();
    if (v18 ^ v21 | v20)
    {
      v22 = 1;
    }

    else
    {
      v22 = v19;
    }

    sub_1C456902C(&qword_1EC0B88D8, &qword_1C4F139F0);
    v15 = swift_allocObject();
    v23 = (j__malloc_size(v15) - 32) / 48;
    v15[2] = v22;
    v15[3] = 2 * v23;
    v24 = v7[3];
    v4 = (v23 & 0x7FFFFFFFFFFFFFFFLL) - (v24 >> 1);
    i = &v15[6 * (v24 >> 1) + 4];
    if (v7[2])
    {
      v29 = 48 * (v24 >> 1);
      if (v15 >= v7 && v15 + 4 < &v7[6 * (v24 >> 1) + 4])
      {
        sub_1C45D7F78(v14, v34, v33, v32, v31, v30);
        if (v15 != v7)
        {
LABEL_24:
          memmove(v15 + 4, v7 + 4, v29);
        }

        v7[2] = 0;
        goto LABEL_26;
      }

      sub_1C45D7F78(v14, v34, v33, v32, v31, v30);
      goto LABEL_24;
    }

    sub_1C45D7F78(v14, v34, v33, v32, v31, v30);
LABEL_26:

LABEL_27:
    v21 = __OFSUB__(v4--, 1);
    if (v21)
    {
      goto LABEL_35;
    }

    ++v2;
    *i = v14;
    *(i + 8) = v34;
    *(i + 16) = v33;
    *(i + 24) = v32;
    *(i + 32) = v31;
    *(i + 40) = v30;
    v7 = v15;
  }

  while (1)
  {
    v10 = *(a1 + 16);
    if (v5 == v10)
    {
      break;
    }

    if (v5 >= v10)
    {
      __break(1u);
      goto LABEL_34;
    }

    v11 = v5 + 1;
    v12 = *(v6 + 8 * v5);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v2 = 0;
    v3 = v12;
    v5 = v11;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v26 = v7[3];
  if (v26 < 2)
  {
    return;
  }

  v27 = v26 >> 1;
  v21 = __OFSUB__(v27, v4);
  v28 = v27 - v4;
  if (!v21)
  {
    v7[2] = v28;
    return;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_1C45FB124(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = sub_1C4428DA0(a1);
  v5 = 0;
  v6 = v3 & 0xC000000000000001;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = (MEMORY[0x1E69E7CC0] + 32);
  v9 = v3 & 0xFFFFFFFFFFFFFF8;
  v28 = v3 & 0xFFFFFFFFFFFFFF8;
  v29 = v3;
  while (v4 != a2)
  {
    if (v6)
    {
      v10 = MEMORY[0x1C6940F90](a2, v3);
    }

    else
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (a2 >= *(v9 + 16))
      {
        goto LABEL_31;
      }

      v10 = *(v3 + 8 * a2 + 32);
    }

    if (__OFADD__(a2, 1))
    {
      goto LABEL_30;
    }

    if (!v5)
    {
      v11 = v7[3];
      sub_1C4431F7C();
      if (v12)
      {
        goto LABEL_33;
      }

      v13 = v4;
      v14 = v6;
      sub_1C4412CD0();
      if (v12 ^ v17 | v16)
      {
        v18 = 1;
      }

      else
      {
        v18 = v15;
      }

      sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
      v19 = sub_1C44182F4();
      v20 = (j__malloc_size(v19) - 32) / 8;
      v19[2] = v18;
      v19[3] = (2 * v20) | 1;
      v21 = (v19 + 4);
      v22 = v7[3];
      v23 = v22 >> 1;
      if (v7[2])
      {
        if (v19 != v7 || v21 >= &v7[v23 + 4])
        {
          memmove(v19 + 4, v7 + 4, 8 * v23);
        }

        v7[2] = 0;
      }

      v8 = (v21 + 8 * v23);
      v5 = (v20 & 0x7FFFFFFFFFFFFFFFLL) - (v22 >> 1);

      v7 = v19;
      v6 = v14;
      v4 = v13;
      v9 = v28;
      v3 = v29;
    }

    v17 = __OFSUB__(v5--, 1);
    if (v17)
    {
      goto LABEL_32;
    }

    *v8++ = v10;
    ++a2;
  }

  v25 = v7[3];
  if (v25 < 2)
  {
    return;
  }

  v26 = v25 >> 1;
  v17 = __OFSUB__(v26, v5);
  v27 = v26 - v5;
  if (!v17)
  {
    v7[2] = v27;
    return;
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_1C45FB2DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BehaviorDigestTaskIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C45FB340()
{
  v1 = sub_1C4403FC0();
  v3 = v2(v1);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1C45FB3A0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C45FB3E0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1C45FB444()
{
  result = qword_1EC0B9D18;
  if (!qword_1EC0B9D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9D18);
  }

  return result;
}

uint64_t sub_1C45FB4A8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C45FB4E8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

id sub_1C45FB538()
{
  v0 = sub_1C4EF98F8();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HashGenerator();
  swift_allocObject();
  sub_1C4886F04();
  sub_1C4461BB8(0, &qword_1EDDFE8E8, 0x1E696AAE8);
  v8 = sub_1C45FBEF0();
  if (!v8)
  {
    goto LABEL_7;
  }

  sub_1C45FC9DC(0xD000000000000016, 0x80000001C4F8D760, 1701409396, 0xE400000000000000, v8);
  if (!v9)
  {
    goto LABEL_7;
  }

  sub_1C45FC9DC(0xD00000000000001DLL, 0x80000001C4F8D780, 0x7473696C70, 0xE500000000000000, v8);
  if (!v10)
  {

LABEL_7:
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406728();
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDE2DDE0);
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CD8();
    if (os_log_type_enabled(v14, v15))
    {
      *swift_slowAlloc() = 0;
      sub_1C4410910(&dword_1C43F8000, v16, v17, "Unable to get path of resources in IntelligencePlatformCore");
      sub_1C43FBE2C();
    }

    goto LABEL_11;
  }

  sub_1C4461BB8(0, &qword_1EC0B9D30, off_1E81EC588);
  v11 = sub_1C45FBF54();
  if (!v11)
  {

    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406728();
    }

    v19 = sub_1C4F00978();
    sub_1C442B738(v19, qword_1EDE2DDE0);
    v14 = sub_1C4F00968();
    v20 = sub_1C4F01CE8();
    if (os_log_type_enabled(v14, v20))
    {
      *swift_slowAlloc() = 0;
      sub_1C4410910(&dword_1C43F8000, v21, v22, "Unable to create bundle ID trie for filtering");
      sub_1C43FBE2C();

      return 0;
    }

LABEL_11:

    return 0;
  }

  v12 = v11;
  sub_1C4EF9838();

  v23 = sub_1C4EF9938();
  v25 = v24;
  (*(v3 + 8))(v7, v0);
  v26 = sub_1C4EF96B8();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  sub_1C4EF96A8();
  sub_1C45FCA98();
  sub_1C4EF9698();

  sub_1C4434000(v23, v25);

  return v12;
}

BOOL sub_1C45FBA6C(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, void *a6)
{
  v11 = sub_1C4F01108();
  LODWORD(a4) = [a4 payloadForString_];

  v12 = a4 != 0;
  if (a4 && (a3 & 1) != 0)
  {
    return !sub_1C4499AD0(a1, a2, a6);
  }

  return v12;
}

uint64_t sub_1C45FBAF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001C4F8D7A0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001C4F8D7C0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

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

unint64_t sub_1C45FBBCC(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1C45FBC00(uint64_t *a1)
{
  v2 = sub_1C456902C(&qword_1EC0B9D40, &qword_1C4F11B48);
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C45FCB0C();
  sub_1C4F02BC8();
  sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
  v14 = 0;
  sub_1C45A2840();
  sub_1C440676C();
  v12 = v15;
  v14 = 1;
  sub_1C440676C();
  (*(v5 + 8))(v9, v2);
  sub_1C440962C(a1);
  return v12;
}

uint64_t sub_1C45FBDBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C45FBAF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C45FBDE4(uint64_t a1)
{
  v2 = sub_1C45FCB0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C45FBE20(uint64_t a1)
{
  v2 = sub_1C45FCB0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C45FBE5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C45FBC00(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

double sub_1C45FBE94@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[1];
  v7[2] = *v1;
  v8[0] = v3;
  *(v8 + 9) = *(v1 + 25);
  sub_1C45FBE88(&v6);
  v4 = v7[0];
  *a1 = v6;
  a1[1] = v4;
  result = *(v7 + 9);
  *(a1 + 25) = *(v7 + 9);
  return result;
}

id sub_1C45FBEF0()
{
  v0 = sub_1C4F01108();

  v1 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  return v1;
}

id sub_1C45FBF54()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1C4F01108();

  v2 = [v0 initWithPath_];

  return v2;
}

void sub_1C45FBFC8(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, void *a4@<X3>, void *a5@<X5>, void *a6@<X6>, void *a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v115 = a7;
  v116 = a8;
  v108 = a6;
  v109 = a5;
  v113 = a11;
  v114 = a10;
  v16 = *a1;
  v15 = *(a1 + 8);
  v17 = *(a1 + 24);
  v111 = *(a1 + 16);
  v112 = v15;
  v110 = v17;
  v117 = *(a1 + 32);
  v118 = a9;
  v18 = *(a1 + 40);
  v19 = sub_1C4EFDAB8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v28 = &v107 - v27;
  switch(v18)
  {
    case 0:
      v29 = a2 & 1;
      v30 = v112;
      if (sub_1C45FBA6C(v16, v112, v29, a4, v26, v109))
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        LOBYTE(v18) = 0;
        v32 = v115;
        v31 = v116;
        goto LABEL_81;
      }

      v76 = sub_1C4EF9CD8();
      sub_1C440BAA8(v28, 1, 1, v76);
      v77 = sub_1C4886564(v16, v30, v28);
      v79 = v78;
      sub_1C44686E4(v28);
      v38 = 0;
      v117 = 0;
      LOBYTE(v18) = 0;
      if (v79)
      {
        v16 = v77;
      }

      else
      {
        v16 = 0;
      }

      v37 = 0;
      if (v79)
      {
        v30 = v79;
      }

      else
      {
        v30 = 0xE000000000000000;
      }

      goto LABEL_104;
    case 1:
      v37 = v110;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v43 = a2 & 1;
      v30 = v112;
      if (sub_1C45FBA6C(v16, v112, v43, a4, v44, v109))
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        LOBYTE(v18) = 1;
        goto LABEL_22;
      }

      v80 = v37;
      v81 = v111;
      if (!sub_1C4499AD0(v111, v80, v108))
      {
        v82 = sub_1C4EF9CD8();
        sub_1C440BAA8(v28, 1, 1, v82);
        v83 = sub_1C4886564(v81, v80, v28);
        v85 = v84;
        sub_1C44686E4(v28);

        if (v85)
        {
          v86 = v83;
        }

        else
        {
          v86 = 0;
        }

        v87 = 0xE000000000000000;
        if (v85)
        {
          v87 = v85;
        }

        v110 = v87;
        v111 = v86;
        v30 = v112;
      }

      v32 = v115;
      v31 = v116;
      v88 = sub_1C4EF9CD8();
      LOBYTE(v18) = 1;
      sub_1C440BAA8(v28, 1, 1, v88);
      v16 = sub_1C4886564(v16, v30, v28);
      v90 = v89;
      sub_1C44686E4(v28);
      v117 = 0;
      if (v90)
      {
        v30 = v90;
      }

      else
      {
        v16 = 0;
        v30 = 0xE000000000000000;
      }

LABEL_81:
      v37 = v110;
      v38 = v111;
      break;
    case 4:
      v33 = sub_1C4EF9CD8();
      sub_1C440BAA8(v28, 1, 1, v33);
      v34 = sub_1C4886564(v16, v112, v28);
      v36 = v35;
      sub_1C44686E4(v28);
      v117 = 0;
      if (v36)
      {
        v16 = v34;
      }

      else
      {
        v16 = 0;
      }

      v37 = 0;
      if (v36)
      {
        v30 = v36;
      }

      else
      {
        v30 = 0xE000000000000000;
      }

      v38 = v111 & 0x1FFFFFFFFLL;
      LOBYTE(v18) = 4;
      goto LABEL_104;
    case 7:
      v51 = sub_1C4EF9CD8();
      sub_1C440BAA8(v28, 1, 1, v51);
      v52 = sub_1C4886564(v16, v112, v28);
      v54 = v53;
      sub_1C44686E4(v28);
      v117 = 0;
      if (v54)
      {
        v16 = v52;
      }

      else
      {
        v16 = 0;
      }

      v37 = 0;
      if (v54)
      {
        v30 = v54;
      }

      else
      {
        v30 = 0xE000000000000000;
      }

      v38 = v111 & 1;
      LOBYTE(v18) = 7;
      goto LABEL_104;
    case 9:
      v55 = sub_1C4EF9CD8();
      sub_1C440BAA8(v28, 1, 1, v55);
      v56 = sub_1C4886564(v16, v112, v28);
      v58 = v57;
      sub_1C44686E4(v28);
      v117 = 0;
      if (v58)
      {
        v16 = v56;
      }

      else
      {
        v16 = 0;
      }

      v37 = 0;
      if (v58)
      {
        v30 = v58;
      }

      else
      {
        v30 = 0xE000000000000000;
      }

      v38 = v111 & 1;
      LOBYTE(v18) = 9;
      goto LABEL_104;
    case 10:
      v39 = sub_1C4EF9CD8();
      sub_1C440BAA8(v28, 1, 1, v39);
      v40 = sub_1C4886564(v16, v112, v28);
      v42 = v41;
      sub_1C44686E4(v28);
      v117 = 0;
      if (v42)
      {
        v16 = v40;
      }

      else
      {
        v16 = 0;
      }

      v37 = 0;
      if (v42)
      {
        v30 = v42;
      }

      else
      {
        v30 = 0xE000000000000000;
      }

      v38 = v111 & 1;
      LOBYTE(v18) = 10;
      goto LABEL_104;
    case 12:
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v45 = a2 & 1;
      v30 = v112;
      if (!sub_1C45FBA6C(v16, v112, v45, a4, v46, v109))
      {
        v91 = sub_1C4EF9CD8();
        sub_1C440BAA8(v28, 1, 1, v91);
        v92 = sub_1C4886564(v16, v30, v28);
        v94 = v93;
        sub_1C44686E4(v28);
        if (v94)
        {
          v16 = v92;
        }

        else
        {
          v16 = 0;
        }

        if (!v94)
        {
          v94 = 0xE000000000000000;
        }

        sub_1C440BAA8(v28, 1, 1, v91);
        v95 = sub_1C4886564(v111, v110, v28);
        v97 = v96;
        sub_1C44686E4(v28);
        if (v97)
        {
          v38 = v95;
        }

        else
        {
          v38 = 0;
        }

        if (v97)
        {
          v37 = v97;
        }

        else
        {
          v37 = 0xE000000000000000;
        }

        v30 = v94;
        LOBYTE(v18) = 12;
        goto LABEL_104;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v37 = v110;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      LOBYTE(v18) = 12;
LABEL_22:
      v32 = v115;
      v31 = v116;
      v38 = v111;
      break;
    case 13:
      v47 = sub_1C4EF9CD8();
      sub_1C440BAA8(v28, 1, 1, v47);
      v48 = sub_1C4886564(v16, v112, v28);
      v50 = v49;
      sub_1C44686E4(v28);
      v38 = 0;
      v117 = 0;
      if (v50)
      {
        v16 = v48;
      }

      else
      {
        v16 = 0;
      }

      v37 = 0;
      if (v50)
      {
        v30 = v50;
      }

      else
      {
        v30 = 0xE000000000000000;
      }

      LOBYTE(v18) = 13;
      goto LABEL_104;
    case 14:
      v37 = v112;
      if (v112)
      {
        v72 = sub_1C4EF9CD8();
        sub_1C440BAA8(v28, 1, 1, v72);
        v73 = sub_1C4886564(v16, v37, v28);
        v75 = v74;
        sub_1C44686E4(v28);
        v117 = 0;
        if (v75)
        {
          v16 = v73;
        }

        else
        {
          v16 = 0;
        }

        v37 = 0;
        if (v75)
        {
          v30 = v75;
        }

        else
        {
          v30 = 0xE000000000000000;
        }

        v38 = v111 & 0x1FFFFFFFFLL;
        LOBYTE(v18) = 14;
LABEL_104:
        v32 = v115;
        v31 = v116;
      }

      else
      {
        v30 = 0;
        v117 = 0;
        v38 = v111 & 0x1FFFFFFFFLL;
        LOBYTE(v18) = 14;
        v32 = v115;
        v31 = v116;
      }

      break;
    case 15:
      if (a3)
      {
        v59 = *(v16 + 16);
        if (v59)
        {
          v119 = MEMORY[0x1E69E7CC0];
          sub_1C44CD9C0();
          v60 = (v16 + 40);
          v16 = v119;
          do
          {
            v61 = *v60;
            v120 = *(v60 - 1);
            v121 = v61;
            swift_bridgeObjectRetain_n();
            v62 = sub_1C4F01438();
            v64 = v63;
            v65 = sub_1C4EF9CD8();
            sub_1C440BAA8(v28, 1, 1, v65);
            v66 = sub_1C4886564(v62, v64, v28);
            v68 = v67;
            sub_1C44686E4(v28);

            if (v68)
            {
              v69 = v66;
            }

            else
            {
              v69 = 0;
            }

            if (!v68)
            {
              v68 = 0xE000000000000000;
            }

            v119 = v16;
            v70 = *(v16 + 16);
            if (v70 >= *(v16 + 24) >> 1)
            {
              sub_1C44CD9C0();
              v16 = v119;
            }

            *(v16 + 16) = v70 + 1;
            v71 = v16 + 16 * v70;
            *(v71 + 32) = v69;
            *(v71 + 40) = v68;
            v60 += 2;
            --v59;
          }

          while (v59);
        }

        else
        {
          v16 = MEMORY[0x1E69E7CC0];
        }

        v30 = 0;
        v38 = 0;
        v37 = 0;
        v117 = 0;
        LOBYTE(v18) = 15;
      }

      else
      {
        (*(v20 + 104))(v23, *MEMORY[0x1E69A9420], v19);
        v98 = sub_1C45D2400();
        v100 = v99;
        v101 = sub_1C4EF9CD8();
        sub_1C440BAA8(v28, 1, 1, v101);
        v102 = sub_1C4886564(v98, v100, v28);
        v104 = v103;
        sub_1C44686E4(v28);

        if (v104)
        {
          v105 = v102;
        }

        else
        {
          v105 = 0;
        }

        if (v104)
        {
          v106 = v104;
        }

        else
        {
          v106 = 0xE000000000000000;
        }

        sub_1C45D29E0(v23, v105, v106, &v120);
        v16 = v120;
        v30 = v121;
        v38 = v122;
        v37 = v123;
        v117 = v124;
        LOBYTE(v18) = v125;
      }

      goto LABEL_104;
    default:
      sub_1C45A2358(a1, &v120);
      v32 = v115;
      v31 = v116;
      v38 = v111;
      v30 = v112;
      v37 = v110;
      break;
  }

  *v31 = v16;
  *(v31 + 8) = v30;
  *(v31 + 16) = v38;
  *(v31 + 24) = v37;
  *(v31 + 32) = v117;
  *(v31 + 40) = v18;
}

double sub_1C45FC8DC@<D0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, void *a7@<X6>, _OWORD *a8@<X8>)
{
  v15 = a4;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C45FBFC8(a1, a2, a3, v15, a6, a7, v15, &v18, a5, a6, a7);
  v16 = v19[0];
  *a8 = v18;
  a8[1] = v16;
  result = *(v19 + 9);
  *(a8 + 25) = *(v19 + 9);
  return result;
}

double sub_1C45FC994@<D0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  sub_1C45FC8DC(a1, a2, a3, *v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), &v8);
  v6 = v9[0];
  *a4 = v8;
  a4[1] = v6;
  result = *(v9 + 9);
  *(a4 + 25) = *(v9 + 9);
  return result;
}

uint64_t sub_1C45FC9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1C4F01108();

  v7 = sub_1C4F01108();

  v8 = [a5 pathForResource:v6 ofType:v7];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_1C4F01138();

  return v9;
}

unint64_t sub_1C45FCA98()
{
  result = qword_1EC0B9D38;
  if (!qword_1EC0B9D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9D38);
  }

  return result;
}

unint64_t sub_1C45FCB0C()
{
  result = qword_1EC0B9D48;
  if (!qword_1EC0B9D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9D48);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BehaviorPostProcessingSettings.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C45FCC40()
{
  result = qword_1EC0B9D50;
  if (!qword_1EC0B9D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9D50);
  }

  return result;
}

unint64_t sub_1C45FCC98()
{
  result = qword_1EC0B9D58;
  if (!qword_1EC0B9D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9D58);
  }

  return result;
}

unint64_t sub_1C45FCCF0()
{
  result = qword_1EC0B9D60;
  if (!qword_1EC0B9D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9D60);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for PoiCategoryContent(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1C45FCD58(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C45FCD78(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1C45FCDA8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C45FCDC4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

_BYTE *sub_1C45FCDF0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

void sub_1C45FCEC8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v29 = MEMORY[0x1E69E7CC0];
    v28 = *(a1 + 16);
    sub_1C44CD9C0();
    v4 = sub_1C486C288(a1);
    v5 = v28;
    v6 = 0;
    v7 = a1 + 56;
    if ((v4 & 0x8000000000000000) == 0)
    {
      while (v4 < 1 << *(a1 + 32))
      {
        v8 = v4 >> 6;
        if ((*(v7 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
        {
          goto LABEL_38;
        }

        if (*(a1 + 36) != v2)
        {
          goto LABEL_39;
        }

        ++v6;
        v9 = v4 & 0x3F;
        v10 = 0xE900000000000079;
        v11 = 0x6144664F656D6974;
        switch(*(*(a1 + 48) + v4))
        {
          case 1:
            v11 = 0x6144664F74726170;
            break;
          case 2:
            v11 = 0x6954657372616F63;
            v10 = 0xEF796144664F656DLL;
            break;
          case 3:
            v10 = 0xE90000000000006BLL;
            v11 = 0x656557664F796164;
            break;
          case 4:
            v10 = 0xEA00000000006B65;
            v11 = 0x6557664F74726170;
            break;
          case 5:
            v10 = 0xE300000000000000;
            v11 = 6909804;
            break;
          case 6:
            v11 = 0x636F4C6F7263696DLL;
            v12 = 0x6E6F697461;
            goto LABEL_19;
          case 7:
            v11 = 0x6369666963657073;
            v10 = 0xEF687361486F6547;
            break;
          case 8:
            v11 = 0x6547657372616F63;
            v12 = 0x687361486FLL;
LABEL_19:
            v10 = v12 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 9:
            v11 = 0x6F6547656772616CLL;
            v10 = 0xEC00000068736148;
            break;
          case 0xA:
            v10 = 0xE400000000000000;
            v11 = 1768319351;
            break;
          case 0xB:
            v10 = 0xE900000000000065;
            v11 = 0x646F4D7375636F66;
            break;
          case 0xC:
            v11 = 0x74536E6F69746F6DLL;
            v10 = 0xEB00000000657461;
            break;
          default:
            break;
        }

        v13 = *(v29 + 16);
        if (v13 >= *(v29 + 24) >> 1)
        {
          v26 = v2;
          v27 = v6;
          v25 = v3;
          sub_1C44CD9C0();
          v9 = v4 & 0x3F;
          v3 = v25;
          v2 = v26;
          v6 = v27;
          v7 = a1 + 56;
          v5 = v28;
        }

        *(v29 + 16) = v13 + 1;
        v14 = v29 + 16 * v13;
        *(v14 + 32) = v11;
        *(v14 + 40) = v10;
        if (v3)
        {
          goto LABEL_43;
        }

        v15 = 1 << *(a1 + 32);
        if (v4 >= v15)
        {
          goto LABEL_40;
        }

        v16 = *(v7 + 8 * v8);
        if ((v16 & (1 << v4)) == 0)
        {
          goto LABEL_41;
        }

        if (*(a1 + 36) != v2)
        {
          goto LABEL_42;
        }

        v17 = v16 & (-2 << v9);
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v4 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v8 << 6;
          v19 = v8 + 1;
          v20 = (a1 + 64 + 8 * v8);
          while (v19 < (v15 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              v23 = v6;
              sub_1C440951C(v4, v2, 0);
              v7 = a1 + 56;
              v5 = v28;
              v6 = v23;
              v15 = __clz(__rbit64(v21)) + v18;
              goto LABEL_33;
            }
          }

          v24 = v6;
          sub_1C440951C(v4, v2, 0);
          v7 = a1 + 56;
          v5 = v28;
          v6 = v24;
        }

LABEL_33:
        if (v6 == v5)
        {
          return;
        }

        v3 = 0;
        v2 = *(a1 + 36);
        v4 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }
}

uint64_t sub_1C45FD2E4()
{
  sub_1C4D50A90(&unk_1F43D2940);
  v1 = v0;
  v2 = 0;
  *v268 = xmmword_1C4F0D130;
  do
  {
    v3 = *(&unk_1F43D2910 + v2 + 32);
    sub_1C440BB58();
    MEMORY[0x1C69417F0](11);
    v4 = sub_1C46001A8(v3);
    v6 = v5;
    sub_1C44364A0(v4, v5, v7, v8, v9, v10, v11, v12, v250, v2, v268[0], v268[1], v284, v293, v302, __src);
    sub_1C4F01298();

    v13 = sub_1C4F02B68();
    v14 = -1 << *(v1 + 32);
    v15 = v13 & ~v14;
    if (((*(v1 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
LABEL_39:
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C4402C7C();
      sub_1C4844AB4(v3, 0, v15);
      v1 = __src;
      goto LABEL_40;
    }

    v16 = ~v14;
    while (1)
    {
      v17 = (*(v1 + 48) + 16 * v15);
      if (!v17[8])
      {
        break;
      }

LABEL_38:
      v15 = (v15 + 1) & v16;
      if (((*(v1 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    v18 = 0xE900000000000079;
    v19 = 0x6144664F656D6974;
    switch(*v17)
    {
      case 1:
        v19 = sub_1C43FBFBC() & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
        break;
      case 2:
        v19 = sub_1C440679C();
        break;
      case 3:
        sub_1C44040F0();
        v18 = v21 - 14;
        v19 = sub_1C441C7F8();
        break;
      case 4:
        v19 = sub_1C4431F88();
        break;
      case 5:
        v19 = sub_1C440215C();
        break;
      case 6:
        v19 = sub_1C440D0A4();
        goto LABEL_18;
      case 7:
        v19 = sub_1C43FEBC8();
        break;
      case 8:
        v19 = sub_1C441F4F8();
LABEL_18:
        v18 = 0xED00000000000079;
        break;
      case 9:
        v19 = sub_1C43FFDEC();
        break;
      case 0xA:
        v19 = sub_1C4415F60();
        break;
      case 0xB:
        sub_1C44040F0();
        v18 = v20 - 20;
        v19 = sub_1C443313C();
        break;
      case 0xC:
        v19 = sub_1C440584C();
        break;
      default:
        break;
    }

    v22 = 0x6144664F656D6974;
    v23 = 0xE900000000000079;
    switch(v3)
    {
      case 1:
        sub_1C440F310();
        v22 = v24 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
        break;
      case 2:
        sub_1C440DEDC();
        v22 = v27 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
        v23 = 0xEF796144664F656DLL;
        break;
      case 3:
        sub_1C44040F0();
        v23 = v28 - 14;
        sub_1C4409A64();
        break;
      case 4:
        sub_1C440F310();
        v22 = v26 & 0xFFFFFFFFFFFFLL | 0x6557000000000000;
        v23 = 0xEA00000000006B65;
        break;
      case 5:
        v23 = 0xE300000000000000;
        v22 = 6909804;
        break;
      case 6:
        sub_1C4404BF8();
        v29 = 0x6E6F697461;
        goto LABEL_32;
      case 7:
        sub_1C44148EC();
        v23 = 0xEF687361486F6547;
        break;
      case 8:
        sub_1C440DEDC();
        v22 = v30 & 0xFFFFFFFFFFFFLL | 0x6547000000000000;
        v29 = 0x687361486FLL;
LABEL_32:
        v23 = v29 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        break;
      case 9:
        sub_1C4413E94();
        v23 = 0xEC00000068736148;
        break;
      case 10:
        v23 = 0xE400000000000000;
        v22 = 1768319351;
        break;
      case 11:
        sub_1C44040F0();
        v23 = v25 - 20;
        sub_1C4423A90();
        break;
      case 12:
        sub_1C440EF3C();
        v23 = 0xEB00000000657461;
        break;
      default:
        break;
    }

    v31 = v19 == v22 && v18 == v23;
    if (!v31)
    {
      v32 = sub_1C4F02938();

      if (v32)
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    }

LABEL_40:
    sub_1C440BB58();
    v33 = MEMORY[0x1C69417F0](12);
    sub_1C44364A0(v33, v34, v35, v36, v37, v38, v39, v40, v251, v259, v269, v277, v285, v294, v302, __src);
    sub_1C4F01298();

    sub_1C4F02B68();
    sub_1C440CAC8();
    sub_1C4434E04();
    if (((*(v1 + 56 + v42) >> v6) & 1) == 0)
    {
LABEL_77:
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C4402C7C();
      sub_1C4844AB4(v3, 1, v6);
      v1 = __src;
      goto LABEL_78;
    }

    v43 = ~v41;
    while (2)
    {
      v44 = (*(v1 + 48) + 16 * v6);
      if (v44[8] != 1)
      {
LABEL_76:
        v6 = (v6 + 1) & v43;
        sub_1C444FC38();
        if (((*(v1 + 56 + v60) >> v6) & 1) == 0)
        {
          goto LABEL_77;
        }

        continue;
      }

      break;
    }

    v45 = 0xE900000000000079;
    v46 = 0x6144664F656D6974;
    switch(*v44)
    {
      case 1:
        v46 = sub_1C43FBFBC() & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
        break;
      case 2:
        v46 = sub_1C440679C();
        break;
      case 3:
        sub_1C44040F0();
        v45 = v48 - 14;
        v46 = sub_1C441C7F8();
        break;
      case 4:
        v46 = sub_1C4431F88();
        break;
      case 5:
        v46 = sub_1C440215C();
        break;
      case 6:
        v46 = sub_1C440D0A4();
        goto LABEL_56;
      case 7:
        v46 = sub_1C43FEBC8();
        break;
      case 8:
        v46 = sub_1C441F4F8();
LABEL_56:
        v45 = 0xED00000000000079;
        break;
      case 9:
        v46 = sub_1C43FFDEC();
        break;
      case 0xA:
        v46 = sub_1C4415F60();
        break;
      case 0xB:
        sub_1C44040F0();
        v45 = v47 - 20;
        v46 = sub_1C443313C();
        break;
      case 0xC:
        v46 = sub_1C440584C();
        break;
      default:
        break;
    }

    v49 = 0x6144664F656D6974;
    v50 = 0xE900000000000079;
    switch(v3)
    {
      case 1:
        sub_1C440F310();
        v49 = v51 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
        break;
      case 2:
        sub_1C440DEDC();
        v49 = v54 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
        v50 = 0xEF796144664F656DLL;
        break;
      case 3:
        sub_1C44040F0();
        v50 = v55 - 14;
        sub_1C4409A64();
        break;
      case 4:
        sub_1C440F310();
        v49 = v53 & 0xFFFFFFFFFFFFLL | 0x6557000000000000;
        v50 = 0xEA00000000006B65;
        break;
      case 5:
        v50 = 0xE300000000000000;
        v49 = 6909804;
        break;
      case 6:
        sub_1C4404BF8();
        v56 = 0x6E6F697461;
        goto LABEL_70;
      case 7:
        sub_1C44148EC();
        v50 = 0xEF687361486F6547;
        break;
      case 8:
        sub_1C440DEDC();
        v49 = v57 & 0xFFFFFFFFFFFFLL | 0x6547000000000000;
        v56 = 0x687361486FLL;
LABEL_70:
        v50 = v56 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        break;
      case 9:
        sub_1C4413E94();
        v50 = 0xEC00000068736148;
        break;
      case 10:
        v50 = 0xE400000000000000;
        v49 = 1768319351;
        break;
      case 11:
        sub_1C44040F0();
        v50 = v52 - 20;
        sub_1C4423A90();
        break;
      case 12:
        sub_1C440EF3C();
        v50 = 0xEB00000000657461;
        break;
      default:
        break;
    }

    if (v46 != v49 || v45 != v50)
    {
      v59 = sub_1C4F02938();

      if (v59)
      {
        goto LABEL_78;
      }

      goto LABEL_76;
    }

LABEL_78:
    v295 = sub_1C456902C(&qword_1EC0B8BC8, &unk_1C4F17750);
    v61 = swift_allocObject();
    *(v61 + 16) = *v270;
    *(v61 + 32) = v3;
    sub_1C4D50668(v61);
    v63 = v62;
    sub_1C440BB58();
    sub_1C444B010();
    v72 = sub_1C44364A0(v64, v65, v66, v67, v68, v69, v70, v71, v252, v260, v270[0], v270[1], v286, v295, v302, __src);
    sub_1C4851148(v72, v73);
    sub_1C4F02B68();
    v74 = -1 << *(v1 + 32);
    sub_1C4434E04();
    v77 = v261;
    if (((*(v1 + 56 + v76) >> v6) & 1) == 0)
    {
LABEL_84:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v302 = v1;
      v85 = *(v1 + 16);
      v86 = *(v1 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v86 <= v85)
      {
        v94 = v85 + 1;
        if (isUniquelyReferenced_nonNull_native)
        {
          sub_1C483EFEC(v94, v87, v88, v89, v90, v91, v92, v93, v250, v261, v268[0], v268[1], v284, v293, v302, __src, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317);
        }

        else
        {
          sub_1C484C074(v94, v87, v88, v89, v90, v91, v92, v93, v250, v261, v268[0], v268[1], v284, v293, v302, __src, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317);
        }

        v1 = v302;
        sub_1C440BB58();
        sub_1C444B010();
        v103 = sub_1C44364A0(v95, v96, v97, v98, v99, v100, v101, v102, v253, v262, v271, v278, v287, v296, v302, __src);
        sub_1C4851148(v103, v104);
        sub_1C4F02B68();
        v105 = -1 << *(v1 + 32);
        sub_1C4434E04();
        if (((*(v1 + 56 + v107) >> v6) & 1) == 0)
        {
          goto LABEL_96;
        }

        v108 = ~v106;
        while (1)
        {
          sub_1C43FEBEC();
          if (v31)
          {
            v110 = sub_1C443F0E0(v109);
            sub_1C4839AB4(v110, v63);
            v112 = v111;
            sub_1C44189CC();
            if (v112)
            {
              break;
            }
          }

          LOBYTE(v6) = (v6 + 1) & v108;
          sub_1C444FC38();
          if (((*(v1 + 56 + v113) >> v6) & 1) == 0)
          {
            goto LABEL_96;
          }
        }
      }

      else
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C4849A60();
          v1 = v302;
        }

LABEL_96:
        sub_1C440586C();
        *v114 = v63;
        sub_1C4433BD4(v114);
        if (!v116)
        {
          *(v1 + 16) = v115;
          goto LABEL_98;
        }

        __break(1u);
LABEL_167:
        __break(1u);
      }

LABEL_168:
      result = sub_1C4F029E8();
      __break(1u);
      return result;
    }

    v78 = ~v75;
    while (1)
    {
      sub_1C43FEBEC();
      if (v31)
      {
        v80 = sub_1C443F0E0(v79);
        sub_1C4839AB4(v80, v63);
        v82 = v81;
        sub_1C44189CC();
        if (v82)
        {
          break;
        }
      }

      LOBYTE(v6) = (v6 + 1) & v78;
      sub_1C444FC38();
      if (((*(v1 + 56 + v83) >> v6) & 1) == 0)
      {
        goto LABEL_84;
      }
    }

LABEL_98:

    v2 = v77 + 1;
    v117 = swift_allocObject();
    *(v117 + 16) = *v268;
    *(v117 + 32) = v3;
    sub_1C4D50668(v117);
    v119 = v118;
    sub_1C440BB58();
    MEMORY[0x1C69417F0](14);
    sub_1C4851148(&__src, v119);
    v120 = sub_1C4F02B68();
    v121 = v1 + 56;
    v122 = -1 << *(v1 + 32);
    v123 = v120 & ~v122;
    if ((*(v1 + 56 + ((v123 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v123))
    {
      v124 = ~v122;
      while (1)
      {
        v125 = *(v1 + 48) + 16 * v123;
        if (*(v125 + 8) == 3)
        {
          v126 = sub_1C443F0E0(v125);
          sub_1C4839AB4(v126, v119);
          v128 = v127;
          sub_1C442F0D8();
          if (v128)
          {
            break;
          }
        }

        v123 = (v123 + 1) & v124;
        if (((*(v121 + ((v123 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v123) & 1) == 0)
        {
          goto LABEL_103;
        }
      }
    }

    else
    {
LABEL_103:
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C4402C7C();
      sub_1C4844AB4(v119, 3, v123);
      v1 = __src;
    }
  }

  while (v2 != 13);
  sub_1C4D50668(&unk_1F43D29F0);
  v130 = v129;
  sub_1C440BB58();
  sub_1C444B010();
  v131 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C440216C(v131, v132, v133, v134, v135, v136, v137, v138, v250, v261, v268[0], v268[1], v284, v293, v302, __src);
  sub_1C4F02B68();
  v139 = v1 + 56;
  sub_1C440CAC8();
  sub_1C4434E04();
  if (((*(v139 + v141) >> v121) & 1) == 0)
  {
LABEL_115:
    v148 = swift_isUniquelyReferenced_nonNull_native();
    v302 = v1;
    v146 = *(v1 + 16);
    v139 = *(v1 + 24);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v139 <= v146)
    {
      v156 = v146 + 1;
      if (v148)
      {
        sub_1C483EFEC(v156, v149, v150, v151, v152, v153, v154, v155, v254, v263, v272, v279, v288, v297, v302, __src, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317);
      }

      else
      {
        sub_1C484C074(v156, v149, v150, v151, v152, v153, v154, v155, v254, v263, v272, v279, v288, v297, v302, __src, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317);
      }

      v1 = v302;
      sub_1C440BB58();
      sub_1C444B010();
      sub_1C440216C(v157, v158, v159, v160, v161, v162, v163, v164, v255, v264, v273, v280, v289, v298, v302, __src);
      sub_1C4F02B68();
      v139 = v1 + 56;
      sub_1C440CAC8();
      sub_1C4434E04();
      if ((*(v1 + 56 + v166) >> v121))
      {
        v167 = ~v165;
        do
        {
          sub_1C43FEBEC();
          if (v31)
          {
            v169 = sub_1C443F0E0(v168);
            sub_1C4839AB4(v169, v130);
            v146 = v170;
            sub_1C44189CC();
            if (v146)
            {
              goto LABEL_168;
            }
          }

          LOBYTE(v121) = (v121 + 1) & v167;
          sub_1C444FC38();
        }

        while (((*(v139 + v171) >> v121) & 1) != 0);
      }
    }

    else if ((v148 & 1) == 0)
    {
      sub_1C4849A60();
      v1 = v302;
    }

    sub_1C440586C();
    *v172 = v130;
    sub_1C4433BD4(v172);
    if (!v116)
    {
      *(v1 + 16) = v173;
      goto LABEL_129;
    }

    goto LABEL_167;
  }

  v142 = ~v140;
  while (1)
  {
    sub_1C43FEBEC();
    if (v31)
    {
      v144 = sub_1C443F0E0(v143);
      sub_1C4839AB4(v144, v130);
      v146 = v145;
      sub_1C44189CC();
      if (v146)
      {
        break;
      }
    }

    LOBYTE(v121) = (v121 + 1) & v142;
    sub_1C444FC38();
    if (((*(v139 + v147) >> v121) & 1) == 0)
    {
      goto LABEL_115;
    }
  }

LABEL_129:

  sub_1C440BB58();
  v174 = MEMORY[0x1C69417F0](14);
  sub_1C440216C(v174, v175, v176, v177, v178, v179, v180, v181, v254, v263, v272, v279, v288, v297, v302, __src);
  v182 = sub_1C4F02B68();
  sub_1C43FD1DC(v182);
  if (v183)
  {
    while (1)
    {
      sub_1C447EF48();
      if (v185 == 3)
      {
        v186 = sub_1C443F0E0(v184);
        sub_1C4839AB4(v186, v130);
        v139 = v187;
        sub_1C442F0D8();
        if (v139)
        {
          break;
        }
      }

      sub_1C4408678();
      if ((v188 & 1) == 0)
      {
        goto LABEL_133;
      }
    }
  }

  else
  {
LABEL_133:
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C4402C7C();
    sub_1C4844AB4(v130, 3, v146);
    v1 = __src;
  }

  sub_1C4D50668(&unk_1F43D2A18);
  v190 = v189;
  sub_1C440BB58();
  sub_1C444B010();
  v191 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C440216C(v191, v192, v193, v194, v195, v196, v197, v198, v256, v265, v274, v281, v290, v299, v302, __src);
  v199 = sub_1C4F02B68();
  sub_1C43FD1DC(v199);
  if (v200)
  {
    while (1)
    {
      sub_1C447EF48();
      if (v202 == 2)
      {
        v203 = sub_1C443F0E0(v201);
        sub_1C4839AB4(v203, v190);
        v139 = v204;
        sub_1C44189CC();
        if (v139)
        {
          break;
        }
      }

      sub_1C4408678();
      if ((v205 & 1) == 0)
      {
        goto LABEL_139;
      }
    }
  }

  else
  {
LABEL_139:
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C4402C7C();
    sub_1C4844AB4(v190, 2, v146);
    v1 = __src;
  }

  sub_1C440BB58();
  v206 = MEMORY[0x1C69417F0](14);
  sub_1C440216C(v206, v207, v208, v209, v210, v211, v212, v213, v257, v266, v275, v282, v291, v300, v302, __src);
  v214 = sub_1C4F02B68();
  sub_1C43FD1DC(v214);
  if (v215)
  {
    while (1)
    {
      sub_1C447EF48();
      if (v217 == 3)
      {
        v218 = sub_1C443F0E0(v216);
        sub_1C4839AB4(v218, v190);
        v139 = v219;
        sub_1C442F0D8();
        if (v139)
        {
          break;
        }
      }

      sub_1C4408678();
      if ((v220 & 1) == 0)
      {
        goto LABEL_145;
      }
    }
  }

  else
  {
LABEL_145:
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C4402C7C();
    sub_1C4844AB4(v190, 3, v146);
    v1 = __src;
  }

  v221 = 0;
  do
  {
    v222 = 0;
    v223 = *(&unk_1F43D2A40 + v221 + 32);
    v276 = v221 + 1;
    do
    {
      v224 = byte_1F43D2A68[v222 + 32];
      v225 = swift_allocObject();
      *(v225 + 32) = v223;
      *(v225 + 33) = v224;
      v226 = sub_1C45A2528();
      __src = MEMORY[0x1C69407C0](2, &unk_1F43E2CD0, v226);
      for (i = 32; i != 34; ++i)
      {
        sub_1C483A62C(&v302, *(v225 + i), v227, v228, v229, v230, v231, v232, v258, v267, v276, v283, v292, v301, v302, __src, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317);
      }

      swift_setDeallocating();
      swift_deallocClassInstance();
      v234 = __src;
      sub_1C440BB58();
      sub_1C444B010();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4851148(&__src, v234);
      v235 = sub_1C4F02B68();
      sub_1C44101C8(v235);
      if (v236)
      {
        while (1)
        {
          v237 = *(v1 + 48) + 16 * v139;
          if (*(v237 + 8) == 2)
          {
            v238 = sub_1C443F0E0(v237);
            sub_1C4839AB4(v238, v234);
            v240 = v239;
            sub_1C44189CC();
            if (v240)
            {
              break;
            }
          }

          sub_1C441C0BC();
          if ((v241 & 1) == 0)
          {
            goto LABEL_155;
          }
        }
      }

      else
      {
LABEL_155:
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C4402C7C();
        sub_1C4844AB4(v234, 2, v139);
        v1 = __src;
      }

      ++v222;
      sub_1C440BB58();
      sub_1C45FE448(&__src, v234, 3);
      v242 = sub_1C4F02B68();
      sub_1C44101C8(v242);
      if (v243)
      {
        while (1)
        {
          v244 = *(v1 + 48) + 16 * v139;
          if (*(v244 + 8) == 3)
          {
            v245 = sub_1C443F0E0(v244);
            sub_1C4839AB4(v245, v234);
            v247 = v246;
            sub_1C442F0D8();
            if (v247)
            {
              break;
            }
          }

          sub_1C441C0BC();
          if ((v248 & 1) == 0)
          {
            goto LABEL_161;
          }
        }
      }

      else
      {
LABEL_161:
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C4402C7C();
        sub_1C4844AB4(v234, 3, v139);
        v1 = __src;
      }
    }

    while (v222 != 6);
    v221 = v276;
  }

  while (v276 != 3);
  return v1;
}

void sub_1C45FE034(uint64_t a1, char a2, uint64_t a3, char a4)
{
  switch(a2)
  {
    case 1:
      if (a4 == 1)
      {
        sub_1C44040C8();
        v8 = v6;
        switch(v11)
        {
          case 1:
            v8 = sub_1C43FBFBC() & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
            break;
          case 2:
            v8 = sub_1C440679C();
            break;
          case 3:
            v8 = sub_1C441C7F8();
            v5 = v4 - 14;
            break;
          case 4:
            v8 = sub_1C4431F88();
            break;
          case 5:
            v8 = sub_1C440215C();
            break;
          case 6:
            v8 = sub_1C440D0A4();
            goto LABEL_27;
          case 7:
            v8 = sub_1C43FEBC8();
            break;
          case 8:
            v8 = sub_1C441F4F8();
LABEL_27:
            v5 = v5 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 9:
            v8 = sub_1C43FFDEC();
            break;
          case 10:
            v8 = sub_1C4415F60();
            break;
          case 11:
            v8 = sub_1C443313C();
            v5 = v4 - 20;
            break;
          case 12:
            v8 = sub_1C440584C();
            break;
          default:
            break;
        }

        switch(v10)
        {
          case 1:
            goto LABEL_42;
          case 2:
            goto LABEL_47;
          case 3:
            goto LABEL_48;
          case 4:
            goto LABEL_44;
          case 5:
            goto LABEL_50;
          case 6:
            goto LABEL_51;
          case 7:
            goto LABEL_49;
          case 8:
            goto LABEL_53;
          case 9:
            goto LABEL_46;
          case 10:
            goto LABEL_52;
          case 11:
            goto LABEL_43;
          case 12:
            goto LABEL_45;
          default:
            goto LABEL_55;
        }

        goto LABEL_55;
      }

      break;
    case 2:
      if (a4 == 2)
      {
        goto LABEL_9;
      }

      break;
    case 3:
      if (a4 == 3)
      {
LABEL_9:

        sub_1C4839AB4(a1, a3);
      }

      break;
    case 4:
      sub_1C442B950();
      break;
    default:
      if (!a4)
      {
        sub_1C44040C8();
        v8 = v6;
        switch(v9)
        {
          case 1:
            v8 = sub_1C43FBFBC() & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
            break;
          case 2:
            v8 = sub_1C440679C();
            break;
          case 3:
            v8 = sub_1C441C7F8();
            v5 = v4 - 14;
            break;
          case 4:
            v8 = sub_1C4431F88();
            break;
          case 5:
            v8 = sub_1C440215C();
            break;
          case 6:
            v8 = sub_1C440D0A4();
            goto LABEL_40;
          case 7:
            v8 = sub_1C43FEBC8();
            break;
          case 8:
            v8 = sub_1C441F4F8();
LABEL_40:
            v5 = v5 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 9:
            v8 = sub_1C43FFDEC();
            break;
          case 10:
            v8 = sub_1C4415F60();
            break;
          case 11:
            v8 = sub_1C443313C();
            v5 = v4 - 20;
            break;
          case 12:
            v8 = sub_1C440584C();
            break;
          default:
            break;
        }

        switch(v7)
        {
          case 1:
LABEL_42:
            sub_1C440F310();
            v6 = v12 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
            break;
          case 2:
LABEL_47:
            sub_1C440DEDC();
            v6 = v14 & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
            v4 = 0xEF796144664F656DLL;
            break;
          case 3:
LABEL_48:
            sub_1C4409A64();
            v4 -= 14;
            break;
          case 4:
LABEL_44:
            sub_1C440F310();
            v6 = v13 & 0xFFFFFFFFFFFFLL | 0x6557000000000000;
            v4 = 0xEA00000000006B65;
            break;
          case 5:
LABEL_50:
            v4 = 0xE300000000000000;
            v6 = 6909804;
            break;
          case 6:
LABEL_51:
            sub_1C4404BF8();
            v15 = 0x6E6F697461;
            goto LABEL_54;
          case 7:
LABEL_49:
            sub_1C44148EC();
            v4 = 0xEF687361486F6547;
            break;
          case 8:
LABEL_53:
            sub_1C440DEDC();
            v6 = v16 & 0xFFFFFFFFFFFFLL | 0x6547000000000000;
            v15 = 0x687361486FLL;
LABEL_54:
            v4 = v15 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 9:
LABEL_46:
            sub_1C4413E94();
            v4 = 0xEC00000068736148;
            break;
          case 10:
LABEL_52:
            v4 = 0xE400000000000000;
            v6 = 1768319351;
            break;
          case 11:
LABEL_43:
            sub_1C4423A90();
            v4 -= 20;
            break;
          case 12:
LABEL_45:
            sub_1C440EF3C();
            v4 = 0xEB00000000657461;
            break;
          default:
            break;
        }

LABEL_55:
        if (v8 != v6 || v5 != v4)
        {
          sub_1C4F02938();
        }
      }

      break;
  }
}

uint64_t sub_1C45FE448(void *a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
      v5 = 12;
      goto LABEL_11;
    case 2:
      v7 = 13;
      goto LABEL_7;
    case 3:
      v7 = 14;
LABEL_7:
      MEMORY[0x1C69417F0](v7);

      result = sub_1C4851148(a1, a2);
      break;
    case 4:
      switch(a2)
      {
        case 1:
          v6 = 1;
          break;
        case 2:
          v6 = 2;
          break;
        case 3:
          v6 = 3;
          break;
        case 4:
          v6 = 4;
          break;
        case 5:
          v6 = 5;
          break;
        case 6:
          v6 = 6;
          break;
        case 7:
          v6 = 7;
          break;
        case 8:
          v6 = 8;
          break;
        case 9:
          v6 = 9;
          break;
        case 10:
          v6 = 10;
          break;
        default:
          v6 = 0;
          break;
      }

      result = MEMORY[0x1C69417F0](v6);
      break;
    default:
      v5 = 11;
LABEL_11:
      MEMORY[0x1C69417F0](v5);
      sub_1C46001A8(a2);
      sub_1C4F01298();

      break;
  }

  return result;
}

uint64_t sub_1C45FE590(uint64_t a1, char a2)
{
  sub_1C4F02AF8();
  sub_1C45FE448(v5, a1, a2);
  return sub_1C4F02B68();
}

uint64_t sub_1C45FE5F8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1C4F02AF8();
  sub_1C45FE448(v4, v1, v2);
  return sub_1C4F02B68();
}

void sub_1C45FE65C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 3:
      sub_1C43FBFCC();
      sub_1C4F02248();

      sub_1C442DD6C();
      v3 = sub_1C45FE854(a1);
      goto LABEL_5;
    case 4:
      sub_1C4440FA0();
      switch(a1)
      {
        case 8:
          return;
        case 9:
        case 10:
          sub_1C43FE984();
          break;
        default:
          sub_1C4412CDC();
          break;
      }

      break;
    default:
      sub_1C43FBFCC();
      sub_1C4F02248();

      sub_1C442DD6C();
      v3 = sub_1C46001A8(a1);
LABEL_5:
      MEMORY[0x1C6940010](v3);

      break;
  }
}

uint64_t sub_1C45FE854(uint64_t a1)
{
  sub_1C45FCEC8(a1);
  v4 = v1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44ECB2C(&v4);

  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4401CBC(&qword_1EDDFCED0, &unk_1EC0B9620, &unk_1C4F0E870);
  v2 = sub_1C4F01048();

  return v2;
}

void sub_1C45FE940(uint64_t a1, uint64_t a2)
{
  sub_1C43FE984();
  if (v3 == 0xD000000000000010 && v4 == a2)
  {
    goto LABEL_6;
  }

  v6 = v3;
  if (sub_1C43FEC00())
  {
    goto LABEL_6;
  }

  sub_1C43FE984();
  v8 = v6 == 0xD000000000000022 && v7 == a2;
  if (v8 || (sub_1C43FEC00() & 1) != 0)
  {
    goto LABEL_6;
  }

  sub_1C43FE984();
  v10 = v6 == 0xD000000000000010 && v9 == a2;
  if (v10 || (sub_1C43FEC00() & 1) != 0)
  {
    goto LABEL_6;
  }

  sub_1C43FE984();
  v12 = v6 == 0xD000000000000010 && v11 == a2;
  if (v12 || (sub_1C43FEC00() & 1) != 0)
  {
    goto LABEL_6;
  }

  sub_1C43FE984();
  v14 = v6 == 0xD000000000000012 && v13 == a2;
  if (v14 || (sub_1C43FEC00() & 1) != 0)
  {
    goto LABEL_6;
  }

  sub_1C43FE984();
  v16 = v6 == 0xD00000000000001BLL && v15 == a2;
  if (v16 || (sub_1C43FEC00() & 1) != 0)
  {
    goto LABEL_6;
  }

  sub_1C43FE984();
  v18 = v6 == 0xD00000000000001ALL && v17 == a2;
  if (v18 || (sub_1C43FEC00() & 1) != 0)
  {
    goto LABEL_6;
  }

  sub_1C43FE984();
  v20 = v6 == 0xD00000000000001FLL && v19 == a2;
  if (v20 || (sub_1C43FEC00() & 1) != 0)
  {
    goto LABEL_6;
  }

  sub_1C43FE984();
  v22 = v6 == 0xD00000000000001FLL && v21 == a2;
  if (v22 || (sub_1C43FEC00() & 1) != 0)
  {
    goto LABEL_6;
  }

  if (v6 == sub_1C4440FA0() && a2 == v23)
  {
    goto LABEL_6;
  }

  if (sub_1C43FEC00())
  {
    goto LABEL_6;
  }

  sub_1C4415EA8();
  v25 = sub_1C4F02058();

  if (v25[2] != 2)
  {
    goto LABEL_6;
  }

  v26 = v25[8];
  v27 = v25[9];
  v28 = v25[10];
  v29 = v25[11];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C693FEF0](v26, v27, v28, v29);

  sub_1C45FEDB8();
  if (!v30)
  {
    goto LABEL_6;
  }

  if (!v25[2])
  {
    __break(1u);
    return;
  }

  v31 = v30;
  v32 = v25[4];
  v33 = v25[5];
  v35 = v25[6];
  v34 = v25[7];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  if (sub_1C44109C4(0xD000000000000020, "overallPopularity"))
  {

    return;
  }

  if (sub_1C44109C4(0xD00000000000001ELL, "lityGivenContext"))
  {

    if (*(v31 + 16) == 1)
    {
LABEL_70:
      sub_1C48680F0(v31);

      return;
    }

LABEL_6:

    return;
  }

  if (sub_1C44109C4(0xD00000000000001ELL, "contextPopularityGivenBehavior"))
  {

    if (*(v31 + 16) == 1)
    {
      goto LABEL_70;
    }

    goto LABEL_6;
  }

  v36 = sub_1C44109C4(0xD00000000000001CLL, "behaviorPopularityGivenContext");

  if ((v36 & 1) == 0)
  {
    goto LABEL_6;
  }
}

void sub_1C45FEDB8()
{
  sub_1C4415EA8();
  v0 = sub_1C4F02058();

  v1 = 0;
  v2 = *(v0 + 16);
  v3 = (v0 + 56);
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v2 == v1)
    {

      sub_1C45979B8(v4);
      return;
    }

    if (v1 >= *(v0 + 16))
    {
      break;
    }

    v6 = *(v3 - 1);
    v5 = *v3;
    v8 = *(v3 - 3);
    v7 = *(v3 - 2);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C693FEF0](v8, v7, v6, v5);

    v9 = sub_1C4600350();
    if (v9 == 13)
    {

      return;
    }

    v10 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = *(v4 + 16);
      sub_1C458B190();
      v4 = v13;
    }

    v11 = *(v4 + 16);
    if (v11 >= *(v4 + 24) >> 1)
    {
      sub_1C458B190();
      v4 = v14;
    }

    *(v4 + 16) = v11 + 1;
    *(v4 + v11 + 32) = v10;
    v3 += 4;
    ++v1;
  }

  __break(1u);
}

uint64_t sub_1C45FEF50(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = sub_1C4EF9F68();
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  v14 = sub_1C4EF9CD8();
  v15 = sub_1C43FCDF8(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  v23 = objc_autoreleasePoolPush();
  if (a4)
  {
    (*(v8 + 104))(v13, *MEMORY[0x1E6969AB0], v5);
    v24 = sub_1C4EF9F78();
    (*(v8 + 8))(v13, v5);
    v25 = __OFSUB__(v24, 1);
    v26 = v24 - 1;
    if (!v25)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  sub_1C4EF9E78();
  sub_1C4EF9B78();
  v28 = v27;
  result = (*(v17 + 8))(v22, v14);
  v30 = v28 / (86400.0 / a3);
  if (COERCE__INT64(fabs(v30)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v30 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v30 < 9.22337204e18)
  {
    v26 = v30;
LABEL_9:
    objc_autoreleasePoolPop(v23);
    return v26;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1C45FF178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X8>)
{
  v41 = a5;
  v44 = a3;
  v45 = a1;
  v46 = a2;
  v6 = sub_1C4EF9F68();
  v7 = sub_1C43FCDF8(v6);
  v42 = v8;
  v43 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  v14 = *(*(sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  v18 = sub_1C4EF9CD8();
  v19 = sub_1C43FCDF8(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  v26 = v25 - v24;
  v27 = sub_1C4EF9F88();
  v28 = sub_1C43FCDF8(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBCC4();
  v35 = v34 - v33;
  sub_1C4EF9F58();
  if (a4)
  {
    v36 = v27;
    v37 = sub_1C45FEF50(v46, v35, v44, 1);
    result = (*(v42 + 104))(v13, *MEMORY[0x1E6969A48], v43);
    if (__OFSUB__(v45, v37))
    {
      __break(1u);
    }

    else
    {
      v39 = v45;
      sub_1C4EF9F28();
      (*(v42 + 8))(v13, v43);
      if (sub_1C44157D4(v17, 1, v18) == 1)
      {
        sub_1C44686E4(v17);
        sub_1C4600F60();
        swift_allocError();
        *v40 = v39;
        swift_willThrow();
        return (*(v30 + 8))(v35, v36);
      }

      else
      {
        (*(v30 + 8))(v35, v36);
        return (*(v21 + 32))(v41, v17, v18);
      }
    }
  }

  else
  {
    sub_1C4EF9E78();
    sub_1C4EF9BE8();
    (*(v21 + 8))(v26, v18);
    return (*(v30 + 8))(v35, v27);
  }

  return result;
}

BOOL sub_1C45FF4E4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0;
  }

  if (a4)
  {
    return 0;
  }

  return a1 == a3;
}

uint64_t sub_1C45FF50C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6144664F656D6974 && a2 == 0xE900000000000079;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656557664F796164 && a2 == 0xE90000000000006BLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

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

uint64_t sub_1C45FF5E0(char a1)
{
  if (a1)
  {
    return 0x656557664F796164;
  }

  else
  {
    return 0x6144664F656D6974;
  }
}

uint64_t sub_1C45FF61C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x664F7265626D756ELL && a2 == 0xEC000000736E6942)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C45FF6B8(void *a1, uint64_t a2, int a3)
{
  v33 = a2;
  v34 = a3;
  v4 = sub_1C456902C(&qword_1EC0B9D98, &qword_1C4F11EC8);
  v5 = sub_1C43FCDF8(v4);
  v31 = v6;
  v32 = v5;
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = sub_1C456902C(&qword_1EC0B9DA0, &qword_1C4F11ED0);
  sub_1C43FCDF8(v12);
  v30 = v13;
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  v19 = sub_1C456902C(&qword_1EC0B9DA8, &qword_1C4F11ED8);
  sub_1C43FCDF8(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v29 - v25;
  v27 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4600E10();
  sub_1C4F02BF8();
  if (v34)
  {
    v36 = 1;
    sub_1C4600E64();
    sub_1C4F02718();
    (*(v31 + 8))(v11, v32);
  }

  else
  {
    v35 = 0;
    sub_1C4600EB8();
    sub_1C4F02718();
    sub_1C4F027D8();
    (*(v30 + 8))(v18, v12);
  }

  return (*(v21 + 8))(v26, v19);
}

uint64_t sub_1C45FF974(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
    MEMORY[0x1C69417F0](0);
  }

  return MEMORY[0x1C69417F0](v3);
}

uint64_t sub_1C45FF9B4(uint64_t a1, char a2)
{
  sub_1C4F02AF8();
  if (a2)
  {
    a1 = 1;
  }

  else
  {
    MEMORY[0x1C69417F0](0);
  }

  MEMORY[0x1C69417F0](a1);
  return sub_1C4F02B68();
}

uint64_t sub_1C45FFA18(uint64_t *a1)
{
  v52 = sub_1C456902C(&qword_1EC0B9D80, &qword_1C4F11EA8);
  sub_1C43FCDF8(v52);
  v54 = v2;
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v49 - v6;
  v8 = sub_1C456902C(&qword_1EC0B9D88, &qword_1C4F11EB0);
  sub_1C43FCDF8(v8);
  v53 = v9;
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - v13;
  v15 = sub_1C456902C(&qword_1EC0B9D90, &unk_1C4F11EB8);
  sub_1C43FCDF8(v15);
  v55 = v16;
  v18 = *(v17 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v49 - v20;
  v22 = a1[4];
  v23 = sub_1C4409678(a1, a1[3]);
  sub_1C4600E10();
  v24 = v56;
  sub_1C4F02BC8();
  if (v24)
  {
    goto LABEL_9;
  }

  v56 = v14;
  v51 = v8;
  v25 = v21;
  v26 = sub_1C4F026E8();
  result = sub_1C4570934(v26, 0);
  if (v29 == v30 >> 1)
  {
    goto LABEL_8;
  }

  v50 = 0;
  if (v29 < (v30 >> 1))
  {
    v31 = *(v28 + v29);
    sub_1C4570928(v29 + 1);
    v33 = v32;
    v35 = v34;
    swift_unknownObjectRelease();
    if (v33 == v35 >> 1)
    {
      v57 = v31;
      if (v31)
      {
        v59 = 1;
        sub_1C4600E64();
        v36 = v50;
        sub_1C4F025E8();
        v37 = v55;
        if (v36)
        {
          v23 = v55 + 8;
          (*(v55 + 8))(v25, v15);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
          (*(v54 + 8))(v7, v52);
          (*(v37 + 8))(v25, v15);
          v23 = 0;
        }
      }

      else
      {
        v58 = 0;
        sub_1C4600EB8();
        v23 = v25;
        v42 = v50;
        sub_1C4F025E8();
        if (v42)
        {
          v43 = sub_1C445E78C();
          v44(v43);
          swift_unknownObjectRelease();
        }

        else
        {
          v23 = sub_1C4F026B8();
          swift_unknownObjectRelease();
          v45 = sub_1C4422234();
          v46(v45);
          v47 = sub_1C445E78C();
          v48(v47);
        }
      }

      goto LABEL_9;
    }

LABEL_8:
    v38 = sub_1C4F022E8();
    swift_allocError();
    v40 = v39;
    v41 = *(sub_1C456902C(&qword_1EC0B7410, &qword_1C4F06F90) + 48);
    *v40 = &unk_1F43E2C40;
    v23 = v25;
    sub_1C4F025F8();
    sub_1C4F022D8();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v55 + 8))(v25, v15);
LABEL_9:
    sub_1C440962C(a1);
    return v23;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C45FFF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C45FF50C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C45FFF3C(uint64_t a1)
{
  v2 = sub_1C4600E10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C45FFF78(uint64_t a1)
{
  v2 = sub_1C4600E10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C45FFFB4(uint64_t a1)
{
  v2 = sub_1C4600E64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C45FFFF0(uint64_t a1)
{
  v2 = sub_1C4600E64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4600030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C45FF61C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C460005C(uint64_t a1)
{
  v2 = sub_1C4600EB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4600098(uint64_t a1)
{
  v2 = sub_1C4600EB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C46000D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C45FFA18(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_1C4600140()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1C4F02AF8();
  sub_1C45FF974(v4, v1, v2);
  return sub_1C4F02B68();
}

uint64_t sub_1C46001A8(char a1)
{
  result = 0x6144664F656D6974;
  switch(a1)
  {
    case 1:
      result = sub_1C43FBFBC() & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
      break;
    case 2:
      result = 0x6954657372616F63;
      break;
    case 3:
      result = sub_1C441C7F8();
      break;
    case 4:
      result = sub_1C43FBFBC() & 0xFFFFFFFFFFFFLL | 0x6557000000000000;
      break;
    case 5:
      result = 6909804;
      break;
    case 6:
      result = 0x636F4C6F7263696DLL;
      break;
    case 7:
      result = 0x6369666963657073;
      break;
    case 8:
      result = 0x6547657372616F63;
      break;
    case 9:
      result = 0x6F6547656772616CLL;
      break;
    case 10:
      result = 1768319351;
      break;
    case 11:
      result = sub_1C443313C();
      break;
    case 12:
      result = 0x74536E6F69746F6DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4600350()
{
  v0 = sub_1C4F025D8();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C46003C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C4600350();
  *a2 = result;
  return result;
}

uint64_t sub_1C46003F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C46001A8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C4600524()
{
  result = qword_1EDDF4598;
  if (!qword_1EDDF4598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF4598);
  }

  return result;
}

unint64_t sub_1C460057C()
{
  result = qword_1EC0B9D78;
  if (!qword_1EC0B9D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9D78);
  }

  return result;
}

uint64_t sub_1C46005D0(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v8 = a1 == a5 && a2 == a6;
  if (v8 && !(a3 >> 16) && v7 == a4 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_1C4F02838() & 1;
  }
}

void sub_1C4600638(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_1C4F02938();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_1C4F02938()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_1C4F02938() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_1C458A358();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1C458A358();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1C4600C6C((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_1C4600B40(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_1C4600B40(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C46194F4(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1C4600C6C((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1C4600C6C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1C4461B98(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1C4F02938() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_1C4461B98(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_1C4F02938() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

unint64_t sub_1C4600E10()
{
  result = qword_1EDDFAF78;
  if (!qword_1EDDFAF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAF78);
  }

  return result;
}

unint64_t sub_1C4600E64()
{
  result = qword_1EDDFAF60;
  if (!qword_1EDDFAF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAF60);
  }

  return result;
}

unint64_t sub_1C4600EB8()
{
  result = qword_1EDDFAF90;
  if (!qword_1EDDFAF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAF90);
  }

  return result;
}

unint64_t sub_1C4600F0C()
{
  result = qword_1EDDFB0E8;
  if (!qword_1EDDFB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB0E8);
  }

  return result;
}

unint64_t sub_1C4600F60()
{
  result = qword_1EC0B9DB0;
  if (!qword_1EC0B9DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9DB0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TimeBasedContextAspect.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for TimeBasedContextAspect.TimeOfDayCodingKeys(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C4601158(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t sub_1C4601174(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 9))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C46011B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C46011F8(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_1C4601220()
{
  result = qword_1EC0B9DB8;
  if (!qword_1EC0B9DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9DB8);
  }

  return result;
}

unint64_t sub_1C4601278()
{
  result = qword_1EC0B9DC0;
  if (!qword_1EC0B9DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9DC0);
  }

  return result;
}

unint64_t sub_1C46012D0()
{
  result = qword_1EDDFAF80;
  if (!qword_1EDDFAF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAF80);
  }

  return result;
}

unint64_t sub_1C4601328()
{
  result = qword_1EDDFAF88;
  if (!qword_1EDDFAF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAF88);
  }

  return result;
}

unint64_t sub_1C4601380()
{
  result = qword_1EDDFAF50;
  if (!qword_1EDDFAF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAF50);
  }

  return result;
}

unint64_t sub_1C46013D8()
{
  result = qword_1EDDFAF58;
  if (!qword_1EDDFAF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAF58);
  }

  return result;
}

unint64_t sub_1C4601430()
{
  result = qword_1EDDFAF68;
  if (!qword_1EDDFAF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAF68);
  }

  return result;
}

unint64_t sub_1C4601488()
{
  result = qword_1EDDFAF70;
  if (!qword_1EDDFAF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFAF70);
  }

  return result;
}

unint64_t sub_1C46014E0()
{
  result = qword_1EDDF6800;
  if (!qword_1EDDF6800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF6800);
  }

  return result;
}

void *sub_1C4601538(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v7 = type metadata accessor for Configuration();
  v8 = sub_1C43FBD18(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  if (qword_1EDDE7308 != -1)
  {
    swift_once();
  }

  v14 = qword_1EDE2CE60;
  sub_1C4ABF81C();
  if (v3)
  {
    sub_1C440962C(a2);
    sub_1C4467948(a1);
  }

  else
  {
    sub_1C44098F0(a1, v13);
    v15 = type metadata accessor for KeyValueStore();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    v42 = KeyValueStore.init(config:domain:)(v13, 1413829954, 0xE400000000000000);
    sub_1C448BD48(a2, v47);
    v40 = sub_1C45EDEF8();

    sub_1C45EA370(a2, v44);
    v19 = v48;
    v41 = v49;
    sub_1C4418280(v47, v48);
    v43 = &v36;
    v38 = v19;
    sub_1C43FCE64();
    v21 = *(v20 + 64);
    MEMORY[0x1EEE9AC00](v22);
    sub_1C43FBCC4();
    v25 = (v24 - v23);
    (*(v26 + 16))(v24 - v23);
    v27 = v45;
    v37 = v46;
    sub_1C4418280(v44, v45);
    v39 = &v36;
    sub_1C43FCE64();
    v29 = *(v28 + 64);
    MEMORY[0x1EEE9AC00](v30);
    sub_1C43FBCC4();
    v33 = v32 - v31;
    (*(v34 + 16))(v32 - v31);
    v50 = v40;
    v35 = type metadata accessor for BehaviorDatabaseEventTracker();
    v14 = sub_1C460784C(v25, &v50, v33, v42, v4, v38, v27, v35, v41, v37, &off_1F43E2390);

    sub_1C440962C(a2);
    sub_1C4467948(a1);
    sub_1C440962C(v44);
    sub_1C440962C(v47);
  }

  return v14;
}

void sub_1C4601D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C43FEC28();
  a21 = v23;
  a22 = v24;
  v141 = v22;
  v142 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = *(v28 + 8);
  v138[3] = *v28;
  v138[4] = v32;
  v33 = *(v28 + 24);
  v138[5] = *(v28 + 16);
  v34 = *(v28 + 32);
  v138[6] = v33;
  v138[7] = v34;
  LODWORD(v139) = *(v28 + 40);
  v35 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v36 = sub_1C43FBD18(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBD08();
  v138[2] = v39 - v40;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v41);
  v138[1] = v138 - v42;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v43);
  v138[0] = v138 - v44;
  v45 = sub_1C4EFDAB8();
  v46 = sub_1C43FCDF8(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBD08();
  v51 = v49 - v50;
  v53 = MEMORY[0x1EEE9AC00](v52);
  v55 = v138 - v54;
  v56 = MEMORY[0x1EEE9AC00](v53);
  v58 = v138 - v57;
  v59 = MEMORY[0x1EEE9AC00](v56);
  v61 = v138 - v60;
  v62 = MEMORY[0x1EEE9AC00](v59);
  v64 = v138 - v63;
  v65 = MEMORY[0x1EEE9AC00](v62);
  v67 = v138 - v66;
  v68 = MEMORY[0x1EEE9AC00](v65);
  v71 = v138 - v70;
  v140 = v31;
  switch(v31)
  {
    case 1:
      v96 = v68;
      v97 = v69;
      sub_1C45D5A24(v51);
      sub_1C4605420(v142, v51);
      (*(v97 + 8))(v51, v96);
      swift_getObjectType();
      sub_1C460ABD4();
      goto LABEL_13;
    case 2:
      v74 = v141;
      v75 = v141[25];
      sub_1C4409678(v141 + 21, v141[24]);
      v76 = sub_1C442FB9C();
      v78 = v77(v76);
      if (v27)
      {
        goto LABEL_36;
      }

      v79 = v78;
      v80 = *sub_1C4409678(v74 + 7, v74[10]);
      sub_1C45E0D68(v29, v79, &v71[OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date], 1814400.0);

      break;
    case 3:
      v81 = v141;
      v82 = v141[25];
      sub_1C4409678(v141 + 21, v141[24]);
      v83 = sub_1C442FB9C();
      v85 = v84(v83);
      if (v27)
      {
LABEL_36:
        if (qword_1EDDFA668 != -1)
        {
          sub_1C4406728();
        }

        v124 = sub_1C4F00978();
        sub_1C442B738(v124, qword_1EDE2DDE0);
        v125 = v140;
        sub_1C45A24AC(v67, v140);
        v126 = v27;
        v127 = sub_1C4F00968();
        v128 = sub_1C4F01CD8();
        sub_1C45A24C0(v67, v125);

        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          v143[0] = swift_slowAlloc();
          *v129 = 136315394;
          sub_1C45FE65C(v67, v125);
          v132 = sub_1C441D828(v130, v131, v143);

          *(v129 + 4) = v132;
          *(v129 + 12) = 2080;
          swift_getErrorValue();
          v133 = sub_1C4F02A38();
          v135 = sub_1C441D828(v133, v134, v143);

          *(v129 + 14) = v135;
          _os_log_impl(&dword_1C43F8000, v127, v128, "BehaviorFeaturizer: Returning zero for feature %s due to error %s", v129, 0x16u);
          swift_arrayDestroy();
          sub_1C43FBE2C();
          sub_1C43FBE2C();
        }

        else
        {
        }
      }

      else
      {
        v86 = v85;
        v139 = v71;
        if (qword_1EDDFA668 != -1)
        {
          sub_1C4406728();
        }

        v87 = sub_1C4F00978();
        sub_1C442B738(v87, qword_1EDE2DDE0);
        swift_bridgeObjectRetain_n();
        sub_1C45A24AC(v67, 3);
        v88 = sub_1C4F00968();
        v89 = sub_1C4F01CF8();
        sub_1C45A24C0(v67, 3);
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v144 = v91;
          *v90 = 136315394;
          sub_1C45A2528();
          v92 = sub_1C4F01AC8();
          v94 = sub_1C441D828(v92, v93, &v144);

          *(v90 + 4) = v94;
          v81 = v141;
          *(v90 + 12) = 2048;
          v95 = *(v86 + 16);

          *(v90 + 14) = v95;

          _os_log_impl(&dword_1C43F8000, v88, v89, "Computing posterior probability for %s using %ld intervals.", v90, 0x16u);
          sub_1C440962C(v91);
          sub_1C43FBE2C();
          sub_1C43FBE2C();
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v98 = *sub_1C4409678(v81 + 7, v81[10]);
        sub_1C45E0930(v29, v86, &v139[OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date], 1814400.0);
      }

      break;
    case 4:
      switch(v142)
      {
        case 1uLL:
          sub_1C4434E14();
          sub_1C45E0904();
          if (v27)
          {
            goto LABEL_35;
          }

          goto LABEL_41;
        case 2uLL:
        case 3uLL:
          v107 = *sub_1C4409678(v141 + 7, v141[10]);
          sub_1C45E3BFC();
          goto LABEL_41;
        case 4uLL:
          v99 = v68;
          v100 = v69;
          v101 = sub_1C43FD204();
          type metadata accessor for TrendingBehaviorHistogram(v101);
          sub_1C45D5A24(v71);
          sub_1C4409A78();
          sub_1C43FE990();
          sub_1C440DEEC();
          v102();
          if (v27)
          {
            (*(v100 + 8))(v71, v99);
            goto LABEL_35;
          }

          (*(v100 + 8))(v71, v99);
          v121 = sub_1C440A674();
          sub_1C4408694(v121, &a15);
          sub_1C440D0C4();
          goto LABEL_43;
        case 5uLL:
          v108 = v68;
          v109 = v69;
          v110 = sub_1C43FD204();
          type metadata accessor for ShortTermTrendingBehaviorHistogram(v110);
          sub_1C45D5A24(v67);
          sub_1C4409A78();
          sub_1C440DEEC();
          v111();
          if (v27)
          {
            (*(v109 + 8))(v67, v108);
            goto LABEL_35;
          }

          (*(v109 + 8))(v67, v108);
          v123 = sub_1C440A674();
          sub_1C4408694(v123, &a16);
          sub_1C440D0C4();
          sub_1C46050E8();
          goto LABEL_44;
        case 6uLL:
          v112 = v68;
          v113 = v69;
          v114 = sub_1C43FD204();
          type metadata accessor for LongTermTrendingBehaviorHistogram(v114);
          sub_1C45D5A24(v64);
          sub_1C4409A78();
          sub_1C440DEEC();
          v115();
          if (v27)
          {
            (*(v113 + 8))(v64, v112);
            goto LABEL_35;
          }

          (*(v113 + 8))(v64, v112);
          v136 = sub_1C440A674();
          sub_1C4408694(v136, &a17);
          sub_1C440D0C4();
LABEL_43:
          sub_1C46050E8();
LABEL_44:
          sub_1C4607CD4(v51, &unk_1EC0B84E0, qword_1C4F0D2D0);
          goto LABEL_45;
        case 7uLL:
          sub_1C4434E14();
          sub_1C45E0F64();
          if (!v27)
          {
            goto LABEL_41;
          }

          goto LABEL_35;
        case 8uLL:
          sub_1C4434E14();
          sub_1C45E100C();
          if (!v27)
          {
            goto LABEL_41;
          }

          goto LABEL_35;
        case 9uLL:
          v103 = v68;
          v104 = v69;
          v105 = sub_1C43FD204();
          type metadata accessor for PreviousBehaviorHistogram(v105);
          sub_1C45D5A24(v61);
          sub_1C4409A78();
          sub_1C440DEEC();
          v106();
          if (v27)
          {
            (*(v104 + 8))(v61, v103);
LABEL_35:
            v67 = v142;
            goto LABEL_36;
          }

          (*(v104 + 8))(v61, v103);
          sub_1C442F0F0();
          sub_1C4605238(0, v29, v122);
LABEL_45:

          break;
        case 0xAuLL:
          v116 = v68;
          v117 = v69;
          v118 = v141[15];
          v119 = v141[16];
          sub_1C4409678(v141 + 12, v118);
          v120 = type metadata accessor for PreviousBehaviorHistogram(0);
          sub_1C45D5A24(v58);
          (*(v119 + 8))(v120, v58, v120, &off_1F43E3808, v118, v119);
          (*(v117 + 8))(v58, v116);
          sub_1C442F0F0();
          sub_1C460532C(v29, v27, v137);
          goto LABEL_45;
        default:
          sub_1C4604EE4();
          goto LABEL_41;
      }

      break;
    default:
      v72 = v68;
      v73 = v69;
      sub_1C45D5A24(v55);
      sub_1C4605420(v142, v55);
      (*(v73 + 8))(v55, v72);
      swift_getObjectType();
      sub_1C460A8F4();
LABEL_13:
      swift_unknownObjectRelease();
      break;
  }

LABEL_41:
  sub_1C440C378();
  sub_1C44086C4();
}

uint64_t sub_1C460299C(char *a1)
{
  v3 = sub_1C4EF9CD8();
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  sub_1C4EF9C38();
  sub_1C4602A70(a1, v1);
  v9 = *(v6 + 8);
  v10 = sub_1C43FD024();
  return v11(v10);
}

uint64_t sub_1C4602A70(char *a1, uint64_t a2)
{
  v4 = v2;
  v46 = a2;
  v47 = a1;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FE61C();
  v9 = sub_1C4EF9CD8();
  v10 = sub_1C43FCDF8(v9);
  v48 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBD08();
  v16 = v14 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v42 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = *(v2 + 136);
  v25 = *(v4 + 152);
  v24 = *(v4 + 160);
  sub_1C4415864();
  v26 = v50;
  result = sub_1C446FB00();
  if (!v26)
  {
    v50 = 0;
    v42 = v20;
    v43 = v16;
    v44 = v4;
    v45 = v22;
    v28 = v47;
    sub_1C446BE1C(v3);
    v29 = v9;
    if (v30)
    {
      v32 = v45;
      (*(v48 + 16))(v45, v46, v29);
      v31 = sub_1C44157D4(v3, 1, v29);
      v33 = v44;
      if (v31 != 1)
      {
        sub_1C4607CD4(v3, &unk_1EC0B84E0, qword_1C4F0D2D0);
      }
    }

    else
    {
      v32 = v45;
      (*(v48 + 32))(v45, v3, v29);
      v33 = v44;
    }

    if (sub_1C4EF9C08())
    {
      sub_1C4415864();
      v34 = v50;
      sub_1C448EE10();
      v50 = v34;
      if (v34)
      {
        return (*(v48 + 8))(v32, v29);
      }

      sub_1C448BD48(v33 + 16, v49);
      v35 = v48;
      v36 = *(v48 + 16);
      v37 = v42;
      v36(v42, v32, v29);
      v38 = v43;
      v36(v43, v28, v29);
      v39 = type metadata accessor for CachedContextProvider();
      v40 = *(v39 + 48);
      v41 = *(v39 + 52);
      swift_allocObject();
      sub_1C466C344(v49, v37, v38);
      sub_1C4602D6C();
    }

    else
    {
      v35 = v48;
    }

    return (*(v35 + 8))(v32, v29);
  }

  return result;
}

void sub_1C4602D6C()
{
  sub_1C43FEC28();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1C4EF9CD8();
  v12 = sub_1C43FCDF8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBD08();
  v48 = (v17 - v18);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v45 - v20;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C4402CA8();
  v49 = v14;
  v46 = *(v14 + 16);
  v47 = v10;
  v51 = v22;
  v46(v1, v10);
  sub_1C440F1BC();
  swift_beginAccess();
  while ((sub_1C4EF9C18() & 1) != 0)
  {
    v23 = objc_autoreleasePoolPush();
    sub_1C4603368(v8, v1, v4, v2, v6);
    objc_autoreleasePoolPop(v23);
  }

  v24 = *sub_1C4409678(v2 + 7, v2[10]);
  sub_1C45E025C();
  v25 = v50;
  v26 = v51;
  v27 = v48;
  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406728();
  }

  v28 = sub_1C4F00978();
  sub_1C442B738(v28, qword_1EDE2DDE0);
  v29 = v46;
  (v46)(v25, v47, v26);
  v30 = sub_1C4415864();
  v29(v30);
  v31 = sub_1C4F00968();
  v32 = sub_1C4F01CF8();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v52[0] = v51;
    *v33 = 136315394;
    sub_1C4607804(&qword_1EDDFCD50, MEMORY[0x1E6969530]);
    v34 = sub_1C4F02858();
    v35 = v25;
    v37 = v36;
    LODWORD(v50) = v32;
    v38 = *(v49 + 8);
    v38(v35, v26);
    v39 = sub_1C441D828(v34, v37, v52);

    *(v33 + 4) = v39;
    *(v33 + 12) = 2080;
    v40 = sub_1C4F02858();
    v42 = v41;
    v38(v27, v26);
    v43 = sub_1C441D828(v40, v42, v52);

    *(v33 + 14) = v43;
    _os_log_impl(&dword_1C43F8000, v31, v50, "BehaviorFeaturizer: Digested behavior history from %s to %s", v33, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();

    v38(v1, v26);
  }

  else
  {

    v44 = *(v49 + 8);
    v44(v27, v26);
    v44(v25, v26);
    v44(v1, v26);
  }

  sub_1C44086C4();
}

uint64_t sub_1C4603280()
{
  v0 = sub_1C4EF9CD8();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  sub_1C4EF9C38();
  sub_1C4602D6C();
  v6 = *(v3 + 8);
  v7 = sub_1C43FE990();
  return v8(v7);
}

uint64_t sub_1C4603368(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v83 = a5;
  v84 = a4;
  v86 = a3;
  v82 = a1;
  v6 = sub_1C4EF9CD8();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v75 = &v69[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v9);
  v74 = &v69[-v12];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v69[-v14];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v69[-v17];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v69[-v19];
  swift_beginAccess();
  v22 = v7 + 2;
  v21 = v7[2];
  v85 = a2;
  v21(v15, a2, v6);
  sub_1C4EF9BE8();
  v78 = v7;
  v25 = v7[1];
  v24 = v7 + 1;
  v23 = v25;
  v25(v15, v6);
  sub_1C4607804(&qword_1EDDFCD70, MEMORY[0x1E6969530]);
  if (sub_1C4F01068())
  {
    (v78[4])(v20, v18, v6);
  }

  else
  {
    v23(v18, v6);
    v21(v20, v82, v6);
  }

  v26 = v21;
  v27 = v20;
  v28 = v85;
  swift_beginAccess();
  v26(v15, v28, v6);
  sub_1C466A824(v15, v27);
  v77 = v15;
  v23(v15, v6);
  v29 = v23;
  if (qword_1EDDFA668 != -1)
  {
    swift_once();
  }

  v30 = sub_1C4F00978();
  v31 = sub_1C442B738(v30, qword_1EDE2DDE0);
  v32 = v74;
  v82 = v27;
  v26(v74, v27, v6);
  v73 = v31;
  v33 = sub_1C4F00968();
  v34 = sub_1C4F01CC8();
  v35 = os_log_type_enabled(v33, v34);
  v81 = v22;
  v80 = v26;
  v79 = v24;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v88[0] = v72;
    *v36 = 136315394;
    swift_beginAccess();
    v71 = v33;
    v37 = v77;
    v80(v77, v28, v6);
    sub_1C4607804(&qword_1EDDFCD50, MEMORY[0x1E6969530]);
    v38 = v6;
    v39 = v29;
    v40 = sub_1C4F02858();
    v70 = v34;
    v42 = v41;
    v39(v37, v38);
    v43 = v40;
    v29 = v39;
    v6 = v38;
    v44 = sub_1C441D828(v43, v42, v88);

    *(v36 + 4) = v44;
    *(v36 + 12) = 2080;
    v45 = sub_1C4F02858();
    v47 = v46;
    v29(v32, v38);
    v28 = v85;
    v48 = sub_1C441D828(v45, v47, v88);

    *(v36 + 14) = v48;
    v49 = v71;
    _os_log_impl(&dword_1C43F8000, v71, v70, "BehaviorFeaturizer: Starting histogram batched digest from %s to %s", v36, 0x16u);
    v50 = v72;
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v50, -1, -1);
    v51 = v36;
    v26 = v80;
    MEMORY[0x1C6942830](v51, -1, -1);
  }

  else
  {

    v29(v32, v6);
  }

  v52 = v75;
  v53 = v84[10];
  v54 = v84[11];
  sub_1C4409678(v84 + 7, v53);
  swift_beginAccess();
  v26(v52, v28, v6);
  v55 = v76;
  (*(*(v54 + 8) + 8))(v52, v82, v83, v86, v53);
  if (v55)
  {
    v75 = v6;
    v29(v52, v6);
    v56 = v55;
    v57 = sub_1C4F00968();
    v58 = sub_1C4F01CE8();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v87 = v60;
      *v59 = 136315138;
      swift_getErrorValue();
      v61 = sub_1C4F02A38();
      v63 = sub_1C441D828(v61, v62, &v87);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_1C43F8000, v57, v58, "BehaviorFeaturizer: Error updating eventTracker - %s", v59, 0xCu);
      sub_1C440962C(v60);
      MEMORY[0x1C6942830](v60, -1, -1);
      MEMORY[0x1C6942830](v59, -1, -1);
    }

    else
    {
    }

    v76 = 0;
    v26 = v80;
    v64 = v29;
    v6 = v75;
  }

  else
  {
    v29(v52, v6);
    v76 = 0;
    v64 = v29;
  }

  v65 = v85;
  swift_beginAccess();
  v66 = v77;
  v26(v77, v65, v6);
  v67 = v82;
  sub_1C4603C54(v66, v82, v83, v86);
  v64(v66, v6);
  swift_beginAccess();
  return (v78[5])(v65, v67, v6);
}

uint64_t sub_1C4603C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v114 = a4;
  v113 = a3;
  v112 = a2;
  v111 = a1;
  v4 = 0;
  v5 = sub_1C4EFDAB8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v126 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v110 = &v104 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v125 = &v104 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v117 = &v104 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v104 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v104 - v19;
  result = sub_1C4EFDA58();
  v22 = result;
  v23 = *(result + 16);
  v129 = v6 + 16;
  LODWORD(v120) = *MEMORY[0x1E69A9418];
  v118 = v6;
  v119 = v6 + 104;
  v24 = (v6 + 8);
  v115 = (v6 + 32);
  v116 = MEMORY[0x1E69E7CC0];
  v130 = v5;
  v131 = 0;
  v128 = (v6 + 8);
  v109 = result;
  v108 = v23;
  while (v4 != v23)
  {
    if (v4 >= *(v22 + 16))
    {
      __break(1u);
LABEL_57:
      __break(1u);
      return result;
    }

    v25 = v118;
    v121 = ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v124 = *(v118 + 72);
    v123 = *(v118 + 16);
    v123(v20, &v121[v22 + v124 * v4], v5);
    v122 = v4 + 1;
    (*(v25 + 104))(v18, v120, v5);
    sub_1C4607804(&unk_1EDDEFFC0, MEMORY[0x1E69A9478]);
    v26 = sub_1C4F010B8();
    v27 = *(v25 + 8);
    v27(v18, v5);
    if (v26)
    {
LABEL_10:
      result = (v27)(v20, v5);
      v4 = v122;
    }

    else
    {
      v28 = v20;
      v29 = sub_1C4EFDA68();
      v30 = v29;
      if (*(v29 + 16))
      {
        v31 = *(v29 + 40);
        sub_1C4607804(&qword_1EDDEFFD0, MEMORY[0x1E69A9478]);
        v32 = sub_1C4F00FD8();
        v33 = ~(-1 << *(v30 + 32));
        while (1)
        {
          v34 = v32 & v33;
          if (((*(v30 + 56 + (((v32 & v33) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v32 & v33)) & 1) == 0)
          {
            break;
          }

          v35 = v130;
          v123(v18, (*(v30 + 48) + v34 * v124), v130);
          v36 = sub_1C4F010B8();
          v27(v18, v35);
          v32 = v34 + 1;
          if (v36)
          {

            v5 = v130;
            v24 = v128;
            v20 = v28;
            v22 = v109;
            v23 = v108;
            goto LABEL_10;
          }
        }
      }

      v37 = *v115;
      v20 = v28;
      v5 = v130;
      (*v115)(v117, v28, v130);
      v38 = v116;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v38;
      v132[0] = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v41 = *(v38 + 16);
        sub_1C459D1E0();
        v40 = v132[0];
      }

      v24 = v128;
      v42 = *(v40 + 16);
      if (v42 >= *(v40 + 24) >> 1)
      {
        sub_1C459D1E0();
        v40 = v132[0];
      }

      *(v40 + 16) = v42 + 1;
      v116 = v40;
      result = v37(&v121[v40 + v42 * v124], v117, v5);
      v22 = v109;
      v23 = v108;
      v4 = v122;
    }
  }

  v43 = 0;
  result = v116;
  v115 = *(v116 + 16);
  v109 = 0x80000001C4F8D9E0;
  v108 = 0x80000001C4F8DA00;
  v107 = 0x80000001C4F8DA20;
  v106 = 0x80000001C4F8DA40;
  v105 = 0x80000001C4F8DA60;
  *&v44 = 136315650;
  v120 = v44;
  *&v44 = 136315394;
  v104 = v44;
  while (v43 != v115)
  {
    if (v43 >= *(result + 16))
    {
      goto LABEL_57;
    }

    v45 = result + ((*(v118 + 80) + 32) & ~*(v118 + 80));
    v46 = *(v118 + 72);
    v117 = v43;
    v47 = v125;
    v124 = *(v118 + 16);
    v48 = v124(v125, v45 + v46 * v43, v5);
    MEMORY[0x1EEE9AC00](v48);
    *(&v104 - 2) = v127;
    *(&v104 - 1) = v47;
    v49 = v131;
    v50 = sub_1C49BFB70();
    v51 = objc_autoreleasePoolPush();
    sub_1C4609AC8();
    v119 = v50;
    if (v49)
    {
      v52 = v110;
      if (qword_1EDDFA668 != -1)
      {
        swift_once();
      }

      v131 = 0;
      v53 = sub_1C4F00978();
      sub_1C442B738(v53, qword_1EDE2DDE0);
      v124(v52, v125, v5);
      v54 = v49;
      v55 = sub_1C4F00968();
      v56 = sub_1C4F01CE8();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v123 = v51;
        v58 = v52;
        v59 = v57;
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v132[0] = v61;
        *v59 = v104;
        sub_1C4607804(&qword_1EDDEFFB0, MEMORY[0x1E69A9478]);
        v62 = sub_1C4F02858();
        v64 = v63;
        v65 = v58;
        v51 = v123;
        (*v128)(v65, v5);
        v66 = sub_1C441D828(v62, v64, v132);

        *(v59 + 4) = v66;
        *(v59 + 12) = 2112;
        v67 = v49;
        v68 = _swift_stdlib_bridgeErrorToNSError();
        *(v59 + 14) = v68;
        *v60 = v68;
        _os_log_impl(&dword_1C43F8000, v55, v56, "BehaviorFeaturizer: Error updating histograms for %s behaviors - %@", v59, 0x16u);
        sub_1C4607CD4(v60, &qword_1EC0BDA00, &qword_1C4F10D30);
        v69 = v60;
        v50 = v119;
        MEMORY[0x1C6942830](v69, -1, -1);
        sub_1C440962C(v61);
        MEMORY[0x1C6942830](v61, -1, -1);
        MEMORY[0x1C6942830](v59, -1, -1);
      }

      else
      {

        (*v24)(v52, v5);
      }
    }

    else
    {
      v131 = 0;
    }

    objc_autoreleasePoolPop(v51);
    v70 = *(v50 + 16);
    if (v70)
    {
      v71 = (v50 + 40);
      do
      {
        v73 = *(v71 - 1);
        v72 = *v71;
        v74 = v127[15];
        v75 = v127[16];
        sub_1C4409678(v127 + 12, v74);
        ObjectType = swift_getObjectType();
        v77 = *(v75 + 16);
        v78 = swift_unknownObjectRetain();
        v79 = ObjectType;
        v80 = v131;
        v77(v78, v79, v72, v74, v75);
        if (v80)
        {
          v81 = v126;
          if (qword_1EDDFA668 != -1)
          {
            swift_once();
          }

          v131 = 0;
          v82 = sub_1C4F00978();
          sub_1C442B738(v82, qword_1EDE2DDE0);
          v83 = v130;
          v124(v81, v125, v130);
          swift_unknownObjectRetain();
          v84 = v80;
          v85 = sub_1C4F00968();
          v86 = sub_1C4F01CE8();
          swift_unknownObjectRelease();

          if (os_log_type_enabled(v85, v86))
          {
            LODWORD(v123) = v86;
            v87 = swift_slowAlloc();
            v121 = swift_slowAlloc();
            v122 = swift_slowAlloc();
            v132[0] = v122;
            *v87 = v120;
            swift_getObjectType();
            v88 = (*(v72 + 24))();
            v89 = 0xE900000000000079;
            v90 = 0x6144664F656D6954;
            switch(v88)
            {
              case 1:
                v89 = 0xE90000000000006BLL;
                v90 = 0x656557664F796144;
                break;
              case 2:
                v90 = 0xD000000000000011;
                v91 = &v133;
                goto LABEL_49;
              case 3:
                v90 = 0xD00000000000001ALL;
                v91 = &v134;
                goto LABEL_49;
              case 4:
                v90 = 0xD000000000000019;
                v91 = &v135;
                goto LABEL_49;
              case 5:
                v90 = 0xD000000000000011;
                v91 = &v136;
                goto LABEL_49;
              case 6:
                v90 = 0x636F4C6F7263694DLL;
                v92 = 0x6E6F697461;
                goto LABEL_51;
              case 7:
                v90 = 0x6369666963657053;
                v89 = 0xEF687361486F6547;
                break;
              case 8:
                v90 = 0x6547657372616F43;
                v92 = 0x687361486FLL;
LABEL_51:
                v89 = v92 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                break;
              case 9:
                v90 = 0x6F6547656772614CLL;
                v89 = 0xEC00000068736148;
                break;
              case 10:
                v90 = 0xD000000000000012;
                v91 = &v137;
LABEL_49:
                v89 = *(v91 - 32);
                break;
              case 11:
                v89 = 0xE400000000000000;
                v90 = 1766222167;
                break;
              case 12:
                v89 = 0xE900000000000065;
                v90 = 0x646F4D7375636F46;
                break;
              case 13:
                v90 = 0x74536E6F69746F4DLL;
                v89 = 0xEB00000000657461;
                break;
              case 14:
                v90 = 0x6144664F74726150;
                break;
              case 15:
                v89 = 0xEA00000000006B65;
                v90 = 0x6557664F74726150;
                break;
              default:
                break;
            }

            v93 = sub_1C441D828(v90, v89, v132);

            *(v87 + 4) = v93;
            *(v87 + 12) = 2080;
            sub_1C4607804(&qword_1EDDEFFB0, MEMORY[0x1E69A9478]);
            v94 = v126;
            v95 = v130;
            v96 = sub_1C4F02858();
            v98 = v97;
            (*v128)(v94, v95);
            v99 = sub_1C441D828(v96, v98, v132);

            *(v87 + 14) = v99;
            *(v87 + 22) = 2112;
            v100 = v80;
            v101 = _swift_stdlib_bridgeErrorToNSError();
            *(v87 + 24) = v101;
            v102 = v121;
            *v121 = v101;
            _os_log_impl(&dword_1C43F8000, v85, v123, "BehaviorFeaturizer: Error updating %s for %s behaviors - %@", v87, 0x20u);
            sub_1C4607CD4(v102, &qword_1EC0BDA00, &qword_1C4F10D30);
            MEMORY[0x1C6942830](v102, -1, -1);
            v103 = v122;
            swift_arrayDestroy();
            MEMORY[0x1C6942830](v103, -1, -1);
            MEMORY[0x1C6942830](v87, -1, -1);

            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();

            (*v128)(v81, v83);
          }
        }

        else
        {
          swift_unknownObjectRelease();
          v131 = 0;
        }

        v71 += 2;
        --v70;
      }

      while (v70);
    }

    v43 = (v117 + 1);

    v24 = v128;
    v5 = v130;
    (*v128)(v125, v130);
    result = v116;
  }
}

uint64_t sub_1C4604A6C()
{
  v2 = v0;
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  sub_1C4409678((v2 + 56), v4);
  result = (*(*(v3 + 8) + 16))(v4);
  if (!v1)
  {
    v6 = *(v2 + 120);
    v7 = *(v2 + 128);
    sub_1C4409678((v2 + 96), v6);
    (*(v7 + 24))(v6, v7);
    v8 = *(v2 + 136);
    return KeyValueStore.delete(key:)(*(v2 + 152));
  }

  return result;
}

void sub_1C4604B30(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v43 = sub_1C4EFDAB8();
  v9 = *(v43 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a1) = *a1;
  v13 = a2[15];
  v14 = a2[16];
  sub_1C4409678(a2 + 12, v13);
  v42 = a1;
  v15 = sub_1C4609954(a1);
  v17 = v16;
  v18 = (*(v14 + 8))(v15, a3, v15, v16, v13, v14);
  if (v4)
  {
    v41 = a4;
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v19 = sub_1C4F00978();
    sub_1C442B738(v19, qword_1EDE2DDE0);
    v20 = a3;
    v21 = v43;
    (*(v9 + 16))(v12, v20, v43);
    v22 = v4;
    v23 = sub_1C4F00968();
    v24 = sub_1C4F01CE8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v44 = v40;
      *v25 = 136315650;
      v26 = sub_1C460AEA8(v42);
      v28 = sub_1C441D828(v26, v27, &v44);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      sub_1C4607804(&qword_1EDDEFFB0, MEMORY[0x1E69A9478]);
      v29 = sub_1C4F02858();
      v31 = v30;
      (*(v9 + 8))(v12, v21);
      v32 = sub_1C441D828(v29, v31, &v44);

      *(v25 + 14) = v32;
      *(v25 + 22) = 2112;
      v33 = v4;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 24) = v34;
      v35 = v39;
      *v39 = v34;
      _os_log_impl(&dword_1C43F8000, v23, v24, "BehaviorFeaturizer: Error updating %s for %s behaviors - %@", v25, 0x20u);
      sub_1C4607CD4(v35, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v35, -1, -1);
      v36 = v40;
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v36, -1, -1);
      MEMORY[0x1C6942830](v25, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v12, v21);
    }

    v37 = v41;
    *v41 = 0;
    v37[1] = 0;
  }

  else
  {
    *a4 = v18;
    a4[1] = v17;
  }
}

uint64_t sub_1C4604EE4()
{
  v2 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  v6 = sub_1C4EF9CD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *sub_1C4409678((v0 + 56), *(v0 + 80));
  sub_1C45E0884();
  if (v1)
  {

    sub_1C440BAA8(v5, 1, 1, v6);
LABEL_4:
    sub_1C4607CD4(v5, &unk_1EC0B84E0, qword_1C4F0D2D0);
    return 0;
  }

  if (sub_1C44157D4(v5, 1, v6) == 1)
  {
    goto LABEL_4;
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_1C4EF9B78();
  v14 = v13;
  (*(v7 + 8))(v10, v6);
  return v14;
}

void sub_1C46050E8()
{
  sub_1C46059D4();
  if (!v0 && v1 != 0.0)
  {
    sub_1C46059D4();
  }
}

void sub_1C460519C(uint64_t a1, __int128 *a2, unint64_t a3)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v11 = -1;
  v6 = HIDWORD(a3) & 1;
  v7 = a3;
  sub_1C4605810(v9, a2, a3 | (v6 << 32));
  if (!v3 && v8 != 0.0)
  {
    sub_1C4605810(a1, a2, v7 | (v6 << 32));
  }
}

double sub_1C4605238(uint64_t a1, __int128 *a2, unint64_t a3)
{
  v10 = *a2;
  v11 = a2[1];
  v5 = *(a2 + 4);
  v6 = *(a2 + 40);
  sub_1C45D72D0(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_trackedBehaviorType, (v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource), v12);
  if (v13 == 255)
  {
    return 0.0;
  }

  v14[0] = v10;
  v14[1] = v11;
  v15 = v5;
  v16 = v6;
  sub_1C4605764(v12, v14, a3 | ((HIDWORD(a3) & 1) << 32));
  v8 = v7;
  sub_1C4607CD4(v12, &qword_1EC0B9A20, &unk_1C4F10DF0);
  return v8;
}

double sub_1C460532C(__int128 *a1, uint64_t a2, unint64_t a3)
{
  v10 = *a1;
  v11 = a1[1];
  v5 = *(a1 + 4);
  v6 = *(a1 + 40);
  sub_1C45D72D0(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_trackedBehaviorType, (v3 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource), v12);
  if (v13 == 255)
  {
    return 0.0;
  }

  v14[0] = v10;
  v14[1] = v11;
  v15 = v5;
  v16 = v6;
  sub_1C460519C(v14, v12, a3 | ((HIDWORD(a3) & 1) << 32));
  v8 = v7;
  sub_1C4607CD4(v12, &qword_1EC0B9A20, &unk_1C4F10DF0);
  return v8;
}

uint64_t sub_1C4605420(char a1, uint64_t a2)
{
  v6 = v2[15];
  v5 = v2[16];
  sub_1C4409678(v2 + 12, v6);
  switch(a1)
  {
    case 1:
      v15 = type metadata accessor for PartOfDayBehaviorHistogram(0);
      result = (*(v5 + 8))(v15, a2, v15, &off_1F43E3C88, v6, v5);
      break;
    case 3:
      v13 = type metadata accessor for DayOfWeekBehaviorHistogram(0);
      result = (*(v5 + 8))(v13, a2, v13, &off_1F43E3BC8, v6, v5);
      break;
    case 4:
      v10 = type metadata accessor for PartOfWeekBehaviorHistogram(0);
      result = (*(v5 + 8))(v10, a2, v10, &off_1F43E3B08, v6, v5);
      break;
    case 5:
      v16 = type metadata accessor for LocationOfInterestBehaviorHistogram(0);
      result = (*(v5 + 8))(v16, a2, v16, &off_1F43E3248, v6, v5);
      break;
    case 6:
      v17 = type metadata accessor for MicroLocationBehaviorHistogram(0);
      result = (*(v5 + 8))(v17, a2, v17, &off_1F43E3648, v6, v5);
      break;
    case 7:
      v14 = type metadata accessor for SpecificGeoHashBehaviorHistogram(0);
      result = (*(v5 + 8))(v14, a2, v14, &off_1F43E3548, v6, v5);
      break;
    case 8:
      v19 = type metadata accessor for CoarseGeoHashBehaviorHistogram(0);
      result = (*(v5 + 8))(v19, a2, v19, &off_1F43E3448, v6, v5);
      break;
    case 9:
      v12 = type metadata accessor for LargeGeoHashBehaviorHistogram(0);
      result = (*(v5 + 8))(v12, a2, v12, &off_1F43E3348, v6, v5);
      break;
    case 10:
      v18 = type metadata accessor for WiFiBehaviorHistogram(0);
      result = (*(v5 + 8))(v18, a2, v18, &off_1F43E3148, v6, v5);
      break;
    case 11:
      v9 = type metadata accessor for FocusModeBehaviorHistogram(0);
      result = (*(v5 + 8))(v9, a2, v9, &off_1F43E3048, v6, v5);
      break;
    case 12:
      v11 = type metadata accessor for MotionStateBehaviorHistogram(0);
      result = (*(v5 + 8))(v11, a2, v11, &off_1F43E3748, v6, v5);
      break;
    default:
      v7 = type metadata accessor for TimeOfDayBehaviorHistogram(0);
      result = (*(v5 + 8))(v7, a2, v7, &off_1F43E3D48, v6, v5);
      break;
  }

  return result;
}

uint64_t *sub_1C4605674()
{
  sub_1C440962C(v0 + 2);
  sub_1C440962C(v0 + 7);
  sub_1C440962C(v0 + 12);
  v1 = v0[17];

  v2 = v0[20];

  sub_1C440962C(v0 + 21);
  return v0;
}

uint64_t sub_1C46056BC()
{
  sub_1C4605674();

  return swift_deallocClassInstance();
}

void sub_1C4605764(__int128 *a1, uint64_t a2, unint64_t a3)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v10 = -1;
  sub_1C4605810(a2, v8, 0x100000000);
  if (!v3 && v7 != 0.0)
  {
    sub_1C4605810(a2, a1, a3 | ((HIDWORD(a3) & 1) << 32));
  }
}

void sub_1C4605810(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 4);
  v9 = *(a2 + 40);
  v10 = sub_1C442DD80(a1);
  if (v11)
  {
    v13 = -1;
  }

  else
  {
    v23 = *v10;
    v24 = *(v10 + 16);
    v25 = *(v10 + 32);
    sub_1C461C100();
    if (v4)
    {
      return;
    }

    v13 = v12;
  }

  if (v9 == 255)
  {
    v15 = -1;
    if ((a3 & 0x100000000) != 0)
    {
LABEL_11:
      v21 = OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state;
      sub_1C440F1BC();
      swift_beginAccess();
      sub_1C444FC44(*(v3 + v21), sel_lookupUnsmoothedA_b_);
      goto LABEL_12;
    }

LABEL_9:
    v16 = sub_1C4405898();
    v17 = OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state;
    v19 = v18 / v16;
    sub_1C440F1BC();
    swift_beginAccess();
    *&v20 = v19;
    [*(v3 + v17) lookupSmoothedWithBucketCount:200 distanceScale:v13 a:v15 b:v20];
LABEL_12:
    sub_1C460700C();
    sub_1C43FEC1C(v22);
    return;
  }

  sub_1C461C100();
  if (!v4)
  {
    v15 = v14;
    if ((a3 & 0x100000000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }
}

void sub_1C46059D4()
{
  sub_1C440CAD8();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10[1];
  v32 = *v10;
  v33 = v11;
  v12 = *(v10 + 4);
  v13 = *(v10 + 40);
  v14 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  if (v13 == 255)
  {
    v21 = -1;
  }

  else
  {
    v34[0] = v32;
    v34[1] = v33;
    v35 = v12;
    v36 = v13;
    v20 = v5(v34);
    if (v1)
    {
      goto LABEL_13;
    }

    v21 = v20;
  }

  sub_1C4607C70(v9, v19, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v22 = sub_1C4EF9CD8();
  if (sub_1C44157D4(v19, 1, v22) == 1)
  {
    v23 = -1;
  }

  else
  {
    v23 = 0;
  }

  sub_1C4607CD4(v19, &unk_1EC0B84E0, qword_1C4F0D2D0);
  if ((v7 & 0x100000000) != 0)
  {
    v30 = OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state;
    sub_1C440F1BC();
    swift_beginAccess();
    v29 = [*(v0 + v30) lookupUnsmoothedA:v21 b:v23];
  }

  else
  {
    v24 = sub_1C4405898();
    v25 = OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state;
    v27 = v26 / v24;
    sub_1C440F1BC();
    swift_beginAccess();
    *&v28 = v27;
    v29 = [*(v0 + v25) lookupSmoothedWithBucketCount:1 distanceScale:v21 a:v23 b:v28];
  }

  v31 = v3(v29);
  sub_1C43FEC1C(v31);
LABEL_13:
  sub_1C4402144();
  sub_1C441D144();
}

void sub_1C4605BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1C440C360();
  a25 = v28;
  a26 = v29;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = sub_1C442DD80(v36);
  if (v38)
  {
    v40 = -1;
    if ((v33 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1C441915C(v37);
    sub_1C461C100();
    if (v27)
    {
      goto LABEL_11;
    }

    v40 = v39;
    if ((v33 & 1) == 0)
    {
LABEL_8:
      a10 = v35;
      v41 = sub_1C4616D1C(&a10);
      if ((v31 & 0x100000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }
  }

  v41 = -1;
  if ((v31 & 0x100000000) == 0)
  {
LABEL_9:
    v43 = sub_1C4405898();
    v44 = OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state;
    v46 = v45 / v43;
    sub_1C4411868();
    *&v47 = v46;
    [*(v26 + v44) lookupSmoothedWithBucketCount:7 distanceScale:v40 a:v41 b:v47];
    goto LABEL_10;
  }

LABEL_6:
  v42 = OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state;
  sub_1C4411868();
  sub_1C444FC44(*(v26 + v42), sel_lookupUnsmoothedA_b_);
LABEL_10:
  sub_1C460700C();
  sub_1C43FEC1C(v48);
LABEL_11:
  sub_1C443F0F8();
}

void sub_1C4605CC4()
{
  sub_1C440C360();
  v6 = sub_1C4402C8C(v5);
  if (v7)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_1C43FE990();
    sub_1C461BFE4();
    if (v0)
    {
      goto LABEL_12;
    }

    if ((v3 & 0x100000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v10 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state;
    sub_1C4411868();
    sub_1C444FC44(*(v1 + v10), sel_lookupUnsmoothedA_b_);
    goto LABEL_11;
  }

  sub_1C441915C(v6);
  sub_1C461C118();
  v0 = v2;
  if (v2)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    goto LABEL_7;
  }

LABEL_4:
  if ((v3 & 0x100000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  sub_1C4405898();
  v8 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state;
  sub_1C4411868();
  sub_1C440F320(*(v1 + v8), sel_lookupSmoothedWithBucketCount_distanceScale_a_b_, v9);
LABEL_11:
  sub_1C4607458();
  sub_1C43FEC1C(v11);
LABEL_12:
  sub_1C443F0F8();
}

void sub_1C4605D9C()
{
  sub_1C440C360();
  v6 = sub_1C4402C8C(v5);
  if (v7)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_1C43FE990();
    sub_1C461BFE4();
    if (v0)
    {
      goto LABEL_12;
    }

    if ((v3 & 0x100000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v10 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state;
    sub_1C4411868();
    sub_1C444FC44(*(v1 + v10), sel_lookupUnsmoothedA_b_);
    goto LABEL_11;
  }

  sub_1C441915C(v6);
  sub_1C461C118();
  v0 = v2;
  if (v2)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    goto LABEL_7;
  }

LABEL_4:
  if ((v3 & 0x100000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  sub_1C4405898();
  v8 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state;
  sub_1C4411868();
  sub_1C440F320(*(v1 + v8), sel_lookupSmoothedWithBucketCount_distanceScale_a_b_, v9);
LABEL_11:
  sub_1C460700C();
  sub_1C43FEC1C(v11);
LABEL_12:
  sub_1C443F0F8();
}

void sub_1C4605E84()
{
  sub_1C440C360();
  v6 = sub_1C4402C8C(v5);
  if (v7)
  {
    if (!v4)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_1C43FE990();
    sub_1C461BFE4();
    if (v0)
    {
      goto LABEL_12;
    }

    if ((v3 & 0x100000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v10 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state;
    sub_1C4411868();
    sub_1C444FC44(*(v1 + v10), sel_lookupUnsmoothedA_b_);
    goto LABEL_11;
  }

  sub_1C441915C(v6);
  sub_1C461C118();
  v0 = v2;
  if (v2)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    goto LABEL_7;
  }

LABEL_4:
  if ((v3 & 0x100000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  sub_1C4405898();
  v8 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state;
  sub_1C4411868();
  sub_1C440F320(*(v1 + v8), sel_lookupSmoothedWithBucketCount_distanceScale_a_b_, v9);
LABEL_11:
  v11 = sub_1C4607208();
  sub_1C43FEC1C(v11);
LABEL_12:
  sub_1C443F0F8();
}

void sub_1C4605F5C()
{
  sub_1C440CAD8();
  v42[0] = v2;
  v4 = v3[1];
  v36 = *v3;
  v37 = v4;
  v5 = *(v3 + 4);
  v6 = *(v3 + 40);
  v7 = sub_1C456902C(&qword_1EC0B9DC8, &unk_1C4F124A0);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  v13 = sub_1C4EF9D38();
  v14 = sub_1C43FCDF8(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v21 = v20 - v19;
  if (v6 == 255)
  {
    v23 = -1;
  }

  else
  {
    v38 = v36;
    v39 = v37;
    v40 = v5;
    v41 = v6;
    sub_1C461C118();
    if (v1)
    {
      goto LABEL_15;
    }

    v23 = v22;
  }

  v24 = sub_1C4415864();
  sub_1C4607C70(v24, v25, v26, v27);
  if (sub_1C44157D4(v12, 1, v13) == 1)
  {
    sub_1C4607CD4(v12, &qword_1EC0B9DC8, &unk_1C4F124A0);
    v28 = -1;
  }

  else
  {
    v29 = *(v16 + 32);
    v30 = sub_1C43FD018();
    v31(v30);
    v32 = sub_1C4613268();
    if (v1)
    {
      (*(v16 + 8))(v21, v13);
      goto LABEL_15;
    }

    v28 = v32;
    (*(v16 + 8))(v21, v13);
  }

  v33 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state;
  sub_1C440F1BC();
  swift_beginAccess();
  if ((v42[0] & 0x100000000) != 0)
  {
    [*(v0 + v33) lookupUnsmoothedA:v23 b:v28];
  }

  else
  {
    *&v34 = 1.0 / *v42;
    [*(v0 + v33) lookupSmoothedWithBucketCount:30 distanceScale:v23 a:v28 b:v34];
  }

  sub_1C4607458();
  sub_1C43FEC1C(v35);
LABEL_15:
  sub_1C4402144();
  sub_1C441D144();
}

void sub_1C4606218(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  v9 = v7;
  v13 = sub_1C442DD80(a1);
  if (v14)
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    if ((a4 & 0x100000000) != 0)
    {
LABEL_10:
      v19 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state;
      sub_1C4411868();
      sub_1C444FC44(*(v6 + v19), sel_lookupUnsmoothedA_b_);
      goto LABEL_11;
    }

LABEL_8:
    sub_1C4405898();
    v17 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state;
    sub_1C4411868();
    sub_1C440F320(*(v6 + v17), sel_lookupSmoothedWithBucketCount_distanceScale_a_b_, v18);
LABEL_11:
    sub_1C460700C();
    sub_1C43FEC1C(v20);
    return;
  }

  v15 = sub_1C441915C(v13);
  v16(v15);
  v9 = v7;
  if (v7)
  {
    return;
  }

  if (a3)
  {
    goto LABEL_7;
  }

LABEL_4:
  a6(a2);
  if (!v9)
  {
    if ((a4 & 0x100000000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }
}

void sub_1C460632C()
{
  sub_1C440C360();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = sub_1C442DD80(v7);
  if (v9)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_1C441915C(v8);
    sub_1C461C118();
    v2 = v1;
    if (v1)
    {
      goto LABEL_12;
    }

    if ((v6 & 1) == 0)
    {
LABEL_4:
      sub_1C461C130();
      if (v2)
      {
        goto LABEL_12;
      }

      if ((v4 & 0x100000000) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }
  }

  if ((v4 & 0x100000000) != 0)
  {
LABEL_10:
    v12 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state;
    sub_1C4411868();
    sub_1C444FC44(*(v0 + v12), sel_lookupUnsmoothedA_b_);
    goto LABEL_11;
  }

LABEL_8:
  sub_1C4405898();
  v10 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state;
  sub_1C4411868();
  sub_1C440F320(*(v0 + v10), sel_lookupSmoothedWithBucketCount_distanceScale_a_b_, v11);
LABEL_11:
  sub_1C4607458();
  sub_1C43FEC1C(v13);
LABEL_12:
  sub_1C443F0F8();
}

void sub_1C460649C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C440CAD8();
  sub_1C4425910(v17, v18, v19, v20, v21, v22);
  v23 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v23);
  v25 = *(v24 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v26);
  v27 = sub_1C442EAA4();
  v28 = sub_1C43FCDF8(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  if (v16 == 255)
  {
    v33 = -1;
  }

  else
  {
    v31 = sub_1C4404C0C();
    v32 = v14(v31);
    if (v11)
    {
      goto LABEL_13;
    }

    v33 = v32;
  }

  sub_1C4607C70(v43, v15, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C446BE1C(v15);
  if (v34)
  {
    sub_1C4607CD4(v15, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v13 = -1;
  }

  else
  {
    v35 = sub_1C4415F70();
    v36(v35);
    v42(v12);
    v37 = sub_1C4402184();
    v38(v37);
  }

  v39 = OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state;
  sub_1C440F1BC();
  swift_beginAccess();
  if ((a10 & 0x100000000) != 0)
  {
    [*(v10 + v39) lookupUnsmoothedA:v33 b:v13];
  }

  else
  {
    sub_1C440BB70(*(v10 + v39), sel_lookupSmoothedWithBucketCount_distanceScale_a_b_, v40);
  }

  sub_1C4607620();
  sub_1C43FEC1C(v41);
LABEL_13:
  sub_1C4402144();
  sub_1C441D144();
}

void sub_1C4606718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C440CAD8();
  sub_1C4425910(v17, v18, v19, v20, v21, v22);
  v23 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v23);
  v25 = *(v24 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v26);
  v27 = sub_1C442EAA4();
  v28 = sub_1C43FCDF8(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  if (v16 == 255)
  {
    v33 = -1;
  }

  else
  {
    v31 = sub_1C4404C0C();
    v32 = v14(v31);
    if (v11)
    {
      goto LABEL_13;
    }

    v33 = v32;
  }

  sub_1C4607C70(v43, v15, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C446BE1C(v15);
  if (v34)
  {
    sub_1C4607CD4(v15, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v13 = -1;
  }

  else
  {
    v35 = sub_1C4415F70();
    v36(v35);
    v42(v12);
    v37 = sub_1C4402184();
    v38(v37);
  }

  v39 = OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state;
  sub_1C440F1BC();
  swift_beginAccess();
  if ((a10 & 0x100000000) != 0)
  {
    [*(v10 + v39) lookupUnsmoothedA:v33 b:v13];
  }

  else
  {
    sub_1C440BB70(*(v10 + v39), sel_lookupSmoothedWithBucketCount_distanceScale_a_b_, v40);
  }

  sub_1C460700C();
  sub_1C43FEC1C(v41);
LABEL_13:
  sub_1C4402144();
  sub_1C441D144();
}

double sub_1C460691C()
{
  v1 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v22 - v3;
  v5 = sub_1C4EF9CD8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - v11;
  v13 = v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state;
  swift_beginAccess();
  v14 = type metadata accessor for DecayingHistogramState();
  sub_1C4607C70(v13 + *(v14 + 20), v4, &unk_1EC0B84E0, qword_1C4F0D2D0);
  if (sub_1C44157D4(v4, 1, v5) == 1)
  {
    sub_1C4607CD4(v4, &unk_1EC0B84E0, qword_1C4F0D2D0);
    return 1.0;
  }

  else
  {
    v16 = (*(v6 + 32))(v12, v4, v5);
    v17 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_timeSource);
    v18 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_timeSource + 8);
    v17(v16);
    sub_1C4EF9B78();
    v15 = 1.0;
    if (v19 > 0.0)
    {
      v15 = exp2(v19 / -1209600.0);
    }

    v20 = *(v6 + 8);
    v20(v10, v5);
    v20(v12, v5);
  }

  return v15;
}

double sub_1C4606B6C()
{
  v1 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v22 - v3;
  v5 = sub_1C4EF9CD8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - v11;
  v13 = v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state;
  swift_beginAccess();
  v14 = type metadata accessor for DecayingHistogramState();
  sub_1C4607C70(v13 + *(v14 + 20), v4, &unk_1EC0B84E0, qword_1C4F0D2D0);
  if (sub_1C44157D4(v4, 1, v5) == 1)
  {
    sub_1C4607CD4(v4, &unk_1EC0B84E0, qword_1C4F0D2D0);
    return 1.0;
  }

  else
  {
    v16 = (*(v6 + 32))(v12, v4, v5);
    v17 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_timeSource);
    v18 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_timeSource + 8);
    v17(v16);
    sub_1C4EF9B78();
    v15 = 1.0;
    if (v19 > 0.0)
    {
      v15 = exp2(v19 / -21600.0);
    }

    v20 = *(v6 + 8);
    v20(v10, v5);
    v20(v12, v5);
  }

  return v15;
}

double sub_1C4606DBC()
{
  v1 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v22 - v3;
  v5 = sub_1C4EF9CD8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - v11;
  v13 = v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state;
  swift_beginAccess();
  v14 = type metadata accessor for DecayingHistogramState();
  sub_1C4607C70(v13 + *(v14 + 20), v4, &unk_1EC0B84E0, qword_1C4F0D2D0);
  if (sub_1C44157D4(v4, 1, v5) == 1)
  {
    sub_1C4607CD4(v4, &unk_1EC0B84E0, qword_1C4F0D2D0);
    return 1.0;
  }

  else
  {
    v16 = (*(v6 + 32))(v12, v4, v5);
    v17 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_timeSource);
    v18 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_timeSource + 8);
    v17(v16);
    sub_1C4EF9B78();
    v15 = 1.0;
    if (v19 > 0.0)
    {
      v15 = exp2(v19 / -604800.0);
    }

    v20 = *(v6 + 8);
    v20(v10, v5);
    v20(v12, v5);
  }

  return v15;
}

void sub_1C460700C()
{
  sub_1C43FEC28();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29[-v9];
  v11 = sub_1C4EF9CD8();
  v12 = sub_1C43FCDF8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29[-v18];
  v20 = v0 + *v4;
  sub_1C440F1BC();
  swift_beginAccess();
  v21 = type metadata accessor for DecayingHistogramState();
  sub_1C4607C70(v20 + *(v21 + 20), v10, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C440582C(v10);
  if (v22)
  {
    sub_1C4607CD4(v10, &unk_1EC0B84E0, qword_1C4F0D2D0);
  }

  else
  {
    v23 = (*(v14 + 32))(v19, v10, v11);
    v24 = v0 + *v2;
    v25 = *(v24 + 8);
    (*v24)(v23);
    sub_1C4EF9B78();
    if (v26 > 0.0)
    {
      exp2(v26 / -2592000.0);
    }

    v27 = *(v14 + 8);
    v28 = sub_1C43FD024();
    v27(v28);
    (v27)(v19, v11);
  }

  sub_1C440C378();
  sub_1C44086C4();
}

double sub_1C4607208()
{
  v1 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v22 - v3;
  v5 = sub_1C4EF9CD8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - v11;
  v13 = v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state;
  swift_beginAccess();
  v14 = type metadata accessor for DecayingHistogramState();
  sub_1C4607C70(v13 + *(v14 + 20), v4, &unk_1EC0B84E0, qword_1C4F0D2D0);
  if (sub_1C44157D4(v4, 1, v5) == 1)
  {
    sub_1C4607CD4(v4, &unk_1EC0B84E0, qword_1C4F0D2D0);
    return 1.0;
  }

  else
  {
    v16 = (*(v6 + 32))(v12, v4, v5);
    v17 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_timeSource);
    v18 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_timeSource + 8);
    v17(v16);
    sub_1C4EF9B78();
    v15 = 1.0;
    if (v19 > 0.0)
    {
      v15 = exp2(v19 / -15768000.0);
    }

    v20 = *(v6 + 8);
    v20(v10, v5);
    v20(v12, v5);
  }

  return v15;
}

void sub_1C4607458()
{
  sub_1C43FEC28();
  v2 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C4460188();
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4402CA8();
  sub_1C440F1BC();
  swift_beginAccess();
  v16 = type metadata accessor for DecayingHistogramState();
  sub_1C441C0D8(v16);
  sub_1C440582C(v1);
  if (v17)
  {
    sub_1C4607CD4(v1, &unk_1EC0B84E0, qword_1C4F0D2D0);
  }

  else
  {
    v18 = sub_1C441584C();
    v20 = v19(v18);
    v21 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_timeSource);
    v22 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_timeSource + 8);
    v21(v20);
    sub_1C4EF9B78();
    if (v23 > 0.0)
    {
      exp2(v23 / -3456000.0);
    }

    v24 = *(v9 + 8);
    v24(v14, v6);
    v25 = sub_1C43FD024();
    (v24)(v25);
  }

  sub_1C440C378();
  sub_1C44086C4();
}

void sub_1C4607620()
{
  sub_1C43FEC28();
  v2 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C4460188();
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4402CA8();
  sub_1C440F1BC();
  swift_beginAccess();
  v16 = type metadata accessor for DecayingHistogramState();
  sub_1C441C0D8(v16);
  sub_1C440582C(v1);
  if (v17)
  {
    sub_1C4607CD4(v1, &unk_1EC0B84E0, qword_1C4F0D2D0);
  }

  else
  {
    v18 = sub_1C441584C();
    v20 = v19(v18);
    v21 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_timeSource);
    v22 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_timeSource + 8);
    v21(v20);
    sub_1C4EF9B78();
    if (v23 > 0.0)
    {
      exp2(v23 / -5184000.0);
    }

    v24 = *(v9 + 8);
    v24(v14, v6);
    v25 = sub_1C43FD024();
    (v24)(v25);
  }

  sub_1C440C378();
  sub_1C44086C4();
}

uint64_t sub_1C4607804(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1C460784C(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_1C43FCE64();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  v66[3] = v23;
  v66[4] = v24;
  v53 = sub_1C4422F90(v66);
  (*(v16 + 32))(v53, a1, a6);
  v65[3] = a8;
  v65[4] = a11;
  sub_1C4422F90(v65);
  sub_1C440A6B8(a8);
  (*(v25 + 32))();
  v64[3] = a7;
  v64[4] = a10;
  sub_1C4422F90(v64);
  sub_1C440A6B8(a7);
  (*(v26 + 32))();
  sub_1C448BD48(v66, v63);
  sub_1C448BD48(v65, v62);
  sub_1C448BD48(v64, v61);
  sub_1C448BD48(v65, v58);
  sub_1C4418280(v58, v59);
  sub_1C43FCE64();
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBCC4();
  v31 = sub_1C443FA8C(v30);
  v32(v31);
  v33 = *a1;
  (*(v16 + 16))(v22, v53, a6);
  v34 = sub_1C469A798(v22, v33, a6, a9);
  sub_1C440962C(v58);
  sub_1C4418280(v62, v62[3]);
  sub_1C43FCE64();
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBCC4();
  v39 = sub_1C443FA8C(v38);
  v40(v39);
  v41 = *a1;
  v42 = type metadata accessor for BehaviorDatabaseEventTracker();
  v59 = v42;
  v60 = &off_1F43E2390;
  v58[0] = v41;
  v56 = type metadata accessor for BehaviorEventTimeIntervalCalculator();
  v57 = &off_1F43E6980;
  *&v55 = v34;
  v43 = swift_allocObject();
  sub_1C4418280(v58, v42);
  sub_1C43FCE64();
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBCC4();
  v49 = (v48 - v47);
  (*(v50 + 16))(v48 - v47);
  v51 = *v49;
  v43[10] = v42;
  v43[11] = &off_1F43E2390;
  v43[7] = v51;
  v43[18] = 0x413BAF8000000000;
  sub_1C440962C(v64);
  sub_1C440962C(v65);
  sub_1C440962C(v66);
  v43[19] = 0xD000000000000023;
  v43[20] = 0x80000001C4F8DA80;
  sub_1C441D670(v63, (v43 + 2));
  sub_1C441D670(v61, (v43 + 12));
  v43[17] = a4;
  sub_1C441D670(&v55, (v43 + 21));
  sub_1C440962C(v58);
  sub_1C440962C(v62);
  return v43;
}

uint64_t sub_1C4607C70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1C456902C(a3, a4);
  sub_1C440A6B8(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4607CD4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1C456902C(a2, a3);
  sub_1C440A6B8(v4);
  (*(v5 + 8))(a1);
  return a1;
}

_OWORD *sub_1C4607D48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v263 = a2;
  v264 = a1;
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1C43FBFDC();
  v255 = v6;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v7);
  v257 = &v249 - v8;
  v9 = sub_1C4EF9CD8();
  sub_1C43FCE64();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBFDC();
  v258 = v15;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  v259 = (&v249 - v17);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v18);
  v256 = &v249 - v19;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v249 - v21;
  v262 = v3;
  v23 = v3[2];
  v24 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheStartDate;
  sub_1C440F1BC();
  swift_beginAccess();
  v25 = v11 + 16;
  v26 = *(v11 + 16);
  v260 = v24;
  v27 = sub_1C442593C();
  v26(v27);
  sub_1C4498DE4(&qword_1EDDFCD70);
  LOBYTE(v24) = sub_1C4F01068();
  v253 = v11;
  v28 = v11 + 8;
  v29 = *(v11 + 8);
  v29(v22, v9);
  v261 = v26;
  if ((v24 & 1) == 0)
  {
    v30 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheEndDate;
    sub_1C440F1BC();
    swift_beginAccess();
    v252 = v30;
    v31 = sub_1C442593C();
    v26(v31);
    v32 = sub_1C4F01068();
    v29(v22, v9);
    if ((v32 & 1) == 0)
    {
      v258 = v22;
      v259 = v29;
      v254 = v25;
      v117 = v9;
      v264 = v28;
      v118 = v23;
      v119 = v262;
      sub_1C440F1BC();
      swift_beginAccess();
      sub_1C44600A0((v119 + 20), &v268, &qword_1EC0B9DD0, &qword_1C4F12550);
      if (v269)
      {
        sub_1C460986C(&v268, &v270);
        return sub_1C460986C(&v270, v263);
      }

      sub_1C4423A0C(&v268, &qword_1EC0B9DD0, &qword_1C4F12550);
      if (qword_1EDDFA668 != -1)
      {
        sub_1C4406728();
      }

      v132 = sub_1C4F00978();
      v133 = sub_1C442B738(v132, qword_1EDE2DDE0);
      v134 = sub_1C4F00968();
      v135 = sub_1C4F01CC8();
      if (sub_1C43FD0E8(v135))
      {
        v136 = sub_1C43FCED0();
        sub_1C4433150(v136);
        sub_1C440A62C(&dword_1C43F8000, v137, v138, "CachedBehaviorFeaturizerProvider: Creating new featurizer since one was not already cached");
        sub_1C4412D04();
      }

      sub_1C442E860((v119 + 3), &v270);
      v140 = v119[18];
      v139 = v119[19];
      sub_1C442B95C();
      sub_1C43FCE64();
      v142 = *(v141 + 64);
      MEMORY[0x1EEE9AC00](v143);
      v145 = sub_1C441917C(v144, v249);
      v146(v145);
      v147 = *v32;

      v250 = v140;
      v148 = sub_1C46093E4(v118, v147, v139, v140);
      sub_1C440962C(&v270);
      v149 = v148[17];
      v150 = v148[19];
      v151 = v148[20];
      v251 = v148;
      v152 = v257;
      sub_1C446FB00();
      if (sub_1C44157D4(v152, 1, v117) == 1)
      {
        v153 = sub_1C4F00968();
        v154 = sub_1C4F01CF8();
        if (sub_1C43FD0E8(v154))
        {
          v155 = sub_1C43FCED0();
          sub_1C4433150(v155);
          sub_1C440A62C(&dword_1C43F8000, v156, v157, "CachedBehaviorFeaturizerProvider: Creating new featurizer without cached context since the featurizer has no stored state indicating what interval it will query over.");
          sub_1C4412D04();
        }

        v264 = type metadata accessor for BehaviorFeaturizer();
        sub_1C442E860(v118 + 16, &v270);
        sub_1C442E860((v119 + 3), &v268);
        sub_1C442E860(v118 + 16, v267);
        sub_1C442E860((v119 + 13), v266);
        sub_1C442E860((v119 + 8), v265);
        sub_1C440DF00();
        sub_1C43FCE64();
        v159 = *(v158 + 64);
        MEMORY[0x1EEE9AC00](v160);
        v162 = sub_1C441917C(v161, v249);
        v163(v162);
        sub_1C43FBFF0();
        sub_1C43FCE64();
        v165 = *(v164 + 64);
        MEMORY[0x1EEE9AC00](v166);
        sub_1C43FBCC4();
        v168 = sub_1C43FFE0C(v167);
        v169(v168);
        v170 = sub_1C4411888();
        v174 = sub_1C45EC8F8(v170, v171, v172, v173, v133);
        sub_1C440962C(v267);
        sub_1C440962C(v265);
        v175 = v271;
        v176 = v272;
        sub_1C442B95C();
        sub_1C43FCE64();
        v178 = *(v177 + 64);
        MEMORY[0x1EEE9AC00](v179);
        sub_1C43FBCC4();
        v181 = sub_1C4412CF0(v180);
        v182(v181);
        sub_1C4418280(&v268, v269);
        sub_1C43FCE64();
        v184 = *(v183 + 64);
        MEMORY[0x1EEE9AC00](v185);
        sub_1C43FBCC4();
        v187 = sub_1C4402CB8(v186);
        v188(v187);
        v267[0] = v174;
        v189 = type metadata accessor for CachedBehaviorDatabaseHistogramManager();
        v190 = type metadata accessor for BehaviorDatabaseEventTracker();
        v191 = v250;

        v192 = v191;
        v193 = v264;
        sub_1C460784C(v133, &v249, v267, v192, v264, v175, v189, v190, v176, &off_1F43E24F0, &off_1F43E2390);
        sub_1C440F340();
        sub_1C440962C(&v270);
        v194 = v263;
        v263[3] = v193;
        v194[4] = &off_1F43E2F70;
        v194[5] = &off_1F43E2F40;

        *v194 = v175;
LABEL_25:
        v195 = v257;
        return sub_1C4423A0C(v195, &unk_1EC0B84E0, qword_1C4F0D2D0);
      }

      v196 = v255;
      sub_1C44600A0(v152, v255, &unk_1EC0B84E0, qword_1C4F0D2D0);
      if (sub_1C44157D4(v196, 1, v117) == 1)
      {
        sub_1C4423A0C(v196, &unk_1EC0B84E0, qword_1C4F0D2D0);
      }

      else
      {
        (*(v253 + 32))(v256, v196, v117);
        v200 = v261;
        v255 = v118;
        v201 = v258;
        v261(v258, &v260[v118], v117);
        v202 = sub_1C4EF9C18();
        v203 = v259;
        v259(v201, v117);
        if (v202 & 1) != 0 || (v200(v201, v255 + v252, v117), v204 = sub_1C4EF9C08(), v203(v201, v117), (v204))
        {
          v261 = v117;
          v205 = sub_1C4F00968();
          v206 = sub_1C4F01CF8();
          if (sub_1C43FD0E8(v206))
          {
            v207 = sub_1C43FCED0();
            sub_1C4433150(v207);
            sub_1C440A62C(&dword_1C43F8000, v208, v209, "CachedBehaviorFeaturizerProvider: Creating new featurizer without cached context since the featurizer's state doesn't match the cache provider.");
            sub_1C4412D04();
          }

          v210 = type metadata accessor for BehaviorFeaturizer();
          sub_1C442E860(v118 + 16, &v270);
          sub_1C442E860((v119 + 3), &v268);
          sub_1C442E860(v118 + 16, v267);
          sub_1C442E860((v119 + 13), v266);
          sub_1C442E860((v119 + 8), v265);
          sub_1C440DF00();
          sub_1C43FCE64();
          v212 = *(v211 + 64);
          MEMORY[0x1EEE9AC00](v213);
          v215 = sub_1C441917C(v214, v249);
          v216(v215);
          v217 = *v203;
          v218 = v267[4];
          sub_1C4418280(v267, v267[3]);
          sub_1C43FEC44();
          sub_1C43FCE64();
          v220 = *(v219 + 64);
          MEMORY[0x1EEE9AC00](v221);
          sub_1C43FBCC4();
          v223 = sub_1C43FFE0C(v222);
          v224(v223);
          v225 = sub_1C4411888();
          v229 = sub_1C45EC8F8(v225, v226, v227, v228, v218);
          sub_1C440962C(v267);
          sub_1C440962C(v265);
          v230 = v271;
          v231 = v272;
          sub_1C442B95C();
          v262 = &v249;
          sub_1C43FCE64();
          v233 = *(v232 + 64);
          MEMORY[0x1EEE9AC00](v234);
          sub_1C43FBCC4();
          v237 = (v236 - v235);
          (*(v238 + 16))(v236 - v235);
          sub_1C4418280(&v268, v269);
          sub_1C43FEC44();
          sub_1C43FCE64();
          v240 = *(v239 + 64);
          MEMORY[0x1EEE9AC00](v241);
          sub_1C43FBCC4();
          v243 = sub_1C4402CB8(v242);
          v244(v243);
          v267[0] = v229;
          v245 = type metadata accessor for CachedBehaviorDatabaseHistogramManager();
          v246 = type metadata accessor for BehaviorDatabaseEventTracker();
          v247 = v250;

          sub_1C460784C(v237, &v249, v267, v247, v210, v230, v245, v246, v231, &off_1F43E24F0, &off_1F43E2390);
          sub_1C440F340();
          sub_1C440962C(&v270);
          v248 = v263;
          v263[3] = v210;
          v248[4] = &off_1F43E2F70;
          v248[5] = &off_1F43E2F40;

          *v248 = v230;
          v259(v256, v261);
          goto LABEL_25;
        }

        v203(v256, v117);
      }

      v197 = type metadata accessor for BehaviorFeaturizer();
      v272 = &off_1F43E2F70;
      v273 = &off_1F43E2F40;
      v271 = v197;
      v198 = v251;
      *&v270 = v251;
      sub_1C4434E40();

      sub_1C46097FC(&v270, (v119 + 20));
      swift_endAccess();
      v199 = v263;
      v263[3] = v197;
      v199[4] = &off_1F43E2F70;
      v199[5] = &off_1F43E2F40;
      *v199 = v198;
      v195 = v152;
      return sub_1C4423A0C(v195, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }
  }

  v33 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_contextCacheEndDate;
  sub_1C440F1BC();
  swift_beginAccess();
  v34 = sub_1C442593C();
  v26(v34);
  v35 = sub_1C4EF9C08();
  v29(v22, v9);
  if (v35)
  {
    v36 = v28;
    v37 = v29;
    v38 = sub_1C442593C();
    v40 = v39;
    v41 = v261;
    (v261)(v38);
    v42 = v9;
    v264 = v36;
    v43 = v259;
    v41(v259, &v260[v40], v9);
    sub_1C4EF9B78();
    v37(v43, v9);
    v44 = sub_1C440A6C4();
    (v37)(v44);
    v41(v22, (v40 + v33), v9);
    v257 = v33;
    v45 = v258;
    v254 = v25;
    v41(v258, (v40 + v33), v42);
    v46 = v41;
    sub_1C4EF9BE8();
    v37(v45, v42);
    v47 = v37;
    v48 = v40;
    sub_1C466A824(v22, v43);
    v47(v43, v42);
    v49 = sub_1C440A6C4();
    v259 = v47;
    (v47)(v49);
    v50 = v262;
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406728();
    }

    v51 = sub_1C4F00978();
    sub_1C442B738(v51, qword_1EDE2DDE0);

    v52 = sub_1C4F00968();
    v53 = sub_1C4F01CB8();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      LODWORD(v256) = v53;
      v55 = v54;
      v258 = swift_slowAlloc();
      *&v270 = v258;
      *v55 = 136315394;
      v56 = sub_1C440D0DC();
      v46(v56);
      v255 = sub_1C4498DE4(&qword_1EDDFCD50);
      v260 = v52;
      v57 = sub_1C4F02858();
      v59 = v58;
      v60 = sub_1C440A6C4();
      v61 = v259;
      (v259)(v60);
      v62 = sub_1C441D828(v57, v59, &v270);

      *(v55 + 4) = v62;
      *(v55 + 12) = 2080;
      v63 = sub_1C440D0DC();
      (v261)(v63);
      v64 = sub_1C4F02858();
      v66 = v65;
      v67 = sub_1C440A6C4();
      v61(v67);
      v68 = sub_1C441D828(v64, v66, &v270);

      *(v55 + 14) = v68;
      v69 = v260;
      _os_log_impl(&dword_1C43F8000, v260, v256, "CachedBehaviorFeaturizerProvider: Moving cache forward to %s until %s", v55, 0x16u);
      v70 = v258;
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v70, -1, -1);
      sub_1C4412D04();
    }

    else
    {
    }

    sub_1C442E860((v50 + 3), &v270);
    v121 = v50[18];
    v120 = v50[19];
    sub_1C4418280(&v270, v271);
    sub_1C43FCE64();
    v123 = *(v122 + 64);
    MEMORY[0x1EEE9AC00](v124);
    sub_1C43FBCC4();
    v126 = sub_1C4412CF0(v125);
    v127(v126);
    v128 = *v42;

    v129 = sub_1C46093E4(v48, v128, v120, v121);
    sub_1C440962C(&v270);
    v130 = type metadata accessor for BehaviorFeaturizer();
    v272 = &off_1F43E2F70;
    v273 = &off_1F43E2F40;
    v271 = v130;
    *&v270 = v129;
    sub_1C4434E40();

    sub_1C46097FC(&v270, (v50 + 20));
    result = swift_endAccess();
    v131 = v263;
    v263[3] = v130;
    v131[4] = &off_1F43E2F70;
    v131[5] = &off_1F43E2F40;
    *v131 = v129;
  }

  else
  {
    v71 = v262;
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406728();
    }

    v72 = sub_1C4F00978();
    sub_1C442B738(v72, qword_1EDE2DDE0);
    v73 = sub_1C4F00968();
    v74 = sub_1C4F01CE8();
    if (sub_1C43FD0E8(v74))
    {
      v75 = sub_1C43FCED0();
      sub_1C4433150(v75);
      sub_1C440A62C(&dword_1C43F8000, v76, v77, "CachedBehaviorFeaturizerProvider error: Received non-sequential date");
      sub_1C4412D04();
    }

    v264 = type metadata accessor for BehaviorFeaturizer();
    sub_1C442E860(v23 + 16, &v270);
    sub_1C442E860(v71 + 24, &v268);
    sub_1C442E860(v23 + 16, v267);
    sub_1C442E860(v71 + 104, v266);
    sub_1C442E860(v71 + 64, v265);
    sub_1C440DF00();
    sub_1C43FCE64();
    v79 = *(v78 + 64);
    MEMORY[0x1EEE9AC00](v80);
    v82 = sub_1C441917C(v81, v249);
    v83(v82);
    sub_1C43FBFF0();
    sub_1C43FEC44();
    sub_1C43FCE64();
    v85 = *(v84 + 64);
    MEMORY[0x1EEE9AC00](v86);
    sub_1C43FBCC4();
    v88 = sub_1C43FFE0C(v87);
    v89(v88);
    v90 = sub_1C4411888();
    v94 = sub_1C45EC8F8(v90, v91, v92, v93, v71);
    sub_1C440962C(v267);
    sub_1C440962C(v265);
    v95 = *(v71 + 144);
    v96 = v271;
    v97 = v272;
    sub_1C442B95C();
    sub_1C43FCE64();
    v99 = *(v98 + 64);
    MEMORY[0x1EEE9AC00](v100);
    sub_1C43FBCC4();
    v102 = sub_1C4412CF0(v101);
    v103(v102);
    sub_1C4418280(&v268, v269);
    sub_1C43FEC44();
    sub_1C43FCE64();
    v105 = *(v104 + 64);
    MEMORY[0x1EEE9AC00](v106);
    sub_1C43FBCC4();
    v109 = v108 - v107;
    (*(v110 + 16))(v108 - v107);
    v267[0] = v94;
    v111 = type metadata accessor for CachedBehaviorDatabaseHistogramManager();
    v112 = type metadata accessor for BehaviorDatabaseEventTracker();

    v113 = v95;
    v114 = v264;
    sub_1C460784C(v71, v109, v267, v113, v264, v96, v111, v112, v97, &off_1F43E24F0, &off_1F43E2390);
    sub_1C440F340();
    result = sub_1C440962C(&v270);
    v116 = v263;
    v263[3] = v114;
    v116[4] = &off_1F43E2F70;
    v116[5] = &off_1F43E2F40;
    *v116 = v96;
  }

  return result;
}

uint64_t sub_1C460924C()
{
  sub_1C440F1BC();
  swift_beginAccess();
  if (!*(v0 + 184) || (sub_1C4609884(v0 + 160, &v5), v2 = *(&v6 + 1), v3 = *(&v7 + 1), sub_1C4409678(&v5, *(&v6 + 1)), (*(v3 + 16))(v2, v3), result = sub_1C440962C(&v5), !v1))
  {
    v6 = 0u;
    v7 = 0u;
    v5 = 0u;
    swift_beginAccess();
    sub_1C46097FC(&v5, v0 + 160);
    return swift_endAccess();
  }

  return result;
}

uint64_t *sub_1C460932C()
{
  v1 = v0[2];

  sub_1C440962C(v0 + 3);
  sub_1C440962C(v0 + 8);
  sub_1C440962C(v0 + 13);
  v2 = v0[18];

  v3 = v0[19];

  sub_1C4423A0C((v0 + 20), &qword_1EC0B9DD0, &qword_1C4F12550);
  return v0;
}

uint64_t sub_1C460938C()
{
  sub_1C460932C();

  return swift_deallocClassInstance();
}

void *sub_1C46093E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v7 = type metadata accessor for CachedContextProvider();
  v50[3] = v7;
  v50[4] = &off_1F43E5FE8;
  v50[0] = a1;
  v8 = type metadata accessor for BehaviorDatabaseEventTracker();
  v49[3] = v8;
  v49[4] = &off_1F43E2390;
  v49[0] = a2;
  v48[3] = type metadata accessor for CachedBehaviorDatabaseHistogramManager();
  v48[4] = &off_1F43E24F0;
  v48[0] = a3;
  sub_1C442E860(v50, v47);
  sub_1C442E860(v49, v45);
  sub_1C442E860(v48, v44);
  sub_1C442E860(v49, v41);
  v9 = v42;
  v10 = sub_1C4418280(v41, v42);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v39 = v7;
  v40 = &off_1F43E5FE8;
  v37[4] = &off_1F43E2390;
  *&v38 = a1;
  v37[3] = v8;
  v37[0] = v15;
  v16 = type metadata accessor for BehaviorEventTimeIntervalCalculator();
  v17 = swift_allocObject();
  v18 = sub_1C4418280(v37, v8);
  v19 = *(v8 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = *(v19 + 16);
  v22(&v35 - v21);
  v23 = *(&v35 - v21);
  v17[10] = v8;
  v17[11] = &off_1F43E2390;
  v17[7] = v23;
  sub_1C441D670(&v38, (v17 + 2));

  sub_1C440962C(v37);
  sub_1C440962C(v41);
  v24 = v46;
  v25 = sub_1C4418280(v45, v46);
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = (&v35 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = *v28;
  v42 = v8;
  v43 = &off_1F43E2390;
  v41[0] = v30;
  v39 = v16;
  v40 = &off_1F43E6980;
  *&v38 = v17;
  type metadata accessor for BehaviorFeaturizer();
  v31 = swift_allocObject();
  v32 = sub_1C4418280(v41, v8);
  MEMORY[0x1EEE9AC00](v32);
  v22(&v35 - v21);
  v33 = *(&v35 - v21);
  v31[10] = v8;
  v31[11] = &off_1F43E2390;
  v31[7] = v33;
  v31[18] = 0x413BAF8000000000;
  sub_1C440962C(v48);
  sub_1C440962C(v49);
  sub_1C440962C(v50);
  v31[19] = 0xD000000000000023;
  v31[20] = 0x80000001C4F8DA80;
  sub_1C441D670(v47, (v31 + 2));
  sub_1C441D670(v44, (v31 + 12));
  v31[17] = v36;
  sub_1C441D670(&v38, (v31 + 21));
  sub_1C440962C(v41);
  sub_1C440962C(v45);
  return v31;
}

uint64_t sub_1C46097FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B9DD0, &qword_1C4F12550);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1C460986C(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_1C4609884(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C46098E8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C461B01C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C4618BE4(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C4609954(char a1)
{
  switch(a1)
  {
    case 1:
      result = type metadata accessor for DayOfWeekBehaviorHistogram(0);
      break;
    case 2:
      result = type metadata accessor for TrendingBehaviorHistogram(0);
      break;
    case 3:
      result = type metadata accessor for ShortTermTrendingBehaviorHistogram(0);
      break;
    case 4:
      result = type metadata accessor for LongTermTrendingBehaviorHistogram(0);
      break;
    case 5:
      result = type metadata accessor for PreviousBehaviorHistogram(0);
      break;
    case 6:
      result = type metadata accessor for MicroLocationBehaviorHistogram(0);
      break;
    case 7:
      result = type metadata accessor for SpecificGeoHashBehaviorHistogram(0);
      break;
    case 8:
      result = type metadata accessor for CoarseGeoHashBehaviorHistogram(0);
      break;
    case 9:
      result = type metadata accessor for LargeGeoHashBehaviorHistogram(0);
      break;
    case 10:
      result = type metadata accessor for LocationOfInterestBehaviorHistogram(0);
      break;
    case 11:
      result = type metadata accessor for WiFiBehaviorHistogram(0);
      break;
    case 12:
      result = type metadata accessor for FocusModeBehaviorHistogram(0);
      break;
    case 13:
      result = type metadata accessor for MotionStateBehaviorHistogram(0);
      break;
    case 14:
      result = type metadata accessor for PartOfDayBehaviorHistogram(0);
      break;
    case 15:
      result = type metadata accessor for PartOfWeekBehaviorHistogram(0);
      break;
    default:
      result = type metadata accessor for TimeOfDayBehaviorHistogram(0);
      break;
  }

  return result;
}

void sub_1C4609AC8()
{
  sub_1C43FE628();
  v2 = v1;
  v185 = v3;
  v173 = v4;
  v186 = v5;
  sub_1C44016B0(v6);
  v7 = sub_1C4EF9CD8();
  v8 = sub_1C43FCDF8(v7);
  v184 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v181 = v12;
  v183 = &v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = sub_1C43FBD18(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBFDC();
  v179 = v17;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FD230();
  v180 = v19;
  sub_1C43FBE44();
  v20 = sub_1C4EFDAB8();
  v21 = sub_1C43FCDF8(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FD230();
  v174 = v27;
  v29 = MEMORY[0x1EEE9AC00](v28);
  v30 = MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C440D100();
  MEMORY[0x1EEE9AC00](v31);
  v36 = &v162 - v35;
  v37 = v2[2];
  if (v37)
  {
    v170 = v34;
    v175 = v33;
    v176 = v32;
    v177 = v7;
    v187 = v0;
    v188 = v2;
    v39 = v2[4];
    v38 = v2[5];
    swift_getObjectType();
    v190 = v23;
    v191 = v20;
    v40 = *(v38 + 64);
    swift_unknownObjectRetain();
    v41 = sub_1C4404C28();
    v40(v41);
    v43 = v190;
    v42 = v191;
    swift_unknownObjectRelease();
    v45 = v43 + 32;
    v44 = *(v43 + 32);
    v46 = sub_1C44191B8();
    v189 = v47;
    v48 = (v47)(v46);
    MEMORY[0x1EEE9AC00](v48);
    *(&v162 - 2) = v36;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v49 = v187;
    sub_1C4B344BC();
    v51 = *(v50 + 16);

    if (v51 == v37)
    {
      MEMORY[0x1EEE9AC00](v52);
      v53 = v186;
      *(&v162 - 2) = v186;
      sub_1C4D37344(sub_1C46184A0, (&v162 - 4), v54);
      v187 = v49;
      v55 = *(v43 + 16);
      v172 = v43 + 16;
      v171 = v55;
      v55(v170, v36, v42);
      v56 = *(v43 + 88);
      v57 = sub_1C4402CD0();
      v59 = v58(v57);
      v60 = *MEMORY[0x1E69A9420];
      v182 = v36;
      if (v59 == v60)
      {
        v61 = v184[2];
        v62 = sub_1C440C384((v184 + 2));
        v61(v62);
        sub_1C4409A84();
        sub_1C440BAA8(v63, v64, v65, v66);
        v67 = v179;
        v169 = v61;
        (v61)(v179, v186, v49);
        sub_1C4409A84();
        sub_1C440BAA8(v68, v69, v70, v71);
        sub_1C44191B8();
        v72 = v185;
        sub_1C466A96C();
        v74 = v73;
        sub_1C4420C3C(v67, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v75 = sub_1C44191B8();
        sub_1C4420C3C(v75, v76, qword_1C4F0D2D0);
        sub_1C44016B0(v74);
      }

      else
      {
        v168 = v173[3];
        v167 = v173[4];
        v173 = sub_1C4409678(v173, v168);
        v90 = v184[2];
        v91 = sub_1C440C384((v184 + 2));
        v90(v91);
        sub_1C4409A84();
        sub_1C440BAA8(v92, v93, v94, v95);
        v96 = v179;
        v169 = v90;
        (v90)(v179, v53, v49);
        v43 = v190;
        v42 = v191;
        sub_1C4409A84();
        sub_1C440BAA8(v97, v98, v99, v100);
        v101 = v167[3];
        v102 = sub_1C44191B8();
        v104 = v103(v102);
        sub_1C44016B0(v104);
        sub_1C4420C3C(v96, &unk_1EC0B84E0, qword_1C4F0D2D0);
        sub_1C4420C3C(v36, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v105 = *(v43 + 8);
        sub_1C44016B0(v178);
        v106 = sub_1C4402CD0();
        v105(v106);
        v72 = v185;
      }

      v107 = *(v72 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_lastBehaviorEventDigested);
      v173 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_lastBehaviorEventDigested;
      *(v72 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_lastBehaviorEventDigested) = 0;

      v108 = swift_allocObject();
      v180 = v108;
      *(v108 + 16) = 0;
      v170 = (v108 + 16);
      v109 = swift_allocObject();
      v179 = v109;
      *(v109 + 16) = 0;
      v163 = (v109 + 16);
      v168 = objc_autoreleasePoolPush();
      v110 = v175;
      sub_1C442A36C();
      sub_1C461C16C();
      v111();
      v112 = *(v43 + 80);
      v165 = v112 | 7;
      v113 = swift_allocObject();
      (v189)(v113 + ((v112 + 16) & ~v112), v110, v42);
      v198 = sub_1C46184BC;
      v199 = v113;
      v194 = MEMORY[0x1E69E9820];
      v195 = 1107296256;
      v166 = &v196;
      v196 = sub_1C44405F8;
      v197 = &unk_1F43E3E40;
      v167 = _Block_copy(&v194);

      v164 = v45;
      v114 = v177;
      v169(v183, v186, v177);
      sub_1C442A36C();
      sub_1C461C16C();
      v115();
      v116 = v184;
      v117 = (*(v184 + 80) + 24) & ~*(v184 + 80);
      v118 = (v181 + v117 + 7) & 0xFFFFFFFFFFFFFFF8;
      v119 = (v118 + 15) & 0xFFFFFFFFFFFFFFF8;
      v120 = (v119 + 15) & 0xFFFFFFFFFFFFFFF8;
      v121 = swift_allocObject();
      *(v121 + 16) = v188;
      (v116[4])(v121 + v117, v183, v114);
      v122 = v185;
      *(v121 + v118) = v185;
      *(v121 + v119) = v179;
      v123 = v191;
      *(v121 + v120) = v180;
      (v189)(v121 + ((v112 + v120 + 8) & ~v112), v175, v123);
      v198 = sub_1C4618524;
      v199 = v121;
      v194 = MEMORY[0x1E69E9820];
      v195 = 1107296256;
      v196 = sub_1C45DFE08;
      v197 = &unk_1F43E3E90;
      v124 = _Block_copy(&v194);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v125 = v122;

      v126 = v178;
      v127 = v167;
      v128 = [v178 sinkWithCompletion:v167 receiveInput:v124];
      _Block_release(v124);
      _Block_release(v127);

      objc_autoreleasePoolPop(v168);
      v129 = v170;
      sub_1C440F1BC();
      swift_beginAccess();
      v130 = v126;
      if (*v129 >= 1)
      {
        v131 = v163;
        sub_1C440F1BC();
        swift_beginAccess();
        v132 = *v131;
        if (qword_1EDDFA668 != -1)
        {
          sub_1C4406758();
          swift_once();
        }

        v133 = sub_1C4F00978();
        sub_1C442B738(v133, qword_1EDE2DDE0);
        v134 = v174;
        v171(v174, v182, v123);
        v135 = sub_1C4F00968();
        v136 = sub_1C4F01CB8();
        if (os_log_type_enabled(v135, v136))
        {
          sub_1C44357DC();
          v137 = swift_slowAlloc();
          sub_1C43FEC60();
          v138 = swift_slowAlloc();
          v192 = v138;
          *v137 = 136315394;
          sub_1C441F518();
          sub_1C461861C(v139, v140);
          sub_1C4F02858();
          (*(v190 + 8))(v134, v191);
          v141 = sub_1C43FBC98();
          v144 = sub_1C441D828(v141, v142, v143);

          *(v137 + 4) = v144;
          *(v137 + 12) = 2048;
          *(v137 + 14) = v132;
          _os_log_impl(&dword_1C43F8000, v135, v136, "[tracking %s]: Skipped %f%% behavior events during digest due to missing context", v137, 0x16u);
          sub_1C440962C(v138);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {

          (*(v190 + 8))(v134, v123);
        }

        v130 = v178;
      }

      v153 = *(v173 + v125);
      *(v173 + v125) = 0;

      v154 = v188 + 5;
      do
      {
        v156 = *(v154 - 1);
        v155 = *v154;
        swift_getObjectType();
        v157 = *(v155 + 136);
        swift_unknownObjectRetain();
        v158 = sub_1C4404C28();
        v157(v158);
        swift_unknownObjectRelease();
        v154 += 2;
        --v37;
      }

      while (v37);

      v159 = *(v190 + 8);
      v160 = sub_1C43FD258();
      v161(v160);
    }

    else
    {
      if (qword_1EDDFA668 != -1)
      {
        sub_1C4406758();
        swift_once();
      }

      v77 = sub_1C4F00978();
      sub_1C442B738(v77, qword_1EDE2DDE0);
      v78 = v188;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v79 = sub_1C4F00968();
      v80 = sub_1C4F01CE8();

      if (os_log_type_enabled(v79, v80))
      {
        LODWORD(v186) = v80;
        v187 = v79;
        v182 = v36;
        v81 = swift_slowAlloc();
        sub_1C43FEC60();
        v184 = swift_slowAlloc();
        v194 = v184;
        v185 = v81;
        *v81 = 136315138;
        v193 = MEMORY[0x1E69E7CC0];
        sub_1C459D1E0();
        v82 = v193;
        v83 = v78 + 5;
        do
        {
          v85 = *(v83 - 1);
          v84 = *v83;
          swift_getObjectType();
          v86 = *(v84 + 64);
          swift_unknownObjectRetain();
          v87 = sub_1C4404C28();
          v86(v87);
          swift_unknownObjectRelease();
          v193 = v82;
          v88 = *(v82 + 16);
          if (v88 >= *(v82 + 24) >> 1)
          {
            sub_1C459D1E0();
            v82 = v193;
          }

          *(v82 + 16) = v88 + 1;
          v43 = v190;
          v42 = v191;
          v89 = v82 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v190 + 72) * v88;
          sub_1C442A36C();
          v189();
          v83 += 2;
          --v37;
        }

        while (v37);
        MEMORY[0x1C6940380](v82, v42);

        v145 = sub_1C43FBC98();
        v148 = sub_1C441D828(v145, v146, v147);

        v149 = v185;
        *(v185 + 1) = v148;
        v150 = v187;
        _os_log_impl(&dword_1C43F8000, v187, v186, "Mismatch histogram behavior types. Skipping digest of histograms: %s", v149, 0xCu);
        sub_1C440962C(v184);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();

        v36 = v182;
      }

      else
      {
      }

      sub_1C461844C();
      sub_1C441C114();
      v151 = swift_allocError();
      sub_1C440ED9C(v151, v152);
      swift_willThrow();
      (*(v43 + 8))(v36, v42);
    }
  }

  sub_1C44109F8();
}

void sub_1C460A8F4()
{
  sub_1C43FE628();
  v48 = v2;
  v45 = v3;
  v5 = v4;
  v6 = *v4;
  v42 = *(v4 + 16);
  v43 = v6;
  v41 = *(v4 + 32);
  v40 = *(v4 + 40);
  v46 = *(v7 + 16);
  swift_getAssociatedTypeWitness();
  sub_1C442A8A4();
  v8 = sub_1C4F01F48();
  v9 = sub_1C43FCDF8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBFDC();
  v39 = v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4425958();
  sub_1C43FCE64();
  v44 = v16;
  v18 = *(v17 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - v20;
  v22 = sub_1C4422248();
  v23(v22);
  if (sub_1C44157D4(v1, 1, v0) == 1)
  {
    v24 = *(v11 + 8);
    v25 = sub_1C43FFE24();
    v26(v25);
  }

  else
  {
    v38 = v8;
    v27 = v44;
    v28 = *(v44 + 32);
    sub_1C442A36C();
    v29();
    v30 = v39;
    (*(v27 + 16))(v39, v21, v0);
    sub_1C43FBD94();
    sub_1C440BAA8(v31, v32, v33, v0);
    v50[1] = v42;
    v50[0] = v43;
    v51 = v41;
    v52 = v40;
    sub_1C45A2358(v5, &v49);
    sub_1C4462768();
    sub_1C46B7B6C(v30, v50, v34, v47, v35);
    sub_1C45EC75C(v5);
    v36 = sub_1C44416E4();
    v37(v36);
    (*(v27 + 8))(v21, v0);
  }

  sub_1C4402144();
  sub_1C44109F8();
}

void sub_1C460ABD4()
{
  sub_1C43FE628();
  v53 = v2;
  v50 = v3;
  v5 = v4;
  v6 = *v4;
  v46 = *(v4 + 16);
  v47 = v6;
  v45 = *(v4 + 32);
  v44 = *(v4 + 40);
  v51 = *(v7 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1C4F01F48();
  v10 = sub_1C43FCDF8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBD08();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C4425958();
  sub_1C43FCE64();
  v49 = v19;
  v21 = *(v20 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v22);
  v48 = v43 - v23;
  v24 = sub_1C4422248();
  v25(v24);
  sub_1C4414160(v1);
  if (v26)
  {
    v27 = *(v12 + 8);
    v28 = sub_1C43FFE24();
    v29(v28);
  }

  else
  {
    v43[1] = v9;
    v31 = v48;
    v30 = v49;
    (*(v49 + 32))(v48, v1, AssociatedTypeWitness);
    v55[1] = v46;
    v55[0] = v47;
    v56 = v45;
    v57 = v44;
    (*(v30 + 16))(v17, v31, AssociatedTypeWitness);
    sub_1C43FBD94();
    sub_1C440BAA8(v32, v33, v34, AssociatedTypeWitness);
    sub_1C45A2358(v5, &v54);
    sub_1C4462768();
    sub_1C46B79C0(v55, v17, v35, v52, v36);
    v37 = sub_1C443E140();
    v38(v37);
    sub_1C45EC75C(v5);
    if (v0)
    {
      v39 = *(v30 + 8);
    }

    else
    {
      v42 = *(v30 + 8);
    }

    v40 = sub_1C440CAF0();
    v41(v40);
  }

  sub_1C4402144();
  sub_1C44109F8();
}

unint64_t sub_1C460AEA8(char a1)
{
  result = 0x6144664F656D6954;
  switch(a1)
  {
    case 1:
      result = 0x656557664F796144;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x636F4C6F7263694DLL;
      break;
    case 7:
      result = 0x6369666963657053;
      break;
    case 8:
      result = 0x6547657372616F43;
      break;
    case 9:
      result = 0x6F6547656772614CLL;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 1766222167;
      break;
    case 12:
      result = 0x646F4D7375636F46;
      break;
    case 13:
      result = 0x74536E6F69746F4DLL;
      break;
    case 14:
      result = 0x6144664F74726150;
      break;
    case 15:
      result = 0x6557664F74726150;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C460B094(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  while (1)
  {
    v5 = byte_1F43D1348[v4++ + 32];
    v6 = 0xE900000000000079;
    v7 = 0x6144664F656D6954;
    switch(v5)
    {
      case 1:
        v7 = 0x656557664F796144;
        v6 = 0xE90000000000006BLL;
        break;
      case 2:
        v7 = 0xD000000000000011;
        v6 = 0x80000001C4F8DA60;
        break;
      case 3:
        v7 = 0xD00000000000001ALL;
        v6 = 0x80000001C4F8DA40;
        break;
      case 4:
        v7 = 0xD000000000000019;
        v6 = 0x80000001C4F8DA20;
        break;
      case 5:
        v7 = 0xD000000000000011;
        v6 = 0x80000001C4F8DA00;
        break;
      case 6:
        v7 = 0x636F4C6F7263694DLL;
        v8 = 0x6E6F697461;
        goto LABEL_18;
      case 7:
        v7 = 0x6369666963657053;
        v6 = 0xEF687361486F6547;
        break;
      case 8:
        v7 = 0x6547657372616F43;
        v8 = 0x687361486FLL;
LABEL_18:
        v6 = v8 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        break;
      case 9:
        v7 = 0x6F6547656772614CLL;
        v6 = 0xEC00000068736148;
        break;
      case 10:
        v7 = 0xD000000000000012;
        v6 = 0x80000001C4F8D9E0;
        break;
      case 11:
        v6 = 0xE400000000000000;
        v7 = 1766222167;
        break;
      case 12:
        v6 = 0xE900000000000065;
        v7 = 0x646F4D7375636F46;
        break;
      case 13:
        v7 = 0x74536E6F69746F4DLL;
        v6 = 0xEB00000000657461;
        break;
      case 14:
        v7 = 0x6144664F74726150;
        break;
      case 15:
        v6 = 0xEA00000000006B65;
        v7 = 0x6557664F74726150;
        break;
      default:
        break;
    }

    if (v7 == a1 && v6 == a2)
    {
      break;
    }

    v10 = sub_1C4F02938();

    if (v10)
    {
      goto LABEL_28;
    }

    if (v4 == 16)
    {
      v5 = 16;
      goto LABEL_28;
    }
  }

LABEL_28:

  return v5;
}

uint64_t sub_1C460B42C(uint64_t a1, SEL *a2)
{
  sub_1C442A8A4();
  v5 = sub_1C4EF9FD8();
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v11 = *v3;
  sub_1C440F1BC();
  swift_beginAccess();
  v12 = [*(v2 + v11) *a2];
  sub_1C4EF9FA8();

  v13 = sub_1C4EF9FB8();
  v14 = *(v8 + 8);
  v15 = sub_1C43FFE3C();
  result = v16(v15);
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(v13 >> 16))
  {
    return v13;
  }

  __break(1u);
  return result;
}

void sub_1C460B534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v23;
  a20 = v24;
  v79 = v20;
  v86 = v25;
  v88 = v26;
  v87 = v27;
  v29 = v28;
  v31 = v30;
  v96 = sub_1C4EFDAB8();
  v32 = sub_1C43FCDF8(v96);
  v83 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBFDC();
  v81 = v36;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FD230();
  v82 = v38;
  sub_1C43FBE44();
  v39 = type metadata accessor for DecayingHistogramState();
  v40 = sub_1C43FBCE0(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBFDC();
  v80 = v43;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v44);
  v46 = v78 - v45;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C440D100();
  v48 = objc_autoreleasePoolPush();
  v49 = sub_1C4EF9348();
  sub_1C43FD23C(v49);
  swift_allocObject();
  sub_1C4EF9338();
  sub_1C4431FA4();
  sub_1C461861C(v50, v51);
  v84 = v31;
  v85 = v29;
  sub_1C4EF9328();

  objc_autoreleasePoolPop(v48);
  if (v21)
  {
    sub_1C4428958();
    sub_1C440962C(v86);
    sub_1C440962C(v88);
    (*(v83 + 8))(v87, v96);
  }

  else
  {
    v78[4] = v22;
    v78[2] = v46;
    sub_1C461B8B4(v22, v46);
    v52 = v83;
    v53 = *(v83 + 16);
    v78[5] = 0;
    v53(v82, v87, v96);
    sub_1C442E860(v88, v93);
    sub_1C442E860(v86, v92);
    sub_1C4418280(v93, v93[3]);
    v78[3] = v78;
    sub_1C43FCE64();
    v55 = *(v54 + 64);
    MEMORY[0x1EEE9AC00](v56);
    sub_1C43FBCC4();
    sub_1C4405820();
    (*(v57 + 16))(0);
    v58 = MEMORY[0];
    v78[1] = MEMORY[0];
    sub_1C461B8B4(v46, v80);
    v59 = sub_1C4466CCC(&v94);
    (v53)(v59);
    sub_1C442E860(v92, v91);
    v60 = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
    v90[3] = v60;
    v90[4] = &off_1F43E2510;
    v90[0] = v58;
    sub_1C43FD23C(v79);
    v61 = swift_allocObject();
    sub_1C4418280(v90, v60);
    v79 = v78;
    sub_1C43FCE64();
    v63 = v62;
    v65 = *(v64 + 64);
    MEMORY[0x1EEE9AC00](v66);
    v67 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
    v68 = *(v63 + 16);
    v68(v78 - v67);
    v69 = *(v78 - v67);
    v89[4] = &off_1F43E2510;
    v89[3] = v60;
    v89[0] = v69;
    v70 = sub_1C4418280(v89, v60);
    MEMORY[0x1EEE9AC00](v70);
    v68(v78 - v67);
    v71 = *(v78 - v67);
    v72 = (v61 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_behaviorKeySource);
    v72[3] = v60;
    v72[4] = &off_1F43E2510;
    *v72 = v71;
    sub_1C44191A0();
    sub_1C461B9D8(v80, v61 + v73);
    (*(v52 + 32))(v61 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_trackedBehaviorType, v81, v96);
    sub_1C443FA18(v91, v61 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource);
    v74 = (v61 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_timeSource);
    *v74 = sub_1C461C054;
    v74[1] = 0;

    sub_1C440962C(v89);
    sub_1C440962C(v90);
    sub_1C4428958();
    sub_1C440962C(v86);
    sub_1C440962C(v88);
    v75 = *(v52 + 8);
    v76 = sub_1C4466CCC(&a13);
    v75(v76);
    sub_1C440962C(v92);
    v77 = sub_1C4466CCC(&v95);
    v75(v77);
    sub_1C461B820();
    sub_1C4466CCC(v93);
    sub_1C461B820();

    sub_1C440962C(v93);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C460BB78()
{
  v2 = type metadata accessor for DecayingHistogramState();
  v3 = sub_1C43FBCE0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  sub_1C44109B4();
  v6 = sub_1C4EF93D8();
  sub_1C43FD23C(v6);
  swift_allocObject();
  sub_1C4EF93C8();
  v7 = OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state;
  sub_1C440F1BC();
  swift_beginAccess();
  sub_1C4412D20();
  sub_1C461B8B4(v0 + v7, v1);
  sub_1C4431FA4();
  sub_1C461861C(v8, v9);
  sub_1C4EF93B8();
  sub_1C440DF1C();
  sub_1C461B820();

  return sub_1C44A1BCC();
}

void sub_1C460BC84()
{
  sub_1C43FE96C();
  v3 = v2;
  v5 = v4;
  v6 = v0;
  sub_1C442A8A4();
  v7 = sub_1C4EFDAB8();
  v8 = sub_1C43FCDF8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  sub_1C45D5A24(v14 - v13);
  v16 = *v5;
  sub_1C441F518();
  sub_1C461861C(v17, v18);
  LOBYTE(v16) = sub_1C4F010B8();
  (*(v10 + 8))(v15, v7);
  if (v16)
  {
    v19 = v6 + *v3;
    sub_1C4414918();
    swift_beginAccess();
    v20 = *(v19 + 24);
    v21 = *(v19 + 32);
    sub_1C4418280(v19, v20);
    (*(v21 + 8))(v1, v20, v21);
    swift_endAccess();
  }

  else
  {
    sub_1C461B7AC();
    sub_1C441C114();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
  }

  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C460BE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C4440CCC();
  sub_1C456902C(&qword_1EC0B87A0, &unk_1C4F0DB90);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C4F0D130;
  *(v7 + 32) = v5;
  *(v7 + 40) = a5;

  sub_1C4609AC8();
}

uint64_t sub_1C460BED8(uint64_t a1)
{
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-v8];
  v10 = sub_1C4EF9CD8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = (v1 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state);
  swift_beginAccess();
  v16 = type metadata accessor for DecayingHistogramState();
  sub_1C4467FE0(v15 + *(v16 + 20), v9);
  if (sub_1C44157D4(v9, 1, v10) == 1)
  {
    return sub_1C4420C3C(v9, &unk_1EC0B84E0, qword_1C4F0D2D0);
  }

  (*(v11 + 32))(v14, v9, v10);
  if ((sub_1C4EF9C18() & 1) == 0)
  {
    return (*(v11 + 8))(v14, v10);
  }

  v18 = *v15;
  sub_1C4EF9B78();
  v19 = v20;
  LODWORD(v20) = 1.0;
  if (v19 > 0.0)
  {
    v20 = exp2(v19 / -15768000.0);
    *&v20 = v20;
  }

  [v18 decayByFactor_];

  (*(v11 + 8))(v14, v10);
  (*(v11 + 16))(v7, a1, v10);
  sub_1C440BAA8(v7, 0, 1, v10);
  swift_beginAccess();
  sub_1C45AD734(v7, v15 + *(v16 + 20));
  return swift_endAccess();
}

uint64_t sub_1C460C18C(uint64_t a1)
{
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-v8];
  v10 = sub_1C4EF9CD8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = (v1 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state);
  swift_beginAccess();
  v16 = type metadata accessor for DecayingHistogramState();
  sub_1C4467FE0(v15 + *(v16 + 20), v9);
  if (sub_1C44157D4(v9, 1, v10) == 1)
  {
    return sub_1C4420C3C(v9, &unk_1EC0B84E0, qword_1C4F0D2D0);
  }

  (*(v11 + 32))(v14, v9, v10);
  if ((sub_1C4EF9C18() & 1) == 0)
  {
    return (*(v11 + 8))(v14, v10);
  }

  v18 = *v15;
  sub_1C4EF9B78();
  v19 = v20;
  LODWORD(v20) = 1.0;
  if (v19 > 0.0)
  {
    v20 = exp2(v19 / -604800.0);
    *&v20 = v20;
  }

  [v18 decayByFactor_];

  (*(v11 + 8))(v14, v10);
  (*(v11 + 16))(v7, a1, v10);
  sub_1C440BAA8(v7, 0, 1, v10);
  swift_beginAccess();
  sub_1C45AD734(v7, v15 + *(v16 + 20));
  return swift_endAccess();
}

void sub_1C460C440()
{
  sub_1C43FBD3C();
  v3 = v2;
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v5 = sub_1C43FBD18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  sub_1C43FD248();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FC010();
  v9 = sub_1C4EF9CD8();
  v10 = sub_1C43FCDF8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v15 = (v0 + *v3);
  sub_1C440F1BC();
  swift_beginAccess();
  v16 = type metadata accessor for DecayingHistogramState();
  sub_1C448DF88(v16);
  sub_1C4413EA8();
  if (v17)
  {
    sub_1C4420C3C(v1, &unk_1EC0B84E0, qword_1C4F0D2D0);
  }

  else
  {
    v18 = sub_1C4424F64();
    v19(v18);
    v20 = sub_1C4EF9C18();
    if (v20)
    {
      v21 = *v15;
      sub_1C4416A8C();
      *&v22 = sub_1C4417F7C();
      if (!v17 & v24)
      {
        v22 = exp2(v23 / -2592000.0);
        *&v22 = v22;
      }

      [v1 decayByFactor_];

      v25 = sub_1C443452C();
      v26(v25);
      v27 = sub_1C44601A8();
      v28(v27);
      v29 = sub_1C43FC024();
      sub_1C440BAA8(v29, v30, v31, v9);
      sub_1C4414918();
      swift_beginAccess();
      sub_1C44A172C();
      swift_endAccess();
    }

    else
    {
      v32 = *(v12 + 8);
      v33 = sub_1C4422A18();
      v34(v33);
    }
  }

  sub_1C43FE9F0();
}

void sub_1C460C630()
{
  sub_1C43FBD3C();
  v2 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v3 = sub_1C43FBD18(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD08();
  sub_1C43FD248();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FC010();
  v7 = sub_1C4EF9CD8();
  v8 = sub_1C43FCDF8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v13 = (v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state);
  sub_1C440F1BC();
  swift_beginAccess();
  v14 = type metadata accessor for DecayingHistogramState();
  sub_1C448DF88(v14);
  sub_1C4413EA8();
  if (v15)
  {
    sub_1C4420C3C(v1, &unk_1EC0B84E0, qword_1C4F0D2D0);
  }

  else
  {
    v16 = sub_1C4424F64();
    v17(v16);
    v18 = sub_1C4EF9C18();
    if (v18)
    {
      v19 = *v13;
      sub_1C4416A8C();
      *&v20 = sub_1C4417F7C();
      if (!v15 & v22)
      {
        v20 = exp2(v21 / -5184000.0);
        *&v20 = v20;
      }

      [v1 decayByFactor_];

      v23 = sub_1C443452C();
      v24(v23);
      v25 = sub_1C44601A8();
      v26(v25);
      v27 = sub_1C43FC024();
      sub_1C440BAA8(v27, v28, v29, v7);
      sub_1C4414918();
      swift_beginAccess();
      sub_1C44A172C();
      swift_endAccess();
    }

    else
    {
      v30 = *(v10 + 8);
      v31 = sub_1C4422A18();
      v32(v31);
    }
  }

  sub_1C43FE9F0();
}

void sub_1C460C820()
{
  sub_1C43FBD3C();
  v2 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v3 = sub_1C43FBD18(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD08();
  sub_1C43FD248();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FC010();
  v7 = sub_1C4EF9CD8();
  v8 = sub_1C43FCDF8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v13 = (v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state);
  sub_1C440F1BC();
  swift_beginAccess();
  v14 = type metadata accessor for DecayingHistogramState();
  sub_1C448DF88(v14);
  sub_1C4413EA8();
  if (v15)
  {
    sub_1C4420C3C(v1, &unk_1EC0B84E0, qword_1C4F0D2D0);
  }

  else
  {
    v16 = sub_1C4424F64();
    v17(v16);
    v18 = sub_1C4EF9C18();
    if (v18)
    {
      v19 = *v13;
      sub_1C4416A8C();
      *&v20 = sub_1C4417F7C();
      if (!v15 & v22)
      {
        v20 = exp2(v21 / -3456000.0);
        *&v20 = v20;
      }

      [v1 decayByFactor_];

      v23 = sub_1C443452C();
      v24(v23);
      v25 = sub_1C44601A8();
      v26(v25);
      v27 = sub_1C43FC024();
      sub_1C440BAA8(v27, v28, v29, v7);
      sub_1C4414918();
      swift_beginAccess();
      sub_1C44A172C();
      swift_endAccess();
    }

    else
    {
      v30 = *(v10 + 8);
      v31 = sub_1C4422A18();
      v32(v31);
    }
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C460CA10(uint64_t a1)
{
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-v8];
  v10 = sub_1C4EF9CD8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = (v1 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state);
  swift_beginAccess();
  v16 = type metadata accessor for DecayingHistogramState();
  sub_1C4467FE0(v15 + *(v16 + 20), v9);
  if (sub_1C44157D4(v9, 1, v10) == 1)
  {
    return sub_1C4420C3C(v9, &unk_1EC0B84E0, qword_1C4F0D2D0);
  }

  (*(v11 + 32))(v14, v9, v10);
  if ((sub_1C4EF9C18() & 1) == 0)
  {
    return (*(v11 + 8))(v14, v10);
  }

  v18 = *v15;
  sub_1C4EF9B78();
  v19 = v20;
  LODWORD(v20) = 1.0;
  if (v19 > 0.0)
  {
    v20 = exp2(v19 / -1209600.0);
    *&v20 = v20;
  }

  [v18 decayByFactor_];

  (*(v11 + 8))(v14, v10);
  (*(v11 + 16))(v7, a1, v10);
  sub_1C440BAA8(v7, 0, 1, v10);
  swift_beginAccess();
  sub_1C45AD734(v7, v15 + *(v16 + 20));
  return swift_endAccess();
}

uint64_t sub_1C460CCC4(uint64_t a1)
{
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-v8];
  v10 = sub_1C4EF9CD8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = (v1 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state);
  swift_beginAccess();
  v16 = type metadata accessor for DecayingHistogramState();
  sub_1C4467FE0(v15 + *(v16 + 20), v9);
  if (sub_1C44157D4(v9, 1, v10) == 1)
  {
    return sub_1C4420C3C(v9, &unk_1EC0B84E0, qword_1C4F0D2D0);
  }

  (*(v11 + 32))(v14, v9, v10);
  if ((sub_1C4EF9C18() & 1) == 0)
  {
    return (*(v11 + 8))(v14, v10);
  }

  v18 = *v15;
  sub_1C4EF9B78();
  v19 = v20;
  LODWORD(v20) = 1.0;
  if (v19 > 0.0)
  {
    v20 = exp2(v19 / -21600.0);
    *&v20 = v20;
  }

  [v18 decayByFactor_];

  (*(v11 + 8))(v14, v10);
  (*(v11 + 16))(v7, a1, v10);
  sub_1C440BAA8(v7, 0, 1, v10);
  swift_beginAccess();
  sub_1C45AD734(v7, v15 + *(v16 + 20));
  return swift_endAccess();
}

uint64_t sub_1C460CF78(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v38 - v9;
  v10 = sub_1C4EF9CD8();
  v45 = *(v10 - 8);
  v46 = v10;
  v11 = v45[8];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v38 - v15;
  v17 = *(a1 + 64);
  sub_1C4617C00();
  if (v18)
  {
    v19 = *(a1 + 32);
    v48 = *(a1 + 16);
    v49[0] = v19;
    *(v49 + 9) = *(a1 + 41);
    sub_1C460BC84();
    if (v3)
    {
    }

    LODWORD(v42) = v20;
    v23 = sub_1C4613044();
    v40 = v45[2];
    v41 = v45 + 2;
    v40(v16, v17 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v46);
    sub_1C4EF9B78();
    v25 = 1.0;
    if (v24 > 0.0)
    {
      v25 = exp2(v24 / -15768000.0);
    }

    v26 = v45;
    v27 = v16;
    v28 = v46;
    v39 = v45[1];
    v39(v27, v46);
    v29 = (v2 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state);
    swift_beginAccess();
    *&v30 = v25;
    [*v29 add:v42 a:v23 b:v30];
    v31 = type metadata accessor for DecayingHistogramState();
    v32 = v44;
    sub_1C4467FE0(v29 + *(v31 + 20), v44);
    if (sub_1C44157D4(v32, 1, v28) == 1)
    {

      sub_1C4420C3C(v32, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v33 = v43;
      v40(v43, v47, v28);
      sub_1C440BAA8(v33, 0, 1, v28);
      swift_beginAccess();
      v34 = *(v31 + 20);
LABEL_13:
      sub_1C45AD734(v33, v29 + v34);
      return swift_endAccess();
    }

    v42 = v31;
    (v26[4])(v14, v32, v28);
    v35 = v28;
    v36 = v47;
    v37 = sub_1C4EF9C18();

    result = (v39)(v14, v35);
    if (v37)
    {
      v33 = v43;
      v40(v43, v36, v35);
      sub_1C440BAA8(v33, 0, 1, v35);
      swift_beginAccess();
      v34 = *(v42 + 20);
      goto LABEL_13;
    }
  }

  else
  {
    sub_1C461844C();
    swift_allocError();
    *v22 = 0;
    return swift_willThrow();
  }

  return result;
}