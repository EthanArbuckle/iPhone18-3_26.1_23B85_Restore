uint64_t sub_10004EB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v94 = a3;
  v5 = sub_10000712C(&qword_10009FC90, &qword_10007C910);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v106 = &v84 - v7;
  v104 = sub_10000712C(&qword_10009EC78, &unk_10007E8D0);
  v8 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v10 = &v84 - v9;
  v11 = type metadata accessor for ServiceEventValue();
  v103 = *(v11 - 8);
  v12 = *(v103 + 64);
  v13 = __chkstk_darwin(v11);
  v100 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v99 = (&v84 - v16);
  v17 = __chkstk_darwin(v15);
  v98 = (&v84 - v18);
  v19 = __chkstk_darwin(v17);
  v97 = (&v84 - v20);
  v21 = __chkstk_darwin(v19);
  v101 = (&v84 - v22);
  v23 = __chkstk_darwin(v21);
  v25 = &v84 - v24;
  v26 = __chkstk_darwin(v23);
  v85 = &v84 - v27;
  __chkstk_darwin(v26);
  v111 = &v84 - v28;
  v29 = *(a2 + 56);
  v93 = a2 + 56;
  v30 = 1 << *(a2 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v29;
  v92 = (v30 + 63) >> 6;

  v34 = 0;
  v95 = _swiftEmptyArrayStorage;
  v91 = a1;
  v86 = a2;
  while (v32)
  {
    v35 = v32;
LABEL_11:
    v32 = (v35 - 1) & v35;
    v37 = *(a1 + 16);
    if (!*(v37 + 16))
    {
      continue;
    }

    v96 = (v35 - 1) & v35;
    v38 = (*(a2 + 48) + ((v34 << 10) | (16 * __clz(__rbit64(v35)))));
    v39 = *v38;
    v40 = v38[1];

    v90 = v39;
    v41 = sub_10000A0FC(v39, v40);
    if ((v42 & 1) == 0)
    {

      v32 = v96;
      continue;
    }

    v43 = *(v37 + 56);
    v105 = *(v103 + 72);
    v44 = v85;
    sub_10000A908(v43 + v105 * v41, v85);
    sub_100012C24(v44, v111);
    v45 = *(v94 + 16);
    if (!v45)
    {
LABEL_45:

      result = sub_10000A96C(v111);
      a1 = v91;
      goto LABEL_46;
    }

    v46 = v94 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
    v102 = v40;
    while (1)
    {
      sub_10000A908(v46, v25);
      v47 = &v10[*(v104 + 48)];
      sub_10000A908(v25, v10);
      sub_10000A908(v111, v47);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        break;
      }

      if (EnumCaseMultiPayload == 2)
      {
        sub_10000A96C(v25);
        sub_10000A908(v10, v98);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          goto LABEL_16;
        }

        v53 = v98;
LABEL_30:
        v54 = *v53;
        v55 = *v47;
        sub_10000A96C(v10);
        v51 = v54 == *&v55;
LABEL_31:
        v40 = v102;
        if (v51)
        {
          goto LABEL_40;
        }

        goto LABEL_17;
      }

      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload != 4)
        {
          goto LABEL_15;
        }

        sub_10000A96C(v25);
        sub_10000A908(v10, v100);
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          goto LABEL_16;
        }

        v49 = *v100;
        v50 = *v47;
        sub_10000A96C(v10);
        v51 = v49 == v50;
        goto LABEL_31;
      }

      sub_10000A96C(v25);
      sub_10000A908(v10, v99);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_16;
      }

      v56 = *v99;
      v57 = *v47;
      sub_10000A96C(v10);
      if (v56 == v57)
      {
        goto LABEL_40;
      }

LABEL_17:
      v46 += v105;
      if (!--v45)
      {
        goto LABEL_45;
      }
    }

    v52 = v101;
    if (EnumCaseMultiPayload)
    {
      v40 = v102;
      if (EnumCaseMultiPayload != 1)
      {
LABEL_15:
        sub_10000A96C(v25);
LABEL_16:
        sub_1000096C4(v10, &qword_10009EC78, &unk_10007E8D0);
        goto LABEL_17;
      }

      sub_10000A96C(v25);
      sub_10000A908(v10, v97);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_16;
      }

      v53 = v97;
      goto LABEL_30;
    }

    sub_10000A908(v10, v101);
    v58 = v52[1];
    if (swift_getEnumCaseMultiPayload())
    {
      sub_10000A96C(v25);

      v40 = v102;
      goto LABEL_16;
    }

    v88 = *v52;
    v59 = *v47;
    v60 = *(v47 + 1);
    v87 = sub_100079E90();
    v62 = v61;
    v89 = v61;

    v109 = v87;
    v110 = v62;
    v63 = sub_100079E90();
    v65 = v64;

    v107 = v63;
    v108 = v65;
    sub_100025EBC();
    LOBYTE(v63) = sub_10007A2C0();

    sub_10000A96C(v25);
    sub_10000A96C(v10);
    v40 = v102;
    if ((v63 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_40:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v95 = sub_100023040(0, *(v95 + 2) + 1, 1, v95);
    }

    a1 = v91;
    v67 = *(v95 + 2);
    v66 = *(v95 + 3);
    if (v67 >= v66 >> 1)
    {
      v95 = sub_100023040((v66 > 1), v67 + 1, 1, v95);
    }

    result = sub_10000A96C(v111);
    v68 = v95;
    *(v95 + 2) = v67 + 1;
    v69 = &v68[16 * v67];
    *(v69 + 4) = v90;
    *(v69 + 5) = v40;
LABEL_46:
    a2 = v86;
    v32 = v96;
  }

  while (1)
  {
    v36 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      return result;
    }

    if (v36 >= v92)
    {
      break;
    }

    v35 = *(v93 + 8 * v36);
    ++v34;
    if (v35)
    {
      v34 = v36;
      goto LABEL_11;
    }
  }

  v70 = *(a1 + 16);
  v71 = *(v95 + 2);
  if (v71)
  {
    v72 = (v103 + 56);
    v73 = (v95 + 40);

    v74 = v111;
    do
    {
      v77 = *(v73 - 1);
      v78 = *v73;

      v79 = sub_10000A0FC(v77, v78);
      v81 = v80;

      if (v81)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v109 = v74;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1000308CC();
          v74 = v109;
        }

        v83 = *(*(v74 + 48) + 16 * v79 + 8);

        v76 = v106;
        sub_100012C24(*(v74 + 56) + *(v103 + 72) * v79, v106);
        sub_100030E40(v79, v74);
        v75 = 0;
      }

      else
      {
        v75 = 1;
        v76 = v106;
      }

      (*v72)(v76, v75, 1, v11);
      sub_1000096C4(v76, &qword_10009FC90, &qword_10007C910);
      v73 += 2;
      --v71;
    }

    while (v71);

    a1 = v91;
  }

  else
  {
    v74 = *(a1 + 16);
  }

  *(a1 + 16) = v74;
  return result;
}

uint64_t sub_10004F3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10000712C(&qword_10009FC90, &qword_10007C910);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v47[-v9];
  v57 = type metadata accessor for ServiceEventValue();
  v11 = *(v57 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v57);
  result = __chkstk_darwin(v13);
  if (!*(a3 + 16))
  {
    return result;
  }

  v50 = v16;
  v53 = v3;
  v54 = &v47[-v15];
  sub_10000A908(a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), &v47[-v15]);
  v18 = a2 + 56;
  v17 = *(a2 + 56);
  v52 = a1;
  v19 = *(a1 + 16);
  v20 = 1 << *(a2 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v55 = v11;
  v56 = (v11 + 56);

  v24 = 0;
  v51 = v19;
LABEL_5:
  v25 = v24;
  if (!v22)
  {
    goto LABEL_7;
  }

  do
  {
    v24 = v25;
LABEL_10:
    v26 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v27 = a2;
    v28 = (*(a2 + 48) + ((v24 << 10) | (16 * v26)));
    v30 = *v28;
    v29 = v28[1];
    v31 = v19[2];

    if (!v31 || (v32 = sub_10000A0FC(v30, v29), (v33 & 1) == 0))
    {
      (*v56)(v10, 1, 1, v57);
      sub_1000096C4(v10, &qword_10009FC90, &qword_10007C910);
      sub_10000A908(v54, v50);
      LODWORD(v49) = swift_isUniquelyReferenced_nonNull_native();
      v58 = v19;
      v36 = sub_10000A0FC(v30, v29);
      v37 = v19[2];
      v38 = (v35 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        goto LABEL_28;
      }

      if (v19[3] >= v39)
      {
        if (v49)
        {
          if (v35)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v49 = v36;
          v48 = v35;
          sub_1000308CC();
          v36 = v49;
          if (v48)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        v48 = v35;
        sub_10003057C(v39, v49);
        v40 = sub_10000A0FC(v30, v29);
        if ((v48 & 1) != (v41 & 1))
        {
          goto LABEL_30;
        }

        v36 = v40;
        if (v48)
        {
LABEL_21:
          v42 = v36;

          v19 = v58;
          sub_100032B04(v50, v58[7] + *(v55 + 72) * v42);
          a2 = v27;
          goto LABEL_5;
        }
      }

      v19 = v58;
      v58[(v36 >> 6) + 8] |= 1 << v36;
      v43 = (v19[6] + 16 * v36);
      *v43 = v30;
      v43[1] = v29;
      sub_100012C24(v50, v19[7] + *(v55 + 72) * v36);
      v44 = v19[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_29;
      }

      v19[2] = v46;
      a2 = v27;
      goto LABEL_5;
    }

    v34 = v55;
    sub_10000A908(v19[7] + *(v55 + 72) * v32, v10);
    (*(v34 + 56))(v10, 0, 1, v57);

    sub_1000096C4(v10, &qword_10009FC90, &qword_10007C910);
    v25 = v24;
    a2 = v27;
  }

  while (v22);
LABEL_7:
  while (1)
  {
    v24 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v24 >= v23)
    {
      sub_10000A96C(v54);

      *(v52 + 16) = v19;
      return result;
    }

    v22 = *(v18 + 8 * v24);
    ++v25;
    if (v22)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_10007A6C0();
  __break(1u);
  return result;
}

uint64_t sub_10004F83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ServiceEventValue();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v55[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v10);
  v14 = __chkstk_darwin(v13);
  v16 = &v55[-v15];
  result = __chkstk_darwin(v14);
  v20 = &v55[-v18];
  if (!*(a3 + 16))
  {
    return result;
  }

  v65 = v19;
  sub_10000A908(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), &v55[-v18]);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_10000A96C(v20);
  }

  v61 = a1;
  v62 = v3;
  v21 = v20[1];
  v58 = *v20;
  v59 = v12;
  v63 = v21;
  v64 = v8;
  v22 = *(a1 + 16);
  v23 = a2 + 56;
  v24 = 1 << *(a2 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(a2 + 56);
  v27 = (v24 + 63) >> 6;

  v67 = a2;

  v28 = 0;
  v60 = v22;
  while (v26)
  {
    v29 = v26;
LABEL_14:
    v26 = (v29 - 1) & v29;
    if (v22[2])
    {
      v31 = (*(v67 + 48) + ((v28 << 10) | (16 * __clz(__rbit64(v29)))));
      v33 = *v31;
      v32 = v31[1];

      v66 = v33;
      v34 = sub_10000A0FC(v33, v32);
      if (v35)
      {
        v36 = *(v64 + 72);
        sub_10000A908(v22[7] + v36 * v34, v16);
        if (swift_getEnumCaseMultiPayload())
        {

          sub_10000A96C(v16);
        }

        else
        {
          v57 = v36;
          v37 = v16[1];
          v68 = *v16;
          v69 = v37;
          v71._countAndFlagsBits = v58;
          v71._object = v63;
          sub_100079F00(v71);
          v38 = v69;
          v39 = v65;
          *v65 = v68;
          *(v39 + 8) = v38;
          swift_storeEnumTagMultiPayload();
          sub_100012C24(v39, v59);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v70 = v22;
          v41 = sub_10000A0FC(v66, v32);
          v42 = v22[2];
          v43 = (v40 & 1) == 0;
          v44 = v42 + v43;
          if (__OFADD__(v42, v43))
          {
            goto LABEL_32;
          }

          if (v22[3] >= v44)
          {
            v48 = v57;
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_24;
            }

            v54 = v41;
            isUniquelyReferenced_nonNull_native = v40;
            sub_1000308CC();
            LOBYTE(v40) = isUniquelyReferenced_nonNull_native;
            v41 = v54;
          }

          else
          {
            v45 = v40;
            sub_10003057C(v44, isUniquelyReferenced_nonNull_native);
            v46 = sub_10000A0FC(v66, v32);
            if ((v45 & 1) != (v47 & 1))
            {
              goto LABEL_34;
            }

            v41 = v46;
            LOBYTE(v40) = v45;
          }

          v48 = v57;
LABEL_24:
          if (v40)
          {
            v49 = v41;

            v22 = v70;
            sub_100032B04(v59, v70[7] + v49 * v48);
          }

          else
          {
            v22 = v70;
            v70[(v41 >> 6) + 8] |= 1 << v41;
            v50 = (v22[6] + 16 * v41);
            *v50 = v66;
            v50[1] = v32;
            sub_100012C24(v59, v22[7] + v41 * v48);
            v51 = v22[2];
            v52 = __OFADD__(v51, 1);
            v53 = v51 + 1;
            if (v52)
            {
              goto LABEL_33;
            }

            v22[2] = v53;
          }
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v27)
    {

      *(v61 + 16) = v22;
      return result;
    }

    v29 = *(v23 + 8 * v30);
    ++v28;
    if (v29)
    {
      v28 = v30;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_10007A6C0();
  __break(1u);
  return result;
}

uint64_t sub_10004FC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ServiceEventValue();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v14 = __chkstk_darwin(v13);
  v16 = (&v57 - v15);
  result = __chkstk_darwin(v14);
  v20 = (&v57 - v18);
  if (!*(a3 + 16))
  {
    return result;
  }

  v67 = v19;
  sub_10000A908(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), &v57 - v18);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_10000A96C(v20);
  }

  v63 = a1;
  v64 = v3;
  v21 = v20[1];
  v60 = *v20;
  v61 = v12;
  v65 = v21;
  v66 = v8;
  v22 = *(a1 + 16);
  v23 = a2 + 56;
  v24 = 1 << *(a2 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(a2 + 56);
  v27 = (v24 + 63) >> 6;

  v73 = a2;

  v28 = 0;
  v62 = v22;
  while (v26)
  {
    v29 = v26;
LABEL_14:
    v26 = (v29 - 1) & v29;
    if (v22[2])
    {
      v31 = (*(v73 + 48) + ((v28 << 10) | (16 * __clz(__rbit64(v29)))));
      v33 = *v31;
      v32 = v31[1];

      v68 = v33;
      v34 = sub_10000A0FC(v33, v32);
      if (v35)
      {
        v36 = *(v66 + 72);
        sub_10000A908(v22[7] + v36 * v34, v16);
        if (swift_getEnumCaseMultiPayload())
        {

          sub_10000A96C(v16);
        }

        else
        {
          v37 = *v16;
          v38 = v16[1];
          v58 = v36;
          v59 = v38;
          v71 = v37;
          v72 = v38;
          v69 = v60;
          v70 = v65;

          v69 = sub_100079F80();
          v70 = v39;
          sub_100079EF0();

          v40 = v70;
          v41 = v67;
          *v67 = v69;
          *(v41 + 8) = v40;
          swift_storeEnumTagMultiPayload();
          sub_100012C24(v41, v61);
          LODWORD(v59) = swift_isUniquelyReferenced_nonNull_native();
          v71 = v22;
          v43 = sub_10000A0FC(v68, v32);
          v44 = v22[2];
          v45 = (v42 & 1) == 0;
          v46 = v44 + v45;
          if (__OFADD__(v44, v45))
          {
            goto LABEL_32;
          }

          if (v22[3] >= v46)
          {
            v50 = v58;
            if (v59)
            {
              goto LABEL_24;
            }

            v56 = v43;
            LODWORD(v59) = v42;
            sub_1000308CC();
            LOBYTE(v42) = v59;
            v43 = v56;
          }

          else
          {
            v47 = v42;
            sub_10003057C(v46, v59);
            v48 = sub_10000A0FC(v68, v32);
            if ((v47 & 1) != (v49 & 1))
            {
              goto LABEL_34;
            }

            v43 = v48;
            LOBYTE(v42) = v47;
          }

          v50 = v58;
LABEL_24:
          if (v42)
          {
            v51 = v43;

            v22 = v71;
            sub_100032B04(v61, v71[7] + v51 * v50);
          }

          else
          {
            v22 = v71;
            v71[(v43 >> 6) + 8] |= 1 << v43;
            v52 = (v22[6] + 16 * v43);
            *v52 = v68;
            v52[1] = v32;
            sub_100012C24(v61, v22[7] + v43 * v50);
            v53 = v22[2];
            v54 = __OFADD__(v53, 1);
            v55 = v53 + 1;
            if (v54)
            {
              goto LABEL_33;
            }

            v22[2] = v55;
          }
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v27)
    {

      *(v63 + 16) = v22;
      return result;
    }

    v29 = *(v23 + 8 * v30);
    ++v28;
    if (v29)
    {
      v28 = v30;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_10007A6C0();
  __break(1u);
  return result;
}

uint64_t sub_10005013C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000712C(&qword_10009FC90, &qword_10007C910);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v53 = &v48 - v6;
  v48 = a1;
  v7 = *(a1 + 16);
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = a2 + 56;
  result = swift_bridgeObjectRetain_n();
  v15 = 0;
  v50 = v7;
  v51 = _swiftEmptyArrayStorage;
  v49 = v7 + 64;
  while (v11)
  {
LABEL_12:
    v17 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v18 = (*(v7 + 48) + ((v15 << 10) | (16 * v17)));
    v20 = *v18;
    v19 = v18[1];
    if (!*(a2 + 16))
    {

LABEL_21:
      v28 = v51;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100023040(0, *(v28 + 2) + 1, 1, v28);
        v28 = result;
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      v51 = v28;
      if (v30 >= v29 >> 1)
      {
        result = sub_100023040((v29 > 1), v30 + 1, 1, v51);
        v51 = result;
      }

      v31 = v51;
      *(v51 + 2) = v30 + 1;
      v32 = &v31[16 * v30];
      *(v32 + 4) = v20;
      *(v32 + 5) = v19;
      goto LABEL_6;
    }

    v21 = *(a2 + 40);
    sub_10007A730();

    sub_100079EC0();
    v22 = sub_10007A760();
    v23 = -1 << *(a2 + 32);
    v24 = v22 & ~v23;
    if (((*(v13 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
      goto LABEL_21;
    }

    v25 = ~v23;
    while (1)
    {
      v26 = (*(a2 + 48) + 16 * v24);
      v27 = *v26 == v20 && v26[1] == v19;
      if (v27 || (sub_10007A610() & 1) != 0)
      {
        break;
      }

      v24 = (v24 + 1) & v25;
      if (((*(v13 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_6:
    v8 = v49;
    v7 = v50;
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      return result;
    }

    if (v16 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v16);
    ++v15;
    if (v11)
    {
      v15 = v16;
      goto LABEL_12;
    }
  }

  v33 = *(v51 + 2);
  if (v33)
  {
    v34 = (v51 + 40);
    do
    {
      v38 = *(v34 - 1);
      v37 = *v34;

      v39 = sub_10000A0FC(v38, v37);
      v41 = v40;

      if (v41)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = v7;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1000308CC();
          v7 = v52;
        }

        v43 = *(*(v7 + 48) + 16 * v39 + 8);

        v44 = *(v7 + 56);
        v45 = type metadata accessor for ServiceEventValue();
        v46 = *(v45 - 8);
        v47 = v44 + *(v46 + 72) * v39;
        v36 = v53;
        sub_100012C24(v47, v53);
        sub_100030E40(v39, v7);
        (*(v46 + 56))(v36, 0, 1, v45);
      }

      else
      {
        v35 = type metadata accessor for ServiceEventValue();
        v36 = v53;
        (*(*(v35 - 8) + 56))(v53, 1, 1, v35);
      }

      sub_1000096C4(v36, &qword_10009FC90, &qword_10007C910);
      v34 += 2;
      --v33;
    }

    while (v33);
  }

  *(v48 + 16) = v7;
  return result;
}

uint64_t sub_100050560(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000712C(&qword_10009FC90, &qword_10007C910);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v32 - v6;
  v33 = a1;
  v8 = *(a1 + 16);
  v9 = a2 + 56;
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 56);
  v13 = (v10 + 63) >> 6;
  v14 = *(a1 + 16);

  v16 = 0;
  v32[1] = v8;
  v34 = a2;
  v35 = v7;
  while (v12)
  {
LABEL_11:
    v20 = (*(a2 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v12)))));
    v22 = *v20;
    v21 = v20[1];

    v23 = sub_10000A0FC(v22, v21);
    v25 = v24;

    if (v25)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v8;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1000308CC();
        v8 = v36;
      }

      v27 = *(*(v8 + 48) + 16 * v23 + 8);

      v28 = *(v8 + 56);
      v29 = type metadata accessor for ServiceEventValue();
      v30 = *(v29 - 8);
      v31 = v28 + *(v30 + 72) * v23;
      v18 = v35;
      sub_100012C24(v31, v35);
      sub_100030E40(v23, v8);
      (*(v30 + 56))(v18, 0, 1, v29);
      a2 = v34;
    }

    else
    {
      v17 = type metadata accessor for ServiceEventValue();
      v18 = v35;
      (*(*(v17 - 8) + 56))(v35, 1, 1, v17);
    }

    v12 &= v12 - 1;
    result = sub_1000096C4(v18, &qword_10009FC90, &qword_10007C910);
  }

  while (1)
  {
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v19 >= v13)
    {

      *(v33 + 16) = v8;
      return result;
    }

    v12 = *(v9 + 8 * v19);
    ++v16;
    if (v12)
    {
      v16 = v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100050804(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000712C(&qword_10009FC90, &qword_10007C910);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v101 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v113 = &v86 - v8;
  v103 = sub_100079D20();
  v9 = *(v103 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v103);
  v105 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_100079E70();
  v12 = *(v100 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v100);
  v99 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_100079D10();
  v15 = *(v102 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v102);
  v98 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v104 = &v86 - v19;
  v115 = type metadata accessor for ServiceEventValue();
  v20 = *(*(v115 - 8) + 64);
  v21 = __chkstk_darwin(v115);
  v94 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v93 = (&v86 - v24);
  __chkstk_darwin(v23);
  v111 = (&v86 - v26);
  v112 = v25;
  v27 = *(a1 + 16);
  v28 = a2 + 56;
  v29 = 1 << *(a2 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(a2 + 56);
  v32 = (v29 + 63) >> 6;
  v114 = (v25 + 56);
  v97 = (v12 + 8);
  v96 = (v9 + 8);
  v95 = (v15 + 16);
  v92 = (v15 + 8);
  v33 = a2;

  v35 = 0;
  v108 = xmmword_10007B7C0;
  v109 = v27;
  v36 = v27;
  while (v31)
  {
LABEL_10:
    v39 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v40 = (*(v33 + 48) + ((v35 << 10) | (16 * v39)));
    v41 = *v40;
    v42 = v40[1];
    v43 = v36[2];

    if (!v43)
    {
      goto LABEL_4;
    }

    v118 = v41;
    v44 = sub_10000A0FC(v41, v42);
    if (v45)
    {
      v46 = v111;
      sub_10000A908(v36[7] + *(v112 + 72) * v44, v111);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_10000A96C(v46);
        goto LABEL_14;
      }

      v86 = a1;
      v60 = *v46;
      v106 = v46[1];
      v107 = v60;
      v61 = v99;
      sub_100079E60();
      v107 = sub_100079E30();
      v63 = v62;

      (*v97)(v61, v100);
      v64 = v107;
      if (v63 >> 60 == 15)
      {
        v64 = 0;
      }

      v107 = v64;
      if (v63 >> 60 == 15)
      {
        v63 = 0xC000000000000000;
      }

      v106 = sub_1000513E4(&qword_10009E280, &type metadata accessor for SHA256);
      sub_100079CF0();
      v65 = v107;
      v90 = v63;
      sub_100007230(v107, v63);
      v66 = v110;
      sub_10000A358(v65, v63);
      v110 = v66;
      sub_1000071DC(v65, v63);
      v67 = v105;
      v68 = v103;
      sub_100079CE0();
      sub_1000071DC(v107, v90);
      (*v96)(v67, v68);
      (*v95)(v98, v104, v102);
      sub_1000513E4(&qword_10009F118, &type metadata accessor for SHA256Digest);
      result = sub_100079FA0();
      v90 = v116;
      v69 = *(v116 + 16);
      v70 = _swiftEmptyArrayStorage;
      v89 = v117;
      v88 = v69;
      if (v117 != v69)
      {
        v87 = v90 + 32;
        v76 = v89;
        v91 = v33;
        while ((v89 & 0x8000000000000000) == 0)
        {
          if (v76 >= *(v90 + 16))
          {
            goto LABEL_40;
          }

          v77 = *(v87 + v76);
          sub_10000712C(&qword_10009F120, &unk_10007E4C0);
          v78 = swift_allocObject();
          *(v78 + 16) = v108;
          *(v78 + 56) = &type metadata for UInt8;
          *(v78 + 64) = &protocol witness table for UInt8;
          *(v78 + 32) = v77;
          v79 = sub_100079E50();
          v106 = v80;
          v107 = v79;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_100023040(0, *(v70 + 2) + 1, 1, v70);
            v70 = result;
          }

          v82 = *(v70 + 2);
          v81 = *(v70 + 3);
          v83 = v70;
          if (v82 >= v81 >> 1)
          {
            result = sub_100023040((v81 > 1), v82 + 1, 1, v70);
            v83 = result;
          }

          ++v76;
          *(v83 + 2) = v82 + 1;
          v70 = v83;
          v84 = &v83[16 * v82];
          v85 = v106;
          *(v84 + 4) = v107;
          *(v84 + 5) = v85;
          v33 = v91;
          if (v88 == v76)
          {
            goto LABEL_25;
          }
        }

        goto LABEL_39;
      }

LABEL_25:
      v107 = v70;
      (*v92)(v104, v102);

      v116 = v70;
      sub_10000712C(&qword_10009E130, &qword_10007BCF0);
      sub_10000A8A4();
      v106 = sub_100079DC0();
      v72 = v71;

      v73 = v93;
      *v93 = v106;
      *(v73 + 8) = v72;
      swift_storeEnumTagMultiPayload();
      v74 = v94;
      sub_100012C24(v73, v94);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v116 = v36;
      sub_10003102C(v74, v118, v42, isUniquelyReferenced_nonNull_native);

      v36 = v116;
      a1 = v86;
    }

    else
    {
LABEL_14:
      if (v36[2] && (v47 = sub_10000A0FC(v118, v42), (v48 & 1) != 0))
      {
        v91 = v33;
        v86 = a1;
        v49 = v36[7];
        v51 = v112;
        v50 = v113;
        v106 = *(v112 + 72);
        v52 = v118;
        sub_10000A908(v49 + v106 * v47, v113);
        v53 = *(v51 + 56);
        v54 = 1;
        v107 = v53;
        v53(v50, 0, 1, v115);
        sub_1000096C4(v50, &qword_10009FC90, &qword_10007C910);
        v55 = sub_10000A0FC(v52, v42);
        LOBYTE(v50) = v56;

        if (v50)
        {
          v57 = swift_isUniquelyReferenced_nonNull_native();
          v116 = v36;
          if (!v57)
          {
            sub_1000308CC();
            v36 = v116;
          }

          v58 = *(v36[6] + 16 * v55 + 8);

          v59 = v101;
          sub_100012C24(v36[7] + v55 * v106, v101);
          sub_100030E40(v55, v36);
          v54 = 0;
        }

        else
        {
          v59 = v101;
        }

        v107(v59, v54, 1, v115);
        result = sub_1000096C4(v59, &qword_10009FC90, &qword_10007C910);
        a1 = v86;
        v33 = v91;
      }

      else
      {
LABEL_4:
        v37 = v113;
        (*v114)(v113, 1, 1, v115);

        result = sub_1000096C4(v37, &qword_10009FC90, &qword_10007C910);
      }
    }
  }

  while (1)
  {
    v38 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v38 >= v32)
    {

      *(a1 + 16) = v36;
      return result;
    }

    v31 = *(v28 + 8 * v38);
    ++v35;
    if (v31)
    {
      v35 = v38;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_100051250(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100051298(uint64_t result, int a2, int a3)
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

uint64_t sub_100051350(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100051398(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000513E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100051444()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A47C8);
  sub_1000070F4(v0, qword_1000A47C8);
  return sub_100079B90();
}

uint64_t sub_1000514C8(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  return v2;
}

uint64_t sub_100051508(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  return _swift_task_switch(sub_100051550, v1, 0);
}

uint64_t sub_100051550()
{
  v1 = v0[6];
  swift_beginAccess();
  if (*(*(v1 + 112) + 16))
  {
    v3 = v0[6];
    v4 = v0[7];
    v5 = v0[5];
    sub_10005327C(&qword_10009F1F0, v2, type metadata accessor for BackendGroup);
    v6 = swift_task_alloc();
    v0[8] = v6;
    v6[2] = v3;
    v6[3] = v5;
    v6[4] = v4;
    v7 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
    v8 = swift_task_alloc();
    v0[9] = v8;
    *v8 = v0;
    v8[1] = sub_100051708;

    return withTaskGroup<A, B>(of:returning:isolation:body:)();
  }

  else
  {
    sub_100051EC8();
    swift_allocError();
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100051708()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return _swift_task_switch(sub_1000224A8, v3, 0);
}

uint64_t sub_100051858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v7 = *(*(sub_10000712C(&qword_10009E000, &qword_10007BA70) - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();

  return _swift_task_switch(sub_100051908, a3, 0);
}

uint64_t sub_100051908()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  v3 = *(v1 + 112);
  v4 = *(v3 + 16);
  if (v4)
  {
    v34 = **(v0 + 96);
    v5 = sub_10007A0A0();
    v6 = *(v5 - 8);
    v32 = *(v6 + 56);
    v31 = (v6 + 48);
    v30 = (v6 + 8);

    v7 = 32;
    v33 = v5;
    v35 = v3;
    while (1)
    {
      v36 = v4;
      v11 = *(v0 + 128);
      v10 = *(v0 + 136);
      v12 = *(v0 + 112);
      v13 = *(v0 + 120);
      v14 = *(v0 + 104);
      v37 = *(v3 + v7);
      v32(v10, 1, 1, v5);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v16 = (v15 + 16);
      *(v15 + 24) = 0;
      *(v15 + 32) = v37;
      *(v15 + 48) = v12;
      *(v15 + 56) = v14;
      *(v15 + 64) = v13;
      sub_10001A1D4(v10, v11);
      LODWORD(v11) = (*v31)(v11, 1, v5);
      swift_unknownObjectRetain_n();

      v17 = *(v0 + 128);
      if (v11 == 1)
      {
        sub_1000096C4(*(v0 + 128), &qword_10009E000, &qword_10007BA70);
        if (*v16)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_10007A090();
        (*v30)(v17, v5);
        if (*v16)
        {
LABEL_9:
          v20 = *(v15 + 24);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v18 = sub_10007A050();
          v19 = v21;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v18 = 0;
      v19 = 0;
LABEL_10:
      v22 = swift_allocObject();
      *(v22 + 16) = &unk_10007EC58;
      *(v22 + 24) = v15;

      if (v19 | v18)
      {
        v8 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v18;
        *(v0 + 40) = v19;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 136);
      *(v0 + 72) = 1;
      *(v0 + 80) = v8;
      *(v0 + 88) = v34;
      swift_task_create();

      swift_unknownObjectRelease();

      sub_1000096C4(v9, &qword_10009E000, &qword_10007BA70);
      v7 += 16;
      v3 = v35;
      v4 = v36 - 1;
      v5 = v33;
      if (v36 == 1)
      {

        break;
      }
    }
  }

  v23 = *(v0 + 104);
  v24 = sub_10005327C(&qword_10009F1F0, v2, type metadata accessor for BackendGroup);
  v25 = async function pointer to TaskGroup.awaitAllRemainingTasks(isolation:)[1];
  v26 = swift_task_alloc();
  *(v0 + 144) = v26;
  v27 = sub_10000712C(&qword_10009F2D8, &qword_10007EC68);
  *v26 = v0;
  v26[1] = sub_100051CEC;
  v28 = *(v0 + 96);

  return TaskGroup.awaitAllRemainingTasks(isolation:)(v23, v24, v27);
}

uint64_t sub_100051CEC()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100051E18(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100007838;

  return sub_100051858(v8, a2, v5, v6, v7);
}

unint64_t sub_100051EC8()
{
  result = qword_10009F1F8;
  if (!qword_10009F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F1F8);
  }

  return result;
}

uint64_t sub_100051F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a5;
  v7[17] = a7;
  v7[15] = a4;
  v10 = *(*(sub_10000712C(&qword_10009F2E0, &qword_10007EC70) - 8) + 64) + 15;
  v7[18] = swift_task_alloc();
  v11 = sub_100079530();
  v7[19] = v11;
  v12 = *(v11 - 8);
  v7[20] = v12;
  v13 = *(v12 + 64) + 15;
  v7[21] = swift_task_alloc();
  v14 = sub_100079B30();
  v7[22] = v14;
  v15 = *(v14 - 8);
  v7[23] = v15;
  v16 = *(v15 + 64) + 15;
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v17 = *(*(sub_10000712C(&qword_10009F2E8, &unk_10007EC78) - 8) + 64) + 15;
  v7[26] = swift_task_alloc();
  v18 = sub_100079B40();
  v7[27] = v18;
  v19 = *(v18 - 8);
  v7[28] = v19;
  v20 = *(v19 + 64) + 15;
  v7[29] = swift_task_alloc();
  ObjectType = swift_getObjectType();
  v22 = *(a5 + 8);
  v26 = (v22 + *v22);
  v23 = v22[1];
  v24 = swift_task_alloc();
  v7[30] = v24;
  *v24 = v7;
  v24[1] = sub_1000521EC;

  return v26(a6, ObjectType, a5);
}

uint64_t sub_1000521EC()
{
  v2 = *(*v1 + 240);
  v3 = *v1;
  v3[31] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100052504, 0, 0);
  }

  else
  {
    v4 = v3[29];
    v6 = v3[25];
    v5 = v3[26];
    v7 = v3[24];
    v8 = v3[21];
    v9 = v3[18];

    v10 = v3[1];

    return v10();
  }
}

uint64_t sub_100052378()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  swift_beginAccess();
  swift_unknownObjectRetain();
  v4 = sub_100052F7C(v2 + 112, v3);
  v5 = swift_unknownObjectRelease();
  v7 = *(*(v2 + 112) + 16);
  if (v7 < v4)
  {
    __break(1u);
  }

  else
  {
    sub_1000531BC(v4, v7);
    swift_endAccess();
    v5 = sub_100052454;
    v7 = 0;
    v6 = 0;
  }

  return _swift_task_switch(v5, v7, v6);
}

uint64_t sub_100052454()
{
  v1 = v0[31];

  v2 = v0[29];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[24];
  v6 = v0[21];
  v7 = v0[18];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100052504()
{
  v54 = v0;
  *(v0 + 80) = *(v0 + 248);
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  swift_errorRetain();
  sub_10000712C(&qword_10009F0B0, &qword_10007CBB0);
  v4 = swift_dynamicCast();
  v5 = *(v2 + 56);
  if (v4)
  {
    v7 = *(v0 + 160);
    v6 = *(v0 + 168);
    v9 = *(v0 + 144);
    v8 = *(v0 + 152);
    v5(v9, 0, 1, v8);
    (*(v7 + 32))(v6, v9, v8);
    LOBYTE(v9) = sub_1000794E0();
    (*(v7 + 8))(v6, v8);
    if (v9)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = *(v0 + 144);
    v5(v10, 1, 1, *(v0 + 152));
    sub_1000096C4(v10, &qword_10009F2E0, &qword_10007EC70);
  }

  v11 = *(v0 + 216);
  v12 = *(v0 + 224);
  v13 = *(v0 + 208);
  *(v0 + 88) = *(v0 + 248);
  swift_errorRetain();
  v14 = swift_dynamicCast();
  v15 = *(v12 + 56);
  if (v14)
  {
    v17 = *(v0 + 224);
    v16 = *(v0 + 232);
    v18 = *(v0 + 208);
    v19 = *(v0 + 216);
    v20 = *(v0 + 192);
    v51 = *(v0 + 200);
    v22 = *(v0 + 176);
    v21 = *(v0 + 184);
    v15(v18, 0, 1, v19);
    (*(v17 + 32))(v16, v18, v19);
    sub_10005327C(&qword_10009F2F8, 255, &type metadata accessor for URLError);
    sub_100079790();
    sub_100079B20();
    sub_10005327C(&qword_10009F300, 255, &type metadata accessor for URLError.Code);
    sub_100079FC0();
    sub_100079FC0();
    v23 = *(v21 + 8);
    v23(v20, v22);
    v23(v51, v22);
    (*(v17 + 8))(v16, v19);
    if (*(v0 + 104) == *(v0 + 112))
    {
LABEL_7:
      v24 = *(v0 + 248);

      v25 = *(v0 + 232);
      v26 = *(v0 + 200);
      v27 = *(v0 + 208);
      v28 = *(v0 + 192);
      v29 = *(v0 + 168);
      v30 = *(v0 + 144);

      v31 = *(v0 + 8);

      return v31();
    }
  }

  else
  {
    v33 = *(v0 + 208);
    v15(v33, 1, 1, *(v0 + 216));
    sub_1000096C4(v33, &qword_10009F2E8, &unk_10007EC78);
  }

  if (qword_1000A47C0 != -1)
  {
    swift_once();
  }

  v34 = *(v0 + 248);
  v35 = *(v0 + 120);
  v36 = sub_100079BA0();
  sub_1000070F4(v36, qword_1000A47C8);
  swift_errorRetain();
  swift_unknownObjectRetain();
  v37 = sub_100079B80();
  v38 = sub_10007A170();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = *(v0 + 248);
    v52 = *(v0 + 120);
    v40 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v40 = 136446466;
    *(v0 + 64) = v52;
    swift_unknownObjectRetain();
    sub_10000712C(&qword_10009F2F0, &qword_10007EC88);
    v41 = sub_100079E80();
    v43 = sub_100006B00(v41, v42, &v53);

    *(v40 + 4) = v43;
    *(v40 + 12) = 2082;
    swift_getErrorValue();
    v45 = *(v0 + 40);
    v44 = *(v0 + 48);
    v46 = *(v0 + 56);
    v47 = sub_10007A6D0();
    v49 = sub_100006B00(v47, v48, &v53);

    *(v40 + 14) = v49;
    _os_log_impl(&_mh_execute_header, v37, v38, "disabling backend '%{public}s' which returned error: %{public}s", v40, 0x16u);
    swift_arrayDestroy();
  }

  v50 = *(v0 + 136);

  return _swift_task_switch(sub_100052378, v50, 0);
}

uint64_t sub_100052A88()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_100052AC4()
{
  result = qword_10009F200;
  if (!qword_10009F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F200);
  }

  return result;
}

uint64_t sub_100052B18(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100007838;

  return v8(a1);
}

uint64_t sub_100052C48()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[6];

  v4 = v0[7];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100052C98()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10001A474;

  return sub_100051F1C(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_100052D44()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100052D7C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100007838;

  return sub_100018644(a1, v5);
}

void *sub_100052E34(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_10000712C(&qword_10009F308, &unk_1000800C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000712C(&qword_10009F2F0, &qword_10007EC88);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100052F7C(uint64_t result, uint64_t a2)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = result;
  v7 = 0;
  for (i = 4; v3[i] != a2; i += 2)
  {
    if (v4 == ++v7)
    {
      return *(*result + 16);
    }
  }

  if (v2)
  {
    return v7;
  }

  v9 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    if (v9 == v4)
    {
      return v7;
    }

    v10 = i * 8 + 16;
    while (v9 < v4)
    {
      v11 = *(v3 + v10);
      if (*(v3 + v10) != a2)
      {
        if (v9 != v7)
        {
          if (v7 >= v4)
          {
            goto LABEL_23;
          }

          v16 = *(v3 + v10);
          v15 = *&v3[2 * v7 + 4];
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_100052F68(v3);
          }

          v12 = &v3[2 * v7];
          v13 = v12[4];
          *(v12 + 2) = v16;
          result = swift_unknownObjectRelease();
          if (v9 >= v3[2])
          {
            goto LABEL_24;
          }

          v14 = *(v3 + v10);
          *(v3 + v10) = v15;
          result = swift_unknownObjectRelease();
          *v6 = v3;
        }

        ++v7;
      }

      ++v9;
      v4 = v3[2];
      v10 += 16;
      if (v9 == v4)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1000530EC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  sub_10000712C(&qword_10009F2F0, &qword_10007EC88);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1000531BC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_100052E34(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1000530EC(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_10005327C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000532C4()
{
  type metadata accessor for RequestOptions();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  result = swift_beginAccess();
  *(v0 + 16) = 0;
  static RequestOptions.globalRequestOptions = v0;
  return result;
}

uint64_t RequestOptions.__allocating_init(networkingDelegate:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  swift_beginAccess();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t *RequestOptions.globalRequestOptions.unsafeMutableAddressor()
{
  if (qword_1000A49E0 != -1)
  {
    swift_once();
  }

  return &static RequestOptions.globalRequestOptions;
}

uint64_t static RequestOptions.globalRequestOptions.getter()
{
  if (qword_1000A49E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static RequestOptions.globalRequestOptions.setter(uint64_t a1)
{
  if (qword_1000A49E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static RequestOptions.globalRequestOptions = a1;
}

uint64_t (*static RequestOptions.globalRequestOptions.modify())()
{
  if (qword_1000A49E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t RequestOptions.init(networkingDelegate:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  swift_beginAccess();
  *(v1 + 16) = a1;
  return v1;
}

id sub_1000535B0(unsigned int a1)
{
  v2 = a1;
  v3 = (a1 >> 8) & 1;
  v4 = [objc_allocWithZone(C2RequestOptions) init];
  [v4 set_timeoutIntervalForRequest:5.0];
  [v4 setAllowsCellularAccess:v2 & 1];
  [v4 set_allowsExpensiveAccess:v3];
  v5 = sub_100079DF0();
  [v4 set_sourceApplicationBundleIdentifier:v5];

  swift_beginAccess();
  if (*(v1 + 16))
  {
    [v4 setNetworkingDelegate:?];
  }

  return v4;
}

uint64_t RequestOptions.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t RequestOptions.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_10005371C()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A6D78);
  sub_1000070F4(v0, qword_1000A6D78);
  return sub_100079B90();
}

uint64_t sub_100053794(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v5 + OBJC_IVAR____TtC21CloudTelemetryService8Throttle_state) = 0;
  v6 = OBJC_IVAR____TtC21CloudTelemetryService8Throttle_location;
  v7 = sub_1000798B0();
  (*(*(v7 - 8) + 32))(v5 + v6, a1, v7);
  return v5;
}

id sub_100053858()
{
  v1 = OBJC_IVAR____TtC21CloudTelemetryService8Throttle_state;
  v2 = *(v0 + OBJC_IVAR____TtC21CloudTelemetryService8Throttle_state);
  if (v2)
  {
    goto LABEL_3;
  }

  v11 = sub_1000798D0();
  v13 = v12;
  v14 = objc_opt_self();
  sub_100007230(v11, v13);
  isa = sub_100079910().super.isa;
  sub_1000071DC(v11, v13);
  v27[0] = 0;
  v16 = [v14 propertyListWithData:isa options:0 format:0 error:v27];

  if (v16)
  {
    v17 = v27[0];
    sub_10007A2D0();
    sub_1000071DC(v11, v13);
    swift_unknownObjectRelease();
    sub_10000712C(&qword_10009E290, qword_10007BD90);
    v18 = swift_dynamicCast();
    v19 = v26;
    if (!v18)
    {
      v19 = 0;
    }
  }

  else
  {
    v20 = v27[0];
    sub_1000797A0();

    swift_willThrow();
    sub_1000071DC(v11, v13);

    v19 = 0;
  }

  v21 = *(v0 + v1);
  *(v0 + v1) = v19;

  v2 = *(v0 + v1);
  if (v2)
  {
LABEL_3:
    if (!*(v2 + 16))
    {
      goto LABEL_23;
    }

    v3 = sub_10000A0FC(0xD000000000000011, 0x8000000100083FD0);
    if (v4)
    {
      sub_10000978C(*(v2 + 56) + 32 * v3, v27);
      sub_100054868();
      if (swift_dynamicCast())
      {
        if (!*(v2 + 16) || (v5 = sub_10000A0FC(0xD000000000000012, 0x8000000100083FF0), (v6 & 1) == 0) || (sub_10000978C(*(v2 + 56) + 32 * v5, v27), (swift_dynamicCast() & 1) == 0))
        {

          goto LABEL_23;
        }

        if (*(v2 + 16))
        {
          v7 = sub_10000A0FC(0x756F437972746572, 0xEC0000007265746ELL);
          if (v8)
          {
            sub_10000978C(*(v2 + 56) + 32 * v7, v27);

            if (swift_dynamicCast())
            {
              v9 = v26;
              [v26 doubleValue];
              [v26 doubleValue];
              v10 = [v26 integerValue];

LABEL_28:
              return v10;
            }

LABEL_23:
            if (qword_1000A49F0 != -1)
            {
              swift_once();
            }

            v22 = sub_100079BA0();
            sub_1000070F4(v22, qword_1000A6D78);
            v9 = sub_100079B80();
            v23 = sub_10007A170();
            if (os_log_type_enabled(v9, v23))
            {
              v24 = swift_slowAlloc();
              *v24 = 0;
              _os_log_impl(&_mh_execute_header, v9, v23, "failed to decode throttle state", v24, 2u);
            }

            v10 = 0;
            goto LABEL_28;
          }
        }
      }
    }

    goto LABEL_23;
  }

  return 0;
}

void sub_100053CB8(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v7 = [objc_allocWithZone(NSNumber) initWithDouble:a2];
  v8 = sub_100054868();
  v29 = v8;
  *&v28 = v7;
  sub_100032BD8(&v28, v27);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100054B6C(v27, 0xD000000000000011, 0x8000000100083FD0, isUniquelyReferenced_nonNull_native);
  v10 = [objc_allocWithZone(NSNumber) initWithDouble:a3];
  v29 = v8;
  *&v28 = v10;
  sub_100032BD8(&v28, v27);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_100054B6C(v27, 0xD000000000000012, 0x8000000100083FF0, v11);
  v12 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  v29 = v8;
  *&v28 = v12;
  sub_100032BD8(&v28, v27);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_100054B6C(v27, 0x756F437972746572, 0xEC0000007265746ELL, v13);
  v14 = *(v4 + OBJC_IVAR____TtC21CloudTelemetryService8Throttle_state);
  *(v4 + OBJC_IVAR____TtC21CloudTelemetryService8Throttle_state) = &_swiftEmptyDictionarySingleton;

  v15 = objc_opt_self();
  isa = sub_100079D30().super.isa;

  *&v28 = 0;
  v17 = [v15 dataWithPropertyList:isa format:100 options:0 error:&v28];

  v18 = v28;
  if (v17)
  {
    v19 = sub_100079930();
    v21 = v20;

    sub_100079940();
    sub_1000071DC(v19, v21);
  }

  else
  {
    v22 = v18;
    sub_1000797A0();

    swift_willThrow();

    if (qword_1000A49F0 != -1)
    {
      swift_once();
    }

    v23 = sub_100079BA0();
    sub_1000070F4(v23, qword_1000A6D78);
    v24 = sub_100079B80();
    v25 = sub_10007A170();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "failed to encode throttle", v26, 2u);
    }
  }
}

uint64_t sub_100054108()
{
  *(v1 + 24) = v0;

  return _swift_task_switch(sub_100054198, v0, 0);
}

uint64_t sub_100054198()
{
  v1 = v0[3];
  v2 = *(v1 + OBJC_IVAR____TtC21CloudTelemetryService8Throttle_state);
  *(v1 + OBJC_IVAR____TtC21CloudTelemetryService8Throttle_state) = 0;

  v3 = [objc_opt_self() defaultManager];
  sub_100079800(OBJC_IVAR____TtC21CloudTelemetryService8Throttle_location);
  v5 = v4;
  v0[2] = 0;
  v6 = [v3 removeItemAtURL:v4 error:v0 + 2];

  v7 = v0[2];
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v9 = v7;
    sub_1000797A0();

    swift_willThrow();
    if (qword_1000A49F0 != -1)
    {
      swift_once();
    }

    v10 = sub_100079BA0();
    sub_1000070F4(v10, qword_1000A6D78);
    v11 = sub_100079B80();
    v12 = sub_10007A170();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "failed to clear throttle", v13, 2u);
    }
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_100054394()
{
  v1[2] = v0;
  v2 = sub_100079A00();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100054454, v0, 0);
}

uint64_t sub_100054454()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  sub_100053858();
  v6 = v5;
  v8 = v7;
  sub_1000799C0();
  sub_1000799B0();
  v10 = v9;
  (*(v2 + 8))(v1, v4);
  v11 = 1;
  if (v6 != 0.0)
  {
    v11 = v8 == 0.0 || v10 + 3600.0 < v6 || v6 + v8 < v10;
  }

  v13 = v0[5];

  v14 = v0[1];

  return v14(v11);
}

uint64_t sub_100054544()
{
  v1[2] = v0;
  v2 = sub_100079A00();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100054604, v0, 0);
}

uint64_t sub_100054604()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = sub_100053858();
  sub_1000799C0();
  sub_1000799B0();
  v7 = v6;
  (*(v2 + 8))(v1, v4);
  result = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    v9 = v0[5];
    v10 = v0[2];
    v11 = 86400.0;
    if ((v5 ^ 2) <= 86400.0)
    {
      v11 = (v5 ^ 2);
    }

    sub_100053CB8(result, v7, v11);

    v12 = v0[1];

    return v12();
  }

  return result;
}

uint64_t sub_1000546E8()
{
  v1 = OBJC_IVAR____TtC21CloudTelemetryService8Throttle_location;
  v2 = sub_1000798B0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC21CloudTelemetryService8Throttle_state);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for Throttle()
{
  result = qword_1000A4A90;
  if (!qword_1000A4A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000547C4()
{
  result = sub_1000798B0();
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

unint64_t sub_100054868()
{
  result = qword_10009EC80;
  if (!qword_10009EC80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009EC80);
  }

  return result;
}

uint64_t sub_1000548B4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000712C(&qword_10009F500, &unk_10007ED40);
  v36 = a2;
  result = sub_10007A4C0();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_100032BD8(v25, v37);
      }

      else
      {
        sub_10000978C(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_10007A730();
      sub_100079EC0();
      result = sub_10007A760();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_100032BD8(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

_OWORD *sub_100054B6C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000A0FC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100054D28();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1000548B4(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_10000A0FC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_10007A6C0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_1000070A8(v23);

    return sub_100032BD8(a1, v23);
  }

  else
  {
    sub_100054CBC(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_100054CBC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100032BD8(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_100054D28()
{
  v1 = v0;
  sub_10000712C(&qword_10009F500, &unk_10007ED40);
  v2 = *v0;
  v3 = sub_10007A4B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v22 = 32 * v17;
        sub_10000978C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100032BD8(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
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

uint64_t sub_100054ECC()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A6D90);
  sub_1000070F4(v0, qword_1000A6D90);
  return sub_100079B90();
}

uint64_t sub_100054F48()
{
  v1[6] = v0;
  v2 = sub_100079A00();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100055014, v0, 0);
}

uint64_t sub_100055014()
{
  v1 = *(v0[6] + 112);
  v0[11] = v1;
  if (v1)
  {
    v3 = v0[9];
    v2 = v0[10];
    v4 = v0[7];
    v5 = v0[8];

    sub_1000799C0();
    sub_100079970();
    v6 = *(v5 + 8);
    v0[12] = v6;
    v0[13] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v3, v4);
    v7 = swift_task_alloc();
    v0[14] = v7;
    *v7 = v0;
    v7[1] = sub_100055220;
    v8 = v0[10];

    return sub_100021C08(v8);
  }

  else
  {
    if (qword_1000A4AA0 != -1)
    {
      swift_once();
    }

    v10 = sub_100079BA0();
    sub_1000070F4(v10, qword_1000A6D90);
    v11 = sub_100079B80();
    v12 = sub_10007A190();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "cleanup cache activity skipped due to bad initialization", v13, 2u);
    }

    v15 = v0[9];
    v14 = v0[10];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_100055220()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {
    v4 = v3[6];

    return _swift_task_switch(sub_100055548, v4, 0);
  }

  else
  {
    v5 = v3[11];
    v6 = swift_task_alloc();
    v3[16] = v6;
    *v6 = v3;
    v6[1] = sub_100055390;

    return sub_100022D30();
  }
}

uint64_t sub_100055390()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_100055740;
  }

  else
  {
    v6 = sub_1000554BC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000554BC()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[7];

  v2(v4, v5);
  v7 = v0[9];
  v6 = v0[10];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100055548()
{
  v21 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  (*(v0 + 96))(*(v0 + 80), *(v0 + 56));
  if (qword_1000A4AA0 != -1)
  {
    swift_once();
  }

  v3 = sub_100079BA0();
  sub_1000070F4(v3, qword_1000A6D90);
  swift_errorRetain();
  v4 = sub_100079B80();
  v5 = sub_10007A180();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 88);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v11 = *(v0 + 16);
    v10 = *(v0 + 24);
    v12 = *(v0 + 32);
    v13 = sub_10007A6D0();
    v15 = sub_100006B00(v13, v14, &v20);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "failed to delete outdated sessions: %{public}s", v8, 0xCu);
    sub_1000070A8(v9);
  }

  else
  {
  }

  v17 = *(v0 + 72);
  v16 = *(v0 + 80);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100055740()
{
  v21 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  (*(v0 + 96))(*(v0 + 80), *(v0 + 56));
  if (qword_1000A4AA0 != -1)
  {
    swift_once();
  }

  v3 = sub_100079BA0();
  sub_1000070F4(v3, qword_1000A6D90);
  swift_errorRetain();
  v4 = sub_100079B80();
  v5 = sub_10007A180();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 88);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v11 = *(v0 + 16);
    v10 = *(v0 + 24);
    v12 = *(v0 + 32);
    v13 = sub_10007A6D0();
    v15 = sub_100006B00(v13, v14, &v20);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "failed to delete outdated sessions: %{public}s", v8, 0xCu);
    sub_1000070A8(v9);
  }

  else
  {
  }

  v17 = *(v0 + 72);
  v16 = *(v0 + 80);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100055938()
{
  v2 = *(*v0 + 104);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100007838;

  return v6();
}

uint64_t sub_100055A48()
{
  v0 = CacheCleanupActivityConfig.activityFlags.unsafeMutableAddressor();
  swift_beginAccess();
  v1 = *v0;
}

uint64_t sub_100055A8C()
{
  v0 = CacheCleanupActivityConfig.identifier.unsafeMutableAddressor();
  v1 = *v0;
  v2 = *(v0 + 1);

  return v1;
}

unint64_t sub_100055AC0(uint64_t a1)
{
  result = sub_100055AE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100055AE8()
{
  result = qword_10009F508;
  if (!qword_10009F508)
  {
    type metadata accessor for CacheCleanupActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F508);
  }

  return result;
}

uint64_t sub_100055B74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100056940(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_100055BA4(char a1)
{
  result = 0x79745F746E657665;
  switch(a1)
  {
    case 1:
      result = 0x6C72755F74736F70;
      break;
    case 2:
      result = 0x676E696C706D6173;
      break;
    case 3:
    case 12:
    case 16:
      result = 0xD000000000000012;
      break;
    case 4:
    case 20:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x5F64656C62616E65;
      break;
    case 9:
      result = 0x6C625F746E657665;
      break;
    case 10:
      result = 0x68775F746E657665;
      break;
    case 11:
      result = 0x68745F746E657665;
      break;
    case 13:
      result = 0x737265746C6966;
      break;
    case 14:
      result = 0x635F646568736168;
      break;
    case 15:
      result = 0x6863726172656968;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    case 18:
      result = 0x656469727265766FLL;
      break;
    case 19:
      result = 0x746C6165725F7369;
      break;
    case 21:
      result = 0xD00000000000001FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100055E7C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100055BA4(*a1);
  v5 = v4;
  if (v3 == sub_100055BA4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10007A610();
  }

  return v8 & 1;
}

uint64_t sub_100055F04(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000736570;
  v3 = a1;
  v4 = 0x737265746C6966;
  if (a1 != 2)
  {
    v4 = 0x73747069726373;
  }

  v5 = 0xD000000000000012;
  v6 = 0x80000001000840A0;
  if (!a1)
  {
    v5 = 0x79745F746E657665;
    v6 = 0xEB00000000736570;
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v3 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (a2 > 1u)
  {
    v10 = a2 == 2;
    v2 = 0xE700000000000000;
    v9 = 0xE700000000000000;
    if (a2 == 2)
    {
      v11 = 0x737265746C6966;
    }

    else
    {
      v11 = 0x73747069726373;
    }
  }

  else
  {
    v9 = 0x80000001000840A0;
    v10 = a2 == 0;
    if (a2)
    {
      v11 = 0xD000000000000012;
    }

    else
    {
      v11 = 0x79745F746E657665;
    }
  }

  if (v10)
  {
    v12 = v2;
  }

  else
  {
    v12 = v9;
  }

  if (v7 == v11 && v8 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_10007A610();
  }

  return v13 & 1;
}

Swift::Int sub_100056044()
{
  v1 = *v0;
  sub_10007A730();
  sub_100055BA4(v1);
  sub_100079EC0();

  return sub_10007A760();
}

uint64_t sub_1000560A8()
{
  sub_100055BA4(*v0);
  sub_100079EC0();
}

Swift::Int sub_1000560FC()
{
  v1 = *v0;
  sub_10007A730();
  sub_100055BA4(v1);
  sub_100079EC0();

  return sub_10007A760();
}

uint64_t sub_10005615C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_100056AFC();
  *a2 = result;
  return result;
}

unint64_t sub_10005618C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100055BA4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000561C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100056AFC();
  *a1 = result;
  return result;
}

uint64_t sub_1000561F4(uint64_t a1)
{
  v2 = sub_1000584E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100056230(uint64_t a1)
{
  v2 = sub_1000584E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10005626C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100056B50(a1, v10);
  if (!v2)
  {
    v5 = v10[11];
    *(a2 + 160) = v10[10];
    *(a2 + 176) = v5;
    *(a2 + 192) = v10[12];
    v6 = v10[7];
    *(a2 + 96) = v10[6];
    *(a2 + 112) = v6;
    v7 = v10[9];
    *(a2 + 128) = v10[8];
    *(a2 + 144) = v7;
    v8 = v10[3];
    *(a2 + 32) = v10[2];
    *(a2 + 48) = v8;
    v9 = v10[5];
    *(a2 + 64) = v10[4];
    *(a2 + 80) = v9;
    result = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1000562D8()
{
  if (*v0)
  {
    result = 0x6C6F687365726874;
  }

  else
  {
    result = 0x7972746E756F63;
  }

  *v0;
  return result;
}

uint64_t sub_100056318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7972746E756F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_10007A610() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_10007A610();

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

uint64_t sub_1000563FC(uint64_t a1)
{
  v2 = sub_100058588();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100056438(uint64_t a1)
{
  v2 = sub_100058588();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100056474(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000578A8(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

Swift::Int sub_1000564B0()
{
  v1 = *v0;
  sub_10007A730();
  sub_100079EC0();

  return sub_10007A760();
}

uint64_t sub_100056580()
{
  *v0;
  *v0;
  *v0;
  sub_100079EC0();
}

Swift::Int sub_10005663C()
{
  v1 = *v0;
  sub_10007A730();
  sub_100079EC0();

  return sub_10007A760();
}

uint64_t sub_100056708@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100057AA8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100056738(unint64_t *a1@<X8>)
{
  v2 = 0xEB00000000736570;
  v3 = 0x79745F746E657665;
  v4 = 0x737265746C6966;
  if (*v1 != 2)
  {
    v4 = 0x73747069726373;
  }

  if (*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x80000001000840A0;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_1000567C4()
{
  v1 = 0x79745F746E657665;
  v2 = 0x737265746C6966;
  if (*v0 != 2)
  {
    v2 = 0x73747069726373;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_10005684C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100057AA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100056874(uint64_t a1)
{
  v2 = sub_10005848C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000568B0(uint64_t a1)
{
  v2 = sub_10005848C();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1000568EC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100057AF4(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_100056940(uint64_t *a1)
{
  v3 = a1[4];
  v4 = sub_10000751C(a1, a1[3]);
  sub_10007A780();
  if (!v1)
  {
    sub_10000751C(v12, v12[3]);
    v5 = sub_10007A630();
    if (!v5)
    {
      v4 = 1;
      goto LABEL_10;
    }

    if (v5 == 1)
    {
      v4 = 0;
LABEL_10:
      sub_1000070A8(v12);
      sub_1000070A8(a1);
      return v4;
    }

    v7 = sub_10007A400();
    swift_allocError();
    v9 = v8;
    v10 = *(sub_10000712C(&qword_10009F670, &qword_10007F418) + 48);
    *v9 = &type metadata for StorebagBool;
    v11 = a1[4];
    v4 = sub_10000751C(a1, a1[3]);
    sub_10007A770();
    sub_10007A3F0();
    (*(*(v7 - 8) + 104))(v9, enum case for DecodingError.typeMismatch(_:), v7);
    swift_willThrow();
    sub_1000070A8(v12);
  }

  sub_1000070A8(a1);
  return v4;
}

uint64_t sub_100056AFC()
{
  v0 = sub_10007A690();

  if (v0 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_100056B50@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10000712C(&qword_10009F638, &qword_10007F400);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v53 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v153 = a1;
  sub_10000751C(a1, v10);
  sub_1000584E0();
  sub_10007A790();
  if (v2)
  {
    return sub_1000070A8(v153);
  }

  v12 = v6;
  v82 = a2;
  LOBYTE(v96) = 0;
  v14 = sub_10007A550();
  v80 = v15;
  LOBYTE(v96) = 1;
  v16 = sub_10007A550();
  v78 = v17;
  v79 = 0;
  v68 = v16;
  v18 = sub_10000712C(&qword_10009E130, &qword_10007BCF0);
  LOBYTE(v83) = 2;
  v19 = v18;
  v20 = sub_100058630(&qword_10009ECE8, &qword_10009E130, &qword_10007BCF0);
  sub_10007A520();
  v67 = v19;
  v77 = v96;
  LOBYTE(v96) = 3;
  v66 = sub_10007A510();
  v152 = v21 & 1;
  LOBYTE(v96) = 4;
  v22 = sub_10007A540();
  v81 = 0;
  v64 = v22;
  v65 = v20;
  v150 = v23 & 1;
  LOBYTE(v83) = 5;
  v29 = sub_1000585DC();
  v30 = v81;
  sub_10007A520();
  if (v30)
  {
    v81 = v30;
    (*(v12 + 8))(v9, v5);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  else
  {
    v63 = v29;
    v62 = v96;
    LOBYTE(v83) = 6;
    sub_10007A520();
    v76 = v96;
    LOBYTE(v83) = 7;
    sub_10007A520();
    v75 = v96;
    LOBYTE(v96) = 8;
    v31 = sub_10007A500();
    v81 = 0;
    v32 = v31;
    v74 = v33;
    sub_10000712C(&qword_10009F648, &qword_10007F408);
    LOBYTE(v83) = 9;
    sub_100058630(&qword_10009F650, &qword_10009F648, &qword_10007F408);
    v34 = v81;
    sub_10007A520();
    v81 = v34;
    if (v34)
    {
      (*(v12 + 8))(v9, v5);
      v27 = 0;
      v28 = 0;
      v24 = 1;
      v25 = 1;
      v26 = 1;
    }

    else
    {
      v73 = v96;
      LOBYTE(v83) = 10;
      sub_10007A520();
      v81 = 0;
      v72 = v96;
      LOBYTE(v96) = 11;
      v61 = sub_10007A540();
      v81 = 0;
      v147 = v35 & 1;
      LOBYTE(v83) = 12;
      sub_10007A520();
      v81 = 0;
      v60 = v96;
      sub_10000712C(&qword_10009F610, &qword_10007F3E8);
      LOBYTE(v83) = 13;
      sub_100058534(&qword_10009F618, &qword_10009F610, &qword_10007F3E8);
      v36 = v81;
      sub_10007A570();
      v81 = v36;
      if (!v36)
      {
        v70 = v97;
        v71 = v96;
        v144 = v98;
        LOBYTE(v96) = 14;
        v37 = sub_10007A500();
        v69 = v38;
        v81 = 0;
        v39 = v37;
        LOBYTE(v83) = 15;
        sub_10007A520();
        v81 = 0;
        v59 = v96;
        LOBYTE(v83) = 16;
        sub_10007A520();
        v81 = 0;
        v58 = v96;
        LOBYTE(v83) = 17;
        sub_10007A520();
        v81 = 0;
        v79 = v96;
        LOBYTE(v83) = 18;
        sub_10007A520();
        v81 = 0;
        LODWORD(v67) = v96;
        LOBYTE(v83) = 19;
        sub_10007A520();
        v81 = 0;
        LODWORD(v65) = v96;
        LOBYTE(v83) = 20;
        sub_10007A520();
        v81 = 0;
        LODWORD(v63) = v96;
        sub_10000712C(&qword_10009F658, &qword_10007F410);
        v137 = 21;
        sub_100058698();
        v40 = v81;
        sub_10007A520();
        v81 = v40;
        (*(v12 + 8))(v9, v5);
        if (v40)
        {
          sub_1000070A8(v153);

          sub_10004E018(v71, v70, v144);
        }

        else
        {
          v54 = v138;
          *&v83 = v14;
          *(&v83 + 1) = v80;
          *&v84 = v77;
          *(&v84 + 1) = v68;
          *&v85 = v78;
          *(&v85 + 1) = v66;
          v57 = v152;
          LOBYTE(v86) = v152;
          *(&v86 + 1) = *v151;
          DWORD1(v86) = *&v151[3];
          *(&v86 + 1) = v64;
          v56 = v150;
          LOBYTE(v87) = v150;
          BYTE1(v87) = v62;
          WORD3(v87) = v149;
          *(&v87 + 2) = v148;
          *(&v87 + 1) = v76;
          *&v88 = v75;
          v55 = v32;
          *(&v88 + 1) = v32;
          *&v89 = v74;
          *(&v89 + 1) = v73;
          *&v90 = v72;
          *(&v90 + 1) = v61;
          *(&v91 + 2) = v145;
          HIDWORD(v92) = *&v143[3];
          *(&v92 + 9) = *v143;
          *(&v94 + 2) = v141;
          *(&v95 + 3) = v139;
          HIDWORD(v53) = v147;
          LOBYTE(v91) = v147;
          v42 = v59;
          v41 = v60;
          BYTE1(v91) = v60;
          WORD3(v91) = v146;
          *(&v91 + 1) = v71;
          *&v92 = v70;
          WORD3(v94) = v142;
          BYTE7(v95) = v140;
          v43 = v144;
          BYTE8(v92) = v144;
          v44 = v69;
          *&v93 = v39;
          *(&v93 + 1) = v69;
          LOBYTE(v94) = v59;
          v45 = v58;
          BYTE1(v94) = v58;
          *(&v94 + 1) = v79;
          LOBYTE(v95) = v67;
          BYTE1(v95) = v65;
          BYTE2(v95) = v63;
          *(&v95 + 1) = v138;
          sub_10004D64C(&v83, &v96);
          sub_1000070A8(v153);
          v96 = v14;
          v97 = v80;
          v98 = v77;
          v99 = v68;
          v100 = v78;
          v101 = v66;
          v102 = v57;
          *v103 = *v151;
          *&v103[3] = *&v151[3];
          v104 = v64;
          v105 = v56;
          v106 = v62;
          v107 = v148;
          v108 = v149;
          v109 = v76;
          v110 = v75;
          v111 = v55;
          v112 = v74;
          v113 = v73;
          v114 = v72;
          v115 = v61;
          v116 = BYTE4(v53);
          v117 = v41;
          v118 = v145;
          v119 = v146;
          v120 = v71;
          v121 = v70;
          v122 = v43;
          *v123 = *v143;
          *&v123[3] = *&v143[3];
          v124 = v39;
          v125 = v44;
          v126 = v42;
          v127 = v45;
          v129 = v142;
          v128 = v141;
          v130 = v79;
          v131 = v67;
          v132 = v65;
          v133 = v63;
          v135 = v140;
          v134 = v139;
          v136 = v54;
          result = sub_10004D6A8(&v96);
          v46 = v94;
          v47 = v82;
          v82[10] = v93;
          v47[11] = v46;
          v47[12] = v95;
          v48 = v90;
          v47[6] = v89;
          v47[7] = v48;
          v49 = v92;
          v47[8] = v91;
          v47[9] = v49;
          v50 = v86;
          v47[2] = v85;
          v47[3] = v50;
          v51 = v88;
          v47[4] = v87;
          v47[5] = v51;
          v52 = v84;
          *v47 = v83;
          v47[1] = v52;
        }

        return result;
      }

      (*(v12 + 8))(v9, v5);
      v24 = 1;
      v25 = 1;
      v26 = 1;
      v27 = 1;
      v28 = 1;
    }
  }

  sub_1000070A8(v153);

  if (v79)
  {
    if (v24)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (v24)
    {
LABEL_7:

      if ((v25 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  if (!v25)
  {
LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:

  if (v26)
  {
LABEL_9:

    if ((v27 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:

    if (v28)
    {
    }

    return result;
  }

LABEL_15:
  if (v27)
  {
    goto LABEL_16;
  }

LABEL_10:
  if (v28)
  {
  }

  return result;
}

double sub_1000578A8(uint64_t *a1)
{
  v4 = sub_10000712C(&qword_10009F630, &qword_10007F3F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12[-v7];
  v9 = a1[4];
  sub_10000751C(a1, a1[3]);
  sub_100058588();
  sub_10007A790();
  if (!v1)
  {
    sub_10000712C(&qword_10009E130, &qword_10007BCF0);
    v12[15] = 0;
    sub_100058630(&qword_10009ECE8, &qword_10009E130, &qword_10007BCF0);
    sub_10007A570();
    v12[14] = 1;
    sub_10007A560();
    v2 = v11;
    (*(v5 + 8))(v8, v4);
  }

  sub_1000070A8(a1);
  return v2;
}

uint64_t sub_100057AA8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100098530;
  v6._object = a2;
  v4 = sub_10007A4F0(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100057AF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000712C(&qword_10009F608, &unk_10007F3D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_10000751C(a1, a1[3]);
  sub_10005848C();
  sub_10007A790();
  if (v2)
  {
    return sub_1000070A8(a1);
  }

  sub_10000712C(&qword_10009E130, &qword_10007BCF0);
  v31 = 0;
  sub_100058630(&qword_10009ECE8, &qword_10009E130, &qword_10007BCF0);
  sub_10007A570();
  v11 = v27;
  LOBYTE(v27) = 1;
  v12 = sub_10007A510();
  v23 = v13;
  v24 = v12;
  v25 = v11;
  sub_10000712C(&qword_10009F610, &qword_10007F3E8);
  v31 = 2;
  sub_100058534(&qword_10009F618, &qword_10009F610, &qword_10007F3E8);
  sub_10007A520();
  v20 = v27;
  v21 = v28;
  v22 = v29;
  sub_10000712C(&qword_10009F620, &qword_10007F3F0);
  v31 = 3;
  sub_100058534(&qword_10009F628, &qword_10009F620, &qword_10007F3F0);
  sub_10007A570();
  (*(v6 + 8))(v9, v5);
  v14 = v27;
  v15 = v28;
  v30 = v23 & 1;
  v26 = v29;
  result = sub_1000070A8(a1);
  v17 = v24;
  *a2 = v25;
  *(a2 + 8) = v17;
  *(a2 + 16) = v30;
  v18 = v21;
  *(a2 + 24) = v20;
  *(a2 + 32) = v18;
  *(a2 + 40) = v22;
  *(a2 + 48) = v14;
  *(a2 + 56) = v15;
  *(a2 + 64) = v26;
  return result;
}

unint64_t sub_100057EA8()
{
  result = qword_10009F5C0;
  if (!qword_10009F5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F5C0);
  }

  return result;
}

unint64_t sub_100057F00()
{
  result = qword_10009F5C8;
  if (!qword_10009F5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F5C8);
  }

  return result;
}

unint64_t sub_100057F58()
{
  result = qword_10009F5D0;
  if (!qword_10009F5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F5D0);
  }

  return result;
}

unint64_t sub_100057FB0()
{
  result = qword_10009F5D8;
  if (!qword_10009F5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F5D8);
  }

  return result;
}

unint64_t sub_100058008()
{
  result = qword_10009F5E0;
  if (!qword_10009F5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F5E0);
  }

  return result;
}

unint64_t sub_100058060()
{
  result = qword_10009F5E8;
  if (!qword_10009F5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F5E8);
  }

  return result;
}

unint64_t sub_1000580B8()
{
  result = qword_10009F5F0;
  if (!qword_10009F5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F5F0);
  }

  return result;
}

__n128 sub_100058130(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_10005816C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_1000581B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StorebagSectionClientHTTP.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StorebagSectionClientHTTP.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100058398(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1000583AC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000583D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100058418(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10005848C()
{
  result = qword_10009F5F8;
  if (!qword_10009F5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F5F8);
  }

  return result;
}

unint64_t sub_1000584E0()
{
  result = qword_10009F600;
  if (!qword_10009F600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F600);
  }

  return result;
}

uint64_t sub_100058534(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000072D8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100058588()
{
  result = qword_1000A54C0[0];
  if (!qword_1000A54C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A54C0);
  }

  return result;
}

unint64_t sub_1000585DC()
{
  result = qword_10009F640;
  if (!qword_10009F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F640);
  }

  return result;
}

uint64_t sub_100058630(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000072D8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100058698()
{
  result = qword_10009F660;
  if (!qword_10009F660)
  {
    sub_1000072D8(&qword_10009F658, &qword_10007F410);
    sub_10005871C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F660);
  }

  return result;
}

unint64_t sub_10005871C()
{
  result = qword_10009F668;
  if (!qword_10009F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F668);
  }

  return result;
}

unint64_t sub_100058784()
{
  result = qword_1000A55D0[0];
  if (!qword_1000A55D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A55D0);
  }

  return result;
}

unint64_t sub_1000587DC()
{
  result = qword_1000A56E0;
  if (!qword_1000A56E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A56E0);
  }

  return result;
}

unint64_t sub_100058834()
{
  result = qword_1000A56E8[0];
  if (!qword_1000A56E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A56E8);
  }

  return result;
}

const char *sub_1000588A4(int a1, uint64_t a2, uint64_t a3)
{
  v4 = 0x6F727245204C5153;
  if (a3)
  {
    v4 = a2;
  }

  v9 = v4;

  v10._countAndFlagsBits = 8250;
  v10._object = 0xE200000000000000;
  sub_100079F00(v10);

  result = sqlite3_errstr(a1);
  if (result)
  {
    v6 = sub_100079F10();
    v8 = v7;

    v11._countAndFlagsBits = v6;
    v11._object = v8;
    sub_100079F00(v11);

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100058984()
{
  v1 = 0x6465736F6C63;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000026;
  }

  v2 = 0xD00000000000001ALL;
  if (*v0)
  {
    v2 = 0xD000000000000020;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t type metadata accessor for SQLiteDB.Location()
{
  result = qword_1000A5C00;
  if (!qword_1000A5C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100058A54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SQLiteDB.Location();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_100058AB8(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1000798B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &ppDb - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SQLiteDB.Location();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &ppDb - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  ppDb = 0;
  sub_100058A54(a1, v13);
  if ((*(v6 + 48))(v13, 1, v5) != 1)
  {
    (*(v6 + 32))(v9, v13, v5);
    sub_100079870();
    (*(v6 + 8))(v9, v5);
  }

  v14 = sub_100079EA0();

  v15 = sqlite3_open_v2((v14 + 32), &ppDb, 32774, 0);

  v16 = ppDb;
  if (!ppDb || v15)
  {
    sub_1000590E4();
    swift_allocError();
    *v17 = v15;
    *(v17 + 8) = 0xD000000000000017;
    *(v17 + 16) = 0x8000000100084580;
    swift_willThrow();
    sub_10005A24C(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_10005A24C(a1);
    v2[2] = v16;
  }

  return v2;
}

uint64_t sub_100058D70()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    *(v0 + 24) = 1;
    sqlite3_close_v2(*(v0 + 16));
  }

  return swift_deallocClassInstance();
}

uint64_t sub_100058DB8()
{
  v1 = sqlite3_expanded_sql(*(v0 + 16));
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_100079F10();
  sqlite3_free(v2);
  return v3;
}

uint64_t sub_100058E14()
{
  v1 = v0;
  v2 = sqlite3_step(*(v0 + 16));
  if (v2 == 101)
  {
    swift_beginAccess();
    *(v0 + 24) = 1;
    return 0;
  }

  else if (v2 == 100)
  {
  }

  else
  {
    v3 = v2;
    sub_10007A3B0(38);

    strcpy(v8, "Statement ((");
    BYTE5(v8[1]) = 0;
    HIWORD(v8[1]) = -5120;
    v9._countAndFlagsBits = (*(*v0 + 96))(v4);
    sub_100079F00(v9);

    v10._object = 0x80000001000842F0;
    v10._countAndFlagsBits = 0xD000000000000018;
    sub_100079F00(v10);
    v1 = v8[0];
    v5 = v8[1];
    sub_1000590E4();
    swift_allocError();
    *v6 = v3;
    *(v6 + 8) = v1;
    *(v6 + 16) = v5;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_100058F68(void (*a1)(uint64_t))
{
  v4 = *(v1 + 16);
  while (1)
  {
    v5 = sqlite3_step(v4);
    if (v5 != 100)
    {
      break;
    }

    a1(v6);

    if (v2)
    {
      return result;
    }
  }

  if (v5 == 101)
  {
    result = swift_beginAccess();
    *(v1 + 24) = 1;
  }

  else
  {
    v8 = v5;
    sub_10007A3B0(38);

    strcpy(v13, "Statement ((");
    BYTE5(v13[1]) = 0;
    HIWORD(v13[1]) = -5120;
    v14._countAndFlagsBits = (*(*v1 + 96))(v9);
    sub_100079F00(v14);

    v15._object = 0x80000001000842F0;
    v15._countAndFlagsBits = 0xD000000000000018;
    sub_100079F00(v15);
    v10 = v13[0];
    v11 = v13[1];
    sub_1000590E4();
    swift_allocError();
    *v12 = v8;
    *(v12 + 8) = v10;
    *(v12 + 16) = v11;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1000590E4()
{
  result = qword_10009F678;
  if (!qword_10009F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F678);
  }

  return result;
}

uint64_t sub_100059138@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = v3;
  result = sub_100058E14();
  if (!v4)
  {
    if (result)
    {
      a1();
      if (sub_100058E14())
      {

        v11 = *(v3 + 16);
        do
        {
          v12 = sqlite3_step(v11);
        }

        while (v12 == 100);
        if (v12 == 101)
        {
          swift_beginAccess();
          v5[24] = 1;
          sub_1000593AC();
          swift_allocError();
          *v13 = 1;
        }

        else
        {
          v14 = v12;
          sub_10007A3B0(38);

          strcpy(v19, "Statement ((");
          BYTE5(v19[1]) = 0;
          HIWORD(v19[1]) = -5120;
          v20._countAndFlagsBits = (*(*v5 + 96))(v15);
          sub_100079F00(v20);

          v21._object = 0x80000001000842F0;
          v21._countAndFlagsBits = 0xD000000000000018;
          sub_100079F00(v21);
          v16 = v19[0];
          v17 = v19[1];
          sub_1000590E4();
          swift_allocError();
          *v18 = v14;
          *(v18 + 8) = v16;
          *(v18 + 16) = v17;
        }

        swift_willThrow();

        return (*(*(a2 - 8) + 8))(a3, a2);
      }

      else
      {
      }
    }

    else
    {
      sub_1000593AC();
      swift_allocError();
      *v10 = 0;
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_1000593AC()
{
  result = qword_10009F680;
  if (!qword_10009F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F680);
  }

  return result;
}

uint64_t sub_100059400(uint64_t a1, uint64_t a2)
{
  v4[2] = a1;
  v4[3] = a2;
  return (*(*v2 + 152))(sub_100059460, v4, a1);
}

uint64_t sub_100059460(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if (sqlite3_column_count(*(a1 + 16)) == 1)
  {
    v4 = *(v2 + 8);

    return v4(v5, 0, v3, v2);
  }

  else
  {
    sub_1000593AC();
    swift_allocError();
    *v7 = 2;
    return swift_willThrow();
  }
}

uint64_t sub_10005951C(uint64_t a1, uint64_t a2)
{
  v6[2] = a1;
  v6[3] = a2;
  v3 = *(*v2 + 152);
  v4 = sub_10007A2B0();
  return v3(sub_1000595AC, v6, v4);
}

uint64_t sub_1000595AC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if (sqlite3_column_count(*(a1 + 16)) == 1)
  {
    v4 = *(v2 + 8);

    return v4(v5, 0, v3, v2);
  }

  else
  {
    sub_1000593AC();
    swift_allocError();
    *v7 = 2;
    return swift_willThrow();
  }
}

uint64_t sub_100059668()
{
  v1 = *(v0 + 16);
  do
  {
    v2 = sqlite3_step(v1);
  }

  while (v2 == 100);
  if (v2 == 101)
  {
    result = swift_beginAccess();
    *(v0 + 24) = 1;
  }

  else
  {
    v4 = v2;
    sub_10007A3B0(38);

    strcpy(v9, "Statement ((");
    BYTE5(v9[1]) = 0;
    HIWORD(v9[1]) = -5120;
    v10._countAndFlagsBits = (*(*v0 + 96))(v5);
    sub_100079F00(v10);

    v11._object = 0x80000001000842F0;
    v11._countAndFlagsBits = 0xD000000000000018;
    sub_100079F00(v11);
    v6 = v9[0];
    v7 = v9[1];
    sub_1000590E4();
    swift_allocError();
    *v8 = v4;
    *(v8 + 8) = v6;
    *(v8 + 16) = v7;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1000597AC(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  sub_10000751C(a2, v4);
  return (*(v5 + 8))(v2, a1, v4, v5);
}

uint64_t sub_100059820(uint64_t result)
{
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 32;
  while (1)
  {
    v6 = 0uLL;
    v7 = v4;
    v8 = 0uLL;
    v9 = 0uLL;
    if (v3 != v4)
    {
      if (v3 >= v4)
      {
        goto LABEL_11;
      }

      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_12;
      }

      *&v11[0] = v3;
      result = sub_10001378C(v5 + 40 * v3, v11 + 8);
      v6 = v11[0];
      v8 = v11[1];
      v9 = v11[2];
    }

    v12[0] = v6;
    v12[1] = v8;
    v12[2] = v9;
    if (!v9)
    {
      return result;
    }

    v10 = v6;
    sub_1000354EC((v12 + 8), v11);
    result = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    (*(*v1 + 184))(result, v11);
    result = sub_1000070A8(v11);
    v3 = v7;
    if (v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_100059934()
{
  sqlite3_finalize(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_10005996C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 8);

  return v8(a2, a1, a3, a4);
}

uint64_t sub_1000599E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 8);

  return v8(a2, a1, a3, a4);
}

uint64_t sub_100059A90(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_100059B20(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = a1;
  return result;
}

uint64_t sub_100059B58(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if ((*(*v3 + 96))())
  {
    sub_1000590E4();
    swift_allocError();
    *v6 = 1;
    *(v6 + 8) = 0xD00000000000001DLL;
    *(v6 + 16) = 0x8000000100084310;
    return swift_willThrow();
  }

  else
  {
    v8 = v3[2];
    result = sub_100059C58();
    if (!v4)
    {
      a3();
    }
  }

  return result;
}

uint64_t sub_100059C58()
{
  v1 = *(v0 + 112);
  if (*(v1 + 24))
  {
    sub_1000593AC();
    swift_allocError();
    *v2 = 3;
  }

  else
  {
    v9 = 0;
    v3 = sub_100079EA0();
    v4 = *(v3 + 16);
    if (v4 >> 31)
    {
      __break(1u);
    }

    v5 = sqlite3_prepare_v2(*(v1 + 16), (v3 + 32), v4, &v9, 0);

    v6 = v9;
    if (v9 && !v5)
    {
      type metadata accessor for SQLiteDB.Statement();
      result = swift_allocObject();
      *(result + 24) = 0;
      *(result + 16) = v6;
      return result;
    }

    sub_1000590E4();
    swift_allocError();
    *v8 = v5;
    *(v8 + 8) = 0xD00000000000001BLL;
    *(v8 + 16) = 0x80000001000845A0;
  }

  return swift_willThrow();
}

uint64_t sub_100059DD8()
{
  v1 = *(v0 + 112);
  if (*(v1 + 24))
  {
    sub_1000593AC();
    swift_allocError();
    *v2 = 3;
  }

  else
  {
    v3 = *(v1 + 16);
    v4 = sub_100079EA0();
    v5 = sqlite3_exec(v3, (v4 + 32), 0, 0, 0);

    if (!v5)
    {
      return result;
    }

    sub_1000590E4();
    swift_allocError();
    *v7 = v5;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
  }

  return swift_willThrow();
}

uint64_t sub_100059ECC()
{
  v2 = v0;
  if ((*(*v0 + 96))())
  {
    sub_1000590E4();
    swift_allocError();
    *v3 = 1;
    *(v3 + 8) = 0xD00000000000001DLL;
    *(v3 + 16) = 0x8000000100084310;
    return swift_willThrow();
  }

  else
  {
    v5 = v0[2];
    result = sub_100059DD8();
    if (!v1)
    {
      return (*(*v2 + 104))(1);
    }
  }

  return result;
}

uint64_t sub_100059FCC()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_10005A004(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_10005A054(a1);
  return v2;
}

void *sub_10005A054(uint64_t a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = type metadata accessor for SQLiteDB.Location();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  sub_100058A54(a1, v9);
  type metadata accessor for SQLiteDB.DBHandle();
  v10 = swift_allocObject();
  sub_100058AB8(v9);
  if (!v2)
  {
    v11 = 0xD000000000000013;
    v12 = sqlite3_exec(*(v10 + 16), "PRAGMA journal_mode=WAL;", 0, 0, 0);
    if (v12)
    {
      v13 = v12;
      v14 = "PRAGMA journal_mode=WAL;";
      v11 = 0xD000000000000014;
    }

    else
    {
      v15 = sqlite3_exec(*(v10 + 16), "PRAGMA foreign_keys=ON;", 0, 0, 0);
      if (!v15)
      {
        sub_10005A24C(a1);
        v3[14] = v10;
        return v3;
      }

      v13 = v15;
      v14 = "PRAGMA foreign_keys=ON;";
    }

    v16 = v14 | 0x8000000000000000;
    sub_1000590E4();
    swift_allocError();
    *v17 = v13;
    *(v17 + 8) = v11;
    *(v17 + 16) = v16;
    swift_willThrow();
  }

  swift_defaultActor_destroy();
  sub_10005A24C(a1);
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_10005A24C(uint64_t a1)
{
  v2 = type metadata accessor for SQLiteDB.Location();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005A2A8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  result = sub_100059C58();
  if (!v3)
  {
    a3();
  }

  return result;
}

uint64_t sub_10005A304(void (*a1)(uint64_t))
{
  type metadata accessor for SQLiteDB.Transaction();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v1;

  sub_100059DD8();
  if (!v2)
  {
    a1(v4);
    swift_beginAccess();
    if ((*(v4 + 24) & 1) == 0)
    {
      sub_100059DD8();
    }
  }
}

uint64_t sub_10005A488()
{
  v1 = *(v0 + 112);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return sqlite3_close_v2(*(v1 + 16));
  }

  return result;
}

uint64_t sub_10005A4A8(uint64_t result, uint64_t a2, char a3)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = sqlite3_bind_int(*(result + 16), a2, a3 & 1);
  if (result)
  {
    v3 = result;
    sub_1000590E4();
    swift_allocError();
    *v4 = v3;
    *(v4 + 8) = 0xD000000000000012;
    *(v4 + 16) = 0x80000001000843D0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10005A550@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    v4 = sqlite3_column_int(*(result + 16), a2);

    *a3 = v4 > 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10005A5DC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a2 < 0xFFFFFFFF80000000 || a3 < 0xFFFFFFFF80000000)
  {
    goto LABEL_9;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  result = sqlite3_bind_int(*(result + 16), a2, a3);
  if (result)
  {
    v3 = result;
    sub_1000590E4();
    swift_allocError();
    *v4 = v3;
    *(v4 + 8) = 0xD000000000000012;
    *(v4 + 16) = 0x80000001000843D0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10005A698@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    v4 = sqlite3_column_int(*(result + 16), a2);

    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10005A720@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, sqlite3_int64 *a3@<X8>)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    v4 = sqlite3_column_int64(*(result + 16), a2);

    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10005A788(uint64_t result, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = sqlite3_bind_int64(*(result + 16), a2, *v2);
  if (result)
  {
    v3 = result;
    sub_1000590E4();
    swift_allocError();
    *v4 = v3;
    *(v4 + 8) = 0xD000000000000014;
    *(v4 + 16) = 0x80000001000843F0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10005A830@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    v4 = sqlite3_column_double(*(result + 16), a2);

    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10005A898(uint64_t result, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = sqlite3_bind_double(*(result + 16), a2, *v2);
  if (result)
  {
    v3 = result;
    sub_1000590E4();
    swift_allocError();
    *v4 = v3;
    *(v4 + 8) = 0xD000000000000015;
    *(v4 + 16) = 0x8000000100084410;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10005A940(sqlite3_stmt *a1, uint64_t a2)
{
  v5 = sub_100079EA0();
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *(v5 + 16);
  if (!(v2 >> 31))
  {
    a1 = *(a1 + 2);
    if (qword_1000A5770 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  __break(1u);
LABEL_11:
  v9 = v5;
  swift_once();
  v5 = v9;
LABEL_5:
  v6 = sqlite3_bind_text(a1, a2, (v5 + 32), v2, qword_1000A5778);

  if (v6)
  {
    sub_1000590E4();
    swift_allocError();
    *v8 = v6;
    *(v8 + 8) = 0xD000000000000015;
    *(v8 + 16) = 0x8000000100084430;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10005AA70@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (sqlite3_column_text(*(result + 16), a2))
  {
    v4 = sub_100079F20();
    v6 = v5;
  }

  else
  {

    v4 = 0;
    v6 = 0;
  }

  *a3 = v4;
  a3[1] = v6;
  return result;
}

uint64_t sub_10005AAF4(sqlite3_stmt *a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[1];
  return sub_10005A940(a1, a2);
}

unint64_t sub_10005AB28()
{
  result = qword_10009F688;
  if (!qword_10009F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F688);
  }

  return result;
}

uint64_t sub_10005AB80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_10005ABDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_10005AC88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000798B0();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10005AD08(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1000798B0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10005AD88()
{
  v0 = sub_1000798B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t variable initialization expression of StorebagCoordinator.pathMonitorQueue()
{
  v16 = sub_100079C90();
  v0 = *(v16 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v16);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10007A1C0();
  v4 = *(v15 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v15);
  v14 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007A1B0();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v9 = sub_100079CC0();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v13[0] = sub_100026E98();
  v13[1] = "Failed to prepare statement";
  sub_100079CA0();
  v17 = _swiftEmptyArrayStorage;
  sub_10005D680(&qword_10009E978, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000712C(&unk_10009FB70, &qword_10007D210);
  sub_100007710(&qword_10009E980, &unk_10009FB70, &qword_10007D210);
  sub_10007A2E0();
  (*(v4 + 104))(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v15);
  v11 = v16;
  (*(v0 + 104))(v3, enum case for DispatchQoS.QoSClass.background(_:), v16);
  sub_10007A1F0();
  (*(v0 + 8))(v3, v11);
  return sub_10007A1E0();
}

uint64_t static StorebagCoordinator.mockAvailability.setter(char a1)
{
  result = swift_beginAccess();
  static StorebagCoordinator.mockAvailability = a1;
  return result;
}

uint64_t sub_10005B228(uint64_t a1, uint64_t a2)
{
  v4 = sub_100079C80();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100079CC0();
  v22 = *(v8 - 8);
  v23 = v8;
  v9 = *(v22 + 64);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000712C(&qword_10009FB58, &qword_10007F9B0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v21 - v15;
  v21[1] = *(a2 + 120);
  (*(v13 + 16))(v21 - v15, a1, v12);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v17, v16, v12);
  *(v18 + ((v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_10005D5D0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000054F0;
  aBlock[3] = &unk_100098BF0;
  v19 = _Block_copy(aBlock);

  sub_100079CB0();
  v25 = _swiftEmptyArrayStorage;
  sub_10005D680(&qword_10009DFE8, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000712C(&qword_10009DFF0, &qword_10007BA68);
  sub_100007710(&qword_10009DFF8, &qword_10009DFF0, &qword_10007BA68);
  sub_10007A2E0();
  sub_10007A1D0();
  _Block_release(v19);
  (*(v24 + 8))(v7, v4);
  (*(v22 + 8))(v11, v23);
}

uint64_t sub_10005B5C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_100079C50();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v20[-v9];
  v11 = sub_100079C70();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (static StorebagCoordinator.mockAvailability == 4)
  {
    v16 = *(a2 + 112);
    sub_100079BE0();
    sub_100079C60();
    (*(v4 + 104))(v8, enum case for NWPath.Status.unsatisfied(_:), v3);
    LOBYTE(v16) = sub_100079C40();
    v17 = *(v4 + 8);
    v17(v8, v3);
    v17(v10, v3);
    if (v16 & 1) != 0 || (sub_100079C30())
    {
      v21 = 0;
      sub_10000712C(&qword_10009FB58, &qword_10007F9B0);
      sub_10007A070();
      return (*(v12 + 8))(v15, v11);
    }

    else
    {
      if (sub_100079C20())
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      v21 = v19;
      sub_10000712C(&qword_10009FB58, &qword_10007F9B0);
      sub_10007A070();
      return (*(v12 + 8))(v15, v11);
    }
  }

  else
  {
    v21 = static StorebagCoordinator.mockAvailability;
    sub_10000712C(&qword_10009FB58, &qword_10007F9B0);
    return sub_10007A070();
  }
}

uint64_t sub_10005B8A0(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return _swift_task_switch(sub_10005B8C0, v1, 0);
}

uint64_t sub_10005B8C0()
{
  v1 = v0[9];
  v2 = *(v0[10] + 128);
  v0[11] = v2;
  v3 = v1[3];
  v4 = v1[4];
  sub_10000751C(v1, v3);
  (*(v4 + 8))(v3, v4);
  v5 = v0[3];
  v0[12] = v0[2];
  v0[13] = v5;

  sub_100019EF4((v0 + 2));
  v6 = (*v2 + 224) & 0xFFFFFFFFFFFFLL | 0x665A000000000000;
  v0[14] = *(*v2 + 224);
  v0[15] = v6;

  return _swift_task_switch(sub_10005B994, v2, 0);
}

uint64_t sub_10005B994()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  LOBYTE(v2) = (*(v0 + 112))(*(v0 + 96), *(v0 + 104));

  if (v2)
  {
    v3 = *(v0 + 8);

    return v3(3);
  }

  else
  {
    v5 = *(v0 + 80);

    return _swift_task_switch(sub_10005BA4C, v5, 0);
  }
}

uint64_t sub_10005BA4C()
{
  v1 = *(v0 + 80);
  v2 = sub_10005D680(&qword_10009FA60, type metadata accessor for StorebagCoordinator);
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *v4 = v0;
  v4[1] = sub_10005BB68;
  v5 = *(v0 + 80);

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 136, v1, v2, 0xD000000000000013, 0x80000001000845F0, sub_10005BCDC, v5, &type metadata for SessionConfiguration.Availability);
}

uint64_t sub_10005BB68()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return _swift_task_switch(sub_10005BC78, v2, 0);
}

uint64_t type metadata accessor for StorebagCoordinator()
{
  result = qword_1000A5D20;
  if (!qword_1000A5D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005BCE4(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  return _swift_task_switch(sub_10005BD08, v2, 0);
}

uint64_t sub_10005BD08()
{
  v1 = v0[24];
  v2 = *(v0[25] + 128);
  v3 = v1[3];
  v4 = v1[4];
  sub_10000751C(v1, v3);
  (*(v4 + 8))(v3, v4);
  v5 = v0[2];
  v6 = v0[3];
  v0[26] = v6;

  sub_100019EF4((v0 + 2));
  v7 = *(*v2 + 232);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[27] = v9;
  *v9 = v0;
  v9[1] = sub_10005BE8C;

  return (v11)(v0 + 14, v5, v6);
}

uint64_t sub_10005BE8C()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v9 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = *(v2 + 200);
    v5 = sub_10005C080;
  }

  else
  {
    v7 = *(v2 + 200);
    v6 = *(v2 + 208);

    v5 = sub_10005BFB0;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10005BFB0()
{
  v1 = *(v0 + 184);
  sub_100047CF0(*(v0 + 192), (v0 + 72));
  *(v0 + 168) = *(v0 + 112);
  sub_1000096C4(v0 + 168, &qword_10009ED88, &unk_10007E7C0);
  *(v0 + 152) = *(v0 + 128);
  sub_10002A4B4(v0 + 152);
  *(v0 + 176) = *(v0 + 144);
  sub_1000096C4(v0 + 176, &qword_10009ED90, qword_10007E200);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  *(v1 + 32) = *(v0 + 104);
  *v1 = v3;
  *(v1 + 16) = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10005C080()
{
  v1 = v0[26];

  v2 = v0[1];
  v3 = v0[28];

  return v2();
}

uint64_t sub_10005C0E4(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return _swift_task_switch(sub_10005C104, v1, 0);
}

uint64_t sub_10005C104()
{
  v1 = v0[18];
  v2 = *(v0[19] + 128);
  v3 = v1[3];
  v4 = v1[4];
  sub_10000751C(v1, v3);
  (*(v4 + 8))(v3, v4);
  v5 = v0[2];
  v6 = v0[3];
  v0[20] = v6;

  sub_100019EF4((v0 + 2));
  v7 = *(*v2 + 232);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v9[1] = sub_10005C288;

  return (v11)(v0 + 9, v5, v6);
}

uint64_t sub_10005C288()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v9 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = *(v2 + 152);
    v5 = sub_10005C46C;
  }

  else
  {
    v7 = *(v2 + 152);
    v6 = *(v2 + 160);

    v5 = sub_10005C3AC;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10005C3AC()
{
  v1 = sub_10004723C(*(v0 + 144));
  *(v0 + 128) = *(v0 + 72);
  sub_1000096C4(v0 + 128, &qword_10009ED88, &unk_10007E7C0);
  *(v0 + 112) = *(v0 + 88);
  sub_10002A4B4(v0 + 112);
  *(v0 + 136) = *(v0 + 104);
  sub_1000096C4(v0 + 136, &qword_10009ED90, qword_10007E200);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10005C46C()
{
  v1 = v0[20];

  v2 = v0[1];
  v3 = v0[22];

  return v2();
}

uint64_t sub_10005C4D0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_10005C4F4, v2, 0);
}

uint64_t sub_10005C4F4()
{
  v1 = *(v0[4] + 128);
  v0[5] = v1;
  v2 = *v1 + 256;
  v0[6] = *v2;
  v0[7] = v2 & 0xFFFFFFFFFFFFLL | 0x7B8C000000000000;
  return _swift_task_switch(sub_10005C53C, v1, 0);
}

uint64_t sub_10005C53C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  (*(v0 + 48))(*(v0 + 16), *(v0 + 24));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10005C5A4(uint64_t a1)
{
  v4 = *(v1 + 48);
  v5 = *(v1 + 52);
  swift_allocObject();
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000030A0;

  return sub_10005C64C(a1);
}

uint64_t sub_10005C64C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1000798B0();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_100079C90();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = sub_10007A1C0();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();
  v12 = sub_10007A1B0();
  v2[14] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v14 = *(*(sub_100079CC0() - 8) + 64) + 15;
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_10005C820, 0, 0);
}

uint64_t sub_10005C820()
{
  v1 = v0[14];
  v22 = v0[15];
  v2 = v0[12];
  v3 = v0[10];
  v23 = v0[13];
  v24 = v0[11];
  v4 = v0[9];
  v25 = v0[8];
  v26 = v0[16];
  v29 = v0[7];
  v30 = v0[5];
  v31 = v0[4];
  v27 = v0[6];
  v28 = v0[3];
  swift_defaultActor_initialize();
  sub_100026E98();
  sub_100079CA0();
  v0[2] = _swiftEmptyArrayStorage;
  sub_10005D680(&qword_10009E978, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000712C(&unk_10009FB70, &qword_10007D210);
  sub_100007710(&qword_10009E980, &unk_10009FB70, &qword_10007D210);
  sub_10007A2E0();
  (*(v2 + 104))(v23, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v24);
  (*(v4 + 104))(v3, enum case for DispatchQoS.QoSClass.background(_:), v25);
  sub_10007A1F0();
  (*(v4 + 8))(v3, v25);
  *(v31 + 120) = sub_10007A1E0();
  type metadata accessor for StorebagCache(0);
  v5 = *(v27 + 16);
  v5(v29, v28, v30);
  v6 = sub_100039E00();
  v7 = sub_100039E0C(v6, 0, 0, v29);
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[3];
  *(v8 + 128) = v7;
  sub_10000712C(&qword_10009FA68, &qword_10007F8F8);
  v11 = sub_100079BD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10007B7C0;
  (*(v12 + 104))(v15 + v14, enum case for NWInterface.InterfaceType.loopback(_:), v11);
  v16 = sub_100079C10();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v8 + 112) = sub_100079BF0();
  v19 = *(v31 + 120);

  v20 = v19;
  sub_100079C00();

  v5(v8 + OBJC_IVAR____TtC21CloudTelemetryService19StorebagCoordinator_rootCacheURL, v10, v9);

  return _swift_task_switch(sub_10005CCBC, v8, 0);
}

uint64_t sub_10005CCBC()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[7];
  (*(v0[6] + 8))(v0[3], v0[5]);

  v6 = v0[1];
  v7 = v0[4];

  return v6(v7);
}

uint64_t StorebagCoordinator.deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  v3 = OBJC_IVAR____TtC21CloudTelemetryService19StorebagCoordinator_rootCacheURL;
  v4 = sub_1000798B0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t StorebagCoordinator.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  v3 = OBJC_IVAR____TtC21CloudTelemetryService19StorebagCoordinator_rootCacheURL;
  v4 = sub_1000798B0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10005CE8C(uint64_t a1)
{
  v4 = *(*v1 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10005CFAC;

  return v8(a1);
}

uint64_t sub_10005CFAC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_10005D0A8(uint64_t a1, uint64_t a2)
{
  *(v3 + 56) = a1;
  v5 = *(*v2 + 136);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v3 + 64) = v7;
  *v7 = v3;
  v7[1] = sub_10005D1D4;

  return v9(v3 + 16, a2);
}

uint64_t sub_10005D1D4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (!v0)
  {
    v5 = *(v2 + 16);
    v6 = *(v2 + 32);
    v7 = *(v2 + 56);
    *(v7 + 32) = *(v2 + 48);
    *v7 = v5;
    *(v7 + 16) = v6;
  }

  v8 = *(v4 + 8);

  return v8();
}

uint64_t sub_10005D2E8(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 152);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100007838;

  return v10(a1, a2);
}

uint64_t sub_10005D410(uint64_t a1)
{
  result = sub_10005D680(&qword_10009FA60, type metadata accessor for StorebagCoordinator);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10005D470()
{
  result = sub_1000798B0();
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

uint64_t sub_10005D528()
{
  v1 = sub_10000712C(&qword_10009FB58, &qword_10007F9B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10005D5D0()
{
  v1 = *(sub_10000712C(&qword_10009FB58, &qword_10007F9B0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10005B5C4(v0 + v2, v3);
}

uint64_t sub_10005D668(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005D680(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005D6C8(char a1, char a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 0xFFFFFFFE | a1 & 1;
}

uint64_t sub_10005D6E8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5 & 1;
  *(a8 + 33) = HIBYTE(a5) & 1;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t sub_10005D708()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  v5 = v0[1];

  v6._countAndFlagsBits = 58;
  v6._object = 0xE100000000000000;
  sub_100079F00(v6);
  v7._countAndFlagsBits = v1;
  v7._object = v2;
  sub_100079F00(v7);
  return v4;
}

uint64_t sub_10005D768()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A5D38);
  sub_1000070F4(v0, qword_1000A5D38);
  return sub_100079B90();
}

uint64_t sub_10005D7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[11] = a6;
  v7[12] = v6;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  v8 = sub_100079C90();
  v7[13] = v8;
  v9 = *(v8 - 8);
  v7[14] = v9;
  v10 = *(v9 + 64) + 15;
  v7[15] = swift_task_alloc();
  v11 = sub_10007A1C0();
  v7[16] = v11;
  v12 = *(v11 - 8);
  v7[17] = v12;
  v13 = *(v12 + 64) + 15;
  v7[18] = swift_task_alloc();
  v14 = sub_10007A1B0();
  v7[19] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v7[20] = swift_task_alloc();
  v16 = *(*(sub_100079CC0() - 8) + 64) + 15;
  v7[21] = swift_task_alloc();
  v7[22] = swift_allocObject();

  return _swift_task_switch(sub_10005D9A0, 0, 0);
}

uint64_t sub_10005D9A0()
{
  v28 = v0;
  v1 = *(v0 + 176);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  swift_defaultActor_initialize();
  v1[14] = 0;
  v1[18] = v7;
  v1[19] = v6;
  v1[20] = v5;
  v1[21] = v4;
  v1[22] = v3;

  *(v0 + 184) = XPCIncomingConnection.auditToken.getter();
  *(v0 + 192) = v8;
  *(v0 + 200) = v9;
  *(v0 + 208) = v10;
  if (swift_stdlib_isStackAllocationSafe())
  {
    sub_10005E668(v0 + 216, (v0 + 184), v0 + 4312, &v26);
  }

  else
  {
    v11 = swift_slowAlloc();
    sub_10005E668(v11, (v0 + 184), v11 + 4096, &v26);
  }

  v12 = v27;
  v13 = *(v0 + 176);
  v21 = *(v0 + 168);
  v14 = *(v0 + 152);
  v15 = *(v0 + 136);
  v22 = *(v0 + 160);
  v23 = *(v0 + 144);
  v16 = *(v0 + 120);
  v24 = *(v0 + 128);
  v17 = *(v0 + 112);
  v25 = *(v0 + 104);
  v13[16] = v26;
  v13[17] = v12;
  sub_100026E98();
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_10007A3B0(34);

  v26 = 0xD000000000000020;
  v27 = 0x80000001000846A0;
  v18 = v13[16];
  v19 = v13[17];

  v30._countAndFlagsBits = v18;
  v30._object = v19;
  sub_100079F00(v30);

  sub_100079CA0();
  *(v0 + 40) = _swiftEmptyArrayStorage;
  sub_1000688EC(&qword_10009E978, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000712C(&unk_10009FB70, &qword_10007D210);
  sub_100026EE4();
  sub_10007A2E0();
  (*(v15 + 104))(v23, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v24);
  (*(v17 + 104))(v16, enum case for DispatchQoS.QoSClass.background(_:), v25);
  sub_10007A1F0();
  (*(v17 + 8))(v16, v25);
  v13[15] = sub_10007A1E0();

  return _swift_task_switch(sub_10005DDA0, v13, 0);
}

uint64_t sub_10005DDA0()
{
  v1 = v0[22];
  v14 = v0[21];
  v15 = v0[20];
  v16 = v0[18];
  v17 = v0[15];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = *(v1 + 120);

  v9 = XPCIncomingConnection.makeConnection(targetQ:delegate:)(v8, v1, &off_100098C68, v2);
  swift_unknownObjectRelease();

  swift_beginAccess();
  v10 = *(v1 + 112);
  *(v1 + 112) = v9;

  v11 = v0[1];
  v12 = v0[22];

  return v11(v12);
}

uint64_t sub_10005DF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[11] = a6;
  v7[12] = v6;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  v7[13] = *v6;
  v8 = sub_100079C90();
  v7[14] = v8;
  v9 = *(v8 - 8);
  v7[15] = v9;
  v10 = *(v9 + 64) + 15;
  v7[16] = swift_task_alloc();
  v11 = sub_10007A1C0();
  v7[17] = v11;
  v12 = *(v11 - 8);
  v7[18] = v12;
  v13 = *(v12 + 64) + 15;
  v7[19] = swift_task_alloc();
  v14 = sub_10007A1B0();
  v7[20] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v7[21] = swift_task_alloc();
  v16 = *(*(sub_100079CC0() - 8) + 64) + 15;
  v7[22] = swift_task_alloc();

  return _swift_task_switch(sub_10005E0F0, 0, 0);
}

uint64_t sub_10005E0F0()
{
  v28 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 48);
  swift_defaultActor_initialize();
  v2[14] = 0;
  v2[18] = v7;
  v2[19] = v6;
  v2[20] = v5;
  v2[21] = v4;
  v2[22] = v3;

  *(v0 + 184) = XPCIncomingConnection.auditToken.getter();
  *(v0 + 192) = v8;
  *(v0 + 200) = v9;
  *(v0 + 208) = v10;
  if (swift_stdlib_isStackAllocationSafe())
  {
    sub_10005E668(v0 + 216, (v0 + 184), v0 + 4312, &v26);
  }

  else
  {
    v11 = swift_slowAlloc();
    sub_10005E668(v11, (v0 + 184), v11 + 4096, &v26);
  }

  v12 = v27;
  v21 = *(v0 + 176);
  v13 = *(v0 + 160);
  v22 = *(v0 + 168);
  v23 = *(v0 + 152);
  v14 = *(v0 + 144);
  v24 = *(v0 + 136);
  v16 = *(v0 + 120);
  v15 = *(v0 + 128);
  v25 = *(v0 + 112);
  v17 = *(v0 + 96);
  v17[16] = v26;
  v17[17] = v12;
  sub_100026E98();
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_10007A3B0(34);

  v26 = 0xD000000000000020;
  v27 = 0x80000001000846A0;
  v18 = v17[16];
  v19 = v17[17];

  v30._countAndFlagsBits = v18;
  v30._object = v19;
  sub_100079F00(v30);

  sub_100079CA0();
  *(v0 + 40) = _swiftEmptyArrayStorage;
  sub_1000688EC(&qword_10009E978, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000712C(&unk_10009FB70, &qword_10007D210);
  sub_100026EE4();
  sub_10007A2E0();
  (*(v14 + 104))(v23, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v24);
  (*(v16 + 104))(v15, enum case for DispatchQoS.QoSClass.background(_:), v25);
  sub_10007A1F0();
  (*(v16 + 8))(v15, v25);
  v17[15] = sub_10007A1E0();

  return _swift_task_switch(sub_10005E4F0, v17, 0);
}

uint64_t sub_10005E4F0()
{
  v14 = v0[22];
  v15 = v0[21];
  v16 = v0[19];
  v17 = v0[16];
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[6];
  v8 = *(v1 + 120);

  v9 = XPCIncomingConnection.makeConnection(targetQ:delegate:)(v8, v1, &off_100098C68, v2);
  swift_unknownObjectRelease();

  swift_beginAccess();
  v10 = *(v1 + 112);
  *(v1 + 112) = v9;

  v11 = v0[1];
  v12 = v0[12];

  return v11(v12);
}

uint64_t sub_10005E668@<X0>(uint64_t buffer@<X0>, audit_token_t *audittoken@<X2>, uint64_t a3@<X1>, uint64_t *a4@<X8>)
{
  *buffer = 0;
  if (!buffer)
  {
    goto LABEL_9;
  }

  if (a3 - buffer > 0xFFFFFFFFLL)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return buffer;
  }

  buffer = proc_pidpath_audittoken(audittoken, buffer, a3 - buffer);
  if (buffer < 1)
  {
    v7 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
  }

  else
  {
    v5 = sub_100079F20();
    v7 = v6;
    v12[0] = 47;
    v12[1] = 0xE100000000000000;
    __chkstk_darwin(v5);
    v11[2] = v12;
    buffer = sub_100068354(sub_10004DE1C, v11, v5, v7);
    if ((v8 & 1) == 0)
    {
      v9 = sub_100079ED0();
      sub_100068584(v9, v5, v7);

      v5 = sub_100079EB0();
      v7 = v10;
    }
  }

  *a4 = v5;
  a4[1] = v7;
  return buffer;
}

void sub_10005E7F8()
{
  v1 = v0;
  v2 = sub_10000712C(&qword_10009E000, &qword_10007BA70);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  swift_unknownObjectRetain();
  v6 = XPCMessage.init(fromXPC:)();
  if (v6)
  {
    v8 = v6;
    v9 = v7;
    v10 = sub_10007A0A0();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = v1;
    *(v11 + 40) = v8;
    *(v11 + 48) = v9;

    sub_100014B7C(0, 0, v5, &unk_10007F9E8, v11);
  }

  else
  {
    if (qword_1000A5D30 != -1)
    {
      swift_once();
    }

    v12 = sub_100079BA0();
    sub_1000070F4(v12, qword_1000A5D38);

    v17 = sub_100079B80();
    v13 = sub_10007A170();

    if (os_log_type_enabled(v17, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_100006B00(*(v1 + 128), *(v1 + 136), &v18);
      _os_log_impl(&_mh_execute_header, v17, v13, "received invalid XPC message from %{public}s", v14, 0xCu);
      sub_1000070A8(v15);
    }

    else
    {
      v16 = v17;
    }
  }
}

uint64_t sub_10005EA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_100007838;

  return sub_10005EB18(a5, a6);
}

uint64_t sub_10005EB18(uint64_t a1, char a2)
{
  *(v3 + 1560) = v2;
  *(v3 + 2212) = a2;
  *(v3 + 1552) = a1;
  v4 = sub_100079A00();
  *(v3 + 1568) = v4;
  v5 = *(v4 - 8);
  *(v3 + 1576) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 1584) = swift_task_alloc();
  v7 = *(type metadata accessor for SessionConfiguration.Backend(0) - 8);
  *(v3 + 1592) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 1600) = swift_task_alloc();
  *(v3 + 1608) = swift_task_alloc();
  *(v3 + 1616) = swift_task_alloc();
  v9 = *(*(sub_10000712C(&qword_10009FC90, &qword_10007C910) - 8) + 64) + 15;
  *(v3 + 1624) = swift_task_alloc();
  *(v3 + 1632) = swift_task_alloc();
  *(v3 + 1640) = swift_task_alloc();
  *(v3 + 1648) = swift_task_alloc();
  v10 = *(*(sub_10000712C(&qword_10009FC98, &qword_10007FBE0) - 8) + 64) + 15;
  *(v3 + 1656) = swift_task_alloc();
  *(v3 + 1664) = swift_task_alloc();
  v11 = type metadata accessor for CachedSession();
  *(v3 + 1672) = v11;
  v12 = *(v11 - 8);
  *(v3 + 1680) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 1688) = swift_task_alloc();
  *(v3 + 1696) = swift_task_alloc();
  *(v3 + 1704) = swift_task_alloc();

  return _swift_task_switch(sub_10005ED64, v2, 0);
}

uint64_t sub_10005ED64()
{
  v1 = *(v0 + 2212);
  if (v1 <= 1)
  {
    if (*(v0 + 2212))
    {
      v28 = *(v0 + 1560);
      type metadata accessor for SubmitEventsActivity();
      v29 = v28[18];
      v30 = v28[19];
      v31 = v28[20];

      v32 = sub_10001B388(v29, v30, v31);
      *(v0 + 2096) = v32;
      v33 = *(*v32 + 120);
      v38 = (v33 + *v33);
      v34 = v33[1];
      v35 = swift_task_alloc();
      *(v0 + 2104) = v35;
      *v35 = v0;
      v35[1] = sub_100062934;
      v9 = v38;

      return v9();
    }

    if (qword_1000A5D30 != -1)
    {
      swift_once();
    }

    v10 = sub_100079BA0();
    *(v0 + 1712) = sub_1000070F4(v10, qword_1000A5D38);
    v11 = sub_100079B80();
    v12 = sub_10007A150();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "SendOneMessage Request Received", v13, 2u);
    }

    v14 = swift_task_alloc();
    *(v0 + 1720) = v14;
    *v14 = v0;
    v14[1] = sub_10005F340;
    v15 = *(v0 + 1664);
  }

  else
  {
    if (v1 == 2)
    {
      type metadata accessor for PostInstallActivity();
      v16 = sub_10000A0C4();
      *(v0 + 2112) = v16;
      v17 = *(*v16 + 88);
      v37 = (v17 + *v17);
      v18 = v17[1];
      v19 = swift_task_alloc();
      *(v0 + 2120) = v19;
      *v19 = v0;
      v19[1] = sub_100062BE0;
      v9 = v37;

      return v9();
    }

    if (v1 == 3)
    {
      v2 = *(v0 + 1560);
      type metadata accessor for CacheCleanupActivity();
      v3 = *(v2 + 144);

      v5 = sub_1000514C8(v4);
      *(v0 + 2128) = v5;
      v6 = *(*v5 + 104);
      v36 = (v6 + *v6);
      v7 = v6[1];
      v8 = swift_task_alloc();
      *(v0 + 2136) = v8;
      *v8 = v0;
      v8[1] = sub_100062E8C;
      v9 = v36;

      return v9();
    }

    if (qword_1000A5D30 != -1)
    {
      swift_once();
    }

    v20 = sub_100079BA0();
    *(v0 + 2144) = sub_1000070F4(v20, qword_1000A5D38);
    v21 = sub_100079B80();
    v22 = sub_10007A150();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "CheckSamplingResult Request Received", v23, 2u);
    }

    v24 = swift_task_alloc();
    *(v0 + 2152) = v24;
    *v24 = v0;
    v24[1] = sub_100063138;
    v15 = *(v0 + 1656);
  }

  v25 = *(v0 + 1560);
  v26 = *(v0 + 1552);

  return sub_10006689C(v15, v26);
}

uint64_t sub_10005F340()
{
  v1 = *(*v0 + 1720);
  v2 = *(*v0 + 1560);
  v4 = *v0;

  return _swift_task_switch(sub_10005F450, v2, 0);
}

uint64_t sub_10005F450()
{
  v1 = *(v0 + 1672);
  v2 = *(v0 + 1664);
  if ((*(*(v0 + 1680) + 48))(v2, 1, v1) == 1)
  {
    sub_1000096C4(v2, &qword_10009FC98, &qword_10007FBE0);
    v3 = *(v0 + 1704);
    v4 = *(v0 + 1696);
    v5 = *(v0 + 1688);
    v6 = *(v0 + 1664);
    v7 = *(v0 + 1656);
    v8 = *(v0 + 1648);
    v9 = *(v0 + 1640);
    v10 = *(v0 + 1632);
    v11 = *(v0 + 1624);
    v12 = *(v0 + 1616);
    v26 = *(v0 + 1608);
    v27 = *(v0 + 1600);
    v29 = *(v0 + 1584);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = *(v0 + 1704);
    v16 = *(v0 + 1560);
    sub_100068CE0(v2, v15, type metadata accessor for CachedSession);
    *(v0 + 1728) = *(v15 + *(v1 + 36));
    v17 = *v15;
    v18 = *(v15 + 16);
    v19 = *(v15 + 32);
    *(v0 + 792) = *(v15 + 48);
    *(v0 + 760) = v18;
    *(v0 + 776) = v19;
    *(v0 + 744) = v17;
    *(v0 + 1736) = *(v15 + 72);
    *(v0 + 1744) = *(v0 + 744);
    *(v0 + 1752) = *(v0 + 752);
    v20 = *(v16 + 152);
    *(v0 + 1760) = v20;
    v21 = *(*v20 + 232);

    v28 = (v21 + *v21);
    v22 = v21[1];
    v23 = swift_task_alloc();
    *(v0 + 1768) = v23;
    *v23 = v0;
    v23[1] = sub_10005F734;
    v24 = *(v0 + 1704);
    v25 = *(v0 + 1672);

    return (v28)(v0 + 856, v24, v25, &off_100095D60);
  }
}

uint64_t sub_10005F734()
{
  v2 = *v1;
  v3 = *(*v1 + 1768);
  v9 = *v1;
  *(*v1 + 1776) = v0;

  if (v0)
  {
    v4 = *(v2 + 1560);
    v5 = sub_100063DC8;
  }

  else
  {
    v6 = *(v2 + 1752);
    v7 = *(v2 + 1560);

    v5 = sub_10005F85C;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10005F85C()
{
  v1 = *(v0 + 1760);
  *(v0 + 1784) = *(v0 + 864);
  *(v0 + 1792) = *(v0 + 856);
  *(v0 + 1464) = *(v0 + 880);
  v2 = *v1 + 248;
  *(v0 + 1800) = *v2;
  *(v0 + 1808) = v2 & 0xFFFFFFFFFFFFLL | 0x7F8D000000000000;

  return _swift_task_switch(sub_10005F904, v1, 0);
}

uint64_t sub_10005F904()
{
  v1 = *(v0 + 1808);
  v2 = *(v0 + 1760);
  v3 = *(v0 + 1560);
  (*(v0 + 1800))(*(v0 + 1744), *(v0 + 1752));

  return _swift_task_switch(sub_10005F980, v3, 0);
}

uint64_t sub_10005F980()
{
  v61 = v0;
  v1 = *(*(v0 + 1784) + 16);

  if (v1)
  {
    v2 = *(**(*(v0 + 1560) + 160) + 136);
    v58 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 1816) = v4;
    *v4 = v0;
    v4[1] = sub_100060160;
    v5 = *(v0 + 1704);
    v6 = *(v0 + 1672);

    return (v58)(v0 + 856, v5, v6, &off_100095D60);
  }

  v8 = 4079420;
  *(v0 + 1840) = 0u;
  v9 = *(v0 + 1728);
  if (*(v9 + 16) && (v10 = *(v0 + 1728), v11 = sub_10000A0FC(0x646F6874656D5FLL, 0xE700000000000000), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = *(v0 + 1648);
    v15 = *(v0 + 1640);
    v16 = *(*(v0 + 1728) + 56);
    v17 = type metadata accessor for ServiceEventValue();
    v18 = *(v17 - 8);
    sub_100068C78(v16 + *(v18 + 72) * v13, v14, type metadata accessor for ServiceEventValue);
    (*(v18 + 56))(v14, 0, 1, v17);
    sub_10000939C(v14, v15, &qword_10009FC90, &qword_10007C910);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v20 = *(v0 + 1640);
    if (EnumCaseMultiPayload == 1)
    {
      *(v0 + 1544) = *v20;
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 2)
    {
      *(v0 + 1536) = *v20;
LABEL_13:
      v24 = sub_10007A5E0();
      v23 = v25;

      goto LABEL_14;
    }

    sub_100068BD0(v20, type metadata accessor for ServiceEventValue);
  }

  else
  {
    v21 = *(v0 + 1648);
    v22 = type metadata accessor for ServiceEventValue();
    (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  }

  v23 = 0xE300000000000000;
  v24 = 4079420;
LABEL_14:
  *(v0 + 1864) = v23;
  *(v0 + 1856) = v24;
  sub_1000096C4(*(v0 + 1648), &qword_10009FC90, &qword_10007C910);
  if (*(v9 + 16) && (v26 = *(v0 + 1728), v27 = sub_10000A0FC(0x7375746174735FLL, 0xE700000000000000), (v28 & 1) != 0))
  {
    v29 = v27;
    v30 = *(v0 + 1632);
    v31 = *(v0 + 1624);
    v32 = *(*(v0 + 1728) + 56);
    v33 = type metadata accessor for ServiceEventValue();
    v34 = *(v33 - 8);
    sub_100068C78(v32 + *(v34 + 72) * v29, v30, type metadata accessor for ServiceEventValue);
    (*(v34 + 56))(v30, 0, 1, v33);
    sub_10000939C(v30, v31, &qword_10009FC90, &qword_10007C910);
    v35 = swift_getEnumCaseMultiPayload();
    v36 = *(v0 + 1624);
    if (v35 == 1)
    {
      *(v0 + 1528) = *v36;
      goto LABEL_22;
    }

    if (v35 == 2)
    {
      *(v0 + 1520) = *v36;
LABEL_22:
      v8 = sub_10007A5E0();
      v39 = v40;

      goto LABEL_23;
    }

    sub_100068BD0(v36, type metadata accessor for ServiceEventValue);
  }

  else
  {
    v37 = *(v0 + 1632);
    v38 = type metadata accessor for ServiceEventValue();
    (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
  }

  v39 = 0xE300000000000000;
LABEL_23:
  *(v0 + 1880) = v39;
  *(v0 + 1872) = v8;
  v41 = *(v0 + 1712);
  sub_1000096C4(*(v0 + 1632), &qword_10009FC90, &qword_10007C910);

  v42 = sub_100079B80();
  v43 = sub_10007A190();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v44 = 136446466;
    v45 = sub_100006B00(v24, v23, &v60);

    *(v44 + 4) = v45;
    *(v44 + 12) = 2082;
    v46 = sub_100006B00(v8, v39, &v60);

    *(v44 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v42, v43, "sending one message %{public}s:%{public}s", v44, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v47 = *(v0 + 1792);
  v48 = *(v0 + 1784);
  v49 = *(v0 + 1728);
  v50 = *(v0 + 1560);

  *(v0 + 1200) = XPCIncomingConnection.init(conn:)(0x4D656E4F646E6553);
  *(v0 + 1208) = v51;
  *(v0 + 1216) = v52;
  *(v0 + 1888) = sub_1000685D0(v47);
  *(v0 + 1896) = v53;
  *(v0 + 1904) = v54;
  v55 = *(**(v50 + 160) + 152);
  v59 = (v55 + *v55);
  v56 = v55[1];
  v57 = swift_task_alloc();
  *(v0 + 1912) = v57;
  *v57 = v0;
  v57[1] = sub_10006096C;

  return v59(v0 + 744);
}

uint64_t sub_100060160(uint64_t a1, uint64_t a2)
{
  v7 = *v3;
  v6 = *v3;
  v8 = *(*v3 + 1816);
  v9 = *v3;

  v10 = *(v6 + 1560);
  if (v2)
  {

    v11 = sub_100064194;
  }

  else
  {
    *(v7 + 1824) = a2;
    *(v7 + 1832) = a1;
    v11 = sub_1000602AC;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_1000602AC()
{
  v55 = v0;
  v1 = 4079420;
  v2 = v0[229];
  v0[231] = v0[228];
  v0[230] = v2;
  v3 = v0[216];
  if (*(v3 + 16) && (v4 = v0[216], v5 = sub_10000A0FC(0x646F6874656D5FLL, 0xE700000000000000), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = v0[206];
    v9 = v0[205];
    v10 = *(v0[216] + 56);
    v11 = type metadata accessor for ServiceEventValue();
    v12 = *(v11 - 8);
    sub_100068C78(v10 + *(v12 + 72) * v7, v8, type metadata accessor for ServiceEventValue);
    (*(v12 + 56))(v8, 0, 1, v11);
    sub_10000939C(v8, v9, &qword_10009FC90, &qword_10007C910);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v14 = v0[205];
    if (EnumCaseMultiPayload == 1)
    {
      v0[193] = *v14;
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v0[192] = *v14;
LABEL_9:
      v18 = sub_10007A5E0();
      v17 = v19;

      goto LABEL_10;
    }

    sub_100068BD0(v14, type metadata accessor for ServiceEventValue);
  }

  else
  {
    v15 = v0[206];
    v16 = type metadata accessor for ServiceEventValue();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  }

  v17 = 0xE300000000000000;
  v18 = 4079420;
LABEL_10:
  v0[233] = v17;
  v0[232] = v18;
  sub_1000096C4(v0[206], &qword_10009FC90, &qword_10007C910);
  if (!*(v3 + 16) || (v20 = v0[216], v21 = sub_10000A0FC(0x7375746174735FLL, 0xE700000000000000), (v22 & 1) == 0))
  {
    v31 = v0[204];
    v32 = type metadata accessor for ServiceEventValue();
    (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
LABEL_16:
    v33 = 0xE300000000000000;
    goto LABEL_19;
  }

  v23 = v21;
  v24 = v0[204];
  v25 = v0[203];
  v26 = *(v0[216] + 56);
  v27 = type metadata accessor for ServiceEventValue();
  v28 = *(v27 - 8);
  sub_100068C78(v26 + *(v28 + 72) * v23, v24, type metadata accessor for ServiceEventValue);
  (*(v28 + 56))(v24, 0, 1, v27);
  sub_10000939C(v24, v25, &qword_10009FC90, &qword_10007C910);
  v29 = swift_getEnumCaseMultiPayload();
  v30 = v0[203];
  if (v29 == 1)
  {
    v0[191] = *v30;
    goto LABEL_18;
  }

  if (v29 != 2)
  {
    sub_100068BD0(v30, type metadata accessor for ServiceEventValue);
    goto LABEL_16;
  }

  v0[190] = *v30;
LABEL_18:
  v1 = sub_10007A5E0();
  v33 = v34;

LABEL_19:
  v0[235] = v33;
  v0[234] = v1;
  v35 = v0[214];
  sub_1000096C4(v0[204], &qword_10009FC90, &qword_10007C910);

  v36 = sub_100079B80();
  v37 = sub_10007A190();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v38 = 136446466;
    v39 = sub_100006B00(v18, v17, &v54);

    *(v38 + 4) = v39;
    *(v38 + 12) = 2082;
    v40 = sub_100006B00(v1, v33, &v54);

    *(v38 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v36, v37, "sending one message %{public}s:%{public}s", v38, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v41 = v0[224];
  v42 = v0[223];
  v43 = v0[216];
  v44 = v0[195];

  v0[150] = XPCIncomingConnection.init(conn:)(0x4D656E4F646E6553);
  v0[151] = v45;
  v0[152] = v46;
  v0[236] = sub_1000685D0(v41);
  v0[237] = v47;
  v0[238] = v48;
  v49 = *(**(v44 + 160) + 152);
  v53 = (v49 + *v49);
  v50 = v49[1];
  v51 = swift_task_alloc();
  v0[239] = v51;
  *v51 = v0;
  v51[1] = sub_10006096C;

  return v53(v0 + 93);
}

uint64_t sub_10006096C(uint64_t a1, uint64_t a2)
{
  v7 = *v3;
  v6 = *v3;
  v8 = *(*v3 + 1912);
  v9 = *v3;

  v10 = *(v6 + 1560);
  if (v2)
  {

    v11 = sub_10006484C;
  }

  else
  {
    *(v7 + 1920) = a2;
    *(v7 + 1928) = a1;
    v11 = sub_100060AB8;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_100060AB8()
{
  v1 = v0[238];
  v2 = v0[237];
  sub_100038C34(v0[236]);
  sub_100037D28(v0 + 117);
  sub_100009B00((v0 + 93), (v0 + 72));
  v3 = swift_task_alloc();
  v0[242] = v3;
  *v3 = v0;
  v3[1] = sub_100060BB8;
  v4 = v0[241];
  v5 = v0[240];
  v6 = v0[237];
  v7 = v0[236];
  v10 = v0[238];

  return sub_100037DB4((v0 + 44), (v0 + 93), v4, v5, 0x4D656E4F646E6553, 0xEE00656761737365, v7, v6);
}

uint64_t sub_100060BB8()
{
  v2 = *v1;
  v3 = *(*v1 + 1936);
  v4 = *v1;
  *(*v1 + 1944) = v0;

  if (v0)
  {
    v5 = *(v2 + 1560);

    v6 = sub_10006484C;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 1560);
    v6 = sub_100060CF0;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100060CF0()
{
  v78 = v0;
  v1 = *(v0 + 1944);
  sub_10000939C(v0 + 352, v0 + 16, &unk_10009FCA0, qword_10007FBF0);
  if (*(v0 + 40))
  {
    v2 = *(v0 + 160);
    *(v0 + 312) = *(v0 + 144);
    *(v0 + 328) = v2;
    *(v0 + 344) = *(v0 + 176);
    v3 = *(v0 + 96);
    *(v0 + 248) = *(v0 + 80);
    *(v0 + 264) = v3;
    v4 = *(v0 + 128);
    *(v0 + 280) = *(v0 + 112);
    *(v0 + 296) = v4;
    v5 = *(v0 + 32);
    *(v0 + 184) = *(v0 + 16);
    *(v0 + 200) = v5;
    v6 = *(v0 + 64);
    *(v0 + 216) = *(v0 + 48);
    *(v0 + 232) = v6;
    *(v0 + 1000) = &type metadata for AllEventFieldProvider;
    *(v0 + 1008) = &off_1000974E8;
    v7 = swift_allocObject();
    *(v0 + 976) = v7;
    sub_100068ACC(v0 + 184, v7 + 16);
    sub_10002D410((v0 + 976));
    sub_100068B28(v0 + 184);
    sub_1000070A8((v0 + 976));
  }

  else
  {
    sub_1000096C4(v0 + 16, &unk_10009FCA0, qword_10007FBF0);
  }

  *(v0 + 1952) = *(v0 + 1200);
  *(v0 + 1960) = *(v0 + 1208);
  v8 = sub_10003F2A0();
  swift_beginAccess();
  if (*v8 == 1)
  {
    v9 = *(v0 + 1792);
    v10 = *(v9 + 16);
    *(v0 + 1976) = v10;
    if (v10)
    {
      v11 = *(v0 + 1592);
      *(v0 + 1984) = *(*(v0 + 1560) + 168);
      v12 = *(v11 + 80);
      *(v0 + 2208) = v12;
      *(v0 + 1992) = *(v11 + 72);
      *(v0 + 2008) = 0;
      *(v0 + 2000) = v1;
      v13 = *(v0 + 1880);
      v14 = *(v0 + 1864);
      v15 = *(v0 + 1712);
      v16 = *(v0 + 1616);
      v17 = *(v0 + 1608);
      sub_100068C78(v9 + ((v12 + 32) & ~v12), v16, type metadata accessor for SessionConfiguration.Backend);
      sub_100068C78(v16, v17, type metadata accessor for SessionConfiguration.Backend);

      v18 = sub_100079B80();
      v19 = sub_10007A190();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = *(v0 + 1880);
        v21 = *(v0 + 1872);
        v22 = *(v0 + 1864);
        v23 = *(v0 + 1856);
        v24 = *(v0 + 1608);
        v25 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *v25 = 136446722;
        *(v25 + 4) = sub_100006B00(v23, v22, &v77);
        *(v25 + 12) = 2082;
        *(v25 + 14) = sub_100006B00(v21, v20, &v77);
        *(v25 + 22) = 2082;
        v26 = sub_100068D4C();
        v28 = v27;
        sub_100068BD0(v24, type metadata accessor for SessionConfiguration.Backend);
        v29 = sub_100006B00(v26, v28, &v77);

        *(v25 + 24) = v29;
        _os_log_impl(&_mh_execute_header, v18, v19, "writing sendOneMessage to transparency log %{public}s:%{public}s for backend %{public}s", v25, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        v68 = *(v0 + 1608);

        sub_100068BD0(v68, type metadata accessor for SessionConfiguration.Backend);
      }

      v69 = *(v0 + 1984);
      v70 = *(v0 + 1616);
      *(v0 + 2016) = sub_100068D4C();
      *(v0 + 2024) = v71;
      v72 = sub_100061544;
      v73 = v69;
      goto LABEL_23;
    }
  }

  if (*(v0 + 1840))
  {
    v30 = *(v0 + 1880);
    v31 = *(v0 + 1864);
    v32 = *(v0 + 1712);

    swift_unknownObjectRetain();
    v33 = sub_100079B80();
    v34 = sub_10007A190();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = *(v0 + 1880);
      v36 = *(v0 + 1872);
      v37 = *(v0 + 1864);
      v38 = *(v0 + 1856);
      v39 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v39 = 136446466;
      *(v39 + 4) = sub_100006B00(v38, v37, &v77);
      *(v39 + 12) = 2082;
      *(v39 + 14) = sub_100006B00(v36, v35, &v77);
      _os_log_impl(&_mh_execute_header, v33, v34, "processing sendOneMessage, immediate %{public}s:%{public}s", v39, 0x16u);
      swift_arrayDestroy();
    }

    v40 = *(v0 + 1968);
    v41 = *(v0 + 1960);
    v42 = *(v0 + 1952);
    v76 = *(v0 + 1848);
    ObjectType = swift_getObjectType();
    sub_10000712C(&qword_10009E4A8, &qword_10007C2D0);
    v44 = swift_allocObject();
    *(v0 + 2040) = v44;
    *(v44 + 16) = xmmword_10007B7C0;
    *(v44 + 32) = v42;
    *(v44 + 40) = v41;
    *(v44 + 48) = v40;
    v45 = *(v76 + 8);

    v75 = (v45 + *v45);
    v46 = v45[1];
    v47 = swift_task_alloc();
    *(v0 + 2048) = v47;
    *v47 = v0;
    v47[1] = sub_100061D54;
    v48 = *(v0 + 1848);

    return v75(v44, ObjectType, v48);
  }

  else
  {
    if (!*(*(v0 + 1792) + 16))
    {
      v73 = *(v0 + 1760);
      v74 = *v73 + 256;
      *(v0 + 2080) = *v74;
      *(v0 + 2088) = v74 & 0xFFFFFFFFFFFFLL | 0x1AEB000000000000;
      v72 = sub_100062560;
LABEL_23:

      return _swift_task_switch(v72, v73, 0);
    }

    v50 = *(v0 + 1880);
    v51 = *(v0 + 1864);
    v52 = *(v0 + 1712);

    v53 = sub_100079B80();
    v54 = sub_10007A190();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = *(v0 + 1880);
      v56 = *(v0 + 1872);
      v57 = *(v0 + 1864);
      v58 = *(v0 + 1856);
      v59 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v59 = 136446466;
      *(v59 + 4) = sub_100006B00(v58, v57, &v77);
      *(v59 + 12) = 2082;
      *(v59 + 14) = sub_100006B00(v56, v55, &v77);
      _os_log_impl(&_mh_execute_header, v53, v54, "caching sendOneMessage %{public}s:%{public}s", v59, 0x16u);
      swift_arrayDestroy();
    }

    v60 = *(v0 + 1584);
    v61 = *(*(v0 + 1560) + 144);
    sub_1000799C0();
    v62 = swift_task_alloc();
    *(v0 + 2064) = v62;
    *v62 = v0;
    v62[1] = sub_100062220;
    v63 = *(v0 + 1968);
    v64 = *(v0 + 1960);
    v65 = *(v0 + 1952);
    v66 = *(v0 + 1736);
    v67 = *(v0 + 1584);

    return sub_100020D38(v0 + 744, v67, v66, v65, v64, v63);
  }
}

uint64_t sub_100061544()
{
  v1 = *(v0 + 2000);
  v2 = *(v0 + 1984);
  sub_1000059F4(*(v0 + 2016), *(v0 + 2024), *(v0 + 1952), *(v0 + 1960), *(v0 + 1968));
  *(v0 + 2032) = v1;
  if (v1)
  {
    v3 = *(v0 + 1560);
    v4 = sub_1000650B8;
  }

  else
  {
    v5 = *(v0 + 2024);
    v6 = *(v0 + 1560);

    v4 = sub_1000615F8;
    v3 = v6;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000615F8()
{
  v68 = v0;
  sub_100068BD0(*(v0 + 1616), type metadata accessor for SessionConfiguration.Backend);
  v1 = *(v0 + 2008) + 1;
  if (v1 == *(v0 + 1976))
  {
    if (*(v0 + 1840))
    {
      v2 = *(v0 + 1880);
      v3 = *(v0 + 1864);
      v4 = *(v0 + 1712);

      swift_unknownObjectRetain();
      v5 = sub_100079B80();
      v6 = sub_10007A190();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = *(v0 + 1880);
        v8 = *(v0 + 1872);
        v9 = *(v0 + 1864);
        v10 = *(v0 + 1856);
        v11 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        *v11 = 136446466;
        *(v11 + 4) = sub_100006B00(v10, v9, &v67);
        *(v11 + 12) = 2082;
        *(v11 + 14) = sub_100006B00(v8, v7, &v67);
        _os_log_impl(&_mh_execute_header, v5, v6, "processing sendOneMessage, immediate %{public}s:%{public}s", v11, 0x16u);
        swift_arrayDestroy();
      }

      v12 = *(v0 + 1968);
      v13 = *(v0 + 1960);
      v14 = *(v0 + 1952);
      v66 = *(v0 + 1848);
      ObjectType = swift_getObjectType();
      sub_10000712C(&qword_10009E4A8, &qword_10007C2D0);
      v16 = swift_allocObject();
      *(v0 + 2040) = v16;
      *(v16 + 16) = xmmword_10007B7C0;
      *(v16 + 32) = v14;
      *(v16 + 40) = v13;
      *(v16 + 48) = v12;
      v17 = *(v66 + 8);

      v65 = (v17 + *v17);
      v18 = v17[1];
      v19 = swift_task_alloc();
      *(v0 + 2048) = v19;
      *v19 = v0;
      v19[1] = sub_100061D54;
      v20 = *(v0 + 1848);

      return v65(v16, ObjectType, v20);
    }

    if (*(*(v0 + 1792) + 16))
    {
      v46 = *(v0 + 1880);
      v47 = *(v0 + 1864);
      v48 = *(v0 + 1712);

      v49 = sub_100079B80();
      v50 = sub_10007A190();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = *(v0 + 1880);
        v52 = *(v0 + 1872);
        v53 = *(v0 + 1864);
        v54 = *(v0 + 1856);
        v55 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        *v55 = 136446466;
        *(v55 + 4) = sub_100006B00(v54, v53, &v67);
        *(v55 + 12) = 2082;
        *(v55 + 14) = sub_100006B00(v52, v51, &v67);
        _os_log_impl(&_mh_execute_header, v49, v50, "caching sendOneMessage %{public}s:%{public}s", v55, 0x16u);
        swift_arrayDestroy();
      }

      v56 = *(v0 + 1584);
      v57 = *(*(v0 + 1560) + 144);
      sub_1000799C0();
      v58 = swift_task_alloc();
      *(v0 + 2064) = v58;
      *v58 = v0;
      v58[1] = sub_100062220;
      v59 = *(v0 + 1968);
      v60 = *(v0 + 1960);
      v61 = *(v0 + 1952);
      v62 = *(v0 + 1736);
      v63 = *(v0 + 1584);

      return sub_100020D38(v0 + 744, v63, v62, v61, v60, v59);
    }

    v45 = *(v0 + 1760);
    v64 = *v45 + 256;
    *(v0 + 2080) = *v64;
    *(v0 + 2088) = v64 & 0xFFFFFFFFFFFFLL | 0x1AEB000000000000;
    v44 = sub_100062560;
  }

  else
  {
    v22 = *(v0 + 2032);
    *(v0 + 2008) = v1;
    *(v0 + 2000) = v22;
    v23 = *(v0 + 1880);
    v24 = *(v0 + 1864);
    v25 = *(v0 + 1712);
    v26 = *(v0 + 1616);
    v27 = *(v0 + 1608);
    sub_100068C78(*(v0 + 1792) + ((*(v0 + 2208) + 32) & ~*(v0 + 2208)) + *(v0 + 1992) * v1, v26, type metadata accessor for SessionConfiguration.Backend);
    sub_100068C78(v26, v27, type metadata accessor for SessionConfiguration.Backend);

    v28 = sub_100079B80();
    v29 = sub_10007A190();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = *(v0 + 1880);
      v31 = *(v0 + 1872);
      v32 = *(v0 + 1864);
      v33 = *(v0 + 1856);
      v34 = *(v0 + 1608);
      v35 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v35 = 136446722;
      *(v35 + 4) = sub_100006B00(v33, v32, &v67);
      *(v35 + 12) = 2082;
      *(v35 + 14) = sub_100006B00(v31, v30, &v67);
      *(v35 + 22) = 2082;
      v36 = sub_100068D4C();
      v38 = v37;
      sub_100068BD0(v34, type metadata accessor for SessionConfiguration.Backend);
      v39 = sub_100006B00(v36, v38, &v67);

      *(v35 + 24) = v39;
      _os_log_impl(&_mh_execute_header, v28, v29, "writing sendOneMessage to transparency log %{public}s:%{public}s for backend %{public}s", v35, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v40 = *(v0 + 1608);

      sub_100068BD0(v40, type metadata accessor for SessionConfiguration.Backend);
    }

    v41 = *(v0 + 1984);
    v42 = *(v0 + 1616);
    *(v0 + 2016) = sub_100068D4C();
    *(v0 + 2024) = v43;
    v44 = sub_100061544;
    v45 = v41;
  }

  return _swift_task_switch(v44, v45, 0);
}

uint64_t sub_100061D54()
{
  v2 = *v1;
  v3 = *(*v1 + 2048);
  v9 = *v1;
  *(*v1 + 2056) = v0;

  if (v0)
  {
    v4 = *(v2 + 1560);
    v5 = sub_100065A50;
  }

  else
  {
    v6 = *(v2 + 2040);
    v7 = *(v2 + 1560);

    v5 = sub_100061E7C;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100061E7C()
{
  v35 = v0;
  v1 = *(v0 + 235);
  v2 = *(v0 + 233);
  v3 = *(v0 + 214);

  v4 = sub_100079B80();
  v5 = sub_10007A190();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 235);
    v7 = *(v0 + 234);
    v8 = *(v0 + 233);
    v9 = *(v0 + 232);
    v10 = *(v0 + 230);
    v11 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v11 = 136446466;
    *(v11 + 4) = sub_100006B00(v9, v8, &v34);
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_100006B00(v7, v6, &v34);
    _os_log_impl(&_mh_execute_header, v4, v5, "processed sendOneMessage, immediate %{public}s:%{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v12 = *(v0 + 230);
  }

  swift_unknownObjectRelease();
  if (*(*(v0 + 224) + 16))
  {
    v13 = *(v0 + 235);
    v14 = *(v0 + 233);
    v15 = *(v0 + 214);

    v16 = sub_100079B80();
    v17 = sub_10007A190();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 235);
      v19 = *(v0 + 234);
      v20 = *(v0 + 233);
      v21 = *(v0 + 232);
      v22 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v22 = 136446466;
      *(v22 + 4) = sub_100006B00(v21, v20, &v34);
      *(v22 + 12) = 2082;
      *(v22 + 14) = sub_100006B00(v19, v18, &v34);
      _os_log_impl(&_mh_execute_header, v16, v17, "caching sendOneMessage %{public}s:%{public}s", v22, 0x16u);
      swift_arrayDestroy();
    }

    v23 = *(v0 + 198);
    v24 = *(*(v0 + 195) + 144);
    sub_1000799C0();
    v25 = swift_task_alloc();
    *(v0 + 258) = v25;
    *v25 = v0;
    v25[1] = sub_100062220;
    v26 = *(v0 + 246);
    v27 = *(v0 + 245);
    v28 = *(v0 + 244);
    v29 = v0[217];
    v30 = *(v0 + 198);

    return sub_100020D38((v0 + 93), v30, v29, v28, v27, v26);
  }

  else
  {
    v32 = *(v0 + 220);
    v33 = *v32 + 256;
    v0[260] = *v33;
    *(v0 + 261) = v33 & 0xFFFFFFFFFFFFLL | 0x1AEB000000000000;

    return _swift_task_switch(sub_100062560, v32, 0);
  }
}

uint64_t sub_100062220()
{
  v2 = *v1;
  v3 = *(*v1 + 2064);
  v4 = *v1;
  *(*v1 + 2072) = v0;

  v5 = v2[198];
  v6 = v2[197];
  v7 = v2[196];
  v8 = v2[195];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = sub_100065DF8;
  }

  else
  {
    v9 = sub_10006239C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10006239C()
{
  v15 = v0;
  v1 = v0[235];
  v2 = v0[233];
  v3 = v0[214];

  v4 = sub_100079B80();
  v5 = sub_10007A190();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[235];
    v7 = v0[234];
    v8 = v0[233];
    v9 = v0[232];
    v10 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v10 = 136446466;
    *(v10 + 4) = sub_100006B00(v9, v8, &v14);
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_100006B00(v7, v6, &v14);
    _os_log_impl(&_mh_execute_header, v4, v5, "cached sendOneMessage %{public}s:%{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v11 = v0[220];
  v12 = *v11 + 256;
  v0[260] = *v12;
  v0[261] = v12 & 0xFFFFFFFFFFFFLL | 0x1AEB000000000000;

  return _swift_task_switch(sub_100062560, v11, 0);
}

uint64_t sub_100062560()
{
  v1 = *(v0 + 2088);
  v2 = *(v0 + 1760);
  v3 = *(v0 + 1560);
  (*(v0 + 2080))(*(v0 + 1744), *(v0 + 1752), 1);

  return _swift_task_switch(sub_1000625E0, v3, 0);
}

uint64_t sub_1000625E0()
{
  reply = xpc_dictionary_create_reply(*(v0 + 1552));
  if (reply)
  {
    v2 = reply;
    v3 = *(v0 + 1560);
    result = swift_beginAccess();
    v5 = *(v3 + 112);
    if (v5)
    {
      message = v2;
      result = swift_beginAccess();
      v6 = *(v5 + 16);
      if (v6)
      {
        v7 = *(v0 + 1968);
        v8 = *(v0 + 1960);
        v9 = *(v0 + 1904);
        v10 = *(v0 + 1896);
        v11 = *(v0 + 1888);
        v12 = *(v0 + 1880);
        v13 = *(v0 + 1864);
        v14 = *(v0 + 1792);
        v40 = *(v0 + 1784);
        v42 = *(v0 + 1712);
        swift_unknownObjectRetain();
        sub_100068A04(v11);

        sub_10002A4B4(v0 + 1464);
        xpc_connection_send_message(v6, message);
        swift_unknownObjectRelease();
        v15 = sub_100079B80();
        v16 = sub_10007A150();
        v17 = os_log_type_enabled(v15, v16);
        v18 = *(v0 + 1840);
        if (v17)
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, v15, v16, "SendOneMessage Reply Sent", v19, 2u);
        }

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        sub_1000096C4(v0 + 352, &unk_10009FCA0, qword_10007FBF0);
        goto LABEL_8;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v20 = *(v0 + 1968);
  v21 = *(v0 + 1960);
  v22 = *(v0 + 1904);
  v23 = *(v0 + 1896);
  v24 = *(v0 + 1888);
  v25 = *(v0 + 1880);
  v26 = *(v0 + 1864);
  messagea = *(v0 + 1840);
  v27 = *(v0 + 1792);
  v28 = *(v0 + 1784);
  sub_1000096C4(v0 + 352, &unk_10009FCA0, qword_10007FBF0);
  sub_100068A04(v24);

  swift_unknownObjectRelease();
  sub_10002A4B4(v0 + 1464);
LABEL_8:
  sub_100068BD0(*(v0 + 1704), type metadata accessor for CachedSession);
  v29 = *(v0 + 1704);
  v30 = *(v0 + 1696);
  v31 = *(v0 + 1688);
  v32 = *(v0 + 1664);
  v33 = *(v0 + 1656);
  v34 = *(v0 + 1648);
  v35 = *(v0 + 1640);
  v36 = *(v0 + 1632);
  v37 = *(v0 + 1624);
  v38 = *(v0 + 1616);
  v41 = *(v0 + 1608);
  v43 = *(v0 + 1600);
  messageb = *(v0 + 1584);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_100062934()
{
  v1 = *v0;
  v2 = *(*v0 + 2104);
  v3 = *(*v0 + 2096);
  v19 = *v0;

  v4 = v1[213];
  v5 = v1[212];
  v6 = v1[211];
  v7 = v1[208];
  v8 = v1[207];
  v9 = v1[206];
  v10 = v1[205];
  v11 = v1[204];
  v15 = v1[203];
  v16 = v1[202];
  v17 = v1[201];
  v18 = v1[200];
  v12 = v1[198];

  v13 = *(v19 + 8);

  return v13();
}

uint64_t sub_100062BE0()
{
  v1 = *v0;
  v2 = *(*v0 + 2120);
  v3 = *(*v0 + 2112);
  v19 = *v0;

  v4 = v1[213];
  v5 = v1[212];
  v6 = v1[211];
  v7 = v1[208];
  v8 = v1[207];
  v9 = v1[206];
  v10 = v1[205];
  v11 = v1[204];
  v15 = v1[203];
  v16 = v1[202];
  v17 = v1[201];
  v18 = v1[200];
  v12 = v1[198];

  v13 = *(v19 + 8);

  return v13();
}

uint64_t sub_100062E8C()
{
  v1 = *v0;
  v2 = *(*v0 + 2136);
  v3 = *(*v0 + 2128);
  v19 = *v0;

  v4 = v1[213];
  v5 = v1[212];
  v6 = v1[211];
  v7 = v1[208];
  v8 = v1[207];
  v9 = v1[206];
  v10 = v1[205];
  v11 = v1[204];
  v15 = v1[203];
  v16 = v1[202];
  v17 = v1[201];
  v18 = v1[200];
  v12 = v1[198];

  v13 = *(v19 + 8);

  return v13();
}

uint64_t sub_100063138()
{
  v1 = *(*v0 + 2152);
  v2 = *(*v0 + 1560);
  v4 = *v0;

  return _swift_task_switch(sub_100063248, v2, 0);
}

uint64_t sub_100063248()
{
  v1 = v0[209];
  v2 = v0[207];
  if ((*(v0[210] + 48))(v2, 1, v1) == 1)
  {
    sub_1000096C4(v2, &qword_10009FC98, &qword_10007FBE0);
    v3 = v0[213];
    v4 = v0[212];
    v5 = v0[211];
    v6 = v0[208];
    v7 = v0[207];
    v8 = v0[206];
    v9 = v0[205];
    v10 = v0[204];
    v11 = v0[203];
    v12 = v0[202];
    v23 = v0[201];
    v24 = v0[200];
    v26 = v0[198];

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[212];
    v16 = v0[195];
    sub_100068CE0(v2, v15, type metadata accessor for CachedSession);
    v17 = *(v16 + 152);
    v0[270] = v17;
    v18 = *(v17 + 112);
    v0[271] = v18;
    v0[115] = v1;
    v0[116] = &off_100095D60;
    v19 = sub_100019E90(v0 + 112);
    sub_100068C78(v15, v19, type metadata accessor for CachedSession);
    v20 = *(*v18 + 128);

    v25 = (v20 + *v20);
    v21 = v20[1];
    v22 = swift_task_alloc();
    v0[272] = v22;
    *v22 = v0;
    v22[1] = sub_100063520;

    return v25(v0 + 112);
  }
}

uint64_t sub_100063520(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 2176);
  v4 = *(*v1 + 2168);
  v5 = *(*v1 + 1560);
  v7 = *v1;
  *(v2 + 2213) = a1;

  sub_1000070A8((v2 + 896));

  return _swift_task_switch(sub_100063664, v5, 0);
}

_xpc_connection_s *sub_100063664()
{
  if (sub_100067A24(*(v0 + 2213), &off_100098C18))
  {
    v1 = *(v0 + 1696);
    v2 = *(v0 + 1672);
    v3 = *(*(v0 + 2160) + 112);
    *(v0 + 2184) = v3;
    *(v0 + 1040) = v2;
    *(v0 + 1048) = &off_100095D60;
    v4 = sub_100019E90((v0 + 1016));
    sub_100068C78(v1, v4, type metadata accessor for CachedSession);
    v5 = *(*v3 + 144);

    v36 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 2192) = v7;
    *v7 = v0;
    v7[1] = sub_100063A2C;

    return v36(v0 + 1016);
  }

  reply = xpc_dictionary_create_reply(*(v0 + 1552));
  if (reply)
  {
    v10 = reply;
    v11 = *(v0 + 1560);
    v12 = MessageKeys.samplingOutcome.unsafeMutableAddressor();
    v13 = *v12;
    v14 = v12[1];

    v15 = ServiceSamplingOutcome.rawValue.getter(4);
    v16 = sub_100079EA0();

    xpc_dictionary_set_int64(v10, (v16 + 32), v15);

    result = swift_beginAccess();
    v17 = *(v11 + 112);
    if (v17)
    {
      swift_beginAccess();
      result = *(v17 + 16);
      if (result)
      {
        v18 = *(v0 + 2144);
        xpc_connection_send_message(result, v10);
        v19 = sub_100079B80();
        v20 = sub_10007A150();
        v21 = os_log_type_enabled(v19, v20);
        v22 = *(v0 + 1696);
        if (v21)
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, v19, v20, "CheckSamplingResult Reply Sent", v23, 2u);
        }

        swift_unknownObjectRelease();

        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v22 = *(v0 + 1696);
LABEL_12:
  sub_100068BD0(v22, type metadata accessor for CachedSession);
  v24 = *(v0 + 1704);
  v25 = *(v0 + 1696);
  v26 = *(v0 + 1688);
  v27 = *(v0 + 1664);
  v28 = *(v0 + 1656);
  v29 = *(v0 + 1648);
  v30 = *(v0 + 1640);
  v31 = *(v0 + 1632);
  v32 = *(v0 + 1624);
  v33 = *(v0 + 1616);
  v35 = *(v0 + 1608);
  v37 = *(v0 + 1600);
  v38 = *(v0 + 1584);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_100063A2C(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2192);
  v9 = *v2;
  *(v3 + 2214) = a1;
  *(v3 + 2200) = v1;

  v5 = *(v3 + 2184);
  if (v1)
  {
    v6 = *(v3 + 1560);

    v7 = sub_100065FAC;
  }

  else
  {
    v6 = *(v3 + 1560);

    sub_1000070A8((v3 + 1016));
    v7 = sub_100063B64;
  }

  return _swift_task_switch(v7, v6, 0);
}

_xpc_connection_s *sub_100063B64()
{
  reply = xpc_dictionary_create_reply(*(v0 + 1552));
  if (reply)
  {
    v2 = reply;
    v3 = *(v0 + 1560);
    v4 = *(v0 + 2214);
    v5 = MessageKeys.samplingOutcome.unsafeMutableAddressor();
    v6 = *v5;
    v7 = v5[1];

    v8 = ServiceSamplingOutcome.rawValue.getter(v4);
    v9 = sub_100079EA0();

    xpc_dictionary_set_int64(v2, (v9 + 32), v8);

    result = swift_beginAccess();
    v11 = *(v3 + 112);
    if (v11)
    {
      swift_beginAccess();
      result = *(v11 + 16);
      if (result)
      {
        v12 = *(v0 + 2144);
        xpc_connection_send_message(result, v2);
        v13 = sub_100079B80();
        v14 = sub_10007A150();
        v15 = os_log_type_enabled(v13, v14);
        v16 = *(v0 + 1696);
        if (v15)
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v13, v14, "CheckSamplingResult Reply Sent", v17, 2u);
        }

        swift_unknownObjectRelease();

        goto LABEL_8;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v16 = *(v0 + 1696);
LABEL_8:
  sub_100068BD0(v16, type metadata accessor for CachedSession);
  v18 = *(v0 + 1704);
  v19 = *(v0 + 1696);
  v20 = *(v0 + 1688);
  v21 = *(v0 + 1664);
  v22 = *(v0 + 1656);
  v23 = *(v0 + 1648);
  v24 = *(v0 + 1640);
  v25 = *(v0 + 1632);
  v26 = *(v0 + 1624);
  v27 = *(v0 + 1616);
  v29 = *(v0 + 1608);
  v30 = *(v0 + 1600);
  v31 = *(v0 + 1584);

  v28 = *(v0 + 8);

  return v28();
}

_xpc_connection_s *sub_100063DC8()
{
  v48 = v0;
  v1 = *(v0 + 1776);
  v2 = *(v0 + 1712);
  sub_100009B00(v0 + 744, v0 + 520);
  swift_errorRetain();
  v3 = sub_100079B80();
  v4 = sub_10007A170();
  sub_100019EF4(v0 + 744);

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1776);
    v6 = *(v0 + 1752);
    v7 = *(v0 + 1744);
    v8 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = v7;
    *v8 = 136446466;
    v9 = *(v0 + 760);
    v10 = *(v0 + 768);
    v47 = v6;
    sub_100009B00(v0 + 744, v0 + 800);
    v50._countAndFlagsBits = 58;
    v50._object = 0xE100000000000000;
    sub_100079F00(v50);
    v51._countAndFlagsBits = v9;
    v51._object = v10;
    sub_100079F00(v51);
    sub_100019EF4(v0 + 744);
    v11 = sub_100006B00(v46, v6, &v45);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v12 = *(v0 + 1056);
    v13 = *(v0 + 1064);
    v14 = *(v0 + 1072);
    v15 = sub_10007A6D0();
    v17 = sub_100006B00(v15, v16, &v45);

    *(v8 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v3, v4, "unable to find config for identity %{public}s with error %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v18 = *(v0 + 1752);
  }

  reply = xpc_dictionary_create_reply(*(v0 + 1552));
  if (reply)
  {
    v20 = reply;
    v21 = *(v0 + 1560);
    xpc_dictionary_set_string(reply, "error", "missing required sendOneMessage event fields");
    result = swift_beginAccess();
    v23 = *(v21 + 112);
    if (v23)
    {
      swift_beginAccess();
      result = *(v23 + 16);
      if (result)
      {
        v24 = *(v0 + 1712);
        xpc_connection_send_message(result, v20);
        v25 = sub_100079B80();
        v26 = sub_10007A150();
        v27 = os_log_type_enabled(v25, v26);
        v28 = *(v0 + 1776);
        if (v27)
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v25, v26, "SendOneMessage Error Reply Sent", v29, 2u);
        }

        swift_unknownObjectRelease();

        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v30 = *(v0 + 1776);

LABEL_11:
  sub_100068BD0(*(v0 + 1704), type metadata accessor for CachedSession);
  v31 = *(v0 + 1704);
  v32 = *(v0 + 1696);
  v33 = *(v0 + 1688);
  v34 = *(v0 + 1664);
  v35 = *(v0 + 1656);
  v36 = *(v0 + 1648);
  v37 = *(v0 + 1640);
  v38 = *(v0 + 1632);
  v39 = *(v0 + 1624);
  v40 = *(v0 + 1616);
  v42 = *(v0 + 1608);
  v43 = *(v0 + 1600);
  v44 = *(v0 + 1584);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_100064194()
{
  v54 = v0;
  v1 = 4079420;
  *(v0 + 1840) = 0u;
  v2 = *(v0 + 1728);
  if (*(v2 + 16) && (v3 = *(v0 + 1728), v4 = sub_10000A0FC(0x646F6874656D5FLL, 0xE700000000000000), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v0 + 1648);
    v8 = *(v0 + 1640);
    v9 = *(*(v0 + 1728) + 56);
    v10 = type metadata accessor for ServiceEventValue();
    v11 = *(v10 - 8);
    sub_100068C78(v9 + *(v11 + 72) * v6, v7, type metadata accessor for ServiceEventValue);
    (*(v11 + 56))(v7, 0, 1, v10);
    sub_10000939C(v7, v8, &qword_10009FC90, &qword_10007C910);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v13 = *(v0 + 1640);
    if (EnumCaseMultiPayload == 1)
    {
      *(v0 + 1544) = *v13;
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload == 2)
    {
      *(v0 + 1536) = *v13;
LABEL_9:
      v17 = sub_10007A5E0();
      v16 = v18;

      goto LABEL_10;
    }

    sub_100068BD0(v13, type metadata accessor for ServiceEventValue);
  }

  else
  {
    v14 = *(v0 + 1648);
    v15 = type metadata accessor for ServiceEventValue();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  }

  v16 = 0xE300000000000000;
  v17 = 4079420;
LABEL_10:
  *(v0 + 1864) = v16;
  *(v0 + 1856) = v17;
  sub_1000096C4(*(v0 + 1648), &qword_10009FC90, &qword_10007C910);
  if (!*(v2 + 16) || (v19 = *(v0 + 1728), v20 = sub_10000A0FC(0x7375746174735FLL, 0xE700000000000000), (v21 & 1) == 0))
  {
    v30 = *(v0 + 1632);
    v31 = type metadata accessor for ServiceEventValue();
    (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
LABEL_16:
    v32 = 0xE300000000000000;
    goto LABEL_19;
  }

  v22 = v20;
  v23 = *(v0 + 1632);
  v24 = *(v0 + 1624);
  v25 = *(*(v0 + 1728) + 56);
  v26 = type metadata accessor for ServiceEventValue();
  v27 = *(v26 - 8);
  sub_100068C78(v25 + *(v27 + 72) * v22, v23, type metadata accessor for ServiceEventValue);
  (*(v27 + 56))(v23, 0, 1, v26);
  sub_10000939C(v23, v24, &qword_10009FC90, &qword_10007C910);
  v28 = swift_getEnumCaseMultiPayload();
  v29 = *(v0 + 1624);
  if (v28 == 1)
  {
    *(v0 + 1528) = *v29;
    goto LABEL_18;
  }

  if (v28 != 2)
  {
    sub_100068BD0(v29, type metadata accessor for ServiceEventValue);
    goto LABEL_16;
  }

  *(v0 + 1520) = *v29;
LABEL_18:
  v1 = sub_10007A5E0();
  v32 = v33;

LABEL_19:
  *(v0 + 1880) = v32;
  *(v0 + 1872) = v1;
  v34 = *(v0 + 1712);
  sub_1000096C4(*(v0 + 1632), &qword_10009FC90, &qword_10007C910);

  v35 = sub_100079B80();
  v36 = sub_10007A190();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v37 = 136446466;
    v38 = sub_100006B00(v17, v16, &v53);

    *(v37 + 4) = v38;
    *(v37 + 12) = 2082;
    v39 = sub_100006B00(v1, v32, &v53);

    *(v37 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v35, v36, "sending one message %{public}s:%{public}s", v37, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v40 = *(v0 + 1792);
  v41 = *(v0 + 1784);
  v42 = *(v0 + 1728);
  v43 = *(v0 + 1560);

  *(v0 + 1200) = XPCIncomingConnection.init(conn:)(0x4D656E4F646E6553);
  *(v0 + 1208) = v44;
  *(v0 + 1216) = v45;
  *(v0 + 1888) = sub_1000685D0(v40);
  *(v0 + 1896) = v46;
  *(v0 + 1904) = v47;
  v48 = *(**(v43 + 160) + 152);
  v52 = (v48 + *v48);
  v49 = v48[1];
  v50 = swift_task_alloc();
  *(v0 + 1912) = v50;
  *v50 = v0;
  v50[1] = sub_10006096C;

  return v52(v0 + 744);
}

uint64_t sub_10006484C()
{
  v77 = v0;
  *(v0 + 512) = 0;
  *(v0 + 480) = 0u;
  *(v0 + 496) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 0u;
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0u;
  *(v0 + 384) = 0u;
  *(v0 + 400) = 0u;
  *(v0 + 352) = 0u;
  *(v0 + 368) = 0u;
  sub_10000939C(v0 + 352, v0 + 16, &unk_10009FCA0, qword_10007FBF0);
  if (*(v0 + 40))
  {
    v1 = *(v0 + 160);
    *(v0 + 312) = *(v0 + 144);
    *(v0 + 328) = v1;
    *(v0 + 344) = *(v0 + 176);
    v2 = *(v0 + 96);
    *(v0 + 248) = *(v0 + 80);
    *(v0 + 264) = v2;
    v3 = *(v0 + 128);
    *(v0 + 280) = *(v0 + 112);
    *(v0 + 296) = v3;
    v4 = *(v0 + 32);
    *(v0 + 184) = *(v0 + 16);
    *(v0 + 200) = v4;
    v5 = *(v0 + 64);
    *(v0 + 216) = *(v0 + 48);
    *(v0 + 232) = v5;
    *(v0 + 1000) = &type metadata for AllEventFieldProvider;
    *(v0 + 1008) = &off_1000974E8;
    v6 = swift_allocObject();
    *(v0 + 976) = v6;
    sub_100068ACC(v0 + 184, v6 + 16);
    sub_10002D410((v0 + 976));
    sub_100068B28(v0 + 184);
    sub_1000070A8((v0 + 976));
  }

  else
  {
    sub_1000096C4(v0 + 16, &unk_10009FCA0, qword_10007FBF0);
  }

  *(v0 + 1952) = *(v0 + 1200);
  *(v0 + 1960) = *(v0 + 1208);
  v7 = sub_10003F2A0();
  swift_beginAccess();
  if (*v7 == 1)
  {
    v8 = *(v0 + 1792);
    v9 = *(v8 + 16);
    *(v0 + 1976) = v9;
    if (v9)
    {
      v10 = *(v0 + 1592);
      *(v0 + 1984) = *(*(v0 + 1560) + 168);
      v11 = *(v10 + 80);
      *(v0 + 2208) = v11;
      *(v0 + 1992) = *(v10 + 72);
      *(v0 + 2000) = 0u;
      v12 = *(v0 + 1880);
      v13 = *(v0 + 1864);
      v14 = *(v0 + 1712);
      v15 = *(v0 + 1616);
      v16 = *(v0 + 1608);
      sub_100068C78(v8 + ((v11 + 32) & ~v11), v15, type metadata accessor for SessionConfiguration.Backend);
      sub_100068C78(v15, v16, type metadata accessor for SessionConfiguration.Backend);

      v17 = sub_100079B80();
      v18 = sub_10007A190();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = *(v0 + 1880);
        v20 = *(v0 + 1872);
        v21 = *(v0 + 1864);
        v22 = *(v0 + 1856);
        v23 = *(v0 + 1608);
        v24 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *v24 = 136446722;
        *(v24 + 4) = sub_100006B00(v22, v21, &v76);
        *(v24 + 12) = 2082;
        *(v24 + 14) = sub_100006B00(v20, v19, &v76);
        *(v24 + 22) = 2082;
        v25 = sub_100068D4C();
        v27 = v26;
        sub_100068BD0(v23, type metadata accessor for SessionConfiguration.Backend);
        v28 = sub_100006B00(v25, v27, &v76);

        *(v24 + 24) = v28;
        _os_log_impl(&_mh_execute_header, v17, v18, "writing sendOneMessage to transparency log %{public}s:%{public}s for backend %{public}s", v24, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        v67 = *(v0 + 1608);

        sub_100068BD0(v67, type metadata accessor for SessionConfiguration.Backend);
      }

      v68 = *(v0 + 1984);
      v69 = *(v0 + 1616);
      *(v0 + 2016) = sub_100068D4C();
      *(v0 + 2024) = v70;
      v71 = sub_100061544;
      v72 = v68;
      goto LABEL_23;
    }
  }

  if (*(v0 + 1840))
  {
    v29 = *(v0 + 1880);
    v30 = *(v0 + 1864);
    v31 = *(v0 + 1712);

    swift_unknownObjectRetain();
    v32 = sub_100079B80();
    v33 = sub_10007A190();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(v0 + 1880);
      v35 = *(v0 + 1872);
      v36 = *(v0 + 1864);
      v37 = *(v0 + 1856);
      v38 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v38 = 136446466;
      *(v38 + 4) = sub_100006B00(v37, v36, &v76);
      *(v38 + 12) = 2082;
      *(v38 + 14) = sub_100006B00(v35, v34, &v76);
      _os_log_impl(&_mh_execute_header, v32, v33, "processing sendOneMessage, immediate %{public}s:%{public}s", v38, 0x16u);
      swift_arrayDestroy();
    }

    v39 = *(v0 + 1968);
    v40 = *(v0 + 1960);
    v41 = *(v0 + 1952);
    v75 = *(v0 + 1848);
    ObjectType = swift_getObjectType();
    sub_10000712C(&qword_10009E4A8, &qword_10007C2D0);
    v43 = swift_allocObject();
    *(v0 + 2040) = v43;
    *(v43 + 16) = xmmword_10007B7C0;
    *(v43 + 32) = v41;
    *(v43 + 40) = v40;
    *(v43 + 48) = v39;
    v44 = *(v75 + 8);

    v74 = (v44 + *v44);
    v45 = v44[1];
    v46 = swift_task_alloc();
    *(v0 + 2048) = v46;
    *v46 = v0;
    v46[1] = sub_100061D54;
    v47 = *(v0 + 1848);

    return v74(v43, ObjectType, v47);
  }

  else
  {
    if (!*(*(v0 + 1792) + 16))
    {
      v72 = *(v0 + 1760);
      v73 = *v72 + 256;
      *(v0 + 2080) = *v73;
      *(v0 + 2088) = v73 & 0xFFFFFFFFFFFFLL | 0x1AEB000000000000;
      v71 = sub_100062560;
LABEL_23:

      return _swift_task_switch(v71, v72, 0);
    }

    v49 = *(v0 + 1880);
    v50 = *(v0 + 1864);
    v51 = *(v0 + 1712);

    v52 = sub_100079B80();
    v53 = sub_10007A190();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = *(v0 + 1880);
      v55 = *(v0 + 1872);
      v56 = *(v0 + 1864);
      v57 = *(v0 + 1856);
      v58 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v58 = 136446466;
      *(v58 + 4) = sub_100006B00(v57, v56, &v76);
      *(v58 + 12) = 2082;
      *(v58 + 14) = sub_100006B00(v55, v54, &v76);
      _os_log_impl(&_mh_execute_header, v52, v53, "caching sendOneMessage %{public}s:%{public}s", v58, 0x16u);
      swift_arrayDestroy();
    }

    v59 = *(v0 + 1584);
    v60 = *(*(v0 + 1560) + 144);
    sub_1000799C0();
    v61 = swift_task_alloc();
    *(v0 + 2064) = v61;
    *v61 = v0;
    v61[1] = sub_100062220;
    v62 = *(v0 + 1968);
    v63 = *(v0 + 1960);
    v64 = *(v0 + 1952);
    v65 = *(v0 + 1736);
    v66 = *(v0 + 1584);

    return sub_100020D38(v0 + 744, v66, v65, v64, v63, v62);
  }
}

uint64_t sub_1000650B8()
{
  v98 = v0;
  v1 = *(v0 + 2032);
  v2 = *(v0 + 2024);
  v3 = *(v0 + 1880);
  v4 = *(v0 + 1864);
  v5 = *(v0 + 1712);
  v6 = *(v0 + 1616);
  v7 = *(v0 + 1600);

  sub_100068C78(v6, v7, type metadata accessor for SessionConfiguration.Backend);

  swift_errorRetain();
  v8 = sub_100079B80();
  v9 = sub_10007A170();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1880);
    v11 = *(v0 + 1872);
    v12 = *(v0 + 1864);
    v13 = *(v0 + 1856);
    v93 = *(v0 + 2032);
    v95 = *(v0 + 1616);
    v14 = *(v0 + 1600);
    v15 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *v15 = 136446978;
    *(v15 + 4) = sub_100006B00(v13, v12, &v97);
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_100006B00(v11, v10, &v97);
    *(v15 + 22) = 2082;
    v16 = sub_100068D4C();
    v18 = v17;
    sub_100068BD0(v14, type metadata accessor for SessionConfiguration.Backend);
    v19 = sub_100006B00(v16, v18, &v97);

    *(v15 + 24) = v19;
    *(v15 + 32) = 2082;
    swift_getErrorValue();
    v20 = *(v0 + 1080);
    v21 = *(v0 + 1088);
    v22 = *(v0 + 1096);
    v23 = sub_10007A6D0();
    v25 = sub_100006B00(v23, v24, &v97);

    *(v15 + 34) = v25;
    _os_log_impl(&_mh_execute_header, v8, v9, "failed writing sendOneMessage to transparency log %{public}s:%{public}s for backend %{public}s with error %{public}s", v15, 0x2Au);
    swift_arrayDestroy();

    v26 = v95;
  }

  else
  {
    v27 = *(v0 + 2032);
    v28 = *(v0 + 1616);
    v29 = *(v0 + 1600);

    sub_100068BD0(v29, type metadata accessor for SessionConfiguration.Backend);
    v26 = v28;
  }

  sub_100068BD0(v26, type metadata accessor for SessionConfiguration.Backend);
  v30 = *(v0 + 2008) + 1;
  if (v30 == *(v0 + 1976))
  {
    if (*(v0 + 1840))
    {
      v31 = *(v0 + 1880);
      v32 = *(v0 + 1864);
      v33 = *(v0 + 1712);

      swift_unknownObjectRetain();
      v34 = sub_100079B80();
      v35 = sub_10007A190();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = *(v0 + 1880);
        v37 = *(v0 + 1872);
        v38 = *(v0 + 1864);
        v39 = *(v0 + 1856);
        v40 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        *v40 = 136446466;
        *(v40 + 4) = sub_100006B00(v39, v38, &v97);
        *(v40 + 12) = 2082;
        *(v40 + 14) = sub_100006B00(v37, v36, &v97);
        _os_log_impl(&_mh_execute_header, v34, v35, "processing sendOneMessage, immediate %{public}s:%{public}s", v40, 0x16u);
        swift_arrayDestroy();
      }

      v41 = *(v0 + 1968);
      v42 = *(v0 + 1960);
      v43 = *(v0 + 1952);
      v96 = *(v0 + 1848);
      ObjectType = swift_getObjectType();
      sub_10000712C(&qword_10009E4A8, &qword_10007C2D0);
      v45 = swift_allocObject();
      *(v0 + 2040) = v45;
      *(v45 + 16) = xmmword_10007B7C0;
      *(v45 + 32) = v43;
      *(v45 + 40) = v42;
      *(v45 + 48) = v41;
      v46 = *(v96 + 8);

      v94 = (v46 + *v46);
      v47 = v46[1];
      v48 = swift_task_alloc();
      *(v0 + 2048) = v48;
      *v48 = v0;
      v48[1] = sub_100061D54;
      v49 = *(v0 + 1848);

      return v94(v45, ObjectType, v49);
    }

    if (*(*(v0 + 1792) + 16))
    {
      v74 = *(v0 + 1880);
      v75 = *(v0 + 1864);
      v76 = *(v0 + 1712);

      v77 = sub_100079B80();
      v78 = sub_10007A190();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = *(v0 + 1880);
        v80 = *(v0 + 1872);
        v81 = *(v0 + 1864);
        v82 = *(v0 + 1856);
        v83 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        *v83 = 136446466;
        *(v83 + 4) = sub_100006B00(v82, v81, &v97);
        *(v83 + 12) = 2082;
        *(v83 + 14) = sub_100006B00(v80, v79, &v97);
        _os_log_impl(&_mh_execute_header, v77, v78, "caching sendOneMessage %{public}s:%{public}s", v83, 0x16u);
        swift_arrayDestroy();
      }

      v84 = *(v0 + 1584);
      v85 = *(*(v0 + 1560) + 144);
      sub_1000799C0();
      v86 = swift_task_alloc();
      *(v0 + 2064) = v86;
      *v86 = v0;
      v86[1] = sub_100062220;
      v87 = *(v0 + 1968);
      v88 = *(v0 + 1960);
      v89 = *(v0 + 1952);
      v90 = *(v0 + 1736);
      v91 = *(v0 + 1584);

      return sub_100020D38(v0 + 744, v91, v90, v89, v88, v87);
    }

    v73 = *(v0 + 1760);
    v92 = *v73 + 256;
    *(v0 + 2080) = *v92;
    *(v0 + 2088) = v92 & 0xFFFFFFFFFFFFLL | 0x1AEB000000000000;
    v72 = sub_100062560;
  }

  else
  {
    *(v0 + 2008) = v30;
    *(v0 + 2000) = 0;
    v51 = *(v0 + 1880);
    v52 = *(v0 + 1864);
    v53 = *(v0 + 1712);
    v54 = *(v0 + 1616);
    v55 = *(v0 + 1608);
    sub_100068C78(*(v0 + 1792) + ((*(v0 + 2208) + 32) & ~*(v0 + 2208)) + *(v0 + 1992) * v30, v54, type metadata accessor for SessionConfiguration.Backend);
    sub_100068C78(v54, v55, type metadata accessor for SessionConfiguration.Backend);

    v56 = sub_100079B80();
    v57 = sub_10007A190();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = *(v0 + 1880);
      v59 = *(v0 + 1872);
      v60 = *(v0 + 1864);
      v61 = *(v0 + 1856);
      v62 = *(v0 + 1608);
      v63 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *v63 = 136446722;
      *(v63 + 4) = sub_100006B00(v61, v60, &v97);
      *(v63 + 12) = 2082;
      *(v63 + 14) = sub_100006B00(v59, v58, &v97);
      *(v63 + 22) = 2082;
      v64 = sub_100068D4C();
      v66 = v65;
      sub_100068BD0(v62, type metadata accessor for SessionConfiguration.Backend);
      v67 = sub_100006B00(v64, v66, &v97);

      *(v63 + 24) = v67;
      _os_log_impl(&_mh_execute_header, v56, v57, "writing sendOneMessage to transparency log %{public}s:%{public}s for backend %{public}s", v63, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v68 = *(v0 + 1608);

      sub_100068BD0(v68, type metadata accessor for SessionConfiguration.Backend);
    }

    v69 = *(v0 + 1984);
    v70 = *(v0 + 1616);
    *(v0 + 2016) = sub_100068D4C();
    *(v0 + 2024) = v71;
    v72 = sub_100061544;
    v73 = v69;
  }

  return _swift_task_switch(v72, v73, 0);
}