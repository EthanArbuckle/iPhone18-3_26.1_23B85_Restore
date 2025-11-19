uint64_t sub_1ABD632CC()
{
  v0 = sub_1ABAD219C(&qword_1EB4D9100, &qword_1ABF5E968);
  if (sub_1ABAACC8C(v0))
  {
    v1 = &qword_1EB4D1910;
    v2 = &qword_1ABF33AA0;
  }

  else
  {
    v1 = &unk_1EB4D9108;
    v2 = &unk_1ABF5E970;
  }

  return sub_1ABAD219C(v1, v2);
}

uint64_t K2TClient.init(context:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v4 setTimeStyle_];
  [v4 setDateStyle_];
  v5 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v5 setTimeStyle_];
  [v5 setDateStyle_];
  v6 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v6 setUnitsStyle_];
  [v6 setMaximumUnitCount_];
  v7 = sub_1ABF217F4();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_1ABF217E4();
  v11 = type metadata accessor for K2TInProcessService();
  sub_1ABA93E64(a1, v32);
  *&v29 = v10;
  *(&v29 + 1) = v4;
  v30 = v5;
  v31 = v6;
  v12 = v33;
  v13 = v34;
  v14 = sub_1ABA94E50(v32, v33);
  v15 = *(*(v12 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  v20 = sub_1ABD5B9FC(v18, &v29, v11, v12, v13);
  v21 = v4;
  v22 = v5;
  v23 = v6;

  v24 = v21;
  v25 = v22;
  v26 = v23;
  sub_1ABA84B54(v32);
  a2[3] = v11;
  a2[4] = &off_1F209BCF0;

  *a2 = v20;
  return sub_1ABA84B54(a1);
}

uint64_t K2TClient.entityName(subjectId:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_1ABA8F710();
  v6 = v1;
  v4 = *sub_1ABA93E20(v2, v3);
  return sub_1ABD5B590(&v6);
}

uint64_t K2TClient.entityNames(subjectIds:)(void *a1)
{
  v2 = sub_1ABA8F710();
  v4 = *sub_1ABA93E20(v2, v3);
  v5 = a1[3];
  v6 = a1[4];
  v7 = sub_1ABA93E20(a1, v5);

  return sub_1ABD5BAA4(v7, v4, v5, v6);
}

uint64_t K2TClient.factLevelSummaries(subjectId:renderTriples:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_1ABA8F710();
  v8 = v3;
  v6 = *sub_1ABA93E20(v4, v5);
  return sub_1ABD5B62C(&v8, a2);
}

void K2TClient.entityLevelSummary(subjectId:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_1ABA8F710();
  v6 = v1;
  v4 = *sub_1ABA93E20(v2, v3);
  sub_1ABD5B6BC(&v6, v5);
}

uint64_t sub_1ABD636F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1ABD63730(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1ABD63788(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v96 = a4;
  v97 = a1;
  v98 = a2;
  v7 = sub_1ABF21EB4();
  v8 = sub_1ABA7BB64(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7C068();
  v109 = v13;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v14);
  v107 = &v93 - v15;
  v16 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  sub_1ABA7C068();
  v110 = v18;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v19);
  v101 = &v93 - v20;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v93 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v93 - v25;
  v27 = type metadata accessor for K2TTextualization();
  v28 = sub_1ABA7BB64(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA7C068();
  v104 = v31;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v32);
  v108 = &v93 - v33;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v93 - v37;
  v39 = *(a3 + 16);
  v99 = v26;
  v100 = a3;
  v102 = v35;
  v95 = v36;
  if (v39)
  {
    v94 = a5;
    v105 = v35[5];
    v40 = *(v36 + 80);
    sub_1ABA7AB74();
    v42 = a3 + v41;
    v44 = *(v43 + 72);
    v103 = v10;
    v111 = (v10 + 32);
    v112 = v44;
    v45 = MEMORY[0x1E69E7CC0];
    v46 = a3 + v41;
    v47 = v39;
    v106 = v7;
    v48 = v110;
    do
    {
      sub_1ABD51ED4(v46, v38);
      sub_1ABAE6A34(&v38[v105], v23);
      sub_1ABD51F38(v38);
      if (sub_1ABA7E1E0(v23, 1, v7) == 1)
      {
        sub_1ABC28C50(v23);
      }

      else
      {
        v49 = *v111;
        (*v111)(v107, v23, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = *(v45 + 16);
          sub_1ABAD96B8();
          v45 = v57;
        }

        v51 = *(v45 + 16);
        v50 = *(v45 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_1ABA7C480(v50);
          sub_1ABAD96B8();
          v45 = v58;
        }

        *(v45 + 16) = v51 + 1;
        v52 = *(v103 + 80);
        sub_1ABA7AB74();
        v55 = v45 + v53 + *(v54 + 72) * v51;
        v7 = v106;
        v49(v55, v107, v106);
        v48 = v110;
      }

      v46 += v112;
      --v47;
    }

    while (v47);
    sub_1ABB2BAE0(v45);

    v59 = v103;
    v60 = v102[6];
    v61 = MEMORY[0x1E69E7CC0];
    v62 = v39;
    a5 = v94;
    do
    {
      v63 = v108;
      sub_1ABD51ED4(v42, v108);
      sub_1ABAE6A34(v63 + v60, v48);
      sub_1ABD51F38(v63);
      if (sub_1ABA7E1E0(v48, 1, v7) == 1)
      {
        sub_1ABC28C50(v48);
      }

      else
      {
        v64 = *v111;
        (*v111)(v109, v48, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = *(v61 + 16);
          sub_1ABAD96B8();
          v61 = v71;
        }

        v66 = *(v61 + 16);
        v65 = *(v61 + 24);
        if (v66 >= v65 >> 1)
        {
          sub_1ABA7C480(v65);
          sub_1ABAD96B8();
          v61 = v72;
        }

        *(v61 + 16) = v66 + 1;
        v67 = *(v59 + 80);
        sub_1ABA7AB74();
        v69 = v61 + v68 + *(v59 + 72) * v66;
        v7 = v106;
        v64(v69, v109, v106);
        v48 = v110;
      }

      v42 += v112;
      --v62;
    }

    while (v62);
  }

  else
  {
    v61 = MEMORY[0x1E69E7CC0];
    sub_1ABB2BAE0(MEMORY[0x1E69E7CC0]);
  }

  sub_1ABB2BAE0(v61);

  if (v39)
  {
    v73 = v102[7];
    v74 = *(v95 + 80);
    sub_1ABA7AB74();
    v76 = v100 + v75;
    v78 = *(v77 + 72);
    v79 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v80 = v104;
      sub_1ABD51ED4(v76, v104);
      v81 = *(v80 + v73);

      sub_1ABD51F38(v80);
      v82 = *(v81 + 16);
      v83 = *(v79 + 16);
      if (__OFADD__(v83, v82))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v83 + v82 > *(v79 + 24) >> 1)
      {
        sub_1ABAD89C8();
        v79 = v84;
      }

      if (*(v81 + 16))
      {
        v85 = *(v79 + 16);
        if ((*(v79 + 24) >> 1) - v85 < v82)
        {
          goto LABEL_40;
        }

        memcpy((v79 + 8 * v85 + 32), (v81 + 32), 8 * v82);

        if (v82)
        {
          v86 = *(v79 + 16);
          v87 = __OFADD__(v86, v82);
          v88 = v86 + v82;
          if (v87)
          {
            goto LABEL_41;
          }

          *(v79 + 16) = v88;
        }
      }

      else
      {

        if (v82)
        {
          goto LABEL_39;
        }
      }

      v76 += v78;
      if (!--v39)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  else
  {
    v79 = MEMORY[0x1E69E7CC0];
LABEL_37:

    v113 = v79;
    sub_1ABD7DAF4(v96);
    v89 = sub_1ABE8AC38(v113);
    v90 = sub_1ABB45610(v89);
    v91 = v98;
    *a5 = v97;
    a5[1] = v91;
    v92 = v102;
    sub_1ABAE84E0(v99, a5 + v102[5]);
    sub_1ABAE84E0(v101, a5 + v92[6]);
    *(a5 + v92[7]) = v90;
  }
}

uint64_t K2TError.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

uint64_t K2TTextualization.text.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t K2TTextualization.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t K2TTextualization.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for K2TTextualization() + 20);

  return sub_1ABAE6A34(v3, a1);
}

uint64_t type metadata accessor for K2TTextualization()
{
  result = qword_1EB4D9118;
  if (!qword_1EB4D9118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t K2TTextualization.endTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for K2TTextualization() + 24);

  return sub_1ABAE6A34(v3, a1);
}

uint64_t K2TTextualization.entityRelationships.getter()
{
  v1 = *(v0 + *(type metadata accessor for K2TTextualization() + 28));
}

uint64_t static K2TTextualization.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1ABF25054();
  }
}

unint64_t sub_1ABD64024()
{
  result = qword_1EB4D9110;
  if (!qword_1EB4D9110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9110);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for K2TError(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1ABD64190()
{
  sub_1ABAE8794();
  if (v0 <= 0x3F)
  {
    sub_1ABD64224();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1ABD64224()
{
  if (!qword_1EB4D9128)
  {
    v0 = sub_1ABF241F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D9128);
    }
  }
}

uint64_t sub_1ABD64274()
{
  v0 = 0;
  v1 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v2 = &unk_1F2090E48 + v0++;
    v3 = 0xE200000000000000;
    v4 = 17741;
    v5 = sub_1ABD646E0;
    switch(v2[32])
    {
      case 1:
        v3 = 0xE300000000000000;
        v5 = sub_1ABD6475C;
        v4 = 4999502;
        break;
      case 2:
        v3 = 0xE300000000000000;
        v5 = sub_1ABD6476C;
        v4 = 5721934;
        break;
      case 3:
        v3 = 0xE900000000000054;
        v5 = sub_1ABD6482C;
        v4 = 0x524154535F594144;
        break;
      case 4:
        v3 = 0xE700000000000000;
        v5 = sub_1ABD649C8;
        v4 = 0x444E455F594144;
        break;
      case 5:
        v5 = sub_1ABD64D44;
        v7 = 1262830935;
        goto LABEL_16;
      case 6:
        v3 = 0xE800000000000000;
        v5 = sub_1ABD64E40;
        v8 = 1262830935;
        goto LABEL_20;
      case 7:
        sub_1ABA84240();
        v4 = 0x545300000000454DLL;
        v6 = 5526081;
        goto LABEL_14;
      case 8:
        sub_1ABA84240();
        v4 = 0x4E4500000000454DLL;
        v3 = 0xE900000000000044;
        break;
      case 9:
        v5 = sub_1ABD65794;
        v7 = 1380009305;
LABEL_16:
        v4 = v7 | 0x4154535F00000000;
        v3 = 0xEA00000000005452;
        break;
      case 10:
        v3 = 0xE800000000000000;
        v5 = sub_1ABD65A70;
        v8 = 1380009305;
LABEL_20:
        v4 = v8 | 0x444E455F00000000;
        break;
      case 11:
        v3 = 0xE500000000000000;
        sub_1ABA8E350();
        v4 = 0x594144454DLL;
        break;
      case 12:
        v3 = 0xE600000000000000;
        sub_1ABA8E350();
        v4 = 0x4B454557454DLL;
        break;
      case 13:
        v3 = 0xE700000000000000;
        sub_1ABA8E350();
        v4 = 0x48544E4F4D454DLL;
        break;
      case 14:
        v3 = 0xE600000000000000;
        sub_1ABA8E350();
        v4 = 0x52414559454DLL;
        break;
      case 15:
        v5 = sub_1ABD65E58;
        v4 = 0x464F5F5452415453;
        v3 = 0xED0000454D49545FLL;
        break;
      case 16:
        v5 = sub_1ABD65EA0;
        v4 = 0x545F464F5F444E45;
        v6 = 4541769;
LABEL_14:
        v3 = v6 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      default:
        break;
    }

    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    *(v9 + 24) = 0;
    swift_isUniquelyReferenced_nonNull_native();
    v10 = sub_1ABA94FC8(v4, v3);
    if (__OFADD__(v1[2], (v11 & 1) == 0))
    {
      break;
    }

    v12 = v10;
    v13 = v11;
    sub_1ABAD219C(&qword_1EB4D9130, &qword_1ABF5EB60);
    if (sub_1ABF24C64())
    {
      v14 = sub_1ABA94FC8(v4, v3);
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_34;
      }

      v12 = v14;
    }

    if (v13)
    {

      v16 = v1[7] + 16 * v12;
      v17 = *(v16 + 8);
      sub_1ABA7E95C(v16);
    }

    else
    {
      v1[(v12 >> 6) + 8] |= 1 << v12;
      v18 = (v1[6] + 16 * v12);
      *v18 = v4;
      v18[1] = v3;
      sub_1ABA7E95C((v1[7] + 16 * v12));
      v19 = v1[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_33;
      }

      v1[2] = v21;
    }

    if (v0 == 17)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABD646E0()
{
  type metadata accessor for KnosisQueryParam();
  v0 = sub_1ABF239C4();
  type metadata accessor for QueryNode();
  swift_allocObject();
  sub_1ABE73A74(25965, 0xE200000000000000, v0);
  return 0;
}

uint64_t sub_1ABD647A4()
{
  result = sub_1ABF21E14();
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    return sub_1ABF24FF4();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1ABD6482C()
{
  v0 = sub_1ABF21FE4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1ABF21EB4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(type metadata accessor for QueryContext() + 28);
  sub_1ABF21FC4();
  sub_1ABF21F64();
  (*(v1 + 8))(v4, v0);
  v11 = sub_1ABD647A4();
  (*(v6 + 8))(v9, v5);
  return v11;
}

void sub_1ABD649E0()
{
  sub_1ABA7E2A8();
  v59 = v1;
  v60 = v2;
  v4 = sub_1ABA909B0(v3);
  v5 = sub_1ABA7BB64(v4);
  v57 = v6;
  v58 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BC58();
  v56 = v10 - v9;
  v11 = sub_1ABF21FE4();
  v12 = sub_1ABA7BB64(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v12);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&v54 - v20);
  v22 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  sub_1ABA7AB80(v22);
  v24 = *(v23 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA7ED98();
  v26 = sub_1ABAD219C(&qword_1EB4D9138, &qword_1ABF5EB68);
  sub_1ABA7AB80(v26);
  v28 = *(v27 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  v30 = sub_1ABAD219C(&qword_1EB4D9140, &unk_1ABF5EB70);
  sub_1ABA7AB80(v30);
  v32 = *(v31 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v33);
  v54 = sub_1ABF21A74();
  v34 = sub_1ABA7BB64(v54);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1ABA7BC58();
  v41 = v40 - v39;
  sub_1ABA7ED8C();
  sub_1ABA7B9B4(v42, v43, v44, v11);
  sub_1ABF22014();
  sub_1ABA7ED8C();
  sub_1ABA7B9B4(v45, v46, v47, v48);
  sub_1ABA7DB74();
  LOBYTE(v55) = 0;
  v54 = 1;
  sub_1ABF21A64();
  sub_1ABF21FC4();
  sub_1ABF21FC4();
  v49 = v56;
  sub_1ABF21F64();
  v50 = *(v14 + 8);
  v50(v19, v11);
  sub_1ABF21FA4();
  v51 = sub_1ABA80E24();
  v52(v51);
  v50(v21, v11);
  sub_1ABAA4F54(v0);
  if (v53)
  {
    __break(1u);
  }

  else
  {
    (*(v36 + 8))(v41, v54);
    v21[4](v55, v0, v49);
    sub_1ABA7BC1C();
  }
}

uint64_t sub_1ABD64D58(uint64_t a1)
{
  v2 = sub_1ABF21EB4();
  v3 = sub_1ABA7BB64(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BC58();
  v10 = v9 - v8;
  v11 = a1 + *(type metadata accessor for QueryContext() + 28);
  sub_1ABD651D0();
  sub_1ABD647A4();
  (*(v5 + 8))(v10, v2);
  return sub_1ABA9A568();
}

uint64_t sub_1ABD64E58(uint64_t a1, void (*a2)(void))
{
  v4 = sub_1ABF21EB4();
  v5 = sub_1ABA7BB64(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BC58();
  v12 = v11 - v10;
  v13 = a1 + *(type metadata accessor for QueryContext() + 28);
  a2();
  sub_1ABD647A4();
  (*(v7 + 8))(v12, v4);
  return sub_1ABA9A568();
}

void sub_1ABD64F38()
{
  sub_1ABA7E2A8();
  v35 = v0;
  v37 = sub_1ABF21EB4();
  v1 = sub_1ABA7BB64(v37);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7BC58();
  v8 = v7 - v6;
  v9 = sub_1ABF21FD4();
  v10 = sub_1ABA7BB64(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7BC58();
  v17 = v16 - v15;
  v36 = sub_1ABF21FE4();
  v18 = sub_1ABA7BB64(v36);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7BC58();
  v25 = v24 - v23;
  v26 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  sub_1ABA7AB80(v26);
  v28 = *(v27 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v34 - v30;
  sub_1ABF21FC4();
  (*(v12 + 104))(v17, *MEMORY[0x1E6969A10], v9);
  sub_1ABD651D0();
  sub_1ABF21FB4();
  v32 = v37;
  (*(v3 + 8))(v8, v37);
  (*(v12 + 8))(v17, v9);
  (*(v20 + 8))(v25, v36);
  sub_1ABA83568(v31);
  if (v33)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 32))(v35, v31, v32);
    sub_1ABA7BC1C();
  }
}

void sub_1ABD651D0()
{
  sub_1ABA7E2A8();
  v40 = v3;
  v41 = v2;
  v5 = v4;
  v43 = v0;
  v6 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  sub_1ABA7AB80(v6);
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v38 - v10;
  v11 = sub_1ABF21FE4();
  v12 = sub_1ABA7BB64(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7BC58();
  sub_1ABA819C0();
  v17 = sub_1ABF21A74();
  v18 = sub_1ABA7BB64(v17);
  v38 = v19;
  v39 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7BC58();
  v24 = v23 - v22;
  sub_1ABF21FC4();
  sub_1ABAD219C(&qword_1EB4D9148, &unk_1ABF6BDF0);
  v25 = sub_1ABF21FD4();
  sub_1ABA7BB64(v25);
  v27 = v26;
  v29 = *(v28 + 72);
  v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1ABF34060;
  v32 = v31 + v30;
  v33 = *(v27 + 104);
  v33(v32, *v5, v25);
  v33(v32 + v29, *v41, v25);
  sub_1ABB2CB2C(v31);
  sub_1ABF21F84();

  v34 = *(v14 + 8);
  v34(v1, v11);
  sub_1ABF21FC4();
  v35 = v42;
  sub_1ABF21F94();
  v34(v1, v11);
  v36 = sub_1ABF21EB4();
  sub_1ABA83568(v35);
  if (v37)
  {
    __break(1u);
  }

  else
  {
    (*(v38 + 8))(v24, v39);
    (*(*(v36 - 8) + 32))(v40, v35, v36);
    sub_1ABA7BC1C();
  }
}

void sub_1ABD654C8()
{
  sub_1ABA7E2A8();
  v3 = sub_1ABA909B0(v2);
  v4 = sub_1ABA7BB64(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  v7 = sub_1ABAD219C(&qword_1EB4D9138, &qword_1ABF5EB68);
  sub_1ABA7AB80(v7);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7ED98();
  v11 = sub_1ABAD219C(&qword_1EB4D9140, &unk_1ABF5EB70);
  sub_1ABA7AB80(v11);
  v13 = *(v12 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  v45 = sub_1ABAA5944();
  v15 = sub_1ABA7BB64(v45);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7BC58();
  sub_1ABA819C0();
  v20 = sub_1ABF21FE4();
  v21 = sub_1ABA7BB64(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7BC58();
  v28 = v27 - v26;
  v29 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  sub_1ABA7AB80(v29);
  v31 = *(v30 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v32);
  sub_1ABA97C78();
  sub_1ABA7ED8C();
  sub_1ABA7B9B4(v33, v34, v35, v20);
  sub_1ABF22014();
  sub_1ABA7ED8C();
  sub_1ABA7B9B4(v36, v37, v38, v39);
  sub_1ABA7DB74();
  sub_1ABA8EADC();
  sub_1ABF21A64();
  sub_1ABD651D0();
  sub_1ABA99528();
  v40 = sub_1ABA80E24();
  v41(v40);
  (*(v17 + 8))(v0, v45);
  (*(v23 + 8))(v28, v20);
  sub_1ABAA4F54(v1);
  if (v42)
  {
    __break(1u);
  }

  else
  {
    v43 = sub_1ABAA613C();
    v44(v43);
    sub_1ABA7BC1C();
  }
}

void sub_1ABD657AC()
{
  sub_1ABA7E2A8();
  v37 = v1;
  v38 = v0;
  v2 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  sub_1ABA7AB80(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - v6;
  v8 = sub_1ABF21FE4();
  v9 = sub_1ABA7BB64(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BC58();
  v16 = v15 - v14;
  v36 = sub_1ABF21A74();
  v17 = sub_1ABA7BB64(v36);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7BC58();
  v24 = v23 - v22;
  sub_1ABF21FC4();
  sub_1ABAD219C(&qword_1EB4D9148, &unk_1ABF6BDF0);
  v25 = sub_1ABF21FD4();
  sub_1ABA7BB64(v25);
  v27 = v26;
  v29 = *(v28 + 72);
  v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1ABF34740;
  (*(v27 + 104))(v31 + v30, *MEMORY[0x1E6969A68], v25);
  sub_1ABB2CB2C(v31);
  sub_1ABF21F84();

  v32 = *(v11 + 8);
  v32(v16, v8);
  sub_1ABF21FC4();
  sub_1ABF21F94();
  v32(v16, v8);
  v33 = sub_1ABF21EB4();
  sub_1ABA83568(v7);
  if (v34)
  {
    __break(1u);
  }

  else
  {
    (*(v19 + 8))(v24, v36);
    (*(*(v33 - 8) + 32))(v37, v7, v33);
    sub_1ABA7BC1C();
  }
}

void sub_1ABD65A88()
{
  sub_1ABA7E2A8();
  v3 = sub_1ABA909B0(v2);
  v4 = sub_1ABA7BB64(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  v7 = sub_1ABAD219C(&qword_1EB4D9138, &qword_1ABF5EB68);
  sub_1ABA7AB80(v7);
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7ED98();
  v11 = sub_1ABAD219C(&qword_1EB4D9140, &unk_1ABF5EB70);
  sub_1ABA7AB80(v11);
  v13 = *(v12 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  v45 = sub_1ABAA5944();
  v15 = sub_1ABA7BB64(v45);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7BC58();
  sub_1ABA819C0();
  v20 = sub_1ABF21FE4();
  v21 = sub_1ABA7BB64(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7BC58();
  v28 = v27 - v26;
  v29 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  sub_1ABA7AB80(v29);
  v31 = *(v30 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v32);
  sub_1ABA97C78();
  sub_1ABA7ED8C();
  sub_1ABA7B9B4(v33, v34, v35, v20);
  sub_1ABF22014();
  sub_1ABA7ED8C();
  sub_1ABA7B9B4(v36, v37, v38, v39);
  sub_1ABA7DB74();
  sub_1ABA8EADC();
  sub_1ABF21A64();
  sub_1ABD657AC();
  sub_1ABA99528();
  v40 = sub_1ABA80E24();
  v41(v40);
  (*(v17 + 8))(v0, v45);
  (*(v23 + 8))(v28, v20);
  sub_1ABAA4F54(v1);
  if (v42)
  {
    __break(1u);
  }

  else
  {
    v43 = sub_1ABAA613C();
    v44(v43);
    sub_1ABA7BC1C();
  }
}

uint64_t sub_1ABD65D68(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a1 < 9.22337204e18)
  {
    return sub_1ABF24FF4();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1ABD65E58(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for QueryContext() + 28);
  sub_1ABF21E14();
  return sub_1ABF24314();
}

uint64_t sub_1ABD65EA0(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for QueryContext() + 28);
  sub_1ABF21E14();
  return sub_1ABF24314();
}

uint64_t sub_1ABD65EE8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  a1[1] = v6;
  a1[2] = v7;
  return result;
}

id sub_1ABD65F1C(uint64_t a1)
{
  result = sub_1ABAAB7C8(a1);
  v3 = result;
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1AC5AA170](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      result = *(a1 + 8 * i + 32);
    }

    v5 = result;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return result;
    }

    v6 = [result entityID];
    v7 = [v6 intValue];

    v11 = v7;
    v8 = EntityIdentifier.stringValue.getter();
    sub_1ABB1840C(v10, v8, v9);
  }

  return result;
}

id sub_1ABD6603C(uint64_t a1)
{
  result = sub_1ABAAB7C8(a1);
  v3 = result;
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1AC5AA170](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      result = *(a1 + 8 * i + 32);
    }

    v5 = result;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return result;
    }

    v6 = [result rankedItems];
    sub_1ABAFF390(0, &qword_1ED86B978, off_1E7960330);
    v7 = sub_1ABF240D4();

    sub_1ABD65F1C(v7);
  }

  return result;
}

uint64_t sub_1ABD66154(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABE7A2FC(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1ABD6DC84(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1ABD661C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = *(*(sub_1ABAD219C(&qword_1EB4D9150, &qword_1ABF5EB98) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1ABD66260, 0, 0);
}

void sub_1ABD66260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(*(v8 + 112) + 16);
  *(v8 + 144) = v9;
  if (v9)
  {
    v10 = 0;
    *(v8 + 152) = 181;
    v11 = MEMORY[0x1E69E7CC0];
    while (2)
    {
      *(v8 + 160) = v10;
      *(v8 + 168) = v11;
      switch(*(*(v8 + 112) + v10 + 32))
      {
        case 1:
          v12 = *(v8 + 128);
          sub_1ABD686E8(*(v8 + 120), a2, a3, a4, a5, a6, a7, a8, v83, v84);
          v13 = *(v8 + 88);
          goto LABEL_9;
        case 2:
          v16 = *(v8 + 128);
          sub_1ABD6AFF8(*(v8 + 120), a2, a3, a4, a5, a6, a7, a8, v83, v84);
          v13 = *(v8 + 72);
          goto LABEL_9;
        case 3:
          v17 = *(v8 + 120);
          v18 = *(v8 + 128);
          sub_1ABD691F4();
          v13 = *(v8 + 80);
          goto LABEL_9;
        case 4:
          v14 = *(v8 + 120);
          v15 = *(v8 + 128);
          sub_1ABD6C6FC();
          v13 = *(v8 + 56);
          goto LABEL_9;
        case 5:
          v19 = *(v8 + 120);
          v20 = *(v8 + 128);
          sub_1ABD6B768();
          v13 = *(v8 + 64);
LABEL_9:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1ABA7E974();
            sub_1ABADB5D8();
            v11 = v23;
          }

          v22 = v11[2];
          v21 = v11[3];
          if (v22 >= v21 >> 1)
          {
            sub_1ABA819D0(v21);
            sub_1ABADB5D8();
            v11 = v24;
          }

          v11[2] = v22 + 1;
          v11[v22 + 4] = v13;
          v10 = *(v8 + 160) + 1;
          if (v10 == *(v8 + 144))
          {
            goto LABEL_16;
          }

          continue;
        default:
          v32 = *(v8 + 152);
          sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
          sub_1ABAA5964();
          v33 = swift_allocObject();
          v34 = "quence AllTripleSequence";
          *(v33 + 16) = xmmword_1ABF34740;
          if (v32 < 27)
          {
            __break(1u);
          }

          else
          {
            if (!_Records_GDEntityClass_records)
            {
              goto LABEL_137;
            }

            sub_1ABA7D028();
            swift_allocObject();
            sub_1ABA9516C();
            sub_1ABA96474();
            sub_1ABA9A57C();
            sub_1ABADB5D8();
            v36 = sub_1ABA89A24(v35);
            if (!v40)
            {
LABEL_47:
              sub_1ABA97380(v36, v37, v38, v39);
              v41 = swift_task_alloc();
              *(v8 + 184) = v41;
              *v41 = v8;
              sub_1ABAA2998(v41);
              sub_1ABA7DA50();

              sub_1ABD67318(v42);
              return;
            }
          }

          sub_1ABA7BBEC(v34);
          sub_1ABADB5D8();
          v39 = v36;
          goto LABEL_47;
      }
    }
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_16:
  if (v11[2] == 1)
  {
    sub_1ABC43DF0(0, 1, v11);
    v25 = v11[4];
  }

  else
  {
    sub_1ABA7D028();
    v26 = swift_allocObject();
    *(v26 + 16) = v11;
    v25 = v26 | 0x3000000000000000;
  }

  v27 = *(v8 + 120);
  v28 = *(v27 + 16);
  v29 = (v27 + 40);
  if (!v28)
  {
LABEL_43:

    goto LABEL_125;
  }

  while (2)
  {
    v30 = *v29;
    switch(*(v29 - 8))
    {
      case 1:
        sub_1ABA95538();
        goto LABEL_41;
      case 2:
        sub_1ABAA4F74();
        goto LABEL_41;
      case 3:
        sub_1ABAB58B8();
        goto LABEL_41;
      case 4:
        sub_1ABA84278();
        goto LABEL_41;
      case 5:
        sub_1ABA95354();
        goto LABEL_41;
      case 6:
        sub_1ABA960EC();
        goto LABEL_41;
      case 7:
        sub_1ABAA15B8();
        goto LABEL_41;
      case 8:
        sub_1ABA82EBC();
        goto LABEL_41;
      case 9:
        sub_1ABA97C98();
        goto LABEL_41;
      case 0xE:
        sub_1ABAA0F2C();
        goto LABEL_41;
      case 0x10:
        sub_1ABA8E35C();
        goto LABEL_41;
      case 0x11:
        sub_1ABAA3988();
        goto LABEL_41;
      case 0x12:
        sub_1ABAA17E4();
        goto LABEL_41;
      case 0x15:
        v44 = *v29;

        goto LABEL_51;
      case 0x16:
        sub_1ABA90D3C();
        goto LABEL_41;
      case 0x17:
        sub_1ABA886D4();
        goto LABEL_41;
      case 0x18:
        sub_1ABA8CB60();
        goto LABEL_41;
      case 0x19:
        sub_1ABA97014();
        goto LABEL_41;
      default:
LABEL_41:
        v31 = sub_1ABA8BCFC();

        if ((v31 & 1) == 0)
        {

          v29 += 3;
          if (!--v28)
          {
            goto LABEL_43;
          }

          continue;
        }

LABEL_51:

        v45 = *(v8 + 136);
        sub_1ABB2BAF8(v30);

        v46 = type metadata accessor for KGQ.Value();
        v47 = sub_1ABA7E1E0(v45, 1, v46);
        v48 = *(v8 + 136);
        if (v47 == 1)
        {
          sub_1ABD6DBC0(*(v8 + 136));
          goto LABEL_125;
        }

        v49 = *(v8 + 136);
        v50 = sub_1ABD770AC();
        v52 = v51;
        sub_1ABD6DC28(v48);
        if (!v52)
        {
          goto LABEL_125;
        }

        sub_1ABA89CC4();
        if (!v54)
        {
          goto LABEL_43;
        }

        if ((v52 & 0x1000000000000000) != 0)
        {
          v80 = sub_1ABA7D000();
          sub_1ABB81A68(v80, v81, 10);
          v75 = v82;
          goto LABEL_123;
        }

        if ((v52 & 0x2000000000000000) != 0)
        {
          sub_1ABA89F34();
          if (v57)
          {
            if (!v61)
            {
              goto LABEL_136;
            }

            if (v61 != 1)
            {
              sub_1ABAA3974();
              while (1)
              {
                sub_1ABA7D44C();
                if (!v57 & v40)
                {
                  break;
                }

                sub_1ABA80E40();
                if (!v57 || __OFADD__(v68, v67))
                {
                  break;
                }

                sub_1ABA7E4F0();
                if (v57)
                {
                  goto LABEL_122;
                }
              }
            }
          }

          else if (v62 == 45)
          {
            if (!v61)
            {
              goto LABEL_134;
            }

            if (v61 != 1)
            {
              sub_1ABAA3974();
              while (1)
              {
                sub_1ABA7D44C();
                if (!v57 & v40)
                {
                  break;
                }

                sub_1ABA80E40();
                if (!v57 || __OFSUB__(v64, v63))
                {
                  break;
                }

                sub_1ABA7E4F0();
                if (v57)
                {
                  goto LABEL_122;
                }
              }
            }
          }

          else if (v61)
          {
            while (1)
            {
              sub_1ABA7D44C();
              if (!v57 & v40)
              {
                break;
              }

              sub_1ABA80E40();
              if (!v57 || __OFADD__(v74, v73))
              {
                break;
              }

              sub_1ABA7E4F0();
              if (v57)
              {
                goto LABEL_122;
              }
            }
          }

LABEL_121:
          v60 = 1;
          goto LABEL_122;
        }

        if ((v50 & 0x1000000000000000) != 0)
        {
          v55 = ((v52 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          sub_1ABA7D000();
          v55 = sub_1ABF24B74();
        }

        v56 = *v55;
        if (v56 == 43)
        {
          if (v53 < 1)
          {
            goto LABEL_135;
          }

          if (v53 == 1)
          {
            goto LABEL_121;
          }

          if (!v55)
          {
            goto LABEL_112;
          }

          sub_1ABA9932C();
          while (1)
          {
            sub_1ABA7D44C();
            if (!v57 & v40)
            {
              goto LABEL_121;
            }

            sub_1ABA80E40();
            if (!v57 || __OFADD__(v66, v65))
            {
              goto LABEL_121;
            }

            sub_1ABA7E4F0();
            if (v57)
            {
              goto LABEL_122;
            }
          }
        }

        if (v56 != 45)
        {
          if (!v53)
          {
            goto LABEL_121;
          }

          if (!v55)
          {
            goto LABEL_112;
          }

          while (*v55 - 48 <= 9)
          {
            sub_1ABA9F60C();
            if (!v57 || __OFADD__(v72, v71))
            {
              break;
            }

            v55 = (v69 + 1);
            if (v70 == 1)
            {
              goto LABEL_112;
            }
          }

          goto LABEL_121;
        }

        if (v53 >= 1)
        {
          if (v53 == 1)
          {
            goto LABEL_121;
          }

          if (v55)
          {
            sub_1ABA9932C();
            while (1)
            {
              sub_1ABA7D44C();
              if (!v57 & v40)
              {
                goto LABEL_121;
              }

              sub_1ABA80E40();
              if (!v57 || __OFSUB__(v59, v58))
              {
                goto LABEL_121;
              }

              sub_1ABA7E4F0();
              if (v57)
              {
                goto LABEL_122;
              }
            }
          }

LABEL_112:
          v60 = 0;
LABEL_122:
          v75 = v60;
LABEL_123:

          if ((v75 & 1) == 0)
          {
            sub_1ABA7D9B8();
            v76 = swift_allocObject();
            sub_1ABA9F6FC(v76);
          }

LABEL_125:
          v77 = *(v8 + 136);
          **(v8 + 104) = v25;

          sub_1ABA80A84();
          sub_1ABA7DA50();

          __asm { BRAA            X1, X16 }
        }

        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
        return;
    }
  }
}

uint64_t sub_1ABD669C4()
{
  sub_1ABA7BC04();
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 184);
  v6 = *v1;
  sub_1ABA7BBC0();
  *v7 = v6;
  v4[24] = v0;

  if (v0)
  {
    v9 = v4[21];
    v8 = v4[22];

    v10 = sub_1ABD672B8;
  }

  else
  {
    v4[25] = v3;
    v10 = sub_1ABD66AF0;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

void sub_1ABD66AF0()
{
  v1 = *(v0 + 168);
  sub_1ABD7E680(*(v0 + 200));
  sub_1ABA7D028();
  v2 = swift_allocObject();
  *(v2 + 16) = *(v0 + 96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 168);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1ABA7E974();
    sub_1ABADB5D8();
    v4 = v90;
  }

  v5 = v4[2];
  if (v5 >= v4[3] >> 1)
  {
    sub_1ABADB5D8();
    v4 = v91;
  }

  sub_1ABA96A50();
  v4[2] = v5 + 1;
  v4[v5 + 4] = v2 | v13;
  v14 = *(v0 + 192);
  while (2)
  {
    v15 = *(v0 + 160) + 1;
    if (v15 != *(v0 + 144))
    {
      *(v0 + 160) = v15;
      *(v0 + 168) = v4;
      switch(*(*(v0 + 112) + v15 + 32))
      {
        case 1:
          v16 = *(v0 + 128);
          v17 = v14;
          sub_1ABD686E8(*(v0 + 120), v6, v7, v8, v9, v10, v11, v12, v95, v96);
          if (v17)
          {
            goto LABEL_25;
          }

          v18 = *(v0 + 88);
          goto LABEL_18;
        case 2:
          v22 = *(v0 + 128);
          v23 = v14;
          sub_1ABD6AFF8(*(v0 + 120), v6, v7, v8, v9, v10, v11, v12, v95, v96);
          if (v23)
          {
            goto LABEL_25;
          }

          v18 = *(v0 + 72);
          goto LABEL_18;
        case 3:
          v24 = *(v0 + 120);
          v25 = *(v0 + 128);
          v26 = v14;
          sub_1ABD691F4();
          if (v26)
          {
            goto LABEL_25;
          }

          v18 = *(v0 + 80);
          goto LABEL_18;
        case 4:
          v19 = *(v0 + 120);
          v20 = *(v0 + 128);
          v21 = v14;
          sub_1ABD6C6FC();
          if (v21)
          {
            goto LABEL_25;
          }

          v18 = *(v0 + 56);
          goto LABEL_18;
        case 5:
          v27 = *(v0 + 120);
          v28 = *(v0 + 128);
          v29 = v14;
          sub_1ABD6B768();
          if (v29)
          {
LABEL_25:

            v35 = *(v0 + 136);

            sub_1ABA7BBE0();
            goto LABEL_134;
          }

          v18 = *(v0 + 64);
LABEL_18:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1ABA7E974();
            sub_1ABADB5D8();
            v4 = v32;
          }

          v31 = v4[2];
          v30 = v4[3];
          if (v31 >= v30 >> 1)
          {
            sub_1ABA819D0(v30);
            sub_1ABADB5D8();
            v4 = v33;
          }

          v14 = 0;
          v4[2] = v31 + 1;
          v4[v31 + 4] = v18;
          continue;
        default:
          v42 = *(v0 + 152);
          sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
          sub_1ABAA5964();
          v43 = swift_allocObject();
          v44 = "quence AllTripleSequence";
          *(v43 + 16) = xmmword_1ABF34740;
          if (v42 < 27)
          {
            __break(1u);
          }

          else
          {
            if (!_Records_GDEntityClass_records)
            {
              goto LABEL_146;
            }

            sub_1ABA7D028();
            swift_allocObject();
            sub_1ABA9516C();
            sub_1ABA96474();
            sub_1ABA9A57C();
            sub_1ABADB5D8();
            v46 = sub_1ABA89A24(v45);
            if (!v50)
            {
LABEL_55:
              sub_1ABA97380(v46, v47, v48, v49);
              v51 = swift_task_alloc();
              *(v0 + 184) = v51;
              *v51 = v0;
              sub_1ABAA2998();
              sub_1ABA7DA50();

              sub_1ABD67318(v52);
              return;
            }
          }

          sub_1ABA7BBEC(v44);
          sub_1ABADB5D8();
          v49 = v46;
          goto LABEL_55;
      }
    }

    break;
  }

  if (v4[2] == 1)
  {
    sub_1ABC43DF0(0, 1, v4);
    v34 = v4[4];
  }

  else
  {
    sub_1ABA7D028();
    v36 = swift_allocObject();
    *(v36 + 16) = v4;
    v34 = v36 | 0x3000000000000000;
  }

  v37 = *(v0 + 120);
  v38 = *(v37 + 16);
  v39 = (v37 + 40);
  if (!v38)
  {
LABEL_51:

    goto LABEL_133;
  }

  while (2)
  {
    v40 = *v39;
    switch(*(v39 - 8))
    {
      case 1:
        sub_1ABA95538();
        goto LABEL_49;
      case 2:
        sub_1ABAA4F74();
        goto LABEL_49;
      case 3:
        sub_1ABAB58B8();
        goto LABEL_49;
      case 4:
        sub_1ABA84278();
        goto LABEL_49;
      case 5:
        sub_1ABA95354();
        goto LABEL_49;
      case 6:
        sub_1ABA960EC();
        goto LABEL_49;
      case 7:
        sub_1ABAA15B8();
        goto LABEL_49;
      case 8:
        sub_1ABA82EBC();
        goto LABEL_49;
      case 9:
        sub_1ABA97C98();
        goto LABEL_49;
      case 0xE:
        sub_1ABAA0F2C();
        goto LABEL_49;
      case 0x10:
        sub_1ABA8E35C();
        goto LABEL_49;
      case 0x11:
        sub_1ABAA3988();
        goto LABEL_49;
      case 0x12:
        sub_1ABAA17E4();
        goto LABEL_49;
      case 0x15:
        v54 = *v39;

        goto LABEL_59;
      case 0x16:
        sub_1ABA90D3C();
        goto LABEL_49;
      case 0x17:
        sub_1ABA886D4();
        goto LABEL_49;
      case 0x18:
        sub_1ABA8CB60();
        goto LABEL_49;
      case 0x19:
        sub_1ABA97014();
        goto LABEL_49;
      default:
LABEL_49:
        v41 = sub_1ABA8BCFC();

        if ((v41 & 1) == 0)
        {

          v39 += 3;
          if (!--v38)
          {
            goto LABEL_51;
          }

          continue;
        }

LABEL_59:

        v55 = *(v0 + 136);
        sub_1ABB2BAF8(v40);

        v56 = type metadata accessor for KGQ.Value();
        v57 = sub_1ABA7E1E0(v55, 1, v56);
        v58 = *(v0 + 136);
        if (v57 == 1)
        {
          sub_1ABD6DBC0(*(v0 + 136));
          goto LABEL_133;
        }

        v59 = *(v0 + 136);
        v60 = sub_1ABD770AC();
        v62 = v61;
        sub_1ABD6DC28(v58);
        if (!v62)
        {
          goto LABEL_133;
        }

        sub_1ABA89CC4();
        if (!v64)
        {
          goto LABEL_51;
        }

        if ((v62 & 0x1000000000000000) != 0)
        {
          v92 = sub_1ABA7D000();
          sub_1ABB81A68(v92, v93, 10);
          v85 = v94;
          goto LABEL_131;
        }

        if ((v62 & 0x2000000000000000) != 0)
        {
          sub_1ABA89F34();
          if (v67)
          {
            if (!v71)
            {
              goto LABEL_145;
            }

            if (v71 != 1)
            {
              sub_1ABAA3974();
              while (1)
              {
                sub_1ABA7D44C();
                if (!v67 & v50)
                {
                  break;
                }

                sub_1ABA80E40();
                if (!v67 || __OFADD__(v78, v77))
                {
                  break;
                }

                sub_1ABA7E4F0();
                if (v67)
                {
                  goto LABEL_130;
                }
              }
            }
          }

          else if (v72 == 45)
          {
            if (!v71)
            {
              goto LABEL_143;
            }

            if (v71 != 1)
            {
              sub_1ABAA3974();
              while (1)
              {
                sub_1ABA7D44C();
                if (!v67 & v50)
                {
                  break;
                }

                sub_1ABA80E40();
                if (!v67 || __OFSUB__(v74, v73))
                {
                  break;
                }

                sub_1ABA7E4F0();
                if (v67)
                {
                  goto LABEL_130;
                }
              }
            }
          }

          else if (v71)
          {
            while (1)
            {
              sub_1ABA7D44C();
              if (!v67 & v50)
              {
                break;
              }

              sub_1ABA80E40();
              if (!v67 || __OFADD__(v84, v83))
              {
                break;
              }

              sub_1ABA7E4F0();
              if (v67)
              {
                goto LABEL_130;
              }
            }
          }

LABEL_129:
          v70 = 1;
          goto LABEL_130;
        }

        if ((v60 & 0x1000000000000000) != 0)
        {
          v65 = ((v62 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          sub_1ABA7D000();
          v65 = sub_1ABF24B74();
        }

        v66 = *v65;
        if (v66 == 43)
        {
          if (v63 < 1)
          {
            goto LABEL_144;
          }

          if (v63 == 1)
          {
            goto LABEL_129;
          }

          if (!v65)
          {
            goto LABEL_120;
          }

          sub_1ABA9932C();
          while (1)
          {
            sub_1ABA7D44C();
            if (!v67 & v50)
            {
              goto LABEL_129;
            }

            sub_1ABA80E40();
            if (!v67 || __OFADD__(v76, v75))
            {
              goto LABEL_129;
            }

            sub_1ABA7E4F0();
            if (v67)
            {
              goto LABEL_130;
            }
          }
        }

        if (v66 != 45)
        {
          if (!v63)
          {
            goto LABEL_129;
          }

          if (!v65)
          {
            goto LABEL_120;
          }

          while (*v65 - 48 <= 9)
          {
            sub_1ABA9F60C();
            if (!v67 || __OFADD__(v82, v81))
            {
              break;
            }

            v65 = (v79 + 1);
            if (v80 == 1)
            {
              goto LABEL_120;
            }
          }

          goto LABEL_129;
        }

        if (v63 >= 1)
        {
          if (v63 == 1)
          {
            goto LABEL_129;
          }

          if (v65)
          {
            sub_1ABA9932C();
            while (1)
            {
              sub_1ABA7D44C();
              if (!v67 & v50)
              {
                goto LABEL_129;
              }

              sub_1ABA80E40();
              if (!v67 || __OFSUB__(v69, v68))
              {
                goto LABEL_129;
              }

              sub_1ABA7E4F0();
              if (v67)
              {
                goto LABEL_130;
              }
            }
          }

LABEL_120:
          v70 = 0;
LABEL_130:
          v85 = v70;
LABEL_131:

          if ((v85 & 1) == 0)
          {
            sub_1ABA7D9B8();
            v86 = swift_allocObject();
            sub_1ABA9F6FC(v86);
          }

LABEL_133:
          v87 = *(v0 + 136);
          **(v0 + 104) = v34;

          sub_1ABA80A84();
LABEL_134:
          sub_1ABA7DA50();

          __asm { BRAA            X1, X16 }
        }

        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
        return;
    }
  }
}

uint64_t sub_1ABD672B8()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 136);

  sub_1ABA7BBE0();

  return v3();
}

uint64_t sub_1ABD67318(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return sub_1ABA8C014();
}

void sub_1ABD6732C()
{
  v488 = v1;
  *(v1 + 56) = MEMORY[0x1E69E7CC0];
  v486 = *(v1 + 72);

  sub_1ABD66154(&v486);
  v2 = 0;
  v336 = v1 + 16;
  v348 = v1 + 40;
  v3 = (v486 + 48);
  v360 = (v1 + 56);
  v4 = MEMORY[0x1E69E7CC0];
  v470 = v486;
  v462 = *(v486 + 16);
  v424 = 181;
  v446 = 279;
  v409 = xmmword_1ABF34060;
  v454 = v1;
  while (1)
  {
    *(v1 + 88) = v4;
    if (v462 == v2)
    {

      *(v1 + 96) = *(v1 + 56);
      v302 = swift_task_alloc();
      *(v1 + 104) = v302;
      *v302 = v1;
      v302[1] = sub_1ABD684C0;
      v303 = *(v1 + 80);
      sub_1ABA898DC();

      sub_1ABD6D534(v304, v305);
      return;
    }

    if (v2 >= *(v470 + 16))
    {
      break;
    }

    v5 = *(v3 - 16);
    v6 = *(v3 - 1);
    switch(v5)
    {
      case 0:
        v0 = v1;
        v7 = *(v1 + 80);
        v8 = swift_task_alloc();
        *(v8 + 16) = v7;
        sub_1ABAA1A3C();
        swift_bridgeObjectRetain_n();
        sub_1ABE0F568(sub_1ABD71928, v8, v6);
        sub_1ABA9FC50();

        sub_1ABD7DA50(v1);

        goto LABEL_69;
      case 1:
        sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
        sub_1ABAA5964();
        v134 = swift_allocObject();
        sub_1ABA828A4(v134, v135, v136, v137, v138, v139, v140, v141, v336, v348, v360, v372, v384, v396, v409, *(&v409 + 1), v424, v432, v438, v446, v454, v462, v470, v478, v142);
        if (v446 < 62)
        {
          goto LABEL_87;
        }

        v478 = v3;
        v0 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_100;
        }

        v144 = v143;
        sub_1ABAA0910();
        sub_1ABAA4EC8();
        v87 = swift_allocObject();
        v88 = *(v0 + 0x5C0);
        v89 = *(v0 + 0x5C8);
        v145 = *(v0 + 0x5B8);

        sub_1ABA9EC20();
        v146 = sub_1ABA9954C();
        sub_1ABA8C5C8(v147, v146);
        *(v87 + 16) = v144;
        v148 = swift_task_alloc();
        sub_1ABA8B32C(v148);
        goto LABEL_23;
      case 2:
        sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
        sub_1ABAA5964();
        v76 = swift_allocObject();
        sub_1ABA828A4(v76, v77, v78, v79, v80, v81, v82, v83, v336, v348, v360, v372, v384, v396, v409, *(&v409 + 1), v424, v432, v438, v446, v454, v462, v470, v478, v84);
        if (v446 < 64)
        {
          goto LABEL_86;
        }

        v478 = v3;
        v0 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_97;
        }

        v86 = v85;
        sub_1ABAA0910();
        sub_1ABAA4EC8();
        v87 = swift_allocObject();
        v88 = *(v0 + 0x5F0);
        v89 = *(v0 + 0x5F8);
        v90 = *(v0 + 0x5E8);

        sub_1ABA9EC20();
        v91 = sub_1ABA9954C();
        sub_1ABA8C5C8(v92, v91);
        *(v87 + 16) = v86;
        v93 = swift_task_alloc();
        sub_1ABA8B32C(v93);
LABEL_23:
        sub_1ABA8B520(sub_1ABD71A60);
        if (v89)
        {
          sub_1ABA8AF8C();
          sub_1ABAA1A3C();
          swift_bridgeObjectRelease_n();

          sub_1ABA8B718(v307, v308, v309, v310, v311, v312, v313, v314, v336, v348, v360);

          v315 = *(v87 + 16);

          goto LABEL_80;
        }

        sub_1ABA9FC50();

        v149 = sub_1ABD7343C(v88);
        v151 = v150;

        *(v87 + 24) = v149;
        *(v87 + 32) = v151;
        v4 = v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA93700();
          sub_1ABADB5D8();
          v4 = v294;
        }

        v2 = v3;
        sub_1ABAABCE8();
        v3 = v478;
        if (v153)
        {
          sub_1ABA819D0(v152);
          sub_1ABADB5D8();
          v4 = v295;
        }

        sub_1ABA8C990(v87 | 0x5000000000000004);
        goto LABEL_36;
      case 4:
        if (v446 < 59)
        {
          goto LABEL_88;
        }

        v478 = v3;
        v0 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_98;
        }

        sub_1ABAA0910();
        sub_1ABA8913C();
        v156 = swift_allocObject();
        v162 = *(v0 + 0x578);
        v158 = *(v0 + 0x580);
        v163 = *(v0 + 0x570);

        sub_1ABA91D48(v163, v162, v158, &v486);
        v164 = sub_1ABA9954C();
        sub_1ABA8CD40(v165, v164);
        v166 = swift_task_alloc();
        sub_1ABA8B32C(v166);
        sub_1ABA8B520(sub_1ABD71A60);
        if (v163)
        {
          goto LABEL_79;
        }

        sub_1ABA9FC50();

        v157 = sub_1ABD7343C(v158);
        v168 = v167;

        *(v156 + 56) = v157;
        *(v156 + 64) = v168;
        *(v156 + 72) = 0;
        *(v156 + 80) = 0;
        *(v156 + 87) = 0;
        v4 = v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA93700();
          sub_1ABADB5D8();
          v4 = v299;
        }

        v2 = v3;
        sub_1ABAABCE8();
        if (!v153)
        {
          goto LABEL_35;
        }

        goto LABEL_44;
      case 7:
        sub_1ABAA1A3C();
        swift_bridgeObjectRetain_n();
        v9 = sub_1ABD77144(v6);

        if (!v9)
        {
          sub_1ABA8B718(v10, v11, v12, v13, v14, v15, v16, v17, v336, v348, v360);

          sub_1ABA89B1C();
          sub_1ABD718B8();
          sub_1ABA7D104();
          swift_allocError();
          v323 = 39;
          goto LABEL_77;
        }

        if (v446 < 140)
        {
          goto LABEL_91;
        }

        v18 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_102;
        }

        sub_1ABA807B4();
        v19 = swift_allocObject();
        sub_1ABA91D48(v18[1668], *(v18 + 418), *(v18 + 419), &v486);
        v20 = sub_1ABA9954C();
        sub_1ABAA416C(v21, v20);
        sub_1ABAD219C(&qword_1EB4D1318, &unk_1ABF334A0);
        sub_1ABAA4EC8();
        v22 = swift_allocObject();
        sub_1ABA828A4(v22, v23, v24, v25, v26, v27, v28, v29, v336, v348, v360, v372, v384, v396, v409, *(&v409 + 1), v424, v432, v4, v446, v454, v462, v470, v3, v30);
        sub_1ABAA267C();
        v31 = swift_allocObject();
        sub_1ABD71A78(v31, v32, v33, v34, v35, v36, v37, v38, v337, v349, v361, v373, v385, v397, v39);
        sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
        sub_1ABAA5964();
        v40 = swift_allocObject();
        sub_1ABA828A4(v40, v41, v42, v43, v44, v45, v46, v47, v338, v350, v362, v374, v386, v398, v410, v417, v425, v433, v439, v447, v455, v463, v471, v479, v48);
        if (v426 < 52)
        {
          goto LABEL_94;
        }

        v50 = _Records_GDEntityClass_records;
        if (!_Records_GDEntityClass_records)
        {
          goto LABEL_104;
        }

        v51 = v49;
        sub_1ABA7D028();
        v52 = swift_allocObject();
        sub_1ABA8882C(*(v50 + 0x4C8), *(v50 + 0x4D0), *(v50 + 0x4D8), &v486);
        v53 = sub_1ABAA2374();
        sub_1ABAA4620(v54, v53);
        *(v52 + 16) = v51;
        v4[4] = v52 | 0x4000000000000000;
        v55 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_103;
        }

        sub_1ABA7D028();
        v56 = swift_allocObject();
        sub_1ABA807B4();
        v57 = swift_allocObject();
        sub_1ABA91D48(v55[384], *(v55 + 97), *(v55 + 98), &v486);
        *(v57 + 16) = sub_1ABA9954C();
        *(v57 + 32) = v58;
        *(v57 + 40) = v59;
        *(v57 + 48) = v60;
        sub_1ABAA4EC8();
        v61 = swift_allocObject();
        sub_1ABA828A4(v61, v62, v63, v64, v65, v66, v67, v68, v339, v351, v363, v375, v387, v399, v411, v418, v426, v2, v440, v448, v456, v464, v472, v480, v69);
        sub_1ABA7D9B8();
        v70 = swift_allocObject();
        v71 = sub_1ABD7343C(v9);
        v73 = v72;

        *(v70 + 16) = v71;
        *(v70 + 24) = v73;
        sub_1ABAB1154();
        v61[2].n128_u64[0] = v70 | v74;
        *(v57 + 56) = v61;
        v4[5] = v57 | 4;
        *(v56 + 16) = v4;
        v75 = v56 | 0x1000000000000004;
        break;
      case 9:
        if (v446 < 143)
        {
          goto LABEL_89;
        }

        v154 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_96;
        }

        v155 = *(v1 + 80);
        sub_1ABA8913C();
        v156 = swift_allocObject();
        v157 = *(v154 + 427);
        v158 = *(v154 + 428);
        v0 = v154[1704];

        sub_1ABA91D48(v0, v157, v158, &v486);
        v159 = sub_1ABA9954C();
        sub_1ABA8CD40(v160, v159);
        *(swift_task_alloc() + 16) = v155;

        sub_1ABA8B520(sub_1ABD71A60);
        if (v155)
        {
LABEL_79:
          sub_1ABA8AF8C();
          sub_1ABAA1A3C();
          swift_bridgeObjectRelease_n();

          sub_1ABA8B718(v324, v325, v326, v327, v328, v329, v330, v331, v336, v348, v360);

          v332 = *(v156 + 24);
          v333 = *(v156 + 40);

LABEL_80:
          swift_deallocUninitializedObject();
LABEL_81:
          sub_1ABA7BBE0();
          sub_1ABA898DC();

          __asm { BRAA            X1, X16 }
        }

        sub_1ABA9FC50();

        sub_1ABD7343C(v158);
        sub_1ABA9F0D4();

        *(v156 + 56) = v157;
        *(v156 + 64) = v0;
        *(v156 + 72) = 0;
        *(v156 + 80) = 0;
        *(v156 + 87) = 0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA93700();
          sub_1ABADB5D8();
          v4 = v298;
        }

        sub_1ABAABCE8();
        if (v153)
        {
LABEL_44:
          sub_1ABA819D0(v161);
          sub_1ABADB5D8();
          v4 = v169;
        }

LABEL_35:

        v4[2] = v157;
        v4[v158 + 4] = v156;
LABEL_36:
        v1 = v454;
        goto LABEL_69;
      case 10:
        sub_1ABAA1A3C();
        swift_bridgeObjectRetain_n();
        v170 = sub_1ABD77144(v6);

        if (!v170)
        {
          sub_1ABA8B718(v171, v172, v173, v174, v175, v176, v177, v178, v336, v348, v360);

          sub_1ABA89B1C();
          sub_1ABD718B8();
          sub_1ABA7D104();
          swift_allocError();
          v323 = 34;
LABEL_77:
          *v322 = v323 | 0xD000000000000010;
LABEL_78:
          v322[1] = v0;
          swift_willThrow();

          goto LABEL_81;
        }

        if (v446 < 91)
        {
          goto LABEL_90;
        }

        v179 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_101;
        }

        v180 = v170;
        sub_1ABA807B4();
        v19 = swift_allocObject();
        sub_1ABA91D48(v179[1080], *(v179 + 271), *(v179 + 272), &v486);
        v181 = sub_1ABA9954C();
        sub_1ABAA416C(v182, v181);
        sub_1ABAD219C(&qword_1EB4D1318, &unk_1ABF334A0);
        sub_1ABAA4EC8();
        v22 = swift_allocObject();
        sub_1ABA828A4(v22, v183, v184, v185, v186, v187, v188, v189, v336, v348, v360, v372, v384, v396, v409, *(&v409 + 1), v424, v432, v4, v446, v454, v462, v470, v3, v190);
        sub_1ABAA267C();
        v191 = swift_allocObject();
        sub_1ABD71A78(v191, v192, v193, v194, v195, v196, v197, v198, v342, v354, v366, v378, v389, v403, v199);
        sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
        sub_1ABAA5964();
        v200 = swift_allocObject();
        sub_1ABA828A4(v200, v201, v202, v203, v204, v205, v206, v207, v343, v355, v367, v379, v390, v404, v413, v420, v428, v435, v442, v450, v458, v466, v474, v482, v208);
        if (v429 < 23)
        {
          goto LABEL_93;
        }

        v210 = _Records_GDEntityClass_records;
        if (!_Records_GDEntityClass_records)
        {
          goto LABEL_106;
        }

        v211 = v209;
        sub_1ABA7D028();
        v212 = swift_allocObject();
        sub_1ABA8882C(*(v210 + 0x210), *(v210 + 0x218), *(v210 + 0x220), &v486);
        v213 = sub_1ABAA2374();
        sub_1ABAA4620(v214, v213);
        *(v212 + 16) = v211;
        v4[4] = v212 | 0x4000000000000000;
        v215 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_105;
        }

        sub_1ABA7D028();
        v405 = swift_allocObject();
        sub_1ABA807B4();
        v216 = swift_allocObject();
        sub_1ABA91D48(v215[612], *(v215 + 154), *(v215 + 155), &v486);
        *(v216 + 16) = sub_1ABA9954C();
        *(v216 + 32) = v217;
        *(v216 + 40) = v218;
        *(v216 + 48) = v219;
        sub_1ABAA4EC8();
        v220 = swift_allocObject();
        sub_1ABA828A4(v220, v221, v222, v223, v224, v225, v226, v227, v344, v356, v368, v380, v391, v405, v414, v421, v429, v2, v443, v451, v459, v467, v475, v483, v228);
        sub_1ABA7D9B8();
        v229 = swift_allocObject();
        v230 = sub_1ABD7343C(v180);
        v232 = v231;

        *(v229 + 16) = v230;
        *(v229 + 24) = v232;
        sub_1ABAB1154();
        v220[2].n128_u64[0] = v229 | v233;
        *(v216 + 56) = v220;
        v4[5] = v216 | 4;
        *(v396 + 16) = v4;
        v75 = v396 | 0x1000000000000004;
        break;
      case 14:
        v400 = sub_1ABAD219C(&qword_1EB4D1318, &unk_1ABF334A0);
        sub_1ABAA267C();
        v94 = swift_allocObject();
        sub_1ABD71A78(v94, v95, v96, v97, v98, v99, v100, v101, v336, v348, v360, v372, v384, v400, v102);
        v103 = sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
        sub_1ABAA5964();
        v104 = swift_allocObject();
        sub_1ABA828A4(v104, v105, v106, v107, v108, v109, v110, v111, v340, v352, v364, v376, v388, v401, v409, *(&v409 + 1), v424, v432, v4, v446, v454, v462, v470, v478, v112);
        if (v427 < 10)
        {
          goto LABEL_85;
        }

        v377 = v103;
        v481 = v3;
        v434 = v2;
        v114 = _Records_GDEntityClass_records;
        if (!_Records_GDEntityClass_records)
        {
          goto LABEL_99;
        }

        v115 = v113;
        v116 = *(v1 + 80);
        sub_1ABA7D028();
        v117 = swift_allocObject();
        sub_1ABA7D028();
        v118 = swift_allocObject();
        v119 = *(v114 + 0xE0);
        v120 = *(v114 + 0xE0 + 8);
        v121 = *(v114 + 0xD8);

        sub_1ABA8882C(v121, v119, v120, &v486);
        v122 = sub_1ABAA2374();
        sub_1ABA975B0(v123, v122);
        *(v118 + 16) = v115;
        v4[4] = v118 | 0x4000000000000000;
        sub_1ABA7D9B8();
        v124 = swift_allocObject();
        v125 = swift_task_alloc();
        *(v125 + 16) = v116;

        sub_1ABE0F568(sub_1ABD7190C, v125, v6);
        sub_1ABA9FC50();

        sub_1ABD7343C(v118);
        sub_1ABA9F0D4();

        *(v124 + 16) = v115;
        *(v124 + 24) = v119;
        v4[5] = v124 | 0x5000000000000000;
        *(v117 + 16) = v4;

        v127 = sub_1ABD77144(v126);

        if (v127)
        {
          sub_1ABA7D9B8();
          v128 = swift_allocObject();
          v129 = sub_1ABD7343C(v127);
          v131 = v130;

          *(v128 + 16) = v129;
          *(v128 + 24) = v131;
          sub_1ABAB1154();
          v133 = v128 | v132;
        }

        else
        {
          sub_1ABA96A50();
          v133 = v117 | v237;
        }

        v392 = v133;
        v238 = v457;
        v2 = v434;
        v3 = v481;
        if (v449 < 92)
        {
          goto LABEL_92;
        }

        v239 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_107;
        }

        sub_1ABA807B4();
        v240 = swift_allocObject();
        sub_1ABA91D48(v239[1092], *(v239 + 274), *(v239 + 275), &v486);
        v241 = sub_1ABA9954C();
        sub_1ABAA416C(v242, v241);
        sub_1ABAA4EC8();
        v243 = swift_allocObject();
        sub_1ABA828A4(v243, v244, v245, v246, v247, v248, v249, v250, v341, v353, v365, v377, v392, v402, v412, v419, v427, v434, v441, v449, v457, v465, v473, v481, v251);
        sub_1ABAA267C();
        v252 = swift_allocObject();
        sub_1ABD71A78(v252, v253, v254, v255, v256, v257, v258, v259, v345, v357, v369, v381, v393, v406, v260);
        sub_1ABAA5964();
        v261 = swift_allocObject();
        sub_1ABA828A4(v261, v262, v263, v264, v265, v266, v267, v268, v346, v358, v370, v382, v394, v407, v415, v422, v430, v436, v444, v452, v460, v468, v476, v484, v269);
        if (v431 < 0xE)
        {
          goto LABEL_95;
        }

        v271 = _Records_GDEntityClass_records;
        if (!_Records_GDEntityClass_records)
        {
          goto LABEL_109;
        }

        v272 = v270;
        sub_1ABA7D028();
        v273 = swift_allocObject();
        sub_1ABA8882C(*(v271 + 0x138), *(v271 + 0x140), *(v271 + 0x140 + 8), &v486);
        v274 = sub_1ABAA2374();
        sub_1ABA8A560(v275, v274);
        *(v272 + 64) = v276;
        *(v273 + 16) = v272;
        v4[4] = v273 | 0x4000000000000000;
        v277 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_108;
        }

        sub_1ABA7D028();
        v278 = swift_allocObject();
        sub_1ABA807B4();
        v279 = swift_allocObject();
        sub_1ABA91D48(v277[204], *(v277 + 52), *(v277 + 53), &v486);
        v280 = sub_1ABA9954C();
        sub_1ABAB67D0(v281, v280);
        sub_1ABAA4EC8();
        v282 = swift_allocObject();
        sub_1ABA828A4(v282, v283, v284, v285, v286, v287, v288, v289, v347, v359, v371, v383, v395, v408, v416, v423, v431, v437, v445, v453, v461, v469, v477, v485, v290);
        *(v291 + 32) = v384;
        *(v279 + 56) = v291;
        v4[5] = v279 | 4;
        *(v278 + 16) = v4;
        v243[2].n128_u64[0] = v278 | 0x1000000000000004;
        v0 = 0xFFFFFFFFFFFFFFBLL;
        *(v240 + 56) = v243;

        v4 = v438;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA93700();
          sub_1ABADB5D8();
          v4 = v300;
        }

        v1 = v238;
        v293 = v4[2];
        v292 = v4[3];
        if (v293 >= v292 >> 1)
        {
          sub_1ABA9025C(v292);
          sub_1ABADB5D8();
          v4 = v301;
        }

        v235 = v240 | 4;
        v4[2] = v293 + 1;
        v236 = &v4[v293];
        goto LABEL_68;
      case 21:
        goto LABEL_69;
      default:
        v316 = *v3;
        v317 = *(v1 + 56);
        v318 = *(v3 - 1);

        v486 = 0;
        v487 = 0xE000000000000000;
        sub_1ABF24AB4();
        v319 = v487;
        *(v1 + 40) = v486;
        *(v1 + 48) = v319;
        v320 = sub_1ABA8F71C();
        MEMORY[0x1AC5A9410](v320);
        *(v1 + 16) = v5;
        *(v1 + 24) = v6;
        *(v1 + 32) = v316;
        sub_1ABF24C54();
        sub_1ABA7F0D0();
        MEMORY[0x1AC5A9410](0xD000000000000010);
        v321 = *(v1 + 40);
        v0 = *(v1 + 48);
        sub_1ABD718B8();
        sub_1ABA7D104();
        swift_allocError();
        *v322 = v321;
        goto LABEL_78;
    }

    v22[2].n128_u64[0] = v75;
    *(v19 + 56) = v22;
    v4 = v438;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA93700();
      sub_1ABADB5D8();
      v4 = v296;
    }

    v1 = v454;
    v2 = v432;
    v3 = v478;
    v0 = v4[2];
    v234 = v4[3];
    if (v0 >= v234 >> 1)
    {
      sub_1ABA7BBEC(v234);
      sub_1ABADB5D8();
      v4 = v297;
    }

    v235 = v19 | 4;
    v4[2] = v0 + 1;
    v236 = &v4[v0];
LABEL_68:
    v236[4] = v235;
LABEL_69:
    v3 += 24;
    ++v2;
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
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
}

uint64_t sub_1ABD684C0()
{
  sub_1ABA7BC04();
  v2 = *v1;
  v3 = *v1;
  sub_1ABA7BBC0();
  *v4 = v3;
  v5 = *(v2 + 104);
  *v4 = *v1;
  *(v3 + 112) = v0;

  v6 = *(v2 + 96);
  if (v0)
  {
    v7 = *(v3 + 88);

    v8 = sub_1ABD686C4;
  }

  else
  {

    v8 = sub_1ABD685FC;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1ABD685FC()
{
  sub_1ABA7BC04();
  v1 = v0[8];
  v2 = v0[11];
  if ((~v1 & 0xF000000000000007) != 0)
  {
    v3 = v0[11];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2 = v0[11];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 16);
      sub_1ABA7BEF0();
      sub_1ABADB5D8();
      v2 = v10;
    }

    v6 = *(v2 + 16);
    v5 = *(v2 + 24);
    if (v6 >= v5 >> 1)
    {
      sub_1ABA819D0(v5);
      sub_1ABADB5D8();
      v2 = v11;
    }

    *(v2 + 16) = v6 + 1;
    *(v2 + 8 * v6 + 32) = v1;
  }

  v7 = v0[1];

  return v7(v2);
}

uint64_t sub_1ABD686C4()
{
  v1 = *(v0 + 112);
  sub_1ABA7BBE0();
  return v2();
}

void sub_1ABD686E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v152 = v10;
  v13 = type metadata accessor for KGQ.Value();
  v14 = sub_1ABA7BB64(v13);
  v145 = v15;
  v146 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C068();
  v142 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v141 = (&v137 - v20);
  v148 = sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
  sub_1ABAA5964();
  v21 = swift_allocObject();
  v153 = xmmword_1ABF34740;
  *(v21 + 16) = xmmword_1ABF34740;
  v22 = _Records_GDEntityClass_records;
  if (!_Records_GDEntityClass_records)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  sub_1ABA7D028();
  v23 = swift_allocObject();
  sub_1ABA8882C(*(v22 + 0x4C8), *(v22 + 0x4D0), *(v22 + 0x4D8), v155);
  v24 = sub_1ABA7F638();
  sub_1ABA8A2A4(v25, v24);
  sub_1ABA9A57C();
  sub_1ABADB5D8();
  v27 = v26;
  v29 = *(v26 + 16);
  v28 = *(v26 + 24);
  v30 = v29 + 1;
  if (v29 >= v28 >> 1)
  {
    goto LABEL_52;
  }

LABEL_3:
  sub_1ABA8AB2C();
  *(v27 + 16) = v30;
  sub_1ABAA003C(v23 | 0x4000000000000000);
  sub_1ABA9EAD4();
  v12 = v11;
  if (v11)
  {
    goto LABEL_60;
  }

  v31 = 0;
  v32 = v155[0];
  v23 = v155[0] + 16;
  v30 = *(v155[0] + 16);
  v33 = 0xF000000000000007;
  v149 = 279;
  v147 = xmmword_1ABF34060;
  v151 = v155[0] + 16;
  while (2)
  {
    while (2)
    {
      v34 = v23 + 24 * v31;
      do
      {
        if (v30 == v31)
        {

          if ((~v33 & 0xF000000000000007) != 0)
          {
            sub_1ABA7D9B8();
            v123 = swift_allocObject();
            v124 = (v123 + 24);
            *(v123 + 16) = v33;
            v126 = 0x2000000000000000;
          }

          else
          {
            sub_1ABA7D028();
            swift_allocObject();
            sub_1ABA9F290();
            v126 = v125 + 9;
          }

          v132 = v144;
          *v124 = v27;
          *v132 = v126 | v123;
          goto LABEL_47;
        }

        v28 = *(v32 + 16);
        if (v31 >= v28)
        {
          __break(1u);
          __break(1u);
LABEL_52:
          sub_1ABA7BBEC(v28);
          sub_1ABADB5D8();
          v27 = v136;
          goto LABEL_3;
        }

        ++v31;
        v35 = (v34 + 24);
        v36 = *(v34 + 16);
        v34 += 24;
      }

      while (v36 == 21);
      if (v36 == 11)
      {
        v69 = *v35;
        if (*(*v35 + 16))
        {
          sub_1ABAA1384();
          v71 = v142;
          sub_1ABB2D38C(v69 + v70, v142);
          if (swift_getEnumCaseMultiPayload() == 7)
          {
            sub_1ABAB1154();
            v143 = v72;
            sub_1ABD71944(v33);
            v73 = v71;
            v74 = *v71;
            v75 = v73[1];
            sub_1ABA7D9B8();
            v76 = swift_allocObject();
            *(v76 + 16) = v74;
            *(v76 + 24) = v75;
            goto LABEL_41;
          }

          sub_1ABA9FA88();
          v77 = v12;

          sub_1ABD6DC28(v71);
        }

        else
        {
          sub_1ABA9FA88();
          v77 = v12;
        }

        sub_1ABAD219C(&qword_1EB4D1318, &unk_1ABF334A0);
        sub_1ABAA267C();
        v12 = swift_allocObject();
        v104 = sub_1ABA84254(v12);
        sub_1ABD71A88(v104);
        v106 = _Records_GDEntityClass_records;
        if (!_Records_GDEntityClass_records)
        {
          goto LABEL_59;
        }

        v107 = v105;
        sub_1ABA7D028();
        v140 = swift_allocObject();
        sub_1ABA7D028();
        v108 = swift_allocObject();
        sub_1ABA8882C(*(v106 + 0x270), *(v106 + 0x278), *(v106 + 0x280), v155);
        v109 = sub_1ABA7F638();
        sub_1ABAA4620(v110, v109);
        *(v108 + 16) = v107;
        v12[4] = v108 | 0x4000000000000000;
        sub_1ABA7D9B8();
        v111 = swift_allocObject();
        MEMORY[0x1EEE9AC00](v111);
        sub_1ABA7DBD0();

        v112 = sub_1ABAA31B8();
        v11 = v77;
        sub_1ABE0F568(v112, v113, v69);
        v150 = v77;
        if (v77)
        {
          sub_1ABD71944(v154);

          swift_bridgeObjectRelease_n();
          sub_1ABA7D9B8();
          swift_deallocUninitializedObject();
          sub_1ABD71A94(v12[4]);

          v12[2] = 0;

          sub_1ABA7D028();
          swift_deallocUninitializedObject();
          goto LABEL_47;
        }

        v115 = v114;
        sub_1ABA96A50();
        v143 = v116;

        v117 = sub_1ABD7343C(v115);
        v119 = v118;

        *(v111 + 16) = v117;
        *(v111 + 24) = v119;
        v12[5] = v111 | 0x5000000000000000;
        sub_1ABD71944(v154);

        v76 = v140;
        v140[1].n128_u64[0] = v12;
        v12 = v150;
        v23 = v151;
        v27 = a10;
LABEL_41:
        v33 = v143 | v76;
        continue;
      }

      break;
    }

    if (v36 == 13)
    {
      v50 = *v35;
      sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
      sub_1ABAA5964();
      v51 = swift_allocObject();
      sub_1ABD71A88(v51);
      if (v149 >= 34)
      {
        sub_1ABA9FA88();
        v53 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_56;
        }

        v54 = v52;
        sub_1ABAA4EC8();
        v46 = swift_allocObject();
        v55 = *(v53 + 100);
        v56 = *(v53 + 101);
        v57 = v53[396];

        sub_1ABA91D48(v57, v55, v56, v155);
        v54[2] = sub_1ABA7C4D0();
        v54[3].n128_u64[0] = v58;
        v54[3].n128_u64[1] = v59;
        v54[4].n128_u16[0] = v60;
        *(v46 + 16) = v54;
        MEMORY[0x1EEE9AC00](v61);
        sub_1ABA7DBD0();

        v62 = sub_1ABAA31B8();
        v11 = v12;
        sub_1ABE0F568(v62, v63, v50);
        if (!v12)
        {
          v47 = v64;

          v65 = sub_1ABD7343C(v47);
          v48 = v66;

          *(v46 + 24) = v65;
          *(v46 + 32) = v48;
          sub_1ABA8ADA4();
          if (v68)
          {
            sub_1ABA7BBEC(v67);
            sub_1ABADB5D8();
            a10 = v120;
          }

          v23 = v151;

          v49 = 0x5000000000000004;
          goto LABEL_36;
        }

        sub_1ABD71944(v154);

        v133 = *(v46 + 16);

        sub_1ABAA4EC8();
        swift_deallocUninitializedObject();
        goto LABEL_47;
      }

      __break(1u);
      goto LABEL_54;
    }

    if (v36 != 12)
    {
      v127 = *v35;
      v128 = v35[8];

      sub_1ABAA3D44();
      sub_1ABF24AB4();
      sub_1ABA8B914();
      v129 = sub_1ABA8F71C();
      MEMORY[0x1AC5A9410](v129);
      LOBYTE(v155[0]) = v36;
      v155[1] = v127;
      v156 = v128;
      sub_1ABA9FDC0();
      sub_1ABA7F0D0();
      MEMORY[0x1AC5A9410](0xD000000000000016);
      sub_1ABD718B8();
      sub_1ABA7D104();
      v130 = swift_allocError();
      sub_1ABA8A654(v130, v131);
      sub_1ABD71944(v33);

      goto LABEL_47;
    }

    v37 = *v35;
    v38 = *(*v35 + 16);
    v143 = v37;
    if (v38)
    {
      sub_1ABAA1384();
      v40 = v141;
      sub_1ABB2D38C(v37 + v39, v141);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v154 = v33;
        v41 = v40;
        v42 = *v40;
        v43 = v41[1];
        sub_1ABA7D9B8();
        v44 = swift_allocObject();
        v45 = v27;
        v46 = v44;
        *(v44 + 16) = v42;
        *(v44 + 24) = v43;
        v47 = *(v45 + 16);
        v11 = *(v45 + 24);
        a10 = v45;
        v48 = (v47 + 1);
        sub_1ABA83A08();

        if (v47 >= v11 >> 1)
        {
          sub_1ABAA4A70();
          sub_1ABADB5D8();
          a10 = v122;
        }

        v49 = 0x4000000000000004;
        sub_1ABA83A08();

LABEL_36:
        v103 = v49 | v46;
        v27 = a10;
        *(a10 + 16) = v48;
        *(a10 + 8 * v47 + 32) = v103;
        v33 = v154;
        continue;
      }

      sub_1ABD6DC28(v40);
    }

    else
    {
    }

    break;
  }

  if (v149 < 33)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  sub_1ABA9FA88();
  v78 = _Records_GDEntityPredicate_records;
  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_58;
  }

  v150 = v12;
  sub_1ABA807B4();
  v46 = swift_allocObject();
  sub_1ABA91D48(v78[384], *(v78 + 97), *(v78 + 98), v155);
  *(v46 + 16) = sub_1ABA7C4D0();
  *(v46 + 32) = v79;
  *(v46 + 40) = v80;
  *(v46 + 48) = v81;
  sub_1ABAD219C(&qword_1EB4D1318, &unk_1ABF334A0);
  sub_1ABAA4EC8();
  v140 = swift_allocObject();
  sub_1ABD71A88(v140);
  sub_1ABAA267C();
  v82 = swift_allocObject();
  v83 = sub_1ABA84254(v82);
  sub_1ABD71A88(v83);
  if (!_Records_GDEntityClass_records)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:

    __break(1u);
    return;
  }

  v85 = v84;
  sub_1ABA7D028();
  v138 = swift_allocObject();
  sub_1ABA7D028();
  v86 = swift_allocObject();
  sub_1ABA9F004();
  v87 = sub_1ABA7F638();
  sub_1ABAA4620(v88, v87);
  *(v86 + 16) = v85;
  v139 = v82;
  *(v82 + 32) = v86 | 0x4000000000000000;
  sub_1ABA7D9B8();
  v89 = swift_allocObject();
  sub_1ABA8BB28();
  MEMORY[0x1EEE9AC00](v90);
  sub_1ABA7DBD0();
  v91 = v143;

  v92 = sub_1ABAA31B8();
  v11 = v150;
  sub_1ABE0F568(v92, v93, v91);
  v48 = v11;
  if (!v11)
  {
    v47 = v94;
    v150 = 0;

    v95 = sub_1ABD7343C(v47);
    v97 = v96;

    *(v89 + 16) = v95;
    *(v89 + 24) = v97;
    v98 = v139;
    *(v139 + 40) = v89 | 0x5000000000000000;
    *(v138 + 16) = v98;
    sub_1ABA96A50();
    v101 = v140;
    v140[2].n128_u64[0] = v100 | v99;
    *(v46 + 56) = v101;
    sub_1ABA8ADA4();
    if (v68)
    {
      sub_1ABA7BBEC(v102);
      sub_1ABADB5D8();
      a10 = v121;
    }

    v23 = v151;
    sub_1ABA83A08();

    v49 = 4;
    v12 = v150;
    goto LABEL_36;
  }

  sub_1ABD71944(v154);

  swift_bridgeObjectRelease_n();
  sub_1ABAB6968();
  sub_1ABA7D9B8();
  swift_deallocUninitializedObject();
  sub_1ABD71A94(*(v139 + 32));

  sub_1ABAA048C();

  sub_1ABA7D028();
  swift_deallocUninitializedObject();
  v140[1].n128_u64[0] = 0;

  v134 = *(v46 + 24);
  v135 = *(v46 + 40);

  sub_1ABA807B4();
  swift_deallocUninitializedObject();
LABEL_47:
  sub_1ABA7BC90();
}

void sub_1ABD691F4()
{
  sub_1ABA7BCA8();
  v351 = v0;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D9150, &qword_1ABF5EB98);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v339 - v7;
  v362 = type metadata accessor for KGQ.Value();
  v9 = sub_1ABA7BB64(v362);
  v346 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7C068();
  v363 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v364 = &v339 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v339 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v343 = &v339 - v20;
  v350 = sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1ABF5EB80;
  if (!_Records_GDEntityClass_records)
  {
    goto LABEL_180;
  }

  v22 = v21;
  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x378), *(_Records_GDEntityClass_records + 0x380), *(_Records_GDEntityClass_records + 0x388), v373);
  v23 = sub_1ABA7F638();
  sub_1ABAA4620(v24, v23);
  if (!_Records_GDEntityClass_records)
  {
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x420), *(_Records_GDEntityClass_records + 0x428), *(_Records_GDEntityClass_records + 0x430), v373);
  *(v22 + 72) = sub_1ABA7F638();
  *(v22 + 88) = v25;
  *(v22 + 96) = v26;
  *(v22 + 104) = v27;
  if (!_Records_GDEntityClass_records)
  {
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x510), *(_Records_GDEntityClass_records + 0x518), *(_Records_GDEntityClass_records + 0x520), v373);
  *(v22 + 112) = sub_1ABA7F638();
  *(v22 + 128) = v28;
  *(v22 + 136) = v29;
  *(v22 + 144) = v30;
  if (!_Records_GDEntityClass_records)
  {
LABEL_183:
    __break(1u);
    goto LABEL_184;
  }

  sub_1ABA897B8(_Records_GDEntityClass_records);
  *(v22 + 152) = sub_1ABA7F638();
  *(v22 + 168) = v31;
  *(v22 + 176) = v32;
  *(v22 + 184) = v33;
  if (!_Records_GDEntityClass_records)
  {
LABEL_184:
    __break(1u);
    goto LABEL_185;
  }

  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x690), *(_Records_GDEntityClass_records + 0x698), *(_Records_GDEntityClass_records + 0x6A0), v373);
  *(v22 + 192) = sub_1ABA7F638();
  *(v22 + 208) = v34;
  *(v22 + 216) = v35;
  *(v22 + 224) = v36;
  if (!_Records_GDEntityClass_records)
  {
LABEL_185:
    __break(1u);
    goto LABEL_186;
  }

  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6A8), *(_Records_GDEntityClass_records + 0x6B0), *(_Records_GDEntityClass_records + 0x6B8), v373);
  *(v22 + 232) = sub_1ABA7F638();
  *(v22 + 248) = v37;
  *(v22 + 256) = v38;
  *(v22 + 264) = v39;
  if (!_Records_GDEntityClass_records)
  {
LABEL_186:
    __break(1u);
    goto LABEL_187;
  }

  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6C0), *(_Records_GDEntityClass_records + 0x6C8), *(_Records_GDEntityClass_records + 0x6D0), v373);
  *(v22 + 272) = sub_1ABA7F638();
  *(v22 + 288) = v40;
  *(v22 + 296) = v41;
  *(v22 + 304) = v42;
  if (!_Records_GDEntityClass_records)
  {
LABEL_187:
    __break(1u);
    goto LABEL_188;
  }

  v2 = v22 + 312;
  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6D8), *(_Records_GDEntityClass_records + 0x6E0), *(_Records_GDEntityClass_records + 0x6E8), v373);
  *(v22 + 312) = sub_1ABA7F638();
  *(v22 + 328) = v43;
  *(v22 + 336) = v44;
  *(v22 + 344) = v45;
  if (!_Records_GDEntityClass_records)
  {
LABEL_188:
    __break(1u);
    goto LABEL_189;
  }

  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x6F0), *(_Records_GDEntityClass_records + 0x6F8), *(_Records_GDEntityClass_records + 0x700), v373);
  *(v22 + 352) = sub_1ABA7F638();
  *(v22 + 368) = v46;
  *(v22 + 376) = v47;
  *(v22 + 384) = v48;
  if (!_Records_GDEntityClass_records)
  {
LABEL_189:
    __break(1u);
    goto LABEL_190;
  }

  v2 = v22 + 392;
  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x708), *(_Records_GDEntityClass_records + 0x710), *(_Records_GDEntityClass_records + 0x718), v373);
  *(v22 + 392) = sub_1ABA7F638();
  *(v22 + 408) = v49;
  *(v22 + 416) = v50;
  *(v22 + 424) = v51;
  if (!_Records_GDEntityClass_records)
  {
LABEL_190:
    __break(1u);
    goto LABEL_191;
  }

  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x720), *(_Records_GDEntityClass_records + 0x728), *(_Records_GDEntityClass_records + 0x730), v373);
  *(v22 + 432) = sub_1ABA7F638();
  *(v22 + 448) = v52;
  *(v22 + 456) = v53;
  *(v22 + 464) = v54;
  if (!_Records_GDEntityClass_records)
  {
LABEL_191:
    __break(1u);
    goto LABEL_192;
  }

  v2 = v22 + 472;
  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x810), *(_Records_GDEntityClass_records + 0x818), *(_Records_GDEntityClass_records + 0x820), v373);
  *(v22 + 472) = sub_1ABA7F638();
  *(v22 + 488) = v55;
  *(v22 + 496) = v56;
  *(v22 + 504) = v57;
  if (!_Records_GDEntityClass_records)
  {
LABEL_192:
    __break(1u);
    goto LABEL_193;
  }

  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7E0), *(_Records_GDEntityClass_records + 0x7E8), *(_Records_GDEntityClass_records + 0x7F0), v373);
  *(v22 + 512) = sub_1ABA7F638();
  *(v22 + 528) = v58;
  *(v22 + 536) = v59;
  *(v22 + 544) = v60;
  if (!_Records_GDEntityClass_records)
  {
LABEL_193:
    __break(1u);
    goto LABEL_194;
  }

  v2 = v22 + 552;
  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x738), *(_Records_GDEntityClass_records + 0x740), *(_Records_GDEntityClass_records + 0x748), v373);
  *(v22 + 552) = sub_1ABA7F638();
  *(v22 + 568) = v61;
  *(v22 + 576) = v62;
  *(v22 + 584) = v63;
  if (!_Records_GDEntityClass_records)
  {
LABEL_194:
    __break(1u);
    goto LABEL_195;
  }

  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x750), *(_Records_GDEntityClass_records + 0x758), *(_Records_GDEntityClass_records + 0x760), v373);
  *(v22 + 592) = sub_1ABA7F638();
  *(v22 + 608) = v64;
  *(v22 + 616) = v65;
  *(v22 + 624) = v66;
  if (!_Records_GDEntityClass_records)
  {
LABEL_195:
    __break(1u);
    goto LABEL_196;
  }

  v2 = v22 + 632;
  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x768), *(_Records_GDEntityClass_records + 0x770), *(_Records_GDEntityClass_records + 0x778), v373);
  *(v22 + 632) = sub_1ABA7F638();
  *(v22 + 648) = v67;
  *(v22 + 656) = v68;
  *(v22 + 664) = v69;
  if (!_Records_GDEntityClass_records)
  {
LABEL_196:
    __break(1u);
    goto LABEL_197;
  }

  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x780), *(_Records_GDEntityClass_records + 0x788), *(_Records_GDEntityClass_records + 0x790), v373);
  *(v22 + 672) = sub_1ABA7F638();
  *(v22 + 688) = v70;
  *(v22 + 696) = v71;
  *(v22 + 704) = v72;
  if (!_Records_GDEntityClass_records)
  {
LABEL_197:
    __break(1u);
    goto LABEL_198;
  }

  v2 = v22 + 712;
  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x798), *(_Records_GDEntityClass_records + 0x7A0), *(_Records_GDEntityClass_records + 0x7A8), v373);
  *(v22 + 712) = sub_1ABA7F638();
  *(v22 + 728) = v73;
  *(v22 + 736) = v74;
  *(v22 + 744) = v75;
  if (!_Records_GDEntityClass_records)
  {
LABEL_198:
    __break(1u);
    goto LABEL_199;
  }

  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7B0), *(_Records_GDEntityClass_records + 0x7B8), *(_Records_GDEntityClass_records + 0x7C0), v373);
  *(v22 + 752) = sub_1ABA7F638();
  *(v22 + 768) = v76;
  *(v22 + 776) = v77;
  *(v22 + 784) = v78;
  if (!_Records_GDEntityClass_records)
  {
LABEL_199:
    __break(1u);
    goto LABEL_200;
  }

  v2 = v22 + 792;
  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7C8), *(_Records_GDEntityClass_records + 0x7D0), *(_Records_GDEntityClass_records + 0x7D8), v373);
  *(v22 + 792) = sub_1ABA7F638();
  *(v22 + 808) = v79;
  *(v22 + 816) = v80;
  *(v22 + 824) = v81;
  if (!_Records_GDEntityClass_records)
  {
LABEL_200:
    __break(1u);
    goto LABEL_201;
  }

  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7F8), *(_Records_GDEntityClass_records + 0x800), *(_Records_GDEntityClass_records + 0x808), v373);
  *(v22 + 832) = sub_1ABA7F638();
  *(v22 + 848) = v82;
  *(v22 + 856) = v83;
  *(v22 + 864) = v84;
  if (!_Records_GDEntityClass_records)
  {
LABEL_201:
    __break(1u);
    goto LABEL_202;
  }

  v2 = v22 + 872;
  sub_1ABA897B8(_Records_GDEntityClass_records);
  *(v22 + 872) = sub_1ABA7F638();
  *(v22 + 888) = v85;
  *(v22 + 896) = v86;
  *(v22 + 904) = v87;
  if (!_Records_GDEntityClass_records)
  {
LABEL_202:
    __break(1u);
    goto LABEL_203;
  }

  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB40), *(_Records_GDEntityClass_records + 0xB48), *(_Records_GDEntityClass_records + 0xB50), v373);
  *(v22 + 912) = sub_1ABA7F638();
  *(v22 + 928) = v88;
  *(v22 + 936) = v89;
  *(v22 + 944) = v90;
  if (!_Records_GDEntityClass_records)
  {
LABEL_203:
    __break(1u);
    goto LABEL_204;
  }

  v2 = v22 + 952;
  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB58), *(_Records_GDEntityClass_records + 0xB60), *(_Records_GDEntityClass_records + 0xB68), v373);
  *(v22 + 952) = sub_1ABA7F638();
  *(v22 + 968) = v91;
  *(v22 + 976) = v92;
  *(v22 + 984) = v93;
  if (!_Records_GDEntityClass_records)
  {
LABEL_204:
    __break(1u);
    goto LABEL_205;
  }

  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB70), *(_Records_GDEntityClass_records + 0xB78), *(_Records_GDEntityClass_records + 0xB80), v373);
  *(v22 + 992) = sub_1ABA7F638();
  *(v22 + 1008) = v94;
  *(v22 + 1016) = v95;
  *(v22 + 1024) = v96;
  v342 = v18;
  v2 = _Records_GDEntityClass_records;
  if (!_Records_GDEntityClass_records)
  {
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
    goto LABEL_215;
  }

  sub_1ABA7D028();
  v97 = swift_allocObject();
  sub_1ABA8882C(*(v2 + 0xBE8), *(v2 + 0xBF0), *(v2 + 0xBF8), v373);
  *(v22 + 1032) = sub_1ABA7F638();
  *(v22 + 1048) = v98;
  *(v22 + 1056) = v99;
  *(v22 + 1064) = v100;
  *(v97 + 16) = v22;
  sub_1ABA9A57C();
  sub_1ABADB5D8();
  v102 = v101;
  v104 = *(v101 + 16);
  v103 = *(v101 + 24);
  v105 = v104 + 1;
  if (v104 >= v103 >> 1)
  {
    goto LABEL_167;
  }

LABEL_28:
  v344 = v8;
  v345 = v4;
  *(v102 + 16) = v105;
  v359 = v102;
  sub_1ABAA003C(v97 | 0x4000000000000000);
  sub_1ABA9EAD4();
  v2 = v1;
  if (v1)
  {
    goto LABEL_217;
  }

  v4 = 0;
  v370 = 0;
  v355 = 0;
  v356 = 0;
  v371 = 0;
  v369 = 0;
  v372 = 0;
  v367 = 0;
  v352 = 0;
  v368 = 0;
  v106 = 0;
  v1 = v373[0];
  v108 = v373[0] + 16;
  v107 = *(v373[0] + 16);
  v366 = 3481;
  v365 = 4281;
  v347 = 1;
  v349 = xmmword_1ABF34060;
  v358 = MEMORY[0x1E69E7CC0];
  v97 = v362;
  v109 = v363;
  v360 = xmmword_1ABF34740;
  v357 = v373[0];
  v354 = v373[0] + 16;
  v353 = v107;
LABEL_30:
  v110 = (v108 + 24 * v106);
  while (2)
  {
    if (v107 == v106)
    {

      if (!*(sub_1ABA83A08() + 16))
      {

        v289 = v359;
LABEL_145:
        v315 = v372;
        if (v372)
        {
          sub_1ABA7D9B8();
          v316 = swift_allocObject();
          sub_1ABAD219C(&qword_1EB4D9160, qword_1ABF5EBB0);
          sub_1ABAA5964();
          v317 = swift_allocObject();
          sub_1ABA7ADB8(v317);
          *(v318 + 32) = v369;
          *(v318 + 40) = v315;
          v319 = v352;
          *(v318 + 48) = v367;
          *(v318 + 56) = v319;
          *(v318 + 64) = v368;
          *(v316 + 16) = v318;
          sub_1ABAA5964();
          v320 = swift_allocObject();
          sub_1ABA7ADB8(v320);
          v321 = v370;
          *(v322 + 32) = v4;
          *(v322 + 40) = v321;
          v323 = v356;
          *(v322 + 48) = v355;
          *(v322 + 56) = v323;
          *(v322 + 64) = v371;
          *(v316 + 24) = v322;
          v324 = 0xB000000000000000;
          if (v347)
          {
            v324 = 0xA000000000000004;
          }

          v325 = v324 | v316;
          v327 = *(v289 + 16);
          v326 = *(v289 + 24);
          if (v327 >= v326 >> 1)
          {
            sub_1ABA7BBEC(v326);
            sub_1ABADB5D8();
            v289 = v337;
          }

          v328 = v345;
          *(v289 + 16) = v327 + 1;
          *(v289 + 8 * v327 + 32) = v325;
        }

        else
        {
          sub_1ABA819E4();
          v328 = v345;
        }

        sub_1ABA7D028();
        *(swift_allocObject() + 16) = v289;
        sub_1ABA96A50();
        *v328 = v329 | v330;
        goto LABEL_153;
      }

      sub_1ABAA5964();
      v286 = swift_allocObject();
      sub_1ABA7ADB8(v286);
      v288 = _Records_GDEntityClass_records;
      v289 = v359;
      if (_Records_GDEntityClass_records)
      {
        v290 = v287;
        sub_1ABA7D028();
        v291 = swift_allocObject();
        sub_1ABA9ED70();
        v290[2] = sub_1ABA7F638();
        v290[3].n128_u64[0] = v292;
        v290[3].n128_u64[1] = v293;
        v290[4].n128_u8[0] = v294;
        *(v291 + 16) = v290;
        if ((sub_1ABAA01C4() & 1) == 0)
        {
          sub_1ABA7E974();
          sub_1ABADB5D8();
          v288 = v335;
        }

        v295 = v288;
        v296 = *(v288 + 16);
        v297 = v295;
        v298 = *(v295 + 24);
        if (v296 >= v298 >> 1)
        {
          sub_1ABA95524(v298);
          sub_1ABADB5D8();
          v297 = v336;
        }

        *(v297 + 16) = v296 + 1;
        *(v297 + 8 * v296 + 32) = v291 | 0x4000000000000000;
        if (_Records_GDEntityPredicate_records)
        {
          sub_1ABA807B4();
          v299 = swift_allocObject();
          sub_1ABA9EECC();
          v300 = sub_1ABA7C4D0();
          sub_1ABAA0ACC(v301, v300);
          sub_1ABAD219C(&qword_1EB4D1318, &unk_1ABF334A0);
          sub_1ABAA4EC8();
          v302 = swift_allocObject();
          sub_1ABA7ADB8(v302);
          sub_1ABA7D028();
          *(swift_allocObject() + 16) = v297;
          sub_1ABAB5128();
          v302[2].n128_u64[0] = v304 | (v303 + 9);
          *(v299 + 56) = v302;
          v306 = *(v289 + 16);
          v305 = *(v289 + 24);
          if (v306 >= v305 >> 1)
          {
            sub_1ABA95524(v305);
            sub_1ABADB5D8();
            v289 = v338;
          }

          *(v289 + 16) = v306 + 1;
          *(v289 + 8 * v306 + 32) = v299 | 4;
          goto LABEL_145;
        }

LABEL_216:
        __break(1u);
LABEL_217:

        __break(1u);
        return;
      }

LABEL_215:
      __break(1u);
      goto LABEL_216;
    }

    v111 = v110;
    v103 = *(v1 + 16);
    if (v106 >= v103)
    {
      goto LABEL_160;
    }

    ++v106;
    v110 = v111 + 3;
    v8 = *(v111 + 16);
    switch(*(v111 + 16))
    {
      case 8:
        v361 = v2;
        v2 = *v110;
        v340 = sub_1ABAD219C(&qword_1EB4D1318, &unk_1ABF334A0);
        sub_1ABAA267C();
        *(swift_allocObject() + 16) = v349;
        sub_1ABAA5964();
        v190 = swift_allocObject();
        sub_1ABA7ADB8(v190);
        v192 = _Records_GDEntityClass_records;
        if (!_Records_GDEntityClass_records)
        {
          goto LABEL_209;
        }

        v193 = v191;
        sub_1ABA7D028();
        v194 = swift_allocObject();
        sub_1ABA7D028();
        swift_allocObject();
        v348 = *(v192 + 0x278);
        v195 = *(v192 + 0x280);
        v196 = *(v192 + 0x270);

        sub_1ABA8882C(v196, v348, v195, v373);
        v197 = sub_1ABA7F638();
        sub_1ABAB2B6C(v198, v197);
        sub_1ABA7D9B8();
        v199 = swift_allocObject();
        sub_1ABA8BB28();
        MEMORY[0x1EEE9AC00](v200);
        sub_1ABA83A60();
        sub_1ABAA2D48(v201);

        v202 = sub_1ABAA31B8();
        v203 = v361;
        sub_1ABE0F568(v202, v204, v2);
        v361 = v203;
        if (v203)
        {
          sub_1ABA7FD0C();

          sub_1ABA893FC();
          sub_1ABA819E4();
          sub_1ABA909CC();
          sub_1ABAA0778();
          sub_1ABA83A08();

          sub_1ABA7D9B8();
          swift_deallocUninitializedObject();
          sub_1ABD71A94(*(v192 + 0x20));

          sub_1ABAA048C();

          goto LABEL_158;
        }

        v205 = sub_1ABAB6968();
        sub_1ABD7343C(v205);
        sub_1ABD71AA0();
        *(v199 + 16) = v199;
        *(v199 + 24) = v193;
        sub_1ABA9F4F8();
        *(v192 + 0x28) = v206;
        *(v194 + 16) = v192;
        sub_1ABA96A50();
        v208 = v194 | v207;
        v209 = v344;
        v348 = v2;
        sub_1ABB2BAF8(v2);
        if (sub_1ABA7E1E0(v209, 1, v362) == 1)
        {
          sub_1ABD6DBC0(v209);
        }

        else
        {
          v225 = v209;
          v226 = v343;
          sub_1ABD71960(v225, v343);
          v227 = v342;
          sub_1ABD71960(v226, v342);
          if (swift_getEnumCaseMultiPayload() == 7)
          {

            v228 = *v227;
            v229 = v227[1];
            sub_1ABA7D9B8();
            v230 = swift_allocObject();
            *(v230 + 16) = v228;
            *(v230 + 24) = v229;
            sub_1ABAB1154();
            v208 = v231 | v232;
          }

          else
          {
            sub_1ABD6DC28(v227);
          }
        }

        v341 = v208;

        v259 = sub_1ABD77144(v258);

        if (v259)
        {
          sub_1ABA7D9B8();
          v260 = swift_allocObject();
          v261 = sub_1ABD7343C(v259);
          v263 = v262;

          sub_1ABAB5128();

          *(v260 + 16) = v261;
          *(v260 + 24) = v263;
          sub_1ABAB1154();
          v341 = v260 | v264;
        }

        v265 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_211;
        }

        sub_1ABA807B4();
        v2 = swift_allocObject();
        sub_1ABA91D48(v265[1392], *(v265 + 349), *(v265 + 350), v373);
        v266 = sub_1ABA7C4D0();
        sub_1ABA8CD40(v267, v266);
        sub_1ABAA4EC8();
        v268 = swift_allocObject();
        sub_1ABA7ADB8(v268);
        v270 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_210;
        }

        v271 = v269;
        sub_1ABA7D028();
        v272 = swift_allocObject();
        sub_1ABA807B4();
        v8 = swift_allocObject();
        sub_1ABA91D48(v270[324], *(v270 + 82), *(v270 + 83), v373);
        *(v8 + 16) = sub_1ABA7C4D0();
        *(v8 + 32) = v273;
        *(v8 + 40) = v274;
        *(v8 + 48) = v275;
        sub_1ABAA4EC8();
        v276 = swift_allocObject();
        sub_1ABA7ADB8(v276);
        *(v277 + 32) = v341;
        *(v8 + 56) = v277;
        *(v272 + 16) = v8 | 4;
        *(v271 + 32) = v272 | 0x1000000000000000;
        *(v2 + 56) = v271;
        sub_1ABA9E354();
        v105 = *(v278 + 16);
        v1 = *(v278 + 24);
        v108 = v105 + 1;
        sub_1ABAB5128();

        if (v105 >= v1 >> 1)
        {
          sub_1ABAA4A70();
          sub_1ABADB5D8();
          v359 = v284;
        }

        v97 = v362;
        goto LABEL_130;
      case 9:
      case 0xB:
      case 0xC:
      case 0xD:
      case 0xE:
      case 0xF:
      case 0x10:
      case 0x13:
      case 0x14:
        goto LABEL_142;
      case 0xA:
        v361 = v2;
        v2 = *v110;
        v341 = sub_1ABAD219C(&qword_1EB4D1318, &unk_1ABF334A0);
        sub_1ABAA267C();
        *(swift_allocObject() + 16) = v349;
        sub_1ABAA5964();
        v164 = swift_allocObject();
        sub_1ABA7ADB8(v164);
        v166 = _Records_GDEntityClass_records;
        if (!_Records_GDEntityClass_records)
        {
          goto LABEL_207;
        }

        v167 = v165;
        sub_1ABA7D028();
        v348 = swift_allocObject();
        sub_1ABA7D028();
        swift_allocObject();
        v168 = *(v166 + 0xB0 + 8);
        v340 = *(v166 + 0xB0);
        v169 = *(v166 + 0xA8);

        sub_1ABA8882C(v169, v340, v168, v373);
        v170 = sub_1ABA7F638();
        sub_1ABAB2B6C(v171, v170);
        sub_1ABA7D9B8();
        v172 = swift_allocObject();
        sub_1ABA8BB28();
        MEMORY[0x1EEE9AC00](v173);
        sub_1ABA83A60();
        sub_1ABAA2D48(v174);

        v175 = sub_1ABAA31B8();
        v176 = v361;
        sub_1ABE0F568(v175, v177, v2);
        v361 = v176;
        if (v176)
        {
          sub_1ABA7FD0C();

          sub_1ABA893FC();
          sub_1ABA819E4();
          sub_1ABA909CC();
          sub_1ABAA0778();
          sub_1ABA83A08();

          sub_1ABA7D9B8();
          swift_deallocUninitializedObject();
          sub_1ABD71A94(*(v166 + 0x20));

          sub_1ABAA048C();

          sub_1ABA8A400();
          goto LABEL_158;
        }

        v178 = sub_1ABAB6968();
        sub_1ABD7343C(v178);
        sub_1ABD71AA0();
        *(v172 + 16) = v172;
        *(v172 + 24) = v167;
        sub_1ABA9F4F8();
        v179 = v166;
        *(v166 + 0x28) = v180;
        v181 = v348;
        v348[1].n128_u64[0] = v179;

        v183 = sub_1ABD77144(v182);

        if (v183)
        {
          sub_1ABA7D9B8();
          v184 = swift_allocObject();
          v185 = sub_1ABD7343C(v183);
          v187 = v186;

          *(v184 + 16) = v185;
          *(v184 + 24) = v187;
          sub_1ABAB1154();
          v189 = v184 | v188;
        }

        else
        {
          sub_1ABA96A50();
          v189 = v181 | v233;
        }

        v340 = v189;
        v348 = v2;
        v234 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_214;
        }

        sub_1ABA807B4();
        v235 = swift_allocObject();
        sub_1ABA91D48(v234[1080], *(v234 + 271), *(v234 + 272), v373);
        v235[1] = sub_1ABA7C4D0();
        v235[2].n128_u64[0] = v236;
        v235[2].n128_u64[1] = v237;
        v339 = v235;
        v235[3].n128_u16[0] = v238;
        sub_1ABAA4EC8();
        v2 = swift_allocObject();
        sub_1ABA7ADB8(v2);
        sub_1ABAA267C();
        v8 = swift_allocObject();
        *(v8 + 16) = v349;
        sub_1ABAA5964();
        v239 = swift_allocObject();
        sub_1ABA7ADB8(v239);
        v241 = _Records_GDEntityClass_records;
        if (!_Records_GDEntityClass_records)
        {
          goto LABEL_213;
        }

        v242 = v240;
        sub_1ABA7D028();
        v243 = swift_allocObject();
        sub_1ABA8882C(*(v241 + 0x210), *(v241 + 0x218), *(v241 + 0x220), v373);
        v242[2] = sub_1ABA7F638();
        v242[3].n128_u64[0] = v244;
        v242[3].n128_u64[1] = v245;
        v242[4].n128_u8[0] = v246;
        *(v243 + 16) = v242;
        *(v8 + 32) = v243 | 0x4000000000000000;
        v247 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_212;
        }

        sub_1ABA7D028();
        v248 = swift_allocObject();
        sub_1ABA807B4();
        v249 = swift_allocObject();
        sub_1ABA91D48(v247[612], *(v247 + 154), *(v247 + 155), v373);
        v250 = sub_1ABA7C4D0();
        sub_1ABAA0ACC(v251, v250);
        sub_1ABAA4EC8();
        v252 = swift_allocObject();
        sub_1ABA7ADB8(v252);
        *(v253 + 32) = v340;
        *(v249 + 56) = v253;
        *(v8 + 40) = v249 | 4;
        *(v248 + 16) = v8;
        sub_1ABA9F290();
        v255 = v2;
        *(v2 + 32) = v248 | (v254 + 9);
        v2 = v339;
        v339[3].n128_u64[1] = v255;
        sub_1ABA9E354();
        v105 = *(v256 + 16);
        v1 = *(v256 + 24);
        v108 = v105 + 1;

        if (v105 >= v1 >> 1)
        {
          sub_1ABAA4A70();
          sub_1ABADB5D8();
          v359 = v257;
        }

LABEL_130:
        sub_1ABAB5128();

        v109 = 4;
        goto LABEL_131;
      case 0x11:
        v131 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_206;
        }

        v132 = *v110;
        sub_1ABAA5964();
        v133 = swift_allocObject();
        v134 = *(v131 + 457);
        v135 = *(v131 + 458);
        v136 = v131[1824];
        v109 = v133;

        sub_1ABA91D48(v136, v134, v135, v373);
        v137 = sub_1ABA7C4D0();
        sub_1ABAB67D0(v138, v137);
        MEMORY[0x1EEE9AC00](v139);
        sub_1ABA83A60();
        sub_1ABAA2D48(v140);

        v141 = sub_1ABAA31B8();
        v1 = v2;
        sub_1ABE0F568(v141, v142, v132);
        if (v2)
        {
          goto LABEL_154;
        }

        sub_1ABA89534();
        v143 = sub_1ABAB6968();
        v144 = sub_1ABD7343C(v143);
        v108 = v145;

        *(v109 + 56) = v144;
        *(v109 + 64) = v108;
        v361 = v109;
        if ((sub_1ABAA01C4() & 1) == 0)
        {
          sub_1ABA7E974();
          sub_1ABADB5D8();
          v109 = v280;
        }

        sub_1ABA8A998();
        v147 = *(v109 + 16);
        v146 = *(v109 + 24);
        v8 = v147 + 1;
        if (v147 >= v146 >> 1)
        {
          sub_1ABA95524(v146);
          sub_1ABADB5D8();
          v109 = v281;
        }

        v105 = 0x6000000000000000;
        goto LABEL_69;
      case 0x12:
        v148 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_208;
        }

        v149 = *v110;
        sub_1ABAA5964();
        v150 = swift_allocObject();
        v151 = *(v148 + 460);
        v152 = *(v148 + 461);
        v153 = v148[1836];
        v109 = v150;

        v154 = v153;
        v108 = v149;
        sub_1ABA91D48(v154, v151, v152, v373);
        v155 = sub_1ABA7C4D0();
        sub_1ABAB67D0(v156, v155);
        MEMORY[0x1EEE9AC00](v157);
        sub_1ABA83A60();
        sub_1ABAA2D48(v158);

        v159 = sub_1ABAA31B8();
        v1 = v2;
        sub_1ABE0F568(v159, v160, v149);
        if (v2)
        {
LABEL_154:

          sub_1ABA819E4();
          sub_1ABA909CC();
          sub_1ABA7FD0C();

          sub_1ABA83A08();

          sub_1ABAA0778();
          v331 = v109;
          v332 = *(v109 + 24);
          v333 = *(v331 + 40);

          sub_1ABAA5964();
          swift_deallocUninitializedObject();
          goto LABEL_153;
        }

        sub_1ABA89534();
        v161 = sub_1ABAB6968();
        sub_1ABD7343C(v161);
        sub_1ABD71AA0();
        *(v109 + 56) = v149;
        *(v109 + 64) = v8;
        v361 = v109;
        if ((sub_1ABAA01C4() & 1) == 0)
        {
          sub_1ABA7E974();
          sub_1ABADB5D8();
          v109 = v282;
        }

        sub_1ABA8A998();
        v105 = 0x6000000000000004;
        v147 = *(v109 + 16);
        v162 = *(v109 + 24);
        v8 = v147 + 1;
        if (v147 >= v162 >> 1)
        {
          sub_1ABA95524(v162);
          sub_1ABADB5D8();
          v109 = v283;
        }

LABEL_69:
        sub_1ABA8A400();

        v163 = v105 | v361;
        *(v109 + 16) = v8;
        v358 = v109;
        *(v109 + 8 * v147 + 32) = v163;
        sub_1ABAB662C();
        goto LABEL_113;
      case 0x15:
        continue;
      case 0x16:
      case 0x17:
        v112 = *v110;
        v114 = sub_1ABD7738C(*(v111 + 16)) == 0x63734174726F73 && v113 == 0xE700000000000000;
        v361 = v2;
        if (v114)
        {
          v347 = 1;
        }

        else
        {
          v347 = sub_1ABF25054();
        }

        v121 = *(v112 + 16);
        if (v121)
        {
          v122 = (*(v346 + 80) + 32) & ~*(v346 + 80);
          v348 = v112;
          v123 = v112 + v122;
          v124 = *(v346 + 72);
          v108 = MEMORY[0x1E69E7CC0];
          do
          {
            v125 = v364;
            sub_1ABB2D38C(v123, v364);
            sub_1ABD71960(v125, v109);
            if (swift_getEnumCaseMultiPayload() == 6)
            {
              v126 = *v109;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1ABA93700();
                sub_1ABADB6A8();
                v108 = v129;
              }

              v128 = *(v108 + 16);
              v127 = *(v108 + 24);
              if (v128 >= v127 >> 1)
              {
                sub_1ABA7BBEC(v127);
                sub_1ABADB6A8();
                v108 = v130;
              }

              *(v108 + 16) = v128 + 1;
              *(v108 + v128 + 32) = v126;
              v97 = v362;
              v109 = v363;
            }

            else
            {
              sub_1ABD6DC28(v109);
            }

            v123 += v124;
            --v121;
          }

          while (v121);
          sub_1ABA8A400();
        }

        else
        {

          v108 = MEMORY[0x1E69E7CC0];
        }

        v105 = 0;
        v8 = *(v108 + 16);
        v2 = v361;
        v109 = v352;
        v210 = v356;
        v211 = v355;
        while (2)
        {
          if (v8 == v105)
          {
            v355 = v211;
            v356 = v210;
            v352 = v109;

            sub_1ABAB662C();
            sub_1ABA8A998();
LABEL_113:
            v107 = v353;
            goto LABEL_30;
          }

          sub_1ABAA8FA8(v4, v370);
          sub_1ABAA8FA8(v369, v372);
          v103 = *(v108 + 16);
          if (v105 >= v103)
          {
            __break(1u);
LABEL_160:
            __break(1u);
            __break(1u);
            __break(1u);
            goto LABEL_161;
          }

          v212 = *(v108 + v105 + 32);
          if (v212 != 18)
          {
            if (v212 == 17)
            {
              v103 = _Records_GDEntityPredicate_records;
              if (_Records_GDEntityPredicate_records)
              {
                if (*(_Records_GDEntityPredicate_records + 436) < v366)
                {
                  if (*(_Records_GDEntityPredicate_records + 437) < v365)
                  {
                    if (_Records_GDEntityPredicate_predicateIds)
                    {
                      v4 = _Records_GDEntityPredicate_records[1740];
                      v369 = sub_1ABF23DD4();
                      v372 = v213;
                      if (_Records_GDEntityPredicate_labels)
                      {
                        v214 = sub_1ABF23DD4();
                        v103 = _Records_GDEntityPredicate_records;
                        if (_Records_GDEntityPredicate_records)
                        {
                          if (*(_Records_GDEntityPredicate_records + 457) >= v366 || *(_Records_GDEntityPredicate_records + 458) >= v365)
                          {
LABEL_165:
                            __break(1u);
                            goto LABEL_166;
                          }

                          v367 = v214;
                          v368 = v4;
                          if (_Records_GDEntityPredicate_predicateIds)
                          {
                            v109 = v215;
                            v371 = _Records_GDEntityPredicate_records[1824];
                            v217 = sub_1ABF23DD4();
                            v370 = v218;
                            if (!_Records_GDEntityPredicate_labels)
                            {
LABEL_176:
                              __break(1u);
                              goto LABEL_177;
                            }

LABEL_111:
                            v4 = v217;
                            v211 = sub_1ABF23DD4();
                            v210 = v224;
                            ++v105;
                            continue;
                          }

LABEL_177:
                          __break(1u);
LABEL_178:
                          __break(1u);
                          goto LABEL_179;
                        }

LABEL_174:
                        __break(1u);
LABEL_175:
                        __break(1u);
                        goto LABEL_176;
                      }

LABEL_173:
                      __break(1u);
                      goto LABEL_174;
                    }

LABEL_170:
                    __break(1u);
LABEL_171:
                    __break(1u);
LABEL_172:
                    __break(1u);
                    goto LABEL_173;
                  }

LABEL_164:
                  __break(1u);
                  __break(1u);
                  __break(1u);
                  goto LABEL_165;
                }

LABEL_161:
                __break(1u);
LABEL_162:
                __break(1u);
                goto LABEL_163;
              }

LABEL_169:
              __break(1u);
              goto LABEL_170;
            }

            sub_1ABA83A08();

            sub_1ABAA0778();
            sub_1ABA7FD0C();

            sub_1ABAA3D44();
            sub_1ABF24AB4();
            v312 = sub_1ABA8F71C();
            MEMORY[0x1AC5A9410](v312);
            v375 = v212;
            sub_1ABF24C54();
            MEMORY[0x1AC5A9410](0x726F7320726F6620, 0xEB00000000794274);
            sub_1ABD718B8();
            sub_1ABA7D104();
            v313 = swift_allocError();
            sub_1ABA8A654(v313, v314);
            goto LABEL_153;
          }

          break;
        }

        v103 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          __break(1u);
          goto LABEL_169;
        }

        if (*(_Records_GDEntityPredicate_records + 436) >= v366)
        {
          goto LABEL_162;
        }

        if (*(_Records_GDEntityPredicate_records + 437) >= v365)
        {
LABEL_163:
          __break(1u);
          goto LABEL_164;
        }

        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_172;
        }

        v4 = _Records_GDEntityPredicate_records[1740];
        v369 = sub_1ABF23DD4();
        v372 = v219;
        if (!_Records_GDEntityPredicate_labels)
        {
          goto LABEL_171;
        }

        v220 = sub_1ABF23DD4();
        v103 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_175;
        }

        if (*(_Records_GDEntityPredicate_records + 460) < v366 && *(_Records_GDEntityPredicate_records + 461) < v365)
        {
          v367 = v220;
          v368 = v4;
          if (_Records_GDEntityPredicate_predicateIds)
          {
            v109 = v221;
            v371 = _Records_GDEntityPredicate_records[1836];
            v217 = sub_1ABF23DD4();
            v370 = v223;
            if (_Records_GDEntityPredicate_labels)
            {
              goto LABEL_111;
            }

            goto LABEL_178;
          }

LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
          goto LABEL_181;
        }

LABEL_166:
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
        __break(1u);
LABEL_167:
        sub_1ABA7BBEC(v103);
        sub_1ABADB5D8();
        v102 = v334;
        goto LABEL_28;
      default:
        if (*(v111 + 16))
        {
LABEL_142:
          v307 = *v110;
          v308 = *(v111 + 32);

          sub_1ABA819E4();
          sub_1ABA909CC();
          sub_1ABA83A08();

          sub_1ABAA0778();
          sub_1ABAA3D44();
          sub_1ABF24AB4();
          sub_1ABA8B914();
          v309 = sub_1ABA8F71C();
          MEMORY[0x1AC5A9410](v309);
          LOBYTE(v373[0]) = v8;
          v373[1] = v307;
          v374 = v308;
          sub_1ABA9FDC0();
          MEMORY[0x1AC5A9410](0x70797420726F6620, 0xEF746E6576653D65);
          sub_1ABD718B8();
          sub_1ABA7D104();
          v310 = swift_allocError();
          sub_1ABA8A654(v310, v311);

          goto LABEL_153;
        }

        v115 = *v110;
        sub_1ABA7D9B8();
        v116 = v2;
        v2 = swift_allocObject();
        sub_1ABA8BB28();
        MEMORY[0x1EEE9AC00](v117);
        sub_1ABAA2D48(&v339);
        swift_bridgeObjectRetain_n();
        v1 = v116;
        sub_1ABE0F568(sub_1ABD71A60, (&v339 - 4), v115);
        v361 = v116;
        if (!v116)
        {
          v348 = v115;

          v118 = sub_1ABAB6968();
          sub_1ABD7343C(v118);
          sub_1ABD71AA0();
          *(v2 + 16) = 0;
          *(v2 + 24) = v8;
          sub_1ABA9E354();
          v105 = *(v119 + 16);
          v120 = *(v119 + 24);
          v108 = v105 + 1;
          if (v105 >= v120 >> 1)
          {
            sub_1ABA7BBEC(v120);
            sub_1ABADB5D8();
            v359 = v285;
          }

          v109 = 0x5000000000000000;
LABEL_131:
          sub_1ABA8A400();

          v279 = v359;
          *(v359 + 16) = v108;
          *(v279 + 8 * v105 + 32) = v109 | v2;
          sub_1ABAB662C();
          sub_1ABA8A998();
          v107 = v353;
          v2 = v361;
          goto LABEL_30;
        }

        sub_1ABA819E4();
        sub_1ABA909CC();
        sub_1ABA7FD0C();

        sub_1ABA83A08();

        sub_1ABAA0778();
LABEL_158:
        swift_deallocUninitializedObject();
LABEL_153:
        sub_1ABA7BC90();
        return;
    }
  }
}

void sub_1ABD6AFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1ABA7BCA8();
  v104 = v10;
  v95 = v12;
  v13 = type metadata accessor for KGQ.Value();
  v14 = sub_1ABA7BB64(v13);
  v96 = v15;
  v97 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v19 = (v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100 = sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
  sub_1ABAA5964();
  v20 = swift_allocObject();
  v105 = xmmword_1ABF34740;
  *(v20 + 16) = xmmword_1ABF34740;
  v99 = 181;
  v21 = _Records_GDEntityClass_records;
  if (!_Records_GDEntityClass_records)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  sub_1ABA7D028();
  v22 = swift_allocObject();
  sub_1ABA8882C(*(v21 + 0x198), *(v21 + 0x1A0), *(v21 + 0x1A0 + 8), v107);
  v23 = sub_1ABA7F638();
  sub_1ABA8A2A4(v24, v23);
  sub_1ABA9A57C();
  sub_1ABADB5D8();
  v26 = v25;
  v28 = *(v25 + 16);
  v27 = *(v25 + 24);
  v29 = v28 + 1;
  if (v28 >= v27 >> 1)
  {
LABEL_32:
    sub_1ABA7BBEC(v27);
    sub_1ABADB5D8();
    v26 = v92;
  }

  *(v26 + 16) = v29;
  sub_1ABAA003C(v22 | 0x4000000000000000);
  sub_1ABA9EAD4();
  a10 = v11;
  if (!v11)
  {
    v22 = 0;
    v30 = v107[0];
    v29 = v107[0] + 16;
    v31 = *(v107[0] + 16);
    v32 = 0xF000000000000007;
    v101 = 279;
    v98 = xmmword_1ABF34060;
    v106 = v107[0] + 16;
    while (2)
    {
      v27 = v29 + 24 * v22;
      do
      {
        if (v31 == v22)
        {

          if ((~v32 & 0xF000000000000007) != 0)
          {
            sub_1ABA7D9B8();
            v91 = swift_allocObject();
            *(v91 + 16) = v32;
            *(v91 + 24) = v26;
            *v95 = v91 | 0x2000000000000000;
          }

          else
          {

            sub_1ABA89B1C();
            sub_1ABD718B8();
            sub_1ABA7D104();
            swift_allocError();
            *v85 = 0xD000000000000021;
            v85[1] = v30;
            swift_willThrow();
          }

          goto LABEL_30;
        }

        if (v22 >= *(v30 + 16))
        {
          __break(1u);
          __break(1u);
          goto LABEL_32;
        }

        ++v22;
        v33 = (v27 + 24);
        v34 = *(v27 + 16);
        v27 += 24;
      }

      while (v34 == 21);
      if (v34)
      {
        if (v34 == 15)
        {
          v35 = *v33;
          if (*(*v33 + 16))
          {
            sub_1ABAA1384();
            sub_1ABB2D38C(v35 + v36, v19);
            if (swift_getEnumCaseMultiPayload() == 7)
            {
              sub_1ABD71944(v32);
              v37 = *v19;
              v38 = v19[1];
              sub_1ABA7D9B8();
              v39 = swift_allocObject();
              *(v39 + 16) = v37;
              *(v39 + 24) = v38;
              sub_1ABAB1154();
              goto LABEL_24;
            }

            v94 = v26;

            sub_1ABD6DC28(v19);
          }

          else
          {
            v94 = v26;
          }

          sub_1ABAD219C(&qword_1EB4D1318, &unk_1ABF334A0);
          sub_1ABAA267C();
          v66 = swift_allocObject();
          v67 = sub_1ABA84254(v66);
          sub_1ABD71A88(v67);
          if (v99 >= 0x1B)
          {
            v102 = v19;
            v103 = v32;
            if (!_Records_GDEntityClass_records)
            {
              goto LABEL_37;
            }

            v69 = v68;
            sub_1ABA7D028();
            v93[1] = swift_allocObject();
            sub_1ABA7D028();
            v70 = swift_allocObject();
            sub_1ABA9F004();
            v69[2] = sub_1ABA7F638();
            v69[3].n128_u64[0] = v71;
            v69[3].n128_u64[1] = v72;
            v69[4].n128_u8[0] = v73;
            *(v70 + 16) = v69;
            v93[0] = v66;
            *(v66 + 32) = v70 | 0x4000000000000000;
            sub_1ABA7D9B8();
            v74 = swift_allocObject();
            sub_1ABA8BB28();
            MEMORY[0x1EEE9AC00](v75);
            sub_1ABA7DBD0();

            v76 = sub_1ABAA31B8();
            v11 = 0;
            sub_1ABE0F568(v76, v77, v35);
            v79 = v78;

            v80 = sub_1ABD7343C(v79);
            v82 = v81;

            *(v74 + 16) = v80;
            *(v74 + 24) = v82;
            v83 = v93[0];
            *(v93[0] + 40) = v74 | 0x5000000000000000;
            sub_1ABD71944(v103);

            *(sub_1ABA7FD0C() + 16) = v83;
            sub_1ABA96A50();
            v19 = v102;
            v26 = v94;
LABEL_24:
            v32 = v41 | v40;
LABEL_25:
            v29 = v106;
            continue;
          }

          goto LABEL_34;
        }

        v86 = *v33;
        v87 = v33[8];

        sub_1ABAA3D44();
        sub_1ABF24AB4();
        sub_1ABA8B914();
        v88 = sub_1ABA8F71C();
        MEMORY[0x1AC5A9410](v88);
        LOBYTE(v107[0]) = v34;
        v107[1] = v86;
        v108 = v87;
        sub_1ABA9FDC0();
        sub_1ABA7F0D0();
        MEMORY[0x1AC5A9410](0xD000000000000015);
        sub_1ABD718B8();
        sub_1ABA7D104();
        v89 = swift_allocError();
        sub_1ABA8A654(v89, v90);
        sub_1ABD71944(v32);

LABEL_30:
        sub_1ABA7BC90();
        return;
      }

      break;
    }

    v42 = *v33;
    sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
    sub_1ABAA5964();
    v43 = swift_allocObject();
    sub_1ABD71A88(v43);
    if (v101 >= 37)
    {
      v102 = v19;
      v103 = v32;
      v45 = v26;
      v46 = _Records_GDEntityPredicate_records;
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_36;
      }

      v47 = v44;
      sub_1ABAA4EC8();
      v48 = swift_allocObject();
      v49 = *(v46 + 109);
      v50 = *(v46 + 110);
      v51 = v46[432];

      sub_1ABA91D48(v51, v49, v50, v107);
      v52 = sub_1ABA7C4D0();
      sub_1ABA8A560(v53, v52);
      *(v47 + 64) = v54;
      v48[2] = v47;
      MEMORY[0x1EEE9AC00](v55);
      sub_1ABA7DBD0();

      v56 = sub_1ABAA31B8();
      v11 = 0;
      sub_1ABE0F568(v56, v57, v42);
      v59 = v58;

      v60 = sub_1ABD7343C(v59);
      v62 = v61;

      v48[3] = v60;
      v48[4] = v62;
      v26 = v45;
      v64 = *(v45 + 16);
      v63 = *(v45 + 24);
      if (v64 >= v63 >> 1)
      {
        sub_1ABA9025C(v63);
        sub_1ABADB5D8();
        v26 = v84;
      }

      v32 = v103;

      sub_1ABAA0BDC();
      *(v26 + 16) = v64 + 1;
      *(v26 + 8 * v64 + 32) = v65;
      v19 = v102;
      goto LABEL_25;
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_38:

  __break(1u);
}

void sub_1ABD6B768()
{
  sub_1ABA7BCA8();
  v187 = v1;
  v182 = v0;
  v3 = v2;
  v180 = v4;
  v5 = *(v2 + 16);
  *&v181 = 0x80000001ABF85AA0;
  v6 = v5 + 1;
  v7 = 32;
  v8 = &_Records_GDEntityPredicate_records_count;
  while (2)
  {
    v9 = v7;
    v10 = &_Records_GDEntityClass_records;
    if (--v6)
    {
      v7 += 24;
      switch(*(v3 + v9))
      {
        case 1:
          sub_1ABA95538();
          goto LABEL_25;
        case 2:
          sub_1ABAA4F74();
          goto LABEL_25;
        case 3:
          sub_1ABAB58B8();
          goto LABEL_25;
        case 4:
          sub_1ABA84278();
          goto LABEL_25;
        case 5:
          sub_1ABA95354();
          goto LABEL_25;
        case 6:
          sub_1ABA960EC();
          goto LABEL_25;
        case 7:
          sub_1ABAA15B8();
          goto LABEL_25;
        case 8:
          sub_1ABA82EBC();
          goto LABEL_25;
        case 9:
          sub_1ABA97C98();
          goto LABEL_25;
        case 0xE:
          sub_1ABAA0F2C();
          goto LABEL_25;
        case 0xF:

          goto LABEL_26;
        case 0x10:
          sub_1ABA8E35C();
          goto LABEL_25;
        case 0x11:
          sub_1ABAA3988();
          goto LABEL_25;
        case 0x12:
          sub_1ABAA17E4();
          goto LABEL_25;
        case 0x16:
          sub_1ABA90D3C();
          goto LABEL_25;
        case 0x17:
          sub_1ABA886D4();
          goto LABEL_25;
        case 0x18:
          sub_1ABA8CB60();
          goto LABEL_25;
        case 0x19:
          sub_1ABA97014();
          goto LABEL_25;
        default:
LABEL_25:
          v11 = sub_1ABF25054();

          if ((v11 & 1) == 0)
          {
            continue;
          }

LABEL_26:
          v12 = sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
          sub_1ABAA5964();
          v13 = swift_allocObject();
          v179 = xmmword_1ABF34740;
          *(v13 + 16) = xmmword_1ABF34740;
          v14 = _Records_GDEntityClass_records;
          if (!_Records_GDEntityClass_records)
          {
            goto LABEL_86;
          }

          v15 = v13;
          sub_1ABA7D028();
          v16 = swift_allocObject();
          sub_1ABA8882C(*(v14 + 0x210), *(v14 + 0x218), *(v14 + 0x220), v183);
          v17 = sub_1ABA7F638();
          sub_1ABA975B0(v18, v17);
          *(v16 + 16) = v15;
          sub_1ABA9A57C();
          sub_1ABADB5D8();
          v21 = *(v19 + 16);
          v20 = *(v19 + 24);
          v22 = (v21 + 1);
          v175 = v12;
          if (v21 < v20 >> 1)
          {
            goto LABEL_28;
          }

          goto LABEL_80;
      }
    }

    break;
  }

  sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
  sub_1ABAA5964();
  v58 = swift_allocObject();
  v181 = xmmword_1ABF34740;
  *(v58 + 16) = xmmword_1ABF34740;
  v59 = _Records_GDEntityClass_records;
  if (!_Records_GDEntityClass_records)
  {
    goto LABEL_87;
  }

  v60 = v58;
  sub_1ABA7D028();
  v61 = swift_allocObject();
  sub_1ABA8882C(*(v59 + 0xA8), *(v59 + 0xB0), *(v59 + 0xB0 + 8), v183);
  v62 = sub_1ABA7F638();
  sub_1ABA975B0(v63, v62);
  *(v61 + 16) = v60;
  sub_1ABA9A57C();
  sub_1ABADB5D8();
  v65 = v64;
  v21 = *(v64 + 16);
  v66 = *(v64 + 24);
  if (v21 >= v66 >> 1)
  {
    sub_1ABA819D0(v66);
    sub_1ABADB5D8();
    v65 = v167;
  }

  sub_1ABA8C990(v61 | 0x4000000000000000);
  v183[0] = v3;

  sub_1ABD66154(v183);
  v10 = v1;
  if (v1)
  {
    v168 = v1;
  }

  else
  {
    v16 = 0;
    v3 = v183[0];
    v67 = v183[0] + 16;
    v68 = *(v183[0] + 16);
    v8 = 279;
    v22 = &qword_1EB4D10E0;
    v178 = xmmword_1ABF34060;
    v177 = xmmword_1ABF3BFB0;
LABEL_48:
    v20 = v67 + 24 * v16;
    while (1)
    {
      if (v68 == v16)
      {

        sub_1ABA7D028();
        *(swift_allocObject() + 16) = v65;
        sub_1ABA96A50();
        v157 = v158 | v159;
LABEL_71:
        *v180 = v157;
LABEL_75:
        sub_1ABA7BC90();
        return;
      }

      if (v16 >= *(v3 + 16))
      {
        break;
      }

      ++v16;
      sub_1ABA9FB70(v20);
      if (!v27)
      {
        if (v21)
        {
          v160 = *v69;
          v161 = *(v69 + 8);

LABEL_74:
          sub_1ABAA3D44();
          sub_1ABF24AB4();
          sub_1ABA8B914();
          v162 = sub_1ABA8F71C();
          MEMORY[0x1AC5A9410](v162);
          LOBYTE(v183[0]) = v21;
          v183[1] = v160;
          v184 = v161;
          sub_1ABA9FDC0();
          sub_1ABA7F0D0();
          MEMORY[0x1AC5A9410](0xD000000000000012);
          v163 = v185;
          v164 = v186;
          sub_1ABD718B8();
          sub_1ABA7D104();
          swift_allocError();
          *v165 = v163;
          v165[1] = v164;
          swift_willThrow();

          goto LABEL_75;
        }

        v170 = v70;
        sub_1ABA8AB2C();
        *&v179 = *v71;
        v172 = sub_1ABAD219C(v72, v73);
        sub_1ABAA267C();
        v176 = swift_allocObject();
        *(v176 + 16) = v178;
        v171 = sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
        sub_1ABAA5964();
        v74 = swift_allocObject();
        sub_1ABD71A88(v74);
        if (v8 < 2)
        {
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
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
          goto LABEL_97;
        }

        v175 = v8;
        v76 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_88;
        }

        v77 = v75;
        sub_1ABA7D028();
        v173 = swift_allocObject();
        sub_1ABAA4EC8();
        v78 = swift_allocObject();
        v79 = *(v76 + 4);
        v80 = *(v76 + 5);
        v81 = v76[12];
        v82 = v179;

        sub_1ABA91D48(v81, v79, v80, v183);
        v83 = sub_1ABA7C4D0();
        sub_1ABA8C5C8(v84, v83);
        v78[2] = v77;
        MEMORY[0x1EEE9AC00](v85);
        sub_1ABA83A60();
        sub_1ABA8A1F8(v86);

        v87 = sub_1ABAA31B8();
        sub_1ABE0F568(v87, v88, v82);
        v90 = v89;
        v187 = 0;

        v91 = sub_1ABD7343C(v90);
        v93 = v92;

        v78[3] = v91;
        v78[4] = v93;
        sub_1ABAA0BDC();
        *(v176 + 32) = v94;
        if (v175 < 0x47)
        {
          goto LABEL_83;
        }

        v95 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_94;
        }

        sub_1ABA807B4();
        v96 = swift_allocObject();
        sub_1ABA91D48(v95[840], *(v95 + 211), *(v95 + 212), v183);
        v96[1] = sub_1ABA7C4D0();
        v96[2].n128_u64[0] = v97;
        v96[2].n128_u64[1] = v98;
        v96[3].n128_u16[0] = v99;
        sub_1ABA7FD0C();
        sub_1ABAA4EC8();
        v100 = swift_allocObject();
        sub_1ABD71A88(v100);
        v101 = swift_allocObject();
        *(v101 + 16) = v177;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_93;
        }

        v102 = v101;
        sub_1ABA91D48(_Records_GDEntityPredicate_records[348], *(_Records_GDEntityPredicate_records + 88), *(_Records_GDEntityPredicate_records + 89), v183);
        *(v102 + 32) = sub_1ABA7C4D0();
        *(v102 + 48) = v103;
        *(v102 + 56) = v104;
        *(v102 + 64) = v105;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_92;
        }

        sub_1ABA91D48(_Records_GDEntityPredicate_records[360], *(_Records_GDEntityPredicate_records + 91), *(_Records_GDEntityPredicate_records + 92), v183);
        *(v102 + 72) = sub_1ABA7C4D0();
        *(v102 + 88) = v106;
        *(v102 + 96) = v107;
        *(v102 + 104) = v108;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_91;
        }

        v171 = v100;
        v172 = v96;
        sub_1ABA91D48(_Records_GDEntityPredicate_records[516], *(_Records_GDEntityPredicate_records + 130), *(_Records_GDEntityPredicate_records + 131), v183);
        *(v102 + 112) = sub_1ABA7C4D0();
        *(v102 + 128) = v109;
        *(v102 + 136) = v110;
        *(v102 + 144) = v111;
        v112 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_90;
        }

        sub_1ABA7D028();
        v113 = swift_allocObject();
        sub_1ABAA4EC8();
        v114 = swift_allocObject();
        sub_1ABA91D48(v112[468], *(v112 + 118), *(v112 + 119), v183);
        v21 = &v169;
        *(v102 + 152) = sub_1ABA7C4D0();
        *(v102 + 168) = v115;
        *(v102 + 176) = v116;
        *(v102 + 184) = v117;
        *(v114 + 16) = v102;
        MEMORY[0x1EEE9AC00](v118);
        sub_1ABA83A60();
        sub_1ABA8A1F8(v119);
        v120 = v179;

        v121 = sub_1ABAA31B8();
        sub_1ABE0F568(v121, v122, v120);
        v124 = v123;
        v187 = 0;

        v125 = sub_1ABD7343C(v124);
        v127 = v126;

        *(v114 + 24) = v125;
        *(v114 + 32) = v127;
        *(v113 + 16) = v114 | 0x5000000000000004;
        v128 = v171;
        *(v171 + 32) = v113 | 0x1000000000000000;
        v129 = v172;
        *(v172 + 56) = v128;
        v130 = v176;
        *(v176 + 40) = v129 | 4;
        v131 = v173;
        *(v173 + 16) = v130;
        v65 = v174;
        sub_1ABAABCE8();
        if (v133)
        {
          sub_1ABA819D0(v132);
          sub_1ABADB5D8();
          v65 = v134;
        }

        v8 = v175;

        sub_1ABA8C990(v131 | 0x3000000000000000);
        v10 = 0;
        v67 = v170;
        v22 = &qword_1EB4D10E0;
        goto LABEL_48;
      }
    }

LABEL_79:
    __break(1u);
    __break(1u);
LABEL_80:
    sub_1ABA819D0(v20);
    sub_1ABADB5D8();
LABEL_28:
    sub_1ABA8AB2C();
    *(v23 + 16) = v22;
    *&v181 = v23;
    *(v23 + 8 * v21 + 32) = v16 | 0x4000000000000000;
    v183[0] = v3;

    sub_1ABD66154(v183);
    if (!v187)
    {
      v22 = 0;
      *&v177 = 0;
      v3 = 0;
      v24 = v183[0];
      v16 = v183[0] + 16;
      v25 = *(v183[0] + 16);
      *&v178 = *v8;
LABEL_30:
      v8 = &qword_1EB4D10E0;
LABEL_31:
      v20 = v16 + 24 * v3;
      while (v25 != v3)
      {
        if (v3 >= *(v24 + 16))
        {
          __break(1u);
          goto LABEL_79;
        }

        ++v3;
        sub_1ABA9FB70(v20);
        if (!v27)
        {
          if (v21)
          {
            if (v21 == 15)
            {
              v28 = v16;
              v29 = *v26;

              MEMORY[0x1EEE9AC00](v30);
              sub_1ABA83A60();
              sub_1ABA8A1F8(v31);

              v32 = sub_1ABAA31B8();
              sub_1ABE0F568(v32, v33, v29);
              v35 = v34;

              *&v177 = sub_1ABD7343C(v35);
              v21 = v36;

              v22 = v21;

              v16 = v28;
              goto LABEL_31;
            }

            v160 = *v26;
            v161 = *(v26 + 8);

            goto LABEL_74;
          }

          v173 = v22;
          v176 = *v26;
          sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
          sub_1ABAA5964();
          v37 = swift_allocObject();
          *(v37 + 16) = v179;
          if (v178 < 94)
          {
            goto LABEL_82;
          }

          v172 = v16;
          v38 = _Records_GDEntityPredicate_records;
          if (_Records_GDEntityPredicate_records)
          {
            v39 = v37;
            sub_1ABAA4EC8();
            v40 = swift_allocObject();
            v41 = *(v38 + 280);
            v42 = *(v38 + 281);
            v43 = v38[1116];
            v21 = v176;

            sub_1ABA91D48(v43, v41, v42, v183);
            v39[2] = sub_1ABA7C4D0();
            v39[3].n128_u64[0] = v44;
            v39[3].n128_u64[1] = v45;
            v39[4].n128_u16[0] = v46;
            v40[2] = v39;
            MEMORY[0x1EEE9AC00](v47);
            sub_1ABA83A60();
            sub_1ABA8A1F8(v48);

            v49 = sub_1ABAA31B8();
            sub_1ABE0F568(v49, v50, v21);
            v52 = v51;

            sub_1ABD7343C(v52);
            sub_1ABA9F0D4();

            v40[3] = v21;
            v40[4] = &v169;
            v54 = *(v181 + 16);
            v53 = *(v181 + 24);
            if (v54 >= v53 >> 1)
            {
              sub_1ABA7BBEC(v53);
              sub_1ABADB5D8();
              *&v181 = v57;
            }

            sub_1ABAA0BDC();
            v55 = v181;
            *(v181 + 16) = v54 + 1;
            *(v55 + 8 * v54 + 32) = v56;
            v22 = v173;
            v16 = v172;
            goto LABEL_30;
          }

          goto LABEL_89;
        }
      }

      if (!v22)
      {

        sub_1ABA89B1C();
        sub_1ABD718B8();
        sub_1ABA7D104();
        swift_allocError();
        *v166 = 0xD000000000000022;
        v166[1] = v16;
        swift_willThrow();
        goto LABEL_75;
      }

      v135 = v22;
      sub_1ABAD219C(&qword_1EB4D1318, &unk_1ABF334A0);
      sub_1ABAA267C();
      v136 = swift_allocObject();
      *(v136 + 16) = xmmword_1ABF34060;
      sub_1ABAA5964();
      *(swift_allocObject() + 16) = v179;
      sub_1ABA9E354();
      if (v138 < 0x1B)
      {
        goto LABEL_84;
      }

      v139 = *v10;
      if (*v10)
      {
        v140 = v137;
        sub_1ABA7D028();
        v141 = swift_allocObject();
        sub_1ABA7D028();
        v142 = swift_allocObject();
        sub_1ABA8882C(*(v139 + 0x270), *(v139 + 0x278), *(v139 + 0x280), v183);
        v140[2] = sub_1ABA7F638();
        v140[3].n128_u64[0] = v143;
        v140[3].n128_u64[1] = v144;
        v140[4].n128_u8[0] = v145;
        *(v142 + 16) = v140;
        *(v136 + 32) = v142 | 0x4000000000000000;
        sub_1ABA7D9B8();
        v146 = swift_allocObject();
        *(v146 + 16) = v177;
        *(v146 + 24) = v135;
        *(v136 + 40) = v146 | 0x5000000000000000;
        *(v141 + 16) = v136;
        sub_1ABA96A50();
        v148 = v141 | v147;
        v149 = swift_allocObject();
        sub_1ABA7D9B8();
        v150 = swift_allocObject();
        v151 = v181;
        *(v150 + 16) = v148;
        *(v150 + 24) = v151;
        v185 = v150 | 0x2000000000000000;

        VOPBuilder.toString.getter();
        *(v149 + 16) = v152;
        *(v149 + 24) = v153;

        if (v178 < 52)
        {
          goto LABEL_85;
        }

        if (_Records_GDEntityPredicate_records)
        {
          sub_1ABA91D48(_Records_GDEntityPredicate_records[612], *(_Records_GDEntityPredicate_records + 154), *(_Records_GDEntityPredicate_records + 155), v183);

          v154 = sub_1ABA7C4D0();
          sub_1ABA8A560(v155, v154);
          *(v149 + 64) = v156;
          v157 = v149 | 0x8000000000000004;
          goto LABEL_71;
        }

        goto LABEL_96;
      }

      goto LABEL_95;
    }

LABEL_97:
    v168 = v187;
  }

  __break(1u);
}

void sub_1ABD6C6FC()
{
  sub_1ABA7BCA8();
  v182 = v0;
  v4 = v3;
  v6 = v5;
  v178 = sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
  sub_1ABAA5964();
  v7 = swift_allocObject();
  v185 = xmmword_1ABF34740;
  *(v7 + 16) = xmmword_1ABF34740;
  v8 = _Records_GDEntityClass_records;
  if (!_Records_GDEntityClass_records)
  {
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v9 = v7;
  sub_1ABA7D028();
  v10 = swift_allocObject();
  sub_1ABA8882C(*(v8 + 0xED0), *(v8 + 0xED8), *(v8 + 0xEE0), v186);
  v11 = sub_1ABA7F638();
  sub_1ABAA4620(v12, v11);
  *(v10 + 16) = v9;
  sub_1ABA9A57C();
  sub_1ABADB5D8();
  v14 = v13;
  v2 = *(v13 + 16);
  v15 = *(v13 + 24);
  v16 = (v2 + 1);
  if (v2 >= v15 >> 1)
  {
    goto LABEL_74;
  }

  while (1)
  {
    sub_1ABA8AB2C();
    *(v14 + 16) = v16;
    *(v14 + 8 * v2 + 32) = v10 | 0x4000000000000000;
    v186[0] = v4;

    sub_1ABA9EAD4();
    v2 = v1;
    if (v1)
    {
      goto LABEL_93;
    }

    v17 = 0;
    v18 = v186[0];
    v16 = *(v186[0] + 16);
    v188 = v186[0] + 16;
    v4 = MEMORY[0x1E69E7CC0];
    v183 = 279;
    v177 = xmmword_1ABF34060;
    v180 = v16;
    v181 = v186[0];
LABEL_5:
    v19 = (v188 + 24 * v17);
LABEL_6:
    if (v16 == v17)
    {

      if (!*(v4 + 16))
      {

        v6 = v174;
        goto LABEL_66;
      }

      sub_1ABAA5964();
      v149 = swift_allocObject();
      sub_1ABA82B00(v149);
      v21 = _Records_GDEntityClass_records;
      v6 = v174;
      if (_Records_GDEntityClass_records)
      {
        v16 = v150;
        sub_1ABA7D028();
        v10 = swift_allocObject();
        sub_1ABA9ED70();
        v151 = sub_1ABA7F638();
        sub_1ABA8A560(v152, v151);
        v16[64] = v153;
        *(v10 + 16) = v16;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_79;
        }

        goto LABEL_59;
      }

LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    v20 = v19;
    v15 = *(v18 + 16);
    if (v17 < v15)
    {
      break;
    }

    __break(1u);
    __break(1u);
LABEL_74:
    sub_1ABA9025C(v15);
    sub_1ABADB5D8();
    v14 = v168;
  }

  ++v17;
  v19 = v20 + 3;
  v21 = *(v20 + 16);
  switch(*(v20 + 16))
  {
    case 0xB:
    case 0xF:
      v179 = v4;
      v184 = v14;
      v6 = v2;
      v22 = *v19;
      v175 = sub_1ABAD219C(&qword_1EB4D1318, &unk_1ABF334A0);
      sub_1ABAA267C();
      v23 = swift_allocObject();
      v24 = sub_1ABA84254(v23);
      sub_1ABA82B00(v24);
      v26 = _Records_GDEntityClass_records;
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_84;
      }

      v27 = v25;
      sub_1ABA7D028();
      v28 = swift_allocObject();
      sub_1ABA7D028();
      v29 = swift_allocObject();
      v30 = *(v26 + 0x278);
      v31 = *(v26 + 0x280);
      v32 = *(v26 + 0x270);

      sub_1ABA8882C(v32, v30, v31, v186);
      v33 = sub_1ABA7F638();
      sub_1ABA975B0(v34, v33);
      *(v29 + 16) = v27;
      v23[4] = v29 | 0x4000000000000000;
      sub_1ABA7D9B8();
      v35 = swift_allocObject();
      MEMORY[0x1EEE9AC00](v35);
      sub_1ABA7DBD0();

      v36 = sub_1ABAA31B8();
      sub_1ABE0F568(v36, v37, v22);
      if (v6)
      {
        goto LABEL_71;
      }

      v39 = v38;
      v176 = 0;

      v21 = sub_1ABD7343C(v39);
      v41 = v40;

      *(v35 + 16) = v21;
      *(v35 + 24) = v41;
      sub_1ABA9F4F8();
      v23[5] = v42;
      *(v28 + 16) = v23;
      v10 = sub_1ABD77144(v22);

      if (v10)
      {
        sub_1ABA7D9B8();
        v21 = swift_allocObject();
        v43 = sub_1ABD7343C(v10);
        v45 = v44;

        *(v21 + 16) = v43;
        *(v21 + 24) = v45;
        sub_1ABAB1154();
        v2 = v21 | v46;
      }

      else
      {
        sub_1ABA96A50();
        v2 = v28 | v125;
      }

      v14 = v184;
      v4 = v179;
      v16 = v180;
      if (v183 < 224)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        v169 = *(v4 + 16);
        sub_1ABA7BEF0();
        sub_1ABADB5D8();
        v4 = v170;
LABEL_59:
        sub_1ABA8C7B0();
        if (v91)
        {
          sub_1ABA9025C(v154);
          sub_1ABADB5D8();
          v4 = v171;
        }

        *(v4 + 16) = v16;
        *(v4 + 8 * v21 + 32) = v10 | 0x4000000000000000;
        v155 = v183;
        if (v183 >= 146)
        {
          if (_Records_GDEntityPredicate_records)
          {
            sub_1ABA807B4();
            v10 = swift_allocObject();
            sub_1ABA9EECC();
            v156 = sub_1ABA7C4D0();
            sub_1ABAA416C(v157, v156);
            sub_1ABAD219C(&qword_1EB4D1318, &unk_1ABF334A0);
            sub_1ABAA4EC8();
            v158 = swift_allocObject();
            sub_1ABA82B00(v158);
            sub_1ABA7D028();
            *(swift_allocObject() + 16) = v4;
            sub_1ABAB5128();
            v158[2].n128_u64[0] = v160 | (v159 + 9);
            *(v10 + 56) = v158;
            v21 = *(v14 + 16);
            v155 = *(v14 + 24);
            v4 = v21 + 1;
            if (v21 < v155 >> 1)
            {
              goto LABEL_64;
            }

            goto LABEL_81;
          }

LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:

          __break(1u);
          return;
        }

        __break(1u);
LABEL_81:
        sub_1ABA7BBEC(v155);
        sub_1ABADB5D8();
        v14 = v172;
LABEL_64:
        *(v14 + 16) = v4;
        *(v14 + 8 * v21 + 32) = v10 | 4;
LABEL_66:
        sub_1ABA7D028();
        *(swift_allocObject() + 16) = v14;
        sub_1ABA96A50();
        *v6 = v161 | v162;
        goto LABEL_67;
      }

      v126 = _Records_GDEntityPredicate_records;
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_85;
      }

      sub_1ABA807B4();
      v10 = swift_allocObject();
      sub_1ABA91D48(v126[2676], *(v126 + 670), *(v126 + 671), v186);
      v127 = sub_1ABA7C4D0();
      sub_1ABAA416C(v128, v127);
      sub_1ABAA4EC8();
      v129 = swift_allocObject();
      sub_1ABA82B00(v129);
      *(v130 + 32) = v2;
      *(v10 + 56) = v130;
      v123 = *(v14 + 16);
      v1 = *(v14 + 24);
      v124 = v123 + 1;
      sub_1ABAB5128();

      if (v123 >= v1 >> 1)
      {
        sub_1ABA96D64();
        v14 = v137;
      }

      sub_1ABAB5128();

LABEL_53:
      v6 = v10 | 4;
      v2 = v176;
LABEL_54:
      *(v14 + 16) = v124;
      *(v14 + 8 * v123 + 32) = v6;
      v18 = v181;
      goto LABEL_5;
    case 0xC:
    case 0xD:
    case 0xE:
    case 0x13:
    case 0x14:
      goto LABEL_55;
    case 0x10:
      if (v183 < 225)
      {
        goto LABEL_78;
      }

      v107 = _Records_GDEntityPredicate_records;
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_86;
      }

      v108 = *v19;
      sub_1ABA8913C();
      v6 = swift_allocObject();
      v109 = *(v107 + 673);
      v110 = *(v107 + 674);
      v111 = v107[2688];

      sub_1ABA91D48(v111, v109, v110, v186);
      v112 = sub_1ABA7C4D0();
      sub_1ABAA0ACC(v113, v112);
      MEMORY[0x1EEE9AC00](v114);
      sub_1ABA7DBD0();

      v115 = sub_1ABAA31B8();
      v1 = v2;
      sub_1ABE0F568(v115, v116, v108);
      if (v2)
      {

        sub_1ABA893FC();
        v165 = *(v6 + 24);
        v166 = *(v6 + 40);

        goto LABEL_72;
      }

      v10 = v117;
      v179 = v4;

      v118 = sub_1ABAA0340();
      v119 = sub_1ABD7343C(v118);
      v121 = v120;

      *(v6 + 56) = v119;
      *(v6 + 64) = v121;
      *(v6 + 72) = 0;
      *(v6 + 80) = 0;
      *(v6 + 87) = 0;
      v123 = *(v14 + 16);
      v122 = *(v14 + 24);
      v124 = v123 + 1;
      if (v123 >= v122 >> 1)
      {
        sub_1ABA95524(v122);
        sub_1ABADB5D8();
        v14 = v143;
      }

      v2 = 0;
      v4 = v179;
      v16 = v180;
      goto LABEL_54;
    case 0x11:
      if (v183 < 153)
      {
        goto LABEL_77;
      }

      v184 = v14;
      v93 = _Records_GDEntityPredicate_records;
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_87;
      }

      v94 = v4;
      v6 = *v19;
      sub_1ABAA5964();
      v77 = swift_allocObject();
      v95 = *(v93 + 457);
      v96 = *(v93 + 458);
      v97 = v93[1824];

      sub_1ABA89688();
      v98 = sub_1ABA7C4D0();
      sub_1ABA9F384(v99, v98);
      MEMORY[0x1EEE9AC00](v100);
      sub_1ABA7DBD0();

      v101 = sub_1ABAA31B8();
      v1 = v2;
      sub_1ABE0F568(v101, v102, v6);
      if (v2)
      {
        goto LABEL_69;
      }

      v103 = sub_1ABAA0340();
      v104 = sub_1ABD7343C(v103);
      v89 = v105;

      *(v77 + 56) = v104;
      *(v77 + 64) = v89;
      v4 = v94;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v140 = *(v94 + 16);
        sub_1ABA7BEF0();
        sub_1ABADB5D8();
        v4 = v141;
      }

      v18 = v181;
      sub_1ABA8C7B0();
      if (v91)
      {
        sub_1ABA9025C(v106);
        sub_1ABADB5D8();
        v4 = v142;
      }

      v10 = 0x6000000000000000;
      goto LABEL_34;
    case 0x12:
      if (v183 < 154)
      {
        goto LABEL_76;
      }

      v184 = v14;
      v75 = _Records_GDEntityPredicate_records;
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_88;
      }

      v76 = v4;
      v6 = *v19;
      sub_1ABAA5964();
      v77 = swift_allocObject();
      v78 = *(v75 + 460);
      v79 = *(v75 + 461);
      v80 = v75[1836];

      sub_1ABA89688();
      v81 = sub_1ABA7C4D0();
      sub_1ABA9F384(v82, v81);
      MEMORY[0x1EEE9AC00](v83);
      sub_1ABA7DBD0();

      v84 = sub_1ABAA31B8();
      v1 = v2;
      sub_1ABE0F568(v84, v85, v6);
      if (v2)
      {
LABEL_69:

        swift_bridgeObjectRelease_n();
        v163 = *(v77 + 24);
        v164 = *(v77 + 40);

        goto LABEL_72;
      }

      v86 = sub_1ABAA0340();
      v87 = sub_1ABD7343C(v86);
      v89 = v88;

      *(v77 + 56) = v87;
      *(v77 + 64) = v89;
      v4 = v76;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v138 = *(v76 + 16);
        sub_1ABA7BEF0();
        sub_1ABADB5D8();
        v4 = v139;
      }

      v18 = v181;
      v10 = 0x6000000000000004;
      sub_1ABA8C7B0();
      if (v91)
      {
        sub_1ABA9025C(v90);
        sub_1ABADB5D8();
        v4 = v92;
      }

LABEL_34:

      *(v4 + 16) = v89;
      *(v4 + 8 * &v173 + 32) = v10 | v77;
      v14 = v184;
      v16 = v180;
      goto LABEL_5;
    case 0x15:
      goto LABEL_6;
    default:
      if (*(v20 + 16))
      {
LABEL_55:
        v145 = *v19;
        v146 = *(v20 + 32);

        sub_1ABAA3D44();
        sub_1ABF24AB4();
        sub_1ABA8B914();
        MEMORY[0x1AC5A9410](0xD000000000000011, 0x80000001ABF8EEB0);
        LOBYTE(v186[0]) = v21;
        v186[1] = v145;
        v187 = v146;
        sub_1ABA9FDC0();
        MEMORY[0x1AC5A9410](0xD000000000000014, 0x80000001ABF8EED0);
        sub_1ABD718B8();
        sub_1ABA7D104();
        v147 = swift_allocError();
        sub_1ABA8A654(v147, v148);

        goto LABEL_67;
      }

      v179 = v4;
      v184 = v14;
      v47 = *v19;
      v173 = sub_1ABAD219C(&qword_1EB4D1318, &unk_1ABF334A0);
      sub_1ABAA267C();
      v23 = swift_allocObject();
      v48 = sub_1ABA84254(v23);
      sub_1ABA82B00(v48);
      v50 = _Records_GDEntityClass_records;
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_91;
      }

      v51 = v49;
      sub_1ABA7D028();
      v175 = swift_allocObject();
      sub_1ABA7D028();
      v52 = swift_allocObject();
      v53 = *(v50 + 0x470);
      v54 = *(v50 + 0x478);
      v55 = *(v50 + 0x468);

      sub_1ABA8882C(v55, v53, v54, v186);
      v56 = sub_1ABA7F638();
      sub_1ABA975B0(v57, v56);
      *(v52 + 16) = v51;
      v23[4] = v52 | 0x4000000000000000;
      sub_1ABA7D9B8();
      v58 = swift_allocObject();
      MEMORY[0x1EEE9AC00](v58);
      sub_1ABA7DBD0();

      v59 = sub_1ABAA31B8();
      sub_1ABE0F568(v59, v60, v47);
      if (!v2)
      {
        v62 = v61;
        v176 = 0;

        v63 = sub_1ABD7343C(v62);
        v65 = v64;

        *(v58 + 16) = v63;
        *(v58 + 24) = v65;
        sub_1ABA9F4F8();
        v23[5] = v66;
        v67 = v175;
        *(v175 + 16) = v23;

        v69 = sub_1ABD77144(v68);

        if (v69)
        {
          sub_1ABA7D9B8();
          v70 = swift_allocObject();
          v71 = sub_1ABD7343C(v69);
          v73 = v72;

          *(v70 + 16) = v71;
          *(v70 + 24) = v73;
          sub_1ABAB1154();
          v2 = v70 | v74;
        }

        else
        {
          sub_1ABA96A50();
          v2 = v67 | v131;
        }

        v4 = v179;
        v16 = v180;
        v14 = v184;
        if (v183 >= 147)
        {
          v132 = _Records_GDEntityPredicate_records;
          if (!_Records_GDEntityPredicate_records)
          {
            goto LABEL_92;
          }

          sub_1ABA807B4();
          v10 = swift_allocObject();
          sub_1ABA91D48(v132[1752], *(v132 + 439), *(v132 + 440), v186);
          v133 = sub_1ABA7C4D0();
          sub_1ABAA416C(v134, v133);
          sub_1ABA83A08();
          sub_1ABAA4EC8();
          v135 = swift_allocObject();
          sub_1ABA82B00(v135);
          *(v136 + 32) = v2;
          *(v10 + 56) = v136;
          v123 = *(v14 + 16);
          v1 = *(v14 + 24);
          v124 = v123 + 1;
          sub_1ABAB5128();

          if (v123 >= v1 >> 1)
          {
            sub_1ABA96D64();
            v14 = v144;
          }

          sub_1ABAB5128();

          goto LABEL_53;
        }

        __break(1u);
        goto LABEL_83;
      }

LABEL_71:

      swift_bridgeObjectRelease_n();
      sub_1ABAA0340();
      sub_1ABA7D9B8();
      swift_deallocUninitializedObject();
      v167 = v23[4];
      sub_1ABA9F290();

      v23[2] = 0;

LABEL_72:
      swift_deallocUninitializedObject();
LABEL_67:
      sub_1ABA7BC90();
      return;
  }
}

uint64_t sub_1ABD6D534(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return sub_1ABA8C014();
}

uint64_t sub_1ABD6D54C()
{
  v18 = v0;
  v1 = *(v0 + 32);
  if (*(v1 + 16))
  {
    *(v0 + 16) = v1;
    v2 = sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABAAA5C0();
    sub_1ABF23B54();
    sub_1ABA9F0D4();
    sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
    sub_1ABAA267C();
    result = swift_allocObject();
    *(result + 16) = xmmword_1ABF34740;
    if (_Records_GDEntityClass_records)
    {
      v4 = result;
      v5 = *(v0 + 40);
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x270), *(_Records_GDEntityClass_records + 0x278), *(_Records_GDEntityClass_records + 0x280), v17);
      v6 = v17[0];
      v7 = v17[1];

      *(v4 + 32) = v6;
      *(v4 + 40) = v7;
      v8 = objc_allocWithZone(GDEntityResolutionRequest);
      v9 = sub_1ABD6DAC0(v0 + 16, v2, v4, 0, 0, 0, 1);
      *(v0 + 48) = v9;
      v10 = v5[4];
      v11 = v5[5];
      sub_1ABA93E20(v5 + 1, v10);
      v12 = *(v11 + 16);
      v16 = (v12 + *v12);
      v13 = v12[1];
      v14 = swift_task_alloc();
      *(v0 + 56) = v14;
      *v14 = v0;
      v14[1] = sub_1ABD6D7D0;

      return v16(v9, v10, v11);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    **(v0 + 24) = 0xF000000000000007;
    sub_1ABA80A84();

    return v15();
  }

  return result;
}

uint64_t sub_1ABD6D7D0()
{
  sub_1ABA7BC04();
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 56);
  v6 = *v1;
  sub_1ABA7BBC0();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (v0)
  {
    v8 = sub_1ABD6DA30;
  }

  else
  {
    *(v4 + 72) = v3;
    v8 = sub_1ABD6D8EC;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1ABD6D8EC()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[3];
  v4 = [v1 rankedResults];
  sub_1ABAFF390(0, &qword_1ED86B970, off_1E7960338);
  v5 = sub_1ABF240D4();

  sub_1ABD6603C(v5);

  sub_1ABA7D9B8();
  v6 = swift_allocObject();

  v8 = sub_1ABB4558C(v7);
  v9 = sub_1ABD7343C(v8);
  v11 = v10;

  *(v6 + 16) = v9;
  *(v6 + 24) = v11;

  sub_1ABAB1154();
  *v3 = v6 | v12;
  sub_1ABA80A84();

  return v13();
}

uint64_t sub_1ABD6DA30()
{
  sub_1ABA7BBE0();
  v2 = *(v0 + 64);

  return v1();
}

void sub_1ABD6DA90(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1ABD73030(a1);
  if (!v2)
  {
    *a2 = v4;
    a2[1] = v5;
  }
}

id sub_1ABD6DAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v14 = sub_1ABF23BD4();

  if (!a3)
  {
    v15 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v15 = sub_1ABF240C4();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1ABAFF390(0, &qword_1EB4D4040, 0x1E696B098);
  v16 = sub_1ABF240C4();

LABEL_6:
  v17 = [v8 initWithText:v14 entityClassFilter:v15 spans:v16 mode:a5 constraint:a6 includeInferredNames:a7 & 1];

  return v17;
}

uint64_t sub_1ABD6DBC0(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D9150, &qword_1ABF5EB98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABD6DC28(uint64_t a1)
{
  v2 = type metadata accessor for KGQ.Value();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABD6DC84(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1ABF24FE4();
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
        v6 = sub_1ABF24164();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1ABD6E8E0(v7, v8, a1, v4);
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
    return sub_1ABD6DD78(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1ABD6DD78(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return result;
  }

  v45 = *a4;
  v4 = (*a4 + 24 * a3 - 24);
  v5 = result - a3;
  while (2)
  {
    v43 = v4;
    v44 = a3;
    v42 = v5;
    while (1)
    {
      v6 = v4[24];
      v7 = *(v4 + 4);
      v8 = *v4;
      v9 = *(v4 + 1);
      v10 = 0xE400000000000000;
      v11 = 1701667182;
      switch(v4[24])
      {
        case 1u:
          v11 = 0x6D614E7473726966;
          goto LABEL_19;
        case 2u:
          v10 = 0xE800000000000000;
          v11 = 0x656D614E7473616CLL;
          break;
        case 3u:
          v10 = 0xE700000000000000;
          v11 = 0x73736572646461;
          break;
        case 4u:
          v10 = 0xE800000000000000;
          v11 = 0x7961646874726962;
          break;
        case 5u:
          v11 = 0x6D754E656E6F6870;
          v12 = 7497058;
          goto LABEL_22;
        case 6u:
          v11 = 0x6464416C69616D65;
          v13 = 1936942450;
          goto LABEL_26;
        case 7u:
          v11 = 0x6E6F6974616C6572;
          v13 = 1885956211;
LABEL_26:
          v10 = v13 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 8u:
          v10 = 0xE800000000000000;
          v11 = 0x6565646E65747461;
          break;
        case 9u:
          v11 = 0x49746361746E6F63;
          v12 = 7300718;
          goto LABEL_22;
        case 0xAu:
          v10 = 0xE800000000000000;
          v14 = 1633906540;
          goto LABEL_32;
        case 0xBu:
          v11 = 1836020326;
          break;
        case 0xCu:
          v10 = 0xE200000000000000;
          v11 = 28532;
          break;
        case 0xDu:
          v11 = 0xD000000000000010;
          v10 = 0x80000001ABF85AA0;
          break;
        case 0xEu:
          v10 = 0xE800000000000000;
          v11 = 0x7473657265746E69;
          break;
        case 0xFu:
          v10 = 0xE600000000000000;
          v11 = 0x6E6F73726570;
          break;
        case 0x10u:
          v11 = 0x6765746143707061;
          v12 = 7959151;
LABEL_22:
          v10 = v12 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 0x11u:
          v11 = 0x7461447472617473;
LABEL_19:
          v10 = 0xE900000000000065;
          break;
        case 0x12u:
          v10 = 0xE700000000000000;
          v11 = 0x65746144646E65;
          break;
        case 0x13u:
          v10 = 0xE800000000000000;
          v14 = 1634891108;
LABEL_32:
          v11 = v14 | 0x6E6F697400000000;
          break;
        case 0x14u:
          v11 = 1701869940;
          break;
        case 0x15u:
          v10 = 0xE500000000000000;
          v11 = 0x74696D696CLL;
          break;
        case 0x16u:
          v10 = 0xE700000000000000;
          v11 = 0x63734174726F73;
          break;
        case 0x17u:
          v10 = 0xE800000000000000;
          v11 = 0x6373654474726F73;
          break;
        case 0x18u:
          v10 = 0xE600000000000000;
          v11 = 0x656372756F73;
          break;
        case 0x19u:
          v10 = 0xE500000000000000;
          v11 = 0x65756C6176;
          break;
        default:
          break;
      }

      v15 = 0xE400000000000000;
      v16 = 1701667182;
      switch(*v4)
      {
        case 1u:
          v16 = 0x6D614E7473726966;
          goto LABEL_49;
        case 2u:
          v15 = 0xE800000000000000;
          v16 = 0x656D614E7473616CLL;
          break;
        case 3u:
          v15 = 0xE700000000000000;
          v16 = 0x73736572646461;
          break;
        case 4u:
          v15 = 0xE800000000000000;
          v16 = 0x7961646874726962;
          break;
        case 5u:
          v16 = 0x6D754E656E6F6870;
          v17 = 7497058;
          goto LABEL_52;
        case 6u:
          v16 = 0x6464416C69616D65;
          v18 = 1936942450;
          goto LABEL_56;
        case 7u:
          v16 = 0x6E6F6974616C6572;
          v18 = 1885956211;
LABEL_56:
          v15 = v18 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 8u:
          v15 = 0xE800000000000000;
          v16 = 0x6565646E65747461;
          break;
        case 9u:
          v16 = 0x49746361746E6F63;
          v17 = 7300718;
          goto LABEL_52;
        case 0xAu:
          v15 = 0xE800000000000000;
          v19 = 1633906540;
          goto LABEL_62;
        case 0xBu:
          v16 = 1836020326;
          break;
        case 0xCu:
          v15 = 0xE200000000000000;
          v16 = 28532;
          break;
        case 0xDu:
          v16 = 0xD000000000000010;
          v15 = 0x80000001ABF85AA0;
          break;
        case 0xEu:
          v15 = 0xE800000000000000;
          v16 = 0x7473657265746E69;
          break;
        case 0xFu:
          v15 = 0xE600000000000000;
          v16 = 0x6E6F73726570;
          break;
        case 0x10u:
          v16 = 0x6765746143707061;
          v17 = 7959151;
LABEL_52:
          v15 = v17 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 0x11u:
          v16 = 0x7461447472617473;
LABEL_49:
          v15 = 0xE900000000000065;
          break;
        case 0x12u:
          v15 = 0xE700000000000000;
          v16 = 0x65746144646E65;
          break;
        case 0x13u:
          v15 = 0xE800000000000000;
          v19 = 1634891108;
LABEL_62:
          v16 = v19 | 0x6E6F697400000000;
          break;
        case 0x14u:
          v16 = 1701869940;
          break;
        case 0x15u:
          v15 = 0xE500000000000000;
          v16 = 0x74696D696CLL;
          break;
        case 0x16u:
          v15 = 0xE700000000000000;
          v16 = 0x63734174726F73;
          break;
        case 0x17u:
          v15 = 0xE800000000000000;
          v16 = 0x6373654474726F73;
          break;
        case 0x18u:
          v15 = 0xE600000000000000;
          v16 = 0x656372756F73;
          break;
        case 0x19u:
          v15 = 0xE500000000000000;
          v16 = 0x65756C6176;
          break;
        default:
          break;
      }

      if (v11 != v16 || v10 != v15)
      {
        break;
      }

      v24 = *(v4 + 4);

LABEL_72:
      v25 = *(v7 + 16);
      v26 = *(v9 + 16);

      if (v25 >= v26)
      {
        goto LABEL_142;
      }

LABEL_137:
      if (!v45)
      {
        __break(1u);
        return result;
      }

      v37 = v4[24];
      v38 = *(v4 + 4);
      v39 = v4[40];
      *(v4 + 24) = *v4;
      *(v4 + 5) = *(v4 + 2);
      *v4 = v37;
      *(v4 + 1) = v38;
      v4[16] = v39;
      v4 -= 24;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_142;
      }
    }

    v21 = sub_1ABF25054();

    if (v21)
    {
      goto LABEL_72;
    }

    v22 = 0xE400000000000000;
    v23 = 1701667182;
    switch(v6)
    {
      case 1:
        v23 = 0x6D614E7473726966;
        goto LABEL_87;
      case 2:
        v22 = 0xE800000000000000;
        v23 = 0x656D614E7473616CLL;
        break;
      case 3:
        v22 = 0xE700000000000000;
        v23 = 0x73736572646461;
        break;
      case 4:
        v22 = 0xE800000000000000;
        v23 = 0x7961646874726962;
        break;
      case 5:
        v23 = 0x6D754E656E6F6870;
        v27 = 7497058;
        goto LABEL_90;
      case 6:
        v23 = 0x6464416C69616D65;
        v28 = 1936942450;
        goto LABEL_94;
      case 7:
        v23 = 0x6E6F6974616C6572;
        v28 = 1885956211;
LABEL_94:
        v22 = v28 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 8:
        v22 = 0xE800000000000000;
        v23 = 0x6565646E65747461;
        break;
      case 9:
        v23 = 0x49746361746E6F63;
        v27 = 7300718;
        goto LABEL_90;
      case 10:
        v22 = 0xE800000000000000;
        v29 = 1633906540;
        goto LABEL_100;
      case 11:
        v23 = 1836020326;
        break;
      case 12:
        v22 = 0xE200000000000000;
        v23 = 28532;
        break;
      case 13:
        v23 = 0xD000000000000010;
        v22 = 0x80000001ABF85AA0;
        break;
      case 14:
        v22 = 0xE800000000000000;
        v23 = 0x7473657265746E69;
        break;
      case 15:
        v22 = 0xE600000000000000;
        v23 = 0x6E6F73726570;
        break;
      case 16:
        v23 = 0x6765746143707061;
        v27 = 7959151;
LABEL_90:
        v22 = v27 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      case 17:
        v23 = 0x7461447472617473;
LABEL_87:
        v22 = 0xE900000000000065;
        break;
      case 18:
        v22 = 0xE700000000000000;
        v23 = 0x65746144646E65;
        break;
      case 19:
        v22 = 0xE800000000000000;
        v29 = 1634891108;
LABEL_100:
        v23 = v29 | 0x6E6F697400000000;
        break;
      case 20:
        v23 = 1701869940;
        break;
      case 21:
        v22 = 0xE500000000000000;
        v23 = 0x74696D696CLL;
        break;
      case 22:
        v22 = 0xE700000000000000;
        v23 = 0x63734174726F73;
        break;
      case 23:
        v22 = 0xE800000000000000;
        v23 = 0x6373654474726F73;
        break;
      case 24:
        v22 = 0xE600000000000000;
        v23 = 0x656372756F73;
        break;
      case 25:
        v22 = 0xE500000000000000;
        v23 = 0x65756C6176;
        break;
      default:
        break;
    }

    v30 = 0xE400000000000000;
    v31 = 1701667182;
    switch(v8)
    {
      case 1:
        v31 = 0x6D614E7473726966;
        goto LABEL_117;
      case 2:
        v30 = 0xE800000000000000;
        v31 = 0x656D614E7473616CLL;
        break;
      case 3:
        v30 = 0xE700000000000000;
        v31 = 0x73736572646461;
        break;
      case 4:
        v30 = 0xE800000000000000;
        v31 = 0x7961646874726962;
        break;
      case 5:
        v31 = 0x6D754E656E6F6870;
        v32 = 7497058;
        goto LABEL_120;
      case 6:
        v31 = 0x6464416C69616D65;
        v33 = 1936942450;
        goto LABEL_124;
      case 7:
        v31 = 0x6E6F6974616C6572;
        v33 = 1885956211;
LABEL_124:
        v30 = v33 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 8:
        v30 = 0xE800000000000000;
        v31 = 0x6565646E65747461;
        break;
      case 9:
        v31 = 0x49746361746E6F63;
        v32 = 7300718;
        goto LABEL_120;
      case 10:
        v30 = 0xE800000000000000;
        v34 = 1633906540;
        goto LABEL_130;
      case 11:
        v31 = 1836020326;
        break;
      case 12:
        v30 = 0xE200000000000000;
        v31 = 28532;
        break;
      case 13:
        v31 = 0xD000000000000010;
        v30 = 0x80000001ABF85AA0;
        break;
      case 14:
        v30 = 0xE800000000000000;
        v31 = 0x7473657265746E69;
        break;
      case 15:
        v30 = 0xE600000000000000;
        v31 = 0x6E6F73726570;
        break;
      case 16:
        v31 = 0x6765746143707061;
        v32 = 7959151;
LABEL_120:
        v30 = v32 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      case 17:
        v31 = 0x7461447472617473;
LABEL_117:
        v30 = 0xE900000000000065;
        break;
      case 18:
        v30 = 0xE700000000000000;
        v31 = 0x65746144646E65;
        break;
      case 19:
        v30 = 0xE800000000000000;
        v34 = 1634891108;
LABEL_130:
        v31 = v34 | 0x6E6F697400000000;
        break;
      case 20:
        v31 = 1701869940;
        break;
      case 21:
        v30 = 0xE500000000000000;
        v31 = 0x74696D696CLL;
        break;
      case 22:
        v30 = 0xE700000000000000;
        v31 = 0x63734174726F73;
        break;
      case 23:
        v30 = 0xE800000000000000;
        v31 = 0x6373654474726F73;
        break;
      case 24:
        v30 = 0xE600000000000000;
        v31 = 0x656372756F73;
        break;
      case 25:
        v30 = 0xE500000000000000;
        v31 = 0x65756C6176;
        break;
      default:
        break;
    }

    if (v23 != v31 || v22 != v30)
    {
      v36 = sub_1ABF25054();

      if ((v36 & 1) == 0)
      {
        goto LABEL_142;
      }

      goto LABEL_137;
    }

LABEL_142:
    a3 = v44 + 1;
    v4 = v43 + 24;
    v5 = v42 - 1;
    if (v44 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}

void sub_1ABD6E8E0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_362:
    v174 = *a1;
    if (!*a1)
    {
      goto LABEL_403;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_364:
      v150 = (v6 + 16);
      v151 = *(v6 + 16);
      while (v151 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_400;
        }

        v152 = v6;
        v6 += 16 * v151;
        v153 = *v6;
        v154 = &v150[2 * v151];
        v155 = *(v154 + 1);
        sub_1ABD70428((*a3 + 24 * *v6), (*a3 + 24 * *v154), *a3 + 24 * v155, v174);
        if (v171)
        {
          break;
        }

        if (v155 < v153)
        {
          goto LABEL_388;
        }

        if (v151 - 2 >= *v150)
        {
          goto LABEL_389;
        }

        *v6 = v153;
        *(v6 + 8) = v155;
        v156 = *v150 - v151;
        if (*v150 < v151)
        {
          goto LABEL_390;
        }

        v171 = 0;
        v151 = *v150 - 1;
        sub_1ABE7A0CC(v154 + 16, v156, v154);
        *v150 = v151;
        v6 = v152;
      }

LABEL_372:

      return;
    }

LABEL_397:
    v6 = sub_1ABE7A0B4(v6);
    goto LABEL_364;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v7 = v5;
    v8 = v5 + 1;
    if (v5 + 1 >= v4)
    {
      goto LABEL_160;
    }

    v158 = v6;
    v9 = (*a3 + 24 * v8);
    v10 = *(v9 + 1);
    v164 = 24 * v7;
    v11 = v7;
    v12 = *a3 + 24 * v7;
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    v15 = *v12;
    v172 = v4;
    v16 = v9[16];
    v6 = *v9;

    v17 = v16;
    v18 = v172;
    v167 = sub_1ABD781C8(v6, v10, v17, v15, v13);

    v19 = v12 + 32;
    v160 = v11;
    v20 = (v11 + 2);
    while (1)
    {
      v21 = v20;
      if (v8 + 1 >= v18)
      {
        break;
      }

      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      v6 = *(v19 - 8);
      v24 = 0xE400000000000000;
      v25 = *v19;
      v26 = 1701667182;
      switch(*(v19 + 16))
      {
        case 1:
          v26 = 0x6D614E7473726966;
          goto LABEL_21;
        case 2:
          v24 = 0xE800000000000000;
          v26 = 0x656D614E7473616CLL;
          break;
        case 3:
          v24 = 0xE700000000000000;
          v26 = 0x73736572646461;
          break;
        case 4:
          v24 = 0xE800000000000000;
          v26 = 0x7961646874726962;
          break;
        case 5:
          v26 = 0x6D754E656E6F6870;
          v27 = 7497058;
          goto LABEL_24;
        case 6:
          v26 = 0x6464416C69616D65;
          v28 = 1936942450;
          goto LABEL_28;
        case 7:
          v26 = 0x6E6F6974616C6572;
          v28 = 1885956211;
LABEL_28:
          v24 = v28 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 8:
          v24 = 0xE800000000000000;
          v26 = 0x6565646E65747461;
          break;
        case 9:
          v26 = 0x49746361746E6F63;
          v27 = 7300718;
          goto LABEL_24;
        case 0xA:
          v24 = 0xE800000000000000;
          v29 = 1633906540;
          goto LABEL_34;
        case 0xB:
          v26 = 1836020326;
          break;
        case 0xC:
          v24 = 0xE200000000000000;
          v26 = 28532;
          break;
        case 0xD:
          v26 = 0xD000000000000010;
          v24 = 0x80000001ABF85AA0;
          break;
        case 0xE:
          v24 = 0xE800000000000000;
          v26 = 0x7473657265746E69;
          break;
        case 0xF:
          v24 = 0xE600000000000000;
          v26 = 0x6E6F73726570;
          break;
        case 0x10:
          v26 = 0x6765746143707061;
          v27 = 7959151;
LABEL_24:
          v24 = v27 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 0x11:
          v26 = 0x7461447472617473;
LABEL_21:
          v24 = 0xE900000000000065;
          break;
        case 0x12:
          v24 = 0xE700000000000000;
          v26 = 0x65746144646E65;
          break;
        case 0x13:
          v24 = 0xE800000000000000;
          v29 = 1634891108;
LABEL_34:
          v26 = v29 | 0x6E6F697400000000;
          break;
        case 0x14:
          v26 = 1701869940;
          break;
        case 0x15:
          v24 = 0xE500000000000000;
          v26 = 0x74696D696CLL;
          break;
        case 0x16:
          v24 = 0xE700000000000000;
          v26 = 0x63734174726F73;
          break;
        case 0x17:
          v24 = 0xE800000000000000;
          v26 = 0x6373654474726F73;
          break;
        case 0x18:
          v24 = 0xE600000000000000;
          v26 = 0x656372756F73;
          break;
        case 0x19:
          v24 = 0xE500000000000000;
          v26 = 0x65756C6176;
          break;
        default:
          break;
      }

      v30 = 0xE400000000000000;
      v31 = 1701667182;
      switch(*(v19 - 8))
      {
        case 1:
          v31 = 0x6D614E7473726966;
          goto LABEL_51;
        case 2:
          v30 = 0xE800000000000000;
          v31 = 0x656D614E7473616CLL;
          break;
        case 3:
          v30 = 0xE700000000000000;
          v31 = 0x73736572646461;
          break;
        case 4:
          v30 = 0xE800000000000000;
          v31 = 0x7961646874726962;
          break;
        case 5:
          v31 = 0x6D754E656E6F6870;
          v32 = 7497058;
          goto LABEL_54;
        case 6:
          v31 = 0x6464416C69616D65;
          v33 = 1936942450;
          goto LABEL_58;
        case 7:
          v31 = 0x6E6F6974616C6572;
          v33 = 1885956211;
LABEL_58:
          v30 = v33 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 8:
          v30 = 0xE800000000000000;
          v31 = 0x6565646E65747461;
          break;
        case 9:
          v31 = 0x49746361746E6F63;
          v32 = 7300718;
          goto LABEL_54;
        case 0xA:
          v30 = 0xE800000000000000;
          v34 = 1633906540;
          goto LABEL_64;
        case 0xB:
          v31 = 1836020326;
          break;
        case 0xC:
          v30 = 0xE200000000000000;
          v31 = 28532;
          break;
        case 0xD:
          v31 = 0xD000000000000010;
          v30 = 0x80000001ABF85AA0;
          break;
        case 0xE:
          v30 = 0xE800000000000000;
          v31 = 0x7473657265746E69;
          break;
        case 0xF:
          v30 = 0xE600000000000000;
          v31 = 0x6E6F73726570;
          break;
        case 0x10:
          v31 = 0x6765746143707061;
          v32 = 7959151;
LABEL_54:
          v30 = v32 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 0x11:
          v31 = 0x7461447472617473;
LABEL_51:
          v30 = 0xE900000000000065;
          break;
        case 0x12:
          v30 = 0xE700000000000000;
          v31 = 0x65746144646E65;
          break;
        case 0x13:
          v30 = 0xE800000000000000;
          v34 = 1634891108;
LABEL_64:
          v31 = v34 | 0x6E6F697400000000;
          break;
        case 0x14:
          v31 = 1701869940;
          break;
        case 0x15:
          v30 = 0xE500000000000000;
          v31 = 0x74696D696CLL;
          break;
        case 0x16:
          v30 = 0xE700000000000000;
          v31 = 0x63734174726F73;
          break;
        case 0x17:
          v30 = 0xE800000000000000;
          v31 = 0x6373654474726F73;
          break;
        case 0x18:
          v30 = 0xE600000000000000;
          v31 = 0x656372756F73;
          break;
        case 0x19:
          v30 = 0xE500000000000000;
          v31 = 0x65756C6176;
          break;
        default:
          break;
      }

      v174 = v20;
      if (v26 == v31 && v24 == v30)
      {
      }

      else
      {
        v36 = sub_1ABF25054();

        if ((v36 & 1) == 0)
        {
          v37 = 0xE400000000000000;
          v38 = 1701667182;
          switch(v22)
          {
            case 1:
              v38 = 0x6D614E7473726966;
              goto LABEL_91;
            case 2:
              v37 = 0xE800000000000000;
              v38 = 0x656D614E7473616CLL;
              break;
            case 3:
              v37 = 0xE700000000000000;
              v38 = 0x73736572646461;
              break;
            case 4:
              v37 = 0xE800000000000000;
              v38 = 0x7961646874726962;
              break;
            case 5:
              v38 = 0x6D754E656E6F6870;
              v44 = 7497058;
              goto LABEL_94;
            case 6:
              v38 = 0x6464416C69616D65;
              v45 = 1936942450;
              goto LABEL_98;
            case 7:
              v38 = 0x6E6F6974616C6572;
              v45 = 1885956211;
LABEL_98:
              v37 = v45 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              break;
            case 8:
              v37 = 0xE800000000000000;
              v38 = 0x6565646E65747461;
              break;
            case 9:
              v38 = 0x49746361746E6F63;
              v44 = 7300718;
              goto LABEL_94;
            case 10:
              v37 = 0xE800000000000000;
              v46 = 1633906540;
              goto LABEL_104;
            case 11:
              v38 = 1836020326;
              break;
            case 12:
              v37 = 0xE200000000000000;
              v38 = 28532;
              break;
            case 13:
              v38 = 0xD000000000000010;
              v37 = 0x80000001ABF85AA0;
              break;
            case 14:
              v37 = 0xE800000000000000;
              v38 = 0x7473657265746E69;
              break;
            case 15:
              v37 = 0xE600000000000000;
              v38 = 0x6E6F73726570;
              break;
            case 16:
              v38 = 0x6765746143707061;
              v44 = 7959151;
LABEL_94:
              v37 = v44 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
              break;
            case 17:
              v38 = 0x7461447472617473;
LABEL_91:
              v37 = 0xE900000000000065;
              break;
            case 18:
              v37 = 0xE700000000000000;
              v38 = 0x65746144646E65;
              break;
            case 19:
              v37 = 0xE800000000000000;
              v46 = 1634891108;
LABEL_104:
              v38 = v46 | 0x6E6F697400000000;
              break;
            case 20:
              v38 = 1701869940;
              break;
            case 21:
              v37 = 0xE500000000000000;
              v38 = 0x74696D696CLL;
              break;
            case 22:
              v37 = 0xE700000000000000;
              v38 = 0x63734174726F73;
              break;
            case 23:
              v37 = 0xE800000000000000;
              v38 = 0x6373654474726F73;
              break;
            case 24:
              v37 = 0xE600000000000000;
              v38 = 0x656372756F73;
              break;
            case 25:
              v37 = 0xE500000000000000;
              v38 = 0x65756C6176;
              break;
            default:
              break;
          }

          v47 = 0xE400000000000000;
          v48 = 1701667182;
          v18 = v172;
          v21 = v174;
          switch(v6)
          {
            case 1:
              v48 = 0x6D614E7473726966;
              goto LABEL_121;
            case 2:
              v47 = 0xE800000000000000;
              v48 = 0x656D614E7473616CLL;
              break;
            case 3:
              v47 = 0xE700000000000000;
              v48 = 0x73736572646461;
              break;
            case 4:
              v47 = 0xE800000000000000;
              v48 = 0x7961646874726962;
              break;
            case 5:
              v48 = 0x6D754E656E6F6870;
              v49 = 7497058;
              goto LABEL_124;
            case 6:
              v48 = 0x6464416C69616D65;
              v50 = 1936942450;
              goto LABEL_128;
            case 7:
              v48 = 0x6E6F6974616C6572;
              v50 = 1885956211;
LABEL_128:
              v47 = v50 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              break;
            case 8:
              v47 = 0xE800000000000000;
              v48 = 0x6565646E65747461;
              break;
            case 9:
              v48 = 0x49746361746E6F63;
              v49 = 7300718;
              goto LABEL_124;
            case 10:
              v47 = 0xE800000000000000;
              v51 = 1633906540;
              goto LABEL_134;
            case 11:
              v48 = 1836020326;
              break;
            case 12:
              v47 = 0xE200000000000000;
              v48 = 28532;
              break;
            case 13:
              v48 = 0xD000000000000010;
              v47 = 0x80000001ABF85AA0;
              break;
            case 14:
              v47 = 0xE800000000000000;
              v48 = 0x7473657265746E69;
              break;
            case 15:
              v47 = 0xE600000000000000;
              v48 = 0x6E6F73726570;
              break;
            case 16:
              v48 = 0x6765746143707061;
              v49 = 7959151;
LABEL_124:
              v47 = v49 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
              break;
            case 17:
              v48 = 0x7461447472617473;
LABEL_121:
              v47 = 0xE900000000000065;
              break;
            case 18:
              v47 = 0xE700000000000000;
              v48 = 0x65746144646E65;
              break;
            case 19:
              v47 = 0xE800000000000000;
              v51 = 1634891108;
LABEL_134:
              v48 = v51 | 0x6E6F697400000000;
              break;
            case 20:
              v48 = 1701869940;
              break;
            case 21:
              v47 = 0xE500000000000000;
              v48 = 0x74696D696CLL;
              break;
            case 22:
              v47 = 0xE700000000000000;
              v48 = 0x63734174726F73;
              break;
            case 23:
              v47 = 0xE800000000000000;
              v48 = 0x6373654474726F73;
              break;
            case 24:
              v47 = 0xE600000000000000;
              v48 = 0x656372756F73;
              break;
            case 25:
              v47 = 0xE500000000000000;
              v48 = 0x65756C6176;
              break;
            default:
              break;
          }

          if (v38 == v48 && v37 == v47)
          {
            v43 = 0;
          }

          else
          {
            v43 = sub_1ABF25054();
          }

          goto LABEL_143;
        }
      }

      v39 = *(v23 + 16);
      v40 = v8;
      v41 = *(v25 + 16);

      v42 = v39 >= v41;
      v8 = v40;
      v43 = !v42;
      v18 = v172;
      v21 = v174;
LABEL_143:
      v19 += 24;
      ++v8;
      v20 = v21 + 1;
      if ((v167 ^ v43))
      {
        goto LABEL_146;
      }
    }

    v8 = v18;
LABEL_146:
    if (v167)
    {
      if (v8 < v160)
      {
        goto LABEL_394;
      }

      if (v160 >= v8)
      {
        v6 = v158;
        v7 = v160;
      }

      else
      {
        if (v18 >= v21)
        {
          v53 = v21;
        }

        else
        {
          v53 = v18;
        }

        v54 = 24 * v53 - 8;
        v55 = v8;
        v56 = v160;
        v6 = v158;
        v7 = v160;
        v57 = v164;
        do
        {
          if (v56 != --v55)
          {
            v58 = *a3;
            if (!*a3)
            {
              goto LABEL_401;
            }

            v59 = (v58 + v57);
            v60 = (v58 + v54);
            v61 = *v59;
            v62 = *(v59 + 1);
            v63 = v59[16];
            v64 = *v60;
            *v59 = *(v60 - 1);
            *(v59 + 2) = v64;
            *(v60 - 16) = v61;
            *(v60 - 1) = v62;
            *v60 = v63;
          }

          ++v56;
          v54 -= 24;
          v57 += 24;
        }

        while (v56 < v55);
      }
    }

    else
    {
      v6 = v158;
      v7 = v160;
    }

LABEL_160:
    v65 = a3[1];
    if (v8 >= v65)
    {
      goto LABEL_310;
    }

    if (__OFSUB__(v8, v7))
    {
      goto LABEL_393;
    }

    if (v8 - v7 >= a4)
    {
LABEL_310:
      if (v8 < v7)
      {
        goto LABEL_392;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v147 = *(v6 + 16);
        sub_1ABAD8820();
        v6 = v148;
      }

      v105 = *(v6 + 16);
      v106 = v105 + 1;
      if (v105 >= *(v6 + 24) >> 1)
      {
        sub_1ABAD8820();
        v6 = v149;
      }

      *(v6 + 16) = v106;
      v107 = v6 + 32;
      v108 = (v6 + 32 + 16 * v105);
      *v108 = v7;
      v108[1] = v8;
      v109 = *a1;
      if (!*a1)
      {
        goto LABEL_402;
      }

      v169 = v8;
      if (!v105)
      {
LABEL_359:
        v5 = v169;
        v4 = a3[1];
        if (v169 >= v4)
        {
          goto LABEL_362;
        }

        continue;
      }

      while (1)
      {
        v110 = v106 - 1;
        v111 = (v107 + 16 * (v106 - 1));
        v112 = (v6 + 16 * v106);
        if (v106 >= 4)
        {
          break;
        }

        if (v106 == 3)
        {
          v113 = *(v6 + 32);
          v114 = *(v6 + 40);
          v123 = __OFSUB__(v114, v113);
          v115 = v114 - v113;
          v116 = v123;
LABEL_330:
          if (v116)
          {
            goto LABEL_379;
          }

          v128 = *v112;
          v127 = v112[1];
          v129 = __OFSUB__(v127, v128);
          v130 = v127 - v128;
          v131 = v129;
          if (v129)
          {
            goto LABEL_382;
          }

          v132 = v111[1];
          v133 = v132 - *v111;
          if (__OFSUB__(v132, *v111))
          {
            goto LABEL_385;
          }

          if (__OFADD__(v130, v133))
          {
            goto LABEL_387;
          }

          if (v130 + v133 >= v115)
          {
            if (v115 < v133)
            {
              v110 = v106 - 2;
            }

            goto LABEL_352;
          }

          goto LABEL_345;
        }

        if (v106 < 2)
        {
          goto LABEL_381;
        }

        v135 = *v112;
        v134 = v112[1];
        v123 = __OFSUB__(v134, v135);
        v130 = v134 - v135;
        v131 = v123;
LABEL_345:
        if (v131)
        {
          goto LABEL_384;
        }

        v137 = *v111;
        v136 = v111[1];
        v123 = __OFSUB__(v136, v137);
        v138 = v136 - v137;
        if (v123)
        {
          goto LABEL_386;
        }

        if (v138 < v130)
        {
          goto LABEL_359;
        }

LABEL_352:
        if (v110 - 1 >= v106)
        {
          __break(1u);
LABEL_374:
          __break(1u);
LABEL_375:
          __break(1u);
LABEL_376:
          __break(1u);
LABEL_377:
          __break(1u);
LABEL_378:
          __break(1u);
LABEL_379:
          __break(1u);
LABEL_380:
          __break(1u);
LABEL_381:
          __break(1u);
LABEL_382:
          __break(1u);
LABEL_383:
          __break(1u);
LABEL_384:
          __break(1u);
LABEL_385:
          __break(1u);
LABEL_386:
          __break(1u);
LABEL_387:
          __break(1u);
LABEL_388:
          __break(1u);
LABEL_389:
          __break(1u);
LABEL_390:
          __break(1u);
LABEL_391:
          __break(1u);
LABEL_392:
          __break(1u);
LABEL_393:
          __break(1u);
LABEL_394:
          __break(1u);
LABEL_395:
          __break(1u);
          goto LABEL_396;
        }

        if (!*a3)
        {
          goto LABEL_399;
        }

        v142 = v6;
        v143 = (v107 + 16 * (v110 - 1));
        v144 = *v143;
        v145 = v107 + 16 * v110;
        v6 = *(v145 + 8);
        sub_1ABD70428((*a3 + 24 * *v143), (*a3 + 24 * *v145), *a3 + 24 * v6, v109);
        if (v171)
        {
          goto LABEL_372;
        }

        if (v6 < v144)
        {
          goto LABEL_374;
        }

        v146 = *(v142 + 16);
        if (v110 > v146)
        {
          goto LABEL_375;
        }

        *v143 = v144;
        v143[1] = v6;
        if (v110 >= v146)
        {
          goto LABEL_376;
        }

        v171 = 0;
        v106 = v146 - 1;
        sub_1ABE7A0CC((v145 + 16), v146 - 1 - v110, (v107 + 16 * v110));
        v6 = v142;
        *(v142 + 16) = v146 - 1;
        if (v146 <= 2)
        {
          goto LABEL_359;
        }
      }

      v117 = v107 + 16 * v106;
      v118 = *(v117 - 64);
      v119 = *(v117 - 56);
      v123 = __OFSUB__(v119, v118);
      v120 = v119 - v118;
      if (v123)
      {
        goto LABEL_377;
      }

      v122 = *(v117 - 48);
      v121 = *(v117 - 40);
      v123 = __OFSUB__(v121, v122);
      v115 = v121 - v122;
      v116 = v123;
      if (v123)
      {
        goto LABEL_378;
      }

      v124 = v112[1];
      v125 = v124 - *v112;
      if (__OFSUB__(v124, *v112))
      {
        goto LABEL_380;
      }

      v123 = __OFADD__(v115, v125);
      v126 = v115 + v125;
      if (v123)
      {
        goto LABEL_383;
      }

      if (v126 >= v120)
      {
        v140 = *v111;
        v139 = v111[1];
        v123 = __OFSUB__(v139, v140);
        v141 = v139 - v140;
        if (v123)
        {
          goto LABEL_391;
        }

        if (v115 < v141)
        {
          v110 = v106 - 2;
        }

        goto LABEL_352;
      }

      goto LABEL_330;
    }

    break;
  }

  v66 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_395;
  }

  if (v66 >= v65)
  {
    v66 = a3[1];
  }

  if (v66 < v7)
  {
LABEL_396:
    __break(1u);
    goto LABEL_397;
  }

  if (v8 == v66)
  {
    goto LABEL_310;
  }

  v159 = v6;
  v161 = v7;
  v173 = *a3;
  v67 = *a3 + 24 * v8 - 24;
  v68 = v7 - v8;
  v163 = v66;
  while (2)
  {
    v166 = v67;
    v168 = v8;
    v165 = v68;
    v69 = v68;
    v70 = v67;
LABEL_170:
    v71 = v70[24];
    v174 = (v70 + 24);
    v72 = *(v70 + 4);
    v73 = *v70;
    v74 = *(v70 + 1);
    v75 = 0xE400000000000000;
    v76 = 1701667182;
    switch(v70[24])
    {
      case 1u:
        v76 = 0x6D614E7473726966;
        goto LABEL_185;
      case 2u:
        v75 = 0xE800000000000000;
        v76 = 0x656D614E7473616CLL;
        break;
      case 3u:
        v75 = 0xE700000000000000;
        v76 = 0x73736572646461;
        break;
      case 4u:
        v75 = 0xE800000000000000;
        v76 = 0x7961646874726962;
        break;
      case 5u:
        v76 = 0x6D754E656E6F6870;
        v77 = 7497058;
        goto LABEL_188;
      case 6u:
        v76 = 0x6464416C69616D65;
        v78 = 1936942450;
        goto LABEL_192;
      case 7u:
        v76 = 0x6E6F6974616C6572;
        v78 = 1885956211;
LABEL_192:
        v75 = v78 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 8u:
        v75 = 0xE800000000000000;
        v76 = 0x6565646E65747461;
        break;
      case 9u:
        v76 = 0x49746361746E6F63;
        v77 = 7300718;
        goto LABEL_188;
      case 0xAu:
        v75 = 0xE800000000000000;
        v79 = 1633906540;
        goto LABEL_198;
      case 0xBu:
        v76 = 1836020326;
        break;
      case 0xCu:
        v75 = 0xE200000000000000;
        v76 = 28532;
        break;
      case 0xDu:
        v76 = 0xD000000000000010;
        v75 = 0x80000001ABF85AA0;
        break;
      case 0xEu:
        v75 = 0xE800000000000000;
        v76 = 0x7473657265746E69;
        break;
      case 0xFu:
        v75 = 0xE600000000000000;
        v76 = 0x6E6F73726570;
        break;
      case 0x10u:
        v76 = 0x6765746143707061;
        v77 = 7959151;
LABEL_188:
        v75 = v77 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      case 0x11u:
        v76 = 0x7461447472617473;
LABEL_185:
        v75 = 0xE900000000000065;
        break;
      case 0x12u:
        v75 = 0xE700000000000000;
        v76 = 0x65746144646E65;
        break;
      case 0x13u:
        v75 = 0xE800000000000000;
        v79 = 1634891108;
LABEL_198:
        v76 = v79 | 0x6E6F697400000000;
        break;
      case 0x14u:
        v76 = 1701869940;
        break;
      case 0x15u:
        v75 = 0xE500000000000000;
        v76 = 0x74696D696CLL;
        break;
      case 0x16u:
        v75 = 0xE700000000000000;
        v76 = 0x63734174726F73;
        break;
      case 0x17u:
        v75 = 0xE800000000000000;
        v76 = 0x6373654474726F73;
        break;
      case 0x18u:
        v75 = 0xE600000000000000;
        v76 = 0x656372756F73;
        break;
      case 0x19u:
        v75 = 0xE500000000000000;
        v76 = 0x65756C6176;
        break;
      default:
        break;
    }

    v80 = 0xE400000000000000;
    v81 = 1701667182;
    switch(*v70)
    {
      case 1u:
        v81 = 0x6D614E7473726966;
        goto LABEL_215;
      case 2u:
        v80 = 0xE800000000000000;
        v81 = 0x656D614E7473616CLL;
        break;
      case 3u:
        v80 = 0xE700000000000000;
        v81 = 0x73736572646461;
        break;
      case 4u:
        v80 = 0xE800000000000000;
        v81 = 0x7961646874726962;
        break;
      case 5u:
        v81 = 0x6D754E656E6F6870;
        v82 = 7497058;
        goto LABEL_218;
      case 6u:
        v81 = 0x6464416C69616D65;
        v83 = 1936942450;
        goto LABEL_222;
      case 7u:
        v81 = 0x6E6F6974616C6572;
        v83 = 1885956211;
LABEL_222:
        v80 = v83 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 8u:
        v80 = 0xE800000000000000;
        v81 = 0x6565646E65747461;
        break;
      case 9u:
        v81 = 0x49746361746E6F63;
        v82 = 7300718;
        goto LABEL_218;
      case 0xAu:
        v80 = 0xE800000000000000;
        v84 = 1633906540;
        goto LABEL_228;
      case 0xBu:
        v81 = 1836020326;
        break;
      case 0xCu:
        v80 = 0xE200000000000000;
        v81 = 28532;
        break;
      case 0xDu:
        v81 = 0xD000000000000010;
        v80 = 0x80000001ABF85AA0;
        break;
      case 0xEu:
        v80 = 0xE800000000000000;
        v81 = 0x7473657265746E69;
        break;
      case 0xFu:
        v80 = 0xE600000000000000;
        v81 = 0x6E6F73726570;
        break;
      case 0x10u:
        v81 = 0x6765746143707061;
        v82 = 7959151;
LABEL_218:
        v80 = v82 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      case 0x11u:
        v81 = 0x7461447472617473;
LABEL_215:
        v80 = 0xE900000000000065;
        break;
      case 0x12u:
        v80 = 0xE700000000000000;
        v81 = 0x65746144646E65;
        break;
      case 0x13u:
        v80 = 0xE800000000000000;
        v84 = 1634891108;
LABEL_228:
        v81 = v84 | 0x6E6F697400000000;
        break;
      case 0x14u:
        v81 = 1701869940;
        break;
      case 0x15u:
        v80 = 0xE500000000000000;
        v81 = 0x74696D696CLL;
        break;
      case 0x16u:
        v80 = 0xE700000000000000;
        v81 = 0x63734174726F73;
        break;
      case 0x17u:
        v80 = 0xE800000000000000;
        v81 = 0x6373654474726F73;
        break;
      case 0x18u:
        v80 = 0xE600000000000000;
        v81 = 0x656372756F73;
        break;
      case 0x19u:
        v80 = 0xE500000000000000;
        v81 = 0x65756C6176;
        break;
      default:
        break;
    }

    if (v76 == v81 && v75 == v80)
    {
      v89 = *(v70 + 4);

LABEL_238:
      v90 = *(v72 + 16);
      v91 = *(v74 + 16);

      if (v90 >= v91)
      {
        goto LABEL_308;
      }

      goto LABEL_303;
    }

    v86 = sub_1ABF25054();

    if (v86)
    {
      goto LABEL_238;
    }

    v87 = 0xE400000000000000;
    v88 = 1701667182;
    switch(v71)
    {
      case 1:
        v88 = 0x6D614E7473726966;
        goto LABEL_253;
      case 2:
        v87 = 0xE800000000000000;
        v88 = 0x656D614E7473616CLL;
        break;
      case 3:
        v87 = 0xE700000000000000;
        v88 = 0x73736572646461;
        break;
      case 4:
        v87 = 0xE800000000000000;
        v88 = 0x7961646874726962;
        break;
      case 5:
        v88 = 0x6D754E656E6F6870;
        v92 = 7497058;
        goto LABEL_256;
      case 6:
        v88 = 0x6464416C69616D65;
        v93 = 1936942450;
        goto LABEL_260;
      case 7:
        v88 = 0x6E6F6974616C6572;
        v93 = 1885956211;
LABEL_260:
        v87 = v93 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 8:
        v87 = 0xE800000000000000;
        v88 = 0x6565646E65747461;
        break;
      case 9:
        v88 = 0x49746361746E6F63;
        v92 = 7300718;
        goto LABEL_256;
      case 10:
        v87 = 0xE800000000000000;
        v94 = 1633906540;
        goto LABEL_266;
      case 11:
        v88 = 1836020326;
        break;
      case 12:
        v87 = 0xE200000000000000;
        v88 = 28532;
        break;
      case 13:
        v88 = 0xD000000000000010;
        v87 = 0x80000001ABF85AA0;
        break;
      case 14:
        v87 = 0xE800000000000000;
        v88 = 0x7473657265746E69;
        break;
      case 15:
        v87 = 0xE600000000000000;
        v88 = 0x6E6F73726570;
        break;
      case 16:
        v88 = 0x6765746143707061;
        v92 = 7959151;
LABEL_256:
        v87 = v92 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      case 17:
        v88 = 0x7461447472617473;
LABEL_253:
        v87 = 0xE900000000000065;
        break;
      case 18:
        v87 = 0xE700000000000000;
        v88 = 0x65746144646E65;
        break;
      case 19:
        v87 = 0xE800000000000000;
        v94 = 1634891108;
LABEL_266:
        v88 = v94 | 0x6E6F697400000000;
        break;
      case 20:
        v88 = 1701869940;
        break;
      case 21:
        v87 = 0xE500000000000000;
        v88 = 0x74696D696CLL;
        break;
      case 22:
        v87 = 0xE700000000000000;
        v88 = 0x63734174726F73;
        break;
      case 23:
        v87 = 0xE800000000000000;
        v88 = 0x6373654474726F73;
        break;
      case 24:
        v87 = 0xE600000000000000;
        v88 = 0x656372756F73;
        break;
      case 25:
        v87 = 0xE500000000000000;
        v88 = 0x65756C6176;
        break;
      default:
        break;
    }

    v95 = 0xE400000000000000;
    v96 = 1701667182;
    switch(v73)
    {
      case 1:
        v96 = 0x6D614E7473726966;
        goto LABEL_283;
      case 2:
        v95 = 0xE800000000000000;
        v96 = 0x656D614E7473616CLL;
        break;
      case 3:
        v95 = 0xE700000000000000;
        v96 = 0x73736572646461;
        break;
      case 4:
        v95 = 0xE800000000000000;
        v96 = 0x7961646874726962;
        break;
      case 5:
        v96 = 0x6D754E656E6F6870;
        v97 = 7497058;
        goto LABEL_286;
      case 6:
        v96 = 0x6464416C69616D65;
        v98 = 1936942450;
        goto LABEL_290;
      case 7:
        v96 = 0x6E6F6974616C6572;
        v98 = 1885956211;
LABEL_290:
        v95 = v98 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 8:
        v95 = 0xE800000000000000;
        v96 = 0x6565646E65747461;
        break;
      case 9:
        v96 = 0x49746361746E6F63;
        v97 = 7300718;
        goto LABEL_286;
      case 10:
        v95 = 0xE800000000000000;
        v99 = 1633906540;
        goto LABEL_296;
      case 11:
        v96 = 1836020326;
        break;
      case 12:
        v95 = 0xE200000000000000;
        v96 = 28532;
        break;
      case 13:
        v96 = 0xD000000000000010;
        v95 = 0x80000001ABF85AA0;
        break;
      case 14:
        v95 = 0xE800000000000000;
        v96 = 0x7473657265746E69;
        break;
      case 15:
        v95 = 0xE600000000000000;
        v96 = 0x6E6F73726570;
        break;
      case 16:
        v96 = 0x6765746143707061;
        v97 = 7959151;
LABEL_286:
        v95 = v97 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      case 17:
        v96 = 0x7461447472617473;
LABEL_283:
        v95 = 0xE900000000000065;
        break;
      case 18:
        v95 = 0xE700000000000000;
        v96 = 0x65746144646E65;
        break;
      case 19:
        v95 = 0xE800000000000000;
        v99 = 1634891108;
LABEL_296:
        v96 = v99 | 0x6E6F697400000000;
        break;
      case 20:
        v96 = 1701869940;
        break;
      case 21:
        v95 = 0xE500000000000000;
        v96 = 0x74696D696CLL;
        break;
      case 22:
        v95 = 0xE700000000000000;
        v96 = 0x63734174726F73;
        break;
      case 23:
        v95 = 0xE800000000000000;
        v96 = 0x6373654474726F73;
        break;
      case 24:
        v95 = 0xE600000000000000;
        v96 = 0x656372756F73;
        break;
      case 25:
        v95 = 0xE500000000000000;
        v96 = 0x65756C6176;
        break;
      default:
        break;
    }

    if (v88 == v96 && v87 == v95)
    {

LABEL_308:
      v8 = v168 + 1;
      v67 = v166 + 24;
      v68 = v165 - 1;
      if (v168 + 1 == v163)
      {
        v8 = v163;
        v6 = v159;
        v7 = v161;
        goto LABEL_310;
      }

      continue;
    }

    break;
  }

  v101 = sub_1ABF25054();

  if ((v101 & 1) == 0)
  {
    goto LABEL_308;
  }

LABEL_303:
  if (v173)
  {
    v102 = v70[24];
    v103 = *(v70 + 4);
    v104 = v70[40];
    *v174 = *v70;
    *(v70 + 5) = *(v70 + 2);
    *v70 = v102;
    *(v70 + 1) = v103;
    v70[16] = v104;
    v70 -= 24;
    v42 = __CFADD__(v69++, 1);
    if (v42)
    {
      goto LABEL_308;
    }

    goto LABEL_170;
  }

  __break(1u);
LABEL_399:
  __break(1u);
LABEL_400:
  __break(1u);
LABEL_401:
  __break(1u);
LABEL_402:
  __break(1u);
LABEL_403:
  __break(1u);
}

uint64_t sub_1ABD70428(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 >= v9)
  {
    sub_1ABADD508(a2, (a3 - a2) / 24, a4);
    v84 = v4;
    v10 = &v4[24 * v9];
    while (1)
    {
      v46 = v6;
      v88 = (v6 - 24);
      v47 = v5;
      v83 = v6;
      while (1)
      {
        if (v10 <= v84 || v46 <= v7)
        {
          v4 = v84;
          goto LABEL_263;
        }

        v90 = v10;
        v49 = v10 - 24;
        v50 = *(v10 - 24);
        v51 = *(v10 - 2);
        v52 = *(v46 - 24);
        v53 = *(v46 - 2);
        v54 = 0xE400000000000000;
        v55 = 1701667182;
        switch(v50)
        {
          case 1:
            v55 = 0x6D614E7473726966;
            goto LABEL_168;
          case 2:
            v54 = 0xE800000000000000;
            v55 = 0x656D614E7473616CLL;
            break;
          case 3:
            v54 = 0xE700000000000000;
            v55 = 0x73736572646461;
            break;
          case 4:
            v54 = 0xE800000000000000;
            v55 = 0x7961646874726962;
            break;
          case 5:
            v55 = 0x6D754E656E6F6870;
            v56 = 7497058;
            goto LABEL_171;
          case 6:
            v55 = 0x6464416C69616D65;
            v57 = 1936942450;
            goto LABEL_175;
          case 7:
            v55 = 0x6E6F6974616C6572;
            v57 = 1885956211;
LABEL_175:
            v54 = v57 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 8:
            v54 = 0xE800000000000000;
            v55 = 0x6565646E65747461;
            break;
          case 9:
            v55 = 0x49746361746E6F63;
            v56 = 7300718;
            goto LABEL_171;
          case 10:
            v54 = 0xE800000000000000;
            v58 = 1633906540;
            goto LABEL_181;
          case 11:
            v55 = 1836020326;
            break;
          case 12:
            v54 = 0xE200000000000000;
            v55 = 28532;
            break;
          case 13:
            v55 = 0xD000000000000010;
            v54 = 0x80000001ABF85AA0;
            break;
          case 14:
            v54 = 0xE800000000000000;
            v55 = 0x7473657265746E69;
            break;
          case 15:
            v54 = 0xE600000000000000;
            v55 = 0x6E6F73726570;
            break;
          case 16:
            v55 = 0x6765746143707061;
            v56 = 7959151;
LABEL_171:
            v54 = v56 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            break;
          case 17:
            v55 = 0x7461447472617473;
LABEL_168:
            v54 = 0xE900000000000065;
            break;
          case 18:
            v54 = 0xE700000000000000;
            v55 = 0x65746144646E65;
            break;
          case 19:
            v54 = 0xE800000000000000;
            v58 = 1634891108;
LABEL_181:
            v55 = v58 | 0x6E6F697400000000;
            break;
          case 20:
            v55 = 1701869940;
            break;
          case 21:
            v54 = 0xE500000000000000;
            v55 = 0x74696D696CLL;
            break;
          case 22:
            v54 = 0xE700000000000000;
            v55 = 0x63734174726F73;
            break;
          case 23:
            v54 = 0xE800000000000000;
            v55 = 0x6373654474726F73;
            break;
          case 24:
            v54 = 0xE600000000000000;
            v55 = 0x656372756F73;
            break;
          case 25:
            v54 = 0xE500000000000000;
            v55 = 0x65756C6176;
            break;
          default:
            break;
        }

        v59 = 0xE400000000000000;
        v60 = 1701667182;
        switch(v52)
        {
          case 1:
            v60 = 0x6D614E7473726966;
            goto LABEL_198;
          case 2:
            v59 = 0xE800000000000000;
            v60 = 0x656D614E7473616CLL;
            break;
          case 3:
            v59 = 0xE700000000000000;
            v60 = 0x73736572646461;
            break;
          case 4:
            v59 = 0xE800000000000000;
            v60 = 0x7961646874726962;
            break;
          case 5:
            v60 = 0x6D754E656E6F6870;
            v61 = 7497058;
            goto LABEL_201;
          case 6:
            v60 = 0x6464416C69616D65;
            v62 = 1936942450;
            goto LABEL_205;
          case 7:
            v60 = 0x6E6F6974616C6572;
            v62 = 1885956211;
LABEL_205:
            v59 = v62 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 8:
            v59 = 0xE800000000000000;
            v60 = 0x6565646E65747461;
            break;
          case 9:
            v60 = 0x49746361746E6F63;
            v61 = 7300718;
            goto LABEL_201;
          case 10:
            v59 = 0xE800000000000000;
            v63 = 1633906540;
            goto LABEL_211;
          case 11:
            v60 = 1836020326;
            break;
          case 12:
            v59 = 0xE200000000000000;
            v60 = 28532;
            break;
          case 13:
            v60 = 0xD000000000000010;
            v59 = 0x80000001ABF85AA0;
            break;
          case 14:
            v59 = 0xE800000000000000;
            v60 = 0x7473657265746E69;
            break;
          case 15:
            v59 = 0xE600000000000000;
            v60 = 0x6E6F73726570;
            break;
          case 16:
            v60 = 0x6765746143707061;
            v61 = 7959151;
LABEL_201:
            v59 = v61 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            break;
          case 17:
            v60 = 0x7461447472617473;
LABEL_198:
            v59 = 0xE900000000000065;
            break;
          case 18:
            v59 = 0xE700000000000000;
            v60 = 0x65746144646E65;
            break;
          case 19:
            v59 = 0xE800000000000000;
            v63 = 1634891108;
LABEL_211:
            v60 = v63 | 0x6E6F697400000000;
            break;
          case 20:
            v60 = 1701869940;
            break;
          case 21:
            v59 = 0xE500000000000000;
            v60 = 0x74696D696CLL;
            break;
          case 22:
            v59 = 0xE700000000000000;
            v60 = 0x63734174726F73;
            break;
          case 23:
            v59 = 0xE800000000000000;
            v60 = 0x6373654474726F73;
            break;
          case 24:
            v59 = 0xE600000000000000;
            v60 = 0x656372756F73;
            break;
          case 25:
            v59 = 0xE500000000000000;
            v60 = 0x65756C6176;
            break;
          default:
            break;
        }

        v86 = v47;
        v64 = v7;
        if (v55 != v60 || v54 != v59)
        {
          break;
        }

LABEL_221:
        v69 = *(v51 + 16);
        v70 = *(v53 + 16);

        v71 = v86;
        v5 = (v86 - 24);
        v11 = v69 >= v70;
        v7 = v64;
        v10 = v90;
        if (!v11)
        {
          goto LABEL_260;
        }

LABEL_258:
        v26 = v10 == v71;
        v47 = v5;
        v10 = v49;
        v46 = v83;
        if (!v26)
        {
          v78 = *v49;
          *(v5 + 16) = *(v49 + 2);
          *v5 = v78;
          v47 = v5;
          v10 = v49;
        }
      }

      v66 = sub_1ABF25054();

      if (v66)
      {
        goto LABEL_221;
      }

      v67 = 0xE400000000000000;
      v68 = 1701667182;
      v7 = v64;
      switch(v50)
      {
        case 1:
          v68 = 0x6D614E7473726966;
          goto LABEL_236;
        case 2:
          v67 = 0xE800000000000000;
          v68 = 0x656D614E7473616CLL;
          break;
        case 3:
          v67 = 0xE700000000000000;
          v68 = 0x73736572646461;
          break;
        case 4:
          v67 = 0xE800000000000000;
          v68 = 0x7961646874726962;
          break;
        case 5:
          v68 = 0x6D754E656E6F6870;
          v72 = 7497058;
          goto LABEL_239;
        case 6:
          v68 = 0x6464416C69616D65;
          v73 = 1936942450;
          goto LABEL_243;
        case 7:
          v68 = 0x6E6F6974616C6572;
          v73 = 1885956211;
LABEL_243:
          v67 = v73 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 8:
          v67 = 0xE800000000000000;
          v68 = 0x6565646E65747461;
          break;
        case 9:
          v68 = 0x49746361746E6F63;
          v72 = 7300718;
          goto LABEL_239;
        case 10:
          v67 = 0xE800000000000000;
          v74 = 1633906540;
          goto LABEL_249;
        case 11:
          v68 = 1836020326;
          break;
        case 12:
          v67 = 0xE200000000000000;
          v68 = 28532;
          break;
        case 13:
          v68 = 0xD000000000000010;
          v67 = 0x80000001ABF85AA0;
          break;
        case 14:
          v67 = 0xE800000000000000;
          v68 = 0x7473657265746E69;
          break;
        case 15:
          v67 = 0xE600000000000000;
          v68 = 0x6E6F73726570;
          break;
        case 16:
          v68 = 0x6765746143707061;
          v72 = 7959151;
LABEL_239:
          v67 = v72 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 17:
          v68 = 0x7461447472617473;
LABEL_236:
          v67 = 0xE900000000000065;
          break;
        case 18:
          v67 = 0xE700000000000000;
          v68 = 0x65746144646E65;
          break;
        case 19:
          v67 = 0xE800000000000000;
          v74 = 1634891108;
LABEL_249:
          v68 = v74 | 0x6E6F697400000000;
          break;
        case 20:
          v68 = 1701869940;
          break;
        case 21:
          v67 = 0xE500000000000000;
          v68 = 0x74696D696CLL;
          break;
        case 22:
          v67 = 0xE700000000000000;
          v68 = 0x63734174726F73;
          break;
        case 23:
          v67 = 0xE800000000000000;
          v68 = 0x6373654474726F73;
          break;
        case 24:
          v67 = 0xE600000000000000;
          v68 = 0x656372756F73;
          break;
        case 25:
          v67 = 0xE500000000000000;
          v68 = 0x65756C6176;
          break;
        default:
          break;
      }

      v76 = v68 == sub_1ABD7738C(v52) && v67 == v75;
      v10 = v90;
      if (v76)
      {
        v77 = 0;
      }

      else
      {
        v77 = sub_1ABF25054();
      }

      v71 = v86;
      v5 = (v86 - 24);
      if ((v77 & 1) == 0)
      {
        goto LABEL_258;
      }

LABEL_260:
      v6 = v88;
      if (v71 != v83)
      {
        v79 = *v88;
        *(v5 + 16) = *(v88 + 2);
        *v5 = v79;
      }
    }
  }

  sub_1ABADD508(a1, (a2 - a1) / 24, a4);
  v10 = &v4[24 * v8];
  v89 = v10;
  while (1)
  {
    v11 = v4 >= v10 || v6 >= v5;
    if (v11)
    {
      break;
    }

    v12 = *v6;
    v87 = v6;
    v13 = *(v6 + 1);
    v14 = *v4;
    v15 = 0xE400000000000000;
    v16 = *(v4 + 1);
    v17 = 1701667182;
    switch(v12)
    {
      case 1:
        v17 = 0x6D614E7473726966;
        goto LABEL_22;
      case 2:
        v15 = 0xE800000000000000;
        v17 = 0x656D614E7473616CLL;
        break;
      case 3:
        v15 = 0xE700000000000000;
        v17 = 0x73736572646461;
        break;
      case 4:
        v15 = 0xE800000000000000;
        v17 = 0x7961646874726962;
        break;
      case 5:
        v17 = 0x6D754E656E6F6870;
        v18 = 7497058;
        goto LABEL_25;
      case 6:
        v17 = 0x6464416C69616D65;
        v19 = 1936942450;
        goto LABEL_29;
      case 7:
        v17 = 0x6E6F6974616C6572;
        v19 = 1885956211;
LABEL_29:
        v15 = v19 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 8:
        v15 = 0xE800000000000000;
        v17 = 0x6565646E65747461;
        break;
      case 9:
        v17 = 0x49746361746E6F63;
        v18 = 7300718;
        goto LABEL_25;
      case 10:
        v15 = 0xE800000000000000;
        v20 = 1633906540;
        goto LABEL_35;
      case 11:
        v17 = 1836020326;
        break;
      case 12:
        v15 = 0xE200000000000000;
        v17 = 28532;
        break;
      case 13:
        v17 = 0xD000000000000010;
        v15 = 0x80000001ABF85AA0;
        break;
      case 14:
        v15 = 0xE800000000000000;
        v17 = 0x7473657265746E69;
        break;
      case 15:
        v15 = 0xE600000000000000;
        v17 = 0x6E6F73726570;
        break;
      case 16:
        v17 = 0x6765746143707061;
        v18 = 7959151;
LABEL_25:
        v15 = v18 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      case 17:
        v17 = 0x7461447472617473;
LABEL_22:
        v15 = 0xE900000000000065;
        break;
      case 18:
        v15 = 0xE700000000000000;
        v17 = 0x65746144646E65;
        break;
      case 19:
        v15 = 0xE800000000000000;
        v20 = 1634891108;
LABEL_35:
        v17 = v20 | 0x6E6F697400000000;
        break;
      case 20:
        v17 = 1701869940;
        break;
      case 21:
        v15 = 0xE500000000000000;
        v17 = 0x74696D696CLL;
        break;
      case 22:
        v15 = 0xE700000000000000;
        v17 = 0x63734174726F73;
        break;
      case 23:
        v15 = 0xE800000000000000;
        v17 = 0x6373654474726F73;
        break;
      case 24:
        v15 = 0xE600000000000000;
        v17 = 0x656372756F73;
        break;
      case 25:
        v15 = 0xE500000000000000;
        v17 = 0x65756C6176;
        break;
      default:
        break;
    }

    v21 = 0xE400000000000000;
    v22 = 1701667182;
    switch(*v4)
    {
      case 1:
        v22 = 0x6D614E7473726966;
        goto LABEL_52;
      case 2:
        v21 = 0xE800000000000000;
        v22 = 0x656D614E7473616CLL;
        break;
      case 3:
        v21 = 0xE700000000000000;
        v22 = 0x73736572646461;
        break;
      case 4:
        v21 = 0xE800000000000000;
        v22 = 0x7961646874726962;
        break;
      case 5:
        v22 = 0x6D754E656E6F6870;
        v23 = 7497058;
        goto LABEL_55;
      case 6:
        v22 = 0x6464416C69616D65;
        v24 = 1936942450;
        goto LABEL_59;
      case 7:
        v22 = 0x6E6F6974616C6572;
        v24 = 1885956211;
LABEL_59:
        v21 = v24 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 8:
        v21 = 0xE800000000000000;
        v22 = 0x6565646E65747461;
        break;
      case 9:
        v22 = 0x49746361746E6F63;
        v23 = 7300718;
        goto LABEL_55;
      case 10:
        v21 = 0xE800000000000000;
        v25 = 1633906540;
        goto LABEL_65;
      case 11:
        v22 = 1836020326;
        break;
      case 12:
        v21 = 0xE200000000000000;
        v22 = 28532;
        break;
      case 13:
        v22 = 0xD000000000000010;
        v21 = 0x80000001ABF85AA0;
        break;
      case 14:
        v21 = 0xE800000000000000;
        v22 = 0x7473657265746E69;
        break;
      case 15:
        v21 = 0xE600000000000000;
        v22 = 0x6E6F73726570;
        break;
      case 16:
        v22 = 0x6765746143707061;
        v23 = 7959151;
LABEL_55:
        v21 = v23 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      case 17:
        v22 = 0x7461447472617473;
LABEL_52:
        v21 = 0xE900000000000065;
        break;
      case 18:
        v21 = 0xE700000000000000;
        v22 = 0x65746144646E65;
        break;
      case 19:
        v21 = 0xE800000000000000;
        v25 = 1634891108;
LABEL_65:
        v22 = v25 | 0x6E6F697400000000;
        break;
      case 20:
        v22 = 1701869940;
        break;
      case 21:
        v21 = 0xE500000000000000;
        v22 = 0x74696D696CLL;
        break;
      case 22:
        v21 = 0xE700000000000000;
        v22 = 0x63734174726F73;
        break;
      case 23:
        v21 = 0xE800000000000000;
        v22 = 0x6373654474726F73;
        break;
      case 24:
        v21 = 0xE600000000000000;
        v22 = 0x656372756F73;
        break;
      case 25:
        v21 = 0xE500000000000000;
        v22 = 0x65756C6176;
        break;
      default:
        break;
    }

    v85 = v7;
    v26 = v17 == v22 && v15 == v21;
    if (v26)
    {

LABEL_75:
      v30 = *(v13 + 16);
      v31 = v4;
      v32 = *(v16 + 16);

      v11 = v30 >= v32;
      v4 = v31;
      v10 = v89;
      if (v11)
      {
        goto LABEL_143;
      }

      goto LABEL_76;
    }

    v27 = sub_1ABF25054();

    if (v27)
    {
      goto LABEL_75;
    }

    v28 = 0xE400000000000000;
    v29 = 1701667182;
    switch(v12)
    {
      case 1:
        v29 = 0x6D614E7473726966;
        goto LABEL_91;
      case 2:
        v28 = 0xE800000000000000;
        v29 = 0x656D614E7473616CLL;
        break;
      case 3:
        v28 = 0xE700000000000000;
        v29 = 0x73736572646461;
        break;
      case 4:
        v28 = 0xE800000000000000;
        v29 = 0x7961646874726962;
        break;
      case 5:
        v29 = 0x6D754E656E6F6870;
        v35 = 7497058;
        goto LABEL_94;
      case 6:
        v29 = 0x6464416C69616D65;
        v36 = 1936942450;
        goto LABEL_98;
      case 7:
        v29 = 0x6E6F6974616C6572;
        v36 = 1885956211;
LABEL_98:
        v28 = v36 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 8:
        v28 = 0xE800000000000000;
        v29 = 0x6565646E65747461;
        break;
      case 9:
        v29 = 0x49746361746E6F63;
        v35 = 7300718;
        goto LABEL_94;
      case 10:
        v28 = 0xE800000000000000;
        v37 = 1633906540;
        goto LABEL_104;
      case 11:
        v29 = 1836020326;
        break;
      case 12:
        v28 = 0xE200000000000000;
        v29 = 28532;
        break;
      case 13:
        v29 = 0xD000000000000010;
        v28 = 0x80000001ABF85AA0;
        break;
      case 14:
        v28 = 0xE800000000000000;
        v29 = 0x7473657265746E69;
        break;
      case 15:
        v28 = 0xE600000000000000;
        v29 = 0x6E6F73726570;
        break;
      case 16:
        v29 = 0x6765746143707061;
        v35 = 7959151;
LABEL_94:
        v28 = v35 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      case 17:
        v29 = 0x7461447472617473;
LABEL_91:
        v28 = 0xE900000000000065;
        break;
      case 18:
        v28 = 0xE700000000000000;
        v29 = 0x65746144646E65;
        break;
      case 19:
        v28 = 0xE800000000000000;
        v37 = 1634891108;
LABEL_104:
        v29 = v37 | 0x6E6F697400000000;
        break;
      case 20:
        v29 = 1701869940;
        break;
      case 21:
        v28 = 0xE500000000000000;
        v29 = 0x74696D696CLL;
        break;
      case 22:
        v28 = 0xE700000000000000;
        v29 = 0x63734174726F73;
        break;
      case 23:
        v28 = 0xE800000000000000;
        v29 = 0x6373654474726F73;
        break;
      case 24:
        v28 = 0xE600000000000000;
        v29 = 0x656372756F73;
        break;
      case 25:
        v28 = 0xE500000000000000;
        v29 = 0x65756C6176;
        break;
      default:
        break;
    }

    v38 = 0xE400000000000000;
    v10 = v89;
    v39 = 1701667182;
    switch(v14)
    {
      case 1:
        v39 = 0x6D614E7473726966;
        goto LABEL_121;
      case 2:
        v38 = 0xE800000000000000;
        v39 = 0x656D614E7473616CLL;
        break;
      case 3:
        v38 = 0xE700000000000000;
        v39 = 0x73736572646461;
        break;
      case 4:
        v38 = 0xE800000000000000;
        v39 = 0x7961646874726962;
        break;
      case 5:
        v39 = 0x6D754E656E6F6870;
        v40 = 7497058;
        goto LABEL_124;
      case 6:
        v39 = 0x6464416C69616D65;
        v41 = 1936942450;
        goto LABEL_128;
      case 7:
        v39 = 0x6E6F6974616C6572;
        v41 = 1885956211;
LABEL_128:
        v38 = v41 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 8:
        v38 = 0xE800000000000000;
        v39 = 0x6565646E65747461;
        break;
      case 9:
        v39 = 0x49746361746E6F63;
        v40 = 7300718;
        goto LABEL_124;
      case 10:
        v38 = 0xE800000000000000;
        v42 = 1633906540;
        goto LABEL_134;
      case 11:
        v39 = 1836020326;
        break;
      case 12:
        v38 = 0xE200000000000000;
        v39 = 28532;
        break;
      case 13:
        v39 = 0xD000000000000010;
        v38 = 0x80000001ABF85AA0;
        break;
      case 14:
        v38 = 0xE800000000000000;
        v39 = 0x7473657265746E69;
        break;
      case 15:
        v38 = 0xE600000000000000;
        v39 = 0x6E6F73726570;
        break;
      case 16:
        v39 = 0x6765746143707061;
        v40 = 7959151;
LABEL_124:
        v38 = v40 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      case 17:
        v39 = 0x7461447472617473;
LABEL_121:
        v38 = 0xE900000000000065;
        break;
      case 18:
        v38 = 0xE700000000000000;
        v39 = 0x65746144646E65;
        break;
      case 19:
        v38 = 0xE800000000000000;
        v42 = 1634891108;
LABEL_134:
        v39 = v42 | 0x6E6F697400000000;
        break;
      case 20:
        v39 = 1701869940;
        break;
      case 21:
        v38 = 0xE500000000000000;
        v39 = 0x74696D696CLL;
        break;
      case 22:
        v38 = 0xE700000000000000;
        v39 = 0x63734174726F73;
        break;
      case 23:
        v38 = 0xE800000000000000;
        v39 = 0x6373654474726F73;
        break;
      case 24:
        v38 = 0xE600000000000000;
        v39 = 0x656372756F73;
        break;
      case 25:
        v38 = 0xE500000000000000;
        v39 = 0x65756C6176;
        break;
      default:
        break;
    }

    if (v29 == v39 && v28 == v38)
    {

LABEL_143:
      v34 = v4;
      v33 = v85;
      v6 = v87;
      v26 = v85 == v4;
      v4 += 24;
      if (v26)
      {
        goto LABEL_145;
      }

LABEL_144:
      v45 = *v34;
      *(v33 + 2) = *(v34 + 2);
      *v33 = v45;
      goto LABEL_145;
    }

    v44 = sub_1ABF25054();

    if ((v44 & 1) == 0)
    {
      goto LABEL_143;
    }

LABEL_76:
    v33 = v85;
    v34 = v87;
    v6 = v87 + 24;
    if (v85 != v87)
    {
      goto LABEL_144;
    }

LABEL_145:
    v7 = v33 + 24;
  }

  v46 = v7;
LABEL_263:
  v80 = 24 * ((v10 - v4) / 24);
  if (v46 != v4 || v46 >= &v4[v80])
  {
    memmove(v46, v4, v80);
  }

  return 1;
}