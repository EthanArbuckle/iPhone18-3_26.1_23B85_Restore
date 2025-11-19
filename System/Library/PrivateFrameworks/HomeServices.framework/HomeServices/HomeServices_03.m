uint64_t sub_1D20E299C(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::String __swiftcall CLLocationCoordinate2D.geohash(length:)(Swift::Int length)
{
  v3 = v2;
  v4 = v1;
  type metadata accessor for Geohash();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  v7 = sub_1D20E2D48(length, v4, v3);
  v9 = v8;
  swift_setDeallocating();
  v10 = *(inited + 16);

  v11 = *(inited + 24);

  v12 = v7;
  v13 = v9;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

Swift::String __swiftcall CLLocation.geohash(length:)(Swift::Int length)
{
  type metadata accessor for Geohash();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  [v1 coordinate];
  v5 = v4;
  [v1 coordinate];
  v7 = sub_1D20E2D48(length, v5, v6);
  v9 = v8;
  swift_setDeallocating();
  v10 = *(inited + 16);

  v11 = *(inited + 24);

  v12 = v7;
  v13 = v9;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

CLLocation __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CLLocation.init(geohash:)(Swift::String geohash)
{
  object = geohash._object;
  countAndFlagsBits = geohash._countAndFlagsBits;
  type metadata accessor for Geohash();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  sub_1D20E37DC(countAndFlagsBits, object);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  if (!v1)
  {
    object = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithLatitude:(v6 + v8) * 0.5 longitude:(v10 + v12) * 0.5];
  }

  swift_setDeallocating();
  v13 = *(inited + 16);

  v14 = *(inited + 24);

  v16 = object;
  result._internal = v15;
  result.super.isa = v16;
  return result;
}

uint64_t Geohash.Error.hashValue.getter()
{
  sub_1D2113ECC();
  MEMORY[0x1D38967E0](0);
  return sub_1D2113F1C();
}

uint64_t sub_1D20E2C9C()
{
  sub_1D2113ECC();
  MEMORY[0x1D38967E0](0);
  return sub_1D2113F1C();
}

uint64_t sub_1D20E2D08()
{
  sub_1D2113ECC();
  MEMORY[0x1D38967E0](0);
  return sub_1D2113F1C();
}

uint64_t sub_1D20E2D48(uint64_t result, double a2, double a3)
{
  v3 = ceil(result * 5.0 * 0.5);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v4 = v3;
  if (v3 < 0)
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v5 = result;
  v118 = v3;
  if (!v4)
  {
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  result = sub_1D21139FC();
  v6 = result;
  *(result + 16) = v4;
  v7 = (result + 32);
  if (v4 < 4)
  {
    v8 = 0;
    v9 = a2;
LABEL_12:
    v13 = v4 - v8;
    do
    {
      *v7++ = v9;
      --v13;
    }

    while (v13);
    goto LABEL_14;
  }

  v8 = v4 & 0x7FFFFFFFFFFFFFFCLL;
  v7 += v4 & 0x7FFFFFFFFFFFFFFCLL;
  v9 = a2;
  v10 = vdupq_lane_s64(*&a2, 0);
  v11 = (result + 48);
  v12 = v4 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v11[-1] = v10;
    *v11 = v10;
    v11 += 2;
    v12 -= 4;
  }

  while (v12);
  if (v8 != v4)
  {
    goto LABEL_12;
  }

LABEL_14:
  v112 = v5;
  v14 = *(v6 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = MEMORY[0x1E69E7CC0];
    v17 = 90.0;
    v18 = -90.0;
    do
    {
      v19 = v17;
      v20 = v16;
      v21 = v15;
      while (1)
      {
        if (v21 >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_111;
        }

        v15 = v21 + 1;
        v22 = *(v6 + 32 + 8 * v21);
        v17 = (v19 + v18) * 0.5;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = v20;
        if (v22 < v17)
        {
          break;
        }

        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = sub_1D20B6FAC(0, *(v20 + 2) + 1, 1, v20);
        }

        v26 = *(v24 + 2);
        v25 = *(v24 + 3);
        if (v26 >= v25 >> 1)
        {
          v24 = sub_1D20B6FAC((v25 > 1), v26 + 1, 1, v24);
        }

        *(v24 + 2) = v26 + 1;
        v27 = &v24[16 * v26];
        *(v27 + 4) = 49;
        *(v27 + 5) = 0xE100000000000000;
        v28 = v24;

        v16 = v28;
        v18 = (v19 + v18) * 0.5;
        v20 = v28;
        ++v21;
        if (v14 == v15)
        {
          goto LABEL_32;
        }
      }

      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = sub_1D20B6FAC(0, *(v20 + 2) + 1, 1, v20);
      }

      v30 = *(v24 + 2);
      v29 = *(v24 + 3);
      if (v30 >= v29 >> 1)
      {
        v24 = sub_1D20B6FAC((v29 > 1), v30 + 1, 1, v24);
      }

      *(v24 + 2) = v30 + 1;
      v31 = &v24[16 * v30];
      *(v31 + 4) = 48;
      *(v31 + 5) = 0xE100000000000000;
      v32 = v24;

      v16 = v32;
    }

    while (v14 - 1 != v21);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

LABEL_32:
  v116 = v16;

  if (!v118)
  {
    v33 = MEMORY[0x1E69E7CC0];
    goto LABEL_41;
  }

  result = sub_1D21139FC();
  v33 = result;
  *(result + 16) = v118;
  v34 = (result + 32);
  if (v118 < 4)
  {
    v35 = 0;
    v36 = a3;
LABEL_39:
    v40 = v118 - v35;
    do
    {
      *v34++ = v36;
      --v40;
    }

    while (v40);
    goto LABEL_41;
  }

  v35 = v118 & 0x7FFFFFFFFFFFFFFCLL;
  v34 += v118 & 0x7FFFFFFFFFFFFFFCLL;
  v36 = a3;
  v37 = vdupq_lane_s64(*&a3, 0);
  v38 = (result + 48);
  v39 = v118 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v38[-1] = v37;
    *v38 = v37;
    v38 += 2;
    v39 -= 4;
  }

  while (v39);
  if (v35 != v118)
  {
    goto LABEL_39;
  }

LABEL_41:
  v41 = *(v33 + 16);
  if (v41)
  {
    v42 = 0;
    v43 = MEMORY[0x1E69E7CC0];
    v44 = 180.0;
    v45 = -180.0;
LABEL_43:
    v46 = v44;
    v47 = v43;
    v48 = v42;
    while (v48 < *(v33 + 16))
    {
      v42 = v48 + 1;
      v49 = *(v33 + 32 + 8 * v48);
      v44 = (v46 + v45) * 0.5;

      v50 = swift_isUniquelyReferenced_nonNull_native();
      v43 = v47;
      if (v49 < v44)
      {
        if ((v50 & 1) == 0)
        {
          v43 = sub_1D20B6FAC(0, *(v47 + 2) + 1, 1, v47);
        }

        v55 = *(v43 + 2);
        v54 = *(v43 + 3);
        if (v55 >= v54 >> 1)
        {
          v43 = sub_1D20B6FAC((v54 > 1), v55 + 1, 1, v43);
        }

        *(v43 + 2) = v55 + 1;
        v56 = &v43[16 * v55];
        *(v56 + 4) = 48;
        *(v56 + 5) = 0xE100000000000000;

        if (v41 - 1 != v48)
        {
          goto LABEL_43;
        }

        goto LABEL_59;
      }

      if ((v50 & 1) == 0)
      {
        v43 = sub_1D20B6FAC(0, *(v47 + 2) + 1, 1, v47);
      }

      v52 = *(v43 + 2);
      v51 = *(v43 + 3);
      if (v52 >= v51 >> 1)
      {
        v43 = sub_1D20B6FAC((v51 > 1), v52 + 1, 1, v43);
      }

      *(v43 + 2) = v52 + 1;
      v53 = &v43[16 * v52];
      *(v53 + 4) = 49;
      *(v53 + 5) = 0xE100000000000000;

      v45 = (v46 + v45) * 0.5;
      v47 = v43;
      ++v48;
      if (v41 == v42)
      {
        goto LABEL_59;
      }
    }

LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v43 = MEMORY[0x1E69E7CC0];
LABEL_59:

  v114 = *(v43 + 2);
  if (v114)
  {
    v57 = 0;
    v58 = v116 + 40;
    v59 = v43 + 40;
    v60 = MEMORY[0x1E69E7CC0];
    while (v57 < *(v43 + 2))
    {
      v61 = *(v59 - 1);
      v62 = *v59;
      v119 = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7410, &qword_1D2115438);
      result = swift_initStackObject();
      *(result + 16) = xmmword_1D2115280;
      *(result + 32) = v61;
      *(result + 40) = v62;
      if (v57 >= *(v116 + 2))
      {
        goto LABEL_113;
      }

      v63 = v43;
      v64 = v58;
      v65 = *(v58 - 1);
      v66 = *v58;
      *(result + 48) = v65;
      *(result + 56) = v66;
      v67 = *(v60 + 16);
      v68 = v67 + 2;
      if (__OFADD__(v67, 2))
      {
        goto LABEL_114;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v69 = *(v60 + 24) >> 1, v69 < v68))
      {
        if (v67 <= v68)
        {
          v70 = v67 + 2;
        }

        else
        {
          v70 = v67;
        }

        result = sub_1D20B6FAC(result, v70, 1, v60);
        v60 = result;
        v69 = *(result + 24) >> 1;
      }

      v43 = v63;
      if (v69 - *(v60 + 16) < 2)
      {
        goto LABEL_115;
      }

      swift_arrayInitWithCopy();

      v71 = *(v60 + 16);
      v72 = __OFADD__(v71, 2);
      v73 = v71 + 2;
      if (v72)
      {
        goto LABEL_116;
      }

      ++v57;
      *(v60 + 16) = v73;
      v58 = v64 + 2;
      v59 = v119 + 2;
      if (v114 == v57)
      {
        goto LABEL_75;
      }
    }

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
    goto LABEL_117;
  }

  v60 = MEMORY[0x1E69E7CC0];
LABEL_75:

  v117 = *(v60 + 16);
  if (v117)
  {
    v74 = 0;
    v75 = 0;
    v76 = (v60 + 40);
    v77 = MEMORY[0x1E69E7CC0];
    while (v75 < *(v60 + 16))
    {
      v120 = *(v76 - 1);
      v122 = *v76;
      swift_bridgeObjectRetain_n();

      result = sub_1D211394C();
      v79 = result;
      v81 = v80;
      if (v74 + 5 * (v75 / 5))
      {
        if (!*(v77 + 16))
        {
          goto LABEL_119;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        v82 = v77;
        if (result)
        {
          v83 = *(v77 + 16);
          if (!v83)
          {
            goto LABEL_120;
          }
        }

        else
        {
          result = sub_1D20E473C(v77);
          v82 = result;
          v83 = *(result + 16);
          if (!v83)
          {
            goto LABEL_120;
          }
        }

        v84 = v83 - 1;
        v85 = &v82[16 * v84];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        *(v82 + 2) = v84;
        v121 = v87;
        v123 = v86;
        MEMORY[0x1D38961A0](v79, v81);

        v89 = *(v82 + 2);
        v88 = *(v82 + 3);
        if (v89 >= v88 >> 1)
        {
          v82 = sub_1D20B6FAC((v88 > 1), v89 + 1, 1, v82);
        }

        *(v82 + 2) = v89 + 1;
        v78 = &v82[16 * v89];
        *(v78 + 4) = v121;
        *(v78 + 5) = v123;
        v77 = v82;
      }

      else
      {
        v90 = v77;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_1D20B6FAC(0, *(v77 + 16) + 1, 1, v77);
        }

        v92 = *(v90 + 2);
        v91 = *(v90 + 3);
        if (v92 >= v91 >> 1)
        {
          v90 = sub_1D20B6FAC((v91 > 1), v92 + 1, 1, v90);
        }

        *(v90 + 2) = v92 + 1;
        v93 = &v90[16 * v92];
        *(v93 + 4) = v79;
        *(v93 + 5) = v81;
        v77 = v90;
      }

      ++v75;
      --v74;
      v76 += 2;
      if (v117 == v75)
      {
        goto LABEL_94;
      }
    }

LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v77 = MEMORY[0x1E69E7CC0];
LABEL_94:

  v94 = *(v77 + 16);
  if (v94)
  {
    v95 = 0;
    v96 = v77 + 40;
    v97 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v98 = (v96 + 16 * v95);
    v99 = v95;
    while (v99 < *(v77 + 16))
    {
      v100 = *(v98 - 1);
      v101 = *v98;

      v102 = sub_1D20E40B4();
      if (*(v102 + 16))
      {
        v103 = sub_1D20E45E0(v100, v101, MEMORY[0x1E69E60C8], sub_1D20B0A90);
        if (v104)
        {
          v105 = (*(v102 + 56) + 16 * v103);
          v107 = *v105;
          v106 = v105[1];

          result = swift_isUniquelyReferenced_nonNull_native();
          v108 = v77;
          if ((result & 1) == 0)
          {
            result = sub_1D20B6EA0(0, *(v97 + 16) + 1, 1, v97);
            v97 = result;
          }

          v110 = *(v97 + 16);
          v109 = *(v97 + 24);
          if (v110 >= v109 >> 1)
          {
            result = sub_1D20B6EA0((v109 > 1), v110 + 1, 1, v97);
            v97 = result;
          }

          v95 = v99 + 1;
          *(v97 + 16) = v110 + 1;
          v111 = v97 + 16 * v110;
          *(v111 + 32) = v107;
          *(v111 + 40) = v106;
          v77 = v108;
          if (v94 - 1 != v99)
          {
            goto LABEL_96;
          }

          goto LABEL_108;
        }
      }

      ++v99;

      v98 += 2;
      if (v94 == v99)
      {
        goto LABEL_108;
      }
    }

    goto LABEL_118;
  }

  v97 = MEMORY[0x1E69E7CC0];
LABEL_108:

  if ((v112 & 0x8000000000000000) == 0)
  {
    *(v97 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C77F8, &qword_1D2116AF0);
    sub_1D20DE7E4(&unk_1EE083640, &qword_1EC6C77F8, &qword_1D2116AF0);
    return sub_1D211393C();
  }

LABEL_125:
  __break(1u);
  return result;
}

uint64_t sub_1D20E37DC(uint64_t a1, unint64_t a2)
{
  result = sub_1D211386C();
  if (result)
  {
    v6 = result;
    v7 = sub_1D20E482C(result, 0);

    v8 = sub_1D20E4764(&v39, v7 + 4, v6, a1, a2);

    if (v8 == v6)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v9 = 0xE000000000000000;
  v39 = 0;
  v40 = 0xE000000000000000;
  v10 = v7[2];
  if (v10)
  {
    v43 = v2;
    v11 = 0;
    v12 = v7 + 5;
    while (v11 < v7[2])
    {
      v14 = *(v12 - 1);
      v13 = *v12;

      v15 = sub_1D20E3C64();
      if (*(v15 + 16))
      {
        v16 = sub_1D20E45E0(v14, v13, MEMORY[0x1E69E5ED0], sub_1D20B0A90);
        if (v17)
        {
          v18 = (*(v15 + 56) + 16 * v16);
          v19 = *v18;
          v20 = v18[1];

          MEMORY[0x1D38961A0](v19, v20);
        }
      }

      ++v11;

      v12 += 2;
      if (v10 == v11)
      {
        v21 = v39;
        v9 = v40;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

  v21 = 0;
LABEL_14:

  if (0xCCCCCCCCCCCCCCCDLL * sub_1D211386C() + 0x1999999999999999 > 0x3333333333333332)
  {

    sub_1D20E48B0();
    swift_allocError();
    return swift_willThrow();
  }

  v22 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v22 = v21 & 0xFFFFFFFFFFFFLL;
  }

  v39 = v21;
  v40 = v9;
  v41 = 0;
  v42 = v22;

  result = sub_1D21138BC();
  if (v23)
  {
    v24 = v23;
    v25 = 0;
    while (!__OFADD__(v25, 1))
    {
      MEMORY[0x1D3896190](result, v24);

      result = sub_1D21138BC();
      v24 = v26;
      ++v25;
      if (!v26)
      {
        goto LABEL_22;
      }
    }

LABEL_40:
    __break(1u);
    return result;
  }

LABEL_22:

  v39 = 0;
  v40 = 0xE000000000000000;
  v41 = 0;
  v42 = 0;

  v27 = sub_1D21138BC();
  if (v28)
  {
    v29 = -90.0;
    v30 = 90.0;
    do
    {
      v32 = (v29 + v30) * 0.5;
      if (v27 == 49 && v28 == 0xE100000000000000)
      {
      }

      else
      {
        v31 = sub_1D2113E2C();

        if ((v31 & 1) == 0)
        {
          v30 = (v29 + v30) * 0.5;
          v32 = v29;
        }
      }

      v27 = sub_1D21138BC();
      v29 = v32;
    }

    while (v28);
  }

  v39 = 0;
  v40 = 0xE000000000000000;
  v41 = 0;
  v42 = 0;

  v33 = sub_1D21138BC();
  if (v34)
  {
    v35 = -180.0;
    v36 = 180.0;
    do
    {
      v38 = (v35 + v36) * 0.5;
      if (v33 == 49 && v34 == 0xE100000000000000)
      {
      }

      else
      {
        v37 = sub_1D2113E2C();

        if ((v37 & 1) == 0)
        {
          v36 = (v35 + v36) * 0.5;
          v38 = v35;
        }
      }

      v33 = sub_1D21138BC();
      v35 = v38;
    }

    while (v34);
  }
}

uint64_t sub_1D20E3C64()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = sub_1D20E3CC0();
    v2 = *(v0 + 16);
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_1D20E3CC0()
{
  v0 = sub_1D21138BC();
  if (!v1)
  {
    v5 = MEMORY[0x1E69E7CC8];
LABEL_29:

    return v5;
  }

  v2 = v0;
  v3 = v1;
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    sub_1D20E4B5C();
    v11 = sub_1D211392C();
    v13 = v12;
    v14 = sub_1D211386C();
    if ((5 - v14 % 5) >= 5)
    {
      v15 = -(v14 % 5);
    }

    else
    {
      v15 = 5 - v14 % 5;
    }

    v40 = v10;
    if (v15)
    {
      v16 = sub_1D21139FC();
      *(v16 + 16) = v15;
      v17 = (v16 + 32);
      if (v15 < 4)
      {
        v18 = 0;
LABEL_16:
        v21 = v15 - v18;
        do
        {
          *v17 = 48;
          v17[1] = 0xE100000000000000;
          v17 += 2;
          --v21;
        }

        while (v21);
        goto LABEL_18;
      }

      v18 = v15 & 0xFFFFFFFFFFFFFFFCLL;
      v17 += 2 * (v15 & 0xFFFFFFFFFFFFFFFCLL);
      v19 = (v16 + 64);
      v20 = v15 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        *(v19 - 2) = xmmword_1D2116AE0;
        *(v19 - 1) = xmmword_1D2116AE0;
        *v19 = xmmword_1D2116AE0;
        v19[1] = xmmword_1D2116AE0;
        v19 += 4;
        v20 -= 4;
      }

      while (v20);
      if (v15 != v18)
      {
        goto LABEL_16;
      }
    }

LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7320, &qword_1D2114A98);
    sub_1D20DE7E4(&qword_1EE084418, &qword_1EC6C7320, &qword_1D2114A98);
    v22 = sub_1D211376C();
    v24 = v23;

    MEMORY[0x1D38961A0](v11, v13);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = sub_1D20E45E0(v2, v3, MEMORY[0x1E69E5ED0], sub_1D20B0A90);
    v28 = v5[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_31;
    }

    v32 = v27;
    if (v5[3] < v31)
    {
      sub_1D20E6E3C(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_1D20E45E0(v2, v3, MEMORY[0x1E69E5ED0], sub_1D20B0A90);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_33;
      }

LABEL_23:
      if (v32)
      {
        goto LABEL_3;
      }

      goto LABEL_24;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }

    v38 = v26;
    sub_1D20E7C80();
    v26 = v38;
    if (v32)
    {
LABEL_3:
      v6 = v26;

      v7 = (v5[7] + 16 * v6);
      v8 = v7[1];
      *v7 = v22;
      v7[1] = v24;

      goto LABEL_4;
    }

LABEL_24:
    v5[(v26 >> 6) + 8] |= 1 << v26;
    v34 = (v5[6] + 16 * v26);
    *v34 = v2;
    v34[1] = v3;
    v35 = (v5[7] + 16 * v26);
    *v35 = v22;
    v35[1] = v24;

    v36 = v5[2];
    v30 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v30)
    {
      goto LABEL_32;
    }

    v5[2] = v37;
LABEL_4:
    v2 = sub_1D21138BC();
    v3 = v9;
    v4 = v40;
    if (!v9)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1D2113E5C();
  __break(1u);
  return result;
}

uint64_t sub_1D20E40B4()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = sub_1D20E4110();
    v2 = *(v0 + 24);
    *(v0 + 24) = v1;
  }

  return v1;
}

uint64_t sub_1D20E4110()
{
  v0 = sub_1D21138BC();
  if (!v1)
  {
    v5 = MEMORY[0x1E69E7CC8];
LABEL_30:

    return v5;
  }

  v2 = v0;
  v3 = v1;
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    sub_1D20E4B5C();
    v10 = sub_1D211392C();
    v12 = v11;
    v13 = sub_1D211386C();
    if ((5 - v13 % 5) >= 5)
    {
      v14 = -(v13 % 5);
    }

    else
    {
      v14 = 5 - v13 % 5;
    }

    v42 = v9;
    v43 = v2;
    if (v14)
    {
      v15 = sub_1D21139FC();
      *(v15 + 16) = v14;
      v16 = (v15 + 32);
      if (v14 < 4)
      {
        v17 = 0;
LABEL_16:
        v20 = v14 - v17;
        do
        {
          *v16 = 48;
          v16[1] = 0xE100000000000000;
          v16 += 2;
          --v20;
        }

        while (v20);
        goto LABEL_18;
      }

      v17 = v14 & 0xFFFFFFFFFFFFFFFCLL;
      v16 += 2 * (v14 & 0xFFFFFFFFFFFFFFFCLL);
      v18 = (v15 + 64);
      v19 = v14 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        *(v18 - 2) = xmmword_1D2116AE0;
        *(v18 - 1) = xmmword_1D2116AE0;
        *v18 = xmmword_1D2116AE0;
        v18[1] = xmmword_1D2116AE0;
        v18 += 4;
        v19 -= 4;
      }

      while (v19);
      if (v14 != v17)
      {
        goto LABEL_16;
      }
    }

LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7320, &qword_1D2114A98);
    sub_1D20DE7E4(&qword_1EE084418, &qword_1EC6C7320, &qword_1D2114A98);
    v21 = sub_1D211376C();
    v23 = v22;

    MEMORY[0x1D38961A0](v10, v12);

    v25 = v21;
    v24 = v23;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = sub_1D20E45E0(v21, v24, MEMORY[0x1E69E60C8], sub_1D20B0A90);
    v29 = v5[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_32;
    }

    v32 = v27;
    if (v5[3] >= v31)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v35 = v43;
        if (v27)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1D20E7B08();
        v35 = v43;
        if (v32)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1D20E6B7C(v31, isUniquelyReferenced_nonNull_native);
      v33 = sub_1D20E45E0(v21, v24, MEMORY[0x1E69E60C8], sub_1D20B0A90);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_34;
      }

      v28 = v33;
      v35 = v43;
      if (v32)
      {
LABEL_3:

        v6 = (v5[7] + 16 * v28);
        v7 = v6[1];
        *v6 = v35;
        v6[1] = v3;

        goto LABEL_4;
      }
    }

    v5[(v28 >> 6) + 8] |= 1 << v28;
    v36 = (v5[6] + 16 * v28);
    *v36 = v25;
    v36[1] = v24;
    v37 = (v5[7] + 16 * v28);
    *v37 = v35;
    v37[1] = v3;

    v38 = v5[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_33;
    }

    v5[2] = v40;
LABEL_4:
    v2 = sub_1D21138BC();
    v3 = v8;
    v4 = v42;
    if (!v8)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1D2113E5C();
  __break(1u);
  return result;
}

uint64_t Geohash.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t Geohash.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_1D20E459C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1D2113BAC();

  return sub_1D20E4674(a1, v5);
}

uint64_t sub_1D20E45E0(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(v4 + 40);
  sub_1D2113ECC();
  a3(v12, a1, a2);
  v9 = sub_1D2113F1C();

  return a4(a1, a2, v9);
}

unint64_t sub_1D20E4674(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1D20E49E0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1D38964C0](v9, a1);
      sub_1D20BC128(v9);
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

uint64_t sub_1D20E4764(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a4;
  v15 = a5;
  *&v16 = 0;
  *(&v16 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = sub_1D21138BC();
      if (!v12)
      {
        a4 = v14;
        a5 = v15;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      v9[1] = v12;
      if (v8 == v10)
      {
        break;
      }

      v9 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v14;
    a5 = v15;
LABEL_15:
    v7 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1D20E482C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7408, &qword_1D2115430);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_1D20E48B0()
{
  result = qword_1EC6C7800;
  if (!qword_1EC6C7800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7800);
  }

  return result;
}

unint64_t sub_1D20E4908()
{
  result = qword_1EC6C7808;
  if (!qword_1EC6C7808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7808);
  }

  return result;
}

uint64_t sub_1D20E4A3C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D211387C();

    return sub_1D211395C();
  }

  return result;
}

unint64_t sub_1D20E4AD8(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

unint64_t sub_1D20E4B04()
{
  v1 = *(v0 + 40);
  sub_1D2113ECC();
  MEMORY[0x1D38967E0](0);
  v2 = sub_1D2113F1C();

  return sub_1D20E4AD8(v2);
}

unint64_t sub_1D20E4B5C()
{
  result = qword_1EE0836B0;
  if (!qword_1EE0836B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0836B0);
  }

  return result;
}

uint64_t sub_1D20E4BB0()
{
  v0 = sub_1D21135EC();
  __swift_allocate_value_buffer(v0, qword_1EC6CE880);
  __swift_project_value_buffer(v0, qword_1EC6CE880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7838, qword_1D2116EA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7840, qword_1D2116D70) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D2116BF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "accessoryId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D21135CC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ekSiteId";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "subscriptionId";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "usagePointRef";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "touRatePlan";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "signalIdentifier";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "utilityAccountIdentifier";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v9();
  return sub_1D21135DC();
}

uint64_t sub_1D20E4EB8()
{
  result = sub_1D21134CC();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 3)
      {
        if (result == 1 || result == 2 || result == 3)
        {
LABEL_11:
          sub_1D211350C();
        }
      }

      else if (result <= 6 || result == 7)
      {
        goto LABEL_11;
      }

      result = sub_1D21134CC();
    }
  }

  return result;
}

uint64_t sub_1D20E4F9C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1D211359C(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_1D211359C(), !v1))
    {
      v8 = v0[5];
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v0[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = sub_1D211359C(), !v1))
      {
        v10 = v0[7];
        v11 = HIBYTE(v10) & 0xF;
        if ((v10 & 0x2000000000000000) == 0)
        {
          v11 = v0[6] & 0xFFFFFFFFFFFFLL;
        }

        if (!v11 || (result = sub_1D211359C(), !v1))
        {
          v12 = v0[9];
          v13 = HIBYTE(v12) & 0xF;
          if ((v12 & 0x2000000000000000) == 0)
          {
            v13 = v0[8] & 0xFFFFFFFFFFFFLL;
          }

          if (!v13 || (result = sub_1D211359C(), !v1))
          {
            v14 = v0[11];
            v15 = HIBYTE(v14) & 0xF;
            if ((v14 & 0x2000000000000000) == 0)
            {
              v15 = v0[10] & 0xFFFFFFFFFFFFLL;
            }

            if (!v15 || (result = sub_1D211359C(), !v1))
            {
              v16 = v0[13];
              v17 = HIBYTE(v16) & 0xF;
              if ((v16 & 0x2000000000000000) == 0)
              {
                v17 = v0[12] & 0xFFFFFFFFFFFFLL;
              }

              if (!v17 || (result = sub_1D211359C(), !v1))
              {
                v18 = v0 + *(type metadata accessor for Com_Apple_Wpc_Es_IdBundle() + 44);
                return sub_1D211346C();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D20E5154@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  a2[6] = 0;
  a2[7] = 0xE000000000000000;
  a2[8] = 0;
  a2[9] = 0xE000000000000000;
  a2[10] = 0;
  a2[11] = 0xE000000000000000;
  a2[12] = 0;
  a2[13] = 0xE000000000000000;
  v2 = a2 + *(a1 + 44);
  return sub_1D211347C();
}

uint64_t sub_1D20E51B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_1D211348C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D20E5224(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = sub_1D211348C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1D20E5298(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t sub_1D20E52EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D20E58A4(&qword_1EC6C7830, type metadata accessor for Com_Apple_Wpc_Es_IdBundle);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D20E5368@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC6C7188 != -1)
  {
    swift_once();
  }

  v2 = sub_1D21135EC();
  v3 = __swift_project_value_buffer(v2, qword_1EC6CE880);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D20E5410(uint64_t a1)
{
  v2 = sub_1D20E58A4(&qword_1EC6C7818, type metadata accessor for Com_Apple_Wpc_Es_IdBundle);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D20E547C()
{
  sub_1D2113ECC();
  sub_1D211374C();
  return sub_1D2113F1C();
}

uint64_t sub_1D20E54D4()
{
  sub_1D20E58A4(&qword_1EC6C7818, type metadata accessor for Com_Apple_Wpc_Es_IdBundle);

  return sub_1D211355C();
}

uint64_t sub_1D20E5550()
{
  sub_1D2113ECC();
  sub_1D211374C();
  return sub_1D2113F1C();
}

uint64_t type metadata accessor for Com_Apple_Wpc_Es_IdBundle()
{
  result = qword_1EC6C7850;
  if (!qword_1EC6C7850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D20E5710(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D2113E2C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1D2113E2C() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1D2113E2C() & 1) == 0)
  {
    return 0;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_1D2113E2C() & 1) == 0 || (a1[8] != a2[8] || a1[9] != a2[9]) && (sub_1D2113E2C() & 1) == 0 || (a1[10] != a2[10] || a1[11] != a2[11]) && (sub_1D2113E2C() & 1) == 0 || (a1[12] != a2[12] || a1[13] != a2[13]) && (sub_1D2113E2C() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for Com_Apple_Wpc_Es_IdBundle() + 44);
  sub_1D211348C();
  sub_1D20E58A4(&qword_1EC6C7848, MEMORY[0x1E69AAC08]);
  return sub_1D21137AC() & 1;
}

uint64_t sub_1D20E58A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D20E5914()
{
  result = sub_1D211348C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D20E59A4@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_1D20E59BC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1D20E59D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D20E6568();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

void sub_1D20E5A34(uint64_t a1@<X8>)
{
  sub_1D20E6554();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_1D20E5A68(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1D20E6554();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6 & 1;
}

uint64_t sub_1D20E5AA0()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1D2113ECC();
  sub_1D211374C();
  return sub_1D2113F1C();
}

uint64_t sub_1D20E5B0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D20E65BC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1D20E5B58()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1D2113ECC();
  sub_1D211374C();
  return sub_1D2113F1C();
}

uint64_t sub_1D20E5BEC()
{
  v0 = sub_1D21135EC();
  __swift_allocate_value_buffer(v0, qword_1EC6CE898);
  __swift_project_value_buffer(v0, qword_1EC6CE898);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7838, qword_1D2116EA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7840, qword_1D2116D70) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D2116DB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ES_FEEDBACK_EVENT_ATTRIBUTION_UNDEFINED";
  *(v6 + 8) = 39;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D21135CC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ES_FEEDBACK_EVENT_ATTRIBUTION_USERCHANGED";
  *(v10 + 1) = 41;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "ES_FEEDBACK_EVENT_ATTRIBUTION_SYSTEMCHANGED";
  *(v11 + 8) = 43;
  *(v11 + 16) = 2;
  v9();
  return sub_1D21135DC();
}

uint64_t sub_1D20E5E20()
{
  v0 = sub_1D21135EC();
  __swift_allocate_value_buffer(v0, qword_1EC6CE8B0);
  __swift_project_value_buffer(v0, qword_1EC6CE8B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7838, qword_1D2116EA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7840, qword_1D2116D70) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1D2116DC0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v5 = "ES_FEEDBACK_EVENT_TYPE_UNDEFINED";
  *(v5 + 8) = 32;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1D21135CC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "ES_FEEDBACK_EVENT_TYPE_RUNNINGSTATUS";
  *(v9 + 8) = 36;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "ES_FEEDBACK_EVENT_TYPE_TEMPERATURESAMPLE";
  *(v11 + 1) = 40;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "ES_FEEDBACK_EVENT_TYPE_TARGETTEMPERATURECHANGED";
  *(v13 + 1) = 47;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "ES_FEEDBACK_EVENT_TYPE_SYSTEMMODE";
  *(v15 + 1) = 33;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "ES_FEEDBACK_EVENT_TYPE_ACTIVITYSTATE";
  *(v17 + 1) = 36;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "ES_FEEDBACK_EVENT_TYPE_HOLDSET";
  *(v19 + 1) = 30;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "ES_FEEDBACK_EVENT_TYPE_INTERVALREADING";
  *(v21 + 1) = 38;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "ES_FEEDBACK_EVENT_TYPE_PRESETCHANGED";
  *(v22 + 8) = 36;
  *(v22 + 16) = 2;
  v8();
  return sub_1D21135DC();
}

uint64_t sub_1D20E61C0@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1D21135EC();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1D20E62BC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

unint64_t sub_1D20E6348()
{
  result = qword_1EC6C7880;
  if (!qword_1EC6C7880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7880);
  }

  return result;
}

unint64_t sub_1D20E63A0()
{
  result = qword_1EC6C7888;
  if (!qword_1EC6C7888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7888);
  }

  return result;
}

unint64_t sub_1D20E63F8()
{
  result = qword_1EC6C7890;
  if (!qword_1EC6C7890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7890);
  }

  return result;
}

unint64_t sub_1D20E6450()
{
  result = qword_1EC6C7898;
  if (!qword_1EC6C7898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7898);
  }

  return result;
}

unint64_t sub_1D20E64A8()
{
  result = qword_1EC6C78A0;
  if (!qword_1EC6C78A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C78A0);
  }

  return result;
}

unint64_t sub_1D20E6500()
{
  result = qword_1EC6C78A8;
  if (!qword_1EC6C78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C78A8);
  }

  return result;
}

unint64_t sub_1D20E6568()
{
  result = qword_1EC6C78B0;
  if (!qword_1EC6C78B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C78B0);
  }

  return result;
}

unint64_t sub_1D20E65BC()
{
  result = qword_1EC6C78B8;
  if (!qword_1EC6C78B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C78B8);
  }

  return result;
}

uint64_t HomeServicesFeatures.hashValue.getter()
{
  sub_1D2113ECC();
  MEMORY[0x1D38967E0](0);
  return sub_1D2113F1C();
}

uint64_t sub_1D20E6710()
{
  result = os_variant_has_internal_diagnostics();
  byte_1EE087490 = result;
  return result;
}

uint64_t static HomeServicesFeatureCheck.setOverride(key:val:)(uint64_t a1, char a2)
{
  if (qword_1EE083D70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = qword_1EE087498;
  qword_1EE087498 = 0x8000000000000000;
  sub_1D20E7828(a2 & 1, isUniquelyReferenced_nonNull_native);
  qword_1EE087498 = v5;
  return swift_endAccess();
}

uint64_t static HomeServicesFeatureCheck.removeOverride(key:)()
{
  if (qword_1EE083D70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = sub_1D20E4B04();
  if (v1)
  {
    v2 = v0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = qword_1EE087498;
    v6 = qword_1EE087498;
    qword_1EE087498 = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D20E7DF8();
      v4 = v6;
    }

    sub_1D20E7518(v2, v4);
    qword_1EE087498 = v4;
  }

  return swift_endAccess();
}

uint64_t sub_1D20E68BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7618, &qword_1D2115F10);
  v40 = a2;
  result = sub_1D2113CEC();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1D2113ECC();
      sub_1D211375C();
      result = sub_1D2113F1C();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1D20E6B7C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C78D8, &qword_1D21171F8);
  v40 = a2;
  result = sub_1D2113CEC();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1D2113ECC();
      sub_1D211375C();
      result = sub_1D2113F1C();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1D20E6E3C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C78D0, &qword_1D21171F0);
  v40 = a2;
  result = sub_1D2113CEC();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1D2113ECC();
      sub_1D211375C();
      result = sub_1D2113F1C();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1D20E70FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C78C8, "Bd");
  result = sub_1D2113CEC();
  v8 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 56) + (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      sub_1D2113ECC();
      MEMORY[0x1D38967E0](0);
      result = sub_1D2113F1C();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 56) + v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1D20E7368(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D2113B9C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1D2113ECC();

      sub_1D211375C();
      v13 = sub_1D2113F1C();

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

uint64_t sub_1D20E7518(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D2113B9C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      sub_1D2113ECC();
      MEMORY[0x1D38967E0](0);
      result = sub_1D2113F1C();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + v3);
        v16 = (v14 + v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D20E76A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1D20E4570(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1D20E68BC(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_1D20E4570(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_1D2113E5C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1D20E7990();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

unint64_t sub_1D20E7828(char a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  result = sub_1D20E4B04();
  v9 = *(v6 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v8;
  v14 = *(v6 + 24);
  if (v14 >= v12 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v14 >= v12 && (a2 & 1) == 0)
  {
    v15 = result;
    sub_1D20E7DF8();
    result = v15;
    goto LABEL_8;
  }

  sub_1D20E70FC(v12, a2 & 1);
  v16 = *v3;
  result = sub_1D20E4B04();
  if ((v13 & 1) == (v17 & 1))
  {
LABEL_8:
    v18 = *v3;
    if (v13)
    {
      *(*(v18 + 56) + result) = a1 & 1;
      return result;
    }

    *(v18 + 8 * (result >> 6) + 64) |= 1 << result;
    *(*(v18 + 56) + result) = a1 & 1;
    v19 = *(v18 + 16);
    v11 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (!v11)
    {
      *(v18 + 16) = v20;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1D2113E5C();
  __break(1u);
  return result;
}

unint64_t sub_1D20E7940(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

void *sub_1D20E7990()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7618, &qword_1D2115F10);
  v2 = *v0;
  v3 = sub_1D2113CDC();
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

void *sub_1D20E7B08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C78D8, &qword_1D21171F8);
  v2 = *v0;
  v3 = sub_1D2113CDC();
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

void *sub_1D20E7C80()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C78D0, &qword_1D21171F0);
  v2 = *v0;
  v3 = sub_1D2113CDC();
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

void *sub_1D20E7DF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C78C8, "Bd");
  v2 = *v0;
  v3 = sub_1D2113CDC();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = *(*(v2 + 56) + v14))
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t _s12HomeServices0aB12FeatureCheckO9isEnabled3keySbAA0aB8FeaturesO_tFZ_0()
{
  if (qword_1EE083D68 != -1)
  {
    swift_once();
  }

  if (byte_1EE087490 != 1)
  {
    goto LABEL_10;
  }

  if (qword_1EE083D70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EE087498;
  if (!*(qword_1EE087498 + 16) || (v1 = sub_1D20E4B04(), (v2 & 1) == 0))
  {
    swift_endAccess();
LABEL_10:
    v5[3] = &type metadata for HomeServicesFeatures;
    v5[4] = sub_1D20E80BC();
    v3 = sub_1D21133FC();
    __swift_destroy_boxed_opaque_existential_1(v5);
    return v3 & 1;
  }

  v3 = *(*(v0 + 56) + v1);
  swift_endAccess();
  return v3 & 1;
}

unint64_t sub_1D20E8048()
{
  result = qword_1EC6C78C0;
  if (!qword_1EC6C78C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C78C0);
  }

  return result;
}

unint64_t sub_1D20E80BC()
{
  result = qword_1EE083D58;
  if (!qword_1EE083D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083D58);
  }

  return result;
}

uint64_t sub_1D20E811C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000061746144;
  v3 = a1;
  if (a1 > 4u)
  {
    v12 = 0x80000001D211A1F0;
    v13 = 0xD00000000000001DLL;
    v14 = 0x80000001D211A210;
    if (a1 != 8)
    {
      v14 = 0x80000001D211A240;
    }

    if (a1 != 7)
    {
      v13 = 0xD000000000000022;
      v12 = v14;
    }

    v15 = 0x206E776F6E6B6E55;
    v16 = 0xEF6572756C696146;
    if (a1 != 5)
    {
      v15 = 0xD000000000000035;
      v16 = 0x80000001D211A1B0;
    }

    if (a1 <= 6u)
    {
      v10 = v15;
    }

    else
    {
      v10 = v13;
    }

    if (v3 <= 6)
    {
      v11 = v16;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v4 = 0x80000001D211A140;
    v5 = 0x80000001D211A160;
    v6 = 0xD000000000000017;
    if (a1 == 3)
    {
      v6 = 0xD00000000000001FLL;
    }

    else
    {
      v5 = 0x80000001D211A180;
    }

    if (a1 == 2)
    {
      v7 = 0xD00000000000001FLL;
    }

    else
    {
      v7 = v6;
    }

    if (a1 != 2)
    {
      v4 = v5;
    }

    v8 = 0x80000001D211A120;
    v9 = 0xD00000000000001ELL;
    if (!a1)
    {
      v9 = 0x20676E697373694DLL;
      v8 = 0xEC00000061746144;
    }

    if (a1 <= 1u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    if (v3 <= 1)
    {
      v11 = v8;
    }

    else
    {
      v11 = v4;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v2 = 0xEF6572756C696146;
        if (v10 != 0x206E776F6E6B6E55)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v2 = 0x80000001D211A1B0;
        if (v10 != 0xD000000000000035)
        {
LABEL_60:
          v19 = sub_1D2113E2C();
          goto LABEL_61;
        }
      }
    }

    else if (a2 == 7)
    {
      v2 = 0x80000001D211A1F0;
      if (v10 != 0xD00000000000001DLL)
      {
        goto LABEL_60;
      }
    }

    else
    {
      if (a2 == 8)
      {
        v18 = "Error while creating geoHash tiles";
      }

      else
      {
        v18 = "Error while fetching geoHash tiles";
      }

      v2 = (v18 - 32) | 0x8000000000000000;
      if (v10 != 0xD000000000000022)
      {
        goto LABEL_60;
      }
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0x80000001D211A120;
      if (v10 != 0xD00000000000001ELL)
      {
        goto LABEL_60;
      }
    }

    else if (v10 != 0x20676E697373694DLL)
    {
      goto LABEL_60;
    }
  }

  else
  {
    if (a2 == 2)
    {
      v17 = "Unable to process http response";
    }

    else
    {
      if (a2 != 3)
      {
        v2 = 0x80000001D211A180;
        if (v10 != 0xD000000000000017)
        {
          goto LABEL_60;
        }

        goto LABEL_58;
      }

      v17 = "Unable to process response body";
    }

    v2 = (v17 - 32) | 0x8000000000000000;
    if (v10 != 0xD00000000000001FLL)
    {
      goto LABEL_60;
    }
  }

LABEL_58:
  if (v11 != v2)
  {
    goto LABEL_60;
  }

  v19 = 1;
LABEL_61:

  return v19 & 1;
}

uint64_t sub_1D20E8414(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1414743362;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x454355444552;
    }

    else
    {
      v4 = 0x5453524F57;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1146048327;
    }

    else
    {
      v4 = 1414743362;
    }

    v5 = 0xE400000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x454355444552;
  if (a2 != 2)
  {
    v7 = 0x5453524F57;
    v6 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 1146048327;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1D2113E2C();
  }

  return v10 & 1;
}

uint64_t sub_1D20E8530()
{
  v0 = sub_1D21135EC();
  __swift_allocate_value_buffer(v0, qword_1EC6CE8C8);
  __swift_project_value_buffer(v0, qword_1EC6CE8C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7838, qword_1D2116EA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7840, qword_1D2116D70) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1D2117200;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "startTime";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1D21135CC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v26 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "endTime";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v26 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "eventType";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v26 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "value";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v26 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "unit";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v8();
  v16 = (v26 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "metadata";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v26 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "attribution";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v26 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "ids";
  *(v21 + 1) = 3;
  v21[16] = 2;
  v8();
  v22 = v26 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "tag";
  *(v22 + 8) = 3;
  *(v22 + 16) = 2;
  v8();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "secondaryValue";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v8();
  return sub_1D21135DC();
}

uint64_t sub_1D20E88FC()
{
  result = sub_1D21134CC();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 5)
      {
        if (result <= 7)
        {
          if (result == 6)
          {
            goto LABEL_4;
          }

          v3 = v0;
          sub_1D20E6568();
          goto LABEL_23;
        }

        if (result == 8)
        {
          sub_1D20E8A84();
        }

        else if (result == 9 || result == 10)
        {
LABEL_4:
          sub_1D211350C();
        }
      }

      else
      {
        if (result > 2)
        {
          if (result != 3)
          {
            goto LABEL_4;
          }

          v3 = v0;
          sub_1D20E65BC();
LABEL_23:
          v0 = v3;
          sub_1D21134EC();
          goto LABEL_5;
        }

        if (result == 1 || result == 2)
        {
          goto LABEL_4;
        }
      }

LABEL_5:
      result = sub_1D21134CC();
    }
  }

  return result;
}

uint64_t sub_1D20E8A84()
{
  v0 = *(type metadata accessor for Com_Apple_Wpc_Es_ESFeedbackEvent() + 56);
  type metadata accessor for Com_Apple_Wpc_Es_IdBundle();
  sub_1D20E9A84(&qword_1EC6C7818, type metadata accessor for Com_Apple_Wpc_Es_IdBundle);
  return sub_1D211352C();
}

uint64_t sub_1D20E8B38()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1D211359C(), !v1))
  {
    v6 = *(v0 + 24);
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_1D211359C(), !v1))
    {
      if (!*(v0 + 32) || (v19 = *(v0 + 32), v21 = *(v0 + 40), sub_1D20E65BC(), result = sub_1D211357C(), !v1))
      {
        v8 = *(v0 + 56);
        v9 = HIBYTE(v8) & 0xF;
        if ((v8 & 0x2000000000000000) == 0)
        {
          v9 = *(v0 + 48) & 0xFFFFFFFFFFFFLL;
        }

        if (!v9 || (result = sub_1D211359C(), !v1))
        {
          v10 = *(v0 + 72);
          v11 = HIBYTE(v10) & 0xF;
          if ((v10 & 0x2000000000000000) == 0)
          {
            v11 = *(v0 + 64) & 0xFFFFFFFFFFFFLL;
          }

          if (!v11 || (result = sub_1D211359C(), !v1))
          {
            v12 = *(v0 + 88);
            v13 = HIBYTE(v12) & 0xF;
            if ((v12 & 0x2000000000000000) == 0)
            {
              v13 = *(v0 + 80) & 0xFFFFFFFFFFFFLL;
            }

            if (!v13 || (result = sub_1D211359C(), !v1))
            {
              if (!*(v0 + 96) || (v20 = *(v0 + 96), v22 = *(v0 + 104), sub_1D20E6568(), result = sub_1D211357C(), !v1))
              {
                result = sub_1D20E8DA8(v0);
                if (!v1)
                {
                  v14 = *(v0 + 120);
                  v15 = HIBYTE(v14) & 0xF;
                  if ((v14 & 0x2000000000000000) == 0)
                  {
                    v15 = *(v0 + 112) & 0xFFFFFFFFFFFFLL;
                  }

                  if (v15)
                  {
                    sub_1D211359C();
                  }

                  v16 = *(v0 + 136);
                  v17 = HIBYTE(v16) & 0xF;
                  if ((v16 & 0x2000000000000000) == 0)
                  {
                    v17 = *(v0 + 128) & 0xFFFFFFFFFFFFLL;
                  }

                  if (v17)
                  {
                    sub_1D211359C();
                  }

                  v18 = v0 + *(type metadata accessor for Com_Apple_Wpc_Es_ESFeedbackEvent() + 52);
                  return sub_1D211346C();
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

uint64_t sub_1D20E8DA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7908, &qword_1D2117378);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Com_Apple_Wpc_Es_IdBundle();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_Wpc_Es_ESFeedbackEvent();
  sub_1D20E9510(a1 + *(v11 + 56), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1D20A862C(v5, &qword_1EC6C7908, &qword_1D2117378);
  }

  sub_1D20E9580(v5, v10);
  sub_1D20E9A84(&qword_1EC6C7818, type metadata accessor for Com_Apple_Wpc_Es_IdBundle);
  sub_1D21135BC();
  return sub_1D20E95E4(v10);
}

uint64_t sub_1D20E8F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0xE000000000000000;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0xE000000000000000;
  *(a2 + 96) = 0;
  *(a2 + 104) = 1;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0xE000000000000000;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0xE000000000000000;
  v4 = a2 + *(a1 + 52);
  sub_1D211347C();
  v5 = *(a1 + 56);
  v6 = type metadata accessor for Com_Apple_Wpc_Es_IdBundle();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_1D20E9058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_1D211348C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D20E90CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = sub_1D211348C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1D20E9140(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t sub_1D20E9194(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D20E9A84(&qword_1EC6C7900, type metadata accessor for Com_Apple_Wpc_Es_ESFeedbackEvent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D20E9210@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC6C71A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D21135EC();
  v3 = __swift_project_value_buffer(v2, qword_1EC6CE8C8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D20E92B8(uint64_t a1)
{
  v2 = sub_1D20E9A84(&qword_1EC6C78E8, type metadata accessor for Com_Apple_Wpc_Es_ESFeedbackEvent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D20E9324()
{
  sub_1D20E9A84(&qword_1EC6C78E8, type metadata accessor for Com_Apple_Wpc_Es_ESFeedbackEvent);

  return sub_1D211355C();
}

uint64_t type metadata accessor for Com_Apple_Wpc_Es_ESFeedbackEvent()
{
  result = qword_1EC6C7918;
  if (!qword_1EC6C7918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D20E9510(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7908, &qword_1D2117378);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D20E9580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Wpc_Es_IdBundle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D20E95E4(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_Wpc_Es_IdBundle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D20E9640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Wpc_Es_IdBundle();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7908, &qword_1D2117378);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v28 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7910, qword_1D2117380);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D2113E2C() & 1) == 0)
  {
    goto LABEL_33;
  }

  if ((*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D2113E2C() & 1) == 0)
  {
    goto LABEL_33;
  }

  v17 = *(a2 + 40);
  if (!sub_1D20E8110(*(a1 + 32), *(a1 + 40), *(a2 + 32)) || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_1D2113E2C() & 1) == 0)
  {
    goto LABEL_33;
  }

  if ((*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72)) && (sub_1D2113E2C() & 1) == 0 || (*(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88)) && (sub_1D2113E2C() & 1) == 0)
  {
    goto LABEL_33;
  }

  v18 = *(a1 + 96);
  v19 = *(a2 + 96);
  if (*(a2 + 104) == 1)
  {
    if (v19)
    {
      if (v19 == 1)
      {
        if (v18 != 1)
        {
          goto LABEL_33;
        }
      }

      else if (v18 != 2)
      {
        goto LABEL_33;
      }
    }

    else if (v18)
    {
      goto LABEL_33;
    }
  }

  else if (v18 != v19)
  {
    goto LABEL_33;
  }

  v20 = type metadata accessor for Com_Apple_Wpc_Es_ESFeedbackEvent();
  v21 = *(v20 + 56);
  v22 = *(v13 + 48);
  sub_1D20E9510(a1 + v21, v16);
  sub_1D20E9510(a2 + v21, &v16[v22]);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) != 1)
  {
    sub_1D20E9510(v16, v12);
    if (v23(&v16[v22], 1, v4) != 1)
    {
      sub_1D20E9580(&v16[v22], v8);
      v26 = sub_1D20E5150(v12, v8);
      sub_1D20E95E4(v8);
      sub_1D20E95E4(v12);
      sub_1D20A862C(v16, &qword_1EC6C7908, &qword_1D2117378);
      if ((v26 & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_36;
    }

    sub_1D20E95E4(v12);
LABEL_32:
    sub_1D20A862C(v16, &qword_1EC6C7910, qword_1D2117380);
    goto LABEL_33;
  }

  if (v23(&v16[v22], 1, v4) != 1)
  {
    goto LABEL_32;
  }

  sub_1D20A862C(v16, &qword_1EC6C7908, &qword_1D2117378);
LABEL_36:
  if (*(a1 + 112) == *(a2 + 112) && *(a1 + 120) == *(a2 + 120) || (sub_1D2113E2C()) && (*(a1 + 128) == *(a2 + 128) && *(a1 + 136) == *(a2 + 136) || (sub_1D2113E2C()))
  {
    v27 = *(v20 + 52);
    sub_1D211348C();
    sub_1D20E9A84(&qword_1EC6C7848, MEMORY[0x1E69AAC08]);
    v24 = sub_1D21137AC();
    return v24 & 1;
  }

LABEL_33:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_1D20E9A84(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D20E9AF4()
{
  sub_1D211348C();
  if (v0 <= 0x3F)
  {
    sub_1D20E9BB0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D20E9BB0()
{
  if (!qword_1EC6C7928)
  {
    type metadata accessor for Com_Apple_Wpc_Es_IdBundle();
    v0 = sub_1D2113B0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6C7928);
    }
  }
}

uint64_t sub_1D20E9C08@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v68 = a1;
  v5 = sub_1D2112F0C();
  v6 = *(v5 - 1);
  v7 = v6[8];
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v65 = &v63 - v11;
  if (qword_1EE0836C8 != -1)
  {
LABEL_25:
    swift_once();
  }

  v12 = sub_1D211362C();
  v67 = __swift_project_value_buffer(v12, qword_1EE087438);
  v13 = sub_1D21135FC();
  v14 = sub_1D2113A5C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1D209F000, v13, v14, "Trying to locate geohash file in geohash-2 folder.", v15, 2u);
    MEMORY[0x1D3896EB0](v15, -1, -1);
  }

  type metadata accessor for Geohash();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  v17 = sub_1D20E2D48(8, a2, a3);
  v19 = v18;
  swift_setDeallocating();
  v20 = *(inited + 16);

  v21 = *(inited + 24);

  swift_bridgeObjectRetain_n();
  v22 = sub_1D20E4A3C(2);
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = MEMORY[0x1D3896140](v22, v24, v26, v28);
  v31 = v30;

  v32 = sub_1D211386C();

  if (v32 < 2)
  {
LABEL_17:

    v50 = sub_1D21135FC();
    v51 = sub_1D2113A7C();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v69[0] = v53;
      *v52 = 136315138;
      v54 = sub_1D20B75F0(v29, v31, v69);

      *(v52 + 4) = v54;
      _os_log_impl(&dword_1D209F000, v50, v51, "Unable to locate matching geohash in geohash-2 Folder for : %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x1D3896EB0](v53, -1, -1);
      MEMORY[0x1D3896EB0](v52, -1, -1);
    }

    else
    {
    }

    v55 = sub_1D2112F9C();
    return (*(*(v55 - 8) + 56))(v68, 1, 1, v55);
  }

  else
  {
    v63 = v6;
    v64 = v5;
    while (1)
    {
      if (qword_1EE083D48 != -1)
      {
        swift_once();
      }

      v69[0] = qword_1EE087480;
      v69[1] = *algn_1EE087488;

      v33 = sub_1D20CF5BC();
      v34 = !v33;
      v35 = v33 ? 1685025392 : 24945;
      v36 = v34 ? 0xE200000000000000 : 0xE400000000000000;
      MEMORY[0x1D38961A0](v35, v36);

      MEMORY[0x1D38961A0](47, 0xE100000000000000);
      MEMORY[0x1D38961A0](v29, v31);
      MEMORY[0x1D38961A0](47, 0xE100000000000000);
      MEMORY[0x1D38961A0](v17, v19);
      MEMORY[0x1D38961A0](0x6E6F736A2ELL, 0xE500000000000000);
      v37 = [objc_opt_self() defaultManager];
      v5 = sub_1D21137BC();
      v6 = [v37 fileExistsAtPath_];

      if (v6)
      {
        break;
      }

      v38 = sub_1D211386C();
      v39 = __OFSUB__(v38, 1);
      v40 = v38 - 1;
      if (v39)
      {
        __break(1u);
        goto LABEL_25;
      }

      v41 = sub_1D20E4A3C(v40);
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v17 = MEMORY[0x1D3896140](v41, v43, v45, v47);
      v19 = v48;

      v49 = sub_1D211386C();

      if (v49 <= 1)
      {
        goto LABEL_17;
      }
    }

    v57 = sub_1D21135FC();
    v58 = sub_1D2113A9C();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_1D209F000, v57, v58, "Located geohash file in geohash-2 folder.", v59, 2u);
      MEMORY[0x1D3896EB0](v59, -1, -1);
    }

    v60 = sub_1D2112F9C();
    v61 = *(*(v60 - 8) + 56);
    v61(v65, 1, 1, v60);
    (v63[13])(v66, *MEMORY[0x1E6968F70], v64);
    v62 = v68;
    sub_1D2112F8C();
    return (v61)(v62, 0, 1, v60);
  }
}

uint64_t sub_1D20EA2B4()
{
  result = sub_1D20EA2D8();
  qword_1EE087480 = result;
  *algn_1EE087488 = v1;
  return result;
}

uint64_t sub_1D20EA2D8()
{
  v0 = sub_1D2112F9C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = [objc_opt_self() defaultManager];
  v9 = [v8 URLsForDirectory:13 inDomains:1];
  v10 = sub_1D21139EC();

  if (*(v10 + 16))
  {
    (*(v1 + 16))(v5, v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    (*(v1 + 32))(v7, v5, v0);
    v14[0] = sub_1D2112F4C();
    v14[1] = v11;
    MEMORY[0x1D38961A0](0xD000000000000029, 0x80000001D211AFA0);
    MEMORY[0x1D38961A0](47, 0xE100000000000000);

    v12 = v14[0];
    (*(v1 + 8))(v7, v0);
  }

  else
  {

    return 0;
  }

  return v12;
}

id sub_1D20EA4D8()
{
  v32 = *MEMORY[0x1E69E9840];
  v31 = 1;
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_1D21137BC();
  v2 = [v0 fileExistsAtPath:v1 isDirectory:&v31];

  if (v2)
  {
    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v3 = sub_1D211362C();
    __swift_project_value_buffer(v3, qword_1EE087438);
    v4 = sub_1D21135FC();
    v5 = sub_1D2113A7C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D209F000, v4, v5, "Path exists", v6, 2u);
      MEMORY[0x1D3896EB0](v6, -1, -1);
    }

    v7 = sub_1D21135FC();
    v8 = sub_1D2113A7C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D209F000, v7, v8, "Deleting existing file", v9, 2u);
      MEMORY[0x1D3896EB0](v9, -1, -1);
    }

    v10 = sub_1D21137BC();
    v30 = 0;
    v11 = [v0 removeItemAtPath:v10 error:&v30];

    if (v11)
    {
      v12 = v30;
    }

    else
    {
      v13 = v30;
      v14 = sub_1D2112EFC();

      swift_willThrow();
    }
  }

  v15 = sub_1D21137BC();
  v30 = 0;
  v16 = [v0 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:&v30];

  if (v16)
  {
    v17 = v30;
  }

  else
  {
    v18 = v30;
    v19 = sub_1D2112EFC();

    swift_willThrow();
    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v20 = sub_1D211362C();
    __swift_project_value_buffer(v20, qword_1EE087438);
    v21 = v19;
    v22 = sub_1D21135FC();
    v23 = sub_1D2113A7C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = v19;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_1D209F000, v22, v23, "Unable to create GeoHash Directory! %@", v24, 0xCu);
      sub_1D20A862C(v25, &qword_1EC6C7950, qword_1D21153D0);
      MEMORY[0x1D3896EB0](v25, -1, -1);
      MEMORY[0x1D3896EB0](v24, -1, -1);
    }

    else
    {
    }
  }

  v28 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t sub_1D20EA8E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7930, &qword_1D21173C8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v24 - v2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7938, &qword_1D21173D0);
  v28 = *(v26 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7940, &qword_1D21173D8);
  v25 = *(v7 - 8);
  v8 = v25;
  v9 = *(v25 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7948, &qword_1D21173E0);
  sub_1D211341C();
  sub_1D211395C();
  sub_1D20EAD9C();
  v27 = v14;
  sub_1D211340C();
  sub_1D211342C();
  v15 = *(v8 + 8);
  v15(v12, v7);

  v16 = v26;
  if ((*(v28 + 48))(v3, 1, v26) == 1)
  {
    sub_1D20A862C(v3, &qword_1EC6C7930, &qword_1D21173C8);
    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v17 = sub_1D211362C();
    __swift_project_value_buffer(v17, qword_1EE087438);
    v18 = sub_1D21135FC();
    v19 = sub_1D2113A7C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D209F000, v18, v19, "No Matching file name found in Geo Hash", v20, 2u);
      MEMORY[0x1D3896EB0](v20, -1, -1);
    }

    v15(v27, v7);
    return 0;
  }

  else
  {
    v22 = v28;
    (*(v28 + 32))(v6, v3, v16);
    swift_getKeyPath();
    sub_1D211344C();

    v23 = MEMORY[0x1D3896140](v29, v30, v31, v32);

    (*(v22 + 8))(v6, v16);
    v15(v27, v7);
    return v23;
  }
}

unint64_t sub_1D20EAD9C()
{
  result = qword_1EE0836D0;
  if (!qword_1EE0836D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6C7940, &qword_1D21173D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0836D0);
  }

  return result;
}

uint64_t sub_1D20EAE00(CLLocationDegrees a1, CLLocationDegrees a2)
{
  v74[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D211381C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1D3896910](v7);
  sub_1D20EB5B4(v74);
  objc_autoreleasePoolPop(v10);
  v12 = v74[0];
  if (!v74[0])
  {
    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v54 = sub_1D211362C();
    __swift_project_value_buffer(v54, qword_1EE087438);
    v50 = sub_1D21135FC();
    v51 = sub_1D2113A7C();
    if (!os_log_type_enabled(v50, v51))
    {
      goto LABEL_33;
    }

    v52 = swift_slowAlloc();
    *v52 = 0;
    v53 = "Unable to retrieve geoJSONs from geohash tile";
LABEL_32:
    _os_log_impl(&dword_1D209F000, v50, v51, v53, v52, 2u);
    MEMORY[0x1D3896EB0](v52, -1, -1);
LABEL_33:

    result = 0;
    goto LABEL_34;
  }

  v13 = *(v74[0] + 2);
  if (!v13)
  {
LABEL_25:

    if (qword_1EE0836C8 != -1)
    {
LABEL_47:
      swift_once();
    }

    v49 = sub_1D211362C();
    __swift_project_value_buffer(v49, qword_1EE087438);
    v50 = sub_1D21135FC();
    v51 = sub_1D2113A9C();
    if (!os_log_type_enabled(v50, v51))
    {
      goto LABEL_33;
    }

    v52 = swift_slowAlloc();
    *v52 = 0;
    v53 = "No matching grid polygon in geohash tile.";
    goto LABEL_32;
  }

  v14 = 0;
  v15 = (v5 + 8);
  *&v11 = 138412290;
  v72 = v11;
  v73 = (v5 + 8);
  while (1)
  {
    if (v14 >= v12[2])
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v16 = v12[v14 + 4];
    if (*(v16 + 16))
    {
      break;
    }

LABEL_5:
    if (v13 == ++v14)
    {
      goto LABEL_25;
    }
  }

  v17 = v12[v14 + 4];

  v18 = sub_1D20E4570(6516580, 0xE300000000000000);
  if ((v19 & 1) == 0)
  {

    goto LABEL_5;
  }

  v20 = (*(v16 + 56) + 16 * v18);
  v21 = *v20;
  v22 = v20[1];

  sub_1D211380C();
  v23 = sub_1D21137DC();
  v25 = v24;

  (*v15)(v9, v4);
  if (v25 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v26 = [objc_allocWithZone(MEMORY[0x1E696F208]) init];
  v27 = sub_1D2112FFC();
  v74[0] = 0;
  v28 = [v26 geoJSONObjectsWithData:v27 error:v74];

  v29 = v74[0];
  if (!v28)
  {
    v36 = v74[0];
    v37 = sub_1D2112EFC();

    swift_willThrow();
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v38 = sub_1D211362C();
    __swift_project_value_buffer(v38, qword_1EE0874C0);
    v39 = v37;
    v40 = sub_1D21135FC();
    v41 = sub_1D2113A7C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v70 = v23;
      v43 = v42;
      v44 = swift_slowAlloc();
      v71 = v4;
      v45 = v44;
      *v43 = v72;
      v46 = v37;
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 4) = v47;
      *v45 = v47;
      _os_log_impl(&dword_1D209F000, v40, v41, "Error while decoding geoJSON File %@", v43, 0xCu);
      sub_1D20A862C(v45, &qword_1EC6C7950, qword_1D21153D0);
      v48 = v45;
      v4 = v71;
      MEMORY[0x1D3896EB0](v48, -1, -1);
      MEMORY[0x1D3896EB0](v43, -1, -1);
      sub_1D20DEC70(v70, v25);
    }

    else
    {
      sub_1D20DEC70(v23, v25);
    }

    v15 = v73;
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7958, &qword_1D2117410);
  v30 = sub_1D21139EC();
  v31 = v29;

  if ((v30 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1D3896550](0, v30);
  }

  else
  {
    if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_46;
    }

    v32 = *(v30 + 32);
    swift_unknownObjectRetain();
  }

  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  if (!v33)
  {
    swift_unknownObjectRelease();
    sub_1D20DEC70(v23, v25);
    v15 = v73;
    goto LABEL_5;
  }

  v34 = v33;
  sub_1D20EBCA4(v33, a1, a2);
  if ((v35 & 1) == 0)
  {
    sub_1D20DEC70(v23, v25);
    swift_unknownObjectRelease();
    v15 = v73;
    goto LABEL_5;
  }

  if (qword_1EE0836C8 != -1)
  {
    swift_once();
  }

  v57 = sub_1D211362C();
  __swift_project_value_buffer(v57, qword_1EE087438);
  v58 = sub_1D21135FC();
  v59 = sub_1D2113A9C();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_1D209F000, v58, v59, "Found matching Polygon", v60, 2u);
    MEMORY[0x1D3896EB0](v60, -1, -1);
  }

  v61 = sub_1D21135FC();
  v62 = sub_1D2113A5C();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_1D209F000, v61, v62, "Extracting Grid Info", v63, 2u);
    MEMORY[0x1D3896EB0](v63, -1, -1);
  }

  v64 = [v34 properties];
  if (v64)
  {
    v65 = v64;
    v66 = sub_1D211301C();
    v68 = v67;
  }

  else
  {
    v66 = 0;
    v68 = 0xF000000000000000;
  }

  v69 = sub_1D20EC04C(v66, v68);
  sub_1D20DEC70(v66, v68);
  swift_unknownObjectRelease();
  sub_1D20DEC70(v23, v25);
  result = v69;
LABEL_34:
  v56 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D20EB5B4(void *a1@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_self() defaultManager];
  v3 = sub_1D20F9ACC();
  v5 = v4;

  if (v5 >> 60 == 15)
  {
LABEL_14:
    *a1 = 0;
    goto LABEL_15;
  }

  v6 = objc_opt_self();
  v7 = sub_1D2112FFC();
  *&v18 = 0;
  v8 = [v6 JSONObjectWithData:v7 options:0 error:&v18];

  v9 = v18;
  if (v8)
  {
    sub_1D2113B7C();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = v9;
    v11 = sub_1D2112EFC();

    swift_willThrow();
    memset(v20, 0, sizeof(v20));
  }

  sub_1D20ED25C(1935896420, 0xE400000000000000, &v18);
  if (!v19)
  {
    sub_1D20A862C(&v18, &qword_1EC6C7960, &qword_1D2116AD0);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7978, &unk_1D2117420);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v12 = sub_1D211362C();
    __swift_project_value_buffer(v12, qword_1EE0874C0);
    v13 = sub_1D21135FC();
    v14 = sub_1D2113A7C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1D209F000, v13, v14, "Unable to deserialize Geohash GeoJSON document", v15, 2u);
      MEMORY[0x1D3896EB0](v15, -1, -1);
    }

    sub_1D20DEC70(v3, v5);

    sub_1D20A862C(v20, &qword_1EC6C7960, &qword_1D2116AD0);
    goto LABEL_14;
  }

  sub_1D20A862C(v20, &qword_1EC6C7960, &qword_1D2116AD0);
  sub_1D20DEC70(v3, v5);
  *a1 = v17;
LABEL_15:
  v16 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D20EB88C(unint64_t a1, uint64_t *a2)
{
  v13 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  sub_1D2113C8C();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D2113CCC())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D3896550](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(a1 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v10 = *a2;
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_1D2113C6C();
      v11 = *(v13 + 16);
      sub_1D2113C9C();
      sub_1D2113CAC();
      sub_1D2113C7C();
      if (v9 == i)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1D2113CCC();
    sub_1D2113C8C();
  }

  return v13;
}

uint64_t sub_1D20EB9F4(void *a1)
{
  v2 = [a1 geometry];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6C7968, &qword_1D2117418);
  v3 = sub_1D21139EC();

  v4 = sub_1D20EB88C(v3, 0x1E696F2E0);

  if (!v4)
  {
    goto LABEL_11;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1D3896550](0, v4);
    goto LABEL_5;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v4 + 32);
LABEL_5:
    v6 = v5;
    v7 = [v5 polygons];

    sub_1D20EC2BC();
    v8 = sub_1D21139EC();

    if (v8 >> 62)
    {
      v9 = sub_1D2113CCC();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1D3896550](0, v4);
      }

      else
      {
        v10 = *(v4 + 32);
      }

      v18 = v10;

      v19 = [v18 polygons];

      v13 = sub_1D21139EC();
      return v13;
    }

LABEL_11:
    v11 = [a1 geometry];
    v12 = sub_1D21139EC();

    v13 = sub_1D20EB88C(v12, 0x1E696F358);

    if (v13)
    {
      return v13;
    }

    if (qword_1EE0836C8 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

  __break(1u);
LABEL_22:
  swift_once();
LABEL_13:
  v14 = sub_1D211362C();
  __swift_project_value_buffer(v14, qword_1EE087438);
  v15 = sub_1D21135FC();
  v16 = sub_1D2113A6C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1D209F000, v15, v16, "Unable to locate Polygons in current GeoFeature", v17, 2u);
    MEMORY[0x1D3896EB0](v17, -1, -1);
  }

  return 0;
}

void sub_1D20EBCA4(void *a1, CLLocationDegrees a2, CLLocationDegrees a3)
{
  v36 = sub_1D21133EC();
  v6 = *(v36 - 8);
  v7 = v6[8];
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D20EB9F4(a1);
  if (v9)
  {
    v10 = v9;
    v11 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v9 >> 62)
    {
LABEL_23:
      v12 = sub_1D2113CCC();
      if (v12)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
LABEL_4:
        v13 = 0;
        v37 = v10 & 0xC000000000000001;
        v34 = *MEMORY[0x1E695EEB8];
        v32 = (v6 + 1);
        v33 = (v6 + 13);
        v14 = 0x1E83F6000uLL;
        v31 = v12;
        do
        {
          if (v37)
          {
            v15 = MEMORY[0x1D3896550](v13, v10);
          }

          else
          {
            if (v13 >= *(v11 + 16))
            {
              goto LABEL_22;
            }

            v15 = *(v10 + 8 * v13 + 32);
          }

          v16 = v15;
          v17 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          v6 = [objc_allocWithZone(MEMORY[0x1E696F360]) initWithPolygon_];
          v45.latitude = a2;
          v45.longitude = a3;
          v18 = MKMapPointForCoordinate(v45);
          [v6 pointForMapPoint_];
          v19 = v6;
          v20 = [v19 *(v14 + 2448)];
          if (v20)
          {
            v38 = v13 + 1;
            v21 = v10;
            v22 = v11;

            v23 = v14;
            v6 = [v19 *(v14 + 2448)];

            if (!v6)
            {
              __break(1u);
              return;
            }

            v25 = v35;
            v24 = v36;
            (*v33)(v35, v34, v36);
            v40 = 0;
            v41 = 0;
            v39 = 0x3FF0000000000000;
            v42 = 0x3FF0000000000000;
            v43 = 0;
            v44 = 0;
            v26 = sub_1D2113AEC();

            (*v32)(v25, v24);
            v11 = v22;
            v10 = v21;
            v12 = v31;
            v14 = v23;
            v17 = v38;
            if (v26)
            {
              break;
            }
          }

          else
          {
          }

          ++v13;
        }

        while (v17 != v12);
      }
    }

    return;
  }

  if (qword_1EE0836C8 != -1)
  {
    swift_once();
  }

  v27 = sub_1D211362C();
  __swift_project_value_buffer(v27, qword_1EE087438);
  v28 = sub_1D21135FC();
  v29 = sub_1D2113A6C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1D209F000, v28, v29, "No multiPolygons for the current Geofeature", v30, 2u);
    MEMORY[0x1D3896EB0](v30, -1, -1);
  }
}

uint64_t sub_1D20EC04C(uint64_t a1, unint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2 >> 60 == 15)
  {
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v2 = sub_1D211362C();
    __swift_project_value_buffer(v2, qword_1EE0874C0);
    v3 = sub_1D21135FC();
    v4 = sub_1D2113A7C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D209F000, v3, v4, "Unable to find grid in matching Polygon", v5, 2u);
      MEMORY[0x1D3896EB0](v5, -1, -1);
    }

    goto LABEL_15;
  }

  v8 = objc_opt_self();
  sub_1D20C7064(a1, a2);
  v9 = sub_1D2112FFC();
  *&v17 = 0;
  v10 = [v8 JSONObjectWithData:v9 options:0 error:&v17];

  v11 = v17;
  if (v10)
  {
    sub_1D2113B7C();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = v11;
    v13 = sub_1D2112EFC();

    swift_willThrow();
    memset(v19, 0, sizeof(v19));
  }

  sub_1D20ED25C(1684632167, 0xE400000000000000, &v17);
  sub_1D20DEC70(a1, a2);
  sub_1D20A862C(v19, &qword_1EC6C7960, &qword_1D2116AD0);
  if (!v18)
  {
    sub_1D20A862C(&v17, &qword_1EC6C7960, &qword_1D2116AD0);
LABEL_15:
    result = 0;
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    result = v16;
  }

  else
  {
    result = 0;
  }

LABEL_16:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1D20EC2BC()
{
  result = qword_1EE083650;
  if (!qword_1EE083650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE083650);
  }

  return result;
}

uint64_t sub_1D20EC308(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_1D20EC3B0;

  return sub_1D20EF460(a1);
}

uint64_t sub_1D20EC3B0(char a1)
{
  v2 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D20EC4B0, 0, 0);
}

uint64_t sub_1D20EC4B0()
{
  if (*(v0 + 64) == 1)
  {
    sub_1D20ED4B4(0x72756769666E6F63, 0xED00006E6F697461, (v0 + 16));
    if (*(v0 + 40))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7980, &qword_1D2117440);
      if (swift_dynamicCast())
      {
        v1 = *(v0 + 48);
        goto LABEL_13;
      }
    }

    else
    {
      sub_1D20A862C(v0 + 16, &qword_1EC6C7960, &qword_1D2116AD0);
    }
  }

  if (qword_1EE084480 != -1)
  {
    swift_once();
  }

  v2 = sub_1D211362C();
  __swift_project_value_buffer(v2, qword_1EE087548);
  v3 = sub_1D21135FC();
  v4 = sub_1D2113A7C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D209F000, v3, v4, "Using default configuration values hardcoded in Framework.", v5, 2u);
    MEMORY[0x1D3896EB0](v5, -1, -1);
  }

  if (qword_1EE083D80 != -1)
  {
    swift_once();
  }

LABEL_13:
  v6 = *(v0 + 8);

  return v6(v1);
}

uint64_t sub_1D20EC694()
{
  sub_1D20ED4B4(0x72756769666E6F63, 0xED00006E6F697461, &v17);
  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7980, &qword_1D2117440);
    if (swift_dynamicCast())
    {
      if (*(v16 + 16) && (v0 = sub_1D20E4570(0xD000000000000010, 0x80000001D211B7A0), (v1 & 1) != 0))
      {
        sub_1D20B7E10(*(v16 + 56) + 32 * v0, &v17);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7320, &qword_1D2114A98);
        if (swift_dynamicCast())
        {
          v2 = v16;
          if (qword_1EE084480 != -1)
          {
            swift_once();
          }

          v3 = sub_1D211362C();
          __swift_project_value_buffer(v3, qword_1EE087548);
          v4 = sub_1D21135FC();
          v5 = sub_1D2113A9C();
          if (os_log_type_enabled(v4, v5))
          {
            v6 = swift_slowAlloc();
            *v6 = 0;
            _os_log_impl(&dword_1D209F000, v4, v5, "Returning regions from server config", v6, 2u);
            MEMORY[0x1D3896EB0](v6, -1, -1);
          }

          goto LABEL_24;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1D20A862C(&v17, &qword_1EC6C7960, &qword_1D2116AD0);
  }

  if (qword_1EE084480 != -1)
  {
    swift_once();
  }

  v7 = sub_1D211362C();
  __swift_project_value_buffer(v7, qword_1EE087548);
  v8 = sub_1D21135FC();
  v9 = sub_1D2113A7C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1D209F000, v8, v9, "    Returning regions from default config.\n    Ensure this invocation is from a client that needs this value during installation.", v10, 2u);
    MEMORY[0x1D3896EB0](v10, -1, -1);
  }

  if (qword_1EE083D80 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE0874A0;
  if (*(qword_1EE0874A0 + 16) && (v12 = sub_1D20E4570(0xD000000000000010, 0x80000001D211B7A0), (v13 & 1) != 0) && (sub_1D20B7E10(*(v11 + 56) + 32 * v12, &v17), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7320, &qword_1D2114A98), (swift_dynamicCast() & 1) != 0))
  {
    v2 = v16;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

LABEL_24:
  v14 = sub_1D20F02A8(v2);

  return v14;
}

void sub_1D20ECA00(__int128 *a1@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  sub_1D20ED4B4(0x68746150697061, 0xE700000000000000, &v32);
  if (!*(&v33 + 1))
  {
    sub_1D20A862C(&v32, &qword_1EC6C7960, &qword_1D2116AD0);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7988, &qword_1D2117448);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    if (qword_1EE084480 != -1)
    {
      swift_once();
    }

    v12 = sub_1D211362C();
    __swift_project_value_buffer(v12, qword_1EE087548);
    v13 = sub_1D21135FC();
    v14 = sub_1D2113A7C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1D209F000, v13, v14, "No API Paths found in config", v15, 2u);
      MEMORY[0x1D3896EB0](v15, -1, -1);
    }

    goto LABEL_14;
  }

  v2 = objc_opt_self();
  v3 = sub_1D21136FC();

  *&v32 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:0 error:&v32];

  v5 = v32;
  if (!v4)
  {
    v16 = v5;
    v17 = sub_1D2112EFC();

    swift_willThrow();
    if (qword_1EE084480 != -1)
    {
      swift_once();
    }

    v18 = sub_1D211362C();
    __swift_project_value_buffer(v18, qword_1EE087548);
    v19 = v17;
    v13 = sub_1D21135FC();
    v20 = sub_1D2113A7C();

    if (!os_log_type_enabled(v13, v20))
    {

      goto LABEL_15;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    v23 = v17;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 4) = v24;
    *v22 = v24;
    _os_log_impl(&dword_1D209F000, v13, v20, "Unable to decode config's APIPath. %@", v21, 0xCu);
    sub_1D20A862C(v22, &qword_1EC6C7950, qword_1D21153D0);
    MEMORY[0x1D3896EB0](v22, -1, -1);
    MEMORY[0x1D3896EB0](v21, -1, -1);

LABEL_14:
LABEL_15:
    v26 = xmmword_1D2117430;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    goto LABEL_16;
  }

  v6 = sub_1D211301C();
  v8 = v7;

  v9 = sub_1D2112B4C();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1D2112B3C();
  sub_1D20EE31C();
  sub_1D2112B2C();
  sub_1D20B98A4(v6, v8);

  v26 = v32;
  v27 = v33;
  v28 = v34;
  v29 = v35;
  v30 = v36;
  v31 = v37;
LABEL_16:
  *a1 = v26;
  a1[1] = v27;
  a1[2] = v28;
  a1[3] = v29;
  a1[4] = v30;
  a1[5] = v31;
  v25 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D20ECE18()
{
  sub_1D20ED4B4(0x5255726576726573, 0xE90000000000004CLL, &v6);
  if (v7)
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_1D20A862C(&v6, &qword_1EC6C7960, &qword_1D2116AD0);
  }

  if (qword_1EE084480 != -1)
  {
    swift_once();
  }

  v1 = sub_1D211362C();
  __swift_project_value_buffer(v1, qword_1EE087548);
  v2 = sub_1D21135FC();
  v3 = sub_1D2113A7C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D209F000, v2, v3, "No Server Base URL found in config", v4, 2u);
    MEMORY[0x1D3896EB0](v4, -1, -1);
  }

  return 0;
}

uint64_t sub_1D20ECF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D20A8580(a1, v10, &qword_1EC6C7960, &qword_1D2116AD0);
  if (v11)
  {
    sub_1D20A8580(v10, v9, &qword_1EC6C7960, &qword_1D2116AD0);
    sub_1D20EE2D4(0, &qword_1EE0843F8, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      [v8 objCType];
      if (sub_1D21138AC() == 99 && v4 == 0xE100000000000000)
      {
      }

      else
      {
        v5 = sub_1D2113E2C();

        if ((v5 & 1) == 0)
        {

          sub_1D20A8580(a1, a2, &qword_1EC6C7960, &qword_1D2116AD0);
          goto LABEL_13;
        }
      }

      v6 = [v8 BOOLValue];
      *(a2 + 24) = MEMORY[0x1E69E6370];

      *a2 = v6;
LABEL_13:
      __swift_destroy_boxed_opaque_existential_1(v9);
      return sub_1D20A862C(v10, &qword_1EC6C7960, &qword_1D2116AD0);
    }

    sub_1D20EE2D4(0, &qword_1EE084400, 0x1E695DFB0);
    if (swift_dynamicCast())
    {

      *a2 = 0u;
      *(a2 + 16) = 0u;
      goto LABEL_13;
    }

    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  sub_1D20A8580(a1, a2, &qword_1EC6C7960, &qword_1D2116AD0);
  return sub_1D20A862C(v10, &qword_1EC6C7960, &qword_1D2116AD0);
}

uint64_t sub_1D20ED160@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  *&v9[0] = a3;
  if (a3 && (v5 = result, swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7980, &qword_1D2117440), result = swift_dynamicCast(), result))
  {
    if (*(v10 + 16) && (v7 = sub_1D20E4570(v5, a2), (v8 & 1) != 0))
    {
      sub_1D20B7E10(*(v10 + 56) + 32 * v7, v9);
    }

    else
    {

      memset(v9, 0, sizeof(v9));
    }

    sub_1D20ECF70(v9, a4);
    return sub_1D20A862C(v9, &qword_1EC6C7960, &qword_1D2116AD0);
  }

  else
  {
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1D20ED25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1D20A8580(v3, &v11, &qword_1EC6C7960, &qword_1D2116AD0);
  if (!*(&v12 + 1))
  {
    result = sub_1D20A862C(&v11, &qword_1EC6C7960, &qword_1D2116AD0);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7980, &qword_1D2117440);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_7:
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  if (*(v10 + 16) && (v8 = sub_1D20E4570(a1, a2), (v9 & 1) != 0))
  {
    sub_1D20B7E10(*(v10 + 56) + 32 * v8, &v11);
  }

  else
  {

    v11 = 0u;
    v12 = 0u;
  }

  sub_1D20ECF70(&v11, a3);
  return sub_1D20A862C(&v11, &qword_1EC6C7960, &qword_1D2116AD0);
}

uint64_t sub_1D20ED3A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7608, &unk_1D2115EB0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD00000000000001BLL;
  v1 = MEMORY[0x1E69E6530];
  *(inited + 40) = 0x80000001D211B7C0;
  *(inited + 48) = 3600;
  *(inited + 16) = xmmword_1D2115280;
  *(inited + 72) = v1;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x80000001D211B7A0;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7320, &qword_1D2114A98);
  *(inited + 96) = &unk_1F4D9E050;
  v2 = sub_1D20CE8BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73D8, &qword_1D21153A0);
  result = swift_arrayDestroy();
  qword_1EE0874A0 = v2;
  return result;
}

uint64_t sub_1D20ED4B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (sub_1D20CF5BC())
  {
    sub_1D2113E2C();
  }

  v6 = sub_1D21137BC();

  v7 = sub_1D21137BC();
  v8 = CFPreferencesCopyAppValue(v6, v7);

  sub_1D20ED160(0x6553796772656E65, 0xEE00736563697672, v8, v10);
  sub_1D20ED25C(a1, a2, a3);
  swift_unknownObjectRelease();
  return sub_1D20A862C(v10, &qword_1EC6C7960, &qword_1D2116AD0);
}

uint64_t sub_1D20ED624(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C79A0, &qword_1D2117528);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20F0AF8();
  sub_1D2113F3C();
  v11 = *v3;
  v12 = v3[1];
  v24[15] = 0;
  sub_1D2113D8C();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v24[14] = 1;
  sub_1D2113D8C();
  v15 = v3[4];
  v16 = v3[5];
  v24[13] = 2;
  sub_1D2113D8C();
  v17 = v3[6];
  v18 = v3[7];
  v24[12] = 3;
  sub_1D2113D8C();
  v19 = v3[8];
  v20 = v3[9];
  v24[11] = 4;
  sub_1D2113D8C();
  v22 = v3[10];
  v23 = v3[11];
  v24[10] = 5;
  sub_1D2113D8C();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D20ED824()
{
  v1 = *v0;
  v2 = 0x656C695464697267;
  v3 = 0xD000000000000011;
  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0x694B796772656E65;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E49796772656E65;
  if (v1 != 1)
  {
    v5 = 0x6E67695364697267;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D20ED90C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D20F0434(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D20ED934(uint64_t a1)
{
  v2 = sub_1D20F0AF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D20ED970(uint64_t a1)
{
  v2 = sub_1D20F0AF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D20ED9AC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D20F065C(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_1D20EDA10(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1D2113ECC();
  sub_1D211375C();
  v9 = sub_1D2113F1C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1D2113E2C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1D20EDDC0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1D20EDB60(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7990, &qword_1D2117458);
  result = sub_1D2113BEC();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1D2113ECC();
      sub_1D211375C();
      result = sub_1D2113F1C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D20EDDC0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1D20EDB60(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1D20EDF40();
      goto LABEL_16;
    }

    sub_1D20EE09C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1D2113ECC();
  sub_1D211375C();
  result = sub_1D2113F1C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1D2113E2C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1D2113E4C();
  __break(1u);
  return result;
}

void *sub_1D20EDF40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7990, &qword_1D2117458);
  v2 = *v0;
  v3 = sub_1D2113BDC();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_1D20EE09C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7990, &qword_1D2117458);
  result = sub_1D2113BEC();
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1D2113ECC();

      sub_1D211375C();
      result = sub_1D2113F1C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1D20EE2D4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1D20EE31C()
{
  result = qword_1EE084828;
  if (!qword_1EE084828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084828);
  }

  return result;
}

uint64_t sub_1D20EE370()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v31 - v2;
  v4 = sub_1D211319C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - v10;
  if (sub_1D20CF5BC())
  {
    sub_1D2113E2C();
  }

  v12 = sub_1D21137BC();

  v13 = sub_1D21137BC();
  v14 = CFPreferencesCopyAppValue(v12, v13);

  if (!v14)
  {
    return v14 & 1;
  }

  *&v36 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7980, &qword_1D2117440);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    LOBYTE(v14) = 0;
    return v14 & 1;
  }

  v15 = v35[0];
  v16 = *(v35[0] + 16);
  v32 = v5;
  if (v16 && (v17 = sub_1D20E4570(0x6553796772656E65, 0xEE00736563697672), (v18 & 1) != 0))
  {
    sub_1D20B7E10(*(v15 + 56) + 32 * v17, &v33);
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  sub_1D20ECF70(&v33, v35);
  sub_1D20A862C(&v33, &qword_1EC6C7960, &qword_1D2116AD0);
  sub_1D20ED25C(0x5255726576726573, 0xE90000000000004CLL, &v36);
  sub_1D20A862C(v35, &qword_1EC6C7960, &qword_1D2116AD0);
  if (!v37)
  {

LABEL_22:
    v21 = &qword_1EC6C7960;
    v22 = &qword_1D2116AD0;
    v23 = &v36;
LABEL_23:
    sub_1D20A862C(v23, v21, v22);
    goto LABEL_24;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_24;
  }

  if (*(v15 + 16) && (v19 = sub_1D20E4570(0x6553796772656E65, 0xEE00736563697672), (v20 & 1) != 0))
  {
    sub_1D20B7E10(*(v15 + 56) + 32 * v19, &v33);
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  sub_1D20ECF70(&v33, v35);
  sub_1D20A862C(&v33, &qword_1EC6C7960, &qword_1D2116AD0);

  sub_1D20ED25C(0x68746150697061, 0xE700000000000000, &v36);
  sub_1D20A862C(v35, &qword_1EC6C7960, &qword_1D2116AD0);
  if (!v37)
  {
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7988, &qword_1D2117448);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v14 = *(v33 + 16);

  if (v14)
  {
    if (sub_1D20CF5BC())
    {
      sub_1D2113E2C();
    }

    v25 = v32;
    v26 = sub_1D21137BC();

    v27 = sub_1D21137BC();
    v28 = CFPreferencesCopyAppValue(v26, v27);

    if (v28)
    {
      *&v36 = v28;
      v29 = swift_dynamicCast();
      (*(v25 + 56))(v3, v29 ^ 1u, 1, v4);
      if ((*(v25 + 48))(v3, 1, v4) != 1)
      {
        (*(v25 + 32))(v11, v3, v4);
        sub_1D211317C();
        LOBYTE(v14) = sub_1D21130FC();
        v30 = *(v25 + 8);
        v30(v9, v4);
        v30(v11, v4);
        return v14 & 1;
      }
    }

    else
    {
      (*(v25 + 56))(v3, 1, 1, v4);
    }

    v21 = &qword_1EC6C7248;
    v22 = &qword_1D2114A80;
    v23 = v3;
    goto LABEL_23;
  }

  return v14 & 1;
}

uint64_t sub_1D20EE980()
{
  v19 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  v1 = sub_1D2112FFC();
  *&v17 = 0;
  v2 = [v0 JSONObjectWithData:v1 options:0 error:&v17];

  if (!v2)
  {
    v7 = v17;
    v8 = sub_1D2112EFC();

    swift_willThrow();
    goto LABEL_21;
  }

  v3 = v17;
  sub_1D2113B7C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7980, &qword_1D2117440);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    result = 0;
    goto LABEL_22;
  }

  v4 = v15;
  if (*(v15 + 16) && (v5 = sub_1D20E4570(0x6553796772656E65, 0xEE00736563697672), (v6 & 1) != 0))
  {
    sub_1D20B7E10(*(v15 + 56) + 32 * v5, &v15);
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  sub_1D20ED25C(0x5255726576726573, 0xE90000000000004CLL, &v17);
  sub_1D20A862C(&v15, &qword_1EC6C7960, &qword_1D2116AD0);
  if (!v18)
  {

LABEL_20:
    sub_1D20A862C(&v17, &qword_1EC6C7960, &qword_1D2116AD0);
    goto LABEL_21;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_21;
  }

  if (*(v4 + 16) && (v9 = sub_1D20E4570(0x6553796772656E65, 0xEE00736563697672), (v10 & 1) != 0))
  {
    sub_1D20B7E10(*(v4 + 56) + 32 * v9, &v15);
  }

  else
  {

    v15 = 0u;
    v16 = 0u;
  }

  sub_1D20ED25C(0x68746150697061, 0xE700000000000000, &v17);
  sub_1D20A862C(&v15, &qword_1EC6C7960, &qword_1D2116AD0);
  if (!v18)
  {
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7988, &qword_1D2117448);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  v11 = *(v14 + 16);

  if (!v11)
  {
    goto LABEL_21;
  }

  result = 1;
LABEL_22:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D20EEC90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55[4] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v52 - v6;
  v8 = sub_1D211319C();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1D20EE980() & 1) == 0)
  {
    if (qword_1EE084480 != -1)
    {
      swift_once();
    }

    v17 = sub_1D211362C();
    __swift_project_value_buffer(v17, qword_1EE087548);
    v18 = sub_1D21135FC();
    v19 = sub_1D2113A7C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D209F000, v18, v19, "Corrupt Config received from Server.", v20, 2u);
      MEMORY[0x1D3896EB0](v20, -1, -1);
    }

    v21 = sub_1D21135FC();
    v22 = sub_1D2113A7C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D209F000, v21, v22, "Unable to save config from server.", v23, 2u);
      MEMORY[0x1D3896EB0](v23, -1, -1);
    }

    v24 = sub_1D21135FC();
    v25 = sub_1D2113A7C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1D209F000, v24, v25, "This will result in using old values fetched from server.", v26, 2u);
      MEMORY[0x1D3896EB0](v26, -1, -1);
    }

    goto LABEL_14;
  }

  v13 = objc_opt_self();
  v14 = sub_1D2112FFC();
  v54[0] = 0;
  v15 = [v13 JSONObjectWithData:v14 options:0 error:v54];

  v16 = v54[0];
  if (!v15)
  {
    v28 = v16;
    v29 = sub_1D2112EFC();

    swift_willThrow();
    if (qword_1EE0836C8 != -1)
    {
      swift_once();
    }

    v30 = sub_1D211362C();
    __swift_project_value_buffer(v30, qword_1EE087438);
    v31 = v29;
    v32 = sub_1D21135FC();
    v33 = sub_1D2113A7C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = v29;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_1D209F000, v32, v33, "Error while trying to save Config to file %@", v34, 0xCu);
      sub_1D20A862C(v35, &qword_1EC6C7950, qword_1D21153D0);
      MEMORY[0x1D3896EB0](v35, -1, -1);
      MEMORY[0x1D3896EB0](v34, -1, -1);
    }

    else
    {
    }

LABEL_14:
    result = 0;
    goto LABEL_26;
  }

  v53 = v9;
  sub_1D2113B7C();
  swift_unknownObjectRelease();
  if (sub_1D20CF5BC())
  {
    sub_1D2113E2C();
  }

  sub_1D20B7E10(v55, v54);
  v38 = sub_1D21137BC();

  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7960, &qword_1D2116AD0);
  v39 = sub_1D2113AFC();
  v40 = sub_1D21137BC();
  CFPreferencesSetAppValue(v38, v39, v40);

  swift_unknownObjectRelease();
  v41 = sub_1D21137BC();
  CFPreferencesAppSynchronize(v41);

  sub_1D20A862C(v54, &qword_1EC6C7960, &qword_1D2116AD0);
  sub_1D20A8580(a3, v7, &qword_1EC6C7248, &qword_1D2114A80);
  v42 = v53;
  if ((*(v53 + 48))(v7, 1, v8) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
    v43 = &qword_1EC6C7248;
    v44 = &qword_1D2114A80;
    v45 = v7;
  }

  else
  {
    (*(v42 + 32))(v12, v7, v8);
    if (sub_1D20CF5BC())
    {
      sub_1D2113E2C();
    }

    v54[3] = v8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
    (*(v42 + 16))(boxed_opaque_existential_1, v12, v8);
    v47 = sub_1D21137BC();

    v48 = sub_1D2113AFC();
    v49 = sub_1D21137BC();
    CFPreferencesSetAppValue(v47, v48, v49);

    swift_unknownObjectRelease();
    v50 = sub_1D21137BC();
    CFPreferencesAppSynchronize(v50);

    (*(v42 + 8))(v12, v8);
    __swift_destroy_boxed_opaque_existential_1(v55);
    v43 = &qword_1EC6C7960;
    v44 = &qword_1D2116AD0;
    v45 = v54;
  }

  sub_1D20A862C(v45, v43, v44);
  result = 1;
LABEL_26:
  v51 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D20EF460(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_1D2112B1C();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v7 = sub_1D2112F9C();
  v1[8] = v7;
  v8 = *(v7 - 8);
  v1[9] = v8;
  v9 = *(v8 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D20EF5F8, 0, 0);
}

uint64_t sub_1D20EF5F8()
{
  sub_1D20CFA90();
  v1 = sub_1D20EE370();
  if (v1)
  {
    if (qword_1EE084480 != -1)
    {
      swift_once();
    }

    v2 = sub_1D211362C();
    __swift_project_value_buffer(v2, qword_1EE087548);
    v3 = sub_1D21135FC();
    v4 = sub_1D2113A9C();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_12;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Config saved on disk is valid. Skipping reloading";
LABEL_11:
    _os_log_impl(&dword_1D209F000, v3, v4, v6, v5, 2u);
    MEMORY[0x1D3896EB0](v5, -1, -1);
LABEL_12:

    v12 = v0[10];
    v11 = v0[11];
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[3];

    v16 = v0[1];

    return v16(v1 & 1);
  }

  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[7];
  sub_1D20CF5BC();
  sub_1D2112F7C();
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    sub_1D20A862C(v0[7], &qword_1EC6C7250, &qword_1D21149C0);
    if (qword_1EE084480 != -1)
    {
      swift_once();
    }

    v10 = sub_1D211362C();
    __swift_project_value_buffer(v10, qword_1EE087548);
    v3 = sub_1D21135FC();
    v4 = sub_1D2113A7C();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_12;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Unable to generate request URL for fetching config";
    goto LABEL_11;
  }

  v18 = v0[10];
  v19 = v0[11];
  v20 = v0[8];
  v21 = v0[9];
  v22 = v0[6];
  (*(v21 + 32))(v19, v0[7], v20);
  (*(v21 + 16))(v18, v19, v20);
  sub_1D2112ACC();
  v23 = *(MEMORY[0x1E6969EC0] + 4);
  v24 = swift_task_alloc();
  v0[12] = v24;
  *v24 = v0;
  v24[1] = sub_1D20EF948;
  v25 = v0[6];
  v26 = v0[2];

  return MEMORY[0x1EEDC6260](v25, 0);
}

uint64_t sub_1D20EF948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 96);
  v9 = *v4;
  v5[13] = a1;
  v5[14] = a2;
  v5[15] = a3;
  v5[16] = v3;

  if (v3)
  {
    v7 = sub_1D20EFF70;
  }

  else
  {
    v7 = sub_1D20EFA60;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D20EFA60()
{
  v1 = *(v0 + 120);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    if (qword_1EE084480 != -1)
    {
      swift_once();
    }

    v17 = sub_1D211362C();
    __swift_project_value_buffer(v17, qword_1EE087548);
    v18 = sub_1D21135FC();
    v19 = sub_1D2113A7C();
    v20 = os_log_type_enabled(v18, v19);
    v22 = *(v0 + 112);
    v21 = *(v0 + 120);
    v23 = *(v0 + 104);
    v24 = *(v0 + 88);
    v25 = *(v0 + 72);
    v55 = v21;
    v58 = *(v0 + 64);
    v26 = *(v0 + 40);
    v27 = *(v0 + 48);
    v28 = *(v0 + 32);
    if (v20)
    {
      v52 = *(v0 + 88);
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1D209F000, v18, v19, "Unable to process Config Response.", v29, 2u);
      MEMORY[0x1D3896EB0](v29, -1, -1);
      sub_1D20B98A4(v23, v22);

      (*(v26 + 8))(v27, v28);
      (*(v25 + 8))(v52, v58);
    }

    else
    {
      sub_1D20B98A4(v23, v22);

      (*(v26 + 8))(v27, v28);
      (*(v25 + 8))(v24, v58);
    }

    goto LABEL_18;
  }

  v3 = v2;
  v4 = *(v0 + 120);
  if ([v3 statusCode] != 200)
  {
    if (qword_1EE084480 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 120);
    v31 = sub_1D211362C();
    __swift_project_value_buffer(v31, qword_1EE087548);
    v32 = v30;
    v33 = sub_1D21135FC();
    v34 = sub_1D2113A7C();
    v35 = os_log_type_enabled(v33, v34);
    v37 = *(v0 + 112);
    v36 = *(v0 + 120);
    v38 = *(v0 + 104);
    v39 = *(v0 + 88);
    v40 = *(v0 + 72);
    v41 = *(v0 + 40);
    v56 = *(v0 + 48);
    v59 = *(v0 + 64);
    v53 = *(v0 + 32);
    if (v35)
    {
      v50 = *(v0 + 88);
      v42 = swift_slowAlloc();
      *v42 = 134217984;
      *(v42 + 4) = [v3 statusCode];

      _os_log_impl(&dword_1D209F000, v33, v34, "Unhandled http response code %ld", v42, 0xCu);
      MEMORY[0x1D3896EB0](v42, -1, -1);
      sub_1D20B98A4(v38, v37);

      (*(v41 + 8))(v56, v53);
      (*(v40 + 8))(v50, v59);
    }

    else
    {
      sub_1D20B98A4(v38, v37);

      (*(v41 + 8))(v56, v53);
      (*(v40 + 8))(v39, v59);
    }

LABEL_18:
    v16 = 0;
    goto LABEL_19;
  }

  if (qword_1EE084480 != -1)
  {
    swift_once();
  }

  v5 = sub_1D211362C();
  __swift_project_value_buffer(v5, qword_1EE087548);
  v6 = sub_1D21135FC();
  v7 = sub_1D2113A9C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D209F000, v6, v7, "Saving fetched config to disk", v8, 2u);
    MEMORY[0x1D3896EB0](v8, -1, -1);
  }

  v9 = *(v0 + 112);
  v10 = *(v0 + 120);
  v11 = *(v0 + 104);
  v12 = *(v0 + 72);
  v54 = *(v0 + 64);
  v57 = *(v0 + 88);
  v13 = *(v0 + 40);
  v51 = *(v0 + 48);
  v15 = *(v0 + 24);
  v14 = *(v0 + 32);

  sub_1D20BB444(v15);
  v16 = sub_1D20EEC90(v11, v9, v15);
  sub_1D20B98A4(v11, v9);

  sub_1D20A862C(v15, &qword_1EC6C7248, &qword_1D2114A80);
  (*(v13 + 8))(v51, v14);
  (*(v12 + 8))(v57, v54);
LABEL_19:
  v44 = *(v0 + 80);
  v43 = *(v0 + 88);
  v46 = *(v0 + 48);
  v45 = *(v0 + 56);
  v47 = *(v0 + 24);

  v48 = *(v0 + 8);

  return v48(v16 & 1);
}

uint64_t sub_1D20EFF70()
{
  v40 = v0;
  if (qword_1EE084480 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = sub_1D211362C();
  __swift_project_value_buffer(v2, qword_1EE087548);
  v3 = v1;
  v4 = sub_1D21135FC();
  v5 = sub_1D2113A7C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[16];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D209F000, v4, v5, "Error while trying to fetch Config from Server %@", v7, 0xCu);
    sub_1D20A862C(v8, &qword_1EC6C7950, qword_1D21153D0);
    MEMORY[0x1D3896EB0](v8, -1, -1);
    MEMORY[0x1D3896EB0](v7, -1, -1);
  }

  v11 = sub_1D21135FC();
  v12 = sub_1D2113A7C();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[16];
  v15 = v0[11];
  v16 = v0[8];
  v17 = v0[9];
  v18 = v0[5];
  v19 = v0[6];
  v20 = v0[4];
  if (v13)
  {
    v38 = v0[6];
    v21 = swift_slowAlloc();
    v37 = v20;
    v22 = swift_slowAlloc();
    v39 = v22;
    *v21 = 136315138;
    v23 = sub_1D20CF5BC();
    v24 = !v23;
    if (v23)
    {
      v25 = 1685025392;
    }

    else
    {
      v25 = 24945;
    }

    v36 = v15;
    if (v24)
    {
      v26 = 0xE200000000000000;
    }

    else
    {
      v26 = 0xE400000000000000;
    }

    v35 = v16;
    v27 = sub_1D20B75F0(v25, v26, &v39);

    *(v21 + 4) = v27;
    _os_log_impl(&dword_1D209F000, v11, v12, "Current Environment %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1D3896EB0](v22, -1, -1);
    MEMORY[0x1D3896EB0](v21, -1, -1);

    (*(v18 + 8))(v38, v37);
    (*(v17 + 8))(v36, v35);
  }

  else
  {

    (*(v18 + 8))(v19, v20);
    (*(v17 + 8))(v15, v16);
  }

  v29 = v0[10];
  v28 = v0[11];
  v31 = v0[6];
  v30 = v0[7];
  v32 = v0[3];

  v33 = v0[1];

  return v33(0);
}

uint64_t sub_1D20F02A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1D3896330](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1D20EDA10(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1D20F035C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D20F03B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D20F0434(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C695464697267 && a2 == 0xEE0070756B6F6F4CLL;
  if (v4 || (sub_1D2113E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E49796772656E65 && a2 == 0xEF736C6176726574 || (sub_1D2113E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E67695364697267 && a2 == 0xEA00000000006C61 || (sub_1D2113E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D211B7E0 == a2 || (sub_1D2113E2C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D211B800 == a2 || (sub_1D2113E2C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x694B796772656E65 && a2 == 0xEE00737461745374)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D2113E2C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1D20F065C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7998, &qword_1D2117520);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20F0AF8();
  sub_1D2113F2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v45[0]) = 0;
  v11 = sub_1D2113D1C();
  v13 = v12;
  LOBYTE(v45[0]) = 1;
  v36 = sub_1D2113D1C();
  v38 = v14;
  LOBYTE(v45[0]) = 2;
  v15 = sub_1D2113D1C();
  v37 = v16;
  v33 = v15;
  LOBYTE(v45[0]) = 3;
  v32 = sub_1D2113D1C();
  v35 = v17;
  LOBYTE(v45[0]) = 4;
  v31 = sub_1D2113D1C();
  v34 = v18;
  v46 = 5;
  v19 = sub_1D2113D1C();
  v20 = *(v6 + 8);
  v21 = v19;
  v30 = v22;
  v20(v9, v5);
  *&v39 = v11;
  *(&v39 + 1) = v13;
  *&v40 = v36;
  *(&v40 + 1) = v38;
  *&v41 = v33;
  *(&v41 + 1) = v37;
  *&v42 = v32;
  v23 = v35;
  *(&v42 + 1) = v35;
  *&v43 = v31;
  v24 = v34;
  *(&v43 + 1) = v34;
  *&v44 = v21;
  v25 = v30;
  *(&v44 + 1) = v30;
  sub_1D20F0B4C(&v39, v45);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v45[0] = v11;
  v45[1] = v13;
  v45[2] = v36;
  v45[3] = v38;
  v45[4] = v33;
  v45[5] = v37;
  v45[6] = v32;
  v45[7] = v23;
  v45[8] = v31;
  v45[9] = v24;
  v45[10] = v21;
  v45[11] = v25;
  result = sub_1D20F0B84(v45);
  v27 = v42;
  a2[2] = v41;
  a2[3] = v27;
  v28 = v44;
  a2[4] = v43;
  a2[5] = v28;
  v29 = v40;
  *a2 = v39;
  a2[1] = v29;
  return result;
}

unint64_t sub_1D20F0AF8()
{
  result = qword_1EE084840[0];
  if (!qword_1EE084840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE084840);
  }

  return result;
}

unint64_t sub_1D20F0BC8()
{
  result = qword_1EC6C79A8;
  if (!qword_1EC6C79A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C79A8);
  }

  return result;
}

unint64_t sub_1D20F0C20()
{
  result = qword_1EE084830;
  if (!qword_1EE084830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084830);
  }

  return result;
}

unint64_t sub_1D20F0C78()
{
  result = qword_1EE084838;
  if (!qword_1EE084838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084838);
  }

  return result;
}

uint64_t sub_1D20F0CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20[0] = a1;
  v20[1] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C77E0, &qword_1D2116A40);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = v20 - v9;
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v22 = MEMORY[0x1E69E7CC0];
  sub_1D20DC7A4(0, v11, 0);
  v12 = v22;
  for (i = (a3 + 56); ; i += 4)
  {
    v14 = *(i - 2);
    v15 = *(i - 1);
    v16 = *i;
    v21[0] = *(i - 3);
    v21[1] = v14;
    v21[2] = v15;
    v21[3] = v16;

    (v20[0])(v21);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v22 = v12;
    v18 = *(v12 + 16);
    v17 = *(v12 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_1D20DC7A4(v17 > 1, v18 + 1, 1);
      v12 = v22;
    }

    *(v12 + 16) = v18 + 1;
    sub_1D20B7DA8(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18, &qword_1EC6C77E0, &qword_1D2116A40);
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D20F0EB0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - v4;
  if (!v6)
  {
LABEL_5:
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D211362C();
    __swift_project_value_buffer(v10, qword_1EE0874C0);
    v11 = sub_1D21135FC();
    v12 = sub_1D2113A8C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D209F000, v11, v12, "Unable to create valid URL", v13, 2u);
      MEMORY[0x1D3896EB0](v13, -1, -1);
    }

    abort();
  }

  sub_1D2112F7C();
  v7 = sub_1D2112F9C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_1D20A862C(v5, &qword_1EC6C7250, &qword_1D21149C0);
    goto LABEL_5;
  }

  return (*(v8 + 32))(a1, v5, v7);
}

uint64_t sub_1D20F108C@<X0>(uint64_t a1@<X0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  LODWORD(v53) = a3;
  v9 = sub_1D2112C6C();
  v54 = *(v9 - 8);
  v55 = v9;
  v10 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C77E0, &qword_1D2116A40);
  v52 = *(v12 - 8);
  v13 = *(v52 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v56 = &v47 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6C7258, &qword_1D21149C8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v47 - v20;
  v22 = sub_1D2112D0C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2112CCC();
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1D20A862C(v21, &unk_1EC6C7258, &qword_1D21149C8);
    v27 = sub_1D2112F9C();
    v28 = *(v27 - 8);
    (*(v28 + 16))(a4, v5, v27);
    return (*(v28 + 56))(a4, 0, 1, v27);
  }

  (*(v23 + 32))(v26, v21, v22);
  v30 = sub_1D2112CBC();
  if (!v30)
  {
    v50 = v23;
    v51 = v22;
    v53 = a4;
    MEMORY[0x1EEE9AC00](0);
    *(&v47 - 16) = a2 & 1;
    *(&v47 - 1) = v5;
    v34 = sub_1D20F0CCC(sub_1D20F2438, (&v47 - 4), a1);
    v35 = *(v34 + 16);
    if (v35)
    {
      v48 = v26;
      v49 = v34;
      v36 = v34 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
      v37 = *(v52 + 72);
      v38 = v55;
      v39 = (v54 + 48);
      v40 = (v54 + 32);
      v41 = MEMORY[0x1E69E7CC0];
      do
      {
        v42 = v56;
        sub_1D20F245C(v36, v56);
        sub_1D20B7DA8(v42, v16, &qword_1EC6C77E0, &qword_1D2116A40);
        if ((*v39)(v16, 1, v38) == 1)
        {
          sub_1D20A862C(v16, &qword_1EC6C77E0, &qword_1D2116A40);
        }

        else
        {
          v43 = *v40;
          (*v40)(v57, v16, v38);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_1D20B70B8(0, v41[2] + 1, 1, v41);
          }

          v45 = v41[2];
          v44 = v41[3];
          if (v45 >= v44 >> 1)
          {
            v41 = sub_1D20B70B8(v44 > 1, v45 + 1, 1, v41);
          }

          v41[2] = v45 + 1;
          v46 = v41 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v45;
          v38 = v55;
          v43(v46, v57, v55);
        }

        v36 += v37;
        --v35;
      }

      while (v35);

      v26 = v48;
    }

    else
    {

      v41 = MEMORY[0x1E69E7CC0];
    }

    v23 = v50;
    v22 = v51;
    if (v41[2])
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v31 = sub_1D20F17C8(v30, a1, a2 & 1, v53 & 1);

  if (!*(v31 + 16))
  {
LABEL_5:
  }

LABEL_6:
  v32 = sub_1D2112C8C();
  MEMORY[0x1D38955F0](v32);
  if (v33)
  {
    sub_1D2112CAC();
  }

  sub_1D2112CDC();
  return (*(v23 + 8))(v26, v22);
}

void sub_1D20F1614()
{
  v0 = sub_1D2112BBC();
  __swift_allocate_value_buffer(v0, qword_1EE087560);
  __swift_project_value_buffer(v0, qword_1EE087560);
  sub_1D20F1660();
}

void sub_1D20F1660()
{
  v0 = sub_1D2112BBC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2112B8C();
  v5 = sub_1D2112B9C();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  v8 = sub_1D2112FFC();
  v9 = [objc_opt_self() characterSetWithBitmapRepresentation_];

  sub_1D20B98A4(v5, v7);
  v10 = sub_1D21137BC();
  [v9 removeCharactersInString_];

  sub_1D2112BAC();
}

uint64_t sub_1D20F17C8(void *a1, uint64_t a2, int a3, int a4)
{
  v96 = a4;
  v101 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C79B0, &qword_1D2117648);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v93 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v91 = &v89 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v94 = &v89 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C79B8, &qword_1D2117650);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v104 = (&v89 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C79C0, &qword_1D2117658);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v89 - v22);
  v114 = sub_1D2112C6C();
  v24 = *(*(v114 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v114);
  v92 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v90 = &v89 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v95 = &v89 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v113 = &v89 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v89 - v34;
  v117 = a1;
  v100 = *(a2 + 16);
  if (!v100)
  {

    return a1;
  }

  v99 = a2 + 32;
  v105 = v33;
  v106 = (v33 + 16);
  v110 = (v14 + 56);
  v111 = v23;
  v108 = (v33 + 32);
  v109 = (v14 + 48);
  v112 = (v33 + 8);

  v36 = 0;
  v107 = v21;
  v102 = v35;
  while (1)
  {
    v37 = (v99 + 32 * v36);
    v39 = *v37;
    v38 = v37[1];
    v40 = v37[3];
    if ((v101 & 1) == 0)
    {
      break;
    }

    v98 = v37[2];
    v115 = v39;
    v116 = v38;
    v41 = qword_1EE084498;

    if (v41 != -1)
    {
      swift_once();
    }

    v42 = sub_1D2112BBC();
    v43 = __swift_project_value_buffer(v42, qword_1EE087560);
    sub_1D20B99F0();
    v97 = v43;
    v39 = sub_1D2113B3C();
    v38 = v44;

    if (v38)
    {
      v103 = v36;
      v115 = v98;
      v116 = v40;
      sub_1D2113B3C();

      goto LABEL_11;
    }

LABEL_4:
    if (++v36 == v100)
    {
      return a1;
    }
  }

  v103 = v36;

LABEL_11:
  sub_1D2112C3C();

  v46 = 0;
  v47 = a1[2];
  while (1)
  {
    v48 = v111;
    if (v46 == v47)
    {
      v49 = 1;
      v46 = v47;
    }

    else
    {
      v50 = v105;
      if ((v46 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      if (v46 >= a1[2])
      {
        goto LABEL_55;
      }

      v51 = a1 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v46;
      v52 = *(v13 + 48);
      v53 = v104;
      *v104 = v46;
      (*(v50 + 16))(v53 + v52, v51, v114);
      sub_1D20B7DA8(v53, v21, &qword_1EC6C79B8, &qword_1D2117650);
      v49 = 0;
      ++v46;
    }

    (*v110)(v21, v49, 1, v13);
    sub_1D20B7DA8(v21, v48, &qword_1EC6C79C0, &qword_1D2117658);
    if ((*v109)(v48, 1, v13) == 1)
    {

      v60 = *v106;
      if ((v96 & 1) == 0)
      {
        v77 = v102;
        v60(v92, v102, v114);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a1 = sub_1D20B70B8(0, a1[2] + 1, 1, a1);
        }

        v79 = a1[2];
        v78 = a1[3];
        v80 = v105;
        if (v79 >= v78 >> 1)
        {
          v88 = sub_1D20B70B8(v78 > 1, v79 + 1, 1, a1);
          v80 = v105;
          a1 = v88;
        }

        v81 = v77;
        v82 = v114;
        v83 = v80;
        (*(v80 + 8))(v81, v114);
        a1[2] = v79 + 1;
        (*(v83 + 32))(a1 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v79, v92, v82);
        v117 = a1;
LABEL_51:
        v36 = v103;
        goto LABEL_4;
      }

      v61 = v102;
      v60(v93, v102, v114);
      v62 = a1[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v117 = a1;
      if (!isUniquelyReferenced_nonNull_native || v62 >= a1[3] >> 1)
      {
        a1 = sub_1D20B70B8(isUniquelyReferenced_nonNull_native, v62 + 1, 1, a1);
        v117 = a1;
      }

      v36 = v103;
      sub_1D20F25D4(0, 0, 1, v93);
      v117 = a1;
      (*v112)(v61, v114);
      goto LABEL_4;
    }

    v54 = *v48;
    v55 = v13;
    v56 = *(v13 + 48);
    v57 = *v108;
    (*v108)(v113, v48 + v56, v114);
    if (sub_1D2112C4C() == v39 && v58 == v38)
    {
      break;
    }

    v59 = sub_1D2113E2C();

    if (v59)
    {
      goto LABEL_28;
    }

    result = (*v112)(v113, v114);
    v13 = v55;
    v21 = v107;
  }

LABEL_28:

  v64 = v95;
  sub_1D20F24CC(v54, v95);
  v65 = *v112;
  v66 = v114;
  (*v112)(v64, v114);
  result = v65(v113, v66);
  a1 = v117;
  v67 = v117[2];
  v68 = v102;
  if (v54 >= v67)
  {
    v74 = *v106;
    if (v96)
    {
      v74(v91, v102, v114);
      v75 = a1[2];
      v76 = swift_isUniquelyReferenced_nonNull_native();
      v117 = a1;
      if (!v76 || v75 >= a1[3] >> 1)
      {
        a1 = sub_1D20B70B8(v76, v75 + 1, 1, a1);
        v117 = a1;
      }

      v13 = v55;
      v36 = v103;
      v71 = 0;
      v72 = 0;
      v73 = &v118;
      goto LABEL_40;
    }

    v74(v90, v102, v114);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_1D20B70B8(0, v67 + 1, 1, a1);
    }

    v85 = a1[2];
    v84 = a1[3];
    if (v85 >= v84 >> 1)
    {
      a1 = sub_1D20B70B8(v84 > 1, v85 + 1, 1, a1);
    }

    v86 = v68;
    v87 = v114;
    v65(v86, v114);
    a1[2] = v85 + 1;
    v57(a1 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v85, v90, v87);
    v117 = a1;
    v13 = v55;
    v21 = v107;
    goto LABEL_51;
  }

  if ((v54 & 0x8000000000000000) != 0)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  result = (*v106)(v94, v102, v114);
  v69 = a1[2];
  if (v69 >= v54)
  {
    v70 = swift_isUniquelyReferenced_nonNull_native();
    v117 = a1;
    if (!v70 || v69 >= a1[3] >> 1)
    {
      a1 = sub_1D20B70B8(v70, v69 + 1, 1, a1);
      v117 = a1;
    }

    v13 = v55;
    v36 = v103;
    v71 = v54;
    v72 = v54;
    v73 = &v119;
LABEL_40:
    sub_1D20F25D4(v71, v72, 1, *(v73 - 32));
    v117 = a1;
    v65(v68, v114);
    v21 = v107;
    goto LABEL_4;
  }

LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_1D20F2244@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = a1[2];
  v4 = a1[3];
  if ((a2 & 1) == 0)
  {
    v10 = a1[1];

    goto LABEL_7;
  }

  v14 = *a1;
  v15 = a1[1];
  v6 = qword_1EE084498;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = sub_1D2112BBC();
  __swift_project_value_buffer(v7, qword_1EE087560);
  sub_1D20B99F0();
  sub_1D2113B3C();
  v9 = v8;

  if (v9)
  {
    sub_1D2113B3C();

LABEL_7:
    sub_1D2112C3C();

    v11 = sub_1D2112C6C();
    return (*(*(v11 - 8) + 56))(a3, 0, 1, v11);
  }

  v13 = sub_1D2112C6C();
  (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
}

uint64_t sub_1D20F245C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C77E0, &qword_1D2116A40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D20F24CC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D20E4750(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = sub_1D2112C6C();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

unint64_t sub_1D20F25D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = sub_1D2112C6C();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1D20A862C(v25, &qword_1EC6C79B0, &qword_1D2117648);
  }

  if (v18 < 1)
  {
    return sub_1D20A862C(v25, &qword_1EC6C79B0, &qword_1D2117648);
  }

  result = (*(v11 + 16))(v16, v25, v14);
  if (v12 >= v18)
  {
    return sub_1D20A862C(v25, &qword_1EC6C79B0, &qword_1D2117648);
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_1D20F2770(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D20F2818@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18[-v4];
  v6 = sub_1D2112F9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D20ECA00(v19);
  if (*(&v19[0] + 1) != 1)
  {
    v20 = v19[4];
    sub_1D20BD1B0(&v20, v18);
    v11 = sub_1D20A862C(v19, &qword_1EC6C7518, &unk_1D2116AB0);
    if (*(&v20 + 1))
    {
      sub_1D20F6890(v11);
      if ((*(v7 + 48))(v5, 1, v6) != 1)
      {
        (*(v7 + 32))(v10, v5, v6);
        sub_1D2112F3C();
        sub_1D20A862C(&v20, &qword_1EC6C7510, &unk_1D2115710);
        (*(v7 + 8))(v10, v6);
        v16 = 0;
        return (*(v7 + 56))(a1, v16, 1, v6);
      }

      sub_1D20A862C(&v20, &qword_1EC6C7510, &unk_1D2115710);
      sub_1D20A862C(v5, &qword_1EC6C7250, &qword_1D21149C0);
    }
  }

  if (qword_1EE083DE8 != -1)
  {
    swift_once();
  }

  v12 = sub_1D211362C();
  __swift_project_value_buffer(v12, qword_1EE0874C0);
  v13 = sub_1D21135FC();
  v14 = sub_1D2113A7C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1D209F000, v13, v14, "Unable to compute API Path for EK historical signal.", v15, 2u);
    MEMORY[0x1D3896EB0](v15, -1, -1);
  }

  v16 = 1;
  return (*(v7 + 56))(a1, v16, 1, v6);
}

uint64_t sub_1D20F2B0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7508, &unk_1D2116AA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v151 = &v139 - v6;
  v7 = sub_1D2112B1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v150 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v148 = &v139 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v154 = &v139 - v14;
  v158 = sub_1D211319C();
  v156 = *(v158 - 1);
  v15 = *(v156 + 64);
  v16 = MEMORY[0x1EEE9AC00](v158);
  v155 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v139 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v147 = &v139 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v157 = &v139 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v139 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v139 - v29;
  v31 = sub_1D2112F9C();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v146 = &v139 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v149 = &v139 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v152 = &v139 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v153 = &v139 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v139 - v42;
  sub_1D20F2818(v30);
  v161 = v32;
  v45 = *(v32 + 48);
  v44 = (v32 + 48);
  v160 = v45;
  if (v45(v30, 1, v31) == 1)
  {
    sub_1D20A862C(v30, &qword_1EC6C7250, &qword_1D21149C0);
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v46 = sub_1D211362C();
    __swift_project_value_buffer(v46, qword_1EE0874C0);

    v47 = sub_1D21135FC();
    v48 = sub_1D2113A7C();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = v2;
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v163[0] = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_1D20B75F0(*(v49 + OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_requestId), *(v49 + OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_requestId + 8), v163);
      _os_log_impl(&dword_1D209F000, v47, v48, "Request URL for EK Guidance History not found | requestId: %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      MEMORY[0x1D3896EB0](v51, -1, -1);
      MEMORY[0x1D3896EB0](v50, -1, -1);
    }

    return (*(v8 + 56))(a1, 1, 1, v7);
  }

  v142 = v28;
  v144 = v8;
  v145 = v7;
  v143 = a1;
  v53 = *(v161 + 32);
  v141 = v161 + 32;
  v140 = v53;
  v53(v43, v30, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73B0, &unk_1D2115420);
  inited = swift_initStackObject();
  v159 = v43;
  v55 = inited;
  *(inited + 16) = xmmword_1D2116DB0;
  *(inited + 32) = 0x64692D64697267;
  *(inited + 40) = 0xE700000000000000;
  v56 = *(v2 + 24);
  v55[6] = *(v2 + 16);
  v55[7] = v56;
  v55[8] = 0x61642D7472617473;
  v55[9] = 0xEA00000000006574;

  sub_1D2112C0C();
  v57 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  [v57 setFormatOptions_];
  v58 = sub_1D21130EC();
  v59 = [v57 stringFromDate_];

  v60 = sub_1D21137CC();
  v62 = v61;

  v63 = v2;
  v64 = *(v156 + 8);
  v65 = v19;
  v66 = v158;
  v64(v65, v158);
  v55[10] = v60;
  v55[11] = v62;
  v55[12] = 0x657461642D646E65;
  v55[13] = 0xE800000000000000;
  v156 = v63;
  v67 = v155;
  sub_1D2112BDC();
  v68 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  [v68 setFormatOptions_];
  v69 = sub_1D21130EC();
  v70 = [v68 stringFromDate_];

  v71 = sub_1D21137CC();
  v73 = v72;

  v64(v67, v66);
  v55[14] = v71;
  v55[15] = v73;
  sub_1D2112F1C();
  v74 = v157;
  sub_1D2112F7C();
  v75 = v31;
  if (v160(v74, 1, v31) == 1)
  {

    sub_1D20A862C(v74, &qword_1EC6C7250, &qword_1D21149C0);
    v76 = v161;
    v77 = v142;
    (*(v161 + 56))(v142, 1, 1, v31);
LABEL_10:
    sub_1D20A862C(v77, &qword_1EC6C7250, &qword_1D21149C0);
    v85 = v143;
    v86 = v156;
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v87 = sub_1D211362C();
    __swift_project_value_buffer(v87, qword_1EE0874C0);

    v88 = sub_1D21135FC();
    v89 = sub_1D2113A7C();

    v90 = os_log_type_enabled(v88, v89);
    v91 = v145;
    v92 = v144;
    if (v90)
    {
      v93 = v86;
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v163[0] = v95;
      *v94 = 136315138;
      *(v94 + 4) = sub_1D20B75F0(*(v93 + OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_requestId), *(v93 + OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_requestId + 8), v163);
      _os_log_impl(&dword_1D209F000, v88, v89, "Unable to create EK Guidance History URL with required query parameters | requestId: %s", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v95);
      MEMORY[0x1D3896EB0](v95, -1, -1);
      MEMORY[0x1D3896EB0](v94, -1, -1);
    }

    (*(v76 + 8))(v159, v75);
    return (*(v92 + 56))(v85, 1, 1, v91);
  }

  v78 = v152;
  v79 = v140;
  v140(v152, v74, v31);
  v80 = v142;
  sub_1D20F108C(v55, 0, 0, v142);
  v77 = v80;

  v76 = v161;
  v82 = (v161 + 8);
  v81 = *(v161 + 8);
  v83 = v78;
  v84 = v160;
  v81(v83, v75);
  if (v84(v77, 1, v75) == 1)
  {
    goto LABEL_10;
  }

  v96 = v79;
  v155 = v44;
  v97 = v84;
  v158 = v81;
  v98 = v153;
  v96(v153, v77, v75);
  (*(v76 + 16))(v149, v98, v75);
  v99 = v154;
  sub_1D2112ACC();
  sub_1D2112A8C();
  if (qword_1EE083DD8 != -1)
  {
    swift_once();
  }

  v100 = sub_1D211362C();
  __swift_project_value_buffer(v100, qword_1EE0874A8);
  v101 = sub_1D21135FC();
  v102 = sub_1D2113A7C();
  v103 = os_log_type_enabled(v101, v102);
  v139 = v75;
  v157 = v82;
  if (v103)
  {
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v162 = v105;
    *v104 = 136315138;
    swift_beginAccess();
    v106 = v147;
    sub_1D2112ADC();
    swift_endAccess();
    result = v97(v106, 1, v75);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v107 = v146;
    v140(v146, v106, v75);
    sub_1D20F5828();
    v108 = sub_1D2113E0C();
    v110 = v109;
    (v158)(v107, v75);
    v111 = sub_1D20B75F0(v108, v110, &v162);

    *(v104 + 4) = v111;
    _os_log_impl(&dword_1D209F000, v101, v102, "URL %s", v104, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v105);
    MEMORY[0x1D3896EB0](v105, -1, -1);
    MEMORY[0x1D3896EB0](v104, -1, -1);

    v99 = v154;
  }

  else
  {
  }

  swift_beginAccess();
  v112 = v99;
  v113 = v144;
  v114 = *(v144 + 16);
  v115 = v150;
  v116 = v145;
  v114(v150, v112, v145);
  if (sub_1D20CF7E0())
  {
    v117 = &unk_1F4D9E0E0;
  }

  else
  {
    v117 = &unk_1F4D9E120;
  }

  v118 = sub_1D20BABD4(v117, &unk_1F4D9E080);
  v120 = v119;
  sub_1D20CF7E0();
  v121 = v151;
  sub_1D20D94F0(v118, v120, 49, 0xE100000000000000, v151);

  v122 = *(v113 + 8);
  v122(v115, v116);
  if ((*(v113 + 48))(v121, 1, v116) == 1)
  {
    sub_1D20A862C(v121, &qword_1EC6C7508, &unk_1D2116AA0);
    v123 = v156;
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v100, qword_1EE0874C0);

    v124 = sub_1D21135FC();
    v125 = sub_1D2113A7C();

    if (os_log_type_enabled(v124, v125))
    {
      v126 = v123;
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v162 = v128;
      *v127 = 136315138;
      *(v127 + 4) = sub_1D20B75F0(*(v126 + OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_requestId), *(v126 + OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_requestId + 8), &v162);
      _os_log_impl(&dword_1D209F000, v124, v125, "Unable to create signed EK history request | requestId: %s", v127, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v128);
      MEMORY[0x1D3896EB0](v128, -1, -1);
      MEMORY[0x1D3896EB0](v127, -1, -1);
    }

    v129 = v139;
    v130 = v158;
    (v158)(v153, v139);
    v130(v159, v129);
    v131 = v154;
    v132 = v145;
    (*(v144 + 56))(v143, 1, 1, v145);
    return (v122)(v131, v132);
  }

  else
  {
    v133 = *(v156 + OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_requestId);
    v134 = *(v156 + OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_requestId + 8);
    v135 = v148;
    v114(v148, v121, v116);
    sub_1D2112AEC();
    v122(v121, v116);
    v136 = v143;
    (*(v113 + 32))(v143, v135, v116);
    sub_1D2112B0C();
    v137 = v139;
    v138 = v158;
    (v158)(v153, v139);
    v138(v159, v137);
    (*(v113 + 56))(v136, 0, 1, v116);
    return (v122)(v154, v116);
  }
}

uint64_t sub_1D20F3C60()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_interval;
  v3 = sub_1D2112C2C();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtC12HomeServices29GuidanceHistoryRequestBuilder_requestId + 8];

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GuidanceHistoryRequestBuilder()
{
  result = qword_1EE0838E8;
  if (!qword_1EE0838E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D20F3D6C()
{
  result = sub_1D2112C2C();
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

uint64_t sub_1D20F3E18(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7A18, &qword_1D2117B30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20F5C74();
  sub_1D2113F3C();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_1D2113DBC();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  sub_1D2113DBC();
  v15 = v3[4];
  v18[13] = 2;
  sub_1D2113DCC();
  v17 = v3[5];
  v18[12] = 3;
  sub_1D2113DCC();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D20F3FD8()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1D211375C();
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  sub_1D211375C();
  v5 = v0[4];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x1D3896810](*&v5);
  v6 = v0[5];
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  return MEMORY[0x1D3896810](*&v6);
}

uint64_t sub_1D20F4044(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7A20, &qword_1D2117B38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20F5B78();
  sub_1D2113F3C();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v17) = 0;
  sub_1D2113DBC();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    LOBYTE(v17) = 1;
    sub_1D2113DBC();
    v17 = v3[4];
    HIBYTE(v16) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7530, &qword_1D2117B10);
    sub_1D20C0650(&qword_1EC6C7538);
    sub_1D2113DEC();
    v17 = v3[5];
    HIBYTE(v16) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C79F8, &qword_1D2117B18);
    sub_1D20F5CC8(&qword_1EC6C7A28, sub_1D20F5D40);
    sub_1D2113DEC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D20F42E0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7A00, &qword_1D2117B20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20F5780();
  sub_1D2113F3C();
  v10 = v2[1];
  v12[0] = *v2;
  v12[1] = v10;
  v12[2] = v2[2];
  sub_1D20F5C20();
  sub_1D2113DEC();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D20F4434()
{
  v1 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000014;
  }

  *v0;
  if (*v0 <= 1u)
  {
    return 0x626163696C707061;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D20F44B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D20F4D2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D20F44DC(uint64_t a1)
{
  v2 = sub_1D20F5C74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D20F4518(uint64_t a1)
{
  v2 = sub_1D20F5C74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D20F4554@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D20F4EA0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1D20F45B0()
{
  sub_1D2113ECC();
  sub_1D20F3FD8();
  return sub_1D2113F1C();
}

uint64_t sub_1D20F45F4()
{
  sub_1D2113ECC();
  sub_1D20F3FD8();
  return sub_1D2113F1C();
}

BOOL sub_1D20F4630(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D2113E2C() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v6 && v3 == v7)
  {
    if (v5 != v9)
    {
      return 0;
    }

    return v4 == v8;
  }

  v11 = sub_1D2113E2C();
  result = 0;
  if ((v11 & 1) != 0 && v5 == v9)
  {
    return v4 == v8;
  }

  return result;
}

uint64_t sub_1D20F46F8()
{
  v1 = 0x6D69547472617473;
  v2 = 0x7365756C6176;
  if (*v0 != 2)
  {
    v2 = 0x6C6F687365726874;
  }

  if (*v0)
  {
    v1 = 0x636E657571657266;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D20F4778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D20F5118(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D20F47A0(uint64_t a1)
{
  v2 = sub_1D20F5B78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D20F47DC(uint64_t a1)
{
  v2 = sub_1D20F5B78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D20F4818@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D20F528C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1D20F4874(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D2113E2C() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1D2113E2C() & 1) == 0 || (sub_1D20FC0FC(v3, v9) & 1) == 0)
  {
    return 0;
  }

  return sub_1D2109264(v5, v8);
}

uint64_t sub_1D20F4970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65636E6164697567 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D2113E2C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D20F4A04(uint64_t a1)
{
  v2 = sub_1D20F5780();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D20F4A40(uint64_t a1)
{
  v2 = sub_1D20F5780();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D20F4A7C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D20F55E4(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1D20F4AD8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1D2113ECC();
  sub_1D211375C();
  sub_1D211375C();
  sub_1D20D7E7C(v8, v6);
  sub_1D20D9020(v8, v5);
  return sub_1D2113F1C();
}

uint64_t sub_1D20F4B64(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  sub_1D211375C();
  sub_1D211375C();
  sub_1D20D7E7C(a1, v8);

  return sub_1D20D9020(a1, v7);
}

uint64_t sub_1D20F4BD8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1D2113ECC();
  sub_1D211375C();
  sub_1D211375C();
  sub_1D20D7E7C(v8, v6);
  sub_1D20D9020(v8, v5);
  return sub_1D2113F1C();
}

BOOL sub_1D20F4C60(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  return (*a1 == *a2 && a1[1] == a2[1] || (sub_1D2113E2C() & 1) != 0) && (v2 == v6 && v4 == v7 || (sub_1D2113E2C() & 1) != 0) && (sub_1D20FC0FC(v3, v9) & 1) != 0 && (sub_1D2109264(v5, v8) & 1) != 0;
}

uint64_t sub_1D20F4D2C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x626163696C707061 && a2 == 0xEE006D6F7246656CLL;
  if (v3 || (sub_1D2113E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x626163696C707061 && a2 == 0xEC0000006F54656CLL || (sub_1D2113E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D211B8A0 == a2 || (sub_1D2113E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D211B8C0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D2113E2C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D20F4EA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7A10, &qword_1D2117B28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20F5C74();
  sub_1D2113F2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = 0;
  v11 = sub_1D2113D4C();
  v24 = v12;
  v27 = 1;
  v22 = sub_1D2113D4C();
  v23 = v13;
  v26 = 2;
  sub_1D2113D5C();
  v15 = v14;
  v25 = 3;
  sub_1D2113D5C();
  v17 = v16;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v19 = v24;
  *a2 = v11;
  a2[1] = v19;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v15;
  a2[5] = v17;
  return result;
}

uint64_t sub_1D20F5118(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_1D2113E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E657571657266 && a2 == 0xE900000000000079 || (sub_1D2113E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000 || (sub_1D2113E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xEA00000000007364)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D2113E2C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D20F528C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C79F0, &qword_1D2117B08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20F5B78();
  sub_1D2113F2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v25) = 0;
  v11 = sub_1D2113D4C();
  v23 = v12;
  LOBYTE(v25) = 1;
  v13 = sub_1D2113D4C();
  v22 = v14;
  v21 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7530, &qword_1D2117B10);
  v24 = 2;
  sub_1D20C0650(&qword_1EE083DB8);
  sub_1D2113D7C();
  v20 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C79F8, &qword_1D2117B18);
  v24 = 3;
  sub_1D20F5CC8(&qword_1EE083680, sub_1D20F5BCC);
  sub_1D2113D7C();
  (*(v6 + 8))(v9, v5);
  v15 = v25;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v17 = v23;
  *a2 = v11;
  a2[1] = v17;
  v18 = v22;
  a2[2] = v21;
  a2[3] = v18;
  a2[4] = v20;
  a2[5] = v15;
  return result;
}

uint64_t sub_1D20F55E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C79C8, &unk_1D2117700);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20F5780();
  sub_1D2113F2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1D20F57D4();
  sub_1D2113D7C();
  (*(v6 + 8))(v9, v5);
  v11 = v18;
  v12 = v20;
  v15 = v19;
  v16 = v17;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *a2 = v16;
  *(a2 + 16) = v11;
  *(a2 + 24) = v14;
  *(a2 + 40) = v12;
  return result;
}

unint64_t sub_1D20F5780()
{
  result = qword_1EE0837D8;
  if (!qword_1EE0837D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0837D8);
  }

  return result;
}

unint64_t sub_1D20F57D4()
{
  result = qword_1EE0837E0;
  if (!qword_1EE0837E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0837E0);
  }

  return result;
}

unint64_t sub_1D20F5828()
{
  result = qword_1EE083DA8;
  if (!qword_1EE083DA8)
  {
    sub_1D2112F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083DA8);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1D20F58C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D20F590C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D20F596C()
{
  result = qword_1EC6C79D0;
  if (!qword_1EC6C79D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C79D0);
  }

  return result;
}

unint64_t sub_1D20F59C4()
{
  result = qword_1EC6C79D8;
  if (!qword_1EC6C79D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C79D8);
  }

  return result;
}

unint64_t sub_1D20F5A1C()
{
  result = qword_1EC6C79E0;
  if (!qword_1EC6C79E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C79E0);
  }

  return result;
}

unint64_t sub_1D20F5A74()
{
  result = qword_1EC6C79E8;
  if (!qword_1EC6C79E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C79E8);
  }

  return result;
}

unint64_t sub_1D20F5ACC()
{
  result = qword_1EE0837C8;
  if (!qword_1EE0837C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0837C8);
  }

  return result;
}

unint64_t sub_1D20F5B24()
{
  result = qword_1EE0837D0;
  if (!qword_1EE0837D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0837D0);
  }

  return result;
}

unint64_t sub_1D20F5B78()
{
  result = qword_1EE0837F8;
  if (!qword_1EE0837F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0837F8);
  }

  return result;
}

unint64_t sub_1D20F5BCC()
{
  result = qword_1EE083800;
  if (!qword_1EE083800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083800);
  }

  return result;
}

unint64_t sub_1D20F5C20()
{
  result = qword_1EC6C7A08;
  if (!qword_1EC6C7A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7A08);
  }

  return result;
}

unint64_t sub_1D20F5C74()
{
  result = qword_1EE083818[0];
  if (!qword_1EE083818[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE083818);
  }

  return result;
}

uint64_t sub_1D20F5CC8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6C79F8, &qword_1D2117B18);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D20F5D40()
{
  result = qword_1EC6C7A30;
  if (!qword_1EC6C7A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7A30);
  }

  return result;
}

unint64_t sub_1D20F5DB8()
{
  result = qword_1EC6C7A38;
  if (!qword_1EC6C7A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7A38);
  }

  return result;
}

unint64_t sub_1D20F5E10()
{
  result = qword_1EC6C7A40;
  if (!qword_1EC6C7A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7A40);
  }

  return result;
}

unint64_t sub_1D20F5E68()
{
  result = qword_1EE083808;
  if (!qword_1EE083808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083808);
  }

  return result;
}

unint64_t sub_1D20F5EC0()
{
  result = qword_1EE083810;
  if (!qword_1EE083810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083810);
  }

  return result;
}

unint64_t sub_1D20F5F18()
{
  result = qword_1EE0837E8;
  if (!qword_1EE0837E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0837E8);
  }

  return result;
}

unint64_t sub_1D20F5F70()
{
  result = qword_1EE0837F0;
  if (!qword_1EE0837F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0837F0);
  }

  return result;
}

uint64_t sub_1D20F5FDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D21133BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v57 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7A48, &unk_1D2117D50);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v57 - v14;
  v16 = sub_1D21133DC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v62 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v57 - v21;
  v64 = a1;
  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75A0, &qword_1D2115B70);
  v24 = swift_dynamicCast();
  v25 = *(v17 + 56);
  if (v24)
  {
    v61 = a2;
    v25(v15, 0, 1, v16);
    v60 = v17;
    (*(v17 + 32))(v22, v15, v16);
    v26 = sub_1D20F6848(&qword_1EE0843C0, MEMORY[0x1E6969C20]);
    sub_1D2112ECC();
    sub_1D211338C();
    sub_1D20F6848(&qword_1EE0843C8, MEMORY[0x1E6969BF8]);
    sub_1D211396C();
    sub_1D211396C();
    v27 = *(v5 + 8);
    v27(v9, v4);
    v27(v11, v4);
    if (v64 == v63)
    {
      if (qword_1EE084470 != -1)
      {
        swift_once();
      }

      v28 = sub_1D211362C();
      __swift_project_value_buffer(v28, qword_1EE087530);
      v29 = sub_1D21135FC();
      v30 = sub_1D2113A7C();
      v31 = os_log_type_enabled(v29, v30);
      v32 = v60;
      if (v31)
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1D209F000, v29, v30, "No Internet connection detected. Check your network connection.", v33, 2u);
        MEMORY[0x1D3896EB0](v33, -1, -1);
      }

      (*(v32 + 8))(v22, v16);
    }

    else
    {
      v59 = v26;
      sub_1D2112ECC();
      sub_1D211336C();
      sub_1D211396C();
      sub_1D211396C();
      v27(v9, v4);
      v27(v11, v4);
      v39 = v22;
      if (v64 == v63)
      {
        if (qword_1EE084470 != -1)
        {
          swift_once();
        }

        v40 = sub_1D211362C();
        __swift_project_value_buffer(v40, qword_1EE087530);
        v41 = sub_1D21135FC();
        v42 = sub_1D2113A7C();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_1D209F000, v41, v42, "Unable to find Host. if this QA env, please check your VPN connection!", v43, 2u);
          MEMORY[0x1D3896EB0](v43, -1, -1);
        }

        (*(v60 + 8))(v22, v16);
      }

      else
      {
        if (qword_1EE084470 != -1)
        {
          swift_once();
        }

        v44 = sub_1D211362C();
        __swift_project_value_buffer(v44, qword_1EE087530);
        v45 = v60;
        v46 = v62;
        (*(v60 + 16))(v62, v39, v16);
        v47 = v39;
        v48 = sub_1D21135FC();
        v49 = sub_1D2113A7C();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = v47;
          v52 = v46;
          v53 = v50;
          *v50 = 134217984;
          v57 = v48;
          v58 = v51;
          v54 = v52;
          sub_1D2112ECC();
          v55 = sub_1D21133AC();
          v27(v11, v4);
          v56 = *(v45 + 8);
          v56(v54, v16);
          *(v53 + 1) = v55;
          v48 = v57;
          v47 = v58;
          _os_log_impl(&dword_1D209F000, v57, v49, "URLError error : %ld", v53, 0xCu);
          MEMORY[0x1D3896EB0](v53, -1, -1);
        }

        else
        {
          v56 = *(v45 + 8);
          v56(v46, v16);
        }

        sub_1D2112ECC();
        v56(v47, v16);
      }
    }
  }

  else
  {
    v25(v15, 1, 1, v16);
    sub_1D20F67E0(v15);
    if (qword_1EE084470 != -1)
    {
      swift_once();
    }

    v34 = sub_1D211362C();
    __swift_project_value_buffer(v34, qword_1EE087530);
    v35 = sub_1D21135FC();
    v36 = sub_1D2113A7C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1D209F000, v35, v36, "Unknown Error", v37, 2u);
      MEMORY[0x1D3896EB0](v37, -1, -1);
    }
  }

  type metadata accessor for NetworkError(0);
  return swift_storeEnumTagMultiPayload();
}