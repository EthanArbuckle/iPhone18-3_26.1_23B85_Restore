uint64_t ExtractedMatch.matchReason.getter()
{
  v1 = (v0 + *(type metadata accessor for ExtractedMatch() + 32));
  v2 = *v1;
  v3 = v1[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v2;
}

uint64_t ExtractedMatch.matchReason.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ExtractedMatch() + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ExtractedMatch.confidence.setter(float a1)
{
  result = type metadata accessor for ExtractedMatch();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ExtractedMatch.init(identifier:entityClass:sourceEntity:targetEntity:matchReason:confidence:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>, float a9@<S0>)
{
  v13 = sub_1C4F00DD8();
  v98 = sub_1C43FCDF8(v13);
  v99 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v98);
  sub_1C43FBCC4();
  v95 = v18 - v17;
  v96 = sub_1C4F00DC8();
  v19 = sub_1C43FCDF8(v96);
  v104 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBD08();
  v97 = v23 - v24;
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FD230();
  v100 = v26;
  v27 = sub_1C4F01188();
  v28 = sub_1C43FCDF8(v27);
  v101 = v29;
  v102 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBCC4();
  v103 = v33 - v32;
  v115 = *a4;
  v116 = a4[1];
  v34 = a4[3];
  v35 = *a5;
  v36 = a5[1];
  v37 = a5[3];
  v106 = a4[2];
  v108 = a5[2];
  v38 = type metadata accessor for ExtractedMatch();
  v39 = (a8 + v38[8]);
  v40 = v38[5];
  v41 = sub_1C4EFD548();
  v42 = *(v41 - 8);
  (*(v42 + 16))(a8 + v40, a3, v41);
  v43 = v35;
  v44 = (a8 + v38[6]);
  *v44 = v115;
  v44[1] = v116;
  v44[2] = v106;
  v44[3] = v34;
  v45 = (a8 + v38[7]);
  *v45 = v35;
  v45[1] = v36;
  v46 = a2;
  v45[2] = v108;
  v45[3] = v37;
  *v39 = a6;
  v39[1] = a7;
  v114 = a8;
  *(a8 + v38[9]) = a9;
  if (a2)
  {
    result = (*(v42 + 8))(a3, v41);
    v48 = a1;
LABEL_42:
    *v114 = v48;
    v114[1] = v46;
    return result;
  }

  v111 = v41;
  v109 = v42;
  v94 = v36;
  v93 = v43;
  if (v34)
  {
    v49 = v37;
    if (*(v34 + 16))
    {
      v50 = sub_1C4404310();
      v52 = sub_1C445FAA8(v50, v51);
      v53 = MEMORY[0x1E69E7CC0];
      v54 = v104;
      if (v55)
      {
        v56 = sub_1C442FD74(v52, *(v34 + 56));
        if (!v57)
        {
          v53 = v56;
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }
    }

    else
    {
      v53 = MEMORY[0x1E69E7CC0];
      v54 = v104;
    }
  }

  else
  {
    v53 = MEMORY[0x1E69E7CC0];
    v54 = v104;
    v49 = v37;
  }

  v58 = *(v53 + 16);

  if (v58)
  {
    if (v34 && *(v34 + 16))
    {
      v59 = sub_1C4404310();
      result = sub_1C445FAA8(v59, v60);
      v61 = MEMORY[0x1E69E7CC0];
      if (v62)
      {
        v63 = sub_1C442FD74(result, *(v34 + 56));
        if (!v57)
        {
          v61 = v63;
        }

        result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }
    }

    else
    {
      v61 = MEMORY[0x1E69E7CC0];
    }

    if (!v61[2])
    {
      __break(1u);
      goto LABEL_44;
    }

    v107 = v61[4];
    v64 = v61[5];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    if (!v49)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v107 = 0;
    v64 = 0xE000000000000000;
    if (!v49)
    {
LABEL_28:
      v68 = MEMORY[0x1E69E7CC0];
      goto LABEL_29;
    }
  }

  if (!*(v49 + 16))
  {
    goto LABEL_28;
  }

  v65 = sub_1C4404310();
  v67 = sub_1C445FAA8(v65, v66);
  v68 = MEMORY[0x1E69E7CC0];
  if (v69)
  {
    v70 = sub_1C442FD74(v67, *(v49 + 56));
    if (!v57)
    {
      v68 = v70;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

LABEL_29:
  v71 = *(v68 + 16);

  if (v71)
  {
    if (v49 && *(v49 + 16))
    {
      v72 = sub_1C4404310();
      result = sub_1C445FAA8(v72, v73);
      v74 = MEMORY[0x1E69E7CC0];
      if (v75)
      {
        v76 = sub_1C442FD74(result, *(v49 + 56));
        if (!v57)
        {
          v74 = v76;
        }

        result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }
    }

    else
    {
      v74 = MEMORY[0x1E69E7CC0];
    }

    if (v74[2])
    {
      v71 = v74[4];
      v77 = v74[5];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      goto LABEL_40;
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v77 = 0xE000000000000000;
LABEL_40:
  sub_1C4F02248();
  v78 = sub_1C4EFD3D8();
  MEMORY[0x1C6940010](v78);

  sub_1C4410C38();
  MEMORY[0x1C6940010](v115, v116);
  sub_1C4410C38();
  MEMORY[0x1C6940010](v107, v64);
  sub_1C4410C38();
  MEMORY[0x1C6940010](v93, v94);
  sub_1C4410C38();
  MEMORY[0x1C6940010](v71, v77);
  sub_1C4410C38();
  sub_1C4F01A98();
  sub_1C4F01178();
  sub_1C4F01148();
  v80 = v79;
  result = (*(v101 + 8))(v103, v102);
  if (v80 >> 60 != 15)
  {

    sub_1C44CD1A8(&qword_1EDDFEAD0, MEMORY[0x1E6966620]);
    sub_1C4F00DB8();
    v81 = sub_1C4404B44();
    sub_1C44344B8(v81, v82);
    v83 = sub_1C4404B44();
    sub_1C4498FD8(v83, v84);
    v85 = sub_1C4404B44();
    sub_1C441DFEC(v85, v86);
    sub_1C4F00DA8();
    (*(v99 + 8))(v95, v98);
    (*(v54 + 16))(v97, v100, v96);
    v87 = sub_1C44D5F88(v97);
    v89 = v88;
    v48 = sub_1C4EF9A48();
    v46 = v90;
    sub_1C4434000(v87, v89);
    v91 = sub_1C4404B44();
    sub_1C441DFEC(v91, v92);
    (*(v109 + 8))(a3, v111);
    result = (*(v54 + 8))(v100, v96);
    goto LABEL_42;
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1C47C6810(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E45656372756F73 && a2 == 0xEC00000079746974;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E45746567726174 && a2 == 0xEC00000079746974;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x616552686374616DLL && a2 == 0xEB000000006E6F73;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C4F02938();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C47C6A10(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      v3 = 0x656372756F73;
      goto LABEL_6;
    case 3:
      v3 = 0x746567726174;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E45000000000000;
      break;
    case 4:
      result = 0x616552686374616DLL;
      break;
    case 5:
      result = 0x6E656469666E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C47C6AE0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C47C6B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C47C6810(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C47C6B5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C46170BC();
  *a1 = result;
  return result;
}

uint64_t sub_1C47C6B84(uint64_t a1)
{
  v2 = sub_1C47C8E2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C47C6BC0(uint64_t a1)
{
  v2 = sub_1C47C8E2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExtractedMatch.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0BD120, &qword_1C4F2D028);
  sub_1C43FCDF8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C47C8E2C();
  sub_1C4F02BF8();
  v14 = *v3;
  v15 = v3[1];
  LOBYTE(v33) = 0;
  sub_1C43FBF44();
  sub_1C4F02798();
  if (!v2)
  {
    v16 = type metadata accessor for ExtractedMatch();
    v17 = v16[5];
    LOBYTE(v33) = 1;
    sub_1C4EFD548();
    sub_1C44322B4();
    sub_1C44CD1A8(v18, v19);
    sub_1C43FBF44();
    sub_1C4F027E8();
    v20 = (v3 + v16[6]);
    v21 = v20[1];
    v22 = v20[2];
    v23 = v20[3];
    v33 = *v20;
    v34 = v21;
    v35 = v22;
    v36 = v23;
    v37 = 2;
    sub_1C47C8E80();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C43FBF44();
    sub_1C4F027E8();

    v24 = (v3 + v16[7]);
    v25 = v24[1];
    v27 = v24[2];
    v26 = v24[3];
    v33 = *v24;
    v34 = v25;
    v35 = v27;
    v36 = v26;
    v37 = 3;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C43FBF44();
    sub_1C4F027E8();

    if (!v25)
    {
      v28 = (v3 + v16[8]);
      v29 = *v28;
      v30 = v28[1];
      LOBYTE(v33) = 4;
      sub_1C43FBF44();
      sub_1C4F02738();
      v31 = *(v3 + v16[9]);
      sub_1C443334C(5);
      sub_1C43FBF44();
      sub_1C4F027C8();
    }
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t ExtractedMatch.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = sub_1C4EFD548();
  v4 = sub_1C43FCDF8(v36);
  v34 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v37 = sub_1C456902C(&qword_1EC0BD138, &qword_1C4F2D030);
  sub_1C43FCDF8(v37);
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v38 = type metadata accessor for ExtractedMatch();
  v14 = sub_1C43FBCE0(v38);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v19 = (v18 - v17);
  v20 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C47C8E2C();
  sub_1C4F02BC8();
  if (v2)
  {
    sub_1C440962C(a1);
  }

  else
  {
    sub_1C440BCA8();
    *v19 = sub_1C4F02678();
    v19[1] = v21;
    LOBYTE(v39) = 1;
    sub_1C44322B4();
    sub_1C44CD1A8(v22, v23);
    sub_1C440BCA8();
    sub_1C4F026C8();
    (*(v34 + 32))(v19 + v38[5], v10, v36);
    sub_1C47C8ED4();
    sub_1C440BCA8();
    sub_1C4F026C8();
    v24 = v38[6];
    sub_1C4425B3C(v39);
    sub_1C440BCA8();
    sub_1C4F026C8();
    v25 = v38[7];
    sub_1C4425B3C(v39);
    sub_1C443334C(4);
    sub_1C440BCA8();
    v26 = sub_1C4F02618();
    v27 = (v19 + v38[8]);
    *v27 = v26;
    v27[1] = v28;
    sub_1C443334C(5);
    sub_1C440BCA8();
    sub_1C4F026A8();
    v30 = v29;
    v31 = sub_1C4400358();
    v32(v31);
    *(v19 + v38[9]) = v30;
    sub_1C47C8F28(v19, a2);
    sub_1C440962C(a1);
    return sub_1C47C8F8C(v19);
  }
}

void sub_1C47C7400()
{
  sub_1C44158A0();
  if (v2 != v3 && (v4 = v2, sub_1C441F954(v2, v3), v6))
  {
    v27 = v5;
    v7 = 0;
    v8 = *(v4 + 64);
    v9 = *(v4 + 32);
    sub_1C43FD030();
    sub_1C440D3F4();
    while (v1)
    {
      sub_1C43FFB74();
LABEL_12:
      v14 = v10 | (v7 << 6);
      v15 = (*(v4 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      v18 = *(*(v4 + 56) + 8 * v14);
      v19 = v18;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v20 = sub_1C445FAA8(v16, v17);
      v22 = v21;

      if ((v22 & 1) == 0)
      {
LABEL_18:

        goto LABEL_19;
      }

      v23 = *(*(v27 + 56) + 8 * v20);
      if (v23)
      {
        if (!v18)
        {
          goto LABEL_19;
        }

        sub_1C4577DBC();
        v24 = v23;
        v25 = v19;
        v26 = sub_1C4F01EE8();

        if ((v26 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else if (v18)
      {
        goto LABEL_18;
      }
    }

    v11 = v7;
    while (1)
    {
      v7 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v7 >= v0)
      {
        goto LABEL_19;
      }

      ++v11;
      if (*(v4 + 64 + 8 * v7))
      {
        sub_1C43FCF1C();
        v1 = v13 & v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_1C4410198();
  }
}

uint64_t sub_1C47C7544(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v17 = sub_1C445FAA8(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      goto LABEL_31;
    }

    v20 = *(*(a2 + 56) + 8 * v17);
    if (v20)
    {
      if (!v16)
      {
        return 0;
      }

      v21 = *(v20 + 16);
      if (v21 != *(v16 + 16))
      {
LABEL_31:

        return 0;
      }

      if (v21)
      {
        v22 = v20 == v16;
      }

      else
      {
        v22 = 1;
      }

      if (!v22)
      {
        v23 = (v20 + 40);
        v24 = (v16 + 40);
        while (v21)
        {
          result = *(v23 - 1);
          if (result != *(v24 - 1) || *v23 != *v24)
          {
            result = sub_1C4F02938();
            if ((result & 1) == 0)
            {
              goto LABEL_31;
            }
          }

          v23 += 2;
          v24 += 2;
          if (!--v21)
          {
            goto LABEL_29;
          }
        }

        goto LABEL_35;
      }

LABEL_29:
    }

    else if (v16)
    {
      goto LABEL_31;
    }
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
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

unint64_t sub_1C47C76F4()
{
  result = qword_1EC0BD0F0;
  if (!qword_1EC0BD0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD0F0);
  }

  return result;
}

unint64_t sub_1C47C7748()
{
  result = qword_1EDDF0768[0];
  if (!qword_1EDDF0768[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF0768);
  }

  return result;
}

unint64_t sub_1C47C779C()
{
  result = qword_1EC0BD108;
  if (!qword_1EC0BD108)
  {
    sub_1C4572308(&qword_1EC0B9498, &qword_1C4F0F020);
    sub_1C443CFE8(&qword_1EDDFA578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD108);
  }

  return result;
}

void sub_1C47C7844()
{
  sub_1C43FBD3C();
  if (v0 != v1 && (v2 = v1, v3 = v0, sub_1C441F954(v0, v1), v4))
  {
    v5 = 0;
    v6 = *(v3 + 64);
    v7 = *(v3 + 32);
    sub_1C43FD030();
    v10 = v9 & v8;
    v12 = (v11 + 63) >> 6;
    while (v10)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v17 = v13 | (v5 << 6);
      v18 = *(*(v3 + 48) + v17);
      v19 = *(*(v3 + 56) + 8 * v17);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v20 = sub_1C457A9B4();
      if ((v21 & 1) == 0)
      {

        goto LABEL_17;
      }

      v22 = *(*(v2 + 56) + 8 * v20);
      v23 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v24 = sub_1C47C7958(v23, v19);

      if ((v24 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v3 + 64 + 8 * v5))
      {
        sub_1C43FCF1C();
        v10 = v16 & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    sub_1C43FE9F0();
  }
}

uint64_t sub_1C47C7958(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = v9 | (v4 << 6);
      v13 = *(*(v3 + 48) + v12);
      v14 = *(*(v3 + 56) + 8 * v12);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      result = sub_1C457A9F0();
      if ((v15 & 1) == 0 || (v16 = *(*(a2 + 56) + 8 * result), v17 = *(v16 + 16), v17 != *(v14 + 16)))
      {
LABEL_29:

        return 0;
      }

      if (v17 && v16 != v14)
      {
        break;
      }

LABEL_26:

      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v19 = (v16 + 40);
    v20 = (v14 + 40);
    while (v17)
    {
      result = *(v19 - 1);
      if (result != *(v20 - 1) || *v19 != *v20)
      {
        result = sub_1C4F02938();
        if ((result & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v19 += 2;
      v20 += 2;
      if (!--v17)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
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
        return 1;
      }

      v11 = *(v3 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_1C47C7AE0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = a2;
    sub_1C441F954(a1, a2);
    if (v32)
    {
      v9 = 0;
      v10 = *(a1 + 64);
      v11 = *(a1 + 32);
      sub_1C43FD030();
      sub_1C440D3F4();
      while (v6)
      {
        sub_1C43FFB74();
LABEL_12:
        v16 = *(a1 + 48);
        v17 = *(a1 + 56);
        sub_1C440E268(v12 | (v9 << 6));
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v18 = sub_1C4404BB0();
        sub_1C445FAA8(v18, v19);
        sub_1C441C9EC();
        if ((v4 & 1) == 0 || (v20 = *(*(v7 + 56) + 8 * *&v3), v4 = *(v20 + 16), v4 != *(v2 + 16)))
        {
LABEL_140:

          return;
        }

        if (!v4 || v20 == v2)
        {
        }

        else
        {
          v55 = v6;
          v56 = v7;
          v21 = 0;
          v57 = v2 + 32;
          v58 = v20 + 32;
          while (2)
          {
            if (v21 == v4)
            {
              goto LABEL_142;
            }

            v22 = v21++;
            v23 = 32 * v22;
            v24 = v58 + 32 * v22;
            v25 = *v24;
            v26 = *(v24 + 8);
            v27 = *(v24 + 16);
            v28 = *(v24 + 24);
            v29 = *(v57 + v23);
            v30 = *(v57 + v23 + 8);
            v3 = *(v57 + v23 + 16);
            v31 = *(v57 + v23 + 24);
            switch(v28)
            {
              case 1:
                if (v31 != 1)
                {
                  goto LABEL_140;
                }

                goto LABEL_66;
              case 2:
                if (v31 != 2)
                {
                  goto LABEL_140;
                }

                goto LABEL_66;
              case 3:
                if (v31 != 3)
                {
                  goto LABEL_140;
                }

                goto LABEL_66;
              case 4:
                if (v31 != 4)
                {
                  goto LABEL_140;
                }

                v32 = v25 == v29 && v26 == v30;
                if (!v32 && (sub_1C4F02938() & 1) == 0 || *&v27 != *&v3)
                {
                  goto LABEL_140;
                }

                goto LABEL_122;
              case 5:
                if (v31 != 5)
                {
                  goto LABEL_140;
                }

                v42 = v25 == v29 && v26 == v30;
                if (!v42 && (sub_1C4F02938() & 1) == 0 || v27 != v3)
                {
                  goto LABEL_140;
                }

                goto LABEL_122;
              case 6:
                if (v31 != 6)
                {
                  goto LABEL_140;
                }

                v43 = v25 == v29 && v26 == v30;
                if (!v43 && (sub_1C4F02938() & 1) == 0 || *&v27 != *&v3)
                {
                  goto LABEL_140;
                }

                goto LABEL_122;
              case 7:
                if (v31 != 7)
                {
                  goto LABEL_140;
                }

                v38 = *(v25 + 16);
                if (v38 != *(v29 + 16))
                {
                  goto LABEL_140;
                }

                if (v38)
                {
                  v39 = v25 == v29;
                }

                else
                {
                  v39 = 1;
                }

                if (v39)
                {
                  goto LABEL_60;
                }

                v50 = (v25 + 32);
                v51 = (v29 + 32);
                do
                {
                  if (!v38)
                  {
                    goto LABEL_144;
                  }

                  if (*v50 != *v51)
                  {
                    goto LABEL_140;
                  }

                  ++v50;
                  ++v51;
                  --v38;
                }

                while (v38);
LABEL_60:
                if (v26 == v30 && *&v27 == *&v3)
                {
                  goto LABEL_122;
                }

LABEL_70:
                if ((sub_1C4F02938() & 1) == 0)
                {
                  goto LABEL_140;
                }

                goto LABEL_122;
              case 8:
                if (v31 != 8)
                {
                  goto LABEL_140;
                }

                v3 = *(v25 + 16);
                if (*&v3 != *(v29 + 16))
                {
                  goto LABEL_140;
                }

                if (v3 == 0.0 || v25 == v29)
                {
                  goto LABEL_122;
                }

                v45 = (v25 + 40);
                v46 = (v29 + 40);
                while (2)
                {
                  if (v3 == 0.0)
                  {
                    goto LABEL_143;
                  }

                  v47 = *(v45 - 1) == *(v46 - 1) && *v45 == *v46;
                  if (v47 || (sub_1C4F02938() & 1) != 0)
                  {
                    v45 += 2;
                    v46 += 2;
                    --*&v3;
                    if (v3 == 0.0)
                    {
                      goto LABEL_122;
                    }

                    continue;
                  }

                  goto LABEL_140;
                }

              case 9:
                v33 = *&v27 | v26;
                if (*&v27 | v26 | v25)
                {
                  if (v25 == 1 && v33 == 0)
                  {
                    v32 = v31 == 9;
                    v49 = *&v3 | v30;
                    v48 = v32 && v29 == 1;
                  }

                  else if (v25 == 2 && v33 == 0)
                  {
                    v32 = v31 == 9;
                    v49 = *&v3 | v30;
                    v48 = v32 && v29 == 2;
                  }

                  else
                  {
                    if (v25 != 3 || v33 != 0)
                    {
                      if (v25 != 4 || v33)
                      {
                        if (v25 != 5 || v33)
                        {
                          if (v31 != 9 || v29 != 6)
                          {
                            goto LABEL_140;
                          }
                        }

                        else if (v31 != 9 || v29 != 5)
                        {
                          goto LABEL_140;
                        }
                      }

                      else if (v31 != 9 || v29 != 4)
                      {
                        goto LABEL_140;
                      }

                      if (*&v3 | v30)
                      {
                        goto LABEL_140;
                      }

                      goto LABEL_122;
                    }

                    v32 = v31 == 9;
                    v49 = *&v3 | v30;
                    v48 = v32 && v29 == 3;
                  }
                }

                else
                {
                  v48 = v31 == 9;
                  v49 = *&v3 | v30 | v29;
                }

                if (!v48 || v49 != 0)
                {
                  goto LABEL_140;
                }

LABEL_122:
                if (v21 != v4)
                {
                  continue;
                }

                v6 = v55;
                v7 = v56;
                break;
              default:
                if (*(v57 + v23 + 24))
                {
                  goto LABEL_140;
                }

LABEL_66:
                if (v25 != v29 || v26 != v30)
                {
                  goto LABEL_70;
                }

                goto LABEL_122;
            }

            break;
          }
        }
      }

      v13 = v9;
      while (1)
      {
        v9 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v9 >= v5)
        {
          return;
        }

        ++v13;
        if (*(a1 + 64 + 8 * v9))
        {
          sub_1C43FCF1C();
          v6 = v15 & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
    }
  }
}

void sub_1C47C7F00(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v6 = a2;
    v7 = a1;
    sub_1C441F954(a1, a2);
    if (v24)
    {
      v8 = 0;
      v10 = v7 + 64;
      v9 = *(v7 + 64);
      v11 = *(v7 + 32);
      sub_1C43FD030();
      sub_1C4410C28();
      v34 = v7;
      v35 = v6;
      v33 = v5;
      if (v12)
      {
        while (1)
        {
          sub_1C440AAD0();
          v36 = v14;
LABEL_11:
          v18 = *(v7 + 48);
          v19 = *(v7 + 56);
          sub_1C440E268(v13 | (v8 << 6));
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v20 = sub_1C4404BB0();
          sub_1C445FAA8(v20, v21);
          sub_1C441C9EC();
          if ((v4 & 1) == 0 || (v22 = *(*(v6 + 56) + 8 * v3), v23 = *(v22 + 16), v23 != *(v2 + 16)))
          {
LABEL_38:

            return;
          }

          v24 = !v23 || v22 == v2;
          if (!v24)
          {
            break;
          }

LABEL_18:

          v7 = v34;
          v6 = v35;
          v5 = v33;
          if (!v36)
          {
            goto LABEL_6;
          }
        }

        v25 = (v22 + 56);
        v26 = (v2 + 56);
        while (v23)
        {
          v27 = *(v25 - 2);
          v3 = *(v25 - 1);
          v28 = *v25;
          v29 = *(v26 - 2);
          v4 = *(v26 - 1);
          v30 = *v26;
          if (v27)
          {
            if (!v29)
            {
              goto LABEL_38;
            }

            v31 = *(v25 - 3) == *(v26 - 3) && v27 == v29;
            if (!v31 && (sub_1C4F02938() & 1) == 0)
            {
              goto LABEL_38;
            }
          }

          else if (v29)
          {
            goto LABEL_38;
          }

          if (v3 != v4 || v28 != v30)
          {
            sub_1C4404BB0();
            if ((sub_1C4F02938() & 1) == 0)
            {
              goto LABEL_38;
            }
          }

          v25 += 4;
          v26 += 4;
          if (!--v23)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
LABEL_6:
        v15 = v8;
        while (1)
        {
          v8 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v8 >= v5)
          {
            return;
          }

          ++v15;
          if (*(v10 + 8 * v8))
          {
            sub_1C43FCF1C();
            v36 = v17 & v16;
            goto LABEL_11;
          }
        }

        __break(1u);
      }

      __break(1u);
    }
  }
}

void sub_1C47C80C0()
{
  sub_1C43FBD3C();
  if (v4 != v5 && (v6 = v5, v7 = v4, sub_1C441F954(v4, v5), v8))
  {
    v9 = 0;
    v10 = *(v7 + 64);
    v11 = *(v7 + 32);
    sub_1C43FD030();
    sub_1C440D3F4();
    while (v3)
    {
      sub_1C43FFB74();
LABEL_12:
      v16 = *(v7 + 48);
      v17 = *(v7 + 56);
      sub_1C440E268(v12 | (v9 << 6));
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v18 = sub_1C4404BB0();
      sub_1C445FAA8(v18, v19);
      sub_1C441C9EC();
      if ((v1 & 1) == 0)
      {

        goto LABEL_17;
      }

      v0 = *(*(v6 + 56) + 8 * v0);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C47E72B4();
      v21 = v20;

      if ((v21 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v13 = v9;
    while (1)
    {
      v9 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v9 >= v2)
      {
        goto LABEL_17;
      }

      ++v13;
      if (*(v7 + 64 + 8 * v9))
      {
        sub_1C43FCF1C();
        v3 = v15 & v14;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    sub_1C43FE9F0();
  }
}

void sub_1C47C81C0()
{
  sub_1C44158A0();
  if (v1 != v2 && (v3 = sub_1C441F954(v1, v2), v22))
  {
    v4 = 0;
    v6 = v3 + 64;
    v5 = *(v3 + 64);
    v7 = *(v3 + 32);
    sub_1C43FD030();
    sub_1C4410C28();
    while (v8)
    {
      sub_1C440AAD0();
LABEL_12:
      v12 = v10 | (v4 << 6);
      v13 = (*(v9 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v9 + 56) + 16 * v12);
      v18 = *v16;
      v17 = v16[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C445FAA8(v14, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        goto LABEL_22;
      }

      sub_1C441EBB8();
      v22 = v22 && v21 == v17;
      if (v22)
      {

        sub_1C441B914();
      }

      else
      {
        v23 = sub_1C4F02938();

        sub_1C441B914();
        if ((v23 & 1) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v0)
      {
        goto LABEL_22;
      }

      ++v11;
      if (*(v6 + 8 * v4))
      {
        sub_1C43FCF1C();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:
    sub_1C4410198();
  }
}

void sub_1C47C82FC()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C4EF9DD8();
  v5 = sub_1C43FCDF8(v4);
  v54 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD230();
  v53 = v13;
  v14 = sub_1C456902C(&qword_1EC0BD190, &qword_1C4F2D3F8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD230();
  v50 = v1;
  v51 = v18;
  if (v3 == v1 || *(v3 + 16) != *(v1 + 16))
  {
LABEL_21:
    sub_1C43FE9F0();
  }

  else
  {
    v48 = v11;
    v49 = v17;
    v19 = 0;
    v47 = v3;
    v22 = *(v3 + 64);
    v21 = v3 + 64;
    v20 = v22;
    v23 = 1 << *(v21 - 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & v20;
    v26 = (v23 + 63) >> 6;
    while (v25)
    {
      sub_1C440AAD0();
      v52 = v27;
      v29 = v28 | (v19 << 6);
      v30 = v49;
LABEL_13:
      v34 = *(*(v47 + 48) + 8 * v29);
      (*(v54 + 16))(v53, *(v47 + 56) + *(v54 + 72) * v29, v4);
      v35 = sub_1C456902C(&qword_1EC0BD198, &qword_1C4F2D400);
      v36 = *(v35 + 48);
      *v30 = v34;
      (*(v54 + 32))(&v30[v36], v53, v4);
      sub_1C440BAA8(v30, 0, 1, v35);
      v37 = v34;
      v31 = v51;
LABEL_14:
      sub_1C47C9574(v30, v31);
      v38 = sub_1C456902C(&qword_1EC0BD198, &qword_1C4F2D400);
      if (sub_1C44157D4(v31, 1, v38) == 1)
      {
        goto LABEL_21;
      }

      v39 = *v31;
      (*(v54 + 32))(v48, v31 + *(v38 + 48), v4);
      v40 = sub_1C457EB50(v39);
      v42 = v41;

      if ((v42 & 1) == 0)
      {
        (*(v54 + 8))(v48, v4);
        goto LABEL_21;
      }

      (*(v54 + 16))(v53, *(v50 + 56) + *(v54 + 72) * v40, v4);
      sub_1C4413178();
      sub_1C44CD1A8(&qword_1EC0B8598, v43);
      v44 = sub_1C4F010B8();
      v45 = *(v54 + 8);
      v45(v53, v4);
      v45(v48, v4);
      v25 = v52;
      if ((v44 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v30 = v49;
    v31 = v51;
    while (1)
    {
      v32 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v32 >= v26)
      {
        v46 = sub_1C456902C(&qword_1EC0BD198, &qword_1C4F2D400);
        sub_1C440BAA8(v49, 1, 1, v46);
        v52 = 0;
        goto LABEL_14;
      }

      v33 = *(v21 + 8 * v32);
      ++v19;
      if (v33)
      {
        v52 = (v33 - 1) & v33;
        v29 = __clz(__rbit64(v33)) | (v32 << 6);
        v19 = v32;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_1C47C8728()
{
  sub_1C44158A0();
  if (v1 != v2 && (v3 = sub_1C441F954(v1, v2), v21))
  {
    v4 = 0;
    v6 = v3 + 64;
    v5 = *(v3 + 64);
    v7 = *(v3 + 32);
    sub_1C43FD030();
    sub_1C4410C28();
    while (v8)
    {
      sub_1C440AAD0();
LABEL_12:
      v12 = v10 | (v4 << 6);
      v13 = *(*(v9 + 48) + 8 * v12);
      v14 = (*(v9 + 56) + 16 * v12);
      v16 = *v14;
      v15 = v14[1];
      v17 = v13;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C457EB50(v17);
      v19 = v18;

      if ((v19 & 1) == 0)
      {

        goto LABEL_22;
      }

      sub_1C441EBB8();
      v21 = v21 && v20 == v15;
      if (v21)
      {

        sub_1C441B914();
      }

      else
      {
        v22 = sub_1C4F02938();

        sub_1C441B914();
        if ((v22 & 1) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v0)
      {
        goto LABEL_22;
      }

      ++v11;
      if (*(v6 + 8 * v4))
      {
        sub_1C43FCF1C();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:
    sub_1C4410198();
  }
}

uint64_t sub_1C47C8858(const void *a1, uint64_t a2)
{
  v5 = a2 + 64;
  v4 = *(a2 + 64);
  v6 = *(a2 + 32);
  sub_1C43FD030();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = 0;
  for (i = 0; v9; v13 ^= result)
  {
    v15 = i;
LABEL_7:
    v16 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v17 = v16 | (v15 << 6);
    v18 = *(*(a2 + 48) + v17);
    v19 = *(*(a2 + 56) + 8 * v17);
    memcpy(__dst, a1, sizeof(__dst));
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F01298();

    sub_1C47C89CC(__dst, v19);

    result = sub_1C4F02B68();
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v11)
    {

      return MEMORY[0x1C69417F0](v13);
    }

    v9 = *(v5 + 8 * v15);
    ++i;
    if (v9)
    {
      i = v15;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C47C89CC(const void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = 0;
  for (i = 0; v6; v9 = result ^ v20)
  {
    v20 = v9;
LABEL_9:
    v12 = __clz(__rbit64(v6)) | (i << 6);
    v13 = *(*(a2 + 48) + v12);
    v14 = *(*(a2 + 56) + 8 * v12);
    memcpy(__dst, a1, sizeof(__dst));
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F01298();

    MEMORY[0x1C69417F0](*(v14 + 16));
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 40);
      do
      {
        v17 = *(v16 - 1);
        v18 = *v16;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F01298();

        v16 += 2;
        --v15;
      }

      while (v15);
    }

    v6 &= v6 - 1;

    result = sub_1C4F02B68();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1C69417F0](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      v20 = v9;
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C47C8B98(const void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v10 = 0;
  v11 = 0;
  v22 = a1;
  if (v7)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x1C69417F0](v10);
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
      do
      {
LABEL_8:
        v13 = __clz(__rbit64(v7)) | (v11 << 6);
        v14 = (*(a2 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        v17 = *(*(a2 + 56) + 8 * v13);
        memcpy(__dst, a1, sizeof(__dst));
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F01298();

        if (v17)
        {
          v23 = v10;
          sub_1C4F02B18();
          MEMORY[0x1C69417F0](*(v17 + 16));
          v18 = *(v17 + 16);
          if (v18)
          {
            v19 = (v17 + 40);
            do
            {
              v20 = *(v19 - 1);
              v21 = *v19;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C4F01298();

              v19 += 2;
              --v18;
            }

            while (v18);

            a1 = v22;
          }

          else
          {
          }

          v10 = v23;
        }

        else
        {
          sub_1C4F02B18();
        }

        v7 &= v7 - 1;
        result = sub_1C4F02B68();
        v10 ^= result;
      }

      while (v7);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C47C8D5C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0BD0F8, &qword_1C4F2D018);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for ExtractedMatch()
{
  result = qword_1EC0BD150;
  if (!qword_1EC0BD150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C47C8E2C()
{
  result = qword_1EC0BD128;
  if (!qword_1EC0BD128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD128);
  }

  return result;
}

unint64_t sub_1C47C8E80()
{
  result = qword_1EC0BD130;
  if (!qword_1EC0BD130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD130);
  }

  return result;
}

unint64_t sub_1C47C8ED4()
{
  result = qword_1EC0BD140;
  if (!qword_1EC0BD140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD140);
  }

  return result;
}

uint64_t sub_1C47C8F28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedMatch();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C47C8F8C(uint64_t a1)
{
  v2 = type metadata accessor for ExtractedMatch();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C47C8FEC()
{
  result = qword_1EC0BD148;
  if (!qword_1EC0BD148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD148);
  }

  return result;
}

void sub_1C47C9078()
{
  sub_1C4EFD548();
  if (v0 <= 0x3F)
  {
    sub_1C4700EB8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for InferredActivityType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ExtractedMatch.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ExtractedEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C47C9368()
{
  result = qword_1EC0BD160;
  if (!qword_1EC0BD160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD160);
  }

  return result;
}

unint64_t sub_1C47C93C0()
{
  result = qword_1EC0BD168;
  if (!qword_1EC0BD168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD168);
  }

  return result;
}

unint64_t sub_1C47C9418()
{
  result = qword_1EC0BD170;
  if (!qword_1EC0BD170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD170);
  }

  return result;
}

unint64_t sub_1C47C9470()
{
  result = qword_1EC0BD178;
  if (!qword_1EC0BD178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD178);
  }

  return result;
}

unint64_t sub_1C47C94C8()
{
  result = qword_1EC0BD180;
  if (!qword_1EC0BD180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD180);
  }

  return result;
}

unint64_t sub_1C47C9520()
{
  result = qword_1EC0BD188;
  if (!qword_1EC0BD188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD188);
  }

  return result;
}

uint64_t sub_1C47C9574(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BD190, &qword_1C4F2D3F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C47C95E4(const void *a1, uint64_t a2)
{
  v5 = a2 + 64;
  v4 = *(a2 + 64);
  v6 = *(a2 + 32);
  sub_1C43FD030();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = 0;
  v14 = 0;
  if (v9)
  {
    while (1)
    {
LABEL_5:
      sub_1C43FC2DC();
      v17 = (*(a2 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = *(*(a2 + 56) + 8 * v16);
      memcpy(__dst, a1, sizeof(__dst));
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F01298();

      sub_1C49F063C();

      v13 ^= sub_1C4F02B68();
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v11)
    {

      return MEMORY[0x1C69417F0](0);
    }

    ++v14;
    if (*(v5 + 8 * v15))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C47C9714(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v3 = *(a2 + 64);
  v5 = *(a2 + 32);
  sub_1C43FD030();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  __src = v11;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = 0;
  v14 = 0;
  if (!v8)
  {
    goto LABEL_3;
  }

  do
  {
    v25 = v13;
LABEL_7:
    v16 = __clz(__rbit64(v8)) | (v14 << 6);
    v17 = (*(a2 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(a2 + 56) + 8 * v16);
    memcpy(__dst, __src, sizeof(__dst));
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F01298();

    v21 = *(v20 + 16);
    MEMORY[0x1C69417F0](v21);
    if (v21)
    {
      v22 = (v20 + 32);
      do
      {
        v23 = *v22++;
        sub_1C4F01298();

        --v21;
      }

      while (v21);
    }

    v8 &= v8 - 1;

    result = sub_1C4F02B68();
    v13 = result ^ v25;
  }

  while (v8);
LABEL_3:
  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return MEMORY[0x1C69417F0](v13);
    }

    v8 = *(v4 + 8 * v15);
    ++v14;
    if (v8)
    {
      v25 = v13;
      v14 = v15;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C47C99E8(const void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v2 = *(a2 + 64);
  v4 = *(a2 + 32);
  sub_1C43FD030();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = 0;
  v12 = 0;
  v24 = v9;
  v25 = v3;
  if (!v7)
  {
    goto LABEL_3;
  }

  do
  {
    v28 = v11;
LABEL_7:
    v14 = __clz(__rbit64(v7)) | (v12 << 6);
    v15 = (*(a2 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(a2 + 56) + 8 * v14);
    memcpy(__dst, a1, sizeof(__dst));
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F01298();

    MEMORY[0x1C69417F0](*(v18 + 16));
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = (v18 + 56);
      do
      {
        v21 = *(v20 - 1);
        v22 = *v20;
        if (*(v20 - 2))
        {
          v23 = *(v20 - 3);
          sub_1C4F02B18();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4F01298();
        }

        else
        {
          sub_1C4F02B18();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F01298();
        swift_bridgeObjectRelease_n();

        v20 += 4;
        --v19;
      }

      while (v19);
    }

    v7 &= v7 - 1;

    result = sub_1C4F02B68();
    v11 = result ^ v28;
    v9 = v24;
    v3 = v25;
  }

  while (v7);
LABEL_3:
  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return MEMORY[0x1C69417F0](v11);
    }

    v7 = *(v3 + 8 * v13);
    ++v12;
    if (v7)
    {
      v28 = v11;
      v12 = v13;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_1C47C9BCC()
{
  sub_1C43FBD3C();
  v1 = v0;
  v44 = v2;
  v46 = sub_1C4EF9DD8();
  v3 = sub_1C43FCDF8(v46);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v11 = sub_1C456902C(&qword_1EC0BD190, &qword_1C4F2D3F8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1C43FBD08();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD230();
  v45 = v17;
  v19 = v1 + 64;
  v18 = *(v1 + 64);
  v20 = *(v1 + 32);
  sub_1C43FD030();
  v23 = v22 & v21;
  v25 = (v24 + 63) >> 6;
  v47 = (v5 + 32);
  v41 = v5;
  v42 = v1;
  v43 = (v5 + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v26 = 0;
  v27 = 0;
  v40 = v15;
  while (1)
  {
    v48 = v26;
    if (!v23)
    {
      break;
    }

LABEL_8:
    sub_1C43FC2DC();
    v31 = *(*(v42 + 48) + 8 * v30);
    (*(v41 + 16))(v10, *(v42 + 56) + *(v41 + 72) * v30, v46);
    v32 = sub_1C456902C(&qword_1EC0BD198, &qword_1C4F2D400);
    v33 = *(v32 + 48);
    *v40 = v31;
    v15 = v40;
    (*(v41 + 32))(&v40[v33], v10, v46);
    sub_1C440BAA8(v40, 0, 1, v32);
    v34 = v31;
    v28 = v45;
LABEL_9:
    sub_1C47C9574(v15, v28);
    v35 = sub_1C456902C(&qword_1EC0BD198, &qword_1C4F2D400);
    if (sub_1C44157D4(v28, 1, v35) == 1)
    {

      MEMORY[0x1C69417F0](v48);
      sub_1C43FE9F0();
      return;
    }

    v36 = *(v35 + 48);
    v37 = *v28;
    (*v47)(v10, v28 + v36, v46);
    memcpy(v49, v44, sizeof(v49));
    sub_1C4F01138();
    sub_1C4F01298();

    sub_1C4413178();
    sub_1C44CD1A8(&qword_1EC0B8590, v38);
    sub_1C4F00FE8();
    (*v43)(v10, v46);
    v26 = sub_1C4F02B68() ^ v48;
  }

  v28 = v45;
  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v25)
    {
      v39 = sub_1C456902C(&qword_1EC0BD198, &qword_1C4F2D400);
      sub_1C440BAA8(v15, 1, 1, v39);
      v23 = 0;
      goto LABEL_9;
    }

    v23 = *(v19 + 8 * v29);
    ++v27;
    if (v23)
    {
      v27 = v29;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_1C47C9F5C(const void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v2 = *(a2 + 64);
  v4 = *(a2 + 32);
  sub_1C43FD030();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = 0;
  for (i = 0; v7; v11 ^= result)
  {
    v13 = i;
LABEL_7:
    v14 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v15 = v14 | (v13 << 6);
    v16 = *(*(a2 + 48) + 8 * v15);
    v17 = (*(a2 + 56) + 16 * v15);
    v18 = *v17;
    v19 = v17[1];
    memcpy(__dst, a1, sizeof(__dst));
    sub_1C4F01138();
    v20 = v16;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F01298();

    sub_1C4F01298();

    result = sub_1C4F02B68();
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return MEMORY[0x1C69417F0](v11);
    }

    v7 = *(v3 + 8 * v13);
    ++i;
    if (v7)
    {
      i = v13;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_1C47CA0B4()
{
  sub_1C43FBD3C();
  v1 = v0;
  v74 = sub_1C4EFF8A8();
  v2 = sub_1C43FCDF8(v74);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v8);
  v72 = v64 - v9;
  v76 = sub_1C4EFEEF8();
  v10 = sub_1C43FCDF8(v76);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v15);
  v77 = *(v1 + 16);
  if (!v77)
  {
LABEL_24:
    sub_1C43FE9F0();
    return;
  }

  v18 = v1 + 32;
  v73 = (v4 + 8);
  v75 = (v17 + 8);
  v65 = v17;
  v64[2] = v17 + 16;
  v19 = MEMORY[0x1E69E7CC8];
  v70 = v64 - v16;
  while (1)
  {
    sub_1C442E860(v18, v82);
    sub_1C4409678(v82, v83);
    sub_1C43FBD30();
    sub_1C4EFF7F8();
    sub_1C4409678(v82, v83);
    sub_1C43FBD30();
    v20 = sub_1C4EFF7D8();
    v22 = v21;
    sub_1C440E288();
    v23 = v72;
    sub_1C44322CC();
    sub_1C4EFF7B8();
    sub_1C4EFF888();
    sub_1C47CBF08(&unk_1EDDFCC80, MEMORY[0x1E69A99E8]);
    v24 = v74;
    v25 = sub_1C4F010B8();
    v26 = *v73;
    v27 = sub_1C43FD024();
    v26(v27);
    v71 = v26;
    (v26)(v23, v24);
    if ((v25 & 1) == 0)
    {
      sub_1C440E288();
      v28 = v67;
      sub_1C44322CC();
      sub_1C4EFF7C8();
      v29 = v66;
      sub_1C4EFEC38();
      sub_1C441961C();
      sub_1C47CBF08(&qword_1EDDFCCB0, v30);
      v31 = v76;
      LODWORD(v69) = sub_1C4F010B8();
      v32 = v22;
      v33 = *v75;
      (*v75)(v29, v31);
      v68 = v33;
      v33(v28, v31);
      v22 = v32;
      if ((v69 & 1) == 0)
      {
        if (v19[2] && (sub_1C457AB64(), (v46 & 1) != 0) && (sub_1C442B870(v19[7] + 32 * v45, v80), v47 = sub_1C456902C(&qword_1EC0BD1A0, &qword_1C4F2D408), (swift_dynamicCast() & 1) != 0))
        {
          v48 = *&v79[0];
          sub_1C440E288();
          v49 = v64[0];
          sub_1C43FBD30();
          sub_1C4EFF7C8();
          v69 = v84;
          sub_1C4409678(v82, v83);
          v50 = v64[1];
          sub_1C43FBD30();
          sub_1C4EFF7B8();
          v51 = sub_1C4EFF848();
          v69 = v51;
          v53 = v52;
          v71(v50, v74);
          v54 = sub_1C4663244(v51, v53, v48);
          if (v54)
          {
            v55 = v54;
          }

          else
          {
            v55 = MEMORY[0x1E69E7CC8];
          }

          swift_isUniquelyReferenced_nonNull_native();
          v80[0] = v55;
          sub_1C46612A8();
          swift_isUniquelyReferenced_nonNull_native();
          v80[0] = v48;
          sub_1C4661EEC();

          v56 = v76;
          v57 = v68;
          v68(v49, v76);
          v81 = v47;
          sub_1C4435018();
          sub_1C441713C();
          v57(v48, v56);
        }

        else
        {
          sub_1C440E288();
          v58 = v67;
          sub_1C44322CC();
          sub_1C4EFF7C8();
          v59 = MEMORY[0x1E69E7CC8];
          swift_isUniquelyReferenced_nonNull_native();
          v80[0] = v59;
          sub_1C46612A8();
          v60 = v76;
          v68(v58, v76);
          sub_1C4409678(v82, v83);
          v61 = v72;
          sub_1C4EFF7B8();
          v62 = sub_1C4EFF848();
          v71(v61, v74);
          swift_isUniquelyReferenced_nonNull_native();
          v80[0] = v59;
          sub_1C4661EEC();

          v63 = v80[0];
          v81 = sub_1C456902C(&qword_1EC0BD1A0, &qword_1C4F2D408);
          v80[0] = v63;
          sub_1C4435018();
          sub_1C441713C();
          v68(v62, v60);
        }

        v19 = v78;
        goto LABEL_23;
      }
    }

    v81 = MEMORY[0x1E69E6158];
    v80[0] = v20;
    v80[1] = v22;
    sub_1C4435018();
    v78 = v19;
    v34 = v70;
    sub_1C457AB64();
    if (__OFADD__(v19[2], (v36 & 1) == 0))
    {
      break;
    }

    v37 = v35;
    v38 = v36;
    sub_1C456902C(&qword_1EC0BA8A8, &qword_1C4F14790);
    if (sub_1C4F02458())
    {
      sub_1C457AB64();
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_27;
      }

      v37 = v39;
    }

    v19 = v78;
    if (v38)
    {
      v41 = (v78[7] + 32 * v37);
      sub_1C440962C(v41);
      sub_1C44482AC(v79, v41);
    }

    else
    {
      v78[(v37 >> 6) + 8] |= 1 << v37;
      (*(v65 + 16))(v19[6] + *(v65 + 72) * v37, v34, v76);
      sub_1C44482AC(v79, (v19[7] + 32 * v37));
      v42 = v19[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_26;
      }

      v19[2] = v44;
    }

    (*v75)(v34, v76);
LABEL_23:
    sub_1C440962C(v82);
    v18 += 40;
    if (!--v77)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1C4F029F8();
  __break(1u);
}

void sub_1C47CA8A4()
{
  sub_1C43FBD3C();
  v1 = v0;
  v2 = sub_1C4EFEEF8();
  v3 = sub_1C44057B8(v2);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = MEMORY[0x1E69E7CD0];
  v34 = MEMORY[0x1E69E7CD0];
  v11 = *(v1 + 16);
  if (v11)
  {
    v12 = v1 + 32;
    v13 = (v9 + 8);
    while (1)
    {
      sub_1C442E860(v12, v33);
      sub_1C4425B54();
      sub_1C4410C50();
      sub_1C4EFF7F8();
      sub_1C4EFE518();
      sub_1C441961C();
      sub_1C47CBF08(&off_1EDDFCCA8, v14);
      sub_1C4F01578();
      sub_1C4F01578();
      if (v31 == v29 && v32 == v30)
      {
        v19 = *v13;
        (*v13)(v8, v2);
        v20 = sub_1C43FD024();
        (v19)(v20);
      }

      else
      {
        v16 = sub_1C4F02938();
        v17 = *v13;
        (*v13)(v8, v2);
        v18 = sub_1C43FD024();
        (v17)(v18);

        if ((v16 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      sub_1C4425B54();
      sub_1C4410C50();
      v21 = sub_1C4EFF7D8();
      v23 = v22;

      v24 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v24 = v21 & 0xFFFFFFFFFFFFLL;
      }

      if (v24)
      {
        sub_1C4425B54();
        sub_1C4410C50();
        v31 = sub_1C4EFF7D8();
        v32 = v25;
        v29 = 64;
        v30 = 0xE100000000000000;
        sub_1C4415EA8();
        v26 = sub_1C4F01FC8();

        if (!v26[2])
        {
          __break(1u);
          return;
        }

        v27 = v26[4];
        v28 = v26[5];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        sub_1C44869B4(&v31, v27, v28);
      }

LABEL_15:
      sub_1C440962C(v33);
      v12 += 40;
      if (!--v11)
      {
        v10 = v34;
        break;
      }
    }
  }

  if (*(v10 + 16))
  {
    sub_1C44FE820(v10);
  }

  else
  {
  }

  sub_1C43FE9F0();
}

void sub_1C47CAB88()
{
  sub_1C43FBD3C();
  v1 = sub_1C4EFEEF8();
  v2 = sub_1C43FCDF8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBD08();
  v93 = v7 - v8;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBF38();
  v94 = v10;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v90 - v13;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C4405BB8();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v90 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v90 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v90 - v22;
  sub_1C47CA0B4();
  v25 = v24;
  sub_1C4EFE338();
  v26 = sub_1C443335C();
  v95 = *(v4 + 8);
  v95(v23, v1, v26);
  if (!v99)
  {
    sub_1C4423A0C(v98, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_10;
  }

  if ((sub_1C441F964() & 1) == 0)
  {
LABEL_10:
    v31 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v92 = v1;
  v27 = v96;
  v28 = v97;
  v29 = HIBYTE(v97) & 0xF;
  if ((v97 & 0x2000000000000000) == 0)
  {
    v29 = v96 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    sub_1C443D664();
    v31 = v30;
    v33 = *(v30 + 16);
    v32 = *(v30 + 24);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      sub_1C43FCFE8(v32);
      v91 = v73;
      sub_1C443D664();
      v34 = v91;
      v31 = v74;
    }

    *(v31 + 16) = v34;
    v35 = v31 + 16 * v33;
    *(v35 + 32) = v27;
    *(v35 + 40) = v28;
  }

  else
  {

    v31 = MEMORY[0x1E69E7CC0];
  }

  v1 = v92;
LABEL_13:
  sub_1C4EFEE68();
  v36 = sub_1C465C7A0(v21, v25);
  v37 = v21;
  v38 = v95;
  v95(v37, v1, v36);
  if (v99)
  {
    if (sub_1C441F964())
    {
      v92 = v1;
      v40 = v96;
      v39 = v97;
      v41 = HIBYTE(v97) & 0xF;
      if ((v97 & 0x2000000000000000) == 0)
      {
        v41 = v96 & 0xFFFFFFFFFFFFLL;
      }

      if (v41)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v75 = *(v31 + 16);
          sub_1C43FCEC0();
          sub_1C443D664();
          v31 = v76;
        }

        sub_1C43FD74C();
        if (v43)
        {
          sub_1C43FFD98(v42);
          sub_1C443D664();
          v31 = v77;
        }

        sub_1C442DF2C();
        *(v44 + 32) = v40;
        *(v44 + 40) = v39;
        v1 = v92;
      }

      else
      {

        v1 = v92;
      }

      v38 = v95;
    }
  }

  else
  {
    sub_1C4423A0C(v98, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  }

  sub_1C4EFE328();
  v45 = sub_1C465C7A0(v18, v25);
  v38(v18, v1, v45);
  if (v99)
  {
    if (sub_1C441F964())
    {
      v47 = v96;
      v46 = v97;
      v48 = HIBYTE(v97) & 0xF;
      if ((v97 & 0x2000000000000000) == 0)
      {
        v48 = v96 & 0xFFFFFFFFFFFFLL;
      }

      if (v48)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = *(v31 + 16);
          sub_1C43FCEC0();
          sub_1C443D664();
          v31 = v79;
        }

        sub_1C43FD74C();
        if (v43)
        {
          sub_1C43FFD98(v49);
          sub_1C443D664();
          v31 = v80;
        }

        sub_1C442DF2C();
        *(v50 + 32) = v47;
        *(v50 + 40) = v46;
      }

      else
      {
      }

      v38 = v95;
    }
  }

  else
  {
    sub_1C4423A0C(v98, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  }

  sub_1C4EFE948();
  v51 = sub_1C465C7A0(v0, v25);
  v38(v0, v1, v51);
  if (v99)
  {
    if (sub_1C441F964())
    {
      v53 = v96;
      v52 = v97;
      v54 = HIBYTE(v97) & 0xF;
      if ((v97 & 0x2000000000000000) == 0)
      {
        v54 = v96 & 0xFFFFFFFFFFFFLL;
      }

      if (v54)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = *(v31 + 16);
          sub_1C43FCEC0();
          sub_1C443D664();
          v31 = v82;
        }

        sub_1C43FD74C();
        if (v43)
        {
          sub_1C43FFD98(v55);
          sub_1C443D664();
          v31 = v83;
        }

        sub_1C442DF2C();
        *(v56 + 32) = v53;
        *(v56 + 40) = v52;
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1C4423A0C(v98, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  }

  sub_1C4EFE2C8();
  v57 = sub_1C465C7A0(v14, v25);
  v38(v14, v1, v57);
  if (v99)
  {
    if (sub_1C441F964())
    {
      v59 = v96;
      v58 = v97;
      v60 = HIBYTE(v97) & 0xF;
      if ((v97 & 0x2000000000000000) == 0)
      {
        v60 = v96 & 0xFFFFFFFFFFFFLL;
      }

      if (v60)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = *(v31 + 16);
          sub_1C43FCEC0();
          sub_1C443D664();
          v31 = v85;
        }

        sub_1C43FD74C();
        if (v43)
        {
          sub_1C43FFD98(v61);
          sub_1C443D664();
          v31 = v86;
        }

        sub_1C442DF2C();
        *(v62 + 32) = v59;
        *(v62 + 40) = v58;
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1C4423A0C(v98, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  }

  v63 = v94;
  sub_1C4EFE348();
  v64 = sub_1C443335C();
  v38(v63, v1, v64);
  if (v99)
  {
    if (sub_1C441F964())
    {
      v66 = v96;
      v65 = v97;
      v67 = HIBYTE(v97) & 0xF;
      if ((v97 & 0x2000000000000000) == 0)
      {
        v67 = v96 & 0xFFFFFFFFFFFFLL;
      }

      if (v67)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = *(v31 + 16);
          sub_1C43FCEC0();
          sub_1C443D664();
          v31 = v88;
        }

        v69 = *(v31 + 16);
        v68 = *(v31 + 24);
        if (v69 >= v68 >> 1)
        {
          sub_1C43FFD98(v68);
          sub_1C443D664();
          v31 = v89;
        }

        *(v31 + 16) = v69 + 1;
        v70 = v31 + 16 * v69;
        *(v70 + 32) = v66;
        *(v70 + 40) = v65;
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1C4423A0C(v98, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  }

  if (*(v31 + 16))
  {

    v98[0] = v31;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D694();
    sub_1C4F01048();
  }

  else
  {

    v71 = v93;
    sub_1C4EFEBF8();
    sub_1C443335C();

    (v38)(v71, v1);
    if (v99)
    {
      if (sub_1C441F964())
      {
        v72 = HIBYTE(v97) & 0xF;
        if ((v97 & 0x2000000000000000) == 0)
        {
          v72 = v96 & 0xFFFFFFFFFFFFLL;
        }

        if (!v72)
        {
        }
      }
    }

    else
    {
      sub_1C4423A0C(v98, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    }
  }

  sub_1C4408A08();
  sub_1C43FE9F0();
}

void sub_1C47CB318()
{
  sub_1C43FBD3C();
  v1 = sub_1C4EFEEF8();
  v2 = sub_1C43FCDF8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBD08();
  v9 = v7 - v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v85 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v85 - v15;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C4405BB8();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v85 - v18;
  sub_1C47CA0B4();
  v21 = v20;
  sub_1C4EFE2D8();
  v22 = sub_1C465C7A0(v19, v21);
  v94 = *(v4 + 8);
  v96 = v4 + 8;
  v94(v19, v1, v22);
  if (v100)
  {
    sub_1C456902C(&qword_1EC0BD1A0, &qword_1C4F2D408);
    if (sub_1C441EBCC())
    {
      v91 = v0;
      v92 = v16;
      v86 = v21;
      v87 = v9;
      v23 = 0;
      v25 = v97 + 64;
      v24 = *(v97 + 64);
      v93 = v97;
      v26 = 1 << *(v97 + 32);
      v27 = -1;
      if (v26 < 64)
      {
        v27 = ~(-1 << v26);
      }

      v28 = v27 & v24;
      v29 = (v26 + 63) >> 6;
      v30 = MEMORY[0x1E69E7CC0];
      v31 = v94;
      v90 = v13;
      v95 = v1;
      v88 = v29;
      while (1)
      {
        if (!v28)
        {
          while (1)
          {
            v33 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            if (v33 >= v29)
            {

              v21 = v86;
              v9 = v87;
              goto LABEL_52;
            }

            v28 = *(v25 + 8 * v33);
            ++v23;
            if (v28)
            {
              v32 = v30;
              v23 = v33;
              goto LABEL_12;
            }
          }

          __break(1u);
LABEL_67:
          v82 = *(v30 + 16);
          sub_1C43FCEC0();
          sub_1C443D664();
          v30 = v83;
LABEL_58:
          v80 = *(v30 + 16);
          v79 = *(v30 + 24);
          if (v80 >= v79 >> 1)
          {
            sub_1C43FFD98(v79);
            sub_1C443D664();
            v30 = v84;
          }

          *(v30 + 16) = v80 + 1;
          v81 = v30 + 16 * v80;
          *(v81 + 32) = v31;
          *(v81 + 40) = v1;
          goto LABEL_63;
        }

        v32 = v30;
LABEL_12:
        v34 = *(*(v93 + 56) + ((v23 << 9) | (8 * __clz(__rbit64(v28)))));
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v35 = v91;
        sub_1C4EFE5A8();
        if (!*(v34 + 16))
        {
          break;
        }

        sub_1C457AB64();
        if ((v37 & 1) == 0)
        {
          break;
        }

        v38 = (*(v34 + 56) + 16 * v36);
        v39 = v38[1];
        v89 = *v38;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v31(v35, v95);
        v40 = v89;
        v41 = HIBYTE(v39) & 0xF;
        if ((v39 & 0x2000000000000000) == 0)
        {
          v41 = v89 & 0xFFFFFFFFFFFFLL;
        }

        if (!v41)
        {

          v13 = v90;
          goto LABEL_23;
        }

        v30 = v32;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = *(v32 + 16);
          sub_1C43FCEC0();
          sub_1C443D664();
          v30 = v68;
        }

        v43 = *(v30 + 16);
        v42 = *(v30 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_1C43FCFE8(v42);
          sub_1C443D664();
          v30 = v69;
        }

        *(v30 + 16) = v43 + 1;
        v44 = v30 + 16 * v43;
        *(v44 + 32) = v40;
        *(v44 + 40) = v39;
        v31 = v94;
        v13 = v90;
LABEL_24:
        v45 = v92;
        sub_1C4EFEDE8();
        if (*(v34 + 16) && (sub_1C457AB64(), (v47 & 1) != 0))
        {
          v48 = (*(v34 + 56) + 16 * v46);
          v49 = *v48;
          v50 = v48[1];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v1 = v95;
          v31(v45, v95);
          v51 = HIBYTE(v50) & 0xF;
          v89 = v49;
          if ((v50 & 0x2000000000000000) == 0)
          {
            v51 = v49 & 0xFFFFFFFFFFFFLL;
          }

          if (v51)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v29 = v88;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v70 = *(v30 + 16);
              sub_1C43FCEC0();
              sub_1C443D664();
              v30 = v71;
            }

            v54 = *(v30 + 16);
            v53 = *(v30 + 24);
            v55 = v54 + 1;
            if (v54 >= v53 >> 1)
            {
              sub_1C43FCFE8(v53);
              v85 = v72;
              sub_1C443D664();
              v55 = v85;
              v30 = v73;
            }

            *(v30 + 16) = v55;
            v56 = v30 + 16 * v54;
            *(v56 + 32) = v89;
            *(v56 + 40) = v50;
            v31 = v94;
            v13 = v90;
          }

          else
          {

            v13 = v90;
            v29 = v88;
          }
        }

        else
        {
          v1 = v95;
          v31(v45, v95);
        }

        v28 &= v28 - 1;
        sub_1C4EFE8D8();
        if (*(v34 + 16) && (sub_1C457AB64(), (v58 & 1) != 0))
        {
          v89 = v30;
          v59 = (*(v34 + 56) + 16 * v57);
          v61 = *v59;
          v60 = v59[1];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v31(v13, v1);

          v62 = HIBYTE(v60) & 0xF;
          if ((v60 & 0x2000000000000000) == 0)
          {
            v62 = v61 & 0xFFFFFFFFFFFFLL;
          }

          if (v62)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v74 = *(v89 + 16);
              sub_1C43FCEC0();
              sub_1C443D664();
              v89 = v75;
            }

            v64 = *(v89 + 16);
            v63 = *(v89 + 24);
            if (v64 >= v63 >> 1)
            {
              sub_1C43FFD98(v63);
              sub_1C443D664();
              v89 = v76;
            }

            v65 = v89;
            v13 = v90;
            *(v89 + 16) = v64 + 1;
            v66 = v65 + 16 * v64;
            *(v66 + 32) = v61;
            *(v66 + 40) = v60;
            v30 = v65;
            v31 = v94;
            v1 = v95;
          }

          else
          {

            v30 = v89;
            v13 = v90;
            v1 = v95;
          }
        }

        else
        {

          v31(v13, v1);
        }
      }

      v31(v35, v95);
LABEL_23:
      v30 = v32;
      goto LABEL_24;
    }
  }

  else
  {
    sub_1C4423A0C(v99, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  }

  v30 = MEMORY[0x1E69E7CC0];
LABEL_52:
  sub_1C4EFE378();
  sub_1C465C7A0(v9, v21);

  v77 = sub_1C43FD024();
  (v94)(v77);
  if (v100)
  {
    if (sub_1C441EBCC())
    {
      v31 = v97;
      v1 = v98;
      v78 = HIBYTE(v98) & 0xF;
      if ((v98 & 0x2000000000000000) == 0)
      {
        v78 = v97 & 0xFFFFFFFFFFFFLL;
      }

      if (v78)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_67;
        }

        goto LABEL_58;
      }
    }
  }

  else
  {
    sub_1C4423A0C(v99, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  }

LABEL_63:
  if (*(v30 + 16))
  {
    v99[0] = v30;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D694();
    sub_1C4F01048();
  }

  sub_1C4408A08();
  sub_1C43FE9F0();
}

void sub_1C47CB9E0()
{
  sub_1C43FBD3C();
  v56 = v0;
  v63 = v2;
  v64 = v1;
  v4 = v3;
  v60 = sub_1C456902C(&qword_1EC0BD1A8, &unk_1C4F4F460);
  v5 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v55 - v6;
  v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1C43FBD08();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v55 - v13;
  v15 = sub_1C4EFEEF8();
  v16 = sub_1C44057B8(v15);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v57 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v55 - v22;
  v24 = *(v4 + 16);
  if (v24)
  {
    v61 = v14;
    v58 = v11;
    v25 = v4 + 32;
    v26 = (v21 + 8);
    v55 = (v21 + 32);
    v27 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1C442E860(v25, v69);
      sub_1C440D404();
      sub_1C43FEF8C();
      sub_1C4EFF7F8();
      sub_1C441961C();
      sub_1C47CBF08(&off_1EDDFCCA8, v28);
      sub_1C4F01578();
      sub_1C4F01578();
      v29 = v67 == v65 && v68 == v66;
      if (v29)
      {
        v30 = 1;
      }

      else
      {
        v30 = sub_1C4F02938();
      }

      v31 = *v26;
      (*v26)(v23, v15);

      if ((v30 & 1) == 0)
      {
        goto LABEL_26;
      }

      sub_1C440F650(v63);
      if (v29)
      {
        goto LABEL_12;
      }

      v62 = v27;
      sub_1C440D404();
      v38 = v61;
      sub_1C43FEF8C();
      sub_1C4EFF7C8();
      sub_1C440BAA8(v38, 0, 1, v15);
      v39 = v59;
      v40 = *(v60 + 48);
      sub_1C47CBF50(v38, v59);
      sub_1C47CBF50(v63, v39 + v40);
      sub_1C440F650(v39);
      if (v41)
      {
        break;
      }

      v42 = v58;
      sub_1C47CBF50(v39, v58);
      sub_1C440F650(v39 + v40);
      if (v43)
      {
        sub_1C4423A0C(v61, &qword_1EC0B9A08, &unk_1C4F107B0);
        v31(v42, v15);
        v27 = v62;
LABEL_25:
        sub_1C4423A0C(v39, &qword_1EC0BD1A8, &unk_1C4F4F460);
        goto LABEL_26;
      }

      v44 = v57;
      (*v55)(v57, v39 + v40, v15);
      sub_1C441961C();
      sub_1C47CBF08(&qword_1EDDFCCB0, v45);
      v46 = sub_1C4F010B8();
      v31(v44, v15);
      sub_1C4423A0C(v61, &qword_1EC0B9A08, &unk_1C4F107B0);
      v31(v42, v15);
      sub_1C4423A0C(v39, &qword_1EC0B9A08, &unk_1C4F107B0);
      v27 = v62;
      if (v46)
      {
        goto LABEL_12;
      }

LABEL_26:
      sub_1C440962C(v69);
      v25 += 40;
      if (!--v24)
      {
        goto LABEL_31;
      }
    }

    sub_1C4423A0C(v38, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C440F650(v39 + v40);
    v27 = v62;
    if (v29)
    {
      sub_1C4423A0C(v39, &qword_1EC0B9A08, &unk_1C4F107B0);
LABEL_12:
      sub_1C440D404();
      sub_1C43FEF8C();
      v32 = sub_1C4EFF7D8();
      v34 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = *(v27 + 16);
        sub_1C43FCEC0();
        sub_1C443D664();
        v27 = v48;
      }

      v36 = *(v27 + 16);
      v35 = *(v27 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1C43FCFE8(v35);
        sub_1C443D664();
        v27 = v49;
      }

      *(v27 + 16) = v36 + 1;
      v37 = v27 + 16 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v34;
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v27 = MEMORY[0x1E69E7CC0];
LABEL_31:
  v50 = *(v27 + 16);
  if (v50 <= v56 || v50 == 0)
  {
    goto LABEL_39;
  }

  if ((v56 & 0x8000000000000000) == 0)
  {
    v52 = v27 + 16 * v56;
    v53 = *(v52 + 32);
    v54 = *(v52 + 40);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_39:

    sub_1C4408A08();
    sub_1C43FE9F0();
    return;
  }

  __break(1u);
}

uint64_t sub_1C47CBF08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C47CBF50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C47CBFE4()
{
  v1 = [v0 members];
  sub_1C47CC03C();
  v2 = sub_1C4F01678();

  return v2;
}

unint64_t sub_1C47CC03C()
{
  result = qword_1EDDDBAC0;
  if (!qword_1EDDDBAC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDDBAC0);
  }

  return result;
}

void sub_1C47CC080(unsigned __int8 *a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for FAFamilyStructs.Person(0);
  v102 = *(v8 - 8);
  v9 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1C43FBCC4();
  v103 = v11 - v10;
  v12 = sub_1C456902C(&qword_1EC0BD1B0, &unk_1C4F72950);
  v13 = sub_1C43FBD18(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v87 - v16;
  v18 = type metadata accessor for FAFamilyStructs.GroupRelationshipType(0);
  v19 = sub_1C43FBCE0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  v24 = v23 - v22;
  v25 = sub_1C456902C(&qword_1EC0BD1B8, &unk_1C4F2D460);
  v26 = sub_1C43FBD18(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v97 = &v87 - v29;
  v96 = type metadata accessor for FAFamilyStructs.IdentifierRelationshipType(0);
  v30 = sub_1C43FBD18(v96);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBCC4();
  v99 = v34 - v33;
  v35 = type metadata accessor for FAFamilyStructs.GroupOfHumans(0);
  v36 = sub_1C43FBD18(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBCC4();
  v101 = v40 - v39;
  v90 = *a1;
  v41 = v4;
  v94 = *(a3 + 8);
  v95 = a3 + 8;
  v42 = v94(a2, a3);
  v43 = sub_1C4428DA0();
  v92 = v17;
  v93 = v24;
  v91 = v18;
  v98 = v4;
  if (v43)
  {
    v44 = v43;
    sub_1C4411CAC(MEMORY[0x1E69E7CC0]);
    sub_1C44CD9C0();
    if (v44 < 0)
    {
      __break(1u);
      goto LABEL_42;
    }

    v104 = v44;
    v88 = a2;
    v89 = a3;
    v45 = 0;
    v46 = v107;
    v47 = v42 & 0xC000000000000001;
    v48 = v42;
    do
    {
      if (v47)
      {
        v49 = MEMORY[0x1C6940F90](v45, v42);
      }

      else
      {
        v49 = *(v42 + 8 * v45 + 32);
      }

      v50 = v49;
      v51 = sub_1C45B4BF8(v49, &selRef_hashedDSID);
      v53 = v52;

      if (v53)
      {
        v54 = v51;
      }

      else
      {
        v54 = 0;
      }

      if (!v53)
      {
        v53 = 0xE000000000000000;
      }

      v107 = v46;
      v55 = *(v46 + 16);
      if (v55 >= *(v46 + 24) >> 1)
      {
        sub_1C44CD9C0();
        v46 = v107;
      }

      ++v45;
      *(v46 + 16) = v55 + 1;
      v56 = v46 + 16 * v55;
      *(v56 + 32) = v54;
      *(v56 + 40) = v53;
      v42 = v48;
    }

    while (v104 != v45);

    a2 = v88;
    a3 = v89;
  }

  else
  {

    v46 = MEMORY[0x1E69E7CC0];
  }

  v107 = v46;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D694();
  sub_1C4F01048();

  v42 = v101;
  if (qword_1EDDF7970 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v57 = type metadata accessor for SourceIdPrefix();
    sub_1C442B738(v57, qword_1EDE2D710);
    String.base64EncodedSHA(withPrefix:)();
    v17 = v58;
    v44 = v59;

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v60 = v100;
    sub_1C4D9A148();
    v18 = v60;
    if (v60)
    {

      return;
    }

    v61 = sub_1C4EFEEF8();
    v41 = v99;
    v100 = v61;
    sub_1C440BAA8(v99, 1, 1, v61);
    v4 = v96;
    v62 = v41 + v96[5];
    sub_1C4EFD258();
    v24 = v4[6];
    if (qword_1EDDFED38 != -1)
    {
LABEL_42:
      swift_once();
    }

    v63 = type metadata accessor for Source();
    sub_1C442B738(v63, qword_1EDDFD0F0);
    sub_1C4406DC8();
    v89 = v64;
    sub_1C448CC08(v64, v41 + v24, v65);
    v66 = v41 + v4[7];
    sub_1C4EFE558();
    v67 = v4[9];
    v68 = (v41 + v4[8]);
    sub_1C4EFE658();
    *(v41 + v4[10]) = xmmword_1C4F2D410;
    v104 = v17;
    *v68 = v17;
    v68[1] = v44;
    v69 = v97;
    sub_1C448CC08(v41, v97, type metadata accessor for FAFamilyStructs.IdentifierRelationshipType);
    sub_1C440BAA8(v69, 0, 1, v4);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4D9AA14(v69);
    v70 = v94(a2, a3);
    v71 = sub_1C4428DA0();
    if (!v71)
    {
      break;
    }

    v72 = v71;
    v98 = v44;
    sub_1C4411CAC(MEMORY[0x1E69E7CC0]);
    sub_1C459E028();
    if (v72 < 0)
    {
      __break(1u);
      return;
    }

    v73 = 0;
    v74 = v107;
    v42 = v70 & 0xC000000000000001;
    while (1)
    {
      a3 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        break;
      }

      sub_1C4431590(v73, v42 == 0);
      if (v42)
      {
        v75 = MEMORY[0x1C6940F90](v73, v70);
      }

      else
      {
        v75 = *(v70 + 8 * v73 + 32);
      }

      v76 = v75;
      v106 = v75;
      sub_1C47CC83C(&v106, &v105, v103);
      if (v18)
      {

        sub_1C4419634();
        sub_1C47CD188(v101, v77);

        goto LABEL_37;
      }

      v18 = 0;

      v107 = v74;
      a2 = *(v74 + 16);
      if (a2 >= *(v74 + 24) >> 1)
      {
        sub_1C459E028();
        v74 = v107;
      }

      *(v74 + 16) = a2 + 1;
      sub_1C47CD128(v103, v74 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * a2, type metadata accessor for FAFamilyStructs.Person);
      ++v73;
      if (a3 == v72)
      {

        v42 = v101;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_40:
    swift_once();
  }

  v74 = MEMORY[0x1E69E7CC0];
LABEL_35:
  v78 = v93;
  sub_1C440BAA8(v93, 1, 1, v100);
  v79 = v91;
  v80 = v78 + *(v91 + 20);
  sub_1C4EFD188();
  v81 = *(v79 + 24);
  sub_1C4406DC8();
  sub_1C448CC08(v89, v78 + v82, v83);
  *(v78 + *(v79 + 28)) = v74;
  sub_1C4D9FBE8();
  v84 = v92;
  sub_1C448CC08(v78, v92, type metadata accessor for FAFamilyStructs.GroupRelationshipType);
  sub_1C440BAA8(v84, 0, 1, v79);
  sub_1C4D9B4D8(v84);
  LOBYTE(v107) = v90;
  sub_1C4D9B5E4();
  if (v18)
  {

    sub_1C4419634();
    sub_1C47CD188(v42, v85);
    sub_1C441F984();
LABEL_37:
    sub_1C442C9F4();
  }

  else
  {

    sub_1C4419634();
    sub_1C47CD188(v42, v86);
    sub_1C441F984();
    sub_1C442C9F4();
  }
}

void sub_1C47CC83C(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v132 = a3;
  v133 = a2;
  v5 = type metadata accessor for FAFamilyStructs.AddressRelationshipType(0);
  v134 = *(v5 - 8);
  v6 = *(v134 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v125 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v125 - v13;
  v15 = type metadata accessor for FAFamilyStructs.Person(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  sub_1C4F01968();
  if (v3)
  {
    *v133 = v3;
    return;
  }

  v129 = v15;
  v130 = v5;
  v127 = v12;
  v128 = v14;
  v131 = v18;
  v137 = 0;
  v138 = 0xE000000000000000;
  v20 = sub_1C45B4BF8(v19, &selRef_fullName);
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0xE000000000000000;
  }

  MEMORY[0x1C6940010](v20, v22);

  MEMORY[0x1C6940010](124, 0xE100000000000000);
  v23 = sub_1C45B4BF8(v19, &selRef_appleID);
  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  MEMORY[0x1C6940010](v23, v25);

  MEMORY[0x1C6940010](124, 0xE100000000000000);
  v26 = sub_1C45B4BF8(v19, &selRef_memberTypeString);
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xE000000000000000;
  }

  MEMORY[0x1C6940010](v26, v28);

  if (qword_1EDDE9348 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for SourceIdPrefix();
  sub_1C442B738(v29, qword_1EDE2D080);
  String.base64EncodedSHA(withPrefix:)();
  v31 = v30;
  v33 = v32;

  v34 = v131;
  sub_1C4D9AB20(v31, v33, v35, v36, v37, v38, v39, v40, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);
  v41 = v130;
  v133 = 0;
  v42 = sub_1C45B4BF8(v19, &selRef_firstName);
  v44 = v43;
  v45 = v129;
  v46 = (v34 + v129[9]);
  v47 = v46[1];

  *v46 = v42;
  v46[1] = v44;
  v48 = sub_1C45B4BF8(v19, &selRef_lastName);
  v50 = v49;
  v51 = (v34 + v45[11]);
  v52 = v51[1];

  *v51 = v48;
  v51[1] = v50;
  v53 = sub_1C45B4BF8(v19, &selRef_fullName);
  v55 = v54;
  v56 = (v34 + v45[13]);
  v57 = v56[1];

  *v56 = v53;
  v56[1] = v55;
  v58 = v34;
  v59 = v45;
  if ([v19 isMe])
  {
    v60 = [v19 isMe];
    if (v60)
    {
      v61 = 1702195828;
    }

    else
    {
      v61 = 0x65736C6166;
    }

    if (v60)
    {
      v62 = 0xE400000000000000;
    }

    else
    {
      v62 = 0xE500000000000000;
    }

    v63 = (v58 + v45[19]);
    v64 = v63[1];

    *v63 = v61;
    v63[1] = v62;
  }

  v137 = [v19 age];
  v65 = sub_1C4F02858();
  v67 = v66;
  v68 = (v58 + v45[15]);
  v69 = v68[1];

  *v68 = v65;
  v68[1] = v67;
  v70 = sub_1C45B4BF8(v19, &selRef_appleID);
  v72 = v71;
  v73 = (v58 + v45[21]);
  v74 = v73[1];

  *v73 = v70;
  v73[1] = v72;
  v75 = sub_1C45B4BF8(v19, &selRef_memberTypeString);
  v77 = v76;
  v78 = (v58 + v45[17]);
  v79 = v78[1];

  *v78 = v75;
  v78[1] = v77;
  v80 = MEMORY[0x1E69E7CC0];
  v139 = MEMORY[0x1E69E7CC0];
  v81 = sub_1C45B4BF8(v19, &selRef_inviteEmail);
  if (v82)
  {
    v83 = v81;
    v84 = v82;
    v85 = [objc_allocWithZone(MEMORY[0x1E6996728]) init];
    v126 = v83;
    v86 = sub_1C4F01108();
    v87 = [v85 typeOfHandleString_];

    if (v87 == 1)
    {
      v88 = sub_1C4EFEEF8();
      v89 = v128;
      sub_1C440BAA8(v128, 1, 1, v88);
      v90 = v89 + v41[5];
      sub_1C4EFD1D8();
      v91 = v41[6];
      v92 = v132;
      if (qword_1EDDFED38 != -1)
      {
        swift_once();
      }

      v93 = type metadata accessor for Source();
      v94 = sub_1C442B738(v93, qword_1EDDFD0F0);
      sub_1C448CC08(v94, v89 + v91, type metadata accessor for Source);
      v95 = v89 + v41[7];
      sub_1C4EFE518();
      v96 = v41[9];
      v97 = (v89 + v41[8]);
      sub_1C4EFE478();
      v98 = (v89 + v41[10]);
      *v98 = 0;
      v98[1] = 0;
      v99 = v127;
      *v97 = v126;
      v97[1] = v84;
      sub_1C448CC08(v89, v99, type metadata accessor for FAFamilyStructs.AddressRelationshipType);
      sub_1C458D4BC(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v101 = v100;
      v103 = *(v100 + 16);
      v102 = *(v100 + 24);
      if (v103 >= v102 >> 1)
      {
        sub_1C458D4BC(v102 > 1, v103 + 1, 1, v100);
        v101 = v124;
      }

      *(v101 + 16) = v103 + 1;
      sub_1C47CD128(v127, v101 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v103, type metadata accessor for FAFamilyStructs.AddressRelationshipType);
      v139 = v101;
      sub_1C47CD188(v128, type metadata accessor for FAFamilyStructs.AddressRelationshipType);
      v58 = v131;
      goto LABEL_33;
    }

    v101 = MEMORY[0x1E69E7CC0];
    v58 = v131;
  }

  else
  {
    v101 = v80;
  }

  v92 = v132;
LABEL_33:
  v104 = sub_1C45B4BF8(v19, &selRef_memberPhoneNumbers);
  if (v105)
  {
    v137 = v104;
    v138 = v105;
    v135 = 44;
    v136 = 0xE100000000000000;
    sub_1C4415EA8();
    v106 = sub_1C4F01FC8();

    v107 = *(v106 + 16);
    if (v107)
    {
      v137 = MEMORY[0x1E69E7CC0];
      sub_1C459E080();
      v108 = v137;
      v109 = sub_1C4EFEEF8();
      v128 = v106;
      v110 = (v106 + 40);
      do
      {
        v112 = *(v110 - 1);
        v111 = *v110;
        sub_1C440BAA8(v9, 1, 1, v109);
        v113 = v41[5];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EFD1D8();
        v114 = v41[6];
        if (qword_1EDDFED38 != -1)
        {
          swift_once();
        }

        v115 = type metadata accessor for Source();
        v116 = sub_1C442B738(v115, qword_1EDDFD0F0);
        sub_1C448CC08(v116, &v9[v114], type metadata accessor for Source);
        v117 = &v9[v41[7]];
        sub_1C4EFE518();
        v118 = &v9[v41[8]];
        *v118 = 0;
        *(v118 + 1) = 0;
        v119 = &v9[v41[9]];
        sub_1C4EFE478();
        v120 = &v9[v41[10]];
        *v120 = v112;
        *(v120 + 1) = v111;
        v137 = v108;
        v121 = *(v108 + 16);
        if (v121 >= *(v108 + 24) >> 1)
        {
          sub_1C459E080();
          v108 = v137;
        }

        *(v108 + 16) = v121 + 1;
        sub_1C47CD128(v9, v108 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v121, type metadata accessor for FAFamilyStructs.AddressRelationshipType);
        v110 += 2;
        --v107;
      }

      while (v107);

      v92 = v132;
      v58 = v131;
      v59 = v129;
    }

    else
    {

      v108 = MEMORY[0x1E69E7CC0];
      v92 = v132;
    }

    sub_1C49D44F0(v108);
    v101 = v139;
  }

  v122 = *(v59 + 88);
  v123 = *(v58 + v122);

  *(v58 + v122) = v101;
  sub_1C4D9D3E8();
  sub_1C448CC08(v58, v92, type metadata accessor for FAFamilyStructs.Person);
  sub_1C47CD188(v58, type metadata accessor for FAFamilyStructs.Person);
}

uint64_t sub_1C47CD128(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C47CD188(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for FAFamilySourceIngestor()
{
  result = qword_1EDDE2F20;
  if (!qword_1EDDE2F20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C47CD254()
{
  result = type metadata accessor for PhaseStores();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Source();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C47CD300()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E699C070]) init];
  *(v0 + 256) = v1;
  [v1 setCachePolicy_];
  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 240;
  *(v0 + 24) = sub_1C47CD458;
  v2 = swift_continuation_init();
  *(v0 + 136) = sub_1C456902C(&qword_1EC0BD1C0, &qword_1C4F2D518);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1C47CDA90;
  *(v0 + 104) = &unk_1F43EC0A8;
  *(v0 + 112) = v2;
  [v1 startRequestWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1C47CD458()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  if (v2)
  {
    v3 = sub_1C47CD6C4;
  }

  else
  {
    v3 = sub_1C47CD568;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C47CD568()
{
  v1 = *(v0 + 240);
  *(v0 + 208) = sub_1C4461BB8(0, &unk_1EDDDBAC8, 0x1E699C050);
  *(v0 + 216) = &off_1F43EC038;
  *(v0 + 184) = v1;
  sub_1C47CE008(v0 + 184, v0 + 144);
  *(v0 + 80) = 0;
  v2 = *(v0 + 248);
  v3 = *(v2 + *(type metadata accessor for PhaseStores() + 24));
  v4 = swift_task_alloc();
  v4[2] = v0 + 224;
  v4[3] = v0 + 144;
  v4[4] = v2;
  v4[5] = v0 + 232;
  v4[6] = v0 + 80;
  sub_1C441964C();
  v5 = *(v0 + 248);
  v6 = *(v0 + 256);

  if (!v2)
  {
    sub_1C4EF9AE8();
    sub_1C4644E1C();
  }

  sub_1C47CDFA0(v0 + 144);
  sub_1C47CD828(v5, (v0 + 232), (v0 + 224));

  sub_1C43FBDA0();

  return v7();
}

uint64_t sub_1C47CD6C4()
{
  v11 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  swift_willThrow();
  v10[0] = 1;
  static Transformers.reportError(error:context:config:pipelineType:)(v1, 0x796C696D61464146, 0xE800000000000000, v2, v10);

  *(v0 + 80) = 0;
  v3 = *(v0 + 248);
  v4 = *(v3 + *(type metadata accessor for PhaseStores() + 24));
  v5 = swift_task_alloc();
  v5[2] = v0 + 224;
  v5[3] = v0 + 144;
  v5[4] = v3;
  v5[5] = v0 + 232;
  v5[6] = v0 + 80;
  sub_1C441964C();
  v6 = *(v0 + 256);
  v7 = *(v0 + 248);

  if (!v3)
  {
    sub_1C4EF9AE8();
    sub_1C4644E1C();
  }

  sub_1C47CDFA0(v0 + 144);
  sub_1C47CD828(v7, (v0 + 232), (v0 + 224));

  sub_1C43FBDA0();

  return v8();
}

uint64_t sub_1C47CD828(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Pipeline.StatusStore();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C4430B24(a1, v10, type metadata accessor for Configuration);
  v10[*(v7 + 28)] = 1;
  Pipeline.StatusStore.currentSessionId()();
  sub_1C47CE078(v10);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v12 = sub_1C4F01108();

  *(inited + 48) = v12;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  sub_1C4461BB8(0, &qword_1EDDFA440, 0x1E696AEC0);
  *(inited + 72) = sub_1C4F01EF8();
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  v13 = *a2;
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  result = *a3 - *a2;
  if (__OFSUB__(*a3, *a2))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}

uint64_t *sub_1C47CDA90(uint64_t a1, void *a2, void *a3)
{
  result = sub_1C4409678((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1C467BF20(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_1C467BF1C(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C47CDB20(void (*a1)(uint64_t)@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, _BYTE *a6@<X6>, _BYTE *a7@<X8>)
{
  if (__OFADD__(*a2, 1))
  {
    __break(1u);
  }

  else
  {
    ++*a2;
    sub_1C47CE0D4(a3, &v22);
    if (v23)
    {
      v21 = a7;
      sub_1C441D670(&v22, v24);
      v13 = v25;
      v14 = v26;
      sub_1C4409678(v24, v25);
      LOBYTE(v22) = *(a4 + *(type metadata accessor for FAFamilySourceIngestor() + 24));
      sub_1C47CC080(&v22, v13, v14);
      if (v7)
      {
        sub_1C440962C(v24);
        v24[0] = v7;
        v17 = v7;
        sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
        if (swift_dynamicCast())
        {

          v18 = v22;
          sub_1C465B58C();
          v19 = swift_allocError();
          *v20 = v18;
          v27 = 1;
          static Transformers.reportError(error:context:config:pipelineType:)(v19, 0x796C696D61464146, 0xE800000000000000, a4, &v27);
        }

        else
        {

          LOBYTE(v24[0]) = 1;
          static Transformers.reportError(error:context:config:pipelineType:)(v7, 0x796C696D61464146, 0xE800000000000000, a4, v24);

          *a6 = 1;
        }

        a7 = v21;
        goto LABEL_12;
      }

      sub_1C4812140();
      v16 = v15;

      a1(v16);

      sub_1C440962C(v24);
      a7 = v21;
    }

    else
    {
      sub_1C47CDFA0(&v22);
    }

    if (!__OFADD__(*a5, 1))
    {
      ++*a5;
LABEL_12:
      *a7 = *a6;
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1C47CDD70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4665934;

  return sub_1C47CD2E0();
}

uint64_t sub_1C47CDE6C(uint64_t a1)
{
  result = sub_1C47CDF38(&qword_1EDDE2F48);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C47CDEB0(uint64_t a1)
{
  result = sub_1C47CDF38(&qword_1EDDE2F30);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C47CDEF4(uint64_t a1)
{
  result = sub_1C47CDF38(&qword_1EDDE2F38);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C47CDF38(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FAFamilySourceIngestor();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C47CDFA0(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BD1C8, &unk_1C4F2D520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C47CE008(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BD1C8, &unk_1C4F2D520);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C47CE078(uint64_t a1)
{
  v2 = type metadata accessor for Pipeline.StatusStore();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C47CE0D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BD1C8, &unk_1C4F2D520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C47CE144(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for Fuser();
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64) + 15;
  *(v3 + 32) = swift_task_alloc();
  v8 = type metadata accessor for Linker();
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  v11 = type metadata accessor for FAFamilySourceIngestor();
  *(v3 + 48) = v11;
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  v14 = type metadata accessor for Source();
  *(v3 + 64) = v14;
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v17 = type metadata accessor for PhaseStores();
  sub_1C43FBD18(v17);
  v19 = *(v18 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 121) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C47CE29C, 0, 0);
}

uint64_t sub_1C47CE29C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 16);
  sub_1C4419288();
  sub_1C44717B8(v3, v4, v5);
  if (qword_1EDDFED38 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 121);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  v9 = *(v0 + 72);
  v11 = *(v0 + 48);
  v10 = *(v0 + 56);
  v12 = *(v0 + 16);
  v13 = sub_1C442B738(*(v0 + 64), qword_1EDDFD0F0);
  *(v0 + 104) = v13;
  sub_1C44717B8(v13, v7, type metadata accessor for Source);
  sub_1C44717B8(v12, v10, type metadata accessor for PhaseStores);
  sub_1C44717B8(v13, v10 + *(v11 + 20), type metadata accessor for Source);
  *(v10 + *(v11 + 24)) = v6;
  sub_1C44717B8(v13, v9, type metadata accessor for Source);
  sub_1C44717B8(v12, v8, type metadata accessor for PhaseStores);
  *(v0 + 120) = 1;
  v14 = swift_task_alloc();
  *(v0 + 112) = v14;
  *v14 = v0;
  v14[1] = sub_1C47CE454;
  v15 = *(v0 + 88);
  v16 = *(v0 + 72);
  v17 = *(v0 + 40);

  return Linker.init(source:stores:pipelineType:)();
}

uint64_t sub_1C47CE454()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C47CE550, 0, 0);
}

uint64_t sub_1C47CE550()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  v23 = v0[5];
  v7 = v0[2];
  v8 = v0[3];
  sub_1C44717B8(v0[13], v0[9], type metadata accessor for Source);
  sub_1C4419288();
  sub_1C44717B8(v7, v3, v9);
  Fuser.init(source:stores:pipelineType:)();
  sub_1C44857CC(v7);
  v10 = (v8 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor);
  *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor + 24) = v4;
  v10[4] = sub_1C47CE7F0();
  v11 = sub_1C4422F90(v10);
  sub_1C47CE848(v5, v11, type metadata accessor for FAFamilySourceIngestor);
  sub_1C44002E8();
  sub_1C47CE848(v2, v12, v13);
  sub_1C44002E8();
  sub_1C47CE848(v1, v14, v15);
  sub_1C44002E8();
  sub_1C47CE848(v23, v16, v17);
  sub_1C44002E8();
  sub_1C47CE848(v6, v18, v19);
  *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType) = 1;

  v20 = v0[1];
  v21 = v0[3];

  return v20(v21);
}

uint64_t type metadata accessor for FamilyCircleGroupPhase()
{
  result = qword_1EDDE2E80;
  if (!qword_1EDDE2E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C47CE7F0()
{
  result = qword_1EDDE2F40;
  if (!qword_1EDDE2F40)
  {
    type metadata accessor for FAFamilySourceIngestor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE2F40);
  }

  return result;
}

uint64_t sub_1C47CE848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FCE50(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C47CE8B4()
{
  if (qword_1EC0B7140 != -1)
  {
    swift_once();
  }

  qword_1EC151F98 = qword_1EC0C3908;
  unk_1EC151FA0 = *&qword_1EC0C3910;
  qword_1EC151FB0 = qword_1EC0C3920;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C47CE934(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0BD1F8, &qword_1C4F2D630);
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v19[-v11];
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C47CF038();
  sub_1C4F02BF8();
  v14 = *v3;
  v15 = v3[1];
  v22 = 0;
  sub_1C4F02798();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v21 = 1;
    sub_1C4F02738();
    v20 = v3[4];
    v19[15] = 2;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C46D4190(&qword_1EC0B8728, sub_1C458A984);
    sub_1C4F027E8();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1C47CEB10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0BD1E8, &unk_1C4F2D620);
  v6 = sub_1C43FCDF8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C47CF038();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v10 = sub_1C4F02678();
  v12 = v11;
  v19 = v10;
  v17 = sub_1C4F02618();
  v18 = v13;
  sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
  sub_1C46D4190(&qword_1EC0B8740, sub_1C458AA50);
  sub_1C4F026C8();
  v14 = sub_1C4402F74();
  v15(v14);
  result = sub_1C440962C(a1);
  *a2 = v19;
  a2[1] = v12;
  a2[2] = v17;
  a2[3] = v18;
  a2[4] = v20;
  return result;
}

uint64_t sub_1C47CED88(uint64_t a1)
{
  v2 = sub_1C47CF038();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C47CEDC4(uint64_t a1)
{
  v2 = sub_1C47CF038();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C47CEE00@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B6AD8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC151FB0;
  *a1 = qword_1EC151F98;
  *(a1 + 8) = unk_1EC151FA0;
  *(a1 + 24) = v2;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

double sub_1C47CEE84@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C47CEB10(a1, v6);
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

unint64_t sub_1C47CEEE4(uint64_t a1)
{
  result = sub_1C47CEF0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C47CEF0C()
{
  result = qword_1EC0BD1D0;
  if (!qword_1EC0BD1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD1D0);
  }

  return result;
}

unint64_t sub_1C47CEF60(uint64_t a1)
{
  *(a1 + 8) = sub_1C47CEF90();
  result = sub_1C47CEFE4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C47CEF90()
{
  result = qword_1EC0BD1D8;
  if (!qword_1EC0BD1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD1D8);
  }

  return result;
}

unint64_t sub_1C47CEFE4()
{
  result = qword_1EC0BD1E0;
  if (!qword_1EC0BD1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD1E0);
  }

  return result;
}

unint64_t sub_1C47CF038()
{
  result = qword_1EC0BD1F0;
  if (!qword_1EC0BD1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD1F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FamilyMember.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C47CF16C()
{
  result = qword_1EC0BD200;
  if (!qword_1EC0BD200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD200);
  }

  return result;
}

unint64_t sub_1C47CF1C4()
{
  result = qword_1EC0BD208;
  if (!qword_1EC0BD208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD208);
  }

  return result;
}

unint64_t sub_1C47CF21C()
{
  result = qword_1EC0BD210;
  if (!qword_1EC0BD210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD210);
  }

  return result;
}

uint64_t sub_1C47CF270(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore31FamilyNameEquivalencySignalView____lazy_storage___featureNames) = 0;
  *(v3 + 16) = v5;
  *(v3 + 32) = v6;
  *(v3 + 40) = *(a1 + 24);
  sub_1C463F300(a2, v3 + OBJC_IVAR____TtC24IntelligencePlatformCore31FamilyNameEquivalencySignalView_config);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore31FamilyNameEquivalencySignalView_store) = a3;
  return v3;
}

uint64_t sub_1C47CF2DC()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore31FamilyNameEquivalencySignalView____lazy_storage___featureNames;
  if (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore31FamilyNameEquivalencySignalView____lazy_storage___featureNames))
  {
    v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore31FamilyNameEquivalencySignalView____lazy_storage___featureNames);
  }

  else
  {
    sub_1C448DE08(&unk_1F43D8D10);
    v2 = v3;
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v2;
}

uint64_t sub_1C47CF348()
{
  v169 = type metadata accessor for GraphTriple(0);
  v1 = sub_1C43FCDF8(v169);
  v151 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v157 = &v133 - v9;
  v10 = sub_1C4EFDE88();
  v11 = sub_1C43FCDF8(v10);
  v161 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  v155 = v15;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBF38();
  v154 = v17;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBF38();
  v163 = v19;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBF38();
  v22 = v21;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v133 - v24;
  v156 = sub_1C4EFDE98();
  v26 = sub_1C43FCDF8(v156);
  v160 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v159 = &v133 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v133 - v33;
  v35 = sub_1C4EFF0C8();
  v36 = sub_1C43FCDF8(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBFDC();
  v167 = v41;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBF38();
  v147 = v43;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v133 - v45;
  v152 = v0;
  v153 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore31FamilyNameEquivalencySignalView_store);
  sub_1C486DFC0();
  sub_1C4868198();

  if (sub_1C44157D4(v34, 1, v35) == 1)
  {
    return sub_1C4420C3C(v34, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  v164 = *(v38 + 32);
  v165 = (v38 + 32);
  v164(v46, v34, v35);
  sub_1C456902C(&qword_1EC0B8EC8, &unk_1C4F0E950);
  v48 = *(v38 + 72);
  v49 = *(v38 + 80);
  v148 = v38;
  v50 = (v49 + 32) & ~v49;
  v172 = v48;
  v51 = swift_allocObject();
  v149 = xmmword_1C4F0D130;
  *(v51 + 16) = xmmword_1C4F0D130;
  v52 = *(v38 + 16);
  v166 = v50;
  v168 = v35;
  v170 = v52;
  v171 = v38 + 16;
  v52(v51 + v50, v46, v35);
  sub_1C4D51ABC();
  v146 = v53;
  v54 = sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v55 = *(sub_1C4EFEEF8() - 8);
  v56 = *(v55 + 80);
  v57 = (v56 + 32) & ~v56;
  v139 = *(v55 + 72);
  v138 = v56;
  v141 = v54;
  v58 = swift_allocObject();
  sub_1C44322E0(v58);
  v140 = v57;
  sub_1C4EFE2C8();
  sub_1C4D504A4();
  v145 = v59;
  v158 = v25;
  v60 = *MEMORY[0x1E69A95C0];
  v61 = v161;
  v150 = v46;
  v62 = v10;
  v64 = v161 + 104;
  v63 = *(v161 + 104);
  sub_1C43FC2F4();
  v63();
  v65 = v22;
  sub_1C43FC2F4();
  v63();
  sub_1C43FC2F4();
  v63();
  v66 = v154;
  sub_1C43FC2F4();
  v63();
  v67 = v155;
  HIDWORD(v143) = v60;
  sub_1C43FC2F4();
  v144 = v64;
  v142 = v63;
  v63();
  v68 = v163;
  sub_1C4EFDCD8();

  v69 = *(v61 + 8);
  v69(v67, v62);
  v69(v66, v62);
  v69(v68, v62);
  v146 = v65;
  v69(v65, v62);
  v145 = v69;
  v69(v158, v62);
  v70 = sub_1C4EFF8F8();
  v71 = v157;
  v137 = v70;
  sub_1C440BAA8(v157, 1, 1, v70);
  v72 = v159;
  v73 = sub_1C498DB80();
  sub_1C4420C3C(v71, &qword_1EC0BAA00, &unk_1C4F17400);
  v74 = *(v160 + 8);
  v160 += 8;
  v136 = v74;
  v74(v72, v156);
  v75 = *(v73 + 16);
  v76 = v62;
  v161 = v61 + 8;
  if (v75)
  {
    v135 = v62;
    v173[0] = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v77 = v173[0];
    v78 = (*(v151 + 80) + 32) & ~*(v151 + 80);
    v134 = v73;
    v79 = v73 + v78;
    v80 = *(v151 + 72);
    do
    {
      sub_1C449EE28(v79, v6, type metadata accessor for GraphTriple);
      v81 = &v6[v169[8]];
      v83 = *v81;
      v82 = *(v81 + 1);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C449F17C(v6, type metadata accessor for GraphTriple);
      v173[0] = v77;
      v84 = *(v77 + 16);
      if (v84 >= *(v77 + 24) >> 1)
      {
        sub_1C44CD9C0();
        v77 = v173[0];
      }

      *(v77 + 16) = v84 + 1;
      v85 = v77 + 16 * v84;
      *(v85 + 32) = v83;
      *(v85 + 40) = v82;
      v79 += v80;
      --v75;
    }

    while (v75);

    v86 = v150;
    v76 = v135;
  }

  else
  {

    v77 = MEMORY[0x1E69E7CC0];
    v86 = v150;
  }

  v87 = v146;
  if (*(v77 + 16))
  {
    v88 = swift_allocObject();
    sub_1C44322E0(v88);
    sub_1C4EFE2C8();
    sub_1C4D504A4();
    v169 = v89;
    sub_1C4499940(v77, v90, v91, v92, v93, v94, v95, v96, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146);
    *&v149 = v97;
    sub_1C440AA08();
    v98 = v142;
    v142();
    sub_1C440AA08();
    v98();
    sub_1C440AA08();
    v98();
    v99 = v154;
    sub_1C440AA08();
    v98();
    v100 = v87;
    v101 = v155;
    sub_1C440AA08();
    v98();
    v102 = v100;
    v103 = v159;
    v104 = v163;
    sub_1C4EFDCD8();

    v105 = v145;
    v145(v101, v76);
    v105(v99, v76);
    v105(v104, v76);
    v105(v102, v76);
    v105(v158, v76);
    v106 = v157;
    sub_1C440BAA8(v157, 1, 1, v137);
    v107 = sub_1C498DB80();
    sub_1C4420C3C(v106, &qword_1EC0BAA00, &unk_1C4F17400);
    v136(v103, v156);
    v108 = *(v107 + 2);
    if (v108)
    {
      v169 = v6;
      v173[0] = MEMORY[0x1E69E7CC0];
      sub_1C459D178();
      v109 = v173[0];
      v110 = *(v151 + 80);
      v163 = v107;
      v111 = &v107[(v110 + 32) & ~v110];
      v112 = *(v151 + 72);
      v113 = v168;
      v114 = v147;
      do
      {
        v115 = v169;
        sub_1C449EE28(v111, v169, type metadata accessor for GraphTriple);
        v170(v114, v115, v113);
        sub_1C449F17C(v115, type metadata accessor for GraphTriple);
        v173[0] = v109;
        v116 = *(v109 + 16);
        v107 = (v116 + 1);
        if (v116 >= *(v109 + 24) >> 1)
        {
          sub_1C459D178();
          v109 = v173[0];
        }

        *(v109 + 16) = v107;
        v164((v109 + v166 + v116 * v172), v114, v113);
        v111 += v112;
        --v108;
      }

      while (v108);

      sub_1C4406DE0();
      v117 = v109;
    }

    else
    {

      v117 = MEMORY[0x1E69E7CC0];
      v113 = v168;
      sub_1C4406DE0();
    }

    v173[0] = MEMORY[0x10];
    v173[1] = MEMORY[0x18];
    v173[2] = MEMORY[0x20];
    v173[3] = MEMORY[0x28];
    v173[4] = MEMORY[0x30];
    v118 = *(v117 + 16);
    if (v118)
    {
      v174 = MEMORY[0x1E69E7CC0];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      sub_1C459D810();
      v119 = v174;
      v169 = objc_opt_self();
      v108 = v117 + v166;
      v166 = 0x80000001C4F86460;
      v164 = v117;
      v165 = (v107 + 8);
      do
      {
        v120 = v167;
        v170(v167, v108, v113);
        v121 = sub_1C4EFF048();
        v123 = v122;
        v107 = [v169 featureValueWithInt64_];
        (*v165)(v120, v113);
        v174 = v119;
        v124 = *(v119 + 16);
        if (v124 >= *(v119 + 24) >> 1)
        {
          sub_1C459D810();
          v119 = v174;
        }

        *(v119 + 16) = v124 + 1;
        v125 = (v119 + 40 * v124);
        v125[4] = 0xD000000000000011;
        v125[5] = v166;
        v125[6] = v121;
        v125[7] = v123;
        v125[8] = v107;
        v108 += v172;
        --v118;
        v113 = v168;
      }

      while (v118);

      sub_1C4406DE0();
    }

    else
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v126 = v162;
    sub_1C47D32C8();
    if (v126)
    {

      return (*(v107 + 1))(v150, v113);
    }

    else
    {

      if (qword_1EDDFECD0 != -1)
      {
        swift_once();
      }

      v127 = sub_1C4F00978();
      sub_1C442B738(v127, qword_1EDE2DF70);

      v128 = sub_1C4F00968();
      v129 = sub_1C4F01CB8();

      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        v131 = v107;
        v132 = swift_slowAlloc();
        v173[0] = v132;
        *v130 = 136315138;
        *(v130 + 4) = sub_1C441D828(*(v108 + OBJC_IVAR____TtC24IntelligencePlatformCore31FamilyNameEquivalencySignalView_config), *(v108 + OBJC_IVAR____TtC24IntelligencePlatformCore31FamilyNameEquivalencySignalView_config + 8), v173);
        _os_log_impl(&dword_1C43F8000, v128, v129, "SignalView %s: Wrote features", v130, 0xCu);
        sub_1C440962C(v132);
        MEMORY[0x1C6942830](v132, -1, -1);
        MEMORY[0x1C6942830](v130, -1, -1);

        return v131[1](v150, v168);
      }

      else
      {

        return (*(v107 + 1))(v150, v168);
      }
    }
  }

  else
  {
    (*(v148 + 8))(v86, v168);
  }
}

void *sub_1C47D02B8()
{
  v1 = v0[3];
  v3 = v0[5];
  v2 = v0[6];

  sub_1C449F17C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore31FamilyNameEquivalencySignalView_config, _s10ViewConfigVMa);
  v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore31FamilyNameEquivalencySignalView_store);

  v5 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore31FamilyNameEquivalencySignalView____lazy_storage___featureNames);

  return v0;
}

uint64_t sub_1C47D0340()
{
  sub_1C47D02B8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FamilyNameEquivalencySignalView()
{
  result = qword_1EC0BD220;
  if (!qword_1EC0BD220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C47D03EC()
{
  result = _s10ViewConfigVMa(319);
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

uint64_t sub_1C47D04A0()
{
  sub_1C47CF348();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1C47D057C()
{
  v1 = sub_1C456902C(&qword_1EC0BD230, &unk_1C4F2D800);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v86 - v3;
  v5 = sub_1C456902C(&qword_1EC0BD238, &qword_1C4F731B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v86 - v7;
  v90 = type metadata accessor for FavoriteSportsTeamStructs.IdentifierRelationshipType(0);
  v9 = sub_1C43FBCE0(v90);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v91 = type metadata accessor for FavoriteSportsTeamStructs.SportsTeam(0);
  v15 = sub_1C43FBCE0(v91);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v92 = v19 - v18;
  v20 = type metadata accessor for FavoriteSportsTeamStructs.Person(0);
  v21 = sub_1C43FBCE0(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v26 = v25 - v24;
  if (qword_1EDDE9248 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for SourceIdPrefix();
  sub_1C442B738(v27, qword_1EDE2CF30);
  String.base64EncodedSHA(withPrefix:)();
  v29 = v28;
  v31 = v30;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4DA334C(v29, v31, v32, v33, v34, v35, v36, v37, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
  if (v0)
  {
  }

  else
  {
    v87 = v29;
    v88 = v8;
    v38 = v14;
    v89 = v4;
    v39 = v26 + *(v20 + 36);
    v40 = *(v39 + 8);

    *v39 = xmmword_1C4F17530;
    v41 = v93;
    sub_1C4C6261C(v93);
    if (!v42)
    {
      sub_1C45B4BF8(v41, &selRef_qid);
    }

    if (qword_1EDDE92C0 != -1)
    {
      swift_once();
    }

    sub_1C442B738(v27, &qword_1EDE2CFF0);
    String.base64EncodedSHA(withPrefix:)();
    v44 = v43;
    v27 = v45;

    v52 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v52 = v44 & 0xFFFFFFFFFFFFLL;
    }

    if (v52)
    {
      v53 = v92;
      sub_1C4DA3C38(v44, v27, v46, v47, v48, v49, v50, v51, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
      v86 = v38;
      v55 = v93;
      v56 = sub_1C45B4BF8(v93, &selRef_qid);
      v58 = v57;
      v59 = v91;
      v60 = v53;
      v61 = (v53 + *(v91 + 44));
      v62 = v61[1];

      *v61 = v56;
      v61[1] = v58;
      v63 = v55;
      v64 = v86;
      v65 = sub_1C45B4BF8(v63, &selRef_name);
      v67 = v66;
      v68 = (v60 + *(v59 + 36));
      v69 = v68[1];

      *v68 = v65;
      v68[1] = v67;
      v70 = sub_1C4EFEEF8();
      sub_1C440BAA8(v64, 1, 1, v70);
      v71 = v90;
      v72 = v64 + v90[5];
      sub_1C4EFD258();
      v73 = v71[6];
      if (qword_1EDDFD240 != -1)
      {
        swift_once();
      }

      v74 = type metadata accessor for Source();
      v75 = sub_1C442B738(v74, &qword_1EDDFD248);
      sub_1C448CC68(v75, v64 + v73, type metadata accessor for Source);
      v76 = v64 + v71[7];
      sub_1C4EFE558();
      v77 = v71[9];
      v78 = (v64 + v71[8]);
      sub_1C4EFE658();
      v79 = v71[10];
      *v78 = sub_1C4C6261C(v93);
      v78[1] = v80;
      *(v64 + v79) = xmmword_1C4F2D7F0;
      v81 = v88;
      sub_1C448CC68(v64, v88, type metadata accessor for FavoriteSportsTeamStructs.IdentifierRelationshipType);
      sub_1C440BAA8(v81, 0, 1, v71);
      v82 = v92;
      sub_1C4DA4534(v81);
      v83 = v89;
      sub_1C448CC68(v82, v89, type metadata accessor for FavoriteSportsTeamStructs.SportsTeam);
      sub_1C440BAA8(v83, 0, 1, v91);
      sub_1C4DA464C(v83);
      HIBYTE(v95) = 1;
      sub_1C4DA4778(v87, v31, &v95 + 7);
      v27 = v85;

      sub_1C441F9AC();
      sub_1C442CA1C();
      sub_1C4406DF4();
    }

    else
    {

      sub_1C465B58C();
      swift_allocError();
      *v54 = 0;
      swift_willThrow();
      sub_1C4406DF4();
    }
  }

  return v27;
}

uint64_t sub_1C47D0B14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C47D0B6C(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for Fuser();
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64) + 15;
  *(v3 + 32) = swift_task_alloc();
  v8 = type metadata accessor for Linker();
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  v11 = type metadata accessor for FavoriteSportsTeamSourceIngestor();
  *(v3 + 48) = v11;
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  v14 = type metadata accessor for Source();
  *(v3 + 64) = v14;
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v17 = type metadata accessor for PhaseStores();
  sub_1C43FBD18(v17);
  v19 = *(v18 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 121) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C47D0CC4, 0, 0);
}

uint64_t sub_1C47D0CC4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 16);
  sub_1C4419288();
  sub_1C44717B8(v3, v4, v5);
  if (qword_1EDDFD240 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 121);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  v9 = *(v0 + 72);
  v11 = *(v0 + 48);
  v10 = *(v0 + 56);
  v12 = *(v0 + 16);
  v13 = sub_1C442B738(*(v0 + 64), &qword_1EDDFD248);
  *(v0 + 104) = v13;
  sub_1C44717B8(v13, v7, type metadata accessor for Source);
  sub_1C44717B8(v12, v10, type metadata accessor for PhaseStores);
  sub_1C44717B8(v13, v10 + *(v11 + 20), type metadata accessor for Source);
  *(v10 + *(v11 + 24)) = v6;
  sub_1C44717B8(v13, v9, type metadata accessor for Source);
  sub_1C44717B8(v12, v8, type metadata accessor for PhaseStores);
  *(v0 + 120) = v6;
  v14 = swift_task_alloc();
  *(v0 + 112) = v14;
  *v14 = v0;
  v14[1] = sub_1C47D0E78;
  v15 = *(v0 + 88);
  v16 = *(v0 + 72);
  v17 = *(v0 + 40);

  return Linker.init(source:stores:pipelineType:)();
}

uint64_t sub_1C47D0E78()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C47D0F74, 0, 0);
}

uint64_t sub_1C47D0F74()
{
  v1 = *(v0 + 121);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 32);
  v23 = *(v0 + 96);
  v24 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  sub_1C44717B8(*(v0 + 104), *(v0 + 72), type metadata accessor for Source);
  sub_1C4419288();
  sub_1C44717B8(v7, v2, v9);
  Fuser.init(source:stores:pipelineType:)();
  sub_1C44857CC(v7);
  v10 = (v8 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor);
  *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor + 24) = v4;
  v10[4] = sub_1C47D1220();
  v11 = sub_1C4422F90(v10);
  sub_1C47D1278(v5, v11, type metadata accessor for FavoriteSportsTeamSourceIngestor);
  sub_1C44002E8();
  sub_1C47D1278(v3, v12, v13);
  sub_1C44002E8();
  sub_1C47D1278(v23, v14, v15);
  sub_1C44002E8();
  sub_1C47D1278(v24, v16, v17);
  sub_1C44002E8();
  sub_1C47D1278(v6, v18, v19);
  *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType) = 1;

  v20 = *(v0 + 8);
  v21 = *(v0 + 24);

  return v20(v21);
}

uint64_t type metadata accessor for FavoriteSportsTeamPhase()
{
  result = qword_1EDDE2200;
  if (!qword_1EDDE2200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C47D1220()
{
  result = qword_1EDDDDFE0;
  if (!qword_1EDDDDFE0)
  {
    type metadata accessor for FavoriteSportsTeamSourceIngestor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDDFE0);
  }

  return result;
}

uint64_t sub_1C47D1278(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FCE50(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for FavoriteSportsTeamSourceIngestor()
{
  result = qword_1EDDDDFC0;
  if (!qword_1EDDDDFC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C47D1368()
{
  v0[18] = 0;
  v0[19] = 0;
  v1 = [objc_opt_self() sharedInstance];
  v0[23] = v1;
  v0[20] = MEMORY[0x1E69E7CC0];
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_1C47D14B8;
  v2 = swift_continuation_init();
  v0[17] = sub_1C456902C(&qword_1EC0BD240, qword_1C4F5F810);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C47CDA90;
  v0[13] = &unk_1F43EC2F0;
  v0[14] = v2;
  [v1 requestedSchedulesForTeamsWithReply_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C47D14B8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_1C47D16E8;
  }

  else
  {
    v3 = sub_1C47D15C8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C47D15C8()
{
  v1 = *(v0 + 168);
  v2 = [v1 teams];
  sub_1C4461BB8(0, &unk_1EDDFA480, 0x1E698AF38);
  v3 = sub_1C4F01678();

  *(v0 + 160) = v3;
  v4 = *&v2[*(sub_1C442CA44() + 24)];
  v5 = swift_task_alloc();
  sub_1C4419678(v5);
  v6 = *(v0 + 176);

  v7 = *(v0 + 160);

  sub_1C47D17FC(v6, (v0 + 152), (v0 + 144));
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1C47D16E8()
{
  v10 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  swift_willThrow();
  v9[0] = 1;
  static Transformers.reportError(error:context:config:pipelineType:)(v1, 0xD000000000000012, 0x80000001C4F9B510, v2, v9);

  v3 = *&v1[*(sub_1C442CA44() + 24)];
  v4 = swift_task_alloc();
  sub_1C4419678(v4);
  v5 = *(v0 + 176);

  v6 = *(v0 + 160);

  sub_1C47D17FC(v5, (v0 + 152), (v0 + 144));
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1C47D17FC(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Pipeline.StatusStore();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C4430B24(a1, v10, type metadata accessor for Configuration);
  v10[*(v7 + 28)] = 1;
  Pipeline.StatusStore.currentSessionId()();
  sub_1C47CE078(v10);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v12 = sub_1C4F01108();

  *(inited + 48) = v12;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  sub_1C4461BB8(0, &qword_1EDDFA440, 0x1E696AEC0);
  *(inited + 72) = sub_1C4F01EF8();
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  v13 = *a2;
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  result = *a3 - *a2;
  if (__OFSUB__(*a3, *a2))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}

void sub_1C47D1A64(void (*a1)(uint64_t)@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, void *a5@<X5>, _BYTE *a6@<X6>, _BYTE *a7@<X8>)
{
  v8 = v7;
  v12 = *a2;
  v26 = *a2 & 0xC000000000000001;
  v27 = sub_1C4428DA0();
  v25 = v12 & 0xFFFFFFFFFFFFFF8;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = 0;
  v23 = a4;
  while (1)
  {
    if (v27 == v13)
    {

      *a7 = *a6;
      return;
    }

    if (v26)
    {
      v14 = MEMORY[0x1C6940F90](v13, v12);
    }

    else
    {
      if (v13 >= *(v25 + 16))
      {
        goto LABEL_15;
      }

      v14 = *(v12 + 8 * v13 + 32);
    }

    v15 = v14;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    sub_1C4ACEF94();
    if (v8)
    {

      return;
    }

    if (__OFADD__(*a4, 1))
    {
      goto LABEL_16;
    }

    ++*a4;
    sub_1C47D057C();
    v16 = a3;
    v17 = v12;
    v18 = a6;
    sub_1C4812140();
    v20 = v19;

    a1(v20);
    v8 = 0;

    if (__OFADD__(*a5, 1))
    {
      goto LABEL_17;
    }

    ++*a5;
    a6 = v18;
    v12 = v17;
    a3 = v16;
    a4 = v23;
    ++v13;
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_1C47D1C88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return sub_1C47D1348();
}

uint64_t sub_1C47D1D18(uint64_t a1)
{
  result = sub_1C47D1DE4(qword_1EDDDDFE8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C47D1D5C(uint64_t a1)
{
  result = sub_1C47D1DE4(&qword_1EDDDDFD0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C47D1DA0(uint64_t a1)
{
  result = sub_1C47D1DE4(&qword_1EDDDDFD8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C47D1DE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FavoriteSportsTeamSourceIngestor();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Void __swiftcall ViewFeatureDatabaseTable.clearAllData()()
{
  sub_1C444B120();
  v0 = sub_1C440CABC();
  sub_1C446C37C(v0, v1);
}

void sub_1C47D1F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  sub_1C4417168();
  v42 = *v10;
  v43 = sub_1C4EFB1E8();
  v13 = sub_1C43FCDF8(v43);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  sub_1C4433378();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v25 = sub_1C442BAE8(v17, v18, v19, v20, v21, v22, v23, v24, v41);
  v26 = sub_1C43FCDF8(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C4406E1C();
  v31 = *(v10 + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
  sub_1C456902C(&qword_1EC0BD330, &qword_1C4F2DAF0);
  sub_1C444FD74();
  if (!v11)
  {
    goto LABEL_7;
  }

  v32 = v11;
  sub_1C4EFA798();
  sub_1C447F088();
  sub_1C445E7F4();
  v33 = *(v28 + 8);
  v34 = sub_1C43FCE84();
  v33(v34);
  if (v12)
  {

    sub_1C4778264();
    sub_1C43FFB2C();
    sub_1C4433CB8();
LABEL_7:
    sub_1C440431C();
    sub_1C43FBC80();
    return;
  }

  v35 = v11;
  sub_1C4EFAAC8();
  sub_1C447F088();
  sub_1C445E7F4();
  v36 = sub_1C43FCE84();
  v33(v36);
  sub_1C442F1A4();
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C43FEF9C())
  {

    goto LABEL_7;
  }

  v37 = sub_1C440F670();
  v38(v37);
  v39 = sub_1C441C250(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v39, v40);
  __break(1u);
}

void sub_1C47D21A8()
{
  sub_1C43FE96C();
  sub_1C4400368();
  v23 = sub_1C4EFB1E8();
  v3 = sub_1C43FCDF8(v23);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBFDC();
  sub_1C4433378();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C43FC318();
  v8 = sub_1C43FCDF8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4406E1C();
  v13 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
  sub_1C4404B44();
  sub_1C4EFAF88();
  if (!v2)
  {
    goto LABEL_8;
  }

  v14 = v2;
  sub_1C4EFA798();
  sub_1C447F088();
  sub_1C445E7F4();
  v15 = *(v10 + 8);
  v16 = sub_1C43FCE84();
  v15(v16);
  if (v1)
  {

    sub_1C4778264();
    sub_1C43FFB2C();
    sub_1C4433CB8();
LABEL_8:
    sub_1C440431C();
    sub_1C43FBC80();
    return;
  }

  v17 = v2;
  sub_1C4EFAAC8();
  sub_1C447F088();
  sub_1C445E7F4();
  v18 = sub_1C43FCE84();
  v15(v18);
  sub_1C441842C();
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C441D1F8())
  {

    goto LABEL_8;
  }

  v19 = sub_1C43FD75C();
  v20(v19);
  v21 = sub_1C441C250(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v21, v22);
  __break(1u);
}

void sub_1C47D2438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  sub_1C4400368();
  v33 = sub_1C4EFB1E8();
  v13 = sub_1C43FCDF8(v33);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  sub_1C440D420();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1C43FC318();
  v18 = sub_1C43FCDF8(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C4406E1C();
  v23 = *(v10 + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
  sub_1C456902C(&qword_1EC0BD310, &qword_1C4F2DAD0);
  sub_1C4404B44();
  sub_1C4EFAF88();
  if (!v12)
  {
    goto LABEL_8;
  }

  v24 = v12;
  sub_1C4EFA798();
  sub_1C447F088();
  sub_1C445E7F4();
  v25 = *(v20 + 8);
  v26 = sub_1C43FCE84();
  v25(v26);
  if (v11)
  {

    sub_1C4778264();
    sub_1C43FFB2C();
    sub_1C4433CB8();
LABEL_8:
    sub_1C440431C();
    sub_1C43FBC80();
    return;
  }

  v27 = v12;
  sub_1C4EFAAC8();
  sub_1C447F088();
  sub_1C445E7F4();
  v28 = sub_1C43FCE84();
  v25(v28);
  sub_1C442F1A4();
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  sub_1C441B920();
  if (!sub_1C441D1F8())
  {

    goto LABEL_8;
  }

  v29 = sub_1C43FD75C();
  v30(v29);
  v31 = sub_1C441C250(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v31, v32);
  __break(1u);
}

void sub_1C47D26B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  sub_1C4411CC4();
  v13 = v12;
  v34 = *v10;
  v35 = sub_1C4EFB1E8();
  v14 = sub_1C43FCDF8(v35);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD230();
  sub_1C43FBE44();
  v18 = sub_1C4EFAD98();
  v19 = sub_1C43FCDF8(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C4406E1C();
  v24 = *(v10 + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
  v25 = sub_1C43FD2BC();
  sub_1C456902C(v25, v26);
  sub_1C4418A58();
  if (!v11)
  {
    goto LABEL_8;
  }

  v27 = v11;
  sub_1C4EFA798();
  sub_1C447F088();
  sub_1C445E7F4();
  v28 = *(v21 + 8);
  v29 = sub_1C43FCE84();
  v28(v29);
  if (v13)
  {

    sub_1C4778264();
    sub_1C43FFB2C();
    sub_1C4433CB8();
LABEL_8:
    sub_1C440431C();
    sub_1C43FBC80();
    return;
  }

  v30 = v11;
  sub_1C4EFAAC8();
  sub_1C447F088();
  sub_1C445E7F4();
  v31 = sub_1C43FCE84();
  v28(v31);
  sub_1C442F1A4();
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  sub_1C441B920();
  if (!sub_1C440BCF8())
  {

    goto LABEL_8;
  }

  v32 = sub_1C4403150();
  v33(v32);
  sub_1C441B3B8(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  __break(1u);
}

void sub_1C47D299C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  sub_1C4400368();
  v33 = sub_1C4EFB1E8();
  v13 = sub_1C43FCDF8(v33);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1C43FC318();
  v18 = sub_1C43FCDF8(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C4406E1C();
  v23 = *(v10 + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
  sub_1C456902C(&qword_1EC0BD3D8, &unk_1C4F2DBB0);
  sub_1C4404B44();
  sub_1C4EFAF88();
  if (!v12)
  {
    goto LABEL_8;
  }

  v24 = v12;
  sub_1C4EFA798();
  sub_1C447F088();
  sub_1C445E7F4();
  v25 = *(v20 + 8);
  v26 = sub_1C43FCE84();
  v25(v26);
  if (v11)
  {

    sub_1C4778264();
    sub_1C43FFB2C();
    sub_1C4433CB8();
LABEL_8:
    sub_1C440431C();
    sub_1C43FBC80();
    return;
  }

  v27 = v12;
  sub_1C4EFAAC8();
  sub_1C447F088();
  sub_1C445E7F4();
  v28 = sub_1C43FCE84();
  v25(v28);
  sub_1C442F1A4();
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  sub_1C441B920();
  if (!sub_1C441D1F8())
  {

    goto LABEL_8;
  }

  v29 = sub_1C43FD75C();
  v30(v29);
  v31 = sub_1C441C250(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v31, v32);
  __break(1u);
}

void sub_1C47D2D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  sub_1C4400368();
  v33 = sub_1C4EFB1E8();
  v13 = sub_1C43FCDF8(v33);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  sub_1C440D420();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1C43FC318();
  v18 = sub_1C43FCDF8(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C4406E1C();
  v23 = *(v10 + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
  sub_1C456902C(&qword_1EC0BD320, &qword_1C4F2DAE0);
  sub_1C4404B44();
  sub_1C4EFAF88();
  if (!v12)
  {
    goto LABEL_8;
  }

  v24 = v12;
  sub_1C4EFA798();
  sub_1C447F088();
  sub_1C445E7F4();
  v25 = *(v20 + 8);
  v26 = sub_1C43FCE84();
  v25(v26);
  if (v11)
  {

    sub_1C4778264();
    sub_1C43FFB2C();
    sub_1C4433CB8();
LABEL_8:
    sub_1C440431C();
    sub_1C43FBC80();
    return;
  }

  v27 = v12;
  sub_1C4EFAAC8();
  sub_1C447F088();
  sub_1C445E7F4();
  v28 = sub_1C43FCE84();
  v25(v28);
  sub_1C442F1A4();
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  sub_1C441B920();
  if (!sub_1C441D1F8())
  {

    goto LABEL_8;
  }

  v29 = sub_1C43FD75C();
  v30(v29);
  v31 = sub_1C441C250(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v31, v32);
  __break(1u);
}

void sub_1C47D304C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  sub_1C4417168();
  v42 = *v10;
  v43 = sub_1C4EFB1E8();
  v13 = sub_1C43FCDF8(v43);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  sub_1C4433378();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v25 = sub_1C442BAE8(v17, v18, v19, v20, v21, v22, v23, v24, v41);
  v26 = sub_1C43FCDF8(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C4406E1C();
  v31 = *(v10 + OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_pool);
  sub_1C456902C(&qword_1EC0BD3A0, &qword_1C4F2DB70);
  sub_1C444FD74();
  if (!v11)
  {
    goto LABEL_7;
  }

  v32 = v11;
  sub_1C4EFA798();
  sub_1C447F088();
  sub_1C445E7F4();
  v33 = *(v28 + 8);
  v34 = sub_1C43FCE84();
  v33(v34);
  if (v12)
  {

    sub_1C4778264();
    sub_1C43FFB2C();
    sub_1C4433CB8();
LABEL_7:
    sub_1C440431C();
    sub_1C43FBC80();
    return;
  }

  v35 = v11;
  sub_1C4EFAAC8();
  sub_1C447F088();
  sub_1C445E7F4();
  v36 = sub_1C43FCE84();
  v33(v36);
  sub_1C442F1A4();
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C43FEF9C())
  {

    goto LABEL_7;
  }

  v37 = sub_1C440F670();
  v38(v37);
  v39 = sub_1C441C250(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v39, v40);
  __break(1u);
}

void sub_1C47D32C8()
{
  sub_1C43FE96C();
  v3 = v2;
  v5 = *v0;
  v4 = v0[1];
  v6 = v0[2];
  v38 = v0[3];
  v7 = v0[4];
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  v9 = inited;
  *(inited + 16) = xmmword_1C4F0D130;
  v40 = v5;
  *(inited + 32) = v5;
  *(inited + 40) = v4;
  v10 = *(v3 + 16);
  if (v10)
  {
    v34 = v6;
    v35 = v7;
    v36 = v1;
    v37 = inited;
    v41 = MEMORY[0x1E69E7CC0];
    v39 = v4;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C459D768(0, v10, 0);
    v11 = v41;
    v12 = (v3 + 64);
    do
    {
      v14 = *(v12 - 4);
      v13 = *(v12 - 3);
      v16 = *(v12 - 2);
      v15 = *(v12 - 1);
      v17 = *v12;
      v18 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v19 = v17;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v20 = sub_1C4673B1C(v40, v39, v14, v13, v16, v15);
      v21 = v20;
      v23 = *(v41 + 16);
      v22 = *(v41 + 24);
      if (v23 >= v22 >> 1)
      {
        v25 = sub_1C43FCFE8(v22);
        v20 = sub_1C459D768(v25, v23 + 1, 1);
      }

      *(v41 + 16) = v23 + 1;
      v24 = v41 + 16 * v23;
      *(v24 + 32) = v21;
      *(v24 + 40) = v19;
      v12 += 5;
      --v10;
    }

    while (v10);
    v9 = v37;
    v6 = v34;
    v7 = v35;
  }

  else
  {
    v20 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v11 = MEMORY[0x1E69E7CC0];
  }

  v26 = *(v7 + 16);
  MEMORY[0x1EEE9AC00](v20);
  v33[2] = v9;
  v33[3] = v6;
  v33[4] = v38;
  v33[5] = v7;
  v33[6] = v11;
  sub_1C4418704(sub_1C47DC8C4, v33, v27, v28, v29, v30, v31, v32, v33[0], v33[1]);

  swift_setDeallocating();
  sub_1C44DEE40();
  sub_1C43FBC80();
}

uint64_t ViewFeatureDatabaseTable.table.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t GeneralFeatureDatabaseTable.init(db:table:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  a4[1] = a3;
  a4[2] = result;
  *a4 = a2;
  return result;
}

uint64_t GeneralFeatureDatabaseTable.subidentifiers(forViews:)()
{
  v1 = *(*(v0 + 16) + 16);

  v2 = sub_1C440CABC();
  v4 = sub_1C49A529C(v2, v3);

  return v4;
}

uint64_t sub_1C47D3580()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0[2] + 16);
  v4 = sub_1C440CABC();
  return sub_1C49A5498(v4, v5);
}

void sub_1C47D35E0()
{
  sub_1C43FBD3C();
  v1 = sub_1C4EF98F8();
  v2 = sub_1C43FCDF8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  sub_1C43FBE44();
  v28 = sub_1C4EFB5A8();
  v5 = sub_1C43FCDF8(v28);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = sub_1C4EFB5F8();
  v14 = sub_1C43FCDF8(v13);
  v29 = v15;
  v30 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  sub_1C4423B7C();
  v18 = *v0;
  v19 = v0[1];
  v27 = *v0;
  v20 = v0[2];
  sub_1C4EFB5E8();
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v19;
  v21[4] = v20;
  v22 = *MEMORY[0x1E699FE90];
  v23 = *(v7 + 104);
  v23(v12, v22, v28);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C4EFB5C8();

  v24 = *(v7 + 8);
  v24(v12, v28);
  v25 = swift_allocObject();
  v25[2] = v27;
  v25[3] = v19;
  v25[4] = v20;
  v23(v12, v22, v28);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C4EFB5C8();

  v24(v12, v28);
  v26 = *(v20 + 16);
  sub_1C47DCC38(&qword_1EDDFEDB0, type metadata accessor for ErrorHandlingDatabasePool);
  sub_1C4EFB5D8();
  (*(v29 + 8))(v0, v30);
  sub_1C43FE9F0();
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ViewFeatureDatabaseTable.numRows()()
{
  sub_1C444B120();
  sub_1C440CABC();
  sub_1C47D21A8();
  return result;
}

uint64_t GeneralFeatureDatabaseTable.retrieveFeatures(viewName:featureNames:subidentifierName:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0[2] + 16);
  v4 = sub_1C440CABC();
  return sub_1C49A52E4(v4, v5);
}

uint64_t sub_1C47D3B38()
{
  sub_1C456902C(&qword_1EC0BBBF8, &qword_1C4F5C950);
  v0 = (type metadata accessor for ViewDatabaseArtifact.Property() - 8);
  v1 = *(*v0 + 72);
  v2 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C4F13950;
  v4 = (v3 + v2);
  v5 = v4 + v0[7];
  sub_1C4EFBDD8();
  sub_1C441EBEC();
  *v4 = v6;
  v4[1] = v7;
  v8 = (v4 + v1);
  v9 = v4 + v1 + v0[7];
  sub_1C4EFBDD8();
  sub_1C4408A18();
  *v8 = v10;
  v8[1] = v11;
  v12 = (v4 + 2 * v1);
  v13 = v12 + v0[7];
  sub_1C4EFBDD8();
  *v12 = 0xD000000000000011;
  v12[1] = 0x80000001C4F86480;
  v14 = (v4 + 3 * v1);
  v15 = v14 + v0[7];
  sub_1C4EFBDB8();
  *v14 = 0x65756C6176;
  v14[1] = 0xE500000000000000;
  v16 = (v4 + 4 * v1);
  v17 = v16 + v0[7];
  sub_1C4EFBDE8();
  sub_1C4425B70();
  *v16 = v18;
  v16[1] = v19;
  return v3;
}

uint64_t sub_1C47D3CD4()
{
  result = sub_1C4EFBE58();
  if (!v0 && (result & 1) != 0)
  {
    return sub_1C4EFBF68();
  }

  return result;
}

uint64_t sub_1C47D3D74()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C4EFBDD8();
  v8 = sub_1C4EFBE38();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();
  sub_1C4607CD4(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v9 = sub_1C4EFBF38();
  sub_1C440BAA8(v3, 1, 1, v9);
  sub_1C4EFB538();

  sub_1C4607CD4(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();
  sub_1C4607CD4(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v3, 1, 1, v9);
  sub_1C4EFB538();

  sub_1C4607CD4(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();
  sub_1C4607CD4(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v3, 1, 1, v9);
  sub_1C4EFB538();

  sub_1C4607CD4(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDB8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();
  sub_1C4607CD4(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v3, 1, 1, v9);
  sub_1C4EFB538();

  sub_1C4607CD4(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDE8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();

  sub_1C4607CD4(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  (*(*(v9 - 8) + 104))(v3, *MEMORY[0x1E69A00D0], v9);
  sub_1C440BAA8(v3, 0, 1, v9);
  sub_1C4EFB478();
  return sub_1C4607CD4(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

void sub_1C47D4198()
{
  sub_1C43FE96C();
  v2 = v1;
  v20 = v4;
  v21 = v3;
  v5 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  sub_1C43FCDF8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C4423B7C();
  v11 = sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  sub_1C43FCDF8(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v19 - v17;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  v23[3] = sub_1C4EFBD38();
  v23[4] = MEMORY[0x1E69A0050];
  sub_1C4422F90(v23);
  sub_1C4EFBD48();
  v22[3] = MEMORY[0x1E69E6158];
  v22[4] = MEMORY[0x1E69A0130];
  v22[0] = v20;
  v22[1] = v2;
  v24[3] = sub_1C4EFB298();
  v24[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4607CD4(v22, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v23);
  sub_1C4EFBCD8();
  (*(v7 + 8))(v0, v5);
  sub_1C440962C(v24);
  sub_1C4EFB898();
  (*(v13 + 8))(v18, v11);
  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C47D4410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t *a4@<X8>)
{
  v29 = a2;
  v30 = a1;
  v28 = a4;
  v5 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - v8;
  v10 = sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - v13;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  v32[3] = sub_1C4EFBD38();
  v32[4] = MEMORY[0x1E69A0050];
  sub_1C4422F90(v32);
  sub_1C4EFBD48();
  v31[3] = MEMORY[0x1E69E6158];
  v31[4] = MEMORY[0x1E69A0130];
  v31[0] = v29;
  v31[1] = a3;
  v33[3] = sub_1C4EFB298();
  v33[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v33);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4607CD4(v31, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v32);
  sub_1C4EFBCD8();
  (*(v6 + 8))(v9, v5);
  sub_1C440962C(v33);
  v15 = v33[6];
  v16 = sub_1C4EFB868();
  if (v15)
  {
    (*(v11 + 8))(v14, v10);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v17 = sub_1C4F00978();
    sub_1C442B738(v17, qword_1EDE2DF70);
    v18 = v15;
    v19 = sub_1C4F00968();
    v20 = sub_1C4F01CD8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = v15;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_1C43F8000, v19, v20, "GeneralFeaturesDatabaseTable: numRows() threw error %@", v21, 0xCu);
      sub_1C4607CD4(v22, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v22, -1, -1);
      MEMORY[0x1C6942830](v21, -1, -1);
    }

    sub_1C47DCC80();
    swift_allocError();
    *v25 = v15;
    return swift_willThrow();
  }

  else
  {
    v27 = v16;
    result = (*(v11 + 8))(v14, v10);
    *v28 = v27;
  }

  return result;
}

void sub_1C47D4810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  sub_1C446BEC0(v13, v14, v15, v16, v17, v18);
  v44 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  sub_1C43FCDF8(v44);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FE95C();
  v24 = sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  sub_1C43FCDF8(v24);
  v26 = *(v25 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C443F1B8();
  if (v11)
  {
    while (1)
    {
      v29 = *(v12 - 1);
      v28 = *v12;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFBD18();
      v46[3] = sub_1C4EFBD38();
      sub_1C443F5E8(MEMORY[0x1E69A0050]);
      sub_1C441CA08();
      v45[3] = MEMORY[0x1E69E6158];
      v45[4] = MEMORY[0x1E69A0130];
      v45[0] = v29;
      v45[1] = v28;
      v47[3] = sub_1C4EFB298();
      v47[4] = MEMORY[0x1E699FE60];
      sub_1C4422F90(v47);
      sub_1C440C4CC();
      sub_1C4EFBB28();
      sub_1C4607CD4(v45, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C440962C(v46);
      sub_1C44358B0();
      v30 = *v20;
      v31 = sub_1C43FCE84();
      v32(v31);
      sub_1C440962C(v47);
      sub_1C4414584();
      v10 = a10;
      if (a10)
      {
        break;
      }

      v33 = sub_1C442FD80();
      v34(v33);
      v12 += 2;
      if (!--v11)
      {
        goto LABEL_4;
      }
    }

    v41 = sub_1C442FD80();
    v42(v41);
  }

  else
  {
LABEL_4:
    v35 = *(v43 + 16);
    v36 = (v43 + 40);
    if (v35)
    {
      while (1)
      {
        v37 = *v36;
        v38 = *(v36 - 1);
        v39 = v37;
        v40 = objc_autoreleasePoolPush();
        sub_1C47D5958();
        if (v10)
        {
          break;
        }

        v10 = 0;
        objc_autoreleasePoolPop(v40);

        v36 += 2;
        if (!--v35)
        {
          goto LABEL_10;
        }
      }

      objc_autoreleasePoolPop(v40);
    }
  }

LABEL_10:
  sub_1C4402144();
  sub_1C43FBC80();
}

void sub_1C47D4AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  sub_1C43FE96C();
  sub_1C446BEC0(v13, v14, v15, v16, v17, v18);
  v47 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  sub_1C43FCDF8(v47);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FE95C();
  v24 = sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  sub_1C43FCDF8(v24);
  v26 = *(v25 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C443F1B8();
  if (v11)
  {
    while (1)
    {
      v29 = *(v12 - 1);
      v28 = *v12;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFBD18();
      v51[3] = sub_1C4EFBD38();
      sub_1C443F5E8(MEMORY[0x1E69A0050]);
      sub_1C441CA08();
      v50[3] = MEMORY[0x1E69E6158];
      v50[4] = MEMORY[0x1E69A0130];
      v50[0] = v29;
      v50[1] = v28;
      v52[3] = sub_1C4EFB298();
      v52[4] = MEMORY[0x1E699FE60];
      sub_1C4422F90(v52);
      sub_1C440C4CC();
      sub_1C4EFBB28();
      sub_1C4607CD4(v50, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C440962C(v51);
      sub_1C44358B0();
      v30 = *v20;
      v31 = sub_1C43FCE84();
      v32(v31);
      sub_1C440962C(v52);
      sub_1C4414584();
      v10 = a10;
      if (a10)
      {
        break;
      }

      v33 = sub_1C442FD80();
      v34(v33);
      v12 += 2;
      if (!--v11)
      {
        goto LABEL_4;
      }
    }

    v43 = sub_1C442FD80();
    v44(v43);
  }

  else
  {
LABEL_4:
    v35 = *(v45 + 16);
    v36 = (v45 + 56);
    if (v35)
    {
      while (1)
      {
        v37 = *(v36 - 2);
        v38 = *v36;
        v39 = *(v36 - 1);
        v40 = *(v36 - 3);
        v41 = v37;
        v42 = objc_autoreleasePoolPush();
        sub_1C47D4D60(v41, v48, v49, a10, v46, v40, v39, v38, v52);
        if (v10)
        {
          break;
        }

        v10 = 0;
        objc_autoreleasePoolPop(v42);

        v36 += 32;
        if (!--v35)
        {
          goto LABEL_10;
        }
      }

      objc_autoreleasePoolPop(v42);
    }
  }

LABEL_10:
  sub_1C4402144();
  sub_1C43FBC80();
}

void sub_1C47D4D60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7, int a8, uint64_t *a9)
{
  v75 = a2;
  v74 = a8;
  v71 = a7;
  v79 = *MEMORY[0x1E69E9840];
  v14 = sub_1C4EFB768();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_opt_self();
  v77 = 0;
  v20 = [v19 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v77];
  v21 = v77;
  if (!v20)
  {
    v46 = v21;
    v47 = sub_1C4EF97A8();

    swift_willThrow();
LABEL_13:
    *a9 = v47;
    goto LABEL_20;
  }

  v70 = v14;
  v66 = a5;
  v22 = sub_1C4EF9A68();
  v72 = v23;
  v73 = v22;

  v77 = 0;
  v78 = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0x4920545245534E49, 0xEC000000204F544ELL);
  v65 = a3;
  v67 = a4;
  MEMORY[0x1C6940010](a3, a4);
  MEMORY[0x1C6940010](0xD000000000000050, 0x80000001C4F9B530);
  v68 = v77;
  v69 = v78;
  sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C4F13950;
  *(v24 + 32) = 0x656D614E77656976;
  *(v24 + 40) = 0xE800000000000000;
  v25 = [a6 viewName];
  v26 = sub_1C4F01138();
  v28 = v27;

  v29 = MEMORY[0x1E69E6158];
  v30 = MEMORY[0x1E69A0138];
  *(v24 + 72) = MEMORY[0x1E69E6158];
  *(v24 + 80) = v30;
  *(v24 + 48) = v26;
  *(v24 + 56) = v28;
  *(v24 + 88) = 0x4E65727574616566;
  *(v24 + 96) = 0xEB00000000656D61;
  v31 = [a6 featureName];
  v32 = sub_1C4F01138();
  v34 = v33;

  *(v24 + 128) = v29;
  *(v24 + 136) = v30;
  *(v24 + 104) = v32;
  *(v24 + 112) = v34;
  v35 = v72;
  v36 = a6;
  *(v24 + 144) = 0xD000000000000011;
  *(v24 + 152) = 0x80000001C4F86480;
  v37 = sub_1C47DC860(a6);
  *(v24 + 184) = v29;
  *(v24 + 192) = v30;
  v39 = v73;
  if (v38)
  {
    v40 = v37;
  }

  else
  {
    v40 = 0;
  }

  v41 = 0xE000000000000000;
  if (v38)
  {
    v41 = v38;
  }

  *(v24 + 160) = v40;
  *(v24 + 168) = v41;
  *(v24 + 200) = 0x4465727574616566;
  *(v24 + 208) = 0xEB00000000617461;
  v42 = MEMORY[0x1E699FD70];
  *(v24 + 240) = MEMORY[0x1E6969080];
  *(v24 + 248) = v42;
  *(v24 + 216) = v39;
  *(v24 + 224) = v35;
  *(v24 + 256) = 0x6E656469666E6F63;
  *(v24 + 264) = 0xEA00000000006563;
  if (v74)
  {
    v43 = 0;
    v44 = 0;
    v45 = 0;
    *(v24 + 280) = 0;
    *(v24 + 288) = 0;
  }

  else
  {
    v45 = MEMORY[0x1E69A0168];
    v44 = MEMORY[0x1E69E63B0];
    v43 = v71;
  }

  *(v24 + 272) = v43;
  *(v24 + 296) = v44;
  *(v24 + 304) = v45;
  sub_1C44344B8(v39, v35);
  sub_1C4EFB738();
  v48 = v76;
  sub_1C4EFBFF8();
  v47 = v48;
  if (v48)
  {
    (*(v15 + 8))(v18, v70);
    sub_1C4434000(v39, v35);

    goto LABEL_13;
  }

  (*(v15 + 8))(v18, v70);

  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v49 = sub_1C4F00978();
  sub_1C442B738(v49, qword_1EDE2E088);
  v50 = v36;
  v51 = v67;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v52 = sub_1C4F00968();
  v53 = sub_1C4F01CB8();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v77 = v55;
    *v54 = 136315394;
    v56 = [v50 string];
    v57 = sub_1C4F01138();
    v59 = v58;

    v60 = sub_1C441D828(v57, v59, &v77);

    *(v54 + 4) = v60;
    *(v54 + 12) = 2080;
    *(v54 + 14) = sub_1C441D828(v65, v51, &v77);
    _os_log_impl(&dword_1C43F8000, v52, v53, "FeatureDatabaseTable: Wrote %s to db with table name %s", v54, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v55, -1, -1);
    MEMORY[0x1C6942830](v54, -1, -1);
    v62 = v72;
    v61 = v73;
  }

  else
  {
    v61 = v73;
    v62 = v35;
  }

  sub_1C4434000(v61, v62);

LABEL_20:
  v63 = *MEMORY[0x1E69E9840];
}

void sub_1C47D5344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_1C4428DA0();
  for (i = 0; v11 != i; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v15 = sub_1C43FCE84();
      v13 = MEMORY[0x1C6940F90](v15);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v13 = *(a2 + 8 * i + 32);
    }

    v14 = v13;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    v25 = v13;
    sub_1C47D54B4(&v25, a3, a4, a5, a1);

    if (v6)
    {
      return;
    }
  }

  v16 = *(a6 + 16);
  v17 = (a6 + 40);
  if (v16)
  {
    while (1)
    {
      v18 = *v17;
      v19 = *(v17 - 1);
      v20 = v18;
      v21 = objc_autoreleasePoolPush();
      sub_1C47D5958();
      if (v7)
      {
        break;
      }

      v7 = 0;
      objc_autoreleasePoolPop(v21);

      v17 += 2;
      if (!--v16)
      {
        return;
      }
    }

    objc_autoreleasePoolPop(v21);
  }
}

uint64_t sub_1C47D54B4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a5;
  v34 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v35 = *(v34 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v8 = &v32 - v7;
  v32 = sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  v33 = *(v32 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v11 = &v32 - v10;
  v12 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  v13 = sub_1C4EFBD38();
  v45 = v13;
  v46 = MEMORY[0x1E69A0050];
  v14 = MEMORY[0x1E69A0050];
  sub_1C4422F90(v44);
  sub_1C4EFBD48();
  v15 = [v12 viewName];
  v16 = sub_1C4F01138();
  v18 = v17;

  v42 = MEMORY[0x1E69E6158];
  v43 = MEMORY[0x1E69A0130];
  v41[0] = v16;
  v41[1] = v18;
  v19 = sub_1C4EFB298();
  v48 = v19;
  v49 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v47);
  sub_1C4EFBB28();
  sub_1C4607CD4(v41, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v44);
  v45 = v13;
  v46 = v14;
  sub_1C4422F90(v44);
  sub_1C4EFBD48();
  v20 = [v12 featureName];
  v21 = sub_1C4F01138();
  v23 = v22;

  v39 = MEMORY[0x1E69E6158];
  v40 = MEMORY[0x1E69A0130];
  v37 = v21;
  v38 = v23;
  v42 = v19;
  v24 = MEMORY[0x1E699FE60];
  v43 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v41);
  sub_1C4EFBB28();
  sub_1C4607CD4(&v37, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v44);
  v45 = v19;
  v46 = v24;
  sub_1C4422F90(v44);
  sub_1C4EFBB08();
  sub_1C440962C(v41);
  sub_1C440962C(v47);
  v48 = v13;
  v49 = MEMORY[0x1E69A0050];
  sub_1C4422F90(v47);
  sub_1C4EFBD48();
  v25 = sub_1C47DC860(v12);
  v39 = MEMORY[0x1E69E6158];
  v40 = MEMORY[0x1E69A0130];
  if (v26)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  v28 = 0xE000000000000000;
  if (v26)
  {
    v28 = v26;
  }

  v37 = v27;
  v38 = v28;
  v42 = v19;
  v43 = v24;
  sub_1C4422F90(v41);
  sub_1C4EFBB28();
  sub_1C4607CD4(&v37, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v47);
  v48 = v19;
  v49 = v24;
  sub_1C4422F90(v47);
  sub_1C4EFBB08();
  sub_1C440962C(v41);
  sub_1C440962C(v44);
  v29 = v34;
  sub_1C4EFBCD8();
  (*(v35 + 8))(v8, v29);
  sub_1C440962C(v47);
  v30 = v32;
  sub_1C4EFB898();
  return (*(v33 + 8))(v11, v30);
}

void sub_1C47D5958()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v68[2] = *MEMORY[0x1E69E9840];
  v11 = sub_1C4EFB768();
  v12 = sub_1C43FCDF8(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v68[0] = 0;
  v15 = [objc_opt_self() archivedDataWithRootObject:v10 requiringSecureCoding:1 error:v68];
  v16 = v68[0];
  if (!v15)
  {
    v48 = v16;
    v45 = sub_1C4EF97A8();

    swift_willThrow();
    goto LABEL_10;
  }

  v17 = sub_1C4EF9A68();
  v66 = v18;
  v67 = v17;

  v68[0] = 0;
  v68[1] = 0xE000000000000000;
  sub_1C4F02248();
  sub_1C4422300();
  v19 = sub_1C4404B44();
  MEMORY[0x1C6940010](v19);
  MEMORY[0x1C6940010](0xD000000000000050, 0x80000001C4F9B530);
  sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
  v64 = v8;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C4F13950;
  sub_1C441EBEC();
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
  v24 = [v4 viewName];
  v25 = sub_1C4F01138();
  v65 = v6;
  v27 = v26;

  v28 = MEMORY[0x1E69E6158];
  v29 = MEMORY[0x1E69A0138];
  *(v20 + 72) = MEMORY[0x1E69E6158];
  *(v20 + 80) = v29;
  *(v20 + 48) = v25;
  *(v20 + 56) = v27;
  sub_1C4408A18();
  *(v20 + 88) = v30;
  *(v20 + 96) = v31;
  v32 = [v4 featureName];
  v33 = sub_1C4F01138();
  v35 = v34;

  *(v20 + 128) = v28;
  *(v20 + 136) = v29;
  *(v20 + 104) = v33;
  *(v20 + 112) = v35;
  *(v20 + 144) = 0xD000000000000011;
  *(v20 + 152) = 0x80000001C4F86480;
  v36 = sub_1C47DC860(v4);
  *(v20 + 184) = v28;
  *(v20 + 192) = v29;
  if (v37)
  {
    v38 = v36;
  }

  else
  {
    v38 = 0;
  }

  v39 = 0xE000000000000000;
  if (v37)
  {
    v39 = v37;
  }

  *(v20 + 160) = v38;
  *(v20 + 168) = v39;
  sub_1C44022AC();
  *(v20 + 200) = v40;
  *(v20 + 208) = v41;
  v42 = MEMORY[0x1E699FD70];
  *(v20 + 240) = MEMORY[0x1E6969080];
  *(v20 + 248) = v42;
  *(v20 + 216) = v67;
  *(v20 + 224) = v66;
  sub_1C4425B70();
  *(v20 + 256) = v43;
  *(v20 + 264) = v44;
  *(v20 + 272) = 0u;
  *(v20 + 288) = 0u;
  *(v20 + 304) = 0;
  sub_1C44344B8(v67, v66);
  sub_1C4EFB738();
  sub_1C4EFBFF8();
  v45 = v0;
  if (v0)
  {
    v46 = sub_1C441AEA0();
    v47(v46);
    sub_1C4434000(v67, v66);

LABEL_10:
    *v2 = v45;
    goto LABEL_17;
  }

  v49 = sub_1C441AEA0();
  v50(v49);

  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C440686C();
    swift_once();
  }

  v51 = sub_1C4F00978();
  sub_1C43FCEE8(v51, qword_1EDE2E088);
  v52 = v4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v53 = sub_1C4F00968();
  v54 = sub_1C4F01CB8();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v68[0] = swift_slowAlloc();
    *v55 = 136315394;
    v56 = [v52 string];
    v57 = sub_1C4F01138();
    v59 = v58;

    v60 = sub_1C441D828(v57, v59, v68);

    *(v55 + 4) = v60;
    *(v55 + 12) = 2080;
    *(v55 + 14) = sub_1C441D828(v64, v65, v68);
    _os_log_impl(&dword_1C43F8000, v53, v54, "FeatureDatabaseTable: Wrote %s to db with table name %s", v55, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v62 = v66;
    v61 = v67;
  }

  else
  {
    v61 = v67;
    v62 = v66;
  }

  sub_1C4434000(v61, v62);

LABEL_17:
  v63 = *MEMORY[0x1E69E9840];
  sub_1C43FBC80();
}

void sub_1C47D5E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unint64_t a22, uint64_t a23, unint64_t a24, uint64_t a25, char a26)
{
  sub_1C43FE96C();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v67 = v34;
  v68 = v35;
  v69 = sub_1C4EFB768();
  v36 = sub_1C43FCDF8(v69);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBCC4();
  v43 = v42 - v41;
  sub_1C4F02248();
  sub_1C4422300();
  MEMORY[0x1C6940010](v33, v31);
  MEMORY[0x1C6940010](0xD000000000000050, 0x80000001C4F9B530);
  sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1C4F13950;
  sub_1C441EBEC();
  v45 = MEMORY[0x1E69E6158];
  v46 = MEMORY[0x1E69A0138];
  v47[4] = v48;
  v47[5] = v49;
  v47[9] = v45;
  v47[10] = v46;
  v47[6] = v67;
  v47[7] = v29;
  sub_1C4408A18();
  v50[11] = v51;
  v50[12] = v52;
  v50[16] = v53;
  v50[17] = v54;
  v50[13] = v68;
  v50[14] = v27;
  v50[18] = 0xD000000000000011;
  v50[19] = 0x80000001C4F86480;
  v50[23] = v53;
  v50[24] = v54;
  if (!a22)
  {
    a21 = 0;
  }

  v56 = 0xE000000000000000;
  if (a22)
  {
    v56 = a22;
  }

  v50[20] = a21;
  v50[21] = v56;
  sub_1C44022AC();
  v57[25] = v58;
  v57[26] = v59;
  v60 = MEMORY[0x1E699FD70];
  v57[30] = MEMORY[0x1E6969080];
  v57[31] = v60;
  v57[27] = a23;
  v57[28] = a24;
  sub_1C4425B70();
  *(v61 + 256) = v62;
  *(v61 + 264) = v63;
  if (a26)
  {
    v64 = 0;
    v65 = 0;
    v66 = 0;
    *(v44 + 280) = 0;
    *(v44 + 288) = 0;
  }

  else
  {
    v64 = a25;
    v66 = MEMORY[0x1E69A0168];
    v65 = MEMORY[0x1E69E63B0];
  }

  *(v44 + 272) = v64;
  *(v44 + 296) = v65;
  *(v44 + 304) = v66;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44344B8(a23, a24);
  sub_1C4EFB738();
  sub_1C4EFBFF8();
  (*(v38 + 8))(v43, v69);

  sub_1C4402144();
  sub_1C43FBC80();
}

void sub_1C47D60D4()
{
  sub_1C43FE96C();
  v38[3] = v1;
  v39 = v0;
  v38[1] = v2;
  v40 = v3;
  v4 = sub_1C456902C(&qword_1EC0BD3F0, &qword_1C4F2DBC8);
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v5);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v38 - v12;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD230();
  v38[2] = v14;
  sub_1C456902C(&unk_1EC0C2E00, &unk_1C4F2DBD0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C4F0D130;
  if (qword_1EDDED138 != -1)
  {
    sub_1C440E2A4();
  }

  v16 = sub_1C4EFBD38();
  sub_1C43FCEE8(v16, qword_1EDE2DC48);
  v17 = MEMORY[0x1E69A0038];
  *(v15 + 56) = v16;
  *(v15 + 64) = v17;
  sub_1C4422F90((v15 + 32));
  sub_1C440A6B8(v16);
  v19 = *(v18 + 16);
  v19();
  sub_1C47DC96C();
  MEMORY[0x1C6939B20](v15);

  if (qword_1EDDED128 != -1)
  {
    swift_once();
  }

  sub_1C43FCEE8(v16, qword_1EDE2D308);
  v41[3] = v16;
  v41[4] = MEMORY[0x1E69A0050];
  v20 = sub_1C4422F90(v41);
  (v19)(v20, &type metadata for FeatureRow, v16);
  v42[3] = sub_1C4EFB298();
  v42[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v42);
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443FC2C(&qword_1EDDFCEC0);
  sub_1C4F01458();
  sub_1C440962C(v41);
  sub_1C43FC300();
  sub_1C4401CBC(v21, &qword_1EC0BD3F0, &qword_1C4F2DBC8);
  sub_1C4EFB438();
  v22 = *(v7 + 8);
  v23 = sub_1C4401D48();
  v22(v23);
  sub_1C440962C(v42);
  sub_1C4EFB888();
  (v22)(v13, v4);
  sub_1C441310C();
  sub_1C4401CBC(v24, &qword_1EC0BD3F0, &qword_1C4F2DBC8);
  v25 = v39;
  v26 = sub_1C4EFB008();
  if (v25)
  {
    v27 = sub_1C4401D48();
    v22(v27);
    if (qword_1EDDFFAF0 != -1)
    {
      sub_1C440686C();
      swift_once();
    }

    v28 = sub_1C4F00978();
    sub_1C43FCEE8(v28, qword_1EDE2E088);
    v29 = v25;
    v30 = sub_1C4F00968();
    v31 = sub_1C4F01CD8();

    if (os_log_type_enabled(v30, v31))
    {
      sub_1C43FECF0();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = v25;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v35;
      *v33 = v35;
      _os_log_impl(&dword_1C43F8000, v30, v31, "FeatureDatabaseTable: subIdentifiers: Could not load from FeatureRow due to %@, returning []", v32, 0xCu);
      sub_1C4607CD4(v33, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v36 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v36 = v26;
    v37 = sub_1C4401D48();
    v22(v37);
  }

  *v40 = v36;
  sub_1C43FBC80();
}

void sub_1C47D65BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  v167 = v20;
  HIDWORD(v153) = v23;
  v25 = v24;
  v154 = v26;
  v152 = v27;
  v29 = v28;
  v31 = v30;
  v161 = v32;
  v34 = v33;
  v159 = sub_1C4EFB288();
  v35 = sub_1C43FCDF8(v159);
  v158 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBCC4();
  v157 = v40 - v39;
  sub_1C43FBE44();
  v179 = sub_1C4EFB298();
  v41 = sub_1C43FCDF8(v179);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBCC4();
  v156 = v47 - v46;
  v48 = sub_1C456902C(&qword_1EC0BD250, &qword_1C4F2D9C8);
  v49 = sub_1C43FCDF8(v48);
  v166 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBFDC();
  v163 = v53;
  sub_1C43FD1D0();
  v55 = MEMORY[0x1EEE9AC00](v54);
  v57 = &v151 - v56;
  v58 = MEMORY[0x1E699FE60];
  v59 = MEMORY[0x1E69A0130];
  v168 = &v151 - v56;
  v162 = v34;
  v164 = v55;
  v155 = v25;
  v165 = v29;
  if (v31)
  {
    v60 = MEMORY[0x1E69A0050];
    sub_1C456902C(&unk_1EC0BC730, &unk_1C4F10E10);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1C4F0D130;
    if (qword_1EDDED138 != -1)
    {
      sub_1C440E2A4();
    }

    v62 = sub_1C4EFBD38();
    v63 = sub_1C442B738(v62, qword_1EDE2DC48);
    v64 = MEMORY[0x1E69A0048];
    *(v61 + 56) = v62;
    *(v61 + 64) = v64;
    sub_1C4422F90((v61 + 32));
    sub_1C440A6B8(v62);
    v66 = *(v65 + 16);
    v66();
    sub_1C47DC96C();
    sub_1C4EFAE08();

    v174 = v62;
    v175 = v60;
    v67 = sub_1C4422F90(v173);
    (v66)(v67, v63, v62);
    v171 = MEMORY[0x1E69E6158];
    v172 = MEMORY[0x1E69A0130];
    v169 = 0;
    v170 = 0xE000000000000000;
    *(&v177 + 1) = v179;
    v178 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v176);
    sub_1C440C4CC();
    sub_1C4EFBB68();
    sub_1C4607CD4(&v169, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v173);
    sub_1C43FC300();
    sub_1C4401CBC(v68, v69, v70);
    v57 = v168;
    sub_1C4EFB438();
    v71 = *(v166 + 8);
    v72 = sub_1C4401D48();
    v73(v72);
    sub_1C440962C(v176);
    v29 = v165;
  }

  else
  {
    if (qword_1EDDED138 != -1)
    {
      sub_1C440E2A4();
    }

    v74 = sub_1C4EFBD38();
    sub_1C442B738(v74, qword_1EDE2DC48);
    v174 = v74;
    sub_1C443F5E8(MEMORY[0x1E69A0050]);
    sub_1C440A6B8(v74);
    (*(v75 + 16))();
    v171 = MEMORY[0x1E69E6158];
    v172 = v59;
    v169 = 0;
    v170 = 0xE000000000000000;
    *(&v177 + 1) = v179;
    v178 = v58;
    sub_1C4422F90(v176);
    sub_1C440C4CC();
    sub_1C4EFBB68();
    sub_1C4607CD4(&v169, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v173);
    sub_1C47DC96C();
    sub_1C4EFAE28();
    sub_1C440962C(v176);
  }

  v76 = 0;
  v77 = *(v29 + 16);
  v78 = MEMORY[0x1E69E7CC0];
LABEL_9:
  v79 = (v29 + 40 * v76);
  while (v77 != v76)
  {
    if (v76 >= v77)
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      sub_1C440686C();
      swift_once();
LABEL_40:
      v136 = sub_1C4F00978();
      sub_1C43FCEE8(v136, qword_1EDE2E088);
      v137 = v77;
      v138 = sub_1C4F00968();
      v139 = sub_1C4F01CD8();

      if (os_log_type_enabled(v138, v139))
      {
        sub_1C43FECF0();
        v140 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        *v140 = 138412290;
        v142 = v77;
        v143 = _swift_stdlib_bridgeErrorToNSError();
        *(v140 + 4) = v143;
        *v141 = v143;
        _os_log_impl(&dword_1C43F8000, v138, v139, "FeatureDatabaseTable: loadFeatures: could not load FeatureRows due to %@", v140, 0xCu);
        sub_1C4607CD4(v141, &qword_1EC0BDA00, &qword_1C4F10D30);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      v144 = MEMORY[0x1E69E7CC0];
      goto LABEL_43;
    }

    v80 = v76 + 1;
    if (__OFADD__(v76, 1))
    {
      goto LABEL_51;
    }

    v81 = *(v79 + 64);
    ++v76;
    v79 += 5;
    if (v81)
    {
      v82 = *v79;
      v160 = *(v79 - 1);
      v83 = v79[1];
      v84 = v79[2];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v176[0] = v78;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C459E008(0, *(v78 + 16) + 1, 1);
        v78 = v176[0];
      }

      v87 = *(v78 + 16);
      v86 = *(v78 + 24);
      if (v87 >= v86 >> 1)
      {
        v89 = sub_1C43FCFE8(v86);
        sub_1C459E008(v89, v87 + 1, 1);
        v78 = v176[0];
      }

      *(v78 + 16) = v87 + 1;
      v88 = v78 + 40 * v87;
      *(v88 + 32) = v160;
      *(v88 + 40) = v82;
      *(v88 + 48) = v83;
      *(v88 + 56) = v84;
      *(v88 + 64) = 1;
      v76 = v80;
      v29 = v165;
      v57 = v168;
      goto LABEL_9;
    }
  }

  v90 = *(v78 + 16);
  if (v90)
  {
    v176[0] = MEMORY[0x1E69E7CC0];
    v91 = v78;
    sub_1C44CD9C0();
    v92 = v176[0];
    v160 = v91;
    v93 = (v91 + 40);
    do
    {
      v94 = *(v93 - 1);
      v95 = *v93;
      v176[0] = v92;
      v97 = *(v92 + 16);
      v96 = *(v92 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v97 >= v96 >> 1)
      {
        sub_1C44CD9C0();
        v92 = v176[0];
      }

      *(v92 + 16) = v97 + 1;
      v98 = v92 + 16 * v97;
      *(v98 + 32) = v94;
      *(v98 + 40) = v95;
      v93 += 5;
      --v90;
    }

    while (v90);

    v57 = v168;
    v29 = v165;
  }

  else
  {

    v92 = MEMORY[0x1E69E7CC0];
  }

  sub_1C4499940(v92, v99, v100, v101, v102, v103, v104, v105, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164);
  v160 = v106;
  v107 = MEMORY[0x1E69E7CC0];
  if (v77)
  {
    v173[0] = MEMORY[0x1E69E7CC0];
    sub_1C459D970();
    v107 = v173[0];
    v108 = (v29 + 64);
    v109 = v167;
    v110 = v156;
    do
    {
      v111 = *(v108 - 3);
      v112 = *v108;
      v176[0] = *(v108 - 4);
      v176[1] = v111;
      v177 = *(v108 - 1);
      LOBYTE(v178) = v112;
      sub_1C47D72CC(v176, v110);
      v173[0] = v107;
      v114 = *(v107 + 16);
      v113 = *(v107 + 24);
      if (v114 >= v113 >> 1)
      {
        sub_1C43FCFE8(v113);
        sub_1C459D970();
        v107 = v173[0];
      }

      *(v107 + 16) = v114 + 1;
      (*(v43 + 32))(v107 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v114, v110, v179);
      v108 += 40;
      --v77;
    }

    while (v77);
    v57 = v168;
  }

  else
  {
    v109 = v167;
  }

  v167 = v109;
  v115 = v164;
  if (*(v107 + 16))
  {
    v173[0] = v107;
    v116 = v157;
    sub_1C4EFB268();
    *(&v177 + 1) = v179;
    v178 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v176);
    sub_1C456902C(&qword_1EC0BD258, &qword_1C4F2D9D0);
    sub_1C443FC2C(&qword_1EDDDBD58);
    sub_1C4F01468();
    sub_1C43FFB20(&a14);
    v117(v116, v159);

    sub_1C43FC300();
    sub_1C4401CBC(v118, v119, v120);
    v121 = v163;
    sub_1C4EFB438();
    v122 = v166;
    v123 = *(v166 + 8);
    v124 = sub_1C43FCE84();
    v125(v124);
    sub_1C440962C(v176);
    (*(v122 + 32))(v57, v121, v115);
  }

  else
  {
  }

  sub_1C441310C();
  sub_1C4401CBC(v126, v127, v128);
  sub_1C47DC918();
  v129 = v167;
  sub_1C4EFAFD8();
  v77 = v129;
  if (v129)
  {
    v130 = *(v166 + 8);
    v131 = sub_1C43FCE84();
    v132(v131);

    if (qword_1EDDFFAF0 != -1)
    {
      goto LABEL_52;
    }

    goto LABEL_40;
  }

  v133 = swift_allocObject();
  v134 = v152;
  *(v133 + 16) = v160;
  *(v133 + 24) = v134;
  v135 = v155;
  *(v133 + 32) = v154;
  *(v133 + 40) = v135;
  *(v133 + 48) = BYTE4(v153) & 1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C456902C(&qword_1EC0BD260, &qword_1C4F2D9D8);
  sub_1C4401CBC(&qword_1EDDF01D0, &qword_1EC0BD260, &qword_1C4F2D9D8);
  sub_1C4EFBD78();

  sub_1C456902C(&qword_1EC0BD248, &qword_1C4F2D9C0);

  sub_1C456902C(&qword_1EC0BD268, &qword_1C4F2D9E0);
  sub_1C4401CBC(&qword_1EDDDBD40, &qword_1EC0BD248, &qword_1C4F2D9C0);
  sub_1C4401CBC(&qword_1EDDF0038, &qword_1EC0BD268, &qword_1C4F2D9E0);
  sub_1C4F01BF8();
  v144 = v176[0];
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C440686C();
    swift_once();
  }

  v145 = sub_1C4F00978();
  sub_1C43FCEE8(v145, qword_1EDE2E088);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v146 = sub_1C4F00968();
  v147 = sub_1C4F01CB8();
  if (os_log_type_enabled(v146, v147))
  {
    sub_1C43FECF0();
    v148 = swift_slowAlloc();
    *v148 = 134217984;
    *(v148 + 4) = *(v144 + 16);

    _os_log_impl(&dword_1C43F8000, v146, v147, "FeatureDatabaseTable: %ld in total feature row table", v148, 0xCu);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
  }

  v149 = sub_1C4450668();
  v150(v149);
LABEL_43:
  *v162 = v144;
  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C47D72CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = sub_1C4EFB288();
  v42 = *(v44 - 8);
  v3 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v41 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1C4EFB298();
  v5 = *(v39 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v39);
  v36 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v34 - v9;
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v40 = a1[3];
  sub_1C456902C(&qword_1EC0B8F40, &qword_1C4F0EA10);
  v37 = *(v5 + 72);
  v38 = v5;
  v13 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C4F0D130;
  v15 = qword_1EDDED128;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_1C4EFBD38();
  v17 = sub_1C442B738(v16, qword_1EDE2D308);
  v47 = v16;
  v48 = MEMORY[0x1E69A0050];
  v18 = sub_1C4422F90(v46);
  v19 = *(*(v16 - 8) + 16);
  v19(v18, v17, v16);
  v45[3] = MEMORY[0x1E69E6158];
  v45[4] = MEMORY[0x1E69A0130];
  v45[0] = v11;
  v45[1] = v10;
  sub_1C4EFBB28();
  sub_1C4607CD4(v45, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v46);
  if (v12 && *(v12 + 16))
  {
    v45[0] = v12;
    if (qword_1EDDED140 != -1)
    {
      swift_once();
    }

    v20 = sub_1C442B738(v16, qword_1EDE2D320);
    v47 = v16;
    v48 = MEMORY[0x1E69A0050];
    v21 = sub_1C4422F90(v46);
    v19(v21, v20, v16);
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C4401CBC(&qword_1EDDFCEC0, &unk_1EC0B9620, &unk_1C4F0E870);
    v22 = v35;
    sub_1C4F01458();
    sub_1C440962C(v46);
    v24 = *(v14 + 16);
    v23 = *(v14 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_1C458D4FC(v23 > 1, v24 + 1, 1, v14);
      v14 = v32;
    }

    *(v14 + 16) = v24 + 1;
    (*(v38 + 32))(v14 + v13 + v24 * v37, v22, v39);
  }

  if (v40 && *(v40 + 16))
  {
    v45[0] = v40;
    if (qword_1EDDED138 != -1)
    {
      swift_once();
    }

    v25 = sub_1C442B738(v16, qword_1EDE2DC48);
    v47 = v16;
    v48 = MEMORY[0x1E69A0050];
    v26 = sub_1C4422F90(v46);
    v19(v26, v25, v16);
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C4401CBC(&qword_1EDDFCEC0, &unk_1EC0B9620, &unk_1C4F0E870);
    v27 = v36;
    sub_1C4F01458();
    sub_1C440962C(v46);
    v29 = *(v14 + 16);
    v28 = *(v14 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_1C458D4FC(v28 > 1, v29 + 1, 1, v14);
      v14 = v33;
    }

    *(v14 + 16) = v29 + 1;
    (*(v38 + 32))(v14 + v13 + v29 * v37, v27, v39);
  }

  v46[0] = v14;
  v30 = v41;
  sub_1C4EFB278();
  sub_1C456902C(&qword_1EC0BD258, &qword_1C4F2D9D0);
  sub_1C4401CBC(&qword_1EDDDBD58, &qword_1EC0BD258, &qword_1C4F2D9D0);
  sub_1C4F01468();
  (*(v42 + 8))(v30, v44);
}

uint64_t sub_1C47D78B4@<X0>(void *__src@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t *a7@<X8>)
{
  memcpy(__dst, __src, 0x49uLL);
  v12 = __dst[0];
  v13 = __dst[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v32 = v12;
  if (sub_1C4499AD0(v12, v13, a2))
  {
    v14 = __dst[2];
    v15 = __dst[3];
    v30[0] = a3;
    v30[1] = a4;
    v30[2] = a5;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v16 = v14;
    v17 = sub_1C47D7A88(__dst);
    v19 = v18;
    v20 = __dst[6];
    v21 = __dst[7];
    sub_1C44344B8(__dst[6], __dst[7]);
  }

  else
  {

    v20 = __dst[6];
    v21 = __dst[7];
    v17 = __dst[4];
    v19 = __dst[5];
    v16 = __dst[2];
    v15 = __dst[3];
    sub_1C470CD44(__dst, v30);
  }

  v22 = __dst[8];
  __srca[0] = v32;
  __srca[1] = v13;
  __srca[2] = v16;
  __srca[3] = v15;
  __srca[4] = v17;
  __srca[5] = v19;
  __srca[6] = v20;
  __srca[7] = v21;
  __srca[8] = __dst[8];
  LOBYTE(__srca[9]) = __dst[9];
  memcpy(v30, __srca, 0x49uLL);
  if ((a6 & 1) == 0)
  {
    return memcpy(a7, __srca, 0x49uLL);
  }

  result = sub_1C47D7E48(v30);
  if (result)
  {
    v24 = __srca[9];
    v25 = v16;
    v26 = v17;
    v27 = v32;
  }

  else
  {
    result = sub_1C470CDA0(__srca);
    v27 = 0;
    v13 = 0;
    v25 = 0;
    v15 = 0;
    v26 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v24 = 0;
  }

  *a7 = v27;
  a7[1] = v13;
  a7[2] = v25;
  a7[3] = v15;
  a7[4] = v26;
  a7[5] = v19;
  a7[6] = v20;
  a7[7] = v21;
  a7[8] = v22;
  *(a7 + 72) = v24;
  return result;
}

uint64_t sub_1C47D7A88(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v34 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = v34 - v10;
  v12 = sub_1C4EFF0C8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = MEMORY[0x1E69E6158];
  v37 = MEMORY[0x1E69E6158];
  v35 = v17;
  v36 = v18;
  swift_bridgeObjectRetain_n();
  sub_1C47D8528();
  v21 = v20;
  sub_1C440962C(&v35);

  if (v21)
  {
    v22 = 7104878;

    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    v37 = v19;
    v35 = v17;
    v36 = v18;
    sub_1C47D8528();
    v24 = v23;
    sub_1C440962C(&v35);
    if (v24)
    {
      sub_1C48685A4(v24, v9);

      if (sub_1C44157D4(v9, 1, v12) != 1)
      {
        v26 = sub_1C4EFF068();
        v25 = v28;
        (*(v13 + 8))(v9, v12);
LABEL_9:
        MEMORY[0x1C6940010](v26, v25);

        MEMORY[0x1C6940010](15933, 0xE200000000000000);
        v37 = v19;
        v35 = v17;
        v36 = v18;
        sub_1C47D8528();
        v30 = v29;
        sub_1C440962C(&v35);
        if (v30)
        {
          sub_1C4A3E1CC(v30, v6);

          if (sub_1C44157D4(v6, 1, v12) != 1)
          {
            v22 = sub_1C4EFF068();
            v31 = v32;
            (*(v13 + 8))(v6, v12);
            goto LABEL_14;
          }

          sub_1C4607CD4(v6, &unk_1EC0BA0E0, &qword_1C4F105A0);
        }

        v31 = 0xE300000000000000;
LABEL_14:
        MEMORY[0x1C6940010](v22, v31);

        return v34[0];
      }

      sub_1C4607CD4(v9, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    v25 = 0xE300000000000000;
    v26 = 7104878;
    goto LABEL_9;
  }

  sub_1C4EFF0D8();
  if (sub_1C44157D4(v11, 1, v12) == 1)
  {
    sub_1C4607CD4(v11, &unk_1EC0BA0E0, &qword_1C4F105A0);
    return 0;
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    v27 = sub_1C4EFF068();
    (*(v13 + 8))(v16, v12);
  }

  return v27;
}

BOOL sub_1C47D7E48(uint64_t a1)
{
  v2 = sub_1C4EFF0C8();
  v54 = *(v2 - 8);
  v3 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v56 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C456902C(&qword_1EC0B8580, &unk_1C4F0D340);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v53 - v7;
  v9 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v55 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v53 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v53 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v53 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v53 - v22;
  v24 = *(a1 + 32);
  v25 = *(a1 + 40);
  v57 = a1;
  v61 = MEMORY[0x1E69E6158];
  v59 = v24;
  v60 = v25;
  swift_bridgeObjectRetain_n();
  sub_1C47D8528();
  v27 = v26;
  sub_1C440962C(&v59);

  if (!v27)
  {
    v57 = v18;
    v40 = v56;
    sub_1C4EFF0D8();
    if (sub_1C44157D4(v23, 1, v2) == 1)
    {

      v41 = v23;
LABEL_11:
      sub_1C4607CD4(v41, &unk_1EC0BA0E0, &qword_1C4F105A0);
      return 0;
    }

    sub_1C4607CD4(v23, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C4EFF0D8();
    v43 = v57;
    sub_1C4EFF098();
    sub_1C440BAA8(v43, 0, 1, v2);
    v44 = *(v5 + 48);
    v45 = v8;
    sub_1C457E858(v21, v8);
    sub_1C457E858(v43, &v8[v44]);
    if (sub_1C44157D4(v8, 1, v2) == 1)
    {
      sub_1C4607CD4(v43, &unk_1EC0BA0E0, &qword_1C4F105A0);
      sub_1C4607CD4(v21, &unk_1EC0BA0E0, &qword_1C4F105A0);
      if (sub_1C44157D4(&v8[v44], 1, v2) == 1)
      {
        v41 = v8;
        goto LABEL_11;
      }
    }

    else
    {
      sub_1C457E858(v8, v15);
      if (sub_1C44157D4(&v8[v44], 1, v2) != 1)
      {
        v48 = v54;
        v49 = v45 + v44;
        v50 = v40;
        (*(v54 + 32))(v40, v49, v2);
        sub_1C47DCC38(&qword_1EDDFCC98, MEMORY[0x1E69A9810]);
        v51 = sub_1C4F010B8();
        v52 = *(v48 + 8);
        v52(v50, v2);
        sub_1C4607CD4(v57, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C4607CD4(v21, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v52(v15, v2);
        sub_1C4607CD4(v45, &unk_1EC0BA0E0, &qword_1C4F105A0);
        return (v51 & 1) == 0;
      }

      sub_1C4607CD4(v57, &unk_1EC0BA0E0, &qword_1C4F105A0);
      sub_1C4607CD4(v21, &unk_1EC0BA0E0, &qword_1C4F105A0);
      (*(v54 + 8))(v15, v2);
    }

    sub_1C4607CD4(v8, &qword_1EC0B8580, &unk_1C4F0D340);
    return 1;
  }

  v28 = v2;

  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v29 = sub_1C4F00978();
  sub_1C442B738(v29, qword_1EDE2E088);
  v30 = v57;
  sub_1C470CD44(v57, &v59);
  v31 = sub_1C4F00968();
  v32 = sub_1C4F01CB8();
  sub_1C470CDA0(v30);
  if (os_log_type_enabled(v31, v32))
  {
    v33 = 7104878;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v58 = v35;
    *v34 = 136315138;
    v61 = MEMORY[0x1E69E6158];
    v59 = v24;
    v60 = v25;
    sub_1C47D8528();
    v37 = v36;
    sub_1C440962C(&v59);
    if (v37)
    {
      v38 = v55;
      sub_1C48685A4(v37, v55);

      if (sub_1C44157D4(v38, 1, v28) != 1)
      {
        v33 = sub_1C4EFF068();
        v39 = v46;
        (*(v54 + 8))(v38, v28);
        goto LABEL_18;
      }

      sub_1C4607CD4(v38, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    v39 = 0xE300000000000000;
LABEL_18:
    v47 = sub_1C441D828(v33, v39, &v58);

    *(v34 + 4) = v47;
    _os_log_impl(&dword_1C43F8000, v31, v32, "FeaturesFilter: got an edge value %s", v34, 0xCu);
    sub_1C440962C(v35);
    MEMORY[0x1C6942830](v35, -1, -1);
    MEMORY[0x1C6942830](v34, -1, -1);

    return 1;
  }

  return 1;
}

void sub_1C47D8528()
{
  sub_1C43FBD3C();
  v2 = v1;
  v3 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1C43FBFDC();
  v78 = v5;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FD230();
  v80 = v7;
  sub_1C43FBE44();
  v8 = sub_1C4EFF0C8();
  v9 = sub_1C43FCDF8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBFDC();
  v76 = v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FD230();
  v77 = v16;
  v17 = *(*(sub_1C456902C(&qword_1EC0BD270, &qword_1C4F2D9E8) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FE95C();
  v81 = sub_1C456902C(&qword_1EC0BD278, &unk_1C4F2D9F0);
  sub_1C43FCDF8(v81);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  v82 = &v74 - v24;
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C440686C();
    swift_once();
  }

  v25 = sub_1C4F00978();
  sub_1C442B738(v25, qword_1EDE2E088);
  sub_1C442B870(v2, &v87);
  v26 = sub_1C4F00968();
  v27 = sub_1C4F01CB8();
  v28 = os_log_type_enabled(v26, v27);
  v79 = v11;
  if (v28)
  {
    v75 = v20;
    v29 = v8;
    sub_1C43FECF0();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v83 = v31;
    *v30 = 136315138;
    sub_1C442B870(&v87, v84);
    if (swift_dynamicCast())
    {
      v32 = *(&v86 + 1);
      v33 = v86;
    }

    else
    {
      v32 = 0xE800000000000000;
      v33 = 0x676E697274536F6ELL;
    }

    sub_1C440962C(&v87);
    v34 = sub_1C441D828(v33, v32, &v83);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_1C43F8000, v26, v27, "parseEdgeValue row value %s", v30, 0xCu);
    sub_1C440962C(v31);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();

    v8 = v29;
    v20 = v75;
  }

  else
  {

    sub_1C440962C(&v87);
  }

  sub_1C442B870(v2, &v87);
  if (!sub_1C4430634())
  {
    sub_1C442B870(v2, &v87);
    if (!sub_1C4430634())
    {
      goto LABEL_31;
    }

    v37 = v84[0];
    v38 = sub_1C43FD2BC();
    sub_1C44344B8(v38, v39);
    v40 = sub_1C43FD2BC();
    sub_1C44CE108(v40, v41);
    v36 = v81;
    if (v42)
    {
      v43 = sub_1C43FD2BC();
      sub_1C4434000(v43, v44);
      v45 = sub_1C43FD2BC();
      sub_1C4434000(v45, v46);
LABEL_14:
      v35 = v82;
      goto LABEL_21;
    }

    v86 = v37;
    v47 = sub_1C43FD2BC();
    sub_1C44344B8(v47, v48);
    sub_1C456902C(&qword_1EC0C61A0, &qword_1C4F1E400);
    if (swift_dynamicCast())
    {
      v75 = v20;
      sub_1C441D670(v84, &v87);
      sub_1C4409678(&v87, v90);
      v49 = sub_1C4F02588();
      v50 = sub_1C43FD2BC();
      sub_1C4434000(v50, v51);
      if (v49)
      {
        sub_1C4409678(&v87, v90);
        sub_1C4F02578();
        v52 = sub_1C43FD2BC();
        sub_1C4434000(v52, v53);
        sub_1C440962C(&v87);
        v20 = v75;
        goto LABEL_14;
      }

      sub_1C440962C(&v87);
      v20 = v75;
    }

    else
    {
      v54 = sub_1C43FD2BC();
      sub_1C4434000(v54, v55);
      v85 = 0;
      memset(v84, 0, sizeof(v84));
      sub_1C4607CD4(v84, &qword_1EC0BB218, &qword_1C4F2DA00);
    }

    v35 = v82;
    v56 = sub_1C43FD2BC();
    sub_1C47DC7B8(v56, v57);
    v58 = sub_1C43FD2BC();
    sub_1C4434000(v58, v59);
    goto LABEL_21;
  }

  v36 = v81;
  v35 = v82;
LABEL_21:
  if (qword_1EC0B6AE0 != -1)
  {
    swift_once();
  }

  v60 = sub_1C456902C(&qword_1EC0BD280, &qword_1C4F2DA08);
  sub_1C442B738(v60, qword_1EC151FC8);
  sub_1C4C67230();

  if (sub_1C44157D4(v0, 1, v36) == 1)
  {
    v61 = &qword_1EC0BD270;
    v62 = &qword_1C4F2D9E8;
    v63 = v0;
  }

  else
  {
    (*(v20 + 32))(v35, v0, v36);
    swift_getKeyPath();
    v64 = v20;
    sub_1C4EFCBE8();

    MEMORY[0x1C693FEF0](v87, v88, v89, v90);

    swift_getKeyPath();
    sub_1C4EFCBE8();

    MEMORY[0x1C693FEF0](v87, v88, v89, v90);

    v65 = v80;
    sub_1C4EFF0D8();
    if (sub_1C44157D4(v65, 1, v8) == 1)
    {
      (*(v64 + 8))(v35, v36);
    }

    else
    {
      v66 = v79;
      v67 = *(v79 + 32);
      v68 = v77;
      v67(v77, v65, v8);
      v65 = v78;
      sub_1C4EFF0D8();
      if (sub_1C44157D4(v65, 1, v8) != 1)
      {
        v69 = v76;
        v67(v76, v65, v8);
        sub_1C456902C(&qword_1EC0B8EC8, &unk_1C4F0E950);
        v70 = *(v66 + 72);
        v71 = (*(v66 + 80) + 32) & ~*(v66 + 80);
        v72 = swift_allocObject();
        *(v72 + 16) = xmmword_1C4F0CE60;
        v73 = v72 + v71;
        (*(v66 + 16))(v73, v68, v8);
        v67(v73 + v70, v69, v8);
        (*(v66 + 8))(v68, v8);
        (*(v64 + 8))(v82, v81);
        goto LABEL_31;
      }

      (*(v66 + 8))(v68, v8);
      (*(v64 + 8))(v82, v36);
    }

    v61 = &unk_1EC0BA0E0;
    v62 = &qword_1C4F105A0;
    v63 = v65;
  }

  sub_1C4607CD4(v63, v61, v62);
LABEL_31:
  sub_1C43FE9F0();
}

void sub_1C47D8D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22)
{
  sub_1C43FE96C();
  v111 = v23;
  v131 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v106 = v31;
  v33 = v32;
  v103 = v34;
  v110 = v35;
  v105 = v36;
  v116 = a22;
  v109 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  sub_1C43FCDF8(v109);
  *&v108 = v37;
  v39 = *(v38 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v40);
  v107 = &v102 - v41;
  v112 = sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  sub_1C43FCDF8(v112);
  v104 = v42;
  v44 = *(v43 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v45);
  v114 = &v102 - v46;
  sub_1C43FBE44();
  v47 = sub_1C4EFB298();
  v48 = sub_1C43FCDF8(v47);
  v115 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBCC4();
  sub_1C4423B7C();
  v52 = MEMORY[0x1E699FE60];
  v113 = v22;
  if (v33)
  {
    v53 = sub_1C4EFBD38();
    v130[3] = v53;
    v130[4] = MEMORY[0x1E69A0050];
    sub_1C4422F90(v130);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C441CA08();
    v54 = MEMORY[0x1E69A0130];
    v128 = MEMORY[0x1E69E6158];
    v129 = MEMORY[0x1E69A0130];
    v102 = v33;
    v55 = MEMORY[0x1E69E6158];
    v125 = v106;
    v126 = v30;
    sub_1C440CC2C();
    *(v56 - 256) = v52;
    sub_1C4422F90(&v117);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFBB28();
    sub_1C4607CD4(&v125, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v130);
    v130[3] = v53;
    sub_1C443F5E8(MEMORY[0x1E69A0050]);
    sub_1C4441034();
    v123 = v55;
    v124 = v54;
    v121 = v28;
    v122 = v26;
    v128 = v47;
    v57 = MEMORY[0x1E699FE60];
    v129 = MEMORY[0x1E699FE60];
    sub_1C4422F90(&v125);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFBB28();
    sub_1C4607CD4(&v121, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v130);
    v130[3] = v47;
    v130[4] = v57;
    sub_1C4422F90(v130);
    sub_1C4EFBB08();
    sub_1C440962C(&v125);
    sub_1C440962C(&v117);
    v128 = v53;
    v129 = MEMORY[0x1E69A0050];
    sub_1C4422F90(&v125);
    sub_1C4EFBD48();
    v123 = MEMORY[0x1E69E6158];
    v124 = MEMORY[0x1E69A0130];
    v121 = v103;
    v122 = v102;
    sub_1C440CC2C();
    *(v58 - 256) = v57;
    sub_1C4422F90(&v117);
    sub_1C4EFBB28();
    sub_1C4607CD4(&v121, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(&v125);
    v22 = v113;
  }

  else
  {
    v59 = sub_1C4EFBD38();
    v119 = v59;
    v120 = MEMORY[0x1E69A0050];
    sub_1C4422F90(&v117);
    sub_1C441CA08();
    v60 = MEMORY[0x1E69A0130];
    v128 = MEMORY[0x1E69E6158];
    v129 = MEMORY[0x1E69A0130];
    v125 = v106;
    v126 = v30;
    v130[3] = v47;
    sub_1C443F5E8(MEMORY[0x1E699FE60]);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFBB28();
    sub_1C4607CD4(&v125, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(&v117);
    v128 = v59;
    v129 = MEMORY[0x1E69A0050];
    sub_1C4422F90(&v125);
    sub_1C4441034();
    v123 = MEMORY[0x1E69E6158];
    v124 = v60;
    v57 = MEMORY[0x1E699FE60];
    v121 = v28;
    v122 = v26;
    sub_1C440CC2C();
    *(v61 - 256) = v57;
    sub_1C4422F90(&v117);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFBB28();
    sub_1C4607CD4(&v121, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(&v125);
  }

  sub_1C4EFBB08();
  sub_1C440962C(&v117);
  sub_1C440962C(v130);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v62 = v107;
  sub_1C4EFBD18();
  v130[3] = v47;
  v130[4] = v57;
  v63 = sub_1C4422F90(v130);
  (*(v115 + 16))(v63, v22, v47);
  v64 = v109;
  sub_1C4EFBCD8();
  sub_1C43FFB20(&v130[1]);
  v65(v62, v64);
  sub_1C440962C(v130);
  sub_1C47DC918();
  sub_1C441310C();
  sub_1C4401CBC(v66, v67, v68);
  v69 = v112;
  v70 = v111;
  v71 = sub_1C4EFB3F8();
  v72 = v70;
  if (!v70)
  {
    v87 = v71;
    v110 = v47;
    v69 = 0;
    v47 = *(v71 + 16);
    v111 = MEMORY[0x1E69E7CC0];
    v88 = 32;
    v109 = 32;
LABEL_10:
    v89 = v88 + 80 * v69;
    while (1)
    {
      if (v47 == v69)
      {

        sub_1C43FFB20(&v127);
        v100(v114, v112);
        sub_1C43FFB20(&v130[9]);
        v101(v113, v110);
        v82 = v105;
        v86 = v111;
        goto LABEL_21;
      }

      if (v69 >= *(v87 + 16))
      {
        break;
      }

      memcpy(v130, (v87 + v89), 0x49uLL);
      sub_1C470CD44(v130, &v117);
      v90 = objc_autoreleasePoolPush();
      sub_1C47D9768(v130, v28, v26, v131, a21, &v117);
      v72 = 0;
      ++v69;
      v89 += 80;
      objc_autoreleasePoolPop(v90);
      sub_1C470CDA0(v130);
      if (v117)
      {
        v108 = v117;
        v91 = v118;
        v92 = v119;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v107 = v91;
        LODWORD(v106) = v92;
        if (isUniquelyReferenced_nonNull_native)
        {
          v94 = v111;
        }

        else
        {
          v99 = v111[2];
          sub_1C458D53C();
        }

        v96 = v94[2];
        v95 = v94[3];
        v97 = v108;
        if (v96 >= v95 >> 1)
        {
          sub_1C43FCFE8(v95);
          sub_1C458D53C();
          v97 = v108;
        }

        v94[2] = v96 + 1;
        v111 = v94;
        v98 = &v94[4 * v96];
        *(v98 + 2) = v97;
        v98[6] = v107;
        *(v98 + 56) = v106 & 1;
        v88 = v109;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  if (qword_1EDDFFAF0 != -1)
  {
LABEL_23:
    sub_1C440686C();
    swift_once();
  }

  v73 = sub_1C4F00978();
  sub_1C43FCEE8(v73, qword_1EDE2E088);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v74 = v72;
  v75 = sub_1C4F00968();
  v76 = sub_1C4F01CD8();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v130[0] = v79;
    *v77 = 136315394;
    *(v77 + 4) = sub_1C441D828(v131, a21, v130);
    *(v77 + 12) = 2112;
    v80 = v72;
    v81 = _swift_stdlib_bridgeErrorToNSError();
    *(v77 + 14) = v81;
    *v78 = v81;
    _os_log_impl(&dword_1C43F8000, v75, v76, "FeatureDatabaseTable: Could not load from table %s due to %@, returning []", v77, 0x16u);
    sub_1C4607CD4(v78, &qword_1EC0BDA00, &qword_1C4F10D30);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C440962C(v79);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v82 = v105;
  v83 = v104;
  v84 = v113;

  (*(v83 + 8))(v114, v69);
  sub_1C43FFB20(&v130[9]);
  v85(v84, v47);
  v86 = MEMORY[0x1E69E7CC0];
LABEL_21:
  *v82 = v86;
  sub_1C43FBC80();
}