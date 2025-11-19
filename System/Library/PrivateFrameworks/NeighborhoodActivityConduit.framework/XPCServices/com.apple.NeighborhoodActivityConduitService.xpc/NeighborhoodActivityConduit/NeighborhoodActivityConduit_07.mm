uint64_t sub_1000B3FBC(id *a1)
{
  v1 = [*a1 uniqueIdentifier];
  v2 = sub_1000E2338();
  v4 = v3;

  if (v2 == sub_1000E1CD8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1000E2C68();
  }

  return v7 & 1;
}

uint64_t sub_1000B406C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

void sub_1000B40E0()
{
  v1 = *(sub_1000E1D08() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_10000ADE4(&unk_100120028, &qword_1000F3048) - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_1000B35A4(v5, v0 + v2, v6);
}

uint64_t sub_1000B41BC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000B4204()
{
  result = qword_100120038;
  if (!qword_100120038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120038);
  }

  return result;
}

unint64_t sub_1000B4258()
{
  result = qword_100120040;
  if (!qword_100120040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100120040);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IncomingCallServerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IncomingCallServerError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000B4418()
{
  result = qword_100120050;
  if (!qword_100120050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120050);
  }

  return result;
}

void *sub_1000B446C(uint64_t a1)
{
  v51 = sub_1000E1668();
  v3 = *(v51 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v51);
  v50 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000E16C8();
  v7 = *(v6 - 8);
  v55 = v6;
  v56 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = sub_1000E2968();
  }

  else
  {
    v11 = *(a1 + 16);
  }

  result = &_swiftEmptyArrayStorage;
  if (!v11)
  {
    return result;
  }

  v64 = &_swiftEmptyArrayStorage;
  sub_10002A248(0, v11 & ~(v11 >> 63), 0);
  v59 = v64;
  if (v57)
  {
    result = sub_1000E2908();
  }

  else
  {
    v14 = -1 << *(a1 + 32);
    result = sub_1000E28D8();
    v13 = *(a1 + 36);
  }

  v61 = result;
  v62 = v13;
  v63 = v57 != 0;
  if (v11 < 0)
  {
    goto LABEL_47;
  }

  v44 = v1;
  v15 = 0;
  v49 = (v3 + 104);
  v54 = v56 + 32;
  v46 = enum case for NCProtoContactHandleAnonym.AnonymType.emailAddress(_:);
  v16 = a1 & 0xFFFFFFFFFFFFFF8;
  v53 = enum case for NCProtoContactHandleAnonym.AnonymType.phoneNumber(_:);
  if (a1 < 0)
  {
    v16 = a1;
  }

  v47 = a1 + 56;
  v48 = v16;
  v45 = a1 + 64;
  v52 = v11;
  while (v15 < v11)
  {
    if (__OFADD__(v15++, 1))
    {
      goto LABEL_43;
    }

    v19 = v61;
    v20 = v63;
    v58 = v62;
    v21 = a1;
    sub_1000D4B14(v61, v62, v63, a1);
    v23 = v22;
    sub_1000E16B8();
    v24 = [v23 identifier];
    sub_1000E2338();

    sub_1000E1678();
    v25 = [v23 localizedDisplayName];
    sub_1000E2338();

    sub_1000E1688();
    v26 = [v23 label];
    if (v26)
    {
      v27 = v26;
      sub_1000E2338();
    }

    sub_1000E16A8();
    v28 = [v23 type];
    v29 = v53;
    a1 = v21;
    if (v28 == 1)
    {
      goto LABEL_20;
    }

    if (v28 == 2)
    {
      v29 = v46;
LABEL_20:
      (*v49)(v50, v29, v51);
      sub_1000E1698();
    }

    v30 = v59;
    v64 = v59;
    v32 = v59[2];
    v31 = v59[3];
    if (v32 >= v31 >> 1)
    {
      sub_10002A248(v31 > 1, v32 + 1, 1);
      v30 = v64;
    }

    v30[2] = v32 + 1;
    v33 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v59 = v30;
    result = (*(v56 + 32))(v30 + v33 + *(v56 + 72) * v32, v10, v55);
    if (v57)
    {
      if (!v20)
      {
        goto LABEL_48;
      }

      if (sub_1000E2928())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v11 = v52;
      sub_10000ADE4(&unk_100120180, &qword_1000F3348);
      v17 = sub_1000E2618();
      sub_1000E29D8();
      result = v17(v60, 0);
      if (v15 == v11)
      {
LABEL_40:
        sub_10000A848(v61, v62, v63);
        return v59;
      }
    }

    else
    {
      if (v20)
      {
        goto LABEL_49;
      }

      if ((v19 & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      v34 = 1 << *(v21 + 32);
      if (v19 >= v34)
      {
        goto LABEL_44;
      }

      v35 = v19 >> 6;
      v36 = *(v47 + 8 * (v19 >> 6));
      if (((v36 >> v19) & 1) == 0)
      {
        goto LABEL_45;
      }

      if (*(v21 + 36) != v58)
      {
        goto LABEL_46;
      }

      v37 = v36 & (-2 << (v19 & 0x3F));
      if (v37)
      {
        v34 = __clz(__rbit64(v37)) | v19 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v38 = v35 << 6;
        v39 = v35 + 1;
        v40 = (v45 + 8 * v35);
        while (v39 < (v34 + 63) >> 6)
        {
          v42 = *v40++;
          v41 = v42;
          v38 += 64;
          ++v39;
          if (v42)
          {
            result = sub_10000A848(v19, v58, 0);
            v34 = __clz(__rbit64(v41)) + v38;
            goto LABEL_39;
          }
        }

        result = sub_10000A848(v19, v58, 0);
      }

LABEL_39:
      v43 = *(v21 + 36);
      v61 = v34;
      v62 = v43;
      v63 = 0;
      v11 = v52;
      if (v15 == v52)
      {
        goto LABEL_40;
      }
    }
  }

  __break(1u);
LABEL_43:
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
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

void *sub_1000B4A24(uint64_t a1)
{
  v3 = sub_1000E14D8();
  v43 = *(v3 - 8);
  v4 = *(v43 + 64);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_1000E2968();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = &_swiftEmptyArrayStorage;
  if (v7)
  {
    v52 = &_swiftEmptyArrayStorage;
    sub_10002A28C(0, v7 & ~(v7 >> 63), 0);
    v47 = v52;
    if (v44)
    {
      result = sub_1000E2908();
    }

    else
    {
      v10 = -1 << *(a1 + 32);
      result = sub_1000E28D8();
      v9 = *(a1 + 36);
    }

    v49 = result;
    v50 = v9;
    v51 = v44 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v42 = v3;
      v46 = v1;
      v11 = 0;
      v40 = v7;
      v41 = v43 + 32;
      v12 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v12 = a1;
      }

      v38 = a1 + 56;
      v39 = v12;
      v37 = a1 + 64;
      while (v11 < v7)
      {
        if (__OFADD__(v11++, 1))
        {
          goto LABEL_37;
        }

        v15 = v49;
        v16 = v51;
        v45 = v50;
        v17 = a1;
        sub_1000D4B28(v49, v50, v51, a1);
        v19 = v18;
        *(&v37 - 2) = __chkstk_darwin(v18);
        sub_1000041BC(&qword_1001200B8, 255, &type metadata accessor for NCProtoActiveConversation);
        v20 = v6;
        v21 = v42;
        v22 = v46;
        sub_1000E0E38();
        v46 = v22;

        v23 = v47;
        v52 = v47;
        v25 = v47[2];
        v24 = v47[3];
        if (v25 >= v24 >> 1)
        {
          sub_10002A28C(v24 > 1, v25 + 1, 1);
          v23 = v52;
        }

        v23[2] = v25 + 1;
        v26 = (*(v43 + 80) + 32) & ~*(v43 + 80);
        v47 = v23;
        result = (*(v43 + 32))(v23 + v26 + *(v43 + 72) * v25, v20, v21);
        if (v44)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          a1 = v17;
          v6 = v20;
          if (sub_1000E2928())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v40;
          sub_10000ADE4(&unk_1001200C0, &unk_1000F3C00);
          v13 = sub_1000E2618();
          sub_1000E29D8();
          result = v13(v48, 0);
          if (v11 == v7)
          {
LABEL_34:
            sub_10000A848(v49, v50, v51);
            return v47;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_43;
          }

          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v17;
          v6 = v20;
          v27 = 1 << *(v17 + 32);
          if (v15 >= v27)
          {
            goto LABEL_38;
          }

          v28 = v15 >> 6;
          v29 = *(v38 + 8 * (v15 >> 6));
          if (((v29 >> v15) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v17 + 36) != v45)
          {
            goto LABEL_40;
          }

          v30 = v29 & (-2 << (v15 & 0x3F));
          if (v30)
          {
            v27 = __clz(__rbit64(v30)) | v15 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v31 = v28 << 6;
            v32 = v28 + 1;
            v33 = (v37 + 8 * v28);
            while (v32 < (v27 + 63) >> 6)
            {
              v35 = *v33++;
              v34 = v35;
              v31 += 64;
              ++v32;
              if (v35)
              {
                result = sub_10000A848(v15, v45, 0);
                v27 = __clz(__rbit64(v34)) + v31;
                goto LABEL_33;
              }
            }

            result = sub_10000A848(v15, v45, 0);
          }

LABEL_33:
          v36 = *(v17 + 36);
          v49 = v27;
          v50 = v36;
          v51 = 0;
          v7 = v40;
          if (v11 == v40)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

void *sub_1000B4EC0(uint64_t a1)
{
  v45 = sub_1000E10C8();
  v2 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1000E1528();
  v46 = *(v43 - 8);
  v4 = *(v46 + 64);
  __chkstk_darwin(v43);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_1000E2968();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = &_swiftEmptyArrayStorage;
  if (v7)
  {
    v55 = &_swiftEmptyArrayStorage;
    sub_10002A2D0(0, v7 & ~(v7 >> 63), 0);
    v50 = v55;
    if (v47)
    {
      result = sub_1000E2908();
    }

    else
    {
      v10 = -1 << *(a1 + 32);
      result = sub_1000E28D8();
      v9 = *(a1 + 36);
    }

    v52 = result;
    v53 = v9;
    v54 = v47 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v41 = v46 + 32;
      v42 = a1;
      v12 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v12 = a1;
      }

      v38 = a1 + 56;
      v39 = v12;
      v37 = a1 + 64;
      v40 = v7;
      while (v11 < v7)
      {
        if (__OFADD__(v11++, 1))
        {
          goto LABEL_39;
        }

        v15 = v52;
        v49 = v53;
        v48 = v54;
        sub_1000D4B3C(v52, v53, v54, a1);
        v17 = v16;
        sub_1000E1518();
        v18 = [v17 contactIdentifier];
        sub_1000E2338();
        v19 = v6;

        sub_1000E1508();
        v20 = [v17 contact];
        *(&v37 - 2) = __chkstk_darwin(v20);
        sub_1000041BC(&qword_100120130, 255, &type metadata accessor for NCProtoContactInfo);
        sub_1000E0E38();

        sub_1000E14E8();
        v21 = [v17 anonyms];
        sub_10000CAAC(0, &qword_100120160, TUContinuityHandleAnonym_ptr);
        sub_10001B174(&qword_100120168, &qword_100120160, TUContinuityHandleAnonym_ptr);
        v22 = sub_1000E25E8();

        sub_1000B446C(v22);

        sub_1000E14F8();

        v23 = v50;
        v55 = v50;
        v25 = v50[2];
        v24 = v50[3];
        if (v25 >= v24 >> 1)
        {
          sub_10002A2D0(v24 > 1, v25 + 1, 1);
          v23 = v55;
        }

        v23[2] = v25 + 1;
        v26 = (*(v46 + 80) + 32) & ~*(v46 + 80);
        v50 = v23;
        result = (*(v46 + 32))(v23 + v26 + *(v46 + 72) * v25, v6, v43);
        if (v47)
        {
          a1 = v42;
          if (!v48)
          {
            goto LABEL_44;
          }

          if (sub_1000E2928())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          sub_10000ADE4(&qword_100120178, &qword_1000F3340);
          v13 = sub_1000E2618();
          sub_1000E29D8();
          result = v13(v51, 0);
        }

        else
        {
          a1 = v42;
          if (v48)
          {
            goto LABEL_45;
          }

          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_40;
          }

          v27 = 1 << *(v42 + 32);
          if (v15 >= v27)
          {
            goto LABEL_40;
          }

          v28 = v15 >> 6;
          v29 = *(v38 + 8 * (v15 >> 6));
          if (((v29 >> v15) & 1) == 0)
          {
            goto LABEL_41;
          }

          if (*(v42 + 36) != v49)
          {
            goto LABEL_42;
          }

          v30 = v29 & (-2 << (v15 & 0x3F));
          if (v30)
          {
            v27 = __clz(__rbit64(v30)) | v15 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v31 = v28 << 6;
            v32 = v28 + 1;
            v33 = (v37 + 8 * v28);
            while (v32 < (v27 + 63) >> 6)
            {
              v35 = *v33++;
              v34 = v35;
              v31 += 64;
              ++v32;
              if (v35)
              {
                result = sub_10000A848(v15, v49, 0);
                v27 = __clz(__rbit64(v34)) + v31;
                goto LABEL_34;
              }
            }

            result = sub_10000A848(v15, v49, 0);
LABEL_34:
            v6 = v19;
          }

          v36 = *(a1 + 36);
          v52 = v27;
          v53 = v36;
          v54 = 0;
        }

        v7 = v40;
        if (v11 == v40)
        {
          sub_10000A848(v52, v53, v54);
          return v50;
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
      __break(1u);
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  return result;
}

void sub_1000B549C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1000E2918();
    sub_10000CAAC(0, &unk_100120110, CHHandle_ptr);
    sub_10001B174(&qword_10011EB70, &unk_100120110, CHHandle_ptr);
    sub_1000E2628();
    v1 = v24;
    v23 = v25;
    v2 = v26;
    v3 = v27;
    v4 = v28;
  }

  else
  {
    v5 = -1 << *(a1 + 32);
    v23 = a1 + 56;
    v2 = ~v5;
    v6 = -v5;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v4 = v7 & *(a1 + 56);

    v3 = 0;
  }

  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_1000E29A8() || (sub_10000CAAC(0, &unk_100120110, CHHandle_ptr), swift_dynamicCast(), v13 = v29, v11 = v3, v12 = v4, !v29))
      {
LABEL_31:
        sub_10000A840();
        return;
      }

      goto LABEL_18;
    }

    v9 = v3;
    v10 = v4;
    v11 = v3;
    if (!v4)
    {
      break;
    }

LABEL_14:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
      goto LABEL_31;
    }

LABEL_18:
    v14 = sub_10005FCA4();

    v15 = *(v14 + 16);
    v16 = *(v8 + 2);
    v17 = v16 + v15;
    if (__OFADD__(v16, v15))
    {
      goto LABEL_33;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v17 <= *(v8 + 3) >> 1)
    {
      if (*(v14 + 16))
      {
        goto LABEL_27;
      }

LABEL_8:

      v3 = v11;
      v4 = v12;
      if (v15)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v16 <= v17)
      {
        v19 = v16 + v15;
      }

      else
      {
        v19 = v16;
      }

      v8 = sub_1000D2030(isUniquelyReferenced_nonNull_native, v19, 1, v8);
      if (!*(v14 + 16))
      {
        goto LABEL_8;
      }

LABEL_27:
      if ((*(v8 + 3) >> 1) - *(v8 + 2) < v15)
      {
        goto LABEL_35;
      }

      swift_arrayInitWithCopy();

      v3 = v11;
      v4 = v12;
      if (v15)
      {
        v20 = *(v8 + 2);
        v21 = __OFADD__(v20, v15);
        v22 = v20 + v15;
        if (v21)
        {
          goto LABEL_36;
        }

        *(v8 + 2) = v22;
        v3 = v11;
        v4 = v12;
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

    if (v11 >= ((v2 + 64) >> 6))
    {
      goto LABEL_31;
    }

    v10 = *(v23 + 8 * v11);
    ++v9;
    if (v10)
    {
      goto LABEL_14;
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
  __break(1u);
}

uint64_t sub_1000B5788(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 104) = a5;
  *(v7 + 112) = v6;
  *(v7 + 74) = a6;
  *(v7 + 88) = a3;
  *(v7 + 96) = a4;
  *(v7 + 73) = a2;
  *(v7 + 80) = a1;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v8 = qword_1001230E0;
  *(v7 + 120) = qword_1001230E0;

  return _swift_task_switch(sub_1000B5834, v8, 0);
}

uint64_t sub_1000B5834()
{
  v25 = v0;
  v1 = *(v0 + 112);
  v2 = sub_1000449DC(*(v0 + 96), *(v0 + 104), *(v0 + 74));
  *(v0 + 128) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 88);
    sub_1000E1638();
    sub_1000041BC(&qword_100120250, 255, &type metadata accessor for NCProtoDeviceTokenRequest);
    *(v0 + 136) = sub_1000E0E28();
    *(v0 + 144) = v5;
    v22 = swift_task_alloc();
    *(v0 + 152) = v22;
    *v22 = v0;
    v22[1] = sub_1000B5B18;
    v23 = *(v0 + 112);

    return sub_100057500(v0 + 16, v3);
  }

  else
  {
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = *(v0 + 74);
    v9 = sub_1000E1F08();
    sub_1000049D0(v9, qword_1001231A0);
    sub_100015488(v7, v6, v8);
    v10 = sub_1000E1EE8();
    v11 = sub_1000E2678();
    sub_1000154A0(v7, v6, v8);
    if (os_log_type_enabled(v10, v11))
    {
      v13 = *(v0 + 96);
      v12 = *(v0 + 104);
      v14 = *(v0 + 74);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315138;
      v17 = sub_100012A20(v13, v12, v14);
      v19 = sub_100029C70(v17, v18, &v24);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to find conduit device for %s.", v15, 0xCu);
      sub_10000E9DC(v16);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1000B5B18()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 120);
  if (v0)
  {
    v6 = sub_1000CF784;
  }

  else
  {
    v6 = sub_1000B5C44;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000B5C44()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 73);
  v6 = sub_1000041BC(&qword_1001201E0, 255, type metadata accessor for ConduitDeviceActor);
  v7 = swift_task_alloc();
  *(v0 + 168) = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v0 + 16;
  *(v7 + 40) = v2;
  *(v7 + 48) = v1;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 176) = v9;
  v10 = sub_1000E1728();
  *v9 = v0;
  v9[1] = sub_1000B5DAC;
  v11 = *(v0 + 80);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, v3, v6, 0xD00000000000001ALL, 0x80000001000EC4E0, sub_1000CF4EC, v7, v10);
}

uint64_t sub_1000B5DAC()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v9 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = *(v2 + 120);
    v5 = sub_1000CF78C;
  }

  else
  {
    v6 = *(v2 + 168);
    v7 = *(v2 + 120);

    v5 = sub_1000CF788;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000B5ED4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 104) = a5;
  *(v7 + 112) = v6;
  *(v7 + 74) = a6;
  *(v7 + 88) = a3;
  *(v7 + 96) = a4;
  *(v7 + 73) = a2;
  *(v7 + 80) = a1;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v8 = qword_1001230E0;
  *(v7 + 120) = qword_1001230E0;

  return _swift_task_switch(sub_1000B5F80, v8, 0);
}

uint64_t sub_1000B5F80()
{
  v25 = v0;
  v1 = *(v0 + 112);
  v2 = sub_1000449DC(*(v0 + 96), *(v0 + 104), *(v0 + 74));
  *(v0 + 128) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 88);
    sub_1000E1428();
    sub_1000041BC(&unk_10011F8A0, 255, &type metadata accessor for NCProtoDisconnectRequest);
    *(v0 + 136) = sub_1000E0E28();
    *(v0 + 144) = v5;
    v22 = swift_task_alloc();
    *(v0 + 152) = v22;
    *v22 = v0;
    v22[1] = sub_1000B6264;
    v23 = *(v0 + 112);

    return sub_100057500(v0 + 16, v3);
  }

  else
  {
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = *(v0 + 74);
    v9 = sub_1000E1F08();
    sub_1000049D0(v9, qword_1001231A0);
    sub_100015488(v7, v6, v8);
    v10 = sub_1000E1EE8();
    v11 = sub_1000E2678();
    sub_1000154A0(v7, v6, v8);
    if (os_log_type_enabled(v10, v11))
    {
      v13 = *(v0 + 96);
      v12 = *(v0 + 104);
      v14 = *(v0 + 74);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315138;
      v17 = sub_100012A20(v13, v12, v14);
      v19 = sub_100029C70(v17, v18, &v24);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to find conduit device for %s.", v15, 0xCu);
      sub_10000E9DC(v16);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1000B6264()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 120);
  if (v0)
  {
    v6 = sub_1000CF784;
  }

  else
  {
    v6 = sub_1000B6390;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000B6390()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 73);
  v6 = sub_1000041BC(&qword_1001201E0, 255, type metadata accessor for ConduitDeviceActor);
  v7 = swift_task_alloc();
  *(v0 + 168) = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v0 + 16;
  *(v7 + 40) = v2;
  *(v7 + 48) = v1;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 176) = v9;
  v10 = sub_1000E1658();
  *v9 = v0;
  v9[1] = sub_1000B5DAC;
  v11 = *(v0 + 80);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, v3, v6, 0xD00000000000001ALL, 0x80000001000EC4E0, sub_1000CEE80, v7, v10);
}

uint64_t sub_1000B64F8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 104) = a5;
  *(v7 + 112) = v6;
  *(v7 + 74) = a6;
  *(v7 + 88) = a3;
  *(v7 + 96) = a4;
  *(v7 + 73) = a2;
  *(v7 + 80) = a1;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v8 = qword_1001230E0;
  *(v7 + 120) = qword_1001230E0;

  return _swift_task_switch(sub_1000B65A4, v8, 0);
}

uint64_t sub_1000B65A4()
{
  v25 = v0;
  v1 = *(v0 + 112);
  v2 = sub_1000449DC(*(v0 + 96), *(v0 + 104), *(v0 + 74));
  *(v0 + 128) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 88);
    sub_1000E18B8();
    sub_1000041BC(&unk_1001201C8, 255, &type metadata accessor for NCProtoLagunaConnectionRequest);
    *(v0 + 136) = sub_1000E0E28();
    *(v0 + 144) = v5;
    v22 = swift_task_alloc();
    *(v0 + 152) = v22;
    *v22 = v0;
    v22[1] = sub_1000B6888;
    v23 = *(v0 + 112);

    return sub_100057500(v0 + 16, v3);
  }

  else
  {
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = *(v0 + 74);
    v9 = sub_1000E1F08();
    sub_1000049D0(v9, qword_1001231A0);
    sub_100015488(v7, v6, v8);
    v10 = sub_1000E1EE8();
    v11 = sub_1000E2678();
    sub_1000154A0(v7, v6, v8);
    if (os_log_type_enabled(v10, v11))
    {
      v13 = *(v0 + 96);
      v12 = *(v0 + 104);
      v14 = *(v0 + 74);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315138;
      v17 = sub_100012A20(v13, v12, v14);
      v19 = sub_100029C70(v17, v18, &v24);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to find conduit device for %s.", v15, 0xCu);
      sub_10000E9DC(v16);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1000B6888()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 120);
  if (v0)
  {
    v6 = sub_1000CF784;
  }

  else
  {
    v6 = sub_1000B69B4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000B69B4()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 73);
  v6 = sub_1000041BC(&qword_1001201E0, 255, type metadata accessor for ConduitDeviceActor);
  v7 = swift_task_alloc();
  *(v0 + 168) = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v0 + 16;
  *(v7 + 40) = v2;
  *(v7 + 48) = v1;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 176) = v9;
  v10 = sub_1000E1928();
  *v9 = v0;
  v9[1] = sub_1000B5DAC;
  v11 = *(v0 + 80);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, v3, v6, 0xD00000000000001ALL, 0x80000001000EC4E0, sub_1000CE978, v7, v10);
}

uint64_t sub_1000B6B1C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 104) = a5;
  *(v7 + 112) = v6;
  *(v7 + 74) = a6;
  *(v7 + 88) = a3;
  *(v7 + 96) = a4;
  *(v7 + 73) = a2;
  *(v7 + 80) = a1;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v8 = qword_1001230E0;
  *(v7 + 120) = qword_1001230E0;

  return _swift_task_switch(sub_1000B6BC8, v8, 0);
}

uint64_t sub_1000B6BC8()
{
  v25 = v0;
  v1 = *(v0 + 112);
  v2 = sub_1000449DC(*(v0 + 96), *(v0 + 104), *(v0 + 74));
  *(v0 + 128) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 88);
    sub_1000E1358();
    sub_1000041BC(&qword_100120270, 255, &type metadata accessor for NCProtoCallStateRequest);
    *(v0 + 136) = sub_1000E0E28();
    *(v0 + 144) = v5;
    v22 = swift_task_alloc();
    *(v0 + 152) = v22;
    *v22 = v0;
    v22[1] = sub_1000B6EAC;
    v23 = *(v0 + 112);

    return sub_100057500(v0 + 16, v3);
  }

  else
  {
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = *(v0 + 74);
    v9 = sub_1000E1F08();
    sub_1000049D0(v9, qword_1001231A0);
    sub_100015488(v7, v6, v8);
    v10 = sub_1000E1EE8();
    v11 = sub_1000E2678();
    sub_1000154A0(v7, v6, v8);
    if (os_log_type_enabled(v10, v11))
    {
      v13 = *(v0 + 96);
      v12 = *(v0 + 104);
      v14 = *(v0 + 74);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315138;
      v17 = sub_100012A20(v13, v12, v14);
      v19 = sub_100029C70(v17, v18, &v24);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to find conduit device for %s.", v15, 0xCu);
      sub_10000E9DC(v16);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1000B6EAC()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 120);
  if (v0)
  {
    v6 = sub_1000B7268;
  }

  else
  {
    v6 = sub_1000B6FD8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000B6FD8()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 73);
  v6 = sub_1000041BC(&qword_1001201E0, 255, type metadata accessor for ConduitDeviceActor);
  v7 = swift_task_alloc();
  *(v0 + 168) = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v0 + 16;
  *(v7 + 40) = v2;
  *(v7 + 48) = v1;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 176) = v9;
  v10 = sub_1000E13B8();
  *v9 = v0;
  v9[1] = sub_1000B7140;
  v11 = *(v0 + 80);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, v3, v6, 0xD00000000000001ALL, 0x80000001000EC4E0, sub_1000CF544, v7, v10);
}

uint64_t sub_1000B7140()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v9 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = *(v2 + 120);
    v5 = sub_1000B7350;
  }

  else
  {
    v6 = *(v2 + 168);
    v7 = *(v2 + 120);

    v5 = sub_1000B72D8;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000B7268()
{
  v1 = v0[16];
  sub_100006660(v0[17], v0[18]);

  v2 = v0[20];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1000B72D8()
{
  v1 = v0[16];
  sub_100006660(v0[17], v0[18]);

  sub_10002B7FC((v0 + 2));
  v2 = v0[1];

  return v2();
}

uint64_t sub_1000B7350()
{
  v1 = v0[21];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];

  sub_100006660(v3, v2);

  sub_10002B7FC((v0 + 2));
  v5 = v0[23];
  v6 = v0[1];

  return v6();
}

uint64_t sub_1000B73E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, unint64_t a10)
{
  v53 = a3;
  v51 = a1;
  v52 = sub_10000ADE4(a7, a8);
  v50 = *(v52 - 8);
  v49 = *(v50 + 64);
  __chkstk_darwin(v52);
  v48 = &v41 - v14;
  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v15 = sub_1000E1F08();
  sub_1000049D0(v15, qword_1001231A0);
  sub_10002B7A0(a4, v62);

  v16 = sub_1000E1EE8();
  v17 = sub_1000E2698();

  if (os_log_type_enabled(v16, v17))
  {
    v46 = a5;
    v47 = a6;
    v18 = a4;
    v19 = swift_slowAlloc();
    v61[0] = swift_slowAlloc();
    *v19 = 136315650;
    *(v19 + 4) = sub_100029C70(*(a2 + 16), *(a2 + 24), v61);
    *(v19 + 12) = 2080;
    v20 = sub_10003E4B0(v53);
    v22 = sub_100029C70(v20, v21, v61);

    *(v19 + 14) = v22;
    *(v19 + 22) = 2080;
    sub_10002B7A0(v62, v56);
    if (v60 == 1)
    {
      sub_10002B7FC(v56);
      v23 = 0xEB00000000726565;
      v24 = 0x507463657269642ELL;
    }

    else
    {
      v54 = 0x286465726168732ELL;
      v55 = 0xE800000000000000;
      sub_1000E23A8(v59);

      v66._countAndFlagsBits = 41;
      v66._object = 0xE100000000000000;
      sub_1000E23A8(v66);
      v24 = v54;
      v23 = v55;
      sub_10000E9DC(v56);
    }

    sub_10002B7FC(v62);
    v25 = sub_100029C70(v24, v23, v61);

    *(v19 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v16, v17, "[%s] Sending request %s via %s.", v19, 0x20u);
    swift_arrayDestroy();

    a4 = v18;
    a5 = v46;
    a6 = v47;
  }

  else
  {

    sub_10002B7FC(v62);
  }

  v47 = a10;
  sub_10002B7A0(a4, v62);
  if (v65 == 1)
  {
    sub_1000E0EF8();
  }

  else
  {

    sub_1000079B4(v62, v56);
  }

  v43 = v58;
  v45 = v57;
  v44 = sub_1000036AC(v56, v57);
  v42 = sub_10003E4B0(v53);
  v46 = v26;
  sub_10000ADE4(&unk_1001201F0, &unk_1000F1CF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F07C0;
  *&v62[0] = 0x6567617373656DLL;
  *(&v62[0] + 1) = 0xE700000000000000;
  sub_1000E2A08();
  *(inited + 96) = &type metadata for Data;
  *(inited + 72) = a5;
  *(inited + 80) = a6;
  sub_1000123E0(a5, a6);
  v28 = sub_10000C018(inited);
  swift_setDeallocating();
  sub_1000033C8(inited + 32, &qword_10011DEC0, &unk_1000F0490);
  sub_10002B7A0(a4, v62);
  v29 = a2;
  if (v65 == 1)
  {
    sub_10002B7FC(v62);
    v30 = sub_1000E2338();
    v32 = v31;
  }

  else
  {
    v30 = v63;
    v32 = v64;
    sub_10000E9DC(v62);
  }

  v33 = v50;
  v34 = v48;
  v35 = v52;
  (*(v50 + 16))(v48, v51, v52);
  v36 = (*(v33 + 80) + 25) & ~*(v33 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = v29;
  *(v37 + 24) = v53;
  (*(v33 + 32))(v37 + v36, v34, v35);
  v38 = v43;
  v39 = *(v43 + 200);

  v39(v42, v46, v28, v30, v32, 0, v47, v37, v45, v38);

  return sub_10000E9DC(v56);
}

uint64_t sub_1000B7948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = sub_1000E0E08();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_1000E1728();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v45 - v18;
  if (a3)
  {
    swift_willThrow();
    v20 = a3;
LABEL_13:
    swift_errorRetain();
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v25 = sub_1000E1F08();
    sub_1000049D0(v25, qword_1001231A0);

    swift_errorRetain();
    v26 = sub_1000E1EE8();
    v27 = sub_1000E2678();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v51[0] = swift_slowAlloc();
      *v28 = 136315650;
      *(v28 + 4) = sub_100029C70(*(a4 + 16), *(a4 + 24), v51);
      *(v28 + 12) = 2080;
      v30 = sub_10003E4B0(a5);
      v32 = sub_100029C70(v30, v31, v51);

      *(v28 + 14) = v32;
      *(v28 + 22) = 2112;
      swift_errorRetain();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 24) = v33;
      *v29 = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "[%s] Request failed %s: %@.", v28, 0x20u);
      sub_1000033C8(v29, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    *&v51[0] = v20;
    sub_10000ADE4(&qword_100120258, &unk_1000F34E0);
    return sub_1000E24C8();
  }

  if (!a1)
  {
    goto LABEL_10;
  }

  v48 = v17;
  v49 = 0x6567617373656DLL;
  v50 = 0xE700000000000000;
  sub_1000E2A08();
  if (!*(a1 + 16) || (v21 = sub_10000B3E0(v51), (v22 & 1) == 0))
  {
    sub_10000C1C0(v51);
LABEL_10:
    v53 = 0u;
    v54 = 0u;
    goto LABEL_11;
  }

  sub_1000153C0(*(a1 + 56) + 32 * v21, &v53);
  sub_10000C1C0(v51);
  if (!*(&v54 + 1))
  {
LABEL_11:
    sub_1000033C8(&v53, &unk_10011ECF0, &qword_1000F08A0);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    sub_100058DE4();
    v20 = swift_allocError();
    *v24 = 1;
    swift_willThrow();
    goto LABEL_13;
  }

  v23 = v51[0];
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  sub_1000123E0(v23, *(&v23 + 1));
  sub_1000E0DF8();
  sub_1000041BC(&unk_100120260, 255, &type metadata accessor for NCProtoDeviceTokenResponse);
  v46 = *(&v23 + 1);
  v47 = v23;
  sub_1000E0E18();
  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v35 = sub_1000E1F08();
  sub_1000049D0(v35, qword_1001231A0);

  v36 = sub_1000E1EE8();
  v37 = sub_1000E2698();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *&v51[0] = swift_slowAlloc();
    *v38 = 136315394;
    *(v38 + 4) = sub_100029C70(*(a4 + 16), *(a4 + 24), v51);
    *(v38 + 12) = 2080;
    v39 = sub_10003E4B0(a5);
    v41 = sub_100029C70(v39, v40, v51);

    *(v38 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v36, v37, "[%s] Response received for %s.", v38, 0x16u);
    swift_arrayDestroy();
  }

  v43 = v46;
  v42 = v47;
  v44 = v48;
  (*(v12 + 16))(v16, v19, v48);
  sub_10000ADE4(&qword_100120258, &unk_1000F34E0);
  sub_1000E24D8();
  sub_100006660(v42, v43);
  return (*(v12 + 8))(v19, v44);
}

uint64_t sub_1000B7FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = sub_1000E0E08();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_1000E1658();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v45 - v18;
  if (a3)
  {
    swift_willThrow();
    v20 = a3;
LABEL_13:
    swift_errorRetain();
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v25 = sub_1000E1F08();
    sub_1000049D0(v25, qword_1001231A0);

    swift_errorRetain();
    v26 = sub_1000E1EE8();
    v27 = sub_1000E2678();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v51[0] = swift_slowAlloc();
      *v28 = 136315650;
      *(v28 + 4) = sub_100029C70(*(a4 + 16), *(a4 + 24), v51);
      *(v28 + 12) = 2080;
      v30 = sub_10003E4B0(a5);
      v32 = sub_100029C70(v30, v31, v51);

      *(v28 + 14) = v32;
      *(v28 + 22) = 2112;
      swift_errorRetain();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 24) = v33;
      *v29 = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "[%s] Request failed %s: %@.", v28, 0x20u);
      sub_1000033C8(v29, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    *&v51[0] = v20;
    sub_10000ADE4(&qword_100120218, &qword_1000F3428);
    return sub_1000E24C8();
  }

  if (!a1)
  {
    goto LABEL_10;
  }

  v48 = v17;
  v49 = 0x6567617373656DLL;
  v50 = 0xE700000000000000;
  sub_1000E2A08();
  if (!*(a1 + 16) || (v21 = sub_10000B3E0(v51), (v22 & 1) == 0))
  {
    sub_10000C1C0(v51);
LABEL_10:
    v53 = 0u;
    v54 = 0u;
    goto LABEL_11;
  }

  sub_1000153C0(*(a1 + 56) + 32 * v21, &v53);
  sub_10000C1C0(v51);
  if (!*(&v54 + 1))
  {
LABEL_11:
    sub_1000033C8(&v53, &unk_10011ECF0, &qword_1000F08A0);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    sub_100058DE4();
    v20 = swift_allocError();
    *v24 = 1;
    swift_willThrow();
    goto LABEL_13;
  }

  v23 = v51[0];
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  sub_1000123E0(v23, *(&v23 + 1));
  sub_1000E0DF8();
  sub_1000041BC(&qword_100120220, 255, &type metadata accessor for NCProtoDisconnectResponse);
  v46 = *(&v23 + 1);
  v47 = v23;
  sub_1000E0E18();
  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v35 = sub_1000E1F08();
  sub_1000049D0(v35, qword_1001231A0);

  v36 = sub_1000E1EE8();
  v37 = sub_1000E2698();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *&v51[0] = swift_slowAlloc();
    *v38 = 136315394;
    *(v38 + 4) = sub_100029C70(*(a4 + 16), *(a4 + 24), v51);
    *(v38 + 12) = 2080;
    v39 = sub_10003E4B0(a5);
    v41 = sub_100029C70(v39, v40, v51);

    *(v38 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v36, v37, "[%s] Response received for %s.", v38, 0x16u);
    swift_arrayDestroy();
  }

  v43 = v46;
  v42 = v47;
  v44 = v48;
  (*(v12 + 16))(v16, v19, v48);
  sub_10000ADE4(&qword_100120218, &qword_1000F3428);
  sub_1000E24D8();
  sub_100006660(v42, v43);
  return (*(v12 + 8))(v19, v44);
}

uint64_t sub_1000B8618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = sub_1000E0E08();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_1000E1928();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v45 - v18;
  if (a3)
  {
    swift_willThrow();
    v20 = a3;
LABEL_13:
    swift_errorRetain();
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v25 = sub_1000E1F08();
    sub_1000049D0(v25, qword_1001231A0);

    swift_errorRetain();
    v26 = sub_1000E1EE8();
    v27 = sub_1000E2678();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v51[0] = swift_slowAlloc();
      *v28 = 136315650;
      *(v28 + 4) = sub_100029C70(*(a4 + 16), *(a4 + 24), v51);
      *(v28 + 12) = 2080;
      v30 = sub_10003E4B0(a5);
      v32 = sub_100029C70(v30, v31, v51);

      *(v28 + 14) = v32;
      *(v28 + 22) = 2112;
      swift_errorRetain();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 24) = v33;
      *v29 = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "[%s] Request failed %s: %@.", v28, 0x20u);
      sub_1000033C8(v29, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    *&v51[0] = v20;
    sub_10000ADE4(&qword_1001201E8, &unk_1000F33A8);
    return sub_1000E24C8();
  }

  if (!a1)
  {
    goto LABEL_10;
  }

  v48 = v17;
  v49 = 0x6567617373656DLL;
  v50 = 0xE700000000000000;
  sub_1000E2A08();
  if (!*(a1 + 16) || (v21 = sub_10000B3E0(v51), (v22 & 1) == 0))
  {
    sub_10000C1C0(v51);
LABEL_10:
    v53 = 0u;
    v54 = 0u;
    goto LABEL_11;
  }

  sub_1000153C0(*(a1 + 56) + 32 * v21, &v53);
  sub_10000C1C0(v51);
  if (!*(&v54 + 1))
  {
LABEL_11:
    sub_1000033C8(&v53, &unk_10011ECF0, &qword_1000F08A0);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    sub_100058DE4();
    v20 = swift_allocError();
    *v24 = 1;
    swift_willThrow();
    goto LABEL_13;
  }

  v23 = v51[0];
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  sub_1000123E0(v23, *(&v23 + 1));
  sub_1000E0DF8();
  sub_1000041BC(&qword_100120200, 255, &type metadata accessor for NCProtoLagunaConnectionResponse);
  v46 = *(&v23 + 1);
  v47 = v23;
  sub_1000E0E18();
  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v35 = sub_1000E1F08();
  sub_1000049D0(v35, qword_1001231A0);

  v36 = sub_1000E1EE8();
  v37 = sub_1000E2698();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *&v51[0] = swift_slowAlloc();
    *v38 = 136315394;
    *(v38 + 4) = sub_100029C70(*(a4 + 16), *(a4 + 24), v51);
    *(v38 + 12) = 2080;
    v39 = sub_10003E4B0(a5);
    v41 = sub_100029C70(v39, v40, v51);

    *(v38 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v36, v37, "[%s] Response received for %s.", v38, 0x16u);
    swift_arrayDestroy();
  }

  v43 = v46;
  v42 = v47;
  v44 = v48;
  (*(v12 + 16))(v16, v19, v48);
  sub_10000ADE4(&qword_1001201E8, &unk_1000F33A8);
  sub_1000E24D8();
  sub_100006660(v42, v43);
  return (*(v12 + 8))(v19, v44);
}

uint64_t sub_1000B8C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = sub_1000E0E08();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_1000E13B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v45 - v18;
  if (a3)
  {
    swift_willThrow();
    v20 = a3;
LABEL_13:
    swift_errorRetain();
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v25 = sub_1000E1F08();
    sub_1000049D0(v25, qword_1001231A0);

    swift_errorRetain();
    v26 = sub_1000E1EE8();
    v27 = sub_1000E2678();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v51[0] = swift_slowAlloc();
      *v28 = 136315650;
      *(v28 + 4) = sub_100029C70(*(a4 + 16), *(a4 + 24), v51);
      *(v28 + 12) = 2080;
      v30 = sub_10003E4B0(a5);
      v32 = sub_100029C70(v30, v31, v51);

      *(v28 + 14) = v32;
      *(v28 + 22) = 2112;
      swift_errorRetain();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 24) = v33;
      *v29 = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "[%s] Request failed %s: %@.", v28, 0x20u);
      sub_1000033C8(v29, &unk_10011EAC0, &unk_1000F0E60);

      swift_arrayDestroy();
    }

    *&v51[0] = v20;
    sub_10000ADE4(&qword_100120278, &qword_1000F34F8);
    return sub_1000E24C8();
  }

  if (!a1)
  {
    goto LABEL_10;
  }

  v48 = v17;
  v49 = 0x6567617373656DLL;
  v50 = 0xE700000000000000;
  sub_1000E2A08();
  if (!*(a1 + 16) || (v21 = sub_10000B3E0(v51), (v22 & 1) == 0))
  {
    sub_10000C1C0(v51);
LABEL_10:
    v53 = 0u;
    v54 = 0u;
    goto LABEL_11;
  }

  sub_1000153C0(*(a1 + 56) + 32 * v21, &v53);
  sub_10000C1C0(v51);
  if (!*(&v54 + 1))
  {
LABEL_11:
    sub_1000033C8(&v53, &unk_10011ECF0, &qword_1000F08A0);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    sub_100058DE4();
    v20 = swift_allocError();
    *v24 = 1;
    swift_willThrow();
    goto LABEL_13;
  }

  v23 = v51[0];
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  sub_1000123E0(v23, *(&v23 + 1));
  sub_1000E0DF8();
  sub_1000041BC(&qword_100120280, 255, &type metadata accessor for NCProtoCallStateResponse);
  v46 = *(&v23 + 1);
  v47 = v23;
  sub_1000E0E18();
  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v35 = sub_1000E1F08();
  sub_1000049D0(v35, qword_1001231A0);

  v36 = sub_1000E1EE8();
  v37 = sub_1000E2698();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *&v51[0] = swift_slowAlloc();
    *v38 = 136315394;
    *(v38 + 4) = sub_100029C70(*(a4 + 16), *(a4 + 24), v51);
    *(v38 + 12) = 2080;
    v39 = sub_10003E4B0(a5);
    v41 = sub_100029C70(v39, v40, v51);

    *(v38 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v36, v37, "[%s] Response received for %s.", v38, 0x16u);
    swift_arrayDestroy();
  }

  v43 = v46;
  v42 = v47;
  v44 = v48;
  (*(v12 + 16))(v16, v19, v48);
  sub_10000ADE4(&qword_100120278, &qword_1000F34F8);
  sub_1000E24D8();
  sub_100006660(v42, v43);
  return (*(v12 + 8))(v19, v44);
}

uint64_t sub_1000B92E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_10000B348(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1000CB8BC();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = sub_1000E0D68();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_1000C9AE0(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_1000B93B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_10000B348(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000CBCE0();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_1000E0D68();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = sub_10000ADE4(&qword_10011EBB0, &qword_1000F04F0);
    v22 = *(v15 - 8);
    sub_10000CAF4(v14 + *(v22 + 72) * v8, a2);
    sub_1000C9FB4(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_10000ADE4(&qword_10011EBB0, &qword_1000F04F0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1000B9550()
{
  v0 = sub_1000E1F08();
  sub_10002B948(v0, qword_100120060);
  sub_1000049D0(v0, qword_100120060);
  return sub_1000E1EF8();
}

uint64_t sub_1000B95D0()
{
  v0 = [objc_allocWithZone(TUFeatureFlags) init];
  if (qword_10011DCB8 != -1)
  {
    swift_once();
  }

  v1 = qword_1001231D8;
  v2 = type metadata accessor for CallPublisher();
  v13[3] = v2;
  v13[4] = &off_100116E48;
  v13[0] = v1;
  type metadata accessor for ContinuitySessionServer();
  v3 = swift_allocObject();
  v4 = sub_1000037BC(v13, v2);
  v5 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  swift_retain_n();
  v10 = sub_1000CCFAC(v0, v9, v3);

  result = sub_10000E9DC(v13);
  qword_100123118 = v10;
  return result;
}

uint64_t sub_1000B9764()
{
  sub_1000E2A88(64);
  v4._countAndFlagsBits = 0xD000000000000027;
  v4._object = 0x80000001000EC410;
  sub_1000E23A8(v4);
  sub_1000E23A8(*v0);
  v5._object = 0x80000001000EC440;
  v5._countAndFlagsBits = 0xD000000000000014;
  sub_1000E23A8(v5);
  if (*(v0 + 24))
  {
    v1._countAndFlagsBits = 1702195828;
  }

  else
  {
    v1._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + 24))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  v1._object = v2;
  sub_1000E23A8(v1);

  v6._countAndFlagsBits = 62;
  v6._object = 0xE100000000000000;
  sub_1000E23A8(v6);
  return 0;
}

void sub_1000B9850()
{
  sub_10000ADE4(&qword_10011E258, &qword_1000F0860);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000F1FC0;
  *(v0 + 32) = sub_1000E2338();
  *(v0 + 40) = v1;
  v2 = TUPreferredFaceTimeBundleIdentifier();
  v3 = sub_1000E2338();
  v5 = v4;

  *(v0 + 48) = v3;
  *(v0 + 56) = v5;
  qword_100120078 = v0;
}

uint64_t sub_1000B98E4()
{
  v1 = v0;
  if (qword_10011DC40 != -1)
  {
    swift_once();
  }

  v2 = sub_1000E1F08();
  sub_1000049D0(v2, qword_100120060);

  v3 = sub_1000E1EE8();
  v4 = sub_1000E2698();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v30 = v6;
    *v5 = 136315138;
    v7 = *(v1 + 128);
    if (v7)
    {
      v8 = *(v1 + 120);
      v9 = *(v1 + 152);
      v23 = *(v1 + 136);
      v24 = v9;
      v25 = *(v1 + 168);
      v21 = v8;
      v22 = v7;
      v26[0] = v8;
      v26[1] = v7;
      v27 = v23;
      v28 = v9;
      v29 = v25;
      sub_1000A9C1C(v26, v20);
      v10 = sub_1000E2368();
      v12 = v11;
    }

    else
    {
      v12 = 0xE300000000000000;
      v10 = 7104878;
    }

    v13 = sub_100029C70(v10, v12, &v30);

    *(v5 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Camera continuity session updated to %s", v5, 0xCu);
    sub_10000E9DC(v6);
  }

  if (([*(v1 + 232) isGreenTea] & 1) == 0)
  {
    v18 = *(v1 + 192);
    goto LABEL_12;
  }

  v14 = *(v1 + 248);
  v15 = TUGreenTeaLagunaEnabled();
  v16 = *(v1 + 192);
  if (v15)
  {
LABEL_12:
    v17 = *(v1 + 128) != 0;
    goto LABEL_13;
  }

  v17 = 0;
LABEL_13:
  LOBYTE(v26[0]) = v17;
  return sub_1000E1FE8();
}

uint64_t sub_1000B9AE8(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v14 - v8;
  v10 = sub_1000E2538();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v11;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  *(v12 + 56) = a3;

  sub_100022F54(0, 0, v9, &unk_1000F34C0, v12);
}

uint64_t sub_1000B9C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 80) = a5;
  *(v7 + 40) = a1;
  *(v7 + 48) = a4;
  return _swift_task_switch(sub_1000B9C88, 0, 0);
}

uint64_t sub_1000B9C88()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1000B9D4C, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1000B9D4C()
{
  v1 = *(v0 + 72);
  sub_1000C3CA0(*(v0 + 80), *(v0 + 56), *(v0 + 64));

  return _swift_task_switch(sub_100065074, 0, 0);
}

void sub_1000B9DC4(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_10011DC40 != -1)
    {
      swift_once();
    }

    v1 = sub_1000E1F08();
    sub_1000049D0(v1, qword_100120060);
    swift_errorRetain();
    oslog = sub_1000E1EE8();
    v2 = sub_1000E2678();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138412290;
      swift_errorRetain();
      v5 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Failed to activate remote display discovery due to %@", v3, 0xCu);
      sub_1000033C8(v4, &unk_10011EAC0, &unk_1000F0E60);
    }

    else
    {
    }
  }
}

uint64_t sub_1000B9F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 208) = a4;
  v5 = *(*(sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30) - 8) + 64) + 15;
  *(v4 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_1000BA010, 0, 0);
}

uint64_t sub_1000BA010()
{
  v1 = v0[26];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[28] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1000BA0D4, Strong, 0);
  }

  else
  {
    v3 = v0[27];

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1000BA0D4()
{
  v1 = *(v0 + 224);
  v2 = *(v1 + 152);
  v3 = *(v1 + 168);
  v4 = *(v1 + 136);
  *(v0 + 16) = *(v1 + 120);
  *(v0 + 32) = v4;
  *(v0 + 48) = v2;
  *(v0 + 64) = v3;
  v5 = *(v0 + 24);
  if (v5)
  {
    v6 = *(v0 + 16);
    v7 = *(v0 + 32);
    v8 = *(v0 + 40);
    v9 = *(v1 + 145);
    v10 = *(v1 + 161);
    *(v0 + 175) = *(v1 + 176);
    *(v0 + 144) = v9;
    *(v0 + 160) = v10;
    if ((v8 & 1) == 0)
    {
      v11 = *(v0 + 216);
      v12 = sub_1000E2538();
      (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
      v14 = sub_1000041BC(&unk_1001200D0, v13, type metadata accessor for ContinuitySessionServer);
      v15 = swift_allocObject();
      *(v15 + 16) = v1;
      *(v15 + 24) = v14;
      *(v15 + 32) = v1;
      *(v15 + 40) = v6;
      *(v15 + 48) = v5;
      *(v15 + 56) = v7;
      *(v15 + 64) = v8;
      v16 = *(v0 + 160);
      *(v15 + 65) = *(v0 + 144);
      *(v15 + 81) = v16;
      *(v15 + 96) = *(v0 + 175);
      swift_retain_n();
      sub_10000CB64(v0 + 16, v0 + 80, &unk_10011FA58, &unk_1000F25E0);
      sub_1000223DC(0, 0, v11, &unk_1000F34B0, v15);
    }
  }

  return _swift_task_switch(sub_1000BA2A0, 0, 0);
}

uint64_t sub_1000BA2A0()
{
  v1 = v0[28];

  v2 = v0[27];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000BA30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  v9 = sub_1000E2538();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  sub_1000223DC(0, 0, v8, a4, v11);
}

uint64_t sub_1000BA478()
{
  v1 = v0[37];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[38] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1000BA534, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1000BA534()
{
  v1 = *(v0 + 304);
  v2 = *(v1 + 136);
  v3 = *(v1 + 168);
  v4 = *(v1 + 120);
  *(v0 + 112) = *(v1 + 152);
  *(v0 + 128) = v3;
  *(v0 + 80) = v4;
  *(v0 + 96) = v2;
  v5 = *(v0 + 88);
  if (v5)
  {
    v6 = *(v0 + 104);
    v7 = *(v0 + 96);
    *(v0 + 16) = *(v0 + 80);
    *(v0 + 24) = v5;
    *(v0 + 32) = v7;
    *(v0 + 40) = v6;
    v8 = *(v1 + 176);
    v9 = *(v1 + 161);
    *(v0 + 41) = *(v1 + 145);
    *(v0 + 57) = v9;
    *(v0 + 72) = v8;
    if (v6)
    {
      v10 = *(v1 + 120);
      v11 = *(v1 + 136);
      v12 = *(v1 + 168);
      *(v0 + 176) = *(v1 + 152);
      *(v0 + 192) = v12;
      *(v0 + 144) = v10;
      *(v0 + 160) = v11;
      sub_1000A9C1C(v0 + 144, v0 + 208);
      sub_1000C4FF4(v0 + 16, v1);
      sub_1000033C8(v0 + 80, &unk_10011FA58, &unk_1000F25E0);
    }
  }

  return _swift_task_switch(sub_1000BA634, 0, 0);
}

uint64_t sub_1000BA634()
{
  v1 = *(v0 + 304);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000BA698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[23] = a2;
  v3[24] = a3;
  v4 = sub_1000E2118();
  v3[25] = v4;
  v5 = *(v4 - 8);
  v3[26] = v5;
  v6 = *(v5 + 64) + 15;
  v3[27] = swift_task_alloc();
  v7 = sub_1000E2148();
  v3[28] = v7;
  v8 = *(v7 - 8);
  v3[29] = v8;
  v9 = *(v8 + 64) + 15;
  v3[30] = swift_task_alloc();

  return _swift_task_switch(sub_1000BA7B4, 0, 0);
}

uint64_t sub_1000BA7B4()
{
  v1 = *(v0 + 192);
  sub_1000036AC(*(v0 + 184), *(*(v0 + 184) + 24));
  type metadata accessor for CallPublisher();
  sub_1000DCE7C((v0 + 104));
  v2 = *(v0 + 128);
  v3 = sub_1000036AC((v0 + 104), v2);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  (*(v4 + 16))(v6, v3, v2);
  *(v0 + 88) = swift_getAssociatedTypeWitness();
  *(v0 + 96) = swift_getAssociatedConformanceWitness();
  sub_100006FD8((v0 + 64));
  sub_1000E25C8();

  sub_10000E9DC((v0 + 104));
  swift_beginAccess();
  v7 = *(v0 + 96);
  sub_1000037BC(v0 + 64, *(v0 + 88));
  v8 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v9 = swift_task_alloc();
  *(v0 + 248) = v9;
  *v9 = v0;
  v9[1] = sub_10000308C;

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 168, 0, 0);
}

uint64_t sub_1000BA9C4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(v2 + 136);
  v28[0] = *(v2 + 120);
  v28[1] = v6;
  v7 = *(v2 + 168);
  v28[2] = *(v2 + 152);
  v28[3] = v7;
  v8 = v28[0];
  if (!*(&v28[0] + 1))
  {
    v24 = *&v28[0];
    v10 = *(v2 + 152);
    v25 = *(v2 + 136);
    v26 = v10;
    v27 = *(v2 + 168);
    sub_10000CB64(v28, &v20, &unk_10011FA58, &unk_1000F25E0);
    result = sub_1000033C8(&v24, &unk_10011FA58, &unk_1000F25E0);
    goto LABEL_7;
  }

  v24 = v28[0];
  v9 = *(v2 + 152);
  v25 = *(v2 + 136);
  v26 = v9;
  v27 = *(v2 + 168);
  sub_10000CB64(v28, &v20, &unk_10011FA58, &unk_1000F25E0);

  sub_1000033C8(&v24, &unk_10011FA58, &unk_1000F25E0);
  if (v8 != __PAIR128__(v5, v4))
  {
    v12 = sub_1000E2C68();

    if (v12)
    {
      goto LABEL_6;
    }

LABEL_7:
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    goto LABEL_8;
  }

LABEL_6:
  v13 = *(v2 + 136);
  v20 = *(v2 + 120);
  v21 = v13;
  v14 = *(v2 + 168);
  v22 = *(v2 + 152);
  v23 = v14;
  result = sub_10000CB64(&v20, &v19, &unk_10011FA58, &unk_1000F25E0);
  v15 = v20;
  v16 = v21;
  v17 = v22;
  v18 = v23;
LABEL_8:
  *a2 = v15;
  a2[1] = v16;
  a2[2] = v17;
  a2[3] = v18;
  return result;
}

uint64_t sub_1000BAB70(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000BAB94, v2, 0);
}

uint64_t sub_1000BAB94()
{
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v0 = qword_1001230E0;

  return _swift_task_switch(sub_1000BAC28, v0, 0);
}

uint64_t sub_1000BAC28()
{
  v1 = v0[2];
  if (*(v1 + 72))
  {
    v2 = *(v1 + 64);
    v3 = *(v1 + 72);

    v12._countAndFlagsBits = 0x5654656C707041;
    v12._object = 0xE700000000000000;
    LOBYTE(v2) = sub_1000E2408(v12);

    if (v2)
    {
      v4 = swift_task_alloc();
      v0[5] = v4;
      *v4 = v0;
      v4[1] = sub_1000BAEEC;
      v5 = v0[3];
      v6 = v0[4];
      v7 = v0[2];

      return sub_1000BAFE0(v7, v5);
    }

    v9 = v0[4];
    v10 = sub_1000BAD54;
  }

  else
  {
    v9 = v0[4];
    v10 = sub_1000CF7A8;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1000BAD54()
{
  v11 = v0;
  if (qword_10011DC40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_1000E1F08();
  sub_1000049D0(v2, qword_100120060);

  v3 = sub_1000E1EE8();
  v4 = sub_1000E2678();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100029C70(*(v5 + 16), *(v5 + 24), &v10);
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to prepare for handoff with %s because the device type is unknown.", v6, 0xCu);
    sub_10000E9DC(v7);
  }

  TUMakeNeighborhoodConduitError();
  swift_willThrow();
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000BAEEC()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000BAFE0(uint64_t a1, uint64_t a2)
{
  v3[148] = v2;
  v3[147] = a2;
  v3[146] = a1;
  v4 = sub_1000E18B8();
  v3[149] = v4;
  v5 = *(v4 - 8);
  v3[150] = v5;
  v6 = *(v5 + 64) + 15;
  v3[151] = swift_task_alloc();
  v7 = sub_1000E1928();
  v3[152] = v7;
  v8 = *(v7 - 8);
  v3[153] = v8;
  v9 = *(v8 + 64) + 15;
  v3[154] = swift_task_alloc();
  v10 = sub_1000E0D68();
  v3[155] = v10;
  v11 = *(v10 - 8);
  v3[156] = v11;
  v12 = *(v11 + 64) + 15;
  v3[157] = swift_task_alloc();
  v13 = sub_1000E19D8();
  v3[158] = v13;
  v14 = *(v13 - 8);
  v3[159] = v14;
  v15 = *(v14 + 64) + 15;
  v3[160] = swift_task_alloc();
  v3[161] = swift_task_alloc();
  v16 = swift_task_alloc();
  v3[162] = v16;
  *v16 = v3;
  v16[1] = sub_1000BB1FC;

  return sub_100014704();
}

uint64_t sub_1000BB1FC(uint64_t a1)
{
  v3 = *(*v2 + 1296);
  v4 = *v2;
  v4[163] = a1;
  v4[164] = v1;

  if (v1)
  {
    v5 = v4[161];
    v6 = v4[160];
    v7 = v4[157];
    v8 = v4[154];
    v9 = v4[151];

    v10 = v4[1];

    return v10();
  }

  else
  {
    v12 = v4[148];

    return _swift_task_switch(sub_1000BB384, v12, 0);
  }
}

uint64_t sub_1000BB384()
{
  v117 = v0;
  v1 = *(v0 + 1184);
  if (*(v1 + 128))
  {
    v2 = *(v0 + 1184);
    if (qword_10011DC40 != -1)
    {
      swift_once();
      v108 = *(v0 + 1184);
    }

    v3 = *(v0 + 1168);
    v4 = sub_1000E1F08();
    sub_1000049D0(v4, qword_100120060);

    v5 = sub_1000E1EE8();
    v6 = sub_1000E2678();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 1168);
      v8 = swift_slowAlloc();
      v116[0] = swift_slowAlloc();
      *v8 = 136315394;
      *(v8 + 4) = sub_100029C70(*(v7 + 16), *(v7 + 24), v116);
      *(v8 + 12) = 2080;
      v9 = *(v1 + 128);
      if (v9)
      {
        v10 = *(v1 + 120);
        v11 = *(v1 + 136);
        v12 = *(v1 + 152);
        *(v0 + 1088) = *(v1 + 168);
        *(v0 + 1072) = v12;
        *(v0 + 1056) = v11;
        *(v0 + 1040) = v10;
        *(v0 + 1048) = v9;
        *(v0 + 976) = v10;
        *(v0 + 984) = v9;
        v13 = *(v1 + 136);
        v14 = *(v1 + 168);
        *(v0 + 1008) = *(v1 + 152);
        *(v0 + 1024) = v14;
        *(v0 + 992) = v13;
        sub_1000A9C1C(v0 + 976, v0 + 1104);
        v15 = sub_1000E2368();
        v17 = v16;
      }

      else
      {
        v17 = 0xE300000000000000;
        v15 = 7104878;
      }

      v41 = sub_100029C70(v15, v17, v116);

      *(v8 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v5, v6, "Cannot initiate session with %s while camera session already exists: %s", v8, 0x16u);
      swift_arrayDestroy();
    }

    v42 = *(v0 + 1304);
    TUMakeNeighborhoodConduitError();
    swift_willThrow();

    v43 = *(v0 + 1288);
    v44 = *(v0 + 1280);
    v45 = *(v0 + 1256);
    v46 = *(v0 + 1232);
    v47 = *(v0 + 1208);

    v48 = *(v0 + 8);

    return v48();
  }

  v18 = *(v1 + 120);
  v19 = *(v1 + 136);
  v20 = *(v1 + 168);
  *(v0 + 112) = *(v1 + 152);
  *(v0 + 128) = v20;
  *(v0 + 80) = v18;
  *(v0 + 96) = v19;
  v21 = *(v0 + 80);
  v22 = *(v0 + 88);
  v23 = *(v0 + 136);
  if (v22)
  {
    *(v0 + 144) = v21;
    *(v0 + 152) = v22;
    v24 = *(v1 + 152);
    v25 = *(v1 + 168);
    *(v0 + 160) = *(v1 + 136);
    *(v0 + 176) = v24;
    *(v0 + 192) = v25;
    *(v0 + 200) = v23;
    sub_10000CB64(v0 + 80, v0 + 208, &unk_10011FA58, &unk_1000F25E0);
    v26 = v23;
    sub_1000033C8(v0 + 144, &unk_10011FA58, &unk_1000F25E0);
LABEL_24:
    *(v0 + 1320) = v26;
    v60 = *(v0 + 1184);
    v61 = *(v1 + 152);
    v62 = *(v1 + 168);
    v63 = *(v1 + 136);
    *(v0 + 272) = *(v1 + 120);
    *(v0 + 288) = v63;
    *(v0 + 304) = v61;
    *(v0 + 320) = v62;
    v64 = *(v0 + 272);
    v65 = *(v0 + 280);
    v66 = *(v0 + 304);
    v67 = *(v0 + 312);
    if (v65)
    {
      *(v0 + 336) = v64;
      *(v0 + 344) = v65;
      *(v0 + 352) = *(v60 + 136);
      v112 = v66;
      *(v0 + 368) = v66;
      *(v0 + 376) = v67;
      *(v0 + 384) = *(v60 + 168);
      sub_10000CB64(v0 + 272, v0 + 400, &unk_10011FA58, &unk_1000F25E0);

      sub_1000033C8(v0 + 336, &unk_10011FA58, &unk_1000F25E0);
    }

    else
    {
      v68 = *(v0 + 1256);
      v69 = *(v0 + 1248);
      v70 = *(v0 + 1240);
      *(v0 + 720) = v64;
      *(v0 + 728) = 0;
      *(v0 + 736) = *(v60 + 136);
      *(v0 + 752) = v66;
      *(v0 + 760) = v67;
      *(v0 + 768) = *(v60 + 168);
      sub_10000CB64(v0 + 272, v0 + 784, &unk_10011FA58, &unk_1000F25E0);
      sub_1000033C8(v0 + 720, &unk_10011FA58, &unk_1000F25E0);
      sub_1000E0D58();
      v112 = sub_1000E0D08();
      v67 = v71;
      (*(v69 + 8))(v68, v70);
    }

    v72 = *(v0 + 1184);
    v73 = *(v0 + 1168);
    v115 = *(v73 + 16);
    *(v0 + 1328) = v115;
    v74 = *(v73 + 24);
    *(v0 + 1336) = v74;
    v75 = *(v72 + 240);
    *(v0 + 1344) = v75;

    v76 = [v75 dedicatedDevice];
    if (v76)
    {
      v77 = v76;
      v78 = v26;
      v79 = [v76 idsDeviceIdentifier];
      if (v79)
      {
        v80 = v79;
        v81 = sub_1000E2338();
        v83 = v82;

        if (v115 == v81 && v74 == v83)
        {
          v84 = 1;
        }

        else
        {
          v84 = sub_1000E2C68();
        }
      }

      else
      {
        v84 = 0;
      }
    }

    else
    {
      v78 = v26;
      v84 = 0;
    }

    v85 = *(v0 + 1304);
    v86 = *(v0 + 1184);
    v87 = v78;
    v88 = sub_10000C544(_swiftEmptyArrayStorage);
    *(v0 + 528) = v115;
    *(v0 + 536) = v74;
    *(v0 + 544) = v85;
    *(v0 + 552) = v84 & 1;
    *(v0 + 560) = v112;
    *(v0 + 568) = v67;
    *(v0 + 576) = v88;
    *(v0 + 584) = v87;
    v89 = *(v0 + 544);
    *(v0 + 16) = *(v0 + 528);
    *(v0 + 32) = v89;
    v90 = *(v0 + 576);
    v92 = *(v0 + 528);
    v91 = *(v0 + 544);
    *(v0 + 48) = *(v0 + 560);
    *(v0 + 64) = v90;
    v93 = *(v1 + 120);
    v94 = *(v1 + 136);
    v95 = *(v1 + 168);
    *(v0 + 496) = *(v1 + 152);
    *(v0 + 512) = v95;
    *(v0 + 464) = v93;
    *(v0 + 480) = v94;
    v96 = *(v0 + 560);
    *(v1 + 168) = *(v0 + 576);
    *(v1 + 152) = v96;
    *(v1 + 136) = v91;
    *(v1 + 120) = v92;
    sub_1000A9C1C(v0 + 528, v0 + 592);
    sub_1000A9C1C(v0 + 528, v0 + 656);

    sub_1000033C8(v0 + 464, &unk_10011FA58, &unk_1000F25E0);
    sub_1000B98E4();
    sub_1000A9D38(v0 + 528);
    [v87 boostQualityOfService];
    v97 = sub_1000E2328();
    v98 = sub_1000E2328();
    [v75 enterDiscoverySessionWithDevice:v97 reason:v98];

    if (qword_10011DC40 != -1)
    {
      swift_once();
    }

    v99 = *(v0 + 1168);
    v100 = sub_1000E1F08();
    *(v0 + 1352) = sub_1000049D0(v100, qword_100120060);

    v101 = sub_1000E1EE8();
    v102 = sub_1000E2698();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v116[0] = v104;
      *v103 = 136315138;
      *(v103 + 4) = sub_100029C70(v115, v74, v116);
      _os_log_impl(&_mh_execute_header, v101, v102, "[PrepareForHandoff] Requesting laguna connection with %s.", v103, 0xCu);
      sub_10000E9DC(v104);
    }

    v105 = swift_task_alloc();
    *(v0 + 1360) = v105;
    *v105 = v0;
    v105[1] = sub_1000BBE54;
    v106 = *(v0 + 1184);

    return sub_1000C49E4(v0 + 16);
  }

  v111 = *(v0 + 1288);
  v113 = *(v0 + 1280);
  v27 = *(v0 + 1272);
  v28 = *(v0 + 1264);
  *(v0 + 848) = v21;
  *(v0 + 856) = 0;
  v29 = *(v1 + 168);
  v30 = *(v1 + 152);
  *(v0 + 864) = *(v1 + 136);
  *(v0 + 880) = v30;
  *(v0 + 896) = v29;
  *(v0 + 904) = v23;
  sub_10000CB64(v0 + 80, v0 + 912, &unk_10011FA58, &unk_1000F25E0);
  sub_1000033C8(v0 + 848, &unk_10011FA58, &unk_1000F25E0);
  sub_10000ADE4(&qword_1001201D8, &qword_1000F33A0);
  v31 = *(v27 + 72);
  v32 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v33 = swift_allocObject();
  v34 = enum case for NCProtoStartLagunaSessionRequest.RecentCallFetchType.faceTime(_:);
  (*(v27 + 104))(v33 + v32, enum case for NCProtoStartLagunaSessionRequest.RecentCallFetchType.faceTime(_:), v28);
  v35 = *(v27 + 16);
  v36 = enum case for NCProtoStartLagunaSessionRequest.RecentCallFetchType.UNRECOGNIZED(_:);
  v109 = v32;
  v110 = v33;
  v35(v111, v33 + v32, v28);
  v35(v113, v111, v28);
  v38 = *(v27 + 88);
  v37 = v27 + 88;
  v39 = v38(v113, v28);
  v40 = 0;
  if (v39 == v36 || v39 == enum case for NCProtoStartLagunaSessionRequest.RecentCallFetchType.default(_:))
  {
LABEL_20:
    v50 = *(v0 + 1184);
    v51 = *(v37 - 80);
    v51(*(v0 + 1288), *(v0 + 1264));
    v52 = *(v50 + 208);
    v53 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:v40];
    v26 = [v52 objectForKey:v53];

    v54 = *(v0 + 1264);
    if (v26)
    {
      swift_setDeallocating();
      v55 = v110 + v109;
      v56 = v54;
    }

    else
    {
      v114 = *(v0 + 1264);
      v57 = [objc_opt_self() callHistoryControllerWithCoalescingStrategy:4 options:v40 shouldUpdateMetadataCache:0];
      v58 = objc_allocWithZone(NSNumber);
      v26 = v57;
      v59 = [v58 initWithUnsignedInteger:v40];
      [v52 setObject:v26 forKey:v59];

      swift_setDeallocating();
      v55 = v110 + v109;
      v56 = v114;
    }

    v51(v55, v56);
    swift_deallocClassInstance();
    goto LABEL_24;
  }

  if (v39 == v34)
  {
    v40 = 3;
    goto LABEL_20;
  }

  if (v39 == enum case for NCProtoStartLagunaSessionRequest.RecentCallFetchType.telephony(_:))
  {
    v40 = 4;
    goto LABEL_20;
  }

  v107 = *(v0 + 1264);

  return _diagnoseUnexpectedEnumCase<A>(type:)(v107, v107);
}

uint64_t sub_1000BBE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 1360);
  v6 = *(*v3 + 1184);
  v8 = *v3;
  v4[171] = a1;
  v4[172] = a2;
  v4[173] = a3;

  return _swift_task_switch(sub_1000BBF74, v6, 0);
}

uint64_t sub_1000BBF74()
{
  v1 = v0[148];
  v0[174] = sub_1000C571C((v0 + 2));
  v2 = swift_task_alloc();
  v0[175] = v2;
  *v2 = v0;
  v2[1] = sub_1000BC01C;
  v3 = v0[148];

  return sub_1000C6D08((v0 + 2));
}

uint64_t sub_1000BC01C(uint64_t a1)
{
  v2 = *(*v1 + 1400);
  v3 = *(*v1 + 1184);
  v5 = *v1;
  *(*v1 + 1408) = a1;

  return _swift_task_switch(sub_1000BC134, v3, 0);
}

uint64_t sub_1000BC134()
{
  v1 = v0[176];
  v2 = v0[174];
  v3 = v0[173];
  v4 = v0[172];
  v5 = v0[171];
  v15 = v0[151];
  v16 = v0[164];
  v6 = v0[149];
  v7 = v0[148];
  v8 = v0[147];
  v17 = *(v7 + 224);
  v18 = v0[167];
  v9 = swift_task_alloc();
  v9[2] = v7;
  v9[3] = v5;
  v9[4] = v4;
  v9[5] = v3;
  v9[6] = v8;
  v9[7] = v2;
  v9[8] = v1;
  sub_1000041BC(&unk_1001201C8, 255, &type metadata accessor for NCProtoLagunaConnectionRequest);
  sub_1000E0E38();

  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v0[177] = qword_1001230E0;
  v10 = swift_task_alloc();
  v0[178] = v10;
  *v10 = v0;
  v10[1] = sub_1000BC320;
  v11 = v0[166];
  v12 = v0[154];
  v13 = v0[151];

  return sub_1000B64F8(v12, 8, v13, v11, v18, 0);
}

uint64_t sub_1000BC320()
{
  v2 = *v1;
  v3 = *(*v1 + 1424);
  v4 = *v1;
  v2[179] = v0;

  v5 = v2[177];
  if (v0)
  {
    v6 = sub_1000BC5C0;
  }

  else
  {
    v7 = v2[165];
    v8 = v2[163];
    v9 = v2[154];
    v10 = v2[153];
    v11 = v2[152];

    (*(v10 + 8))(v9, v11);
    v6 = sub_1000BC490;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000BC490()
{
  v1 = v0[148];
  (*(v0[150] + 8))(v0[151], v0[149]);

  return _swift_task_switch(sub_1000BC510, v1, 0);
}

uint64_t sub_1000BC510()
{
  v1 = v0[161];
  v2 = v0[160];
  v3 = v0[157];
  v4 = v0[154];
  v5 = v0[151];
  sub_1000A9D38((v0 + 66));

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000BC5C0()
{
  v1 = v0[148];
  (*(v0[150] + 8))(v0[151], v0[149]);

  return _swift_task_switch(sub_1000BC640, v1, 0);
}

uint64_t sub_1000BC640()
{
  v1 = v0[179];
  v2 = v0[169];
  sub_1000A9D38((v0 + 66));
  swift_errorRetain();
  v3 = sub_1000E1EE8();
  v4 = sub_1000E2678();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[179];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "PrepareForHandoff] Failed to establish laguna connection due to %@.", v6, 0xCu);
    sub_1000033C8(v7, &unk_10011EAC0, &unk_1000F0E60);
  }

  v9 = v0[179];
  v10 = v0[168];
  v11 = v0[167];
  v12 = v0[166];
  v13 = v0[165];
  v14 = v0[163];
  v15 = v0[148];

  sub_1000BE71C(v12, v11);
  v16 = sub_1000E2328();
  [v10 exitDiscoverySessionWithReason:v16];

  swift_willThrow();

  v17 = v0[179];
  v18 = v0[161];
  v19 = v0[160];
  v20 = v0[157];
  v21 = v0[154];
  v22 = v0[151];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1000BC84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a6;
  v6 = sub_1000E0FE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C8FF4();
  sub_1000E1888();

  sub_1000E1858();

  sub_1000E1868();
  (*(v7 + 16))(v10, v13, v6);
  sub_1000E1898();

  sub_1000E18A8();

  return sub_1000E1878();
}

uint64_t sub_1000BC98C(uint64_t a1)
{
  *(v2 + 208) = a1;
  *(v2 + 216) = v1;
  return _swift_task_switch(sub_1000BC9AC, v1, 0);
}

uint64_t sub_1000BC9AC()
{
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v0 = qword_1001230E0;

  return _swift_task_switch(sub_1000BCA40, v0, 0);
}

uint64_t sub_1000BCA40()
{
  v1 = v0[26];
  if (*(v1 + 72) && (v2 = *(v1 + 64), v3 = *(v1 + 72), , v8._countAndFlagsBits = 0x5654656C707041, v8._object = 0xE700000000000000, LOBYTE(v2) = sub_1000E2408(v8), , (v2 & 1) != 0))
  {
    v4 = v0[27];

    return _swift_task_switch(sub_1000BCB18, v4, 0);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1000BCB18()
{
  v28 = v0;
  v1 = *(v0 + 216);
  v2 = *(v1 + 136);
  v3 = *(v1 + 168);
  v4 = *(v1 + 120);
  *(v0 + 48) = *(v1 + 152);
  *(v0 + 64) = v3;
  *(v0 + 16) = v4;
  *(v0 + 32) = v2;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  if (!v5)
  {
    *(v0 + 80) = v6;
    *(v0 + 88) = 0;
    v12 = *(v1 + 136);
    v13 = *(v1 + 168);
    *(v0 + 112) = *(v1 + 152);
    *(v0 + 128) = v13;
    *(v0 + 96) = v12;
    sub_10000CB64(v0 + 16, v0 + 144, &unk_10011FA58, &unk_1000F25E0);
    sub_1000033C8(v0 + 80, &unk_10011FA58, &unk_1000F25E0);
    goto LABEL_12;
  }

  v7 = *(v0 + 208);
  *(v0 + 80) = v6;
  *(v0 + 88) = v5;
  v8 = *(v1 + 168);
  v9 = *(v1 + 152);
  *(v0 + 96) = *(v1 + 136);
  *(v0 + 112) = v9;
  *(v0 + 128) = v8;
  sub_10000CB64(v0 + 16, v0 + 144, &unk_10011FA58, &unk_1000F25E0);

  sub_1000033C8(v0 + 80, &unk_10011FA58, &unk_1000F25E0);
  v10 = *(v7 + 16);
  v11 = *(v7 + 24);
  if (v6 == v10 && v5 == v11)
  {
  }

  else
  {
    v14 = *(v7 + 16);
    v15 = *(v7 + 24);
    v16 = sub_1000E2C68();

    if ((v16 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if (qword_10011DC40 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 208);
  v18 = sub_1000E1F08();
  sub_1000049D0(v18, qword_100120060);

  v19 = sub_1000E1EE8();
  v20 = sub_1000E2698();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v27 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_100029C70(v10, v11, &v27);
    _os_log_impl(&_mh_execute_header, v19, v20, "Camera session with %s is being torn down - exiting discovery session.", v21, 0xCu);
    sub_10000E9DC(v22);
  }

  v23 = *(*(v0 + 216) + 240);
  v24 = sub_1000E2328();
  [v23 exitDiscoverySessionWithReason:v24];

LABEL_12:
  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1000BCDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[79] = v3;
  v4[78] = a3;
  v4[77] = a2;
  v4[76] = a1;
  v5 = sub_1000E0D68();
  v4[80] = v5;
  v6 = *(v5 - 8);
  v4[81] = v6;
  v7 = *(v6 + 64) + 15;
  v4[82] = swift_task_alloc();
  v8 = sub_1000E19D8();
  v4[83] = v8;
  v9 = *(v8 - 8);
  v4[84] = v9;
  v10 = *(v9 + 64) + 15;
  v4[85] = swift_task_alloc();
  v4[86] = swift_task_alloc();

  return _swift_task_switch(sub_1000BCF20, v3, 0);
}

uint64_t sub_1000BCF20()
{
  v12 = v0;
  if (qword_10011DC40 != -1)
  {
    swift_once();
  }

  v1 = v0[78];
  v2 = sub_1000E1F08();
  v0[87] = sub_1000049D0(v2, qword_100120060);

  v3 = sub_1000E1EE8();
  v4 = sub_1000E2698();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[78];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100029C70(*(v5 + 16), *(v5 + 24), &v11);
    _os_log_impl(&_mh_execute_header, v3, v4, "Requesting to start Laguna session with %s.", v6, 0xCu);
    sub_10000E9DC(v7);
  }

  v8 = swift_task_alloc();
  v0[88] = v8;
  *v8 = v0;
  v8[1] = sub_1000BD0D4;
  v9 = v0[78];

  return sub_100014704();
}

uint64_t sub_1000BD0D4(uint64_t a1)
{
  v3 = *(*v2 + 704);
  v4 = *v2;
  v4[89] = a1;
  v4[90] = v1;

  if (v1)
  {
    v5 = v4[86];
    v6 = v4[85];
    v7 = v4[82];

    v8 = v4[1];

    return v8();
  }

  else
  {
    v10 = v4[79];

    return _swift_task_switch(sub_1000BD238, v10, 0);
  }
}

uint64_t sub_1000BD238()
{
  v1 = *(v0 + 720);
  sub_1000CD800();
  *(v0 + 728) = v1;
  if (v1)
  {
    v2 = *(v0 + 712);

    v3 = *(v0 + 688);
    v4 = *(v0 + 680);
    v5 = *(v0 + 656);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 632);
    v9 = *(v0 + 616);
    sub_1000BA9C4(*(v0 + 624), (v0 + 80));
    v45 = sub_1000E19E8();
    v10 = *(v45 + 16);
    if (v10)
    {
      v41 = 0;
      v11 = *(v0 + 672);
      v44 = enum case for NCProtoStartLagunaSessionRequest.RecentCallFetchType.UNRECOGNIZED(_:);
      v43 = enum case for NCProtoStartLagunaSessionRequest.RecentCallFetchType.default(_:);
      v42 = (v11 + 8);
      v40 = enum case for NCProtoStartLagunaSessionRequest.RecentCallFetchType.faceTime(_:);
      v39 = enum case for NCProtoStartLagunaSessionRequest.RecentCallFetchType.telephony(_:);
      v12 = 0;
      while (v12 < v10)
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_34;
        }

        v14 = *(v0 + 688);
        v15 = *(v0 + 680);
        v16 = *(v0 + 664);
        v17 = *(v11 + 16);
        v17(v14, v45 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v12, v16);
        v17(v15, v14, v16);
        v18 = (*(v11 + 88))(v15, v16);
        if (v18 == v44 || v18 == v43)
        {
          (*v42)(*(v0 + 688), *(v0 + 664));
          ++v12;
          if (v13 == v10)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v18 == v40)
          {
            v20 = 3;
          }

          else
          {
            if (v18 != v39)
            {
              goto LABEL_35;
            }

            v20 = 4;
          }

          (*v42)(*(v0 + 688), *(v0 + 664));
          v41 |= v20;
          if (v13 == v10)
          {
            goto LABEL_23;
          }

          v12 = v13;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      v38 = *(v0 + 664);

      return _diagnoseUnexpectedEnumCase<A>(type:)(v38, v38);
    }

    else
    {
      v41 = 3;
LABEL_23:
      v21 = *(*(v0 + 632) + 208);
      v22 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:v41];
      v23 = [v21 objectForKey:v22];

      if (!v23)
      {
        v24 = [objc_opt_self() callHistoryControllerWithCoalescingStrategy:4 options:v41 shouldUpdateMetadataCache:0];
        v25 = objc_allocWithZone(NSNumber);
        v23 = v24;
        v26 = [v25 initWithUnsignedInteger:v41];
        [v21 setObject:v23 forKey:v26];
      }

      v27 = *(v0 + 88);
      if (v27)
      {
        v28 = *(v0 + 136);
        v29 = *(v0 + 112);
        v30 = *(v0 + 104);
        v31 = *(v0 + 96);
        *(v0 + 464) = *(v0 + 80);
        *(v0 + 472) = v27;
        *(v0 + 480) = v31;
        *(v0 + 488) = v30 & 1;
        *(v0 + 496) = v29;
        v46 = *(v0 + 120);
        *(v0 + 504) = v46;
        *(v0 + 520) = v28;
        sub_10000CB64(v0 + 80, v0 + 528, &unk_10011FA58, &unk_1000F25E0);
        v32 = v46;

        sub_1000A9D38(v0 + 464);
      }

      else
      {
        v33 = *(v0 + 656);
        v34 = *(v0 + 648);
        v35 = *(v0 + 640);
        sub_1000E0D58();
        v29 = sub_1000E0D08();
        v32 = v36;
        (*(v34 + 8))(v33, v35);
      }

      *(v0 + 752) = v23;
      *(v0 + 744) = v32;
      *(v0 + 736) = v29;
      if (qword_10011DC18 != -1)
      {
        swift_once();
      }

      v37 = qword_1001230E0;
      *(v0 + 760) = qword_1001230E0;

      return _swift_task_switch(sub_1000BD6F4, v37, 0);
    }
  }
}

uint64_t sub_1000BD6F4()
{
  v1 = v0[78];
  if (*(v1 + 72))
  {
    v2 = *(v1 + 64);
    v3 = *(v1 + 72);

    v12._countAndFlagsBits = 0x5654656C707041;
    v12._object = 0xE700000000000000;
    LOBYTE(v2) = sub_1000E2408(v12);

    if (v2)
    {
      v4 = v0[79];
      v5 = sub_1000BD920;
      goto LABEL_7;
    }

    v9 = v0[93];
    v7 = v0[79];

    v8 = sub_1000BD7DC;
  }

  else
  {
    v6 = v0[93];
    v7 = v0[79];

    v8 = sub_1000CF780;
  }

  v5 = v8;
  v4 = v7;
LABEL_7:

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1000BD7DC()
{
  v1 = v0[87];
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2678();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Rejecting start laguna session request because sender device type is unknown.", v4, 2u);
  }

  v5 = v0[94];
  v6 = v0[89];

  TUMakeNeighborhoodConduitError();
  swift_willThrow();
  sub_1000033C8((v0 + 10), &unk_10011FA58, &unk_1000F25E0);

  v7 = v0[86];
  v8 = v0[85];
  v9 = v0[82];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000BD920()
{
  v1 = *(v0[79] + 240);
  v0[96] = v1;
  v2 = [v1 peerDeviceIdentifier];
  if (v2)
  {
    v3 = v0[95];
    v4 = v0[79];
    v5 = v2;
    v6 = sub_1000E2338();
    v8 = v7;

    v0[97] = v6;
    v0[98] = v8;
    v0[99] = *(v4 + 224);

    return _swift_task_switch(sub_1000BDAFC, v3, 0);
  }

  else
  {
    v9 = v0[93];
    v10 = v0[87];

    v11 = sub_1000E1EE8();
    v12 = sub_1000E2698();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Rejecting start laguna session request because we're not currently connected via remote display discovery.", v13, 2u);
    }

    v14 = v0[94];
    v15 = v0[89];

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    sub_1000033C8((v0 + 10), &unk_10011FA58, &unk_1000F25E0);

    v16 = v0[86];
    v17 = v0[85];
    v18 = v0[82];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1000BDAFC()
{
  v1 = v0[99];
  v2 = v0[79];
  v0[100] = sub_1000455D8(v0[97], v0[98]);

  return _swift_task_switch(sub_1000BDB88, v2, 0);
}

uint64_t sub_1000BDB88()
{
  v56 = v0;
  v1 = *(v0 + 800);
  if (v1)
  {
    v2 = *(v0 + 624);
    v3 = *(v1 + 16);
    v4 = *(v1 + 24);
    v5 = *(v2 + 16);
    *(v0 + 808) = v5;
    v6 = *(v2 + 24);
    *(v0 + 816) = v6;
    v7 = v3 == v5 && v4 == v6;
    if (v7 || (sub_1000E2C68() & 1) != 0)
    {
      v8 = *(v0 + 768);

      v9 = [v8 dedicatedDevice];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 idsDeviceIdentifier];
        if (v11)
        {
          v12 = v11;
          v13 = sub_1000E2338();
          v15 = v14;

          if (v5 == v13 && v6 == v15)
          {
            v17 = 1;
          }

          else
          {
            v17 = sub_1000E2C68();
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }

      *(v0 + 872) = v17 & 1;
      v39 = *(v0 + 744);
      v40 = *(v0 + 736);
      v41 = *(v0 + 712);
      v42 = *(v0 + 632);
      v43 = *(v0 + 752);
      v44 = sub_10000C544(&_swiftEmptyArrayStorage);
      *(v0 + 208) = v5;
      *(v0 + 216) = v6;
      *(v0 + 224) = v41;
      *(v0 + 232) = v17 & 1;
      *(v0 + 240) = v40;
      *(v0 + 248) = v39;
      *(v0 + 256) = v44;
      *(v0 + 264) = v43;
      v45 = *(v0 + 224);
      v46 = *(v0 + 240);
      *(v0 + 16) = *(v0 + 208);
      *(v0 + 32) = v45;
      v47 = *(v0 + 224);
      v48 = *(v0 + 256);
      *(v0 + 48) = *(v0 + 240);
      *(v0 + 64) = v48;
      v49 = *(v42 + 120);
      v50 = *(v42 + 136);
      v51 = *(v42 + 168);
      *(v0 + 176) = *(v42 + 152);
      *(v0 + 192) = v51;
      *(v0 + 144) = v49;
      *(v0 + 160) = v50;
      v52 = *(v0 + 208);
      *(v42 + 168) = v48;
      *(v42 + 152) = v46;
      *(v42 + 136) = v47;
      *(v42 + 120) = v52;
      sub_1000A9C1C(v0 + 208, v0 + 272);
      sub_1000A9C1C(v0 + 208, v0 + 336);
      sub_1000033C8(v0 + 144, &unk_10011FA58, &unk_1000F25E0);
      sub_1000B98E4();
      sub_1000A9D38(v0 + 208);

      [v43 boostQualityOfService];

      v53 = swift_task_alloc();
      *(v0 + 824) = v53;
      *v53 = v0;
      v53[1] = sub_1000BE054;
      v54 = *(v0 + 632);

      return sub_1000C49E4(v0 + 16);
    }

    v25 = *(v0 + 744);
    v26 = *(v0 + 696);
    v27 = *(v0 + 624);

    v28 = sub_1000E1EE8();
    v29 = sub_1000E2698();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v55 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_100029C70(v5, v6, &v55);
      _os_log_impl(&_mh_execute_header, v28, v29, "Rejecting start laguna session request because we're not currently connected to %s via remote display.", v30, 0xCu);
      sub_10000E9DC(v31);
    }

    v32 = *(v0 + 752);
    v33 = *(v0 + 712);
    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    sub_1000033C8(v0 + 80, &unk_10011FA58, &unk_1000F25E0);
  }

  else
  {
    v18 = *(v0 + 744);
    v19 = *(v0 + 696);

    v20 = sub_1000E1EE8();
    v21 = sub_1000E2698();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Rejecting start laguna session request because we're not currently connected via remote display discovery.", v22, 2u);
    }

    v23 = *(v0 + 752);
    v24 = *(v0 + 712);

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    sub_1000033C8(v0 + 80, &unk_10011FA58, &unk_1000F25E0);
  }

  v34 = *(v0 + 688);
  v35 = *(v0 + 680);
  v36 = *(v0 + 656);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_1000BE054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 824);
  v6 = *(*v3 + 632);
  v8 = *v3;
  v4[104] = a1;
  v4[105] = a2;
  v4[106] = a3;

  return _swift_task_switch(sub_1000BE174, v6, 0);
}

uint64_t sub_1000BE174()
{
  v1 = v0[79];
  v0[107] = sub_1000C571C((v0 + 2));
  v2 = swift_task_alloc();
  v0[108] = v2;
  *v2 = v0;
  v2[1] = sub_1000BE21C;
  v3 = v0[79];

  return sub_1000C6D08((v0 + 2));
}

uint64_t sub_1000BE21C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 592) = v1;
  *(v3 + 600) = a1;
  v4 = *(v2 + 864);
  v5 = *(v2 + 632);
  v7 = *v1;

  return _swift_task_switch(sub_1000BE334, v5, 0);
}

uint64_t sub_1000BE334()
{
  v35 = v0;
  v1 = *(v0 + 856);
  v2 = *(v0 + 848);
  v3 = *(v0 + 840);
  v4 = *(v0 + 832);
  v5 = *(v0 + 696);
  v6 = *(v0 + 624);

  sub_1000A9C1C(v0 + 208, v0 + 400);

  v7 = sub_1000E1EE8();
  v8 = sub_1000E2698();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 856);
  v11 = *(v0 + 848);
  v12 = *(v0 + 840);
  v13 = *(v0 + 832);
  if (v9)
  {
    v32 = *(v0 + 872);
    v30 = *(v0 + 816);
    v14 = *(v0 + 808);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v34 = v16;
    *v15 = 136316162;
    *(v15 + 4) = sub_100029C70(v14, v30, &v34);
    *(v15 + 12) = 1024;
    *(v15 + 14) = v32;
    sub_1000A9D38(v0 + 208);
    *(v15 + 18) = 2048;
    *(v15 + 20) = *(v13 + 16);
    *(v15 + 28) = 2048;
    *(v15 + 30) = *(v12 + 16);

    *(v15 + 38) = 2048;
    *(v15 + 40) = *(v10 + 16);

    _os_log_impl(&_mh_execute_header, v7, v8, "Starting laguna session with %s. isDedicatedSession:%{BOOL}d. Returning %ld recent calls and %ld contacts and %ld favorites.", v15, 0x30u);
    sub_10000E9DC(v16);
  }

  else
  {
    v17 = *(v0 + 856);

    sub_1000A9D38(v0 + 208);
  }

  v18 = *(v0 + 600);
  v19 = *(v0 + 856);
  v20 = *(v0 + 848);
  v21 = *(v0 + 840);
  v22 = *(v0 + 832);
  v28 = *(v0 + 728);
  v29 = *(v0 + 688);
  v31 = *(v0 + 680);
  v33 = *(v0 + 656);
  v23 = *(v0 + 632);
  v24 = *(v0 + 608);
  sub_1000E1A88();
  v25 = swift_task_alloc();
  v25[2] = v23;
  v25[3] = v22;
  v25[4] = v21;
  v25[5] = v20;
  v25[6] = v19;
  v25[7] = v18;
  sub_1000041BC(&qword_1001201C0, 255, &type metadata accessor for NCProtoStartLagunaSessionResponse);
  sub_1000E0E38();
  sub_1000033C8(v0 + 80, &unk_10011FA58, &unk_1000F25E0);
  sub_1000A9D38(v0 + 208);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1000BE68C()
{
  sub_1000C8FF4();
  sub_1000E1A68();

  sub_1000E1A38();

  sub_1000E1A48();

  sub_1000E1A78();

  return sub_1000E1A58();
}

void sub_1000BE71C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = (&v35 - v8);
  v11 = *(v2 + 120);
  v12 = *(v2 + 128);
  v10 = (v2 + 120);
  v13 = *(v2 + 152);
  v50 = *(v2 + 136);
  v51 = v13;
  v52 = *(v2 + 168);
  if (v12 && ((v14 = *(v2 + 152), v47 = *(v2 + 136), v48 = v14, v49 = *(v2 + 168), v11 == a1) && v12 == a2 || (sub_1000E2C68() & 1) != 0))
  {
    v43[0] = v11;
    v43[1] = v12;
    v44 = v50;
    v45 = v51;
    v46 = v52;
    sub_1000A9C1C(v43, v42);
    if (qword_10011DC40 != -1)
    {
      swift_once();
    }

    v15 = sub_1000E1F08();
    sub_1000049D0(v15, qword_100120060);

    v16 = sub_1000E1EE8();
    v17 = sub_1000E2698();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v35 = a1;
      v19 = v18;
      v20 = swift_slowAlloc();
      v36 = v9;
      v21 = v20;
      *&v42[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_100029C70(v35, a2, v42);
      _os_log_impl(&_mh_execute_header, v16, v17, "Ending camera session with %s.", v19, 0xCu);
      sub_10000E9DC(v21);
      v9 = v36;
    }

    v22 = v10[1];
    v42[0] = *v10;
    v42[1] = v22;
    v23 = v10[3];
    v42[2] = v10[2];
    v42[3] = v23;
    *v10 = 0u;
    v10[1] = 0u;
    v10[2] = 0u;
    v10[3] = 0u;
    sub_1000033C8(v42, &unk_10011FA58, &unk_1000F25E0);
    sub_1000B98E4();
    v24 = *(v3 + 112);
    v37 = v11;
    v38 = v12;
    v39 = v47;
    v40 = v48;
    v41 = v49;
    sub_1000E1FC8();
    v25 = sub_1000E2538();
    (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
    v27 = sub_1000041BC(&unk_1001200D0, v26, type metadata accessor for ContinuitySessionServer);
    v28 = swift_allocObject();
    *(v28 + 16) = v3;
    *(v28 + 24) = v27;
    *(v28 + 32) = v3;
    *(v28 + 40) = v11;
    *(v28 + 48) = v12;
    v29 = v48;
    *(v28 + 56) = v47;
    *(v28 + 72) = v29;
    *(v28 + 88) = v49;
    swift_retain_n();
    sub_1000223DC(0, 0, v9, &unk_1000F3388, v28);
  }

  else
  {
    if (qword_10011DC40 != -1)
    {
      swift_once();
    }

    v30 = sub_1000E1F08();
    sub_1000049D0(v30, qword_100120060);

    v36 = sub_1000E1EE8();
    v31 = sub_1000E2668();

    if (os_log_type_enabled(v36, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v43[0] = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_100029C70(a1, a2, v43);
      _os_log_impl(&_mh_execute_header, v36, v31, "Failed to find session to end for %s", v32, 0xCu);
      sub_10000E9DC(v33);
    }

    else
    {
      v34 = v36;
    }
  }
}

uint64_t sub_1000BEBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_1000E17C8();
  v5[4] = v7;
  v8 = *(v7 - 8);
  v5[5] = v8;
  v9 = *(v8 + 64) + 15;
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000BEC9C, a4, 0);
}

uint64_t sub_1000BEC9C()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = *(v0[2] + 224);
  sub_1000E17B8();
  v4 = *v2;
  v5 = v2[1];
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v0[7] = qword_1001230E0;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1000BED94;
  v7 = v0[6];

  return sub_1000295DC(10, v7, v4, v5, 0);
}

uint64_t sub_1000BED94()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_1000BEF3C;
  }

  else
  {
    v4 = sub_1000BEEBC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000BEEBC()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000BEF3C()
{
  v1 = v0[2];
  (*(v0[5] + 8))(v0[6], v0[4]);

  return _swift_task_switch(sub_1000BEFB8, v1, 0);
}

uint64_t sub_1000BEFB8()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_1000BF01C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[23] = a3;
  v4[24] = v3;
  v4[21] = a1;
  v4[22] = a2;
  v5 = *(*(sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30) - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  v6 = sub_1000E2B18();
  v4[26] = v6;
  v7 = *(v6 - 8);
  v4[27] = v7;
  v8 = *(v7 + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v9 = sub_1000E2B28();
  v4[30] = v9;
  v10 = *(v9 - 8);
  v4[31] = v10;
  v11 = *(v10 + 64) + 15;
  v4[32] = swift_task_alloc();
  v12 = sub_1000E1978();
  v4[33] = v12;
  v13 = *(v12 - 8);
  v4[34] = v13;
  v4[35] = *(v13 + 64);
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v14 = sub_1000E0D68();
  v4[39] = v14;
  v15 = *(v14 - 8);
  v4[40] = v15;
  v16 = *(v15 + 64) + 15;
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();

  return _swift_task_switch(sub_1000BF27C, v3, 0);
}

uint64_t sub_1000BF27C()
{
  v45 = v0;
  v1 = v0[44];
  sub_1000E0D58();
  if (qword_10011DC40 != -1)
  {
    swift_once();
  }

  v2 = v0[43];
  v3 = v0[44];
  v4 = v0[39];
  v5 = v0[40];
  v6 = v0[38];
  v7 = v0[33];
  v8 = v0[34];
  v9 = v0[22];
  v10 = sub_1000E1F08();
  v0[45] = sub_1000049D0(v10, qword_100120060);
  v11 = *(v5 + 16);
  v0[46] = v11;
  v0[47] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v2, v3, v4);
  v12 = *(v8 + 16);
  v0[48] = v12;
  v0[49] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v6, v9, v7);
  v13 = sub_1000E1EE8();
  v14 = sub_1000E2698();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[43];
  v18 = v0[39];
  v17 = v0[40];
  v19 = v0[38];
  v21 = v0[33];
  v20 = v0[34];
  if (v15)
  {
    log = v13;
    v22 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v22 = 136315394;
    sub_1000041BC(&unk_100120190, 255, &type metadata accessor for UUID);
    v23 = sub_1000E2C18();
    v42 = v14;
    v25 = v24;
    v41 = v21;
    v26 = *(v17 + 8);
    v26(v16, v18);
    v27 = sub_100029C70(v23, v25, &v44);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2080;
    v28 = sub_1000E1968();
    v30 = v29;
    v31 = *(v20 + 8);
    v31(v19, v41);
    v32 = sub_100029C70(v28, v30, &v44);

    *(v22 + 14) = v32;
    _os_log_impl(&_mh_execute_header, log, v42, "[GetContactImage][%s] Received request for contact image for %s.", v22, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v31 = *(v20 + 8);
    v31(v19, v21);
    v26 = *(v17 + 8);
    v26(v16, v18);
  }

  v0[50] = v31;
  v0[51] = v26;
  v33 = v0[22];
  v34 = sub_1000E1968();
  v36 = v35;
  v0[52] = v35;
  v37 = swift_task_alloc();
  v0[53] = v37;
  *v37 = v0;
  v37[1] = sub_1000BF5EC;
  v38 = v0[23];
  v39 = v0[24];

  return sub_1000C12DC(v38, v34, v36);
}

uint64_t sub_1000BF5EC(char a1)
{
  v2 = *(*v1 + 424);
  v3 = *(*v1 + 416);
  v4 = *(*v1 + 192);
  v6 = *v1;
  *(*v1 + 105) = a1;

  return _swift_task_switch(sub_1000BF720, v4, 0);
}

uint64_t sub_1000BF720()
{
  v108 = v0;
  if (*(v0 + 105) == 1)
  {
    v1 = *(v0 + 192);
    swift_beginAccess();
    *(v0 + 432) = 0;
    *(v0 + 440) = 1;
    v2 = *(v0 + 192);
    if (*(*(v2 + 328) + 16) < 0xAuLL)
    {
      v4 = *(v0 + 384);
      v3 = *(v0 + 392);
      v104 = *(v0 + 352);
      v5 = *(v0 + 280);
      v6 = *(v0 + 288);
      v7 = *(v0 + 264);
      v8 = *(v0 + 272);
      v9 = *(v0 + 200);
      v10 = *(v0 + 176);
      v11 = sub_1000E2538();
      (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
      v4(v6, v10, v7);
      v13 = sub_1000041BC(&unk_1001200D0, v12, type metadata accessor for ContinuitySessionServer);
      v14 = (*(v8 + 80) + 40) & ~*(v8 + 80);
      v15 = swift_allocObject();
      *(v15 + 2) = v2;
      *(v15 + 3) = v13;
      *(v15 + 4) = v2;
      (*(v8 + 32))(&v15[v14], v6, v7);
      swift_retain_n();
      v16 = sub_100023258(0, 0, v9, &unk_1000F3360, v15);
      *(v0 + 480) = v16;
      swift_beginAccess();

      v17 = *(v2 + 328);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v107[0] = *(v2 + 328);
      *(v2 + 328) = 0x8000000000000000;
      sub_1000CA994(v16, v104, isUniquelyReferenced_nonNull_native);
      *(v2 + 328) = v107[0];
      swift_endAccess();
      v19 = async function pointer to Task<>.value.getter[1];
      v20 = swift_task_alloc();
      *(v0 + 488) = v20;
      v21 = sub_10000ADE4(&qword_10011ED88, &qword_1000F11D8);
      *v20 = v0;
      v20[1] = sub_1000C0C70;
      v22 = v0 + 160;
      v23 = v16;

      return Task<>.value.getter(v22, v23, v21);
    }

    v47 = *(v0 + 384);
    v46 = *(v0 + 392);
    v48 = *(v0 + 376);
    v49 = *(v0 + 360);
    v50 = *(v0 + 296);
    v51 = *(v0 + 264);
    v52 = *(v0 + 176);
    (*(v0 + 368))(*(v0 + 328), *(v0 + 352), *(v0 + 312));
    v47(v50, v52, v51);
    v53 = sub_1000E1EE8();
    v54 = sub_1000E2698();
    v55 = os_log_type_enabled(v53, v54);
    v56 = *(v0 + 408);
    v106 = *(v0 + 400);
    v58 = *(v0 + 320);
    v57 = *(v0 + 328);
    v59 = *(v0 + 312);
    v60 = *(v0 + 296);
    v61 = *(v0 + 264);
    if (v55)
    {
      v102 = *(v0 + 272) + 8;
      v62 = swift_slowAlloc();
      v107[0] = swift_slowAlloc();
      *v62 = 136315394;
      sub_1000041BC(&unk_100120190, 255, &type metadata accessor for UUID);
      v101 = v54;
      v63 = sub_1000E2C18();
      v65 = v64;
      v56(v57, v59);
      v66 = sub_100029C70(v63, v65, v107);

      *(v62 + 4) = v66;
      *(v62 + 12) = 2080;
      v67 = sub_1000E1968();
      v69 = v68;
      v106(v60, v61);
      v70 = sub_100029C70(v67, v69, v107);

      *(v62 + 14) = v70;
      _os_log_impl(&_mh_execute_header, v53, v101, "[GetContactImage][%s] Too many concurrent image requests, backing off for %s.", v62, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v106(v60, v61);
      v56(v57, v59);
    }

    sub_1000E2828(v71, 2);
    sub_1000E0C48(v74, v72, v73);
    v76 = v75;
    v78 = v77;
    v80 = v79;
    v81 = HIDWORD(v75);
    v82 = HIWORD(v75);
    v83 = v77 >> 16;
    v84 = HIDWORD(v77);
    v85 = HIWORD(v77);
    v86 = HIWORD(v79);
    v87 = objc_allocWithZone(NSDecimalNumber);
    *(v0 + 108) = v76;
    *(v0 + 112) = v81;
    *(v0 + 114) = v82;
    *(v0 + 116) = v78;
    *(v0 + 118) = v83;
    *(v0 + 120) = v84;
    *(v0 + 122) = v85;
    *(v0 + 124) = v80;
    *(v0 + 126) = v86;
    v88 = [v87 initWithDecimal:v0 + 108];
    v89 = [v88 integerValue];

    v90 = 500 * v89;
    if ((v89 * 500) >> 64 == (500 * v89) >> 63)
    {
      if ((v90 & 0x8000000000000000) == 0)
      {
        v91 = v90 | 1;
        *(v0 + 144) = 0;
        v22 = swift_stdlib_random();
        v92 = *(v0 + 144);
        v93 = (v92 * (v90 | 1)) >> 64;
        v94 = v92 * (v90 | 1);
        if (v90 >= v94)
        {
          v95 = -v91 % v91;
          if (v95 > v94)
          {
            do
            {
              *(v0 + 152) = 0;
              v22 = swift_stdlib_random();
              v96 = *(v0 + 152);
            }

            while (v95 > v96 * v91);
            v93 = (v96 * v91) >> 64;
          }
        }

        v97 = v90 + v93;
        if (!__OFADD__(v90, v93))
        {
          v98 = *(v0 + 256);
          v99 = 1000000000000000 * v97;
          v100 = ((v97 >> 63) & 0xFFFC72815B398000) + ((v97 * 0x38D7EA4C68000uLL) >> 64);
          sub_1000E2CF8();
          *(v0 + 128) = v99;
          *(v0 + 136) = v100;
          *(v0 + 88) = 0;
          *(v0 + 96) = 0;
          *(v0 + 104) = 1;

          return _swift_task_switch(sub_1000BFF48, 0, 0);
        }

LABEL_26:
        __break(1u);
        return Task<>.value.getter(v22, v23, v21);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  v24 = *(v0 + 360);
  v25 = *(v0 + 184);

  v26 = sub_1000E1EE8();
  v27 = sub_1000E2698();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = *(v0 + 184);
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v107[0] = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_100029C70(*(v28 + 16), *(v28 + 24), v107);
    _os_log_impl(&_mh_execute_header, v26, v27, "[GetContactImage] Rejecting request for contact image from device with which we do not have a laguna session %s.", v29, 0xCu);
    sub_10000E9DC(v30);
  }

  v31 = *(v0 + 408);
  v32 = *(v0 + 352);
  v33 = *(v0 + 312);
  v34 = *(v0 + 320);
  TUMakeNeighborhoodConduitError();
  swift_willThrow();
  v31(v32, v33);
  v36 = *(v0 + 344);
  v35 = *(v0 + 352);
  v38 = *(v0 + 328);
  v37 = *(v0 + 336);
  v40 = *(v0 + 296);
  v39 = *(v0 + 304);
  v41 = *(v0 + 288);
  v42 = *(v0 + 256);
  v43 = *(v0 + 232);
  v103 = *(v0 + 224);
  v105 = *(v0 + 200);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_1000BFF48()
{
  v1 = v0[32];
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[26];
  v7 = sub_1000041BC(&qword_10011ED30, 255, &type metadata accessor for ContinuousClock);
  sub_1000E2CD8();
  sub_1000041BC(&qword_10011ED38, 255, &type metadata accessor for ContinuousClock.Instant);
  sub_1000E2B38();
  v8 = *(v5 + 8);
  v0[56] = v8;
  v0[57] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[58] = v10;
  *v10 = v0;
  v10[1] = sub_1000C00D4;
  v11 = v0[32];
  v13 = v0[29];
  v12 = v0[30];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v13, v0 + 11, v12, v7);
}

uint64_t sub_1000C00D4()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v16 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v4 = *(v2 + 456);
    (*(v2 + 448))(*(v2 + 232), *(v2 + 208));
    v5 = sub_1000C0AE4;
    v6 = 0;
  }

  else
  {
    v8 = *(v2 + 448);
    v7 = *(v2 + 456);
    v10 = *(v2 + 248);
    v9 = *(v2 + 256);
    v11 = *(v2 + 232);
    v12 = *(v2 + 240);
    v13 = *(v2 + 208);
    v14 = *(v2 + 192);
    v8(v11, v13);
    (*(v10 + 8))(v9, v12);
    v5 = sub_1000C0238;
    v6 = v14;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_1000C0238()
{
  v117 = v0;
  v1 = *(v0 + 440) + 1;
  *(v0 + 432) = *(v0 + 472);
  *(v0 + 440) = v1;
  v2 = *(v0 + 192);
  if (*(*(v2 + 328) + 16) < 0xAuLL)
  {
    v4 = *(v0 + 384);
    v3 = *(v0 + 392);
    v112 = *(v0 + 352);
    v5 = *(v0 + 280);
    v6 = *(v0 + 288);
    v7 = *(v0 + 264);
    v8 = *(v0 + 272);
    v9 = *(v0 + 200);
    v10 = *(v0 + 176);
    v11 = sub_1000E2538();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    v4(v6, v10, v7);
    v13 = sub_1000041BC(&unk_1001200D0, v12, type metadata accessor for ContinuitySessionServer);
    v14 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v15 = swift_allocObject();
    *(v15 + 2) = v2;
    *(v15 + 3) = v13;
    *(v15 + 4) = v2;
    (*(v8 + 32))(&v15[v14], v6, v7);
    swift_retain_n();
    v16 = sub_100023258(0, 0, v9, &unk_1000F3360, v15);
    *(v0 + 480) = v16;
    swift_beginAccess();

    v17 = *(v2 + 328);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v116[0] = *(v2 + 328);
    *(v2 + 328) = 0x8000000000000000;
    sub_1000CA994(v16, v112, isUniquelyReferenced_nonNull_native);
    *(v2 + 328) = v116[0];
    swift_endAccess();
    v19 = async function pointer to Task<>.value.getter[1];
    v20 = swift_task_alloc();
    *(v0 + 488) = v20;
    v21 = sub_10000ADE4(&qword_10011ED88, &qword_1000F11D8);
    *v20 = v0;
    v20[1] = sub_1000C0C70;
    v22 = v0 + 160;
    v23 = v16;

    return Task<>.value.getter(v22, v23, v21);
  }

  if (v1 == 4)
  {
    v24 = *(v0 + 376);
    v25 = *(v0 + 360);
    (*(v0 + 368))(*(v0 + 336), *(v0 + 352), *(v0 + 312));
    v26 = sub_1000E1EE8();
    v27 = sub_1000E2678();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 408);
    v30 = *(v0 + 336);
    v31 = *(v0 + 312);
    if (v28)
    {
      v113 = *(v0 + 320) + 8;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v116[0] = v33;
      *v32 = 136315138;
      sub_1000041BC(&unk_100120190, 255, &type metadata accessor for UUID);
      v34 = sub_1000E2C18();
      v36 = v35;
      v29(v30, v31);
      v37 = sub_100029C70(v34, v36, v116);

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v26, v27, "[GetContactImage][%s] Failed to fulfill contact image request due to too many concurrent requests.", v32, 0xCu);
      sub_10000E9DC(v33);
    }

    else
    {

      v29(v30, v31);
    }

    v64 = *(v0 + 408);
    v65 = *(v0 + 352);
    v66 = *(v0 + 312);
    v67 = *(v0 + 320) + 8;
    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v64(v65, v66);
    v69 = *(v0 + 344);
    v68 = *(v0 + 352);
    v71 = *(v0 + 328);
    v70 = *(v0 + 336);
    v73 = *(v0 + 296);
    v72 = *(v0 + 304);
    v74 = *(v0 + 288);
    v75 = *(v0 + 256);
    v76 = *(v0 + 232);
    v111 = *(v0 + 224);
    v115 = *(v0 + 200);

    v77 = *(v0 + 8);

    return v77();
  }

  v39 = *(v0 + 384);
  v38 = *(v0 + 392);
  v40 = *(v0 + 376);
  v41 = *(v0 + 360);
  v42 = *(v0 + 296);
  v43 = *(v0 + 264);
  v44 = *(v0 + 176);
  (*(v0 + 368))(*(v0 + 328), *(v0 + 352), *(v0 + 312));
  v39(v42, v44, v43);
  v45 = sub_1000E1EE8();
  v46 = sub_1000E2698();
  v47 = os_log_type_enabled(v45, v46);
  v48 = *(v0 + 408);
  v50 = *(v0 + 320);
  v49 = *(v0 + 328);
  v51 = *(v0 + 312);
  v52 = *(v0 + 296);
  v53 = *(v0 + 264);
  v110 = v53;
  v114 = *(v0 + 400);
  if (v47)
  {
    v109 = *(v0 + 272) + 8;
    v54 = swift_slowAlloc();
    v116[0] = swift_slowAlloc();
    *v54 = 136315394;
    sub_1000041BC(&unk_100120190, 255, &type metadata accessor for UUID);
    v108 = v46;
    v55 = sub_1000E2C18();
    v57 = v56;
    v48(v49, v51);
    v58 = sub_100029C70(v55, v57, v116);

    *(v54 + 4) = v58;
    *(v54 + 12) = 2080;
    v59 = sub_1000E1968();
    v61 = v60;
    v114(v52, v110);
    v62 = sub_100029C70(v59, v61, v116);

    *(v54 + 14) = v62;
    _os_log_impl(&_mh_execute_header, v45, v108, "[GetContactImage][%s] Too many concurrent image requests, backing off for %s.", v54, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v114(v52, v110);
    v48(v49, v51);
  }

  sub_1000E2828(v63, 2);
  sub_1000E0C48(v81, v79, v80);
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v88 = HIDWORD(v82);
  v89 = HIWORD(v82);
  v90 = v84 >> 16;
  v91 = HIDWORD(v84);
  v92 = HIWORD(v84);
  v93 = HIWORD(v86);
  v94 = objc_allocWithZone(NSDecimalNumber);
  *(v0 + 108) = v83;
  *(v0 + 112) = v88;
  *(v0 + 114) = v89;
  *(v0 + 116) = v85;
  *(v0 + 118) = v90;
  *(v0 + 120) = v91;
  *(v0 + 122) = v92;
  *(v0 + 124) = v87;
  *(v0 + 126) = v93;
  v95 = [v94 initWithDecimal:v0 + 108];
  v96 = [v95 integerValue];

  v97 = 500 * v96;
  if ((v96 * 500) >> 64 != (500 * v96) >> 63)
  {
    __break(1u);
    goto LABEL_26;
  }

  if ((v97 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return Task<>.value.getter(v22, v23, v21);
  }

  v98 = v97 | 1;
  *(v0 + 144) = 0;
  v22 = swift_stdlib_random();
  v99 = *(v0 + 144);
  v100 = (v99 * (v97 | 1)) >> 64;
  v101 = v99 * (v97 | 1);
  if (v97 >= v101)
  {
    v102 = -v98 % v98;
    if (v102 > v101)
    {
      do
      {
        *(v0 + 152) = 0;
        v22 = swift_stdlib_random();
        v103 = *(v0 + 152);
      }

      while (v102 > v103 * v98);
      v100 = (v103 * v98) >> 64;
    }
  }

  v104 = v97 + v100;
  if (__OFADD__(v97, v100))
  {
    goto LABEL_27;
  }

  v105 = *(v0 + 256);
  v106 = 1000000000000000 * v104;
  v107 = ((v104 >> 63) & 0xFFFC72815B398000) + ((v104 * 0x38D7EA4C68000uLL) >> 64);
  sub_1000E2CF8();
  *(v0 + 128) = v106;
  *(v0 + 136) = v107;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;

  return _swift_task_switch(sub_1000BFF48, 0, 0);
}

uint64_t sub_1000C0AE4()
{
  v1 = v0[24];
  (*(v0[31] + 8))(v0[32], v0[30]);

  return _swift_task_switch(sub_1000C0B60, v1, 0);
}

uint64_t sub_1000C0B60()
{
  v1 = *(v0 + 320) + 8;
  (*(v0 + 408))(*(v0 + 352), *(v0 + 312));
  v3 = *(v0 + 344);
  v2 = *(v0 + 352);
  v5 = *(v0 + 328);
  v4 = *(v0 + 336);
  v7 = *(v0 + 296);
  v6 = *(v0 + 304);
  v8 = *(v0 + 288);
  v9 = *(v0 + 256);
  v10 = *(v0 + 224);
  v11 = *(v0 + 232);
  v14 = *(v0 + 200);
  v15 = *(v0 + 472);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1000C0C70()
{
  v1 = *(*v0 + 488);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return _swift_task_switch(sub_1000C0D80, v2, 0);
}

uint64_t sub_1000C0D80()
{
  v1 = v0[60];
  v2 = v0[54];
  v3 = v0[44];
  v11 = v0[43];
  v12 = v0[42];
  v5 = v0[39];
  v4 = v0[40];
  v13 = v0[41];
  v14 = v0[38];
  v15 = v0[37];
  v16 = v0[36];
  v17 = v0[32];
  v18 = v0[29];
  v6 = v0[24];
  v19 = v0[28];
  v20 = v0[25];
  v7 = v0[20];
  v8 = v0[21];
  swift_beginAccess();
  sub_1000B92E8(v3);
  swift_endAccess();

  sub_1000E1A28();
  *(swift_task_alloc() + 16) = v7;
  sub_1000041BC(&qword_1001201A0, 255, &type metadata accessor for NCProtoGetImageForContactResponse);
  sub_1000E0E38();

  (*(v4 + 8))(v3, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000C0F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000C0F90, a4, 0);
}

uint64_t sub_1000C0F90()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_1000E1968();
  v5 = v4;
  v6 = sub_1000E1958();
  v7 = sub_1000CDFD0(v3, v5, v6);

  *v2 = v7;
  v8 = v0[1];

  return v8();
}

uint64_t sub_1000C1030(uint64_t a1, void *a2)
{
  v4 = sub_10000ADE4(&qword_1001201A8, &unk_1000F3370);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v21 - v6;
  v8 = sub_1000E1368();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v21 - v14;
  if (!a2)
  {
    goto LABEL_7;
  }

  v16 = [a2 imageData];
  if (v16)
  {
    v23 = a1;
    v17 = v16;
    sub_1000E0C88();
    v22 = v13;

    sub_1000E1A08();
    v13 = v22;
  }

  v18 = [a2 imageType];
  if (v18 == 1)
  {
    v19 = &enum case for NCProtoContactImageType.avatar(_:);
    goto LABEL_9;
  }

  if (v18 != 2)
  {
LABEL_7:
    (*(v9 + 56))(v7, 1, 1, v8);
    return sub_1000033C8(v7, &qword_1001201A8, &unk_1000F3370);
  }

  v19 = &enum case for NCProtoContactImageType.poster(_:);
LABEL_9:
  (*(v9 + 104))(v7, *v19, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  (*(v9 + 32))(v15, v7, v8);
  (*(v9 + 16))(v13, v15, v8);
  sub_1000E1A18();
  return (*(v9 + 8))(v15, v8);
}

uint64_t sub_1000C12DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  return _swift_task_switch(sub_1000C1300, v3, 0);
}

uint64_t sub_1000C1300()
{
  v1 = *(v0 + 104);
  sub_1000BA9C4(*(v0 + 80), (v0 + 16));
  if (*(v0 + 24))
  {
    sub_1000033C8(v0 + 16, &unk_10011FA58, &unk_1000F25E0);
    v3 = *(v0 + 8);

    return v3(1);
  }

  else
  {
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = *(v0 + 88);
    v8 = sub_1000041BC(&unk_1001200D0, v2, type metadata accessor for ContinuitySessionServer);
    v9 = swift_allocObject();
    *(v0 + 112) = v9;
    swift_weakInit();
    v10 = swift_task_alloc();
    *(v0 + 120) = v10;
    v10[2] = v9;
    v10[3] = v7;
    v10[4] = v6;
    v11 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v12 = swift_task_alloc();
    *(v0 + 128) = v12;
    *v12 = v0;
    v12[1] = sub_1000C14E0;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 136, v5, v8, 0xD00000000000001BLL, 0x80000001000EC480, sub_1000CDDE4, v10, &type metadata for Bool);
  }
}

uint64_t sub_1000C14E0()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);
  v6 = *v0;

  return _swift_task_switch(sub_1000C1630, v4, 0);
}

uint64_t sub_1000C1648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v5 = sub_1000E2118();
  v6 = *(v5 - 8);
  v33 = v5;
  v34 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000E2148();
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000ADE4(&qword_10011FC38, &qword_1000F3350);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v30 - v17;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v32 = [*(result + 200) queue];
    v20 = swift_allocObject();
    swift_weakInit();
    (*(v15 + 16))(v18, a1, v14);
    v21 = *(v15 + 80);
    v31 = v10;
    v22 = (v21 + 40) & ~v21;
    v23 = swift_allocObject();
    v24 = v35;
    v25 = v36;
    *(v23 + 2) = v20;
    *(v23 + 3) = v24;
    v26 = v13;
    v27 = v33;
    *(v23 + 4) = v25;
    (*(v15 + 32))(&v23[v22], v18, v14);
    aBlock[4] = sub_1000CDDF0;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000026A0;
    aBlock[3] = &unk_100116440;
    v28 = _Block_copy(aBlock);

    sub_1000E2138();
    v38 = &_swiftEmptyArrayStorage;
    sub_1000041BC(&qword_10011EA20, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
    sub_10002B8C4();
    sub_1000E28C8();
    v29 = v32;
    sub_1000E2738();
    _Block_release(v28);

    (*(v34 + 8))(v9, v27);
    (*(v37 + 8))(v26, v31);
  }

  return result;
}

uint64_t sub_1000C1A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v28 = a3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = result;
    v26 = a4;
    sub_1000036AC((result + 256), *(result + 280));
    type metadata accessor for CallPublisher();
    v6 = sub_1000048CC();
    v7 = v6;
    v29[0] = &_swiftEmptyArrayStorage;
    if (v6 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000E2B68())
    {
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = sub_1000E2A98();
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if ([v10 status] == 4)
        {
          sub_1000E2AC8();
          v13 = *(v29[0] + 16);
          sub_1000E2AF8();
          sub_1000E2B08();
          sub_1000E2AD8();
        }

        else
        {
        }

        ++v9;
        if (v12 == i)
        {
          v14 = v29[0];
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    v14 = &_swiftEmptyArrayStorage;
LABEL_19:

    if ((v14 & 0x8000000000000000) != 0 || (v14 & 0x4000000000000000) != 0)
    {
      goto LABEL_35;
    }

    for (j = *(v14 + 16); j; j = sub_1000E2B68())
    {
      v16 = 0;
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = sub_1000E2A98();
        }

        else
        {
          if (v16 >= *(v14 + 16))
          {
            goto LABEL_34;
          }

          v17 = *(v14 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        v20 = [v17 contactIdentifiers];
        if (v20)
        {
          v21 = v20;
          v22 = sub_1000E2468();

          v29[0] = v27;
          v29[1] = v28;
          __chkstk_darwin(v23);
          v24[2] = v29;
          LOBYTE(v21) = sub_1000D0350(sub_1000CF7C4, v24, v22);

          if (v21)
          {

            LOBYTE(v29[0]) = 1;
            goto LABEL_37;
          }
        }

        else
        {
        }

        ++v16;
        if (v19 == j)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      ;
    }

LABEL_36:

    LOBYTE(v29[0]) = 0;
LABEL_37:
    sub_10000ADE4(&qword_10011FC38, &qword_1000F3350);
    sub_1000E24D8();
  }

  return result;
}

uint64_t sub_1000C1D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[32] = a3;
  v4[33] = v3;
  v4[31] = a1;
  return _swift_task_switch(sub_1000C1D98, v3, 0);
}

uint64_t sub_1000C1D98()
{
  v111 = v0;
  v1 = *(v0 + 33);
  sub_1000BA9C4(*(v0 + 32), v0 + 5);
  if (!*(v0 + 11))
  {
    if (qword_10011DC40 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 32);
    v6 = sub_1000E1F08();
    sub_1000049D0(v6, qword_100120060);

    v7 = sub_1000E1EE8();
    v8 = sub_1000E2678();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 32);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v110[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_100029C70(*(v9 + 16), *(v9 + 24), v110);
      _os_log_impl(&_mh_execute_header, v7, v8, "[GetContacts] Rejecting request to brows contacts from a device with which we do not have a session: %s", v10, 0xCu);
      sub_10000E9DC(v11);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v12 = *(v0 + 1);
    goto LABEL_91;
  }

  v93 = *(v0 + 11);
  v100 = v0 + 240;
  v89 = *(v0 + 10);
  v2 = v0[104];
  v3 = *(v0 + 15);
  v105 = *(v0 + 14);
  v91 = *(v0 + 12);
  v92 = *(v0 + 17);
  *v109 = *(v0 + 105);
  *&v109[3] = *(v0 + 27);
  *(v0 + 29) = *(v0 + 16);
  sub_10000CB64((v0 + 232), (v0 + 144), &unk_1001200E0, &qword_1000F3328);

  v90 = v2;
  if (v2)
  {
    v4 = sub_100021B70();
  }

  else
  {
    v4 = sub_1000217A8();
  }

  v13 = v4;
  v14 = &_swiftEmptySetSingleton;
  if (&_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_80;
  }

LABEL_11:
  *v100 = v14;
  v107 = sub_10000C544(&_swiftEmptyArrayStorage);
  if (v13 >> 62)
  {
    v15 = sub_1000E2B68();
    v104 = v3;
    if (!v15)
    {
LABEL_83:

      v78 = *(v0 + 29);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v110[0] = v78;
      sub_1000CDB30(v107, sub_1000CCF60, 0, isUniquelyReferenced_nonNull_native, v110);
      v80 = *(v0 + 33);

      sub_1000033C8((v0 + 232), &unk_1001200E0, &qword_1000F3328);
      v81 = v110[0];
      *(v0 + 2) = v89;
      *(v0 + 3) = v93;
      *(v0 + 4) = v91;
      v0[40] = v90;
      *(v0 + 41) = *v109;
      *(v0 + 11) = *&v109[3];
      *(v0 + 6) = v105;
      *(v0 + 7) = v3;
      *(v0 + 8) = v81;
      *(v0 + 9) = v92;
      sub_1000C3AF4(v0 + 1);
      if (qword_10011DC40 != -1)
      {
        swift_once();
      }

      v82 = sub_1000E1F08();
      sub_1000049D0(v82, qword_100120060);
      v83 = sub_1000E1EE8();
      v84 = sub_1000E2698();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 134217984;
        swift_beginAccess();
        if ((*v100 & 0xC000000000000001) != 0)
        {

          v86 = sub_1000E2968();
        }

        else
        {
          v86 = *(*v100 + 16);
        }

        *(v85 + 4) = v86;
        _os_log_impl(&_mh_execute_header, v83, v84, "[GetContacts] Successfully retrieved and cached contacts; count=%ld", v85, 0xCu);

        v3 = v104;
      }

      v87 = *(v0 + 31);

      sub_1000E1C98();
      *(swift_task_alloc() + 16) = v100;
      sub_1000041BC(&qword_100120170, 255, &type metadata accessor for NCProtoGetAddressableContactsResponse);
      sub_1000E0E38();

      v88 = *(v0 + 30);

      *(v0 + 18) = v89;
      *(v0 + 19) = v93;
      *(v0 + 20) = v91;
      v0[168] = v90;
      *(v0 + 169) = *v109;
      *(v0 + 43) = *&v109[3];
      *(v0 + 22) = v105;
      *(v0 + 23) = v3;
      *(v0 + 24) = v81;
      *(v0 + 25) = v92;
      sub_1000A9D38((v0 + 144));
      v12 = *(v0 + 1);
LABEL_91:

      return v12();
    }
  }

  else
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v104 = v3;
    if (!v15)
    {
      goto LABEL_83;
    }
  }

  v16 = 0;
  v98 = v0;
  v99 = v13 & 0xC000000000000001;
  v94 = v13 + 32;
  v95 = v13 & 0xFFFFFFFFFFFFFF8;
  v96 = v15;
  v97 = v13;
  while (1)
  {
    if (v99)
    {
      v21 = sub_1000E2A98();
    }

    else
    {
      if (v16 >= *(v95 + 16))
      {
        goto LABEL_79;
      }

      v21 = *(v94 + 8 * v16);
    }

    v3 = v21;
    v22 = __OFADD__(v16, 1);
    v23 = v16 + 1;
    if (v22)
    {
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      if (sub_1000E2B68())
      {
        sub_1000E037C(&_swiftEmptyArrayStorage);
      }

      else
      {
        v14 = &_swiftEmptySetSingleton;
      }

      goto LABEL_11;
    }

    v101 = v23;
    v24 = [v21 phoneNumbers];
    sub_10000ADE4(&qword_100120150, &qword_1000F3338);
    v25 = sub_1000E2468();

    if (v25 >> 62)
    {
      v26 = sub_1000E2B68();
      v102 = v3;
      if (!v26)
      {
LABEL_32:

        v3 = &_swiftEmptyArrayStorage;
        goto LABEL_33;
      }
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v102 = v3;
      if (!v26)
      {
        goto LABEL_32;
      }
    }

    v110[0] = &_swiftEmptyArrayStorage;
    sub_10002A208(0, v26 & ~(v26 >> 63), 0);
    if (v26 < 0)
    {
      goto LABEL_77;
    }

    v27 = 0;
    v3 = v110[0];
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v28 = sub_1000E2A98();
      }

      else
      {
        v28 = *(v25 + 8 * v27 + 32);
      }

      v110[0] = v3;
      v30 = v3[2];
      v29 = v3[3];
      if (v30 >= v29 >> 1)
      {
        v32 = v28;
        sub_10002A208((v29 > 1), v30 + 1, 1);
        v28 = v32;
        v3 = v110[0];
      }

      ++v27;
      v3[2] = v30 + 1;
      v31 = &v3[2 * v30];
      v31[4] = v28;
      *(v31 + 40) = 0;
    }

    while (v26 != v27);

LABEL_33:
    v33 = [v102 emailAddresses];
    v34 = sub_1000E2468();

    if (v34 >> 62)
    {
      v13 = sub_1000E2B68();
      if (!v13)
      {
LABEL_45:

        v36 = &_swiftEmptyArrayStorage;
        goto LABEL_46;
      }
    }

    else
    {
      v13 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v13)
      {
        goto LABEL_45;
      }
    }

    v110[0] = &_swiftEmptyArrayStorage;
    sub_10002A208(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      goto LABEL_78;
    }

    v35 = 0;
    v36 = v110[0];
    do
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        v37 = sub_1000E2A98();
      }

      else
      {
        v37 = *(v34 + 8 * v35 + 32);
      }

      v110[0] = v36;
      v39 = v36[2];
      v38 = v36[3];
      if (v39 >= v38 >> 1)
      {
        v41 = v37;
        sub_10002A208((v38 > 1), v39 + 1, 1);
        v37 = v41;
        v36 = v110[0];
      }

      ++v35;
      v36[2] = v39 + 1;
      v40 = &v36[2 * v39];
      v40[4] = v37;
      *(v40 + 40) = 1;
    }

    while (v13 != v35);

LABEL_46:
    v110[0] = v3;
    sub_1000CC2F0(v36);
    v42 = v110[0];
    v106 = *(v110[0] + 2);
    if (v106)
    {
      break;
    }

    v3 = v107;
LABEL_68:
    v107 = v3;

    [v102 mutableCopy];
    v0 = v98;
    sub_1000E28B8();
    swift_unknownObjectRelease();
    sub_10000CAAC(0, &qword_100120158, CNMutableContact_ptr);
    swift_dynamicCast();
    v73 = *(v98 + 26);
    isa = sub_1000E2458().super.isa;
    [v73 setPhoneNumbers:isa];

    v75 = sub_1000E2458().super.isa;
    [v73 setEmailAddresses:v75];

    v76 = [v102 identifier];
    if (!v76)
    {
      sub_1000E2338();
      v76 = sub_1000E2328();
    }

    v17 = objc_allocWithZone(TUContinuitySessionContact);
    sub_10000CAAC(0, &qword_100120160, TUContinuityHandleAnonym_ptr);
    sub_10001B174(&qword_100120168, &qword_100120160, TUContinuityHandleAnonym_ptr);
    v18 = v73;
    v19 = sub_1000E25D8().super.isa;

    v20 = [v17 initWithContact:v18 contactIdentifier:v76 anonyms:v19];

    sub_1000D2B84(v110, v20);
    v13 = v97;
    v16 = v101;
    v3 = v104;
    if (v101 == v96)
    {
      goto LABEL_83;
    }
  }

  v43 = 0;
  v13 = v110[0] + 40;
  v44 = v104;
  v3 = v107;
  v103 = v110[0];
  while (1)
  {
    if (v43 >= v42[2])
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v0 = *v13;
    v45 = *(v13 - 8);
    v46 = v45;
    v47 = sub_1000C2B2C(v105, v44, v45, v0);
    if (v47)
    {
      break;
    }

LABEL_49:
    ++v43;
    v13 += 16;
    if (v106 == v43)
    {
      goto LABEL_68;
    }
  }

  v48 = v47;
  sub_1000D2BA8(v110, v48);

  v49 = [v48 identifier];
  v108 = sub_1000E2338();
  v51 = v50;

  v52 = [v46 value];
  v53 = v52;
  if (v0)
  {
    v54 = 3;
  }

  else
  {
    v55 = [v52 stringValue];

    v53 = v55;
    v54 = 2;
  }

  sub_1000E2338();

  v56 = objc_allocWithZone(TUHandle);
  v57 = sub_1000E2328();

  v0 = [v56 initWithType:v54 value:v57];

  v58 = swift_isUniquelyReferenced_nonNull_native();
  v110[0] = v3;
  v60 = sub_10000B2D0(v108, v51);
  v61 = v3;
  v62 = v3[2];
  v63 = (v59 & 1) == 0;
  v64 = v62 + v63;
  if (__OFADD__(v62, v63))
  {
    goto LABEL_74;
  }

  v65 = v59;
  if (v61[3] >= v64)
  {
    if (v58)
    {
      if ((v59 & 1) == 0)
      {
        goto LABEL_64;
      }
    }

    else
    {
      sub_1000CB760(&unk_100120100, &qword_1000F3330);
      if ((v65 & 1) == 0)
      {
        goto LABEL_64;
      }
    }

    goto LABEL_62;
  }

  sub_10001F5F8(v64, v58);
  v66 = sub_10000B2D0(v108, v51);
  if ((v65 & 1) == (v67 & 1))
  {
    v60 = v66;
    if ((v65 & 1) == 0)
    {
LABEL_64:
      v3 = v110[0];
      *(v110[0] + (v60 >> 6) + 8) |= 1 << v60;
      v70 = (v3[6] + 16 * v60);
      *v70 = v108;
      v70[1] = v51;
      *(v3[7] + 8 * v60) = v0;

      v71 = v3[2];
      v22 = __OFADD__(v71, 1);
      v72 = v71 + 1;
      if (v22)
      {
        goto LABEL_75;
      }

      v3[2] = v72;
      goto LABEL_66;
    }

LABEL_62:

    v3 = v110[0];
    v68 = *(v110[0] + 7);
    v69 = *(v68 + 8 * v60);
    *(v68 + 8 * v60) = v0;

LABEL_66:
    v42 = v103;
    v44 = v104;
    goto LABEL_49;
  }

  return sub_1000E2CC8();
}

id sub_1000C2B2C(uint64_t a1, void *a2, id a3, char a4)
{
  v8 = [a3 value];
  v9 = v8;
  if ((a4 & 1) == 0)
  {
    v10 = [v8 stringValue];

    v9 = v10;
  }

  v11 = sub_1000E2338();
  v13 = v12;

  sub_100021FF0(v11, v13, a1, a2);
  v15 = v14;

  if (!v15)
  {
    return 0;
  }

  v16 = [a3 label];
  if (a4)
  {
    if (v16)
    {
      v17 = v16;
      sub_1000E2338();
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v24 = [a3 label];
    if (v24)
    {
      v25 = v24;
      sub_1000E2338();
    }

    else
    {
      sub_1000E2338();
    }

    v28 = objc_opt_self();
    v29 = sub_1000E2328();

    v30 = [v28 localizedStringForLabel:v29];

    if (!v30)
    {
      sub_1000E2338();
      v30 = sub_1000E2328();
    }

    v31 = sub_1000E2328();

    if (v19)
    {
      v32 = sub_1000E2328();
    }

    else
    {
      v32 = 0;
    }

    v35 = [objc_allocWithZone(TUContinuityHandleAnonym) initWithIdentifier:v31 label:v32 localizedDisplayName:v30 type:2];
  }

  else
  {
    if (v16)
    {
      v21 = v16;
      sub_1000E2338();
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v26 = [a3 label];
    if (v26)
    {
      v27 = v26;
      sub_1000E2338();
    }

    else
    {
      sub_1000E2338();
    }

    v33 = objc_opt_self();
    v34 = sub_1000E2328();

    v30 = [v33 localizedStringForLabel:v34];

    if (!v30)
    {
      sub_1000E2338();
      v30 = sub_1000E2328();
    }

    v31 = sub_1000E2328();

    if (v23)
    {
      v32 = sub_1000E2328();
    }

    else
    {
      v32 = 0;
    }

    v35 = [objc_allocWithZone(TUContinuityHandleAnonym) initWithIdentifier:v31 label:v32 localizedDisplayName:v30 type:1];
  }

  v20 = v35;

  return v20;
}

id sub_1000C2EA0(void *a1, char a2)
{
  v3 = [a1 value];
  v4 = v3;
  if (a2)
  {
    v5 = 3;
  }

  else
  {
    v6 = [v3 stringValue];

    v5 = 2;
    v4 = v6;
  }

  sub_1000E2338();

  v7 = objc_allocWithZone(TUHandle);
  v8 = sub_1000E2328();

  v9 = [v7 initWithType:v5 value:v8];

  return v9;
}

uint64_t sub_1000C2F74(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  v3 = *a2;

  sub_1000B4EC0(v4);

  sub_1000E1C88();
  v5 = [objc_opt_self() sharedDefaults];
  [v5 sortOrder];

  return sub_1000E1C78();
}

uint64_t sub_1000C3030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_1000E1DA8();
  v4[14] = v5;
  v6 = *(v5 - 8);
  v4[15] = v6;
  v7 = *(v6 + 64) + 15;
  v4[16] = swift_task_alloc();
  v8 = sub_1000E1D58();
  v4[17] = v8;
  v9 = *(v8 - 8);
  v4[18] = v9;
  v10 = *(v9 + 64) + 15;
  v4[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000C3150, v3, 0);
}

uint64_t sub_1000C3150()
{
  v43 = v0;
  v1 = *(v0 + 104);
  sub_1000BA9C4(*(v0 + 96), (v0 + 16));
  if (*(v0 + 24))
  {
    v2 = *(v0 + 64);
    v4 = *(v0 + 144);
    v3 = *(v0 + 152);
    v5 = *(v0 + 136);
    v6 = *(v0 + 88);
    sub_1000E1D68();
    v7 = (*(v4 + 88))(v3, v5);
    if (v7 == enum case for NCProtoGetDestinationCapabilitiesRequest.DestinationType.handle(_:))
    {
      v8 = *(v0 + 88);
      v9 = sub_1000E1D88();
      v11 = v10;
LABEL_4:
      v12 = *(v0 + 128);
      v14 = *(v0 + 104);
      v13 = *(v0 + 112);
      v15 = swift_task_alloc();
      *(v15 + 16) = v9;
      *(v15 + 24) = v11;
      sub_1000041BC(&qword_10011F628, 255, &type metadata accessor for NCProtoGetDestinationCapabilitiesRequest);
      sub_1000E0E38();

      v16 = *(v14 + 184);
      v17 = swift_task_alloc();
      *(v0 + 160) = v17;
      *v17 = v0;
      v17[1] = sub_1000C359C;
      v18 = *(v0 + 128);

      return sub_10000CDF8(v18);
    }

    if (v7 == enum case for NCProtoGetDestinationCapabilitiesRequest.DestinationType.anonym(_:))
    {
      v27 = *(v0 + 88);
      v28 = sub_1000E1D88();
      if (*(v2 + 16))
      {
        v30 = sub_10000B2D0(v28, v29);
        v32 = v31;

        if (v32)
        {
          v33 = *(*(v2 + 56) + 8 * v30);
          v34 = [v33 value];
          v9 = sub_1000E2338();
          v11 = v35;

          goto LABEL_4;
        }
      }

      else
      {
      }

      TUMakeNeighborhoodConduitError();
      swift_willThrow();
      sub_1000033C8(v0 + 16, &unk_10011FA58, &unk_1000F25E0);
    }

    else
    {
      v37 = *(v0 + 144);
      v36 = *(v0 + 152);
      v38 = *(v0 + 136);
      TUMakeNeighborhoodConduitError();
      swift_willThrow();
      sub_1000033C8(v0 + 16, &unk_10011FA58, &unk_1000F25E0);
      (*(v37 + 8))(v36, v38);
    }
  }

  else
  {
    if (qword_10011DC40 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 96);
    v21 = sub_1000E1F08();
    sub_1000049D0(v21, qword_100120060);

    v22 = sub_1000E1EE8();
    v23 = sub_1000E2678();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 96);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v42 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_100029C70(*(v24 + 16), *(v24 + 24), &v42);
      _os_log_impl(&_mh_execute_header, v22, v23, "[GetDestinationCapabilities] Rejecting request to get handle capabilities from a device with which we do not have a session: %s", v25, 0xCu);
      sub_10000E9DC(v26);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
  }

  v39 = *(v0 + 152);
  v40 = *(v0 + 128);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1000C359C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  v4[21] = v1;

  v7 = v4[13];
  if (v1)
  {
    v8 = sub_1000C3834;
  }

  else
  {
    v4[22] = a1;
    v8 = sub_1000C36D8;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000C36D8()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[19];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  v7 = v0[10];
  sub_1000E1DE8();
  *(swift_task_alloc() + 16) = v2;
  sub_1000041BC(&qword_100120140, 255, &type metadata accessor for NCProtoGetDestinationCapabilitiesResponse);
  sub_1000E0E38();

  sub_1000033C8((v0 + 2), &unk_10011FA58, &unk_1000F25E0);
  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000C3834()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  sub_1000033C8((v0 + 2), &unk_10011FA58, &unk_1000F25E0);
  (*(v2 + 8))(v1, v3);
  v4 = v0[21];
  v5 = v0[19];
  v6 = v0[16];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000C38E4()
{
  v0 = sub_1000E1D58();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1000E1D98();
  (*(v1 + 104))(v4, enum case for NCProtoGetDestinationCapabilitiesRequest.DestinationType.handle(_:), v0);
  return sub_1000E1D78();
}

uint64_t sub_1000C39E8()
{
  v0 = sub_1000E1828();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  sub_1000041BC(&qword_100120148, 255, &type metadata accessor for NCProtoDestinationCapabilities);
  sub_1000E0E38();
  return sub_1000E1DD8();
}

uint64_t sub_1000C3AF4(__int128 *a1)
{
  v2 = a1[1];
  v22 = *a1;
  v23 = v2;
  v3 = a1[3];
  v24 = a1[2];
  v25 = v3;
  v4 = *(v1 + 136);
  v26[0] = *(v1 + 120);
  v26[1] = v4;
  v5 = *(v1 + 168);
  v26[2] = *(v1 + 152);
  v26[3] = v5;
  v6 = v26[0];
  if (!*(&v26[0] + 1))
  {
    v18 = *&v26[0];
    v9 = *(v1 + 152);
    v19 = *(v1 + 136);
    v20 = v9;
    v21 = *(v1 + 168);
    sub_10000CB64(v26, v17, &unk_10011FA58, &unk_1000F25E0);
    return sub_1000033C8(&v18, &unk_10011FA58, &unk_1000F25E0);
  }

  v18 = v26[0];
  v8 = *(v1 + 152);
  v19 = *(v1 + 136);
  v20 = v8;
  v21 = *(v1 + 168);
  sub_10000CB64(v26, v17, &unk_10011FA58, &unk_1000F25E0);

  sub_1000033C8(&v18, &unk_10011FA58, &unk_1000F25E0);
  if (v6 == *a1)
  {
  }

  else
  {
    v11 = sub_1000E2C68();

    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  v12 = *(v1 + 136);
  v17[0] = *(v1 + 120);
  v17[1] = v12;
  v13 = *(v1 + 168);
  v17[2] = *(v1 + 152);
  v17[3] = v13;
  v14 = v23;
  *(v1 + 120) = v22;
  *(v1 + 136) = v14;
  v15 = v25;
  *(v1 + 152) = v24;
  *(v1 + 168) = v15;
  sub_1000A9C1C(a1, &v16);
  sub_1000033C8(v17, &unk_10011FA58, &unk_1000F25E0);
  return sub_1000B98E4();
}

uint64_t sub_1000C3CA0(uint64_t result, unint64_t a2, unint64_t a3)
{
  v4 = *(v3 + 136);
  v45 = *(v3 + 120);
  v46 = v4;
  v5 = *(v3 + 168);
  v47 = *(v3 + 152);
  v48 = v5;
  v49[0] = v45;
  v49[1] = v4;
  v49[2] = v47;
  v49[3] = v5;
  if (*(&v45 + 1))
  {
    v6 = *(v3 + 136);
    v41 = *(v3 + 120);
    v42 = v6;
    v7 = *(v3 + 168);
    v43 = *(v3 + 152);
    v44 = v7;
    if (!result)
    {
      v22 = *(v3 + 136);
      v36[0] = *(v3 + 120);
      v36[1] = v22;
      v23 = *(v3 + 168);
      v36[2] = *(v3 + 152);
      v36[3] = v23;
      sub_10000CB64(&v45, &v37, &unk_10011FA58, &unk_1000F25E0);
      sub_1000A9C1C(v36, &v37);
      if (qword_10011DC40 != -1)
      {
        swift_once();
      }

      v24 = sub_1000E1F08();
      sub_1000049D0(v24, qword_100120060);
      v37 = v45;
      v38 = v46;
      v39 = v47;
      v40 = v48;
      sub_1000A9C1C(&v37, v35);
      v25 = sub_1000E1EE8();
      v26 = sub_1000E2698();
      sub_1000033C8(&v45, &unk_10011FA58, &unk_1000F25E0);
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v35[0] = v28;
        *v27 = 136315138;
        v30 = *(&v49[0] + 1);
        v29 = *&v49[0];

        v31 = sub_100029C70(v29, v30, v35);

        *(v27 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v25, v26, "Disconnecting camera session (%s because rapport is now out of session.", v27, 0xCu);
        sub_10000E9DC(v28);
      }

      else
      {

        v30 = *(&v49[0] + 1);
        v29 = *&v49[0];
      }

      v32 = v29;
      v33 = v30;
      goto LABEL_22;
    }

    if (result == 1)
    {
      if (!a3 || (result = *&v49[0], __PAIR128__(*(&v45 + 1), *&v49[0]) != __PAIR128__(a3, a2)) && (v9 = a2, result = sub_1000E2C68(), a2 = v9, (result & 1) == 0))
      {
        v10 = a2;
        v37 = v45;
        v38 = v46;
        v39 = v47;
        v40 = v48;
        sub_10000CB64(&v45, v36, &unk_10011FA58, &unk_1000F25E0);
        sub_1000A9C1C(&v37, v36);
        if (qword_10011DC40 != -1)
        {
          swift_once();
        }

        v11 = sub_1000E1F08();
        sub_1000049D0(v11, qword_100120060);
        sub_10000CB64(&v45, v36, &unk_10011FA58, &unk_1000F25E0);

        v12 = sub_1000E1EE8();
        v13 = sub_1000E2698();
        sub_1000033C8(&v45, &unk_10011FA58, &unk_1000F25E0);

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v35[0] = swift_slowAlloc();
          *v14 = 136315394;
          sub_1000A9C1C(v49, v36);
          v15 = sub_1000B9764();
          v17 = v16;
          sub_1000033C8(&v45, &unk_10011FA58, &unk_1000F25E0);
          v18 = sub_100029C70(v15, v17, v35);

          *(v14 + 4) = v18;
          *(v14 + 12) = 2080;
          if (a3)
          {
            *&v36[0] = v10;
            *(&v36[0] + 1) = a3;

            v19 = sub_1000E2368();
            v21 = v20;
          }

          else
          {
            v21 = 0xE300000000000000;
            v19 = 7104878;
          }

          v34 = sub_100029C70(v19, v21, v35);

          *(v14 + 14) = v34;
          _os_log_impl(&_mh_execute_header, v12, v13, "Disconnecting camera session because rapport and conduit session devices are mismatched: [%s and %s]", v14, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        v33 = *(&v49[0] + 1);
        v32 = *&v49[0];
LABEL_22:
        sub_1000BE71C(v32, v33);
        sub_1000033C8(&v45, &unk_10011FA58, &unk_1000F25E0);
        return sub_1000033C8(&v45, &unk_10011FA58, &unk_1000F25E0);
      }
    }
  }

  return result;
}

uint64_t sub_1000C4188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v7 = sub_1000E19A8();
  v5[12] = v7;
  v8 = *(v7 - 8);
  v5[13] = v8;
  v9 = *(v8 + 64) + 15;
  v5[14] = swift_task_alloc();
  v10 = swift_task_alloc();
  v5[15] = v10;
  *v10 = v5;
  v10[1] = sub_1000C4284;

  return sub_1000C49E4(a5);
}

uint64_t sub_1000C4284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 120);
  v6 = *(*v3 + 80);
  v8 = *v3;
  v4[16] = a1;
  v4[17] = a2;
  v4[18] = a3;

  return _swift_task_switch(sub_1000C43A0, v6, 0);
}

uint64_t sub_1000C43A0()
{
  v29 = v0;
  if (qword_10011DC40 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[11];
  v5 = sub_1000E1F08();
  sub_1000049D0(v5, qword_100120060);

  sub_1000A9C1C(v4, (v0 + 2));
  v6 = sub_1000E1EE8();
  v7 = sub_1000E2698();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[17];
  v9 = v0[18];
  v11 = v0[16];
  v12 = v0[11];
  if (v8)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315906;
    *(v13 + 4) = sub_100029C70(*v12, *(v12 + 8), &v28);
    *(v13 + 12) = 2048;
    *(v13 + 14) = *(v11 + 16);
    *(v13 + 22) = 2048;
    *(v13 + 24) = *(v10 + 16);

    *(v13 + 32) = 1024;
    *(v13 + 34) = *(v12 + 24) & 1;
    sub_1000A9D38(v12);
    _os_log_impl(&_mh_execute_header, v6, v7, "Recents calls data changed, sending %s new recent calls (%ld and contacts %ld isDedicatedInfo:%{BOOL}d.", v13, 0x26u);
    sub_10000E9DC(v14);
  }

  else
  {
    sub_1000A9D38(v0[11]);
  }

  v16 = v0[17];
  v15 = v0[18];
  v17 = v0[16];
  v18 = v0[14];
  v20 = v0[11];
  v19 = v0[12];
  v21 = *(v0[10] + 224);
  v22 = swift_task_alloc();
  v22[2] = v17;
  v22[3] = v16;
  v22[4] = v15;
  sub_1000041BC(&qword_10011EDD8, 255, &type metadata accessor for NCProtoRecentCallsDidChangeEvent);
  sub_1000E0E38();

  v23 = *v20;
  v24 = v20[1];
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v0[19] = qword_1001230E0;
  v25 = swift_task_alloc();
  v0[20] = v25;
  *v25 = v0;
  v25[1] = sub_1000C4704;
  v26 = v0[14];

  return sub_1000283F8(9, v26, v23, v24, 0);
}

uint64_t sub_1000C4704()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 152);
  if (v0)
  {
    v6 = sub_1000C48B0;
  }

  else
  {
    v6 = sub_1000C4830;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000C4830()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000C48B0()
{
  v1 = v0[10];
  (*(v0[13] + 8))(v0[14], v0[12]);

  return _swift_task_switch(sub_1000C492C, v1, 0);
}

uint64_t sub_1000C492C()
{
  v1 = v0[14];

  v2 = v0[1];
  v3 = v0[21];

  return v2();
}

uint64_t sub_1000C4990()
{

  sub_1000E1988();

  return sub_1000E1998();
}

uint64_t sub_1000C49E4(uint64_t a1)
{
  *(v2 + 24) = a1;

  return _swift_task_switch(sub_1000C4A74, v1, 0);
}

uint64_t sub_1000C4A74()
{
  v1 = v0[3];
  if (*(v1 + 24))
  {
    v2 = &_swiftEmptyArrayStorage;
    v3 = sub_10000C668(&_swiftEmptyArrayStorage);
    v4 = _swiftEmptyDictionarySingleton;
    goto LABEL_48;
  }

  v5 = [*(v1 + 56) recentCalls];
  if (v5)
  {
    v6 = v5;
    sub_10000CAAC(0, &unk_100120120, CHRecentCall_ptr);
    v7 = sub_1000E2468();
  }

  else
  {
    v7 = &_swiftEmptyArrayStorage;
  }

  if (v7 >> 62)
  {
    v8 = sub_1000E2B68();
    v51 = v7;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v51 = v7;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8 < 1)
  {
    goto LABEL_54;
  }

  v9 = 0;
  v10 = v7 & 0xC000000000000001;
  do
  {
    if (v10)
    {
      v11 = sub_1000E2A98();
    }

    else
    {
      v11 = *(v7 + 8 * v9 + 32);
    }

    v12 = v11;
    v13 = [v11 remoteParticipantHandles];
    if (v13)
    {
      v14 = v13;
      sub_10000CAAC(0, &unk_100120110, CHHandle_ptr);
      sub_10001B174(&qword_10011EB70, &unk_100120110, CHHandle_ptr);
      v15 = sub_1000E25E8();

      v16 = v15;
      v7 = v51;
      sub_10001E3B8(v16);
    }

    ++v9;
  }

  while (v8 != v9);
LABEL_18:
  sub_1000B549C(&_swiftEmptySetSingleton);
  v18 = sub_1000D4CDC(v17);

  v19 = sub_1000206F8(v18, 0, 0, 0);

  if (v19)
  {
    v46 = v19;
    if (v8)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v46 = sub_10000C558(&_swiftEmptyArrayStorage);
    if (v8)
    {
LABEL_20:
      v20 = 0;
      v49 = v7 & 0xFFFFFFFFFFFFFF8;
      v50 = v7 & 0xC000000000000001;
      v47 = v7 + 32;
      v2 = &_swiftEmptyArrayStorage;
      while (1)
      {
        v48 = v2;
        if (v50)
        {
          v21 = sub_1000E2A98();
        }

        else
        {
          if (v20 >= *(v49 + 16))
          {
            goto LABEL_53;
          }

          v21 = *(v47 + 8 * v20);
        }

        v22 = v21;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        v23 = objc_opt_self();
        v0[2] = 0;
        v24 = v22;
        v25 = [v23 archivedDataWithRootObject:v24 requiringSecureCoding:1 error:v0 + 2];
        v26 = v0[2];
        if (v25)
        {
          v27 = v25;
          ++v20;
        }

        else
        {
          v28 = v26;
          sub_1000E0BE8();

          swift_willThrow();

          if (v20 + 1 == v8)
          {
            goto LABEL_47;
          }

          v29 = v20 + 5;
          v30 = v51;
          while (1)
          {
            v31 = v29 - 4;
            if (v50)
            {
              v32 = sub_1000E2A98();
            }

            else
            {
              if (v31 >= *(v49 + 16))
              {
                goto LABEL_53;
              }

              v32 = *(v30 + 8 * v29);
            }

            v33 = v32;
            v20 = v29 - 3;
            if (__OFADD__(v31, 1))
            {
              goto LABEL_52;
            }

            v34 = objc_opt_self();
            v0[2] = 0;
            v24 = v33;
            v35 = [v34 archivedDataWithRootObject:v24 requiringSecureCoding:1 error:v0 + 2];
            v26 = v0[2];
            if (v35)
            {
              break;
            }

            v36 = v26;
            sub_1000E0BE8();

            swift_willThrow();

            ++v29;
            v30 = v51;
            if (v20 == v8)
            {
              v2 = v48;
              goto LABEL_47;
            }
          }

          v27 = v35;
          v2 = v48;
        }

        v37 = v26;
        v38 = sub_1000E0C88();
        v40 = v39;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1000D213C(0, *(v2 + 2) + 1, 1, v2);
        }

        v42 = *(v2 + 2);
        v41 = *(v2 + 3);
        if (v42 >= v41 >> 1)
        {
          v2 = sub_1000D213C((v41 > 1), v42 + 1, 1, v2);
        }

        *(v2 + 2) = v42 + 1;
        v43 = &v2[16 * v42];
        *(v43 + 4) = v38;
        *(v43 + 5) = v40;
        if (v20 == v8)
        {
          goto LABEL_47;
        }
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
    }
  }

  v2 = &_swiftEmptyArrayStorage;
LABEL_47:

  v4 = sub_1000CBFFC(v46);

  v3 = _swiftEmptyDictionarySingleton;
LABEL_48:
  v44 = v0[1];

  return v44(v2, v4, v3);
}

uint64_t sub_1000C4FF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v21 - v6;
  v8 = sub_1000C571C(a1);
  if (qword_10011DC40 != -1)
  {
    swift_once();
  }

  v9 = sub_1000E1F08();
  sub_1000049D0(v9, qword_100120060);

  sub_1000A9C1C(a1, v21);
  v10 = sub_1000E1EE8();
  v11 = sub_1000E2698();
  sub_1000A9D38(a1);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21[0] = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_100029C70(*a1, *(a1 + 8), v21);
    *(v12 + 12) = 2048;
    *(v12 + 14) = v8[2];

    _os_log_impl(&_mh_execute_header, v10, v11, "Favorites data changed, sending %s new favorites (%ld.", v12, 0x16u);
    sub_10000E9DC(v13);
  }

  else
  {
  }

  v14 = sub_1000E2538();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  v16 = sub_1000041BC(&unk_1001200D0, v15, type metadata accessor for ContinuitySessionServer);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = v16;
  *(v17 + 32) = a2;
  *(v17 + 40) = v8;
  v18 = *(a1 + 16);
  *(v17 + 48) = *a1;
  *(v17 + 64) = v18;
  v19 = *(a1 + 48);
  *(v17 + 80) = *(a1 + 32);
  *(v17 + 96) = v19;

  sub_1000A9C1C(a1, v21);

  sub_1000223DC(0, 0, v7, &unk_1000F3490, v17);
}

uint64_t sub_1000C52C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = sub_1000E1848();
  v6[5] = v8;
  v9 = *(v8 - 8);
  v6[6] = v9;
  v10 = *(v9 + 64) + 15;
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000C5388, a4, 0);
}

uint64_t sub_1000C5388()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = *(v0[2] + 224);
  *(swift_task_alloc() + 16) = v4;
  sub_1000041BC(&qword_10011EDD0, 255, &type metadata accessor for NCProtoFavoritesDidChangeEvent);
  sub_1000E0E38();

  v6 = *v3;
  v7 = v3[1];
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v0[8] = qword_1001230E0;
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_1000C5514;
  v9 = v0[7];

  return sub_100029248(14, v9, v6, v7, 0);
}

uint64_t sub_1000C5514()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v6 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_1000C563C;
  }

  else
  {
    v4 = sub_1000713E8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000C563C()
{
  v1 = v0[2];
  (*(v0[6] + 8))(v0[7], v0[5]);

  return _swift_task_switch(sub_1000C56B8, v1, 0);
}

uint64_t sub_1000C56B8()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

void *sub_1000C571C(uint64_t a1)
{
  v3 = sub_1000E15B8();
  v72 = *(v3 - 8);
  v4 = *(v72 + 64);
  __chkstk_darwin(v3);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 24) & 1) == 0)
  {
    return &_swiftEmptyArrayStorage;
  }

  v7 = *(a1 + 48);
  v71 = *(a1 + 40);
  v84 = v7;
  v70 = *(a1 + 32);
  v8 = *(a1 + 16);
  v81 = *a1;
  v82 = v8;
  v83 = *(a1 + 32);
  v62 = *(a1 + 56);
  sub_1000A9C1C(a1, v85);
  sub_10000CB64(&v84, v85, &unk_1001200E0, &qword_1000F3328);
  if (qword_10011DBF0 != -1)
  {
LABEL_58:
    swift_once();
  }

  v9 = [qword_10011EB18 entries];
  sub_10000CAAC(0, &unk_10011EB40, CNFavoritesEntry_ptr);
  v10 = sub_1000E2468();

  v73 = sub_10000C544(&_swiftEmptyArrayStorage);
  if (v10 >> 62)
  {
    v11 = sub_1000E2B68();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v63 = v1;
  if (v11)
  {
    v60 = v6;
    v61 = v3;
    v12 = 0;
    v3 = 0;
    v76 = v10 & 0xC000000000000001;
    v75 = v10 & 0xFFFFFFFFFFFFFF8;
    v59 = v72 + 32;
    v74 = &_swiftEmptyArrayStorage;
    v69 = v10;
    v68 = v11;
    while (1)
    {
      if (v76)
      {
        v14 = sub_1000E2A98();
      }

      else
      {
        if (v12 >= *(v75 + 16))
        {
          goto LABEL_57;
        }

        v14 = *(v10 + 8 * v12 + 32);
      }

      v1 = v14;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      if (qword_10011DC50 != -1)
      {
        swift_once();
      }

      v16 = qword_100120078;
      v17 = [v1 bundleIdentifier];
      v18 = sub_1000E2338();
      v20 = v19;

      v6 = &v59;
      *&v85[0] = v18;
      *(&v85[0] + 1) = v20;
      __chkstk_darwin(v21);
      *(&v59 - 2) = v85;
      LOBYTE(v16) = sub_1000D0350(sub_1000CDA88, (&v59 - 4), v16);

      if ((v16 & 1) == 0)
      {
        goto LABEL_8;
      }

      v22 = [v1 contactProperty];
      if (!v22)
      {
        goto LABEL_8;
      }

      v23 = v22;
      v6 = [v1 value];
      if (!v6)
      {
        sub_1000E2338();
        v6 = sub_1000E2328();
      }

      v24 = [objc_opt_self() normalizedHandleWithDestinationID:v6];

      if (!v24)
      {
        break;
      }

      v25 = [v24 type];
      if (v25 == 2)
      {
        v30 = [v23 label];
        if (v30)
        {
          v31 = v30;
          sub_1000E2338();
          v33 = v32;
        }

        else
        {
          v33 = 0;
        }

        v37 = [v24 value];
        if (!v37)
        {
          sub_1000E2338();
          v37 = sub_1000E2328();
        }

        v35 = [objc_allocWithZone(CNPhoneNumber) initWithStringValue:v37];

        if (v33)
        {
          v36 = sub_1000E2328();
        }

        else
        {
          v36 = 0;
        }

        v38 = [objc_allocWithZone(CNLabeledValue) initWithLabel:v36 value:v35];
        v6 = 0;
        goto LABEL_42;
      }

      if (v25 == 3)
      {
        v26 = [v23 label];
        if (v26)
        {
          v27 = v26;
          sub_1000E2338();
          v29 = v28;
        }

        else
        {
          v29 = 0;
        }

        v34 = [v24 value];
        if (!v34)
        {
          __break(1u);

          __break(1u);
          return result;
        }

        v35 = v34;
        if (v29)
        {
          v36 = sub_1000E2328();
        }

        else
        {
          v36 = 0;
        }

        v38 = [objc_allocWithZone(CNLabeledValue) initWithLabel:v36 value:v35];
        v6 = 1;
LABEL_42:

        v13 = v38;
        v39 = sub_1000C2B2C(v70, v71, v13, v6);

        if (v39)
        {
          v66 = v6;
          v6 = sub_10000CAAC(0, &qword_1001200F0, TUContinuityFavorite_ptr);
          v40 = v1;
          v41 = v39;
          v1 = v6;
          v42 = sub_1000DE464(v40, v41);
          if (v42)
          {
            v67 = v41;
            v65 = v40;
            v64 = __chkstk_darwin(v42);
            *(&v59 - 2) = v64;
            sub_1000041BC(&qword_1001200F8, 255, &type metadata accessor for NCProtoContinuityFavorite);
            v43 = v60;
            v44 = v61;
            sub_1000E0E38();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v74 = sub_1000D2248(0, v74[2] + 1, 1, v74);
            }

            v46 = v74[2];
            v45 = v74[3];
            if (v46 >= v45 >> 1)
            {
              v74 = sub_1000D2248(v45 > 1, v46 + 1, 1, v74);
            }

            v47 = v74;
            v74[2] = v46 + 1;
            (*(v72 + 32))(v47 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v46, v43, v44);
            v48 = [v67 identifier];
            v6 = sub_1000E2338();
            v50 = v49;

            v51 = sub_1000C2EA0(v13, v66);
            v52 = v73;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v85[0] = v52;
            v1 = v85;
            sub_1000CA7F8(v51, v6, v50, isUniquelyReferenced_nonNull_native, &unk_100120100, &qword_1000F3330, sub_10001F5F8);

            v73 = *&v85[0];
            goto LABEL_52;
          }
        }

        else
        {
        }

        v13 = v23;
LABEL_52:
        v10 = v69;
        v11 = v68;
        goto LABEL_9;
      }

      v13 = v24;
LABEL_9:

      ++v12;
      if (v15 == v11)
      {
        goto LABEL_55;
      }
    }

LABEL_8:
    v13 = v1;
    goto LABEL_9;
  }

  v74 = &_swiftEmptyArrayStorage;
LABEL_55:

  v55 = v84;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v80 = v55;
  sub_1000CDB30(v73, sub_1000CCF60, 0, v56, &v80);

  sub_1000033C8(&v84, &unk_1001200E0, &qword_1000F3328);
  v57 = v80;
  v85[0] = v81;
  v85[1] = v82;
  v85[2] = v83;
  v58 = v62;
  v86 = v80;
  v87 = v62;
  sub_1000C3AF4(v85);
  v77[0] = v81;
  v77[1] = v82;
  v77[2] = v83;
  v78 = v57;
  v79 = v58;
  sub_1000A9D38(v77);
  return v74;
}

void sub_1000C60F4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  sub_1000036AC((Strong + 256), *(Strong + 280));
  type metadata accessor for CallPublisher();
  v2 = sub_1000048CC();
  v3 = v2;
  if (v2 >> 62)
  {
LABEL_34:
    v4 = sub_1000E2B68();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_35:

    return;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_35;
  }

LABEL_4:
  v5 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = sub_1000E2A98();
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v9 = [v6 status];
    if (v9 == 1 || v9 == 3)
    {
      break;
    }

    ++v5;
    if (v8 == v4)
    {
      goto LABEL_35;
    }
  }

  if (([v7 isScreening] & 1) != 0 || objc_msgSend(*(v1 + 240), "currentState") != 1)
  {

    return;
  }

  v11 = [*(v1 + 200) activeConversationForCall:v7];
  if (v11)
  {
    v12 = v11;
    if ([v11 isContinuitySession])
    {
      if (qword_10011DC40 != -1)
      {
        swift_once();
      }

      v13 = sub_1000E1F08();
      sub_1000049D0(v13, qword_100120060);
      v14 = v7;
      v15 = sub_1000E1EE8();
      v16 = sub_1000E2668();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        *(v17 + 4) = v14;
        *v18 = v14;
        v19 = v14;
        _os_log_impl(&_mh_execute_header, v15, v16, "Call active on phone while inSession - ignoring since it is a continuity conversation. %@", v17, 0xCu);
        sub_1000033C8(v18, &unk_10011EAC0, &unk_1000F0E60);
      }

      else
      {
      }

      return;
    }
  }

  if (qword_10011DC40 != -1)
  {
    swift_once();
  }

  v20 = sub_1000E1F08();
  sub_1000049D0(v20, qword_100120060);
  v21 = v7;
  v22 = sub_1000E1EE8();
  v23 = sub_1000E2698();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = v21;
    v26 = v21;
    _os_log_impl(&_mh_execute_header, v22, v23, "Call active on phone while inSession. Calling exitSession. %@", v24, 0xCu);
    sub_1000033C8(v25, &unk_10011EAC0, &unk_1000F0E60);
  }

  v27 = *(v1 + 240);
  v28 = sub_1000E2328();
  [v27 exitDiscoverySessionWithReason:v28];
}

uint64_t sub_1000C6584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v7 = sub_1000E1BB8();
  v5[12] = v7;
  v8 = *(v7 - 8);
  v5[13] = v8;
  v9 = *(v8 + 64) + 15;
  v5[14] = swift_task_alloc();
  v10 = swift_task_alloc();
  v5[15] = v10;
  *v10 = v5;
  v10[1] = sub_1000C6680;

  return sub_1000C6D08(a5);
}

uint64_t sub_1000C6680(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 128) = a1;

  return _swift_task_switch(sub_1000C6798, v3, 0);
}

uint64_t sub_1000C6798()
{
  v23 = v0;
  if (qword_10011DC40 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[11];
  v3 = sub_1000E1F08();
  sub_1000049D0(v3, qword_100120060);
  sub_1000A9C1C(v2, (v0 + 2));

  v4 = sub_1000E1EE8();
  v5 = sub_1000E2698();
  sub_1000A9D38(v2);
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[16];
  if (v6)
  {
    v8 = v0[11];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_100029C70(*v8, *(v8 + 8), &v22);
    *(v9 + 12) = 2048;
    *(v9 + 14) = *(v7 + 16);

    _os_log_impl(&_mh_execute_header, v4, v5, "[ContinuityCalls][%s] Sending updated calls of count %ld", v9, 0x16u);
    sub_10000E9DC(v10);
  }

  else
  {
    v11 = v0[16];
  }

  v12 = v0[16];
  v13 = v0[14];
  v15 = v0[11];
  v14 = v0[12];
  v16 = *(v0[10] + 224);
  *(swift_task_alloc() + 16) = v12;
  sub_1000041BC(&qword_10011ED68, 255, &type metadata accessor for NCProtoContinuityCallsDidChangeEvent);
  sub_1000E0E38();

  v17 = *v15;
  v18 = v15[1];
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v0[17] = qword_1001230E0;
  v19 = swift_task_alloc();
  v0[18] = v19;
  *v19 = v0;
  v19[1] = sub_1000C6A7C;
  v20 = v0[14];

  return sub_100028EB4(13, v20, v17, v18, 0);
}

uint64_t sub_1000C6A7C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;

  v5 = *(v2 + 136);
  if (v0)
  {

    v6 = sub_1000C6C2C;
  }

  else
  {
    v6 = sub_1000C6BB4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000C6BB4()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[14];

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000C6C2C()
{
  v1 = v0[10];
  (*(v0[13] + 8))(v0[14], v0[12]);

  return _swift_task_switch(sub_1000C6CA8, v1, 0);
}

uint64_t sub_1000C6CA8()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000C6D08(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_1000C6D28, v1, 0);
}

uint64_t sub_1000C6D28()
{
  if (![*(v0[4] + 232) isGreenTea] || (v2 = *(v0[4] + 248), TUGreenTeaLagunaEnabled()))
  {
    if (*(v0[3] + 24))
    {
      v3 = sub_100021DD8();
    }

    else
    {
      if (!(&_swiftEmptyArrayStorage >> 62) || !sub_1000E2B68())
      {
        v4 = &_swiftEmptySetSingleton;
        goto LABEL_8;
      }

      sub_1000E006C(&_swiftEmptyArrayStorage);
    }

    v4 = v3;
LABEL_8:
    v0[5] = v4;
    v6 = v0[3];
    v5 = v0[4];
    v7 = sub_1000041BC(&unk_1001200D0, v1, type metadata accessor for ContinuitySessionServer);
    v8 = swift_allocObject();
    v0[6] = v8;
    swift_weakInit();
    v9 = swift_task_alloc();
    v0[7] = v9;
    *(v9 + 16) = v8;
    *(v9 + 24) = 0;
    *(v9 + 32) = v6;
    *(v9 + 40) = v4;
    v10 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v11 = swift_task_alloc();
    v0[8] = v11;
    v12 = sub_10000ADE4(&qword_10011ECC8, &qword_1000F3300);
    *v11 = v0;
    v11[1] = sub_1000C6F68;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, v5, v7, 0xD000000000000015, 0x80000001000EC460, sub_1000CCF50, v9, v12);
  }

  v13 = v0[1];

  return v13(&_swiftEmptyArrayStorage);
}

uint64_t sub_1000C6F68()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v5 = *(*v0 + 32);
  v7 = *v0;

  return _swift_task_switch(sub_1000C70D4, v5, 0);
}

uint64_t sub_1000C70EC(uint64_t a1, uint64_t a2, char a3, _OWORD *a4, uint64_t a5)
{
  v34 = a5;
  v33 = sub_1000E2118();
  v37 = *(v33 - 8);
  v8 = *(v37 + 64);
  __chkstk_darwin(v33);
  v32 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000E2148();
  v35 = *(v10 - 8);
  v36 = v10;
  v11 = *(v35 + 64);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000ADE4(&unk_10011ED00, &unk_1000F1160);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v30 - v17;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v31 = [*(result + 200) queue];
    v20 = swift_allocObject();
    swift_weakInit();
    (*(v15 + 16))(v18, a1, v14);
    v21 = (*(v15 + 80) + 104) & ~*(v15 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = a3 & 1;
    v23 = a4[1];
    *(v22 + 32) = *a4;
    *(v22 + 48) = v23;
    v24 = a4[3];
    *(v22 + 64) = a4[2];
    *(v22 + 80) = v24;
    v25 = v13;
    v26 = v33;
    *(v22 + 96) = v34;
    (*(v15 + 32))(v22 + v21, v18, v14);
    aBlock[4] = sub_1000CD914;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000026A0;
    aBlock[3] = &unk_1001163A0;
    v27 = _Block_copy(aBlock);

    sub_1000A9C1C(a4, &v38);

    sub_1000E2138();
    v38 = &_swiftEmptyArrayStorage;
    sub_1000041BC(&qword_10011EA20, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
    sub_10002B8C4();
    v28 = v32;
    sub_1000E28C8();
    v29 = v31;
    sub_1000E2738();
    _Block_release(v27);

    (*(v37 + 8))(v28, v26);
    (*(v35 + 8))(v25, v36);
  }

  return result;
}

uint64_t sub_1000C7560(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v80 = a4;
  v90 = a3;
  LODWORD(v101) = a2;
  v100 = sub_1000E1208();
  v94 = *(v100 - 8);
  v6 = *(v94 + 64);
  __chkstk_darwin(v100);
  v99 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v78 = a5;
  v9 = *(result + 280);
  v97 = result;
  sub_1000036AC((result + 256), v9);
  type metadata accessor for CallPublisher();
  v10 = sub_1000048CC();
  v11 = v10;
  v111 = &_swiftEmptyArrayStorage;
  if (v10 >> 62)
  {
    goto LABEL_114;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000E2B68())
  {
    v13 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = sub_1000E2A98();
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_107;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (([v14 isScreening] & 1) == 0)
      {
        v17 = [v15 provider];
        v18 = [v17 isTelephonyProvider];

        if (v18)
        {
          if (v101)
          {
            goto LABEL_18;
          }
        }

        else if ([v15 status] == 4 || objc_msgSend(v15, "status") == 1)
        {
LABEL_18:
          sub_1000E2AC8();
          v19 = v111[2];
          sub_1000E2AF8();
          sub_1000E2B08();
          sub_1000E2AD8();
          goto LABEL_7;
        }
      }

LABEL_7:
      ++v13;
      if (v16 == i)
      {
        v20 = v111;
        goto LABEL_22;
      }
    }

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
    ;
  }

  v20 = &_swiftEmptyArrayStorage;
LABEL_22:

  v105 = &_swiftEmptyArrayStorage;
  v21 = v20;
  v87 = v20;
  if ((v20 & 0x8000000000000000) != 0 || (v20 & 0x4000000000000000) != 0)
  {
    v22 = sub_1000E2B68();
    v21 = v87;
  }

  else
  {
    v22 = *(v20 + 16);
  }

  v23 = &_swiftEmptyArrayStorage;
  if (v22)
  {
    v11 = 0;
    v86 = v21 & 0xC000000000000001;
    v85 = v21 + 32;
    v89 = v80 & 0xC000000000000001;
    v24 = v80 & 0xFFFFFFFFFFFFFF8;
    if (v80 < 0)
    {
      v24 = v80;
    }

    v82 = v24;
    v79 = v80 + 56;
    v84 = v22;
    while (1)
    {
      if (v86)
      {
        v26 = sub_1000E2A98();
      }

      else
      {
        if (v11 >= *(v21 + 16))
        {
          goto LABEL_113;
        }

        v26 = *(v85 + 8 * v11);
      }

      v27 = v26;
      v28 = __OFADD__(v11++, 1);
      if (v28)
      {
        goto LABEL_112;
      }

      if ((*(v90 + 24) & 1) == 0)
      {
LABEL_29:
        sub_1000E2AC8();
        v25 = v105[2];
        sub_1000E2AF8();
        sub_1000E2B08();
        sub_1000E2AD8();
        goto LABEL_30;
      }

      v29 = [*(v97 + 200) activeConversationForCall:v26];
      if (!v29)
      {

        goto LABEL_30;
      }

      v95 = v27;
      *&v96 = v11;
      v81 = v29;
      v30 = [v29 remoteMembers];
      v11 = TUConversationMember_ptr;
      v31 = sub_10000CAAC(0, &qword_10011F890, TUConversationMember_ptr);
      sub_10001B174(&qword_10011F898, &qword_10011F890, TUConversationMember_ptr);
      v32 = sub_1000E25E8();

      v104 = &_swiftEmptyArrayStorage;
      v98 = v32;
      v101 = v31;
      if ((v32 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_1000E2918();
        sub_1000E2628();
        v32 = v106;
        v33 = v107;
        v34 = v108;
        v35 = v109;
        v36 = v110;
      }

      else
      {
        v37 = -1 << *(v32 + 32);
        v33 = v32 + 56;
        v34 = ~v37;
        v38 = -v37;
        v39 = v38 < 64 ? ~(-1 << v38) : -1;
        v36 = v39 & *(v32 + 56);

        v35 = 0;
      }

      v93 = v34;
      v40 = (v34 + 64) >> 6;
      if ((v32 & 0x8000000000000000) == 0)
      {
        break;
      }

      while (1)
      {
        v46 = sub_1000E29A8();
        if (!v46)
        {
          break;
        }

        v102 = v46;
        swift_dynamicCast();
        v45 = v103;
        v43 = v35;
        v44 = v36;
        if (!v103)
        {
          break;
        }

LABEL_53:
        v47 = [v45 handles];
        v11 = TUHandle_ptr;
        sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
        sub_10001B174(&qword_10011EA60, &unk_10011F930, TUHandle_ptr);
        v48 = sub_1000E25E8();

        sub_1000CC4E8(v48);
        v35 = v43;
        v36 = v44;
        if ((v32 & 0x8000000000000000) == 0)
        {
          goto LABEL_45;
        }
      }

LABEL_55:
      sub_10000A840();

      v83 = v104;
      if (v104 >> 62)
      {
        v49 = sub_1000E2B68();
      }

      else
      {
        v49 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v96;
      v50 = v95;
      if (!v49)
      {
        goto LABEL_84;
      }

      v51 = 0;
      v93 = v83 & 0xC000000000000001;
      v92 = v83 & 0xFFFFFFFFFFFFFF8;
      v91 = v83 + 32;
      v88 = v49;
      while (2)
      {
        if (v93)
        {
          v52 = sub_1000E2A98();
        }

        else
        {
          if (v51 >= *(v92 + 16))
          {
            goto LABEL_111;
          }

          v52 = *(v91 + 8 * v51);
        }

        v101 = v52;
        v28 = __OFADD__(v51++, 1);
        if (v28)
        {
          goto LABEL_110;
        }

        if (v89)
        {
          swift_unknownObjectRetain();
          sub_1000E2918();
          sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
          sub_10001B174(&qword_10011EA60, &unk_10011F930, TUHandle_ptr);
          sub_1000E2628();
          v53 = v111;
          v54 = v112;
          v55 = v113;
          v56 = v114;
          v11 = v115;
        }

        else
        {
          v53 = v80;
          v57 = -1 << *(v80 + 32);
          v55 = ~v57;
          v58 = -v57;
          if (v58 < 64)
          {
            v59 = ~(-1 << v58);
          }

          else
          {
            v59 = -1;
          }

          v11 = v59 & *(v80 + 56);

          v56 = 0;
          v54 = v79;
        }

        v98 = v55;
        v60 = (v55 + 64) >> 6;
        while (v53 < 0)
        {
          v64 = sub_1000E29A8();
          if (!v64)
          {
            goto LABEL_81;
          }

          v103 = v64;
          sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
          swift_dynamicCast();
          v63 = v104;
          if (!v104)
          {
            goto LABEL_81;
          }

LABEL_79:
          v65 = [v63 isEquivalentToHandle:v101];

          if (v65)
          {

            sub_10000A840();
            v11 = v96;
            goto LABEL_29;
          }
        }

        v61 = v56;
        v62 = v11;
        if (!v11)
        {
          while (1)
          {
            v56 = v61 + 1;
            if (__OFADD__(v61, 1))
            {
              break;
            }

            if (v56 >= v60)
            {
              goto LABEL_81;
            }

            v62 = *(v54 + 8 * v56);
            ++v61;
            if (v62)
            {
              goto LABEL_75;
            }
          }

          __break(1u);
          goto LABEL_105;
        }

LABEL_75:
        v11 = (v62 - 1) & v62;
        v63 = *(*(v53 + 48) + ((v56 << 9) | (8 * __clz(__rbit64(v62)))));
        if (v63)
        {
          goto LABEL_79;
        }

LABEL_81:
        sub_10000A840();

        v11 = v96;
        v50 = v95;
        if (v51 != v88)
        {
          continue;
        }

        break;
      }

LABEL_84:

LABEL_30:
      v21 = v87;
      if (v11 == v84)
      {
        v23 = v105;
        goto LABEL_88;
      }
    }

LABEL_45:
    v41 = v35;
    v42 = v36;
    v43 = v35;
    if (!v36)
    {
      while (1)
      {
        v43 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          break;
        }

        if (v43 >= v40)
        {
          goto LABEL_55;
        }

        v42 = *(v33 + 8 * v43);
        ++v41;
        if (v42)
        {
          goto LABEL_49;
        }
      }

LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

LABEL_49:
    v44 = (v42 - 1) & v42;
    v45 = *(*(v32 + 48) + ((v43 << 9) | (8 * __clz(__rbit64(v42)))));
    if (!v45)
    {
      goto LABEL_55;
    }

    goto LABEL_53;
  }

LABEL_88:

  if ((v23 & 0x8000000000000000) == 0 && (v23 & 0x4000000000000000) == 0)
  {
    v66 = *(v23 + 16);
    if (!v66)
    {
      goto LABEL_117;
    }

    goto LABEL_91;
  }

  v66 = sub_1000E2B68();
  if (v66)
  {
LABEL_91:
    v67 = 0;
    v11 = 0;
    v101 = (v23 & 0xC000000000000001);
    v98 = v94 + 32;
    v68 = &_swiftEmptyArrayStorage;
    v96 = xmmword_1000F0FE0;
    while (1)
    {
      if (v101)
      {
        v69 = v23;
        v70 = sub_1000E2A98();
      }

      else
      {
        if (v67 >= *(v23 + 16))
        {
          goto LABEL_109;
        }

        v69 = v23;
        v70 = *(v23 + 8 * v67 + 32);
      }

      v71 = v70;
      v72 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        goto LABEL_108;
      }

      v73 = [*(v97 + 200) activeConversationForCall:v70];
      v74 = __chkstk_darwin(v73);
      *(&v78 - 4) = v71;
      *(&v78 - 3) = v74;
      *(&v78 - 1) = v96;
      sub_1000041BC(&qword_10011ED20, 255, &type metadata accessor for NCProtoContinuityCall);
      sub_1000E0E38();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_1000D25B4(0, v68[2] + 1, 1, v68);
      }

      v76 = v68[2];
      v75 = v68[3];
      if (v76 >= v75 >> 1)
      {
        v68 = sub_1000D25B4(v75 > 1, v76 + 1, 1, v68);
      }

      v68[2] = v76 + 1;
      (*(v94 + 32))(v68 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v76, v99, v100);
      ++v67;
      v77 = v72 == v66;
      v23 = v69;
      if (v77)
      {
        goto LABEL_118;
      }
    }
  }

LABEL_117:
  v68 = &_swiftEmptyArrayStorage;
LABEL_118:

  v105 = v68;
  sub_10000ADE4(&unk_10011ED00, &unk_1000F1160);
  sub_1000E24D8();
}

uint64_t sub_1000C81B8()
{
  v1[2] = v0;
  v1[3] = swift_getObjectType();
  v2 = *(*(sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000C8260, v0, 0);
}

uint64_t sub_1000C8260()
{
  v1 = v0[2];
  if (*(v1 + 344))
  {
    if (qword_10011DC40 != -1)
    {
      swift_once();
    }

    v2 = sub_1000E1F08();
    sub_1000049D0(v2, qword_100120060);
    v3 = sub_1000E1EE8();
    v4 = sub_1000E2668();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "[ActiveConversations] Deduping active conversations changed event.", v5, 2u);
    }
  }

  else
  {
    v7 = v0[3];
    v6 = v0[4];
    v8 = sub_1000E2538();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v10 = sub_1000041BC(&unk_1001200D0, v9, type metadata accessor for ContinuitySessionServer);
    v11 = swift_allocObject();
    v11[2] = v1;
    v11[3] = v10;
    v11[4] = v1;
    v11[5] = v7;
    swift_retain_n();
    v12 = sub_100022960(0, 0, v6, &unk_1000F32E0, v11);
    v13 = *(v1 + 344);
    *(v1 + 344) = v12;
  }

  v14 = v0[4];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000C8474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a4;
  v6 = *(*(sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30) - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  v7 = sub_1000E2B28();
  v4[26] = v7;
  v8 = *(v7 - 8);
  v4[27] = v8;
  v9 = *(v8 + 64) + 15;
  v4[28] = swift_task_alloc();

  return _swift_task_switch(sub_1000C8570, a4, 0);
}

uint64_t sub_1000C8570()
{
  v1 = *(v0 + 224);
  sub_1000E2CF8();
  v2 = swift_task_alloc();
  *(v0 + 232) = v2;
  *v2 = v0;
  v2[1] = sub_1000C863C;
  v3 = *(v0 + 224);

  return sub_100003DA4(100000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1000C863C()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;

  v5 = v2[28];
  v6 = v2[27];
  v7 = v2[26];
  v8 = v2[24];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v9 = sub_1000CF77C;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v9 = sub_1000C87E8;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_1000C87E8()
{
  v1 = *(v0 + 192);
  v2 = sub_1000C8FF4();
  v3 = *(v1 + 136);
  v4 = *(v1 + 168);
  v5 = *(v1 + 120);
  *(v0 + 48) = *(v1 + 152);
  *(v0 + 64) = v4;
  *(v0 + 16) = v5;
  *(v0 + 32) = v3;
  v6 = *(v0 + 24);
  if (v6)
  {
    v8 = *(v0 + 192);
    v7 = *(v0 + 200);
    v9 = *(v0 + 16);
    v10 = *(v8 + 168);
    v11 = *(v8 + 152);
    *(v0 + 144) = *(v8 + 136);
    *(v0 + 160) = v11;
    *(v0 + 176) = v10;
    v12 = sub_1000E2538();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    v14 = sub_1000041BC(&unk_1001200D0, v13, type metadata accessor for ContinuitySessionServer);
    v15 = swift_allocObject();
    *(v15 + 16) = v8;
    *(v15 + 24) = v14;
    *(v15 + 32) = v9;
    *(v15 + 40) = v6;
    v16 = *(v0 + 160);
    *(v15 + 48) = *(v0 + 144);
    *(v15 + 64) = v16;
    *(v15 + 80) = *(v0 + 176);
    *(v15 + 96) = v2;
    *(v15 + 104) = v8;
    swift_retain_n();
    sub_10000CB64(v0 + 16, v0 + 80, &unk_10011FA58, &unk_1000F25E0);
    sub_100022960(0, 0, v7, &unk_1000F32F0, v15);
  }

  else
  {
  }

  v17 = *(v0 + 224);
  v18 = *(v0 + 192);
  v19 = *(v0 + 200);
  v20 = *(v18 + 344);
  *(v18 + 344) = 0;

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1000C89D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v8 = sub_1000E1D48();
  v6[13] = v8;
  v9 = *(v8 - 8);
  v6[14] = v9;
  v10 = *(v9 + 64) + 15;
  v6[15] = swift_task_alloc();

  return _swift_task_switch(sub_1000C8A98, a6, 0);
}

uint64_t sub_1000C8A98()
{
  v23 = v0;
  if (qword_10011DC40 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = sub_1000E1F08();
  sub_1000049D0(v3, qword_100120060);
  sub_1000A9C1C(v2, (v0 + 2));

  v4 = sub_1000E1EE8();
  v5 = sub_1000E2698();
  sub_1000A9D38(v2);
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = v0[10];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_100029C70(*v8, *(v8 + 8), &v22);
    *(v9 + 12) = 2048;
    *(v9 + 14) = *(v7 + 16);

    _os_log_impl(&_mh_execute_header, v4, v5, "[ActiveConversations][%s] Sending updated active conversations of count %ld", v9, 0x16u);
    sub_10000E9DC(v10);
  }

  else
  {
    v11 = v0[11];
  }

  v12 = v0[15];
  v13 = v0[13];
  v15 = v0[10];
  v14 = v0[11];
  v16 = *(v0[12] + 224);
  *(swift_task_alloc() + 16) = v14;
  sub_1000041BC(&unk_10011ED50, 255, &type metadata accessor for NCProtoActiveConversationsDidChangeEvent);
  sub_1000E0E38();

  v17 = *v15;
  v18 = v15[1];
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v0[16] = qword_1001230E0;
  v19 = swift_task_alloc();
  v0[17] = v19;
  *v19 = v0;
  v19[1] = sub_1000C8D6C;
  v20 = v0[15];

  return sub_100028B20(12, v20, v17, v18, 0);
}

uint64_t sub_1000C8D6C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;

  v5 = *(v2 + 128);
  if (v0)
  {

    v6 = sub_1000C8F1C;
  }

  else
  {
    v6 = sub_1000C8EA4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000C8EA4()
{
  (*(v0[14] + 8))(v0[15], v0[13]);
  v1 = v0[15];

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000C8F1C()
{
  v1 = v0[12];
  (*(v0[14] + 8))(v0[15], v0[13]);

  return _swift_task_switch(sub_1000C8F94, v1, 0);
}

uint64_t sub_1000C8F94()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

void *sub_1000C8FF4()
{
  v1 = [*(v0 + 216) activeConversations];
  sub_10000CAAC(0, qword_10011F0D0, TUConversation_ptr);
  sub_10001B174(&qword_10011FA90, qword_10011F0D0, TUConversation_ptr);
  v2 = sub_1000E25E8();

  v39 = 0;
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = &_swiftEmptySetSingleton;
    v42 = &_swiftEmptySetSingleton;
    v2 = sub_1000E2918();
    for (i = sub_1000E29A8(); i; i = sub_1000E29A8())
    {
      v40 = i;
      swift_dynamicCast();
      if ([v41 state] && objc_msgSend(v41, "state") != 1 && ((objc_msgSend(v41, "isContinuitySession") & 1) != 0 || !objc_msgSend(v41, "avMode")))
      {
      }

      else
      {
        v12 = v41;
        v13 = v4[2];
        if (v4[3] <= v13)
        {
          sub_1000D35E8(v13 + 1);
        }

        v4 = v42;
        v6 = sub_1000E2808(v42[5]);
        v7 = (v42 + 7);
        v8 = -1 << *(v42 + 32);
        v9 = v6 & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~v42[(v9 >> 6) + 7]) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~v42[(v9 >> 6) + 7])) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              goto LABEL_47;
            }

            v16 = v10 == v15;
            if (v10 == v15)
            {
              v10 = 0;
            }

            v14 |= v16;
            v17 = *&v7[8 * v10];
          }

          while (v17 == -1);
          v11 = __clz(__rbit64(~v17)) + (v10 << 6);
        }

        *&v7[(v11 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v11;
        *(v4[6] + 8 * v11) = v12;
        ++v4[2];
      }
    }

    goto LABEL_46;
  }

  v18 = *(v2 + 32);
  v37 = ((1 << v18) + 63) >> 6;
  if ((v18 & 0x3Fu) > 0xD)
  {
    goto LABEL_48;
  }

  while (2)
  {
    v36[1] = v36;
    __chkstk_darwin(v3);
    v20 = v36 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v20, v19);
    v38 = 0;
    v21 = 0;
    v22 = 1 << *(v2 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v2 + 56);
    v25 = (v22 + 63) >> 6;
    while (v24)
    {
      v26 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_36:
      v29 = v26 | (v21 << 6);
      v30 = *(*(v2 + 48) + 8 * v29);
      if (![v30 state] || objc_msgSend(v30, "state") == 1)
      {

LABEL_42:
        *&v20[(v29 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v29;
        if (__OFADD__(v38++, 1))
        {
          __break(1u);
LABEL_45:
          v4 = sub_1000CC924(v20, v37, v38, v2, &qword_1001200B0, &qword_1000F32D0);
          goto LABEL_46;
        }
      }

      else if ([v30 isContinuitySession])
      {
      }

      else
      {
        v31 = [v30 avMode];

        if (v31)
        {
          goto LABEL_42;
        }
      }
    }

    v27 = v21;
    while (1)
    {
      v21 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v21 >= v25)
      {
        goto LABEL_45;
      }

      v28 = *(v2 + 56 + 8 * v21);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v24 = (v28 - 1) & v28;
        goto LABEL_36;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v35 = swift_slowAlloc();
  v4 = sub_1000CCC90(v35, v37, v2, sub_1000C94F8);

LABEL_46:
  v33 = sub_1000B4A24(v4);

  return v33;
}

uint64_t sub_1000C94F8(id *a1)
{
  v1 = *a1;
  if (![*a1 state])
  {
    return 1;
  }

  result = [v1 state];
  if (result != 1)
  {
    return ([v1 isContinuitySession] & 1) == 0 && objc_msgSend(v1, "avMode") != 0;
  }

  return result;
}

uint64_t sub_1000C958C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002D64;

  return sub_1000C81B8();
}

uint64_t sub_1000C969C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002E7C;

  return sub_1000C81B8();
}

uint64_t sub_1000C976C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v15 - v10;
  v12 = sub_1000E2538();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;

  sub_100022960(0, 0, v11, a6, v13);
}

uint64_t sub_1000C98A0()
{
  v1 = *(v0 + 112);

  sub_1000CEE08(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176));
  v2 = *(v0 + 184);

  v3 = *(v0 + 192);

  v4 = *(v0 + 224);

  sub_10000E9DC((v0 + 256));
  v5 = *(v0 + 296);
  swift_unknownObjectRelease();
  v6 = *(v0 + 304);
  swift_unknownObjectRelease();
  v7 = *(v0 + 312);
  swift_unknownObjectRelease();
  v8 = *(v0 + 320);

  v9 = *(v0 + 328);

  v10 = *(v0 + 336);

  v11 = *(v0 + 344);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000C9964()
{
  sub_1000C98A0();

  return _swift_defaultActor_deallocate(v0);
}

__n128 sub_1000C99B4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000C99C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1000C9A10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000C9A70(int a1, id a2)
{
  [a2 supportsTelephonyCalls];
  sub_1000E1818();
  [a2 supportsFaceTimeAudio];
  sub_1000E17F8();
  [a2 supportsFaceTimeVideo];
  return sub_1000E1808();
}

unint64_t sub_1000C9AE0(int64_t a1, uint64_t a2)
{
  v43 = sub_1000E0D68();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_1000E28E8();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_1000041BC(&qword_1001201B0, 255, &type metadata accessor for UUID);
      v26 = sub_1000E22D8();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_1000C9E04(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000E28E8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1000E2D48();

      sub_1000E2398();
      v13 = sub_1000E2D68();

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
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
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

unint64_t sub_1000C9FB4(int64_t a1, uint64_t a2)
{
  v4 = sub_1000E0D68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_1000E28E8();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_1000041BC(&qword_1001201B0, 255, &type metadata accessor for UUID);
      v24 = sub_1000E22D8();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(sub_10000ADE4(&qword_10011EBB0, &qword_1000F04F0) - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}