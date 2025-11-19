uint64_t CHSControlInstanceIdentity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE278, &unk_195FAF760);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F6B2AC();
  sub_195FA1468();
  v11 = [v3 control];
  v18 = v11;
  v17[7] = 0;
  sub_195EB4B30(0, &qword_1EAEEC310, off_1E74525B8);
  sub_195F3089C(&qword_1EAEEBE78);
  sub_195FA1238();

  if (!v2)
  {
    v13 = [v3 configurationIdentifier];
    if (v13)
    {
      v14 = v13;
      sub_195FA08B8();

      v17[4] = 2;
      sub_195FA11F8();
    }

    v15 = [v3 hostIdentifier];
    if (v15)
    {
      v16 = v15;
      sub_195FA08B8();

      v17[5] = 3;
      sub_195FA11F8();
    }

    [v3 contentType];
    v17[6] = 1;
    sub_195FA1258();
  }

  return (*(v6 + 8))(v9, v5);
}

void *sub_195F6B248@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = CHSControlInstanceIdentity.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_195F6B2AC()
{
  result = qword_1EAEEBE58;
  if (!qword_1EAEEBE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBE58);
  }

  return result;
}

unint64_t sub_195F6B314()
{
  result = qword_1EAEEE280;
  if (!qword_1EAEEE280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEE280);
  }

  return result;
}

unint64_t sub_195F6B36C()
{
  result = qword_1EAEEBE48;
  if (!qword_1EAEEBE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBE48);
  }

  return result;
}

unint64_t sub_195F6B3C4()
{
  result = qword_1EAEEBE50;
  if (!qword_1EAEEBE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBE50);
  }

  return result;
}

uint64_t sub_195F6B418()
{
  v0 = sub_195FA10D8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t _sSo18CHSWidgetExtensionC14ChronoServicesE1loiySbAB_ABtFZ_0(void *a1, void *a2)
{
  v3 = [a1 extensionBundleIdentifier];
  v4 = sub_195FA08B8();
  v6 = v5;

  v7 = [a2 extensionBundleIdentifier];
  v8 = sub_195FA08B8();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_195FA12B8();
  }

  return v12 & 1;
}

unint64_t sub_195F6B53C()
{
  result = qword_1EAEEE288;
  if (!qword_1EAEEE288)
  {
    sub_195F6B594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEE288);
  }

  return result;
}

unint64_t sub_195F6B594()
{
  result = qword_1EAEEC4B8;
  if (!qword_1EAEEC4B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAEEC4B8);
  }

  return result;
}

uint64_t sub_195F6B618(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_195FA0478();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_195F6E0A8(&qword_1EAEEBCD0);
  v36 = a2;
  v13 = sub_195FA0818();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_195F6E0A8(&qword_1EAEEBCC8);
      v23 = sub_195FA0868();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_195F6C8D8(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_195F6B8D0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_195FA1398();
  v58 = a2;
  v60 = a3;
  sub_195F37930(a2, a3, a4, a5);
  sub_195FA0958();

  v12 = sub_195FA13E8();
  v57 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  v55 = v10 + 56;
  v59 = a5;
  v52 = a4;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v54 = ~v13;
    if (a5)
    {
      v15 = a4;
    }

    else
    {
      v15 = 0;
    }

    v56 = v15;
    while (1)
    {
      v16 = (*(v57 + 48) + 32 * v14);
      v18 = *v16;
      v17 = v16[1];
      v20 = v16[2];
      v19 = v16[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E0, &unk_195FADCE0);
      inited = swift_initStackObject();
      v22 = inited;
      *(inited + 16) = xmmword_195FAC280;
      v23 = v19 ? v20 : 0;
      *(inited + 32) = v23;
      *(inited + 40) = v19;
      *(inited + 48) = v18;
      *(inited + 56) = v17;

      sub_195EB6308(v22, v61);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E8, &unk_195FAC890);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_195FAC070;
      v25 = sub_195EB5F80();
      v26 = sub_195EB6074(v25);
      v28 = v27;

      *(v24 + 32) = v26;
      *(v24 + 40) = v28;

      sub_195EB6214(v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
      sub_195EB5ED4();
      v30 = sub_195FA0828();
      v32 = v31;

      v33 = swift_initStackObject();
      *(v33 + 16) = xmmword_195FAC280;
      *(v33 + 32) = v56;
      *(v33 + 40) = v59;
      *(v33 + 48) = v58;
      *(v33 + 56) = v60;

      sub_195EB6308(v33, v61);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_195FAC070;
      v35 = sub_195EB5F80();
      v36 = sub_195EB6074(v35);
      v38 = v37;

      *(v34 + 32) = v36;
      *(v34 + 40) = v38;

      sub_195EB6214(v39);
      v40 = sub_195FA0828();
      v42 = v41;

      if (v30 == v40 && v32 == v42)
      {
        break;
      }

      v43 = sub_195FA12B8();

      if (v43)
      {
        goto LABEL_15;
      }

      v14 = (v14 + 1) & v54;
      if (((*(v55 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

LABEL_15:

    v47 = (*(v57 + 48) + 32 * v14);
    v48 = v47[1];
    v50 = v47[2];
    v49 = v47[3];
    *a1 = *v47;
    a1[1] = v48;
    a1[2] = v50;
    a1[3] = v49;

    return 0;
  }

  else
  {
LABEL_13:
    v44 = *v51;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61[0] = *v51;

    sub_195F6CB54(v58, v60, v52, v59, v14, isUniquelyReferenced_nonNull_native);
    *v51 = v61[0];
    *a1 = v58;
    a1[1] = v60;
    a1[2] = v52;
    a1[3] = v59;
    return 1;
  }
}

uint64_t sub_195F6BD20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_195FA0EE8();
    v24 = v10;
    sub_195FA0E78();
    if (sub_195FA0EA8())
    {
      sub_195EB4B30(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v18 = *(v10 + 16);
        if (*(v10 + 24) <= v18)
        {
          sub_195F6BF20(v18 + 1, a3, a4);
        }

        v10 = v24;
        v11 = *(v24 + 40);
        result = sub_195FA0D78();
        v13 = v24 + 56;
        v14 = -1 << *(v24 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v24 + 48) + 8 * v17) = v23;
        ++*(v24 + 16);
      }

      while (sub_195FA0EA8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v10;
}

uint64_t sub_195F6BF20(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_195FA0ED8();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_195FA0D78();
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

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_195F6C140(uint64_t a1)
{
  v2 = v1;
  v41 = sub_195FA0478();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE310, &qword_195FAF9A8);
  result = sub_195FA0ED8();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_195F6E0A8(&qword_1EAEEBCD0);
      result = sub_195FA0818();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_195F6C488(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE308, &qword_195FAF9A0);
  result = sub_195FA0ED8();
  v6 = result;
  if (*(v3 + 16))
  {
    v42 = v2;
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
    v43 = v3;
    v44 = result;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v47 = (v11 - 1) & v11;
LABEL_17:
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v23 = v19[2];
      v22 = v19[3];
      v24 = *(v6 + 40);
      sub_195FA1398();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E0, &unk_195FADCE0);
      inited = swift_initStackObject();
      v26 = inited;
      *(inited + 16) = xmmword_195FAC280;
      if (v22)
      {
        v27 = v23;
      }

      else
      {
        v27 = 0;
      }

      *(inited + 32) = v27;
      *(inited + 40) = v22;
      v46 = v20;
      *(inited + 48) = v20;
      *(inited + 56) = v21;

      v45 = v21;

      sub_195EB6308(v26, &v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E8, &unk_195FAC890);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_195FAC070;
      v29 = sub_195EB5F80();
      v30 = sub_195EB6074(v29);
      v32 = v31;

      *(v28 + 32) = v30;
      *(v28 + 40) = v32;

      sub_195EB6214(v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
      sub_195EB5ED4();
      sub_195FA0828();

      sub_195FA0958();

      result = sub_195FA13E8();
      v6 = v44;
      v34 = -1 << *(v44 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v13 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v13 + 8 * v36);
          if (v40 != -1)
          {
            v14 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v35) & ~*(v13 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v44 + 48) + 32 * v14);
      *v15 = v46;
      v15[1] = v45;
      v15[2] = v23;
      v15[3] = v22;
      ++*(v44 + 16);
      v3 = v43;
      v11 = v47;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        v47 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v41 = 1 << *(v3 + 32);
    if (v41 >= 64)
    {
      bzero(v8, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v41;
    }

    v2 = v42;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_195F6C854(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_195FA0D78();
  v5 = -1 << *(a2 + 32);
  result = sub_195FA0E68();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_195F6C8D8(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_195FA0478();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_195F6C140(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_195F6D218();
      goto LABEL_12;
    }

    sub_195F6DA00(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_195F6E0A8(&qword_1EAEEBCD0);
  v15 = sub_195FA0818();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_195F6E0A8(&qword_1EAEEBCC8);
      v23 = sub_195FA0868();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_195FA1328();
  __break(1u);
  return result;
}

uint64_t sub_195F6CB54(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v56 = result;
  v10 = *(*v6 + 16);
  v11 = *(*v6 + 24);
  if (v11 > v10 && (a6 & 1) != 0)
  {
    goto LABEL_20;
  }

  if (a6)
  {
    sub_195F6C488(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_195F6D450();
      goto LABEL_20;
    }

    sub_195F6DD08(v10 + 1);
  }

  v12 = *v6;
  v13 = *(*v6 + 40);
  sub_195FA1398();
  sub_195F37930(v56, a2, a3, a4);
  sub_195FA0958();

  result = sub_195FA13E8();
  v53 = v12 + 56;
  v54 = v12;
  v14 = -1 << *(v12 + 32);
  a5 = result & ~v14;
  if ((*(v12 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v52 = ~v14;
    if (a4)
    {
      v15 = a3;
    }

    else
    {
      v15 = 0;
    }

    v51 = v15;
    do
    {
      v16 = (*(v54 + 48) + 32 * a5);
      v17 = *v16;
      v18 = v16[1];
      v20 = v16[2];
      v19 = v16[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E0, &unk_195FADCE0);
      inited = swift_initStackObject();
      v22 = inited;
      *(inited + 16) = xmmword_195FAC280;
      v23 = v19 ? v20 : 0;
      *(inited + 32) = v23;
      *(inited + 40) = v19;
      *(inited + 48) = v17;
      *(inited + 56) = v18;

      sub_195EB6308(v22, v58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E8, &unk_195FAC890);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_195FAC070;
      v25 = sub_195EB5F80();
      v26 = sub_195EB6074(v25);
      v28 = v27;

      *(v24 + 32) = v26;
      *(v24 + 40) = v28;

      sub_195EB6214(v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
      sub_195EB5ED4();
      v30 = sub_195FA0828();
      v32 = v31;

      v33 = swift_initStackObject();
      *(v33 + 16) = xmmword_195FAC280;
      *(v33 + 32) = v51;
      *(v33 + 40) = a4;
      *(v33 + 48) = v56;
      *(v33 + 56) = a2;

      sub_195EB6308(v33, v58);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_195FAC070;
      v35 = sub_195EB5F80();
      v36 = sub_195EB6074(v35);
      v38 = v37;

      *(v34 + 32) = v36;
      *(v34 + 40) = v38;

      sub_195EB6214(v39);
      v40 = sub_195FA0828();
      v42 = v41;

      if (v30 == v40 && v32 == v42)
      {
        goto LABEL_23;
      }

      v43 = sub_195FA12B8();

      if (v43)
      {
        goto LABEL_24;
      }

      a5 = (a5 + 1) & v52;
    }

    while (((*(v53 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_20:
  v44 = *v49;
  *(*v49 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v45 = (*(v44 + 48) + 32 * a5);
  *v45 = v56;
  v45[1] = a2;
  v45[2] = a3;
  v45[3] = a4;
  v46 = *(v44 + 16);
  v47 = __OFADD__(v46, 1);
  v48 = v46 + 1;
  if (!v47)
  {
    *(v44 + 16) = v48;
    return result;
  }

  __break(1u);
LABEL_23:

LABEL_24:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA00, &qword_195FAF000);
  result = sub_195FA1328();
  __break(1u);
  return result;
}

id sub_195F6CF7C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_195FA0EC8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_195F6D0BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDAF8, &unk_195FACCD0);
  v2 = *v0;
  v3 = sub_195FA0EC8();
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

void *sub_195F6D218()
{
  v1 = v0;
  v2 = sub_195FA0478();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE310, &qword_195FAF9A8);
  v7 = *v0;
  v8 = sub_195FA0EC8();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_195F6D450()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE308, &qword_195FAF9A0);
  v2 = *v0;
  v3 = sub_195FA0EC8();
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v21 = v18[2];
        v20 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v21;
        v22[3] = v20;
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

uint64_t sub_195F6D5BC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_195FA0ED8();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_195FA0D78();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v4 = v8;
  }

  return result;
}

uint64_t sub_195F6D7C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDAF8, &unk_195FACCD0);
  result = sub_195FA0ED8();
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
      sub_195FA1398();

      sub_195FA0958();
      result = sub_195FA13E8();
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

uint64_t sub_195F6DA00(uint64_t a1)
{
  v2 = v1;
  v37 = sub_195FA0478();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE310, &qword_195FAF9A8);
  v10 = sub_195FA0ED8();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_195F6E0A8(&qword_1EAEEBCD0);
      result = sub_195FA0818();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_195F6DD08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE308, &qword_195FAF9A0);
  result = sub_195FA0ED8();
  v6 = result;
  if (*(v3 + 16))
  {
    v41 = v2;
    v7 = 0;
    v8 = v3 + 56;
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
    v42 = v3;
    v43 = result;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v46 = (v11 - 1) & v11;
LABEL_17:
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v23 = v19[2];
      v22 = v19[3];
      v24 = *(v6 + 40);
      sub_195FA1398();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E0, &unk_195FADCE0);
      inited = swift_initStackObject();
      v26 = inited;
      *(inited + 16) = xmmword_195FAC280;
      v44 = v23;
      v45 = v21;
      if (v22)
      {
        v27 = v23;
      }

      else
      {
        v27 = 0;
      }

      *(inited + 32) = v27;
      *(inited + 40) = v22;
      *(inited + 48) = v20;
      *(inited + 56) = v21;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_195EB6308(v26, &v47);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E8, &unk_195FAC890);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_195FAC070;
      v29 = sub_195EB5F80();
      v30 = sub_195EB6074(v29);
      v32 = v31;

      *(v28 + 32) = v30;
      *(v28 + 40) = v32;

      sub_195EB6214(v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
      sub_195EB5ED4();
      sub_195FA0828();

      sub_195FA0958();

      result = sub_195FA13E8();
      v6 = v43;
      v34 = -1 << *(v43 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v13 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v13 + 8 * v36);
          if (v40 != -1)
          {
            v14 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v14 = __clz(__rbit64((-1 << v35) & ~*(v13 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v43 + 48) + 32 * v14);
      *v15 = v20;
      v15[1] = v45;
      v15[2] = v44;
      v15[3] = v22;
      ++*(v43 + 16);
      v3 = v42;
      v11 = v46;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v41;
        goto LABEL_31;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v46 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_195F6E0A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_195FA0478();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t IconSourcePredicate.description.getter()
{
  v1 = 0x65746F6D6572;
  if (*v0 != 1)
  {
    v1 = 7105633;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C61636F6CLL;
  }
}

uint64_t IconSourcePredicate.hashValue.getter()
{
  v1 = *v0;
  sub_195FA1398();
  MEMORY[0x19A8C4970](v1);
  return sub_195FA13E8();
}

unint64_t sub_195F6E1C4()
{
  result = qword_1EAEEE320;
  if (!qword_1EAEEE320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEE320);
  }

  return result;
}

uint64_t sub_195F6E218()
{
  v1 = 0x65746F6D6572;
  if (*v0 != 1)
  {
    v1 = 7105633;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C61636F6CLL;
  }
}

id RelevanceCacheEntry.key.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    return v1;
  }

  else
  {
    v3 = [v1 key];

    return v3;
  }
}

unint64_t RelevanceCacheError.debugDescription.getter()
{
  v1 = v0[1];
  if (v1 <= 1)
  {
    if (!v1)
    {
      return 0xD000000000000037;
    }

    if (v1 == 1)
    {
      return 0xD00000000000002ELL;
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        return 0xD000000000000029;
      case 3:
        return 0xD000000000000042;
      case 4:
        return 0xD000000000000015;
    }
  }

  v3 = *v0;
  sub_195FA0F38();
  MEMORY[0x19A8C3F70](0xD000000000000034, 0x8000000195FC21F0);
  MEMORY[0x19A8C3F70](v3, v1);
  MEMORY[0x19A8C3F70](46, 0xE100000000000000);
  return 0;
}

id RelevanceCacheEntry.value.getter()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t get_enum_tag_for_layout_string_14ChronoServices19RelevanceCacheErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_195F6E484(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_195F6E4DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
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

uint64_t sub_195F6E55C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_195F6E5A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_195F6E604(uint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE328, &qword_195FAFC38);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v2 + 24) = v5;
  *(v2 + 32) = 0;
  v6 = objc_allocWithZone(_CHSRelevanceCacheBuf);
  sub_195EC08E4(a1, a2);
  v7 = sub_195FA04B8();
  v8 = [v6 initVerifiedRootObjectFromData_];

  sub_195EC0890(a1, a2);
  if (v8)
  {
    *(v2 + 16) = v8;
    v9 = *(v2 + 32);
    *(v2 + 32) = 0;

    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
  }

  else
  {
    sub_195F36864();
    swift_allocError();
    *v10 = 0;
    v10[1] = 0;
    swift_willThrow();
    sub_195EC0890(a1, a2);
    v11 = *(v2 + 24);

    type metadata accessor for RelevanceCacheReader();
    swift_deallocPartialClassInstance();
  }

  return v2;
}

uint64_t sub_195F6E73C@<X0>(void *a1@<X8>)
{
  v3 = [*(v1 + 16) groups];
  if (v3)
  {
    v4 = v3;
    sub_195EB4B30(0, &qword_1EAEEBCF0, off_1E74528D0);
    v5 = sub_195FA0B38();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  if (v5 >> 62)
  {
LABEL_41:
    v6 = sub_195FA0E88();
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_42:
    v60 = MEMORY[0x1E69E7CC0];
    goto LABEL_43;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_42;
  }

LABEL_6:
  v58 = v1;
  v1 = 0;
  v7 = v5 & 0xC000000000000001;
  v60 = MEMORY[0x1E69E7CC0];
  v59 = a1;
  do
  {
    v8 = v1;
    while (1)
    {
      if (v7)
      {
        v9 = MEMORY[0x19A8C4520](v8, v5);
      }

      else
      {
        if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      v1 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v11 = [v9 extensionIdentity];
      if (v11)
      {
        break;
      }

LABEL_9:
      ++v8;
      if (v1 == v6)
      {
        a1 = v59;
        goto LABEL_43;
      }
    }

    v12 = v11;
    v13 = [v11 deviceIdentifier];
    if (v13)
    {
      v14 = v13;
      a1 = sub_195FA08B8();
      v16 = v15;

      v7 = v5 & 0xC000000000000001;
    }

    else
    {
      a1 = 0;
      v16 = 0;
    }

    v17 = [v12 extensionBundleIdentifier];
    if (!v17)
    {

      goto LABEL_9;
    }

    v18 = v17;
    v19 = sub_195FA08B8();
    v55 = v20;

    v21 = [v12 containerBundleIdentifier];
    v57 = v19;
    if (v21)
    {
      v22 = v21;
      v23 = sub_195FA08B8();
      v52 = v24;
      v53 = v23;
    }

    else
    {
      v52 = 0;
      v53 = 0;
    }

    if (v16)
    {
      v25 = a1;
    }

    else
    {
      v25 = 0;
    }

    v51 = v25;
    v26 = [objc_allocWithZone(CHSExtensionIdentity) init];

    v27 = &v26[OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier];
    swift_beginAccess();
    v28 = v27[1];
    *v27 = v57;
    v27[1] = v55;
    v29 = v26;

    v30 = &v29[OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier];
    swift_beginAccess();
    v31 = *(v30 + 1);
    *v30 = v53;
    *(v30 + 1) = v52;

    v32 = &v29[OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier];
    swift_beginAccess();
    v33 = *(v32 + 1);
    *v32 = v51;
    *(v32 + 1) = v16;

    v34 = [v10 kind];
    if (v34)
    {
      v35 = v34;
      sub_195FA08B8();
    }

    LODWORD(v36) = [v10 isDeletion];
    if (v36)
    {
      v37 = objc_allocWithZone(CHSWidgetRelevanceKey);
      v38 = v29;
      v39 = sub_195FA0888();

      v40 = [v37 initWithExtensionIdentity:v38 kind:v39];
    }

    else
    {
      v56 = [v10 supportsBackgroundRefresh];
      [v10 lastRelevanceUpdate];
      v42 = v41;
      v43 = swift_allocObject();
      *(v43 + 16) = v10;
      *(v43 + 24) = v58;
      v54 = objc_allocWithZone(CHSWidgetRelevanceProperties);
      v44 = v10;

      v45 = sub_195FA0888();

      aBlock[4] = sub_195F6F46C;
      aBlock[5] = v43;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_195F6F474;
      aBlock[3] = &block_descriptor_10;
      v36 = _Block_copy(aBlock);
      v40 = [v54 initWithWidgetExtensionIdentity:v29 kind:v45 supportsBackgroundRefresh:v56 lastRelevanceUpdate:v36 relevanceFunction:v42];

      v46 = v36;
      LOBYTE(v36) = 0;
      _Block_release(v46);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v60 = sub_195F38BB4(0, *(v60 + 2) + 1, 1, v60);
    }

    v48 = *(v60 + 2);
    v47 = *(v60 + 3);
    if (v48 >= v47 >> 1)
    {
      v60 = sub_195F38BB4((v47 > 1), v48 + 1, 1, v60);
    }

    *(v60 + 2) = v48 + 1;
    v49 = &v60[16 * v48];
    *(v49 + 4) = v40;
    v49[40] = v36;
    a1 = v59;
    v7 = v5 & 0xC000000000000001;
  }

  while (v1 != v6);
LABEL_43:

  *a1 = v60;
  return result;
}

char *sub_195F6ECD4()
{
  v1 = v0;
  v2 = [v0 deviceIdentifier];
  if (v2)
  {
    v3 = v2;
    v4 = sub_195FA08B8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = [v1 extensionBundleIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = sub_195FA08B8();
    v11 = v10;

    v12 = [v1 containerBundleIdentifier];
    if (v12)
    {
      v13 = v12;
      v14 = sub_195FA08B8();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    if (v6)
    {
      v18 = v4;
    }

    else
    {
      v18 = 0;
    }

    v19 = [objc_allocWithZone(CHSExtensionIdentity) init];
    v20 = &v19[OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier];
    swift_beginAccess();
    v21 = v20[1];
    *v20 = v9;
    v20[1] = v11;
    v17 = v19;

    v22 = &v17[OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier];
    swift_beginAccess();
    v23 = v22[1];
    *v22 = v14;
    v22[1] = v16;

    v24 = &v17[OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier];
    swift_beginAccess();
    v25 = v24[1];
    *v24 = v18;
    v24[1] = v6;
  }

  else
  {

    return 0;
  }

  return v17;
}

uint64_t sub_195F6EEA0(void *a1, uint64_t a2)
{
  v2 = [a1 relevances];
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v2;
    sub_195EB4B30(0, &qword_1EAEEBD30, off_1E74528C0);
    v5 = sub_195FA0B38();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v28 = v3;
  if (!(v5 >> 62))
  {
    v26 = v5 & 0xFFFFFFFFFFFFFF8;
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_25:
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_26;
  }

LABEL_24:
  v26 = v5 & 0xFFFFFFFFFFFFFF8;
  v6 = sub_195FA0E88();
  if (!v6)
  {
    goto LABEL_25;
  }

LABEL_6:
  v7 = 0;
  v25 = v5 & 0xC000000000000001;
  v8 = MEMORY[0x1E69E7CC0];
  v23 = v5;
  do
  {
    v9 = v7;
    while (1)
    {
      if (v25)
      {
        v10 = MEMORY[0x19A8C4520](v9, v5);
      }

      else
      {
        if (v9 >= *(v26 + 16))
        {
          goto LABEL_23;
        }

        v10 = *(v5 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v12 = [v10 attributeKey];
      if (v12)
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_26;
      }
    }

    v13 = v6;
    v14 = v12;
    sub_195FA08B8();

    v15 = *(a2 + 24);
    v17 = MEMORY[0x1EEE9AC00](v16);
    MEMORY[0x1EEE9AC00](v17);

    os_unfair_lock_lock(v15 + 4);
    sub_195F6F514(&v27);
    os_unfair_lock_unlock(v15 + 4);

    v18 = v27;

    sub_195EB4B30(0, &qword_1EAEEC148, off_1E7452640);
    v19 = sub_195F6F1EC([v11 intentReference]);
    [objc_allocWithZone(CHSWidgetRelevance) initWithAttribute:v18 intentReference:v19];

    MEMORY[0x19A8C40E0]();
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v21 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_195FA0B58();
    }

    sub_195FA0B78();
    v8 = v28;
    v6 = v13;
    v20 = v7 == v13;
    v5 = v23;
  }

  while (!v20);
LABEL_26:

  return v8;
}

id sub_195F6F1EC(id result)
{
  if (result)
  {
    v1 = result;
    v2 = [v1 intentDataAsData];
    if (v2 || (v2 = [v1 partialIntentDataAsData]) != 0 || (v2 = objc_msgSend(v1, sel_schemaDataAsData)) != 0)
    {
      v3 = v2;
      v4 = sub_195FA04D8();
      v6 = v5;

      sub_195EC0890(v4, v6);
      v7 = [v1 stableHash];
      v8 = [v1 intentDataAsData];
      if (v8)
      {
        v9 = v8;
        v10 = sub_195FA04D8();
        v12 = v11;

        v13 = sub_195FA04B8();
        sub_195EC0890(v10, v12);
      }

      else
      {
        v13 = 0;
      }

      v14 = [v1 partialIntentDataAsData];
      if (v14)
      {
        v15 = v14;
        v16 = sub_195FA04D8();
        v18 = v17;

        v19 = sub_195FA04B8();
        sub_195EC0890(v16, v18);
      }

      else
      {
        v19 = 0;
      }

      v20 = [v1 schemaDataAsData];
      if (v20)
      {
        v21 = v20;
        v22 = sub_195FA04D8();
        v24 = v23;

        v25 = sub_195FA04B8();
        sub_195EC0890(v22, v24);
      }

      else
      {
        v25 = 0;
      }

      v26 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIntentData:v13 configData:v19 schemaData:v25 stableHash:v7];

      return v26;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_195F6F3F8()
{
  v1 = *(v0 + 24);

  sub_195EC0890(*(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

id sub_195F6F474(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);

  sub_195EB4B30(0, &qword_1EAEEBD50, off_1E7452800);
  v4 = sub_195FA0B28();

  return v4;
}

id static CHSWidgetDescriptor.mock(extensionIdentity:kind:)(uint64_t a1)
{

  v2 = CHSDefaultTestFamilyMaskSingle();
  v3 = objc_allocWithZone(CHSWidgetDescriptor);
  v4 = sub_195FA0888();

  v5 = [v3 initWithExtensionIdentity:a1 kind:v4 supportedFamilies:v2 intentType:0];

  return v5;
}

id static ControlIconGenerator.appIconForControls(container:size:scale:)(uint64_t *a1, double a2, double a3, double a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = [objc_allocWithZone(MEMORY[0x1E69A8A30]) initWithSize:a2 scale:{a3, a4}];
  [v6 setShouldApplyMask_];
  v7 = objc_allocWithZone(MEMORY[0x1E69A8A00]);

  v8 = sub_195FA0888();

  v9 = [v7 initWithBundleIdentifier_];

  v10 = [v9 prepareImageForDescriptor_];
  return v10;
}

uint64_t CHSExtensionIdentity.partial.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = (v1 + OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier);
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];
  *a1 = v5;
  a1[1] = v4;
  a1[2] = v8;
  a1[3] = v7;
}

uint64_t DeviceScopedIdentity<>.extensionBundleIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void *DeviceScopedIdentity<>.init(extensionBundleIdentifier:deviceID:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = result[1];
  *a4 = *result;
  a4[1] = v4;
  a4[2] = a2;
  a4[3] = a3;
  return result;
}

id sub_195F6F7FC()
{
  result = [objc_allocWithZone(CHSControlService) init];
  qword_1EAEEC158 = result;
  return result;
}

CHSControlService __swiftcall CHSControlService.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id static CHSControlService.shared.getter()
{
  if (qword_1EAEEC150 != -1)
  {
    swift_once();
  }

  v1 = qword_1EAEEC158;

  return v1;
}

uint64_t sub_195F6FA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 80) = a5;
  *(v6 + 88) = a6;
  return MEMORY[0x1EEE6DFA0](sub_195F6FA80, 0, 0);
}

uint64_t sub_195F6FA80()
{
  if (qword_1EAEEC2B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_195EC97E0(&qword_1EAEEC2C0, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v2 + 72);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_195F6FBFC;

  return v7(v1, v2);
}

uint64_t sub_195F6FBFC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_195F6FDAC;
  }

  else
  {
    *(v4 + 112) = a1;
    v7 = sub_195F6FD24;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_195F6FD24()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v3(v1, 0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_195F6FDAC()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v4 = v1;
  v3(0, v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_195F6FE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE330, &qword_195FAFCB8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_195F712D0(a3, v27 - v11);
  v13 = sub_195FA0BC8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_195F71340(v12);
  }

  else
  {
    sub_195FA0BB8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_195FA0B88();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_195FA0918() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_195F71340(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_195F71340(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_195F7024C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    type metadata accessor for CHSControlConfiguration(0);
    v5 = sub_195FA07E8();
  }

  if (a2)
  {
    v6 = sub_195FA0318();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t CHSControlService.fetchControlDescriptors(forExtensionBundleIdentifier:userInitiated:reason:completion:)(uint64_t a1, unint64_t a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v40 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE330, &qword_195FAFCB8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v39 = &v36 - v17;
  if (qword_1EAEEC170 != -1)
  {
    swift_once();
  }

  v18 = sub_195FA0678();
  __swift_project_value_buffer(v18, qword_1EAEF72E8);

  v19 = sub_195FA0658();
  v20 = sub_195FA0CC8();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v38 = a6;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = v8;
    v24 = a7;
    v25 = a3;
    v26 = a4;
    v27 = v23;
    v41 = v23;
    *v22 = 136446722;
    v28 = v40;
    *(v22 + 4) = sub_195EBD554(v40, a2, &v41);
    *(v22 + 12) = 1026;
    *(v22 + 14) = v25 & 1;
    *(v22 + 18) = 2082;
    *(v22 + 20) = sub_195EBD554(v26, a5, &v41);
    _os_log_impl(&dword_195EB2000, v19, v20, "Fetching control descriptor for extension: %{public}s, userInitiated: %{BOOL,public}d reason: %{public}s", v22, 0x1Cu);
    swift_arrayDestroy();
    v29 = v27;
    a4 = v26;
    a3 = v25;
    a7 = v24;
    v8 = v37;
    MEMORY[0x19A8C5B70](v29, -1, -1);
    v30 = v22;
    a6 = v38;
    MEMORY[0x19A8C5B70](v30, -1, -1);
  }

  else
  {

    v28 = v40;
  }

  v31 = sub_195FA0BC8();
  v32 = v39;
  (*(*(v31 - 8) + 56))(v39, 1, 1, v31);
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v8;
  *(v33 + 40) = v28;
  *(v33 + 48) = a2;
  *(v33 + 56) = a3 & 1;
  *(v33 + 64) = a4;
  *(v33 + 72) = a5;
  *(v33 + 80) = a6;
  *(v33 + 88) = a7;

  v34 = v8;

  sub_195F6FE44(0, 0, v32, &unk_195FAFCC8, v33);
}

uint64_t sub_195F705FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 120) = v11;
  *(v8 + 104) = v10;
  *(v8 + 88) = a6;
  *(v8 + 96) = a8;
  *(v8 + 152) = a7;
  *(v8 + 80) = a5;
  return MEMORY[0x1EEE6DFA0](sub_195F70638, 0, 0);
}

uint64_t sub_195F70638()
{
  if (qword_1EAEEC2B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_195EC97E0(&qword_1EAEEC2C0, v0 + 16);
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v3 = *(v2 + 32);
  v12 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = sub_195F707C4;
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  v8 = *(v0 + 152);
  v9 = *(v0 + 88);
  v10 = *(v0 + 80);

  return v12(v10, v9, v8, v6, v7, v1, v2);
}

uint64_t sub_195F707C4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = sub_195F70974;
  }

  else
  {
    *(v4 + 144) = a1;
    v7 = sub_195F708EC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_195F708EC()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v3(v1, 0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_195F70974()
{
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v4 = v1;
  v3(0, v1);

  v5 = v0[1];

  return v5();
}

void sub_195F70AFC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_195EB4B30(0, &qword_1EAEEBE70, off_1E74525A0);
    v5 = sub_195FA0B28();
  }

  if (a2)
  {
    v6 = sub_195FA0318();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_195F70BA8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_195F70CA0;

  return v7(a1);
}

uint64_t sub_195F70CA0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_195F70D98(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_195F70E0C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t _sSo17CHSControlServiceC14ChronoServicesE14reloadControls12forExtension4kind6reasonySS_SSSgSStF_0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (qword_1EAEEC170 != -1)
  {
    swift_once();
  }

  v12 = sub_195FA0678();
  __swift_project_value_buffer(v12, qword_1EAEF72E8);

  v13 = sub_195FA0658();
  v14 = sub_195FA0CC8();

  v22 = a1;
  v23 = a3;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24[0] = v16;
    *v15 = 136446722;
    *(v15 + 4) = sub_195EBD554(a1, a2, v24);
    *(v15 + 12) = 2082;
    if (a4)
    {
      v17 = a4;
    }

    else
    {
      a3 = 7104878;
      v17 = 0xE300000000000000;
    }

    v18 = sub_195EBD554(a3, v17, v24);

    *(v15 + 14) = v18;
    *(v15 + 22) = 2082;
    *(v15 + 24) = sub_195EBD554(a5, a6, v24);
    _os_log_impl(&dword_195EB2000, v13, v14, "Reloading control for extension: %{public}s kind: %{public}s reason: %{public}s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x19A8C5B70](v16, -1, -1);
    MEMORY[0x19A8C5B70](v15, -1, -1);
  }

  if (qword_1EAEEC2B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_195EC97E0(&qword_1EAEEC2C0, v24);
  v19 = v25;
  v20 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  (*(v20 + 24))(v22, a2, v23, a4, a5, a6, v19, v20);
  return __swift_destroy_boxed_opaque_existential_1Tm(v24);
}

uint64_t sub_195F710E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v14 = *(v1 + 72);
  v11 = *(v1 + 88);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_195F32774;

  return sub_195F705FC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_195F71208(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_195F32D80;

  return sub_195F6FA60(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_195F712D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE330, &qword_195FAFCB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_195F71340(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE330, &qword_195FAFCB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_195F713A8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_195F32D80;

  return sub_195F70BA8(a1, v5);
}

uint64_t sub_195F71460(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_195F32774;

  return sub_195F70BA8(a1, v5);
}

uint64_t ConcreteFileManagerFactory.defaultFileManager.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() defaultManager];
  v3 = type metadata accessor for ConcreteFileManagerPrimitives();
  result = swift_allocObject();
  *(result + 16) = v2;
  a1[3] = v3;
  a1[4] = &protocol witness table for ConcreteFileManagerPrimitives;
  *a1 = result;
  return result;
}

uint64_t ConcreteFileManagerFactory.makeFileManager()@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v3 = type metadata accessor for ConcreteFileManagerPrimitives();
  result = swift_allocObject();
  *(result + 16) = v2;
  a1[3] = v3;
  a1[4] = &protocol witness table for ConcreteFileManagerPrimitives;
  *a1 = result;
  return result;
}

uint64_t ConcreteFileManagerPrimitives.__allocating_init()()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  result = swift_allocObject();
  *(result + 16) = v0;
  return result;
}

uint64_t sub_195F71664@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() defaultManager];
  v3 = type metadata accessor for ConcreteFileManagerPrimitives();
  result = swift_allocObject();
  *(result + 16) = v2;
  a1[3] = v3;
  a1[4] = &protocol witness table for ConcreteFileManagerPrimitives;
  *a1 = result;
  return result;
}

uint64_t sub_195F716D8@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v3 = type metadata accessor for ConcreteFileManagerPrimitives();
  result = swift_allocObject();
  *(result + 16) = v2;
  a1[3] = v3;
  a1[4] = &protocol witness table for ConcreteFileManagerPrimitives;
  *a1 = result;
  return result;
}

uint64_t ConcreteFileManagerPrimitives.__allocating_init(fileManager:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

Swift::Bool __swiftcall ConcreteFileManagerPrimitives.fileExists(atPath:)(Swift::String atPath)
{
  v2 = *(v1 + 16);
  v3 = sub_195FA0888();
  LOBYTE(v2) = [v2 fileExistsAtPath_];

  return v2;
}

id ConcreteFileManagerPrimitives.fileExists(atPath:isDirectory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v6 = sub_195FA0888();
  v7 = [v5 fileExistsAtPath:v6 isDirectory:a3];

  return v7;
}

uint64_t ConcreteFileManagerPrimitives.contentsOfDirectory(atPath:)()
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 16);
  v2 = sub_195FA0888();
  v24[0] = 0;
  v3 = [v1 contentsOfDirectoryAtPath:v2 error:v24];

  v4 = v24[0];
  if (v3)
  {
    v5 = sub_195FA0B38();
    v6 = v4;

    v7 = *(v5 + 16);
    if (v7)
    {
      v8 = 0;
      v9 = v5 + 40;
      v23 = MEMORY[0x1E69E7CC0];
      do
      {
        v10 = (v9 + 16 * v8);
        v11 = v8;
        while (1)
        {
          if (v11 >= *(v5 + 16))
          {
            __break(1u);
          }

          v13 = *(v10 - 1);
          v12 = *v10;
          v8 = v11 + 1;
          v24[0] = v13;
          v24[1] = v12;
          sub_195ECC284();

          if ((sub_195FA0DF8() & 1) == 0)
          {
            break;
          }

          v10 += 2;
          ++v11;
          if (v7 == v8)
          {
            goto LABEL_17;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = v23;
        v25 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_195F391DC(0, *(v23 + 16) + 1, 1);
          v15 = v25;
        }

        v17 = *(v15 + 16);
        v16 = *(v15 + 24);
        v18 = v17 + 1;
        if (v17 >= v16 >> 1)
        {
          sub_195F391DC((v16 > 1), v17 + 1, 1);
          v18 = v17 + 1;
          v15 = v25;
        }

        *(v15 + 16) = v18;
        v23 = v15;
        v19 = v15 + 16 * v17;
        *(v19 + 32) = v13;
        *(v19 + 40) = v12;
        v9 = v5 + 40;
      }

      while (v7 - 1 != v11);
    }

    else
    {
      v23 = MEMORY[0x1E69E7CC0];
    }

LABEL_17:
  }

  else
  {
    v20 = v24[0];
    sub_195FA0328();

    swift_willThrow();
  }

  v21 = *MEMORY[0x1E69E9840];
  return v23;
}

void *ConcreteFileManagerPrimitives.contentsOfDirectory(at:includingPropertiesForKeys:)(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = *(v2 + 16);
  v5 = sub_195FA0398();
  if (a2)
  {
    type metadata accessor for URLResourceKey(0);
    a2 = sub_195FA0B28();
  }

  v12[0] = 0;
  v6 = [v4 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:a2 options:0 error:v12];

  v7 = v12[0];
  if (v6)
  {
    sub_195FA0478();
    a2 = sub_195FA0B38();
    v8 = v7;
  }

  else
  {
    v9 = v12[0];
    sub_195FA0328();

    swift_willThrow();
  }

  v10 = *MEMORY[0x1E69E9840];
  return a2;
}

char *ConcreteFileManagerPrimitives.recursiveContentsOfDirectory(at:includingPropertiesForKeys:)()
{
  v2 = v1;
  v3 = sub_195FA0478();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3);
  v33 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDAC8, &unk_195FACC70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v26 - v9;
  v11 = sub_195FA0348();
  v31 = *(v11 - 8);
  v12 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + 16);
  v16 = sub_195FA0C78();
  if (!v16)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v17 = v16;
  v30 = v11;
  sub_195FA0C58();
  sub_195FA0338();
  if (v32)
  {
    v27 = v4;
    v29 = (v4 + 4);
    v18 = MEMORY[0x1E69E7CC0];
    do
    {
      while (1)
      {
        v19 = swift_dynamicCast();
        v20 = v4[7];
        if (v19)
        {
          break;
        }

        v20(v10, 1, 1, v3);
        sub_195F3AE44(v10);
        sub_195FA0338();
        if (!v32)
        {
          goto LABEL_15;
        }
      }

      v20(v10, 0, 1, v3);
      v21 = *v29;
      (*v29)(v33, v10, v3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v2;
      v26 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_195F38EE4(0, *(v18 + 2) + 1, 1, v18);
      }

      v24 = *(v18 + 2);
      v23 = *(v18 + 3);
      if (v24 >= v23 >> 1)
      {
        v18 = sub_195F38EE4(v23 > 1, v24 + 1, 1, v18);
      }

      *(v18 + 2) = v24 + 1;
      v26(&v18[((*(v27 + 80) + 32) & ~*(v27 + 80)) + v27[9] * v24], v33, v3);
      sub_195FA0338();
      v2 = v28;
    }

    while (v32);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:
  (*(v31 + 8))(v14, v30);

  return v18;
}

uint64_t ConcreteFileManagerPrimitives.extendedAttribute<A>(at:key:of:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(v2 + 16);
  v7 = sub_195FA0DB8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_195F418E0(v4, v5, v7, a2);
}

id ConcreteFileManagerPrimitives.moveItem(at:to:)(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = sub_195F721F0(a1, a2, &selRef_moveItemAtURL_toURL_error_);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id ConcreteFileManagerPrimitives.removeItem(at:)()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 16);
  v2 = sub_195FA0398();
  v6[0] = 0;
  LODWORD(v1) = [v1 removeItemAtURL:v2 error:v6];

  if (v1)
  {
    result = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_195FA0328();

    result = swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

id ConcreteFileManagerPrimitives.copyItem(at:to:)(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = sub_195F721F0(a1, a2, &selRef_copyItemAtURL_toURL_error_);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_195F721F0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = *(v3 + 16);
  v6 = sub_195FA0398();
  v7 = sub_195FA0398();
  v11[0] = 0;
  LODWORD(a3) = [v5 *a3];

  if (a3)
  {
    result = v11[0];
  }

  else
  {
    v9 = v11[0];
    sub_195FA0328();

    result = swift_willThrow();
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

id ConcreteFileManagerPrimitives.createDirectory(at:withIntermediateDirectories:attributes:)(uint64_t a1, char a2, void *a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = *(v3 + 16);
  v7 = sub_195FA0398();
  if (a3)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_195F3ECD8();
    a3 = sub_195FA07E8();
  }

  v12[0] = 0;
  v8 = [v6 createDirectoryAtURL:v7 withIntermediateDirectories:a2 & 1 attributes:a3 error:v12];

  if (v8)
  {
    result = v12[0];
  }

  else
  {
    v10 = v12[0];
    sub_195FA0328();

    result = swift_willThrow();
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ConcreteFileManagerPrimitives.lastModificationDate(at:)@<X0>(uint64_t a1@<X8>)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 16);
  sub_195FA0448();
  v4 = sub_195FA0888();

  v17[0] = 0;
  v5 = [v3 attributesOfItemAtPath:v4 error:v17];

  v6 = v17[0];
  if (v5)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_195F3ECD8();
    v7 = sub_195FA0808();
    v8 = v6;

    if (*(v7 + 16) && (v9 = sub_195F59E54(*MEMORY[0x1E696A350]), (v10 & 1) != 0))
    {
      sub_195EBDAFC(*(v7 + 56) + 32 * v9, v17);

      v11 = sub_195FA0518();
      v12 = swift_dynamicCast();
      result = (*(*(v11 - 8) + 56))(a1, v12 ^ 1u, 1, v11);
    }

    else
    {

      v14 = sub_195FA0518();
      result = (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
    }
  }

  else
  {
    v15 = v17[0];
    sub_195FA0328();

    result = swift_willThrow();
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ConcreteFileManagerPrimitives.creationDate(at:)()
{
  v1 = sub_195FA0278();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE340, &qword_195FAFD08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_195FAC070;
  v7 = *MEMORY[0x1E695DAA8];
  *(inited + 32) = *MEMORY[0x1E695DAA8];
  v8 = v7;
  sub_195F72FCC(inited);
  swift_setDeallocating();
  sub_195F731C0(inited + 32);
  sub_195FA0378();

  if (!v0)
  {
    sub_195FA0268();
    return (*(v2 + 8))(v5, v1);
  }

  return result;
}

void *ConcreteFileManagerPrimitives.subpathsOfDirectory(atPath:)()
{
  v9[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 16);
  v2 = sub_195FA0888();
  v9[0] = 0;
  v3 = [v1 subpathsOfDirectoryAtPath:v2 error:v9];

  v4 = v9[0];
  if (v3)
  {
    v2 = sub_195FA0B38();
    v5 = v4;
  }

  else
  {
    v6 = v9[0];
    sub_195FA0328();

    swift_willThrow();
  }

  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t ConcreteFileManagerPrimitives.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_195F728A8()
{
  v1 = *(*v0 + 16);
  v2 = sub_195FA0888();
  v3 = [v1 fileExistsAtPath_];

  return v3;
}

id sub_195F728F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*v3 + 16);
  v6 = sub_195FA0888();
  v7 = [v5 fileExistsAtPath:v6 isDirectory:a3];

  return v7;
}

uint64_t sub_195F72AD4()
{
  v1 = sub_195FA0278();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE340, &qword_195FAFD08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_195FAC070;
  v7 = *MEMORY[0x1E695DAA8];
  *(inited + 32) = *MEMORY[0x1E695DAA8];
  v8 = v7;
  sub_195F72FCC(inited);
  swift_setDeallocating();
  sub_195F731C0(inited + 32);
  sub_195FA0378();

  if (!v0)
  {
    sub_195FA0268();
    return (*(v2 + 8))(v5, v1);
  }

  return result;
}

void sub_195F72CB0(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = sub_195FA0E88();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v7 = sub_195FA0EF8();
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = sub_195FA0E88();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = MEMORY[0x1E69E7CD0];
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = v7 + 56;
  v48 = v9;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v44 = v5;
    while (1)
    {
      v15 = MEMORY[0x19A8C4520](v14, v5);
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = *(v7 + 40);
      v19 = sub_195FA0D78();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      v23 = *(v13 + 8 * (v21 >> 6));
      v24 = 1 << v21;
      if (((1 << v21) & v23) != 0)
      {
        v25 = ~v20;
        sub_195EB4B30(0, a4, a5);
        while (1)
        {
          v26 = *(*(v7 + 48) + 8 * v21);
          v27 = sub_195FA0D88();

          if (v27)
          {
            break;
          }

          v21 = (v21 + 1) & v25;
          v22 = v21 >> 6;
          v23 = *(v13 + 8 * (v21 >> 6));
          v24 = 1 << v21;
          if (((1 << v21) & v23) == 0)
          {
            v9 = v48;
            v5 = v44;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v48;
        v5 = v44;
        if (v14 == v48)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v13 + 8 * v22) = v24 | v23;
        *(*(v7 + 48) + 8 * v21) = v17;
        v28 = *(v7 + 16);
        v16 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        *(v7 + 16) = v29;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v30 = 0;
    v45 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v30 != v45)
    {
      v31 = *(v7 + 40);
      v32 = *(v5 + 32 + 8 * v30);
      v33 = sub_195FA0D78();
      v34 = -1 << *(v7 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      v37 = *(v13 + 8 * (v35 >> 6));
      v38 = 1 << v35;
      if (((1 << v35) & v37) != 0)
      {
        v39 = ~v34;
        sub_195EB4B30(0, a4, a5);
        while (1)
        {
          v40 = *(*(v7 + 48) + 8 * v35);
          v41 = sub_195FA0D88();

          if (v41)
          {
            break;
          }

          v35 = (v35 + 1) & v39;
          v36 = v35 >> 6;
          v37 = *(v13 + 8 * (v35 >> 6));
          v38 = 1 << v35;
          if (((1 << v35) & v37) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v13 + 8 * v36) = v38 | v37;
        *(*(v7 + 48) + 8 * v35) = v32;
        v42 = *(v7 + 16);
        v16 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        *(v7 + 16) = v43;
      }

      if (++v30 == v48)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_195F72FCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE348, &qword_195FAFDC8);
    v3 = sub_195FA0EF8();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_195FA08B8();
      sub_195FA1398();
      v29 = v7;
      sub_195FA0958();
      v9 = sub_195FA13E8();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_195FA08B8();
        v20 = v19;
        if (v18 == sub_195FA08B8() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_195FA12B8();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_195F731C0(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SandboxExtension.token.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_195F732A4()
{
  sub_195FA1398();
  sub_195FA0958();
  return sub_195FA13E8();
}

uint64_t sub_195F73308()
{
  sub_195FA1398();
  sub_195FA0958();
  return sub_195FA13E8();
}

uint64_t sub_195F73354@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_195FA10D8();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_195F733D4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_195FA10D8();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_195F7342C(uint64_t a1)
{
  v2 = sub_195F7402C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F73468(uint64_t a1)
{
  v2 = sub_195F7402C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SandboxExtension.__allocating_init(token:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 40) = 1;
  *(result + 16) = a1;
  return result;
}

uint64_t SandboxExtension.init(token:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  *(v2 + 16) = a1;
  return v2;
}

uint64_t SandboxExtension.deinit()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    v1 = *(v0 + 32);
    sandbox_extension_release();
  }

  v2 = *(v0 + 24);

  return v0;
}

uint64_t SandboxExtension.__deallocating_deinit()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    v1 = *(v0 + 32);
    sandbox_extension_release();
  }

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

char *static SandboxExtension.issue(url:readonly:)(uint64_t a1, char a2)
{
  v3 = v2;
  v4 = MEMORY[0x1E69E9BB0];
  if (a2)
  {
    v4 = MEMORY[0x1E69E9BA8];
  }

  v5 = *v4;
  sub_195FA0438();
  v6 = *MEMORY[0x1E69E9BE0];
  sub_195FA0918();

  v7 = sandbox_extension_issue_file();

  if (v7)
  {
    v9 = sub_195FA0878();
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      v3 = swift_allocObject();
      *(v3 + 24) = v12;
      *(v3 + 32) = 0;
      *(v3 + 40) = 1;
      *(v3 + 16) = v11;
    }

    else
    {
      sub_195F73700();
      swift_allocError();
      *v19 = 0;
      v19[1] = 0;
      v19[2] = 1;
      swift_willThrow();
    }

    free(v7);
    return v3;
  }

  v13 = MEMORY[0x19A8C3C80](v8);
  v14 = MEMORY[0x19A8C3C80]();
  result = strerror(v14);
  if (result)
  {
    v16 = sub_195FA0878();
    v3 = v17;
    sub_195F73700();
    swift_allocError();
    *v18 = v13;
    v18[1] = v16;
    v18[2] = v3;
    swift_willThrow();
    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_195F73700()
{
  result = qword_1EAEEBC38[0];
  if (!qword_1EAEEBC38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAEEBC38);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SandboxExtension.consume()()
{
  v1 = v0;
  if (*(v0 + 40))
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    sub_195FA0918();
    v4 = sandbox_extension_consume();

    if (v4 < 0)
    {
      v14 = MEMORY[0x19A8C3C80](v5);
      v15 = MEMORY[0x19A8C3C80]();
      if (strerror(v15))
      {
        v16 = sub_195FA0878();
        v18 = v17;
        sub_195F73700();
        swift_allocError();
        *v19 = v14;
        v19[1] = v16;
        v19[2] = v18;
        swift_willThrow();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      *(v1 + 32) = v4;
      *(v1 + 40) = 0;
    }
  }

  else
  {
    if (qword_1EAEED008 != -1)
    {
      swift_once();
    }

    v6 = sub_195FA0678();
    __swift_project_value_buffer(v6, qword_1EAEF7348);

    v7 = sub_195FA0658();
    v8 = sub_195FA0C98();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = v10;
      *v9 = 136446210;
      v11 = SandboxExtension.description.getter();
      v13 = sub_195EBD554(v11, v12, &v20);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_195EB2000, v7, v8, "SandboxExtension already consumed: %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x19A8C5B70](v10, -1, -1);
      MEMORY[0x19A8C5B70](v9, -1, -1);
    }
  }
}

unint64_t SandboxExtension.description.getter()
{
  v1 = v0;
  sub_195FA0F38();

  v2 = *(v0 + 16);
  v3 = *(v1 + 24);

  v4 = sub_195F73F90(16);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = MEMORY[0x19A8C3EF0](v4, v6, v8, v10);
  v13 = v12;

  MEMORY[0x19A8C3F70](v11, v13);

  MEMORY[0x19A8C3F70](0x656C646E6168202CLL, 0xEA0000000000203ALL);
  v14 = *(v1 + 32);
  *(v1 + 40);
  v15 = sub_195FA1288();
  MEMORY[0x19A8C3F70](v15);

  MEMORY[0x19A8C3F70](41, 0xE100000000000000);
  return 0xD000000000000018;
}

uint64_t SandboxExtension.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE350, &qword_195FAFDE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F7402C();
  sub_195FA1468();
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  sub_195FA11F8();
  return (*(v5 + 8))(v8, v4);
}

uint64_t SandboxExtension.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  SandboxExtension.init(from:)(a1);
  return v2;
}

uint64_t *SandboxExtension.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE358, &qword_195FAFDE8);
  v17 = *(v6 - 8);
  v7 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  v1[4] = 0;
  *(v1 + 40) = 1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F7402C();
  sub_195FA1448();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v17;
    v13 = sub_195FA1138();
    v15 = v14;
    (*(v11 + 8))(v9, v6);
    v3[2] = v13;
    v3[3] = v15;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t *sub_195F73DDC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = SandboxExtension.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_195F73E34(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE350, &qword_195FAFDE0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F7402C();
  sub_195FA1468();
  v10 = *(v8 + 16);
  v11 = *(v8 + 24);
  sub_195FA11F8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_195F73F90(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_195FA0988();

    return sub_195FA0A68();
  }

  return result;
}

unint64_t sub_195F7402C()
{
  result = qword_1EAEEBF78[0];
  if (!qword_1EAEEBF78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAEEBF78);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14ChronoServices12SandboxErrorO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_195F7412C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483645);
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

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_195F74194(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

void *sub_195F741E8(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = a2;
  }

  return result;
}

unint64_t sub_195F7422C()
{
  result = qword_1EAEEE360;
  if (!qword_1EAEEE360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEE360);
  }

  return result;
}

unint64_t sub_195F74284()
{
  result = qword_1EAEEBF68;
  if (!qword_1EAEEBF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBF68);
  }

  return result;
}

unint64_t sub_195F742DC()
{
  result = qword_1EAEEBF70;
  if (!qword_1EAEEBF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBF70);
  }

  return result;
}

id sub_195F74330()
{
  v0 = type metadata accessor for ControlsClient();
  result = [objc_allocWithZone(v0) init];
  qword_1EAEEC2D8 = v0;
  unk_1EAEEC2E0 = &protocol witness table for ControlsClient;
  qword_1EAEEC2C0 = result;
  return result;
}

id ControlsClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t static ControlsClientFactory.shared.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAEEC2B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_195EC97E0(&qword_1EAEEC2C0, a1);
}

uint64_t static ControlsClientFactory.shared.setter(uint64_t *a1)
{
  if (qword_1EAEEC2B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(&qword_1EAEEC2C0, a1);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

uint64_t (*static ControlsClientFactory.shared.modify())()
{
  if (qword_1EAEEC2B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_195F74764@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAEEC2B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_195EC97E0(&qword_1EAEEC2C0, a1);
}

uint64_t sub_195F747E4(uint64_t *a1)
{
  if (qword_1EAEEC2B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(&qword_1EAEEC2C0, a1);
  return swift_endAccess();
}

uint64_t sub_195F748A8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14ChronoServices14ControlsClient____lazy_storage___liveControlsDidChangePublisher);
  *(v1 + OBJC_IVAR____TtC14ChronoServices14ControlsClient____lazy_storage___liveControlsDidChangePublisher) = a1;
}

uint64_t (*sub_195F748C0(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_195F74894();
  return sub_195F74908;
}

uint64_t sub_195F74928(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v9 = *(v2 + *a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE380, qword_195FB00A0);
    sub_195EB5F38(&qword_1EAEEBEA8, &unk_1EAEEE380, qword_195FB00A0);
    v6 = v2;
    v5 = sub_195FA0738();
    v7 = *(v2 + v3);
    *(v6 + v3) = v5;
  }

  return v5;
}

uint64_t sub_195F749FC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14ChronoServices14ControlsClient____lazy_storage___previewControlsDidChangePublisher);
  *(v1 + OBJC_IVAR____TtC14ChronoServices14ControlsClient____lazy_storage___previewControlsDidChangePublisher) = a1;
}

uint64_t (*sub_195F74A14(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_195F74914();
  return sub_195F74A5C;
}

uint64_t sub_195F74A68(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(v3 + *a3);
  *(v3 + *a3) = v4;
}

char *ControlsClient.init()()
{
  v1 = v0;
  v37 = sub_195FA0CF8();
  v2 = *(v37 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_195FA0CD8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_195FA07D8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v35 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__calloutQueue;
  v9 = sub_195EB4B30(0, &qword_1EAEEC590, 0x1E69E9610);
  v34[3] = "ension";
  v34[4] = v9;
  sub_195FA07A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v34[2] = sub_195EC6890(&qword_1EAEEC5A0, MEMORY[0x1E69E8030]);
  v34[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE3A0, &unk_195FAC790);
  sub_195EB5F38(&qword_1EAEEC5B0, &unk_1EAEEE3A0, &unk_195FAC790);
  sub_195FA0E38();
  v10 = *MEMORY[0x1E69E8098];
  v11 = v2 + 104;
  v12 = *(v2 + 104);
  v34[0] = v11;
  v12(v36, v10, v37);
  *&v0[v35] = sub_195FA0D38();
  v35 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue;
  sub_195FA07A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_195FA0E38();
  v12(v36, v10, v37);
  *&v0[v35] = sub_195FA0D38();
  *&v0[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue_connection] = 0;
  v13 = MEMORY[0x1E69E7CC8];
  *&v0[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue_controlHosts] = MEMORY[0x1E69E7CC8];
  v14 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock;
  type metadata accessor for UnfairLock();
  v15 = swift_allocObject();
  v16 = swift_slowAlloc();
  *v16 = 0;
  *(v15 + 16) = v16;
  *&v1[v14] = v15;
  *&v1[OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_subscriptions] = v13;
  *&v1[OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_sandboxExtensions] = v13;
  *&v1[OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_environmentData] = xmmword_195FAD860;
  v17 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__calloutQueue_liveControlsDidChangePublisher;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE380, qword_195FB00A0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *&v1[v17] = sub_195FA06F8();
  *&v1[OBJC_IVAR____TtC14ChronoServices14ControlsClient____lazy_storage___liveControlsDidChangePublisher] = 0;
  v21 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__calloutQueue_previewControlsDidChangePublisher;
  v22 = *(v18 + 48);
  v23 = *(v18 + 52);
  swift_allocObject();
  *&v1[v21] = sub_195FA06F8();
  *&v1[OBJC_IVAR____TtC14ChronoServices14ControlsClient____lazy_storage___previewControlsDidChangePublisher] = 0;
  v24 = &v1[OBJC_IVAR____TtC14ChronoServices14ControlsClient_handleSystemEnvironmentDidChange];
  v25 = type metadata accessor for ControlsClient();
  *v24 = 0;
  *(v24 + 1) = 0;
  v39.receiver = v1;
  v39.super_class = v25;
  v26 = objc_msgSendSuper2(&v39, sel_init);
  v27 = CHSChronodStartupNotification;
  v28 = *&v26[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue];
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  aBlock[4] = sub_195F7573C;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195F75A80;
  aBlock[3] = &block_descriptor_11;
  v30 = _Block_copy(aBlock);
  v31 = v26;
  v32 = v28;

  swift_beginAccess();
  notify_register_dispatch(v27, &unk_1EAEF7338, v32, v30);
  swift_endAccess();
  _Block_release(v30);

  return v31;
}

uint64_t sub_195F75004(uint64_t a1, char *a2)
{
  v3 = sub_195FA0778();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_195FA07D8();
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&a2[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue];
  BSDispatchQueueAssert();
  if (qword_1EAEEC280 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v13 = sub_195FA0678();
    v48 = __swift_project_value_buffer(v13, qword_1EAEF7318);
    v14 = sub_195FA0658();
    v15 = sub_195FA0C98();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_195EB2000, v14, v15, "Detected chronod relaunch.", v16, 2u);
      MEMORY[0x19A8C5B70](v16, -1, -1);
    }

    v58 = MEMORY[0x1E69E7CC8];
    v17 = *&a2[OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock];
    os_unfair_lock_lock(*(v17 + 16));
    sub_195F75744(a2, &v58);
    v50 = v8;
    v51 = v4;
    os_unfair_lock_unlock(*(v17 + 16));
    BSDispatchQueueAssert();
    sub_195F7F55C();
    v18 = *&a2[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue_connection];
    if (v18)
    {
      v19 = v18;
      if ([v19 remoteTarget])
      {
        sub_195FA0E08();
        swift_unknownObjectRelease();

        sub_195F2DB00(&aBlock, &unk_1EAEED4B0, &qword_195FAC080);
      }

      else
      {
        aBlock = 0u;
        v55 = 0u;
        sub_195F2DB00(&aBlock, &unk_1EAEED4B0, &qword_195FAC080);
        [v19 activate];
      }
    }

    v20 = swift_allocObject();
    *(v20 + 16) = a2;
    v56 = sub_195F83984;
    v57 = v20;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v55 = sub_195EBDBE8;
    *(&v55 + 1) = &block_descriptor_340;
    v21 = _Block_copy(&aBlock);
    v22 = a2;
    sub_195FA0798();
    v53 = MEMORY[0x1E69E7CC0];
    a2 = sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
    sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
    sub_195FA0E38();
    MEMORY[0x19A8C42F0](0, v11, v7, v21);
    _Block_release(v21);
    (*(v51 + 8))(v7, v3);
    (*(v49 + 8))(v11, v50);

    v23 = v22;
    v24 = sub_195FA0658();
    v25 = sub_195FA0C98();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134349056;
      v27 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_subscriptions;
      swift_beginAccess();
      v28 = *(&v23->isa + v27);
      if ((v28 & 0xC000000000000001) != 0)
      {
        if (v28 < 0)
        {
          v29 = *(&v23->isa + v27);
        }

        v30 = *(&v23->isa + v27);

        v31 = sub_195FA0E88();
      }

      else
      {
        v31 = *(v28 + 16);
      }

      *(v26 + 4) = v31;

      _os_log_impl(&dword_195EB2000, v24, v25, "Resubscribing to %{public}ld active sessions.", v26, 0xCu);
      MEMORY[0x19A8C5B70](v26, -1, -1);
    }

    else
    {

      v24 = v23;
    }

    v51 = v58;
    v32 = v23;
    if ((v58 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      v33 = 0;
      v3 = 0;
      v11 = sub_195FA1018() | 0x8000000000000000;
    }

    else
    {
      v11 = v51;
      v34 = -1 << *(v51 + 32);
      v33 = ~v34;
      v7 = (v51 + 64);
      v35 = -v34;
      v36 = v35 < 64 ? ~(-1 << v35) : -1;
      v3 = v36 & *(v51 + 64);
    }

    v4 = 0;
    v50 = v33;
    v37 = (v33 + 64) >> 6;
    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_23:
    v38 = v4;
    v39 = v3;
    v8 = v4;
    if (v3)
    {
LABEL_27:
      v40 = (v39 - 1) & v39;
      v41 = (v8 << 9) | (8 * __clz(__rbit64(v39)));
      v42 = *(*(v11 + 48) + v41);
      a2 = *(*(v11 + 56) + v41);

      if (v42)
      {
        goto LABEL_31;
      }

      goto LABEL_33;
    }

    while (1)
    {
      v8 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v8 >= v37)
      {
        goto LABEL_33;
      }

      v39 = *&v7[8 * v8];
      ++v38;
      if (v39)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v43 = sub_195FA1048();
    if (!v43)
    {
      break;
    }

    v45 = v44;
    v52 = v43;
    type metadata accessor for ControlSessionKey();
    swift_dynamicCast();
    v46 = v53;
    v52 = v45;
    type metadata accessor for ControlSessionSubscriptionRequest();
    swift_dynamicCast();
    a2 = v53;
    v8 = v4;
    v40 = v3;
    if (!v46)
    {
      break;
    }

LABEL_31:

    sub_195F7DF30(a2, v32);

    v4 = v8;
    v3 = v40;
    if ((v11 & 0x8000000000000000) == 0)
    {
      goto LABEL_23;
    }
  }

LABEL_33:
  sub_195EB9E70();
}

void sub_195F75744(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_subscriptions;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if ((v5 & 0xC000000000000001) != 0)
  {
    if (v5 < 0)
    {
      v6 = *(a1 + v4);
    }

    v7 = *(a1 + v4);

    v8 = sub_195FA0E88();

    if (v8)
    {
      goto LABEL_5;
    }
  }

  else if (*(v5 + 16))
  {
LABEL_5:
    v9 = *a2;
    *a2 = *(a1 + v4);

    return;
  }

  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v10 = sub_195FA0678();
  __swift_project_value_buffer(v10, qword_1EAEF7318);
  v11 = sub_195FA0658();
  v12 = sub_195FA0C98();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_195EB2000, v11, v12, "No active sessions - not reconnecting.", v13, 2u);
    MEMORY[0x19A8C5B70](v13, -1, -1);
  }
}

uint64_t sub_195F758B4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue_controlHosts;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v24 = v3;

  v10 = 0;
  if (v7)
  {
    goto LABEL_10;
  }

LABEL_6:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(v24 + 48) + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        v17 = *(v24 + 56) + 32 * v13;
        v18 = *(v17 + 8);
        v25 = *(v17 + 24);
        v19 = *(v17 + 16);

        v20 = sub_195F7F24C();
        if (v20)
        {
          v21 = v20;
          v22 = sub_195FA0888();

          v23 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
          [v21 updateControlHost:v22 configuration:v19 activationState:v23];

          result = swift_unknownObjectRelease();
          v10 = v11;
          if (!v7)
          {
            goto LABEL_6;
          }
        }

        else
        {

          v10 = v11;
          if (!v7)
          {
            goto LABEL_6;
          }
        }

LABEL_10:
        v11 = v10;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_195F75A80(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

Swift::Void __swiftcall ControlsClient.start()()
{
  v1 = *&v0[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_195F83AFC;
  *(v3 + 24) = v2;
  v7[4] = sub_195EC7340;
  v7[5] = v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_195EC7454;
  v7[3] = &block_descriptor_10;
  v4 = _Block_copy(v7);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t ControlsClient.subscribeToSession(withRequest:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_195FA0778();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_195FA07D8();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&v3[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue];
  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  aBlock[4] = sub_195F75F3C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = &block_descriptor_16;
  v17 = _Block_copy(aBlock);
  v18 = v3;

  sub_195FA0798();
  v22 = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v15, v11, v17);
  _Block_release(v17);
  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v21);
}

void sub_195F75F3C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  sub_195F7E3B0(v1, v2, v3);
}

uint64_t ControlsClient.unsubscribe(fromSession:)(uint64_t a1)
{
  v3 = sub_195FA0778();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_195FA07D8();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v1[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue];
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_195F764E0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = &block_descriptor_22;
  v13 = _Block_copy(aBlock);
  v14 = v1;

  sub_195FA0798();
  v18 = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v17);
}

void sub_195F76244(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v4 = *(a1 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock);
  os_unfair_lock_lock(*(v4 + 16));
  sub_195F764E8(a1, a2, &v12);
  os_unfair_lock_unlock(*(v4 + 16));
  if (v12)
  {
    sub_195FA05D8();
    v11[3] = type metadata accessor for ControlSessionKey();
    v11[4] = sub_195EC6890(&qword_1EAEEBDB8, type metadata accessor for ControlSessionKey);
    v11[0] = a2;

    v5 = sub_195FA05C8();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    v8 = sub_195F7F24C();
    if (v8)
    {
      v9 = v8;
      v10 = sub_195FA04B8();
      [v9 unsubscribeFromSession_];
      sub_195EC0890(v5, v7);

      swift_unknownObjectRelease();
    }

    else
    {
      sub_195EC0890(v5, v7);
    }
  }
}

uint64_t sub_195F764E8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  swift_beginAccess();
  sub_195F5A224(a2);
  swift_endAccess();

  v6 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_subscriptions;
  swift_beginAccess();
  v7 = *(a1 + v6);

  v8 = sub_195F363B4(a2, v7);

  if (v8)
  {

    if (qword_1EAEEC280 != -1)
    {
      swift_once();
    }

    v10 = sub_195FA0678();
    __swift_project_value_buffer(v10, qword_1EAEF7318);

    v11 = sub_195FA0658();
    v12 = sub_195FA0CC8();

    if (os_log_type_enabled(v11, v12))
    {
      v20 = a3;
      v13 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = v18;
      *v13 = 136446210;
      v14 = sub_195F61F20();
      v16 = sub_195EBD554(v14, v15, &v19);

      *(v13 + 4) = v16;
      _os_log_impl(&dword_195EB2000, v11, v12, "Unsubscribing from session: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x19A8C5B70](v18, -1, -1);
      v17 = v13;
      a3 = v20;
      MEMORY[0x19A8C5B70](v17, -1, -1);
    }

    swift_beginAccess();
    sub_195F5A1FC(a2);
    swift_endAccess();

    *a3 = 1;
  }

  return result;
}

uint64_t ControlsClient.setVisiblySettled(_:forSession:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_195FA0778();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_195FA07D8();
  v23 = *(v10 - 8);
  v11 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_195FA05D8();
  v26 = type metadata accessor for ControlSessionKey();
  v27 = sub_195EC6890(&qword_1EAEEBDB8, type metadata accessor for ControlSessionKey);
  aBlock[0] = a2;

  v14 = sub_195FA05C8();
  v22 = v10;
  v16 = v15;
  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  v21[1] = *&v2[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue];
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = v2;
  v17[5] = v14;
  v21[0] = v14;
  v17[6] = v16;
  v27 = sub_195F82000;
  v28 = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  v26 = &block_descriptor_28;
  v18 = _Block_copy(aBlock);

  v19 = v2;
  sub_195EC08E4(v14, v16);
  sub_195FA0798();
  v24 = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v13, v9, v18);
  _Block_release(v18);
  sub_195EC0890(v21[0], v16);
  (*(v6 + 8))(v9, v5);
  (*(v23 + 8))(v13, v22);
}

uint64_t sub_195F76BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v6 = sub_195FA0678();
  __swift_project_value_buffer(v6, qword_1EAEF7318);

  v7 = sub_195FA0658();
  v8 = sub_195FA0C98();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27[0] = v10;
    *v9 = 136446466;
    v11 = NSStringFromCHSControlVisibility(a1);

    if (!v11)
    {
      __break(1u);
      return result;
    }

    v13 = sub_195FA08B8();
    v15 = v14;

    v16 = sub_195EBD554(v13, v15, v27);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2082;
    v17 = sub_195F61F20();
    v19 = sub_195EBD554(v17, v18, v27);

    *(v9 + 14) = v19;
    _os_log_impl(&dword_195EB2000, v7, v8, "Set visibly %{public}s for session: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A8C5B70](v10, -1, -1);
    MEMORY[0x19A8C5B70](v9, -1, -1);
  }

  else
  {
  }

  v20 = *(a3 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock);
  os_unfair_lock_lock(*(v20 + 16));
  v21 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_subscriptions;
  swift_beginAccess();
  v22 = *(a3 + v21);

  v23 = sub_195F363B4(a2, v22);

  if (v23)
  {
    swift_beginAccess();
    *(v23 + 32) = a1;
  }

  os_unfair_lock_unlock(*(v20 + 16));
  result = sub_195F7F24C();
  if (result)
  {
    v24 = result;
    v25 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    v26 = sub_195FA04B8();
    [v24 setVisibility:v25 forSession:v26];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ControlsClient.setTaskPriority(_:forSession:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_195FA0778();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_195FA07D8();
  v26 = *(v11 - 8);
  v12 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_195FA05D8();
  v29 = type metadata accessor for ControlSessionKey();
  v30 = sub_195EC6890(&qword_1EAEEBDB8, type metadata accessor for ControlSessionKey);
  aBlock[0] = a2;

  v16 = sub_195FA05C8();
  v25 = v7;
  v18 = v17;
  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  v24[1] = *&v3[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue];
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  *(v19 + 24) = a2;
  *(v19 + 32) = v3;
  *(v19 + 40) = v16;
  *(v19 + 48) = v18;
  v30 = sub_195F82058;
  v31 = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  v29 = &block_descriptor_34;
  v20 = _Block_copy(aBlock);
  v24[0] = v11;
  v21 = v20;

  v22 = v3;
  sub_195EC08E4(v16, v18);
  sub_195FA0798();
  v27 = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v14, v10, v21);
  _Block_release(v21);
  sub_195EC0890(v16, v18);
  (*(v25 + 8))(v10, v6);
  (*(v26 + 8))(v14, v24[0]);
}

void sub_195F77390(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v6 = sub_195FA0678();
  __swift_project_value_buffer(v6, qword_1EAEF7318);

  v7 = sub_195FA0658();
  v8 = sub_195FA0C98();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29[0] = v10;
    *v9 = 136446466;
    v11 = 0xD000000000000019;
    v12 = "foregroundOpportunistic";
    if (a1 == 2)
    {
      v11 = 0xD000000000000017;
      v12 = "backgroundConfigured";
    }

    v13 = "0:8^v16";
    v14 = 0xD000000000000014;
    if (a1)
    {
      v13 = "backgroundOpportunistic";
    }

    else
    {
      v14 = 0xD000000000000017;
    }

    if (a1 <= 1u)
    {
      v15 = v14;
    }

    else
    {
      v15 = v11;
    }

    if (a1 <= 1u)
    {
      v16 = v13;
    }

    else
    {
      v16 = v12;
    }

    v17 = sub_195EBD554(v15, v16 | 0x8000000000000000, v29);

    *(v9 + 4) = v17;
    *(v9 + 12) = 2082;
    v18 = sub_195F61F20();
    v20 = sub_195EBD554(v18, v19, v29);

    *(v9 + 14) = v20;
    _os_log_impl(&dword_195EB2000, v7, v8, "Set widget task priority %{public}s for session: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A8C5B70](v10, -1, -1);
    MEMORY[0x19A8C5B70](v9, -1, -1);
  }

  else
  {
  }

  v21 = *(a3 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock);
  os_unfair_lock_lock(*(v21 + 16));
  v22 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_subscriptions;
  swift_beginAccess();
  v23 = *(a3 + v22);

  v24 = sub_195F363B4(a2, v23);

  if (v24)
  {
    swift_beginAccess();
    *(v24 + 24) = a1;
  }

  os_unfair_lock_unlock(*(v21 + 16));
  v25 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v26 = sub_195F7F24C();
  if (v26)
  {
    v27 = v26;
    v28 = sub_195FA04B8();
    [v27 setTaskPriority:v25 forSession:v28];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t ControlsClient.setEnvironmentModifiers(_:forSession:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v25 = a2;
  v6 = sub_195FA0778();
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_195FA07D8();
  v27 = *(v10 - 8);
  v28 = v10;
  v11 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_195FA05D8();
  v31 = type metadata accessor for ControlSessionKey();
  v32 = sub_195EC6890(&qword_1EAEEBDB8, type metadata accessor for ControlSessionKey);
  aBlock[0] = a3;

  v14 = sub_195FA05C8();
  v16 = v15;
  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  v24[1] = *&v3[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue];
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = v3;
  v18 = a1;
  v17[4] = a1;
  v19 = v25;
  v17[5] = v25;
  v17[6] = v14;
  v17[7] = v16;
  v32 = sub_195F82068;
  v33 = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  v31 = &block_descriptor_40;
  v24[0] = _Block_copy(aBlock);

  v20 = v3;
  sub_195EC08E4(v18, v19);
  sub_195EC08E4(v14, v16);
  sub_195FA0798();
  v29 = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  v21 = v26;
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
  sub_195FA0E38();
  v22 = v24[0];
  MEMORY[0x19A8C42F0](0, v13, v9, v24[0]);
  _Block_release(v22);
  sub_195EC0890(v14, v16);
  (*(v21 + 8))(v9, v6);
  (*(v27 + 8))(v13, v28);
}

uint64_t sub_195F77B7C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v7 = sub_195FA0678();
  __swift_project_value_buffer(v7, qword_1EAEF7318);

  v8 = sub_195FA0658();
  v9 = sub_195FA0C98();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136446210;
    v12 = sub_195F61F20();
    v14 = sub_195EBD554(v12, v13, &v26);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_195EB2000, v8, v9, "Set environment modifiers for session: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x19A8C5B70](v11, -1, -1);
    MEMORY[0x19A8C5B70](v10, -1, -1);
  }

  v15 = *(a2 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock);
  os_unfair_lock_lock(*(v15 + 16));
  v16 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_subscriptions;
  swift_beginAccess();
  v17 = *(a2 + v16);

  v18 = sub_195F363B4(a1, v17);

  if (v18)
  {
    swift_beginAccess();
    v19 = *(v18 + 40);
    v20 = *(v18 + 48);
    *(v18 + 40) = a3;
    *(v18 + 48) = a4;
    sub_195EC08E4(a3, a4);
    sub_195EC5A34(v19, v20);
  }

  os_unfair_lock_unlock(*(v15 + 16));
  result = sub_195F7F24C();
  if (result)
  {
    v22 = result;
    v23 = sub_195FA04B8();
    v24 = sub_195FA04B8();
    [v22 setEnvironmentModifiers:v23 forSession:v24];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_195F77E04(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_195F77E28, 0, 0);
}

uint64_t sub_195F77E28()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_195F77F2C;

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_195F77F2C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_195F78048;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_195F83AB8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_195F78048()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

void sub_195F780AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[1] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE4F8, &qword_195FB01F8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v28 - v9;
  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v11 = sub_195FA0678();
  __swift_project_value_buffer(v11, qword_1EAEF7318);
  v12 = sub_195FA0658();
  v13 = sub_195FA0C98();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28[0] = v10;
    v15 = a4;
    v16 = v14;
    *v14 = 0;
    _os_log_impl(&dword_195EB2000, v12, v13, "xpc: setControlState", v14, 2u);
    v17 = v16;
    a4 = v15;
    v10 = v28[0];
    MEMORY[0x19A8C5B70](v17, -1, -1);
  }

  v18 = sub_195F7F24C();
  if (v18)
  {
    v19 = v18;
    v20 = sub_195FA04B8();
    (*(v7 + 16))(v10, a4, v6);
    v21 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = a1;
    (*(v7 + 32))(v22 + v21, v10, v6);
    aBlock[4] = sub_195F837F0;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195F9B590;
    aBlock[3] = &block_descriptor_328;
    v23 = _Block_copy(aBlock);
    v24 = a1;

    [v19 setControlState:v20 completion:v23];
    _Block_release(v23);
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = sub_195FA0658();
    v26 = sub_195FA0C98();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_195EB2000, v25, v26, "xpc error: setControlState - unable to obtain the remote target", v27, 2u);
      MEMORY[0x19A8C5B70](v27, -1, -1);
    }

    aBlock[0] = [objc_opt_self() serverUnavailable];
    sub_195FA0B98();
  }
}

uint64_t sub_195F78438(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_195F7845C, 0, 0);
}

uint64_t sub_195F7845C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_195F78560;

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_195F78560()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_195F83AA4;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_195F83AB8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_195F7867C(uint64_t a1, char *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a7;
  v30 = a4;
  v31 = a6;
  v29 = a5;
  v34 = sub_195FA0778();
  v37 = *(v34 - 8);
  v10 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_195FA07D8();
  v35 = *(v13 - 8);
  v36 = v13;
  v14 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE4F8, &qword_195FB01F8);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v29 - v20;
  v32 = *&a2[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue];
  (*(v18 + 16))(&v29 - v20, a1, v17);
  v22 = (*(v18 + 80) + 40) & ~*(v18 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = a2;
  *(v23 + 3) = a3;
  v24 = v30;
  *(v23 + 4) = v30;
  (*(v18 + 32))(&v23[v22], v21, v17);
  aBlock[4] = v31;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = v33;
  v25 = _Block_copy(aBlock);
  v26 = a2;
  sub_195EC08E4(a3, v24);
  sub_195FA0798();
  v38 = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
  v27 = v34;
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v16, v12, v25);
  _Block_release(v25);
  (*(v37 + 8))(v12, v27);
  (*(v35 + 8))(v16, v36);
}

void sub_195F78A38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[1] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE4F8, &qword_195FB01F8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v28 - v9;
  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v11 = sub_195FA0678();
  __swift_project_value_buffer(v11, qword_1EAEF7318);
  v12 = sub_195FA0658();
  v13 = sub_195FA0C98();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28[0] = v10;
    v15 = a4;
    v16 = v14;
    *v14 = 0;
    _os_log_impl(&dword_195EB2000, v12, v13, "xpc: performControlAction", v14, 2u);
    v17 = v16;
    a4 = v15;
    v10 = v28[0];
    MEMORY[0x19A8C5B70](v17, -1, -1);
  }

  v18 = sub_195F7F24C();
  if (v18)
  {
    v19 = v18;
    v20 = sub_195FA04B8();
    (*(v7 + 16))(v10, a4, v6);
    v21 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = a1;
    (*(v7 + 32))(v22 + v21, v10, v6);
    aBlock[4] = sub_195F83590;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195F9B590;
    aBlock[3] = &block_descriptor_310;
    v23 = _Block_copy(aBlock);
    v24 = a1;

    [v19 performControlAction:v20 completion:v23];
    _Block_release(v23);
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = sub_195FA0658();
    v26 = sub_195FA0C98();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_195EB2000, v25, v26, "xpc error: performControlAction - unable to obtain the remote target", v27, 2u);
      MEMORY[0x19A8C5B70](v27, -1, -1);
    }

    aBlock[0] = [objc_opt_self() serverUnavailable];
    sub_195FA0B98();
  }
}

uint64_t sub_195F78DC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a5;
  v28 = a6;
  v26[0] = a3;
  v26[1] = a4;
  v8 = sub_195FA0778();
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_195FA07D8();
  v12 = *(v29 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE4F8, &qword_195FB01F8);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v26 - v19;
  v26[2] = *(a2 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__calloutQueue);
  (*(v17 + 16))(v26 - v19, v26[0], v16);
  v21 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  (*(v17 + 32))(v22 + v21, v20, v16);
  aBlock[4] = v27;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = v28;
  v23 = _Block_copy(aBlock);
  v24 = a1;
  sub_195FA0798();
  v31 = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v15, v11, v23);
  _Block_release(v23);
  (*(v30 + 8))(v11, v8);
  (*(v12 + 8))(v15, v29);
}

Swift::Void __swiftcall ControlsClient.reloadControls(forExtension:kind:reason:)(Swift::String forExtension, Swift::String_optional kind, Swift::String reason)
{
  object = reason._object;
  countAndFlagsBits = reason._countAndFlagsBits;
  v6 = kind.value._object;
  v7 = kind.value._countAndFlagsBits;
  v8 = forExtension._object;
  v9 = forExtension._countAndFlagsBits;
  v10 = sub_195FA0778();
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_195FA07D8();
  v22 = *(v14 - 8);
  v23 = v14;
  v15 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *&v3[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue];
  v18 = swift_allocObject();
  v18[2] = v3;
  v18[3] = v9;
  v18[4] = v8;
  v18[5] = v7;
  v18[6] = v6;
  v18[7] = countAndFlagsBits;
  v18[8] = object;
  aBlock[4] = sub_195F82100;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = &block_descriptor_50_0;
  v19 = _Block_copy(aBlock);

  v20 = v3;

  sub_195FA0798();
  v25 = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v17, v13, v19);
  _Block_release(v19);
  (*(v24 + 8))(v13, v10);
  (*(v22 + 8))(v17, v23);
}

void sub_195F79474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v6 = sub_195FA0678();
  __swift_project_value_buffer(v6, qword_1EAEF7318);
  v7 = sub_195FA0658();
  v8 = sub_195FA0C98();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_195EB2000, v7, v8, "xpc: reloadControls(forExtension:kind:reason)", v9, 2u);
    MEMORY[0x19A8C5B70](v9, -1, -1);
  }

  v10 = sub_195F7F24C();
  if (v10)
  {
    v11 = v10;
    v12 = sub_195FA0888();
    if (a5)
    {
      a5 = sub_195FA0888();
    }

    oslog = sub_195FA0888();
    [v11 reloadControlsForExtension:v12 kind:a5 reason:?];
    swift_unknownObjectRelease();
  }

  else
  {
    oslog = sub_195FA0658();
    v13 = sub_195FA0C98();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_195EB2000, oslog, v13, "xpc error: reloadControls(forExtension:kind:reason) - unable to obtain the remote target", v14, 2u);
      MEMORY[0x19A8C5B70](v14, -1, -1);
    }
  }
}

void sub_195F796E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v10 = sub_195FA0678();
  __swift_project_value_buffer(v10, qword_1EAEF7318);
  v11 = sub_195FA0658();
  v12 = sub_195FA0C98();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_195EB2000, v11, v12, "xpc: updateControlHostConfiguration", v13, 2u);
    MEMORY[0x19A8C5B70](v13, -1, -1);
  }

  v14 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue_controlHosts;
  swift_beginAccess();
  v15 = a4;
  v16 = *(a1 + v14);
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(a1 + v14);
  *(a1 + v14) = 0x8000000000000000;
  v18 = a5 & 1;
  sub_195F5D400(a2, a3, a4, v18, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + v14) = v25;
  swift_endAccess();
  v19 = sub_195F7F24C();
  if (v19)
  {
    v20 = v19;
    v21 = sub_195FA0888();
    v22 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    [v20 updateControlHost:v21 configuration:v15 activationState:v22];
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = sub_195FA0658();
    v23 = sub_195FA0C98();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_195EB2000, v22, v23, "xpc error: updateControlHostConfiguration - unable to obtain the remote target", v24, 2u);
      MEMORY[0x19A8C5B70](v24, -1, -1);
    }
  }
}

uint64_t sub_195F79980(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a4;
  v6 = sub_195FA0778();
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_195FA07D8();
  v10 = *(v25 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = a1[1];
  v16 = a1[2];
  LOBYTE(a1) = *(a1 + 24);
  v24 = *&v4[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue];
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = v14;
  *(v17 + 32) = v15;
  *(v17 + 40) = v16;
  *(v17 + 48) = a1;
  aBlock[4] = v22;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = v23;
  v18 = _Block_copy(aBlock);
  v19 = v16;
  v20 = v4;

  sub_195FA0798();
  v27 = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v13, v9, v18);
  _Block_release(v18);
  (*(v26 + 8))(v9, v6);
  (*(v10 + 8))(v13, v25);
}

void sub_195F79C6C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v10 = sub_195FA0678();
  __swift_project_value_buffer(v10, qword_1EAEF7318);
  v11 = sub_195FA0658();
  v12 = sub_195FA0C98();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_195EB2000, v11, v12, "xpc: updateControlHostActivationState", v13, 2u);
    MEMORY[0x19A8C5B70](v13, -1, -1);
  }

  v14 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue_controlHosts;
  swift_beginAccess();
  v15 = a4;
  v16 = *(a1 + v14);
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(a1 + v14);
  *(a1 + v14) = 0x8000000000000000;
  v18 = a5 & 1;
  sub_195F5D400(a2, a3, a4, v18, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + v14) = v25;
  swift_endAccess();
  v19 = sub_195F7F24C();
  if (v19)
  {
    v20 = v19;
    v21 = sub_195FA0888();
    v22 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    [v20 updateControlHost:v21 activationState:v22];
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = sub_195FA0658();
    v23 = sub_195FA0C98();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_195EB2000, v22, v23, "xpc error: updateControlHostActivationState - unable to obtain the remote target", v24, 2u);
      MEMORY[0x19A8C5B70](v24, -1, -1);
    }
  }
}

void sub_195F79F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v5 = sub_195FA0678();
  __swift_project_value_buffer(v5, qword_1EAEF7318);
  v6 = sub_195FA0658();
  v7 = sub_195FA0C98();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_195EB2000, v6, v7, "xpc: invalidateControlHost", v8, 2u);
    MEMORY[0x19A8C5B70](v8, -1, -1);
  }

  swift_beginAccess();

  sub_195F5A3C0(a2, a3, v14);

  sub_195F83534(v14[0], v14[1], v14[2]);
  swift_endAccess();
  v9 = sub_195F7F24C();
  if (v9)
  {
    v10 = v9;
    v11 = sub_195FA0888();
    [v10 invalidateControlHost_];
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = sub_195FA0658();
    v12 = sub_195FA0C98();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_195EB2000, v11, v12, "xpc error: invalidateControlHost - unable to obtain the remote target", v13, 2u);
      MEMORY[0x19A8C5B70](v13, -1, -1);
    }
  }
}

uint64_t sub_195F7A12C()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE3F0, &qword_195FB00C0);
  *v4 = v0;
  v4[1] = sub_195F7A234;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000020, 0x8000000195FC2520, sub_195F821BC, v2, v5);
}

uint64_t sub_195F7A234()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_195F7A350;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_195F83B90;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_195F7A350()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_195F7A3B4(uint64_t a1, char *a2)
{
  v4 = sub_195FA0778();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_195FA07D8();
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE510, &qword_195FB0210);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v22 - v15;
  v22[1] = *&a2[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue];
  (*(v13 + 16))(v22 - v15, a1, v12);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  (*(v13 + 32))(v18 + v17, v16, v12);
  aBlock[4] = sub_195F83338;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = &block_descriptor_286;
  v19 = _Block_copy(aBlock);
  v20 = a2;
  sub_195FA0798();
  v26 = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v11, v7, v19);
  _Block_release(v19);
  (*(v25 + 8))(v7, v4);
  (*(v23 + 8))(v11, v24);
}

uint64_t sub_195F7A75C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE510, &qword_195FB0210);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v9 = sub_195FA0678();
  __swift_project_value_buffer(v9, qword_1EAEF7318);
  v10 = sub_195FA0658();
  v11 = sub_195FA0C98();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_195EB2000, v10, v11, "xpc: allControlConfigurationsByHost", v12, 2u);
    MEMORY[0x19A8C5B70](v12, -1, -1);
  }

  v13 = sub_195F7F24C();
  if (v13)
  {
    v14 = v13;
    (*(v5 + 16))(v8, a2, v4);
    v15 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    (*(v5 + 32))(v16 + v15, v8, v4);
    aBlock[4] = sub_195F833A8;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195F83B78;
    aBlock[3] = &block_descriptor_292;
    v17 = _Block_copy(aBlock);
    v18 = a1;

    [v14 allControlConfigurationsByHostWithCompletion_];
    _Block_release(v17);
    return swift_unknownObjectRelease();
  }

  else
  {
    v20 = sub_195FA0658();
    v21 = sub_195FA0C98();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_195EB2000, v20, v21, "xpc error: allControlConfigurationsByHost - unable to obtain the remote target", v22, 2u);
      MEMORY[0x19A8C5B70](v22, -1, -1);
    }

    aBlock[0] = [objc_opt_self() serverUnavailable];
    return sub_195FA0B98();
  }
}

uint64_t sub_195F7AA98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27[0] = a2;
  v7 = sub_195FA0778();
  v30 = *(v7 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_195FA07D8();
  v28 = *(v11 - 8);
  v29 = v11;
  v12 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE510, &qword_195FB0210);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v27 - v18;
  v27[1] = *(a3 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__calloutQueue);
  (*(v16 + 16))(v27 - v18, a4, v15);
  v20 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  (*(v16 + 32))(v21 + v20, v19, v15);
  v22 = v27[0];
  *(v21 + ((v17 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27[0];
  aBlock[4] = sub_195F8346C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = &block_descriptor_298;
  v23 = _Block_copy(aBlock);
  v24 = a1;
  v25 = v22;
  sub_195FA0798();
  v31 = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v14, v10, v23);
  _Block_release(v23);
  (*(v30 + 8))(v10, v7);
  (*(v28 + 8))(v14, v29);
}

void sub_195F7AE64(void *a1, int a2, id a3)
{
  if (a1)
  {
    v3 = a1;
    v4 = [v3 configurationsByHost];
    type metadata accessor for CHSControlConfiguration(0);
    sub_195FA0808();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE510, &qword_195FB0210);
    sub_195FA0BA8();
  }

  else if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE510, &qword_195FB0210);
    sub_195FA0B98();
  }

  else
  {
    sub_195F2DE84(MEMORY[0x1E69E7CC0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE510, &qword_195FB0210);
    sub_195FA0BA8();
  }
}

uint64_t ControlsClient.fetchControlDescriptors(forExtensionBundleIdentifier:userInitiated:reason:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = v5;
  *(v6 + 32) = a2;
  *(v6 + 40) = a4;
  *(v6 + 88) = a3;
  *(v6 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_195F7AFA0, 0, 0);
}

uint64_t sub_195F7AFA0()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 88);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
  *(v7 + 48) = v3;
  *(v7 + 56) = v2;
  v8 = *(MEMORY[0x1E69E8920] + 4);
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE3F8, &qword_195FB00D0);
  *v9 = v0;
  v9[1] = sub_195F7B0D0;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD00000000000004BLL, 0x8000000195FC2550, sub_195F821C4, v7, v10);
}

uint64_t sub_195F7B0D0()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_195F7B1EC;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_195F83B90;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_195F7B1EC()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_195F7B250(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v32 = a6;
  v33 = a7;
  v31 = a5;
  v30 = a3;
  v35 = sub_195FA0778();
  v38 = *(v35 - 8);
  v10 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_195FA07D8();
  v36 = *(v13 - 8);
  v37 = v13;
  v14 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE508, &qword_195FB0208);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v30 - v20;
  v34 = *&a2[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue];
  (*(v18 + 16))(&v30 - v20, a1, v17);
  v22 = (*(v18 + 80) + 64) & ~*(v18 + 80);
  v23 = swift_allocObject();
  v24 = v30;
  *(v23 + 16) = a2;
  *(v23 + 24) = v24;
  *(v23 + 32) = a4;
  *(v23 + 40) = v31;
  v25 = v33;
  *(v23 + 48) = v32;
  *(v23 + 56) = v25;
  (*(v18 + 32))(v23 + v22, v21, v17);
  aBlock[4] = sub_195F8326C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = &block_descriptor_268;
  v26 = _Block_copy(aBlock);
  v27 = a2;

  sub_195FA0798();
  v39 = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
  v28 = v35;
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v16, v12, v26);
  _Block_release(v26);
  (*(v38 + 8))(v12, v28);
  (*(v36 + 8))(v16, v37);
}

void sub_195F7B634(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a7;
  v35 = a2;
  v36 = a5;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE508, &qword_195FB0208);
  v9 = *(v37 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v12 = &v33 - v11;
  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v13 = sub_195FA0678();
  __swift_project_value_buffer(v13, qword_1EAEF7318);
  v14 = sub_195FA0658();
  v15 = sub_195FA0C98();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = v9;
    v17 = a1;
    v18 = v16;
    *v16 = 0;
    _os_log_impl(&dword_195EB2000, v14, v15, "xpc: fetchControlDescriptors", v16, 2u);
    v19 = v18;
    a1 = v17;
    v9 = v34;
    MEMORY[0x19A8C5B70](v19, -1, -1);
  }

  v20 = sub_195F7F24C();
  if (v20)
  {
    v21 = v20;
    v35 = sub_195FA0888();
    v22 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v23 = sub_195FA0888();
    v24 = v37;
    (*(v9 + 16))(v12, v38, v37);
    v25 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = a1;
    (*(v9 + 32))(v26 + v25, v12, v24);
    aBlock[4] = sub_195F832E8;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195F7BE84;
    aBlock[3] = &block_descriptor_274;
    v27 = _Block_copy(aBlock);
    v28 = a1;

    v29 = v35;
    [v21 fetchControlDescriptorsForExtensionBundleIdentifier:v35 userInitiated:v22 reason:v23 completion:v27];
    _Block_release(v27);
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = sub_195FA0658();
    v31 = sub_195FA0C98();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_195EB2000, v30, v31, "xpc error: fetchControlDescriptors - unable to obtain the remote target", v32, 2u);
      MEMORY[0x19A8C5B70](v32, -1, -1);
    }

    aBlock[0] = [objc_opt_self() serverUnavailable];
    sub_195FA0B98();
  }
}

uint64_t sub_195F7BA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26[0] = a2;
  v7 = sub_195FA0778();
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_195FA07D8();
  v27 = *(v11 - 8);
  v28 = v11;
  v12 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE508, &qword_195FB0208);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v26 - v18;
  v26[1] = *(a3 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__calloutQueue);
  (*(v16 + 16))(v26 - v18, a4, v15);
  v20 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  (*(v16 + 32))(v21 + v20, v19, v15);
  v22 = v26[0];
  *(v21 + ((v17 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26[0];
  aBlock[4] = sub_195F83310;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = &block_descriptor_280;
  v23 = _Block_copy(aBlock);

  v24 = v22;
  sub_195FA0798();
  v30 = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v14, v10, v23);
  _Block_release(v23);
  (*(v29 + 8))(v10, v7);
  (*(v27 + 8))(v14, v28);
}

uint64_t sub_195F7BDE0(uint64_t a1, int a2, id a3)
{
  if (a1)
  {
    sub_195F2AC80(a1);
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE508, &qword_195FB0208);
    return sub_195FA0BA8();
  }

  if (!a3)
  {
    goto LABEL_3;
  }

  v4 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE508, &qword_195FB0208);
  return sub_195FA0B98();
}

uint64_t sub_195F7BE84(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_195FA0B38();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t ControlsClient.controlDescriptor(matching:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_195F7BF40, 0, 0);
}

uint64_t sub_195F7BF40()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE400, &qword_195FB00E0);
  *v3 = v0;
  v3[1] = sub_195F7C04C;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD00000000000001CLL, 0x8000000195FC25A0, sub_195F821C8, v1, v4);
}

uint64_t sub_195F7C04C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_195F78048;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_195F7C168;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_195F7C184(uint64_t a1, char *a2, uint64_t a3)
{
  v25[0] = a3;
  v5 = sub_195FA0778();
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_195FA07D8();
  v26 = *(v9 - 8);
  v27 = v9;
  v10 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE500, &qword_195FB0200);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v25 - v16;
  v25[1] = *&a2[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue];
  (*(v14 + 16))(v25 - v16, a1, v13);
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = swift_allocObject();
  v20 = v25[0];
  *(v19 + 16) = a2;
  *(v19 + 24) = v20;
  (*(v14 + 32))(v19 + v18, v17, v13);
  aBlock[4] = sub_195F831B8;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = &block_descriptor_256;
  v21 = _Block_copy(aBlock);
  v22 = a2;
  v23 = v20;
  sub_195FA0798();
  v29 = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v12, v8, v21);
  _Block_release(v21);
  (*(v28 + 8))(v8, v5);
  (*(v26 + 8))(v12, v27);
}

uint64_t sub_195F7C538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE500, &qword_195FB0200);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v10 = sub_195FA0678();
  __swift_project_value_buffer(v10, qword_1EAEF7318);
  v11 = sub_195FA0658();
  v12 = sub_195FA0C98();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v28 = v9;
    v14 = a3;
    v15 = a2;
    v16 = v13;
    *v13 = 0;
    _os_log_impl(&dword_195EB2000, v11, v12, "xpc: controlDescriptor(matching:)", v13, 2u);
    v17 = v16;
    a2 = v15;
    a3 = v14;
    v9 = v28;
    MEMORY[0x19A8C5B70](v17, -1, -1);
  }

  v18 = sub_195F7F24C();
  if (v18)
  {
    v19 = v18;
    (*(v6 + 16))(v9, a3, v5);
    v20 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v21 = swift_allocObject();
    (*(v6 + 32))(v21 + v20, v9, v5);
    aBlock[4] = sub_195F831E0;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195F83B78;
    aBlock[3] = &block_descriptor_262;
    v22 = _Block_copy(aBlock);

    [v19 controlDescriptorMatching:a2 completion:v22];
    _Block_release(v22);
    return swift_unknownObjectRelease();
  }

  else
  {
    v24 = sub_195FA0658();
    v25 = sub_195FA0C98();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_195EB2000, v24, v25, "xpc error: controlDescriptor(matching:) - unable to obtain the remote target", v26, 2u);
      MEMORY[0x19A8C5B70](v26, -1, -1);
    }

    aBlock[0] = [objc_opt_self() serverUnavailable];
    return sub_195FA0B98();
  }
}

uint64_t sub_195F7C898(void *a1, id a2)
{
  if (a1)
  {
    v2 = a1;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE500, &qword_195FB0200);
    return sub_195FA0BA8();
  }

  if (!a2)
  {
    goto LABEL_3;
  }

  v4 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE500, &qword_195FB0200);
  return sub_195FA0B98();
}

uint64_t ControlsClient.unsubscribeToPushes(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_195F7C948, 0, 0);
}

uint64_t sub_195F7C948()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_195F7CA38;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000019, 0x8000000195FC25C0, sub_195F821D0, v1, v4);
}

uint64_t sub_195F7CA38()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_195F83AA8;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_195F83AB8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_195F7CB54(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE4F8, &qword_195FB01F8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  v11 = sub_195F7F24C();
  if (v11)
  {
    v12 = v11;
    (*(v7 + 16))(v10, a3, v6);
    v13 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    (*(v7 + 32))(v14 + v13, v10, v6);
    aBlock[4] = sub_195F830C8;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195F9B590;
    aBlock[3] = &block_descriptor_244;
    v15 = _Block_copy(aBlock);
    v16 = a1;

    [v12 unsubscribeToPushes:a2 completion:v15];
    _Block_release(v15);
    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EAEEC280 != -1)
    {
      swift_once();
    }

    v18 = sub_195FA0678();
    __swift_project_value_buffer(v18, qword_1EAEF7318);
    v19 = sub_195FA0658();
    v20 = sub_195FA0C98();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_195EB2000, v19, v20, "xpc error: unsubscribeToPushes - unable to obtain the remote target", v21, 2u);
      MEMORY[0x19A8C5B70](v21, -1, -1);
    }

    aBlock[0] = [objc_opt_self() serverUnavailable];
    return sub_195FA0B98();
  }
}

uint64_t ControlsClient.sendPushToken(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_195F7CE40, 0, 0);
}

uint64_t sub_195F7CE40()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_195F7CF30;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000013, 0x8000000195FC25E0, sub_195F82210, v1, v4);
}

uint64_t sub_195F7CF30()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_195F7A350;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_195F7D04C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_195F7D064(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a6;
  v28 = a4;
  v29 = a5;
  v9 = sub_195FA0778();
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_195FA07D8();
  v32 = *(v13 - 8);
  v33 = v13;
  v14 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE4F8, &qword_195FB01F8);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v28 - v20;
  v30 = *&a2[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue];
  (*(v18 + 16))(&v28 - v20, a1, v17);
  v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  (*(v18 + 32))(v23 + v22, v21, v17);
  aBlock[4] = v29;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = v31;
  v24 = _Block_copy(aBlock);
  v25 = a2;
  v26 = a3;
  sub_195FA0798();
  v35 = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v16, v12, v24);
  _Block_release(v24);
  (*(v34 + 8))(v12, v9);
  (*(v32 + 8))(v16, v33);
}

uint64_t sub_195F7D408(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE4F8, &qword_195FB01F8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  v11 = sub_195F7F24C();
  if (v11)
  {
    v12 = v11;
    (*(v7 + 16))(v10, a3, v6);
    v13 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    (*(v7 + 32))(v14 + v13, v10, v6);
    aBlock[4] = sub_195F83010;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195F9B590;
    aBlock[3] = &block_descriptor_226;
    v15 = _Block_copy(aBlock);
    v16 = a1;

    [v12 sendPushToken:a2 completion:v15];
    _Block_release(v15);
    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EAEEC280 != -1)
    {
      swift_once();
    }

    v18 = sub_195FA0678();
    __swift_project_value_buffer(v18, qword_1EAEF7318);
    v19 = sub_195FA0658();
    v20 = sub_195FA0C98();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_195EB2000, v19, v20, "xpc error: sendPushToken - unable to obtain the remote target", v21, 2u);
      MEMORY[0x19A8C5B70](v21, -1, -1);
    }

    aBlock[0] = [objc_opt_self() serverUnavailable];
    return sub_195FA0B98();
  }
}

uint64_t ControlsClient.sendPushUpdate(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_195F7D6F4, 0, 0);
}

uint64_t sub_195F7D6F4()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_195F7CA38;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000014, 0x8000000195FC2600, sub_195F82250, v1, v4);
}

uint64_t sub_195F7D7E4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE4F8, &qword_195FB01F8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  v11 = sub_195F7F24C();
  if (v11)
  {
    v12 = v11;
    (*(v7 + 16))(v10, a3, v6);
    v13 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    (*(v7 + 32))(v14 + v13, v10, v6);
    aBlock[4] = sub_195F82F4C;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195F9B590;
    aBlock[3] = &block_descriptor_208;
    v15 = _Block_copy(aBlock);
    v16 = a1;

    [v12 sendPushUpdate:a2 completion:v15];
    _Block_release(v15);
    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EAEEC280 != -1)
    {
      swift_once();
    }

    v18 = sub_195FA0678();
    __swift_project_value_buffer(v18, qword_1EAEF7318);
    v19 = sub_195FA0658();
    v20 = sub_195FA0C98();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_195EB2000, v19, v20, "xpc error: sendPushUpdate - unable to obtain the remote target", v21, 2u);
      MEMORY[0x19A8C5B70](v21, -1, -1);
    }

    aBlock[0] = [objc_opt_self() serverUnavailable];
    return sub_195FA0B98();
  }
}

uint64_t sub_195F7DAB0(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE4F8, &qword_195FB01F8);
    return sub_195FA0B98();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE4F8, &qword_195FB01F8);
    return sub_195FA0BA8();
  }
}

uint64_t sub_195F7DB24@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14ChronoServices14ControlsClient_handleSystemEnvironmentDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_195F82E40;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_195ECF998(v4);
}

uint64_t sub_195F7DBC4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_195F82E08;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_195ECF998(v3);
  return sub_195F7DCB0(v6, v5);
}

uint64_t sub_195F7DC54()
{
  v1 = (v0 + OBJC_IVAR____TtC14ChronoServices14ControlsClient_handleSystemEnvironmentDidChange);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_195ECF998(v3);
  return v3;
}

uint64_t sub_195F7DCB0(void (*a1)(uint64_t, unint64_t), uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14ChronoServices14ControlsClient_handleSystemEnvironmentDidChange);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_195ECF998(a1);
  result = sub_195EB6E70(v6);
  if (a1)
  {
    v9 = *(v2 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock);
    os_unfair_lock_lock(*(v9 + 16));
    v10 = *(v2 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_environmentData);
    v11 = *(v2 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_environmentData + 8);
    v12 = *(v9 + 16);
    sub_195F40008(v10, v11);
    os_unfair_lock_unlock(v12);
    if (v11 >> 60 == 15)
    {
      return sub_195EB6E70(a1);
    }

    else
    {
      a1(v10, v11);
      sub_195EB6E70(a1);
      return sub_195EC5A34(v10, v11);
    }
  }

  return result;
}

void (*sub_195F7DDB4(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC14ChronoServices14ControlsClient_handleSystemEnvironmentDidChange;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_195F7DE3C;
}

void sub_195F7DE3C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v4 + v3[4];
    v6 = *v5;
    if (*v5)
    {
      v7 = *(v5 + 8);
      v8 = *(v4 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock);
      v9 = *(v8 + 16);

      os_unfair_lock_lock(v9);
      v10 = *(v4 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_environmentData);
      v11 = *(v4 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_environmentData + 8);
      v12 = *(v8 + 16);
      sub_195F40008(v10, v11);
      os_unfair_lock_unlock(v12);
      if (v11 >> 60 == 15)
      {
        sub_195EB6E70(v6);
      }

      else
      {
        v6(v10, v11);
        sub_195EB6E70(v6);
        sub_195EC5A34(v10, v11);
      }
    }
  }

  free(v3);
}

void sub_195F7DF30(uint64_t a1, char *a2)
{
  v4 = *&a2[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue];
  BSDispatchQueueAssert();
  v5 = *(a1 + 16);
  v6 = *&a2[OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock];
  os_unfair_lock_lock(*(v6 + 16));
  v7 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_subscriptions;
  swift_beginAccess();
  v8 = *&a2[v7];
  if ((v8 & 0xC000000000000001) == 0)
  {
    v11 = *&a2[v7];

LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *&a2[v7];
    sub_195F5D254(a1, v5, isUniquelyReferenced_nonNull_native);
    *&a2[v7] = v33;
    swift_endAccess();
    os_unfair_lock_unlock(*(v6 + 16));
    sub_195FA05D8();
    v30 = type metadata accessor for ControlSessionSubscriptionRequest();
    v31 = sub_195EC6890(&unk_1EAEEBD80, type metadata accessor for ControlSessionSubscriptionRequest);
    aBlock[0] = a1;

    v7 = sub_195FA05C8();
    v28 = v13;
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    if (qword_1EAEEC280 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  if (v8 < 0)
  {
    v9 = *&a2[v7];
  }

  else
  {
    v9 = v8 & 0xFFFFFFFFFFFFFF8;
  }

  v10 = sub_195FA0E88();
  if (!__OFADD__(v10, 1))
  {
    *&a2[v7] = sub_195F82B7C(v9, v10 + 1, &qword_1EAEEE0B0, &qword_195FAEFC0, type metadata accessor for ControlSessionSubscriptionRequest, sub_195F5B560);
    goto LABEL_8;
  }

  __break(1u);
LABEL_15:
  swift_once();
LABEL_9:
  v14 = sub_195FA0678();
  __swift_project_value_buffer(v14, qword_1EAEF7318);

  v15 = sub_195FA0658();
  v16 = sub_195FA0CC8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136446210;
    v19 = sub_195F61F20();
    v21 = sub_195EBD554(v19, v20, aBlock);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_195EB2000, v15, v16, "Subscribing to session: %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x19A8C5B70](v18, -1, -1);
    MEMORY[0x19A8C5B70](v17, -1, -1);
  }

  v22 = sub_195F7F24C();
  if (v22)
  {
    v23 = v22;
    v24 = sub_195FA04B8();
    v25 = swift_allocObject();
    v25[2] = a2;
    v25[3] = v5;
    v25[4] = a1;
    v25[5] = nullsub_1;
    v25[6] = 0;
    v31 = sub_195F83A9C;
    v32 = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195F7F1A0;
    v30 = &block_descriptor_347;
    v26 = _Block_copy(aBlock);

    v27 = a2;

    [v23 subscribeToSessionWithRequest:v24 completion:v26];
    sub_195EC0890(v7, v28);
    swift_unknownObjectRelease();
    _Block_release(v26);
  }

  else
  {
    sub_195EC0890(v7, v28);
  }
}

void sub_195F7E3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *&v3[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue];
  BSDispatchQueueAssert();
  v9 = *(a1 + 16);
  v10 = *&v3[OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock];
  os_unfair_lock_lock(*(v10 + 16));
  v11 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_subscriptions;
  swift_beginAccess();
  v12 = *&v3[v11];
  if ((v12 & 0xC000000000000001) == 0)
  {
    v15 = *&v3[v11];

LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *&v4[v11];
    sub_195F5D254(a1, v9, isUniquelyReferenced_nonNull_native);
    *&v4[v11] = v39;
    swift_endAccess();
    os_unfair_lock_unlock(*(v10 + 16));
    sub_195FA05D8();
    v36 = type metadata accessor for ControlSessionSubscriptionRequest();
    v37 = sub_195EC6890(&unk_1EAEEBD80, type metadata accessor for ControlSessionSubscriptionRequest);
    aBlock[0] = a1;

    v33 = sub_195FA05C8();
    v34 = v17;
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    if (qword_1EAEEC280 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  if (v12 < 0)
  {
    v13 = *&v3[v11];
  }

  else
  {
    v13 = v12 & 0xFFFFFFFFFFFFFF8;
  }

  v14 = sub_195FA0E88();
  if (!__OFADD__(v14, 1))
  {
    *&v4[v11] = sub_195F82B7C(v13, v14 + 1, &qword_1EAEEE0B0, &qword_195FAEFC0, type metadata accessor for ControlSessionSubscriptionRequest, sub_195F5B560);
    goto LABEL_8;
  }

  __break(1u);
LABEL_15:
  swift_once();
LABEL_9:
  v18 = sub_195FA0678();
  __swift_project_value_buffer(v18, qword_1EAEF7318);

  v19 = sub_195FA0658();
  v20 = sub_195FA0CC8();

  v32 = a2;
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136446210;
    v23 = sub_195F61F20();
    v25 = sub_195EBD554(v23, v24, aBlock);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_195EB2000, v19, v20, "Subscribing to session: %{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x19A8C5B70](v22, -1, -1);
    MEMORY[0x19A8C5B70](v21, -1, -1);
  }

  v26 = sub_195F7F24C();
  if (v26)
  {
    v27 = v26;
    v28 = sub_195FA04B8();
    v29 = swift_allocObject();
    v29[2] = v4;
    v29[3] = v9;
    v29[4] = a1;
    v29[5] = v32;
    v29[6] = a3;
    v37 = sub_195F82E04;
    v38 = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195F7F1A0;
    v36 = &block_descriptor_154;
    v30 = _Block_copy(aBlock);

    v31 = v4;

    [v27 subscribeToSessionWithRequest:v28 completion:v30];
    sub_195EC0890(v33, v34);
    swift_unknownObjectRelease();
    _Block_release(v30);
  }

  else
  {
    sub_195EC0890(v33, v34);
  }
}

void sub_195F7E844(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, void *))
{
  v14 = *(a4 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue);
  BSDispatchQueueAssertNot();
  if (a2 >> 60 == 15)
  {
    if (!a3)
    {
      if (qword_1EAEEC280 != -1)
      {
        swift_once();
      }

      v15 = sub_195FA0678();
      __swift_project_value_buffer(v15, qword_1EAEF7318);

      v16 = sub_195FA0658();
      v17 = sub_195FA0CA8();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v82[0] = v19;
        *v18 = 136446210;
        v20 = sub_195F61F20();
        v22 = sub_195EBD554(v20, v21, v82);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_195EB2000, v16, v17, "Error subscribing to session %{public}s: unknown response", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x19A8C5B70](v19, -1, -1);
        MEMORY[0x19A8C5B70](v18, -1, -1);
      }

      a7(0, 0);
      return;
    }

    goto LABEL_9;
  }

  if (a3)
  {
LABEL_9:
    v23 = a3;
    v24 = a3;
    v25 = a3;
    if (qword_1EAEEC280 != -1)
    {
      swift_once();
    }

    v26 = sub_195FA0678();
    __swift_project_value_buffer(v26, qword_1EAEF7318);

    v27 = a3;
    v28 = sub_195FA0658();
    v29 = sub_195FA0CA8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v82[0] = v32;
      *v30 = 136446466;
      v33 = sub_195F61F20();
      v35 = sub_195EBD554(v33, v34, v82);

      *(v30 + 4) = v35;
      *(v30 + 12) = 2114;
      v36 = v23;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 14) = v37;
      *v31 = v37;
      _os_log_impl(&dword_195EB2000, v28, v29, "Error subscribing to session %{public}s: %{public}@", v30, 0x16u);
      sub_195F2DB00(v31, &unk_1EAEEE410, &qword_195FAAEB0);
      MEMORY[0x19A8C5B70](v31, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x19A8C5B70](v32, -1, -1);
      MEMORY[0x19A8C5B70](v30, -1, -1);
    }

    v38 = v23;
    a7(0, v23);

    return;
  }

  sub_195FA05D8();
  type metadata accessor for ControlSessionSubscriptionResponse();
  sub_195EC08E4(a1, a2);
  sub_195EC6890(&qword_1EAEEBD78, type metadata accessor for ControlSessionSubscriptionResponse);
  sub_195FA05B8();
  swift_beginAccess();
  v39 = *(v82[0] + 16);
  v79 = v39;
  if (!v39)
  {
    goto LABEL_22;
  }

  swift_retain_n();
  SandboxExtension.consume()();
  if (!v40)
  {

LABEL_22:
    v54 = *(a4 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock);
    os_unfair_lock_lock(v54[2]);
    v55 = v39;
    v56 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_sandboxExtensions;
    swift_beginAccess();
    if (v55)
    {
      v57 = *(a4 + v56);
      v78 = v54;
      if ((v57 & 0xC000000000000001) != 0)
      {
        if (v57 < 0)
        {
          v58 = *(a4 + v56);
        }

        else
        {
          v58 = v57 & 0xFFFFFFFFFFFFFF8;
        }

        v59 = sub_195FA0E88();
        if (__OFADD__(v59, 1))
        {
          __break(1u);
          return;
        }

        *(a4 + v56) = sub_195F82B7C(v58, v59 + 1, &unk_1EAEEE0A0, &qword_195FB01F0, type metadata accessor for SandboxExtension, sub_195F5B574);
        v60 = v79;
      }

      else
      {
        v60 = v79;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v80 = *(a4 + v56);
      sub_195F5D268(v60, a5, isUniquelyReferenced_nonNull_native);
      *(a4 + v56) = v80;
      v54 = v78;
    }

    else
    {
      sub_195F5A224(a5);
    }

    swift_endAccess();
    os_unfair_lock_unlock(v54[2]);
    goto LABEL_34;
  }

  v76 = a7;

  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v41 = sub_195FA0678();
  __swift_project_value_buffer(v41, qword_1EAEF7318);

  v42 = v40;
  v43 = sub_195FA0658();
  v44 = sub_195FA0CA8();

  v77 = v40;

  v75 = v44;
  v45 = v44;
  v46 = v43;
  if (os_log_type_enabled(v43, v45))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v81 = v74;
    *v47 = 136446466;
    v49 = sub_195F61F20();
    v51 = sub_195EBD554(v49, v50, &v81);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2114;
    v52 = v77;
    v53 = _swift_stdlib_bridgeErrorToNSError();
    *(v47 + 14) = v53;
    *v48 = v53;
    _os_log_impl(&dword_195EB2000, v46, v75, "[%{public}s] Failed consuming sandbox extension: %{public}@.", v47, 0x16u);
    sub_195F2DB00(v48, &unk_1EAEEE410, &qword_195FAAEB0);
    MEMORY[0x19A8C5B70](v48, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    MEMORY[0x19A8C5B70](v74, -1, -1);
    MEMORY[0x19A8C5B70](v47, -1, -1);
  }

  else
  {
  }

  a7 = v76;
LABEL_34:
  v62 = *(a6 + 16);
  swift_beginAccess();
  v63 = [*(v62 + 32) contentType];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDA90, qword_195FAC9A0);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_195FAC910;
  *(v64 + 32) = [*(v62 + 32) control];
  if (v63 == 1)
  {
    sub_195F80870(v64);
  }

  else
  {
    sub_195F80848(v64);
  }

  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v65 = sub_195FA0678();
  __swift_project_value_buffer(v65, qword_1EAEF7318);

  v66 = sub_195FA0658();
  v67 = sub_195FA0C98();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v80 = v69;
    *v68 = 136446210;
    v70 = sub_195F61F20();
    v72 = sub_195EBD554(v70, v71, &v80);

    *(v68 + 4) = v72;
    _os_log_impl(&dword_195EB2000, v66, v67, "Successfully subscribed to session: %{public}s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    MEMORY[0x19A8C5B70](v69, -1, -1);
    MEMORY[0x19A8C5B70](v68, -1, -1);
  }

  a7(v73, 0);
  sub_195EC5A34(a1, a2);
}

uint64_t sub_195F7F1A0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_195FA04D8();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_195EC5A34(v4, v9);
}

uint64_t sub_195F7F24C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue);
  BSDispatchQueueAssert();
  BSDispatchQueueAssert();
  sub_195F7F55C();
  v2 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue_connection;
  v3 = *(v0 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue_connection);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  if (![v4 remoteTarget])
  {
    v18 = 0u;
    v19 = 0u;
    sub_195F2DB00(&v18, &unk_1EAEED4B0, &qword_195FAC080);
    [v4 activate];

    v5 = *(v0 + v2);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_7:
    if (qword_1EAEEC280 != -1)
    {
      swift_once();
    }

    v7 = sub_195FA0678();
    __swift_project_value_buffer(v7, qword_1EAEF7318);
    v6 = sub_195FA0658();
    v8 = sub_195FA0CB8();
    if (os_log_type_enabled(v6, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_195EB2000, v6, v8, "Failed to establish a connection", v9, 2u);
      MEMORY[0x19A8C5B70](v9, -1, -1);
    }

    goto LABEL_21;
  }

  sub_195FA0E08();
  swift_unknownObjectRelease();

  sub_195F2DB00(&v18, &unk_1EAEED4B0, &qword_195FAC080);
  v5 = *(v0 + v2);
  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = v5;
  if ([v6 remoteTarget])
  {
    sub_195FA0E08();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (*(&v17 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE4E8, &unk_195FB01E0);
    if (swift_dynamicCast())
    {

      return v15;
    }
  }

  else
  {
    sub_195F2DB00(&v18, &unk_1EAEED4B0, &qword_195FAC080);
  }

  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v11 = sub_195FA0678();
  __swift_project_value_buffer(v11, qword_1EAEF7318);
  v12 = sub_195FA0658();
  v13 = sub_195FA0CB8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_195EB2000, v12, v13, "Failed to cast connection to server interface protocol", v14, 2u);
    MEMORY[0x19A8C5B70](v14, -1, -1);
  }

LABEL_21:
  return 0;
}

void sub_195F7F55C()
{
  v1 = *&v0[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue];
  BSDispatchQueueAssert();
  v2 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue_connection;
  if (*&v0[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue_connection])
  {
    return;
  }

  v3 = "com.apple.chrono";
  v4 = sub_195FA0888();
  v5 = sub_195FA0888();
  v17 = [objc_opt_self() endpointForMachName:v4 service:v5 instance:0];

  if (!v17)
  {
    goto LABEL_7;
  }

  v6 = [objc_opt_self() connectionWithEndpoint_];
  if (v6)
  {
    v7 = *&v0[v2];
    *&v0[v2] = v6;
    v8 = v6;

    v9 = swift_allocObject();
    *(v9 + 16) = v0;
    v3 = swift_allocObject();
    *(v3 + 16) = sub_195F828A0;
    *(v3 + 24) = v9;
    aBlock[4] = sub_195F36AC0;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195F803A4;
    aBlock[3] = &block_descriptor_130;
    v10 = _Block_copy(aBlock);
    v11 = v0;

    [v8 configureConnection_];

    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
LABEL_7:
    if (qword_1EAEEC280 != -1)
    {
      swift_once();
    }

    v13 = sub_195FA0678();
    __swift_project_value_buffer(v13, qword_1EAEF7318);
    v17 = sub_195FA0658();
    v14 = sub_195FA0CB8();
    if (os_log_type_enabled(v17, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_195EBD554(0xD000000000000018, v3 | 0x8000000000000000, aBlock);
      _os_log_impl(&dword_195EB2000, v17, v14, "Unable to get endpoint for mach-service: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x19A8C5B70](v16, -1, -1);
      MEMORY[0x19A8C5B70](v15, -1, -1);

      return;
    }
  }
}

void sub_195F7F8CC(void *a1, void *a2)
{
  v4 = sub_195FA0888();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  if (qword_1EAEEC370 != -1)
  {
    swift_once();
  }

  v6 = qword_1EAEEC378;
  v7 = objc_opt_self();
  v8 = [v7 protocolForProtocol_];
  [v5 setClient_];

  if (qword_1EAEEC358 != -1)
  {
    swift_once();
  }

  v9 = [v7 protocolForProtocol_];
  [v5 setServer_];

  if (qword_1EAEEC340 != -1)
  {
    swift_once();
  }

  [a1 setServiceQuality_];
  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  v19 = sub_195F7FC44;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_195F37C94;
  v18 = &block_descriptor_133;
  v10 = _Block_copy(&v15);
  [a1 setActivationHandler_];
  _Block_release(v10);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  v19 = sub_195F828A8;
  v20 = v11;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_195F37C94;
  v18 = &block_descriptor_139;
  v12 = _Block_copy(&v15);
  v13 = a2;

  [a1 setInterruptionHandler_];
  _Block_release(v12);
  v19 = sub_195F802A8;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_195F37C94;
  v18 = &block_descriptor_142;
  v14 = _Block_copy(&v15);
  [a1 setInvalidationHandler_];
  _Block_release(v14);
}

void sub_195F7FC50(uint64_t a1, char *a2)
{
  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v3 = sub_195FA0678();
  __swift_project_value_buffer(v3, qword_1EAEF7318);
  v4 = sub_195FA0658();
  v5 = sub_195FA0CC8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_195EB2000, v4, v5, "Connection Interrupted", v6, 2u);
    MEMORY[0x19A8C5B70](v6, -1, -1);
  }

  v7 = *&a2[OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock];
  os_unfair_lock_lock(*(v7 + 16));
  sub_195F7FD80(a2);
  v8 = *(v7 + 16);

  os_unfair_lock_unlock(v8);
}

uint64_t sub_195F7FD80(char *a1)
{
  v2 = v1;
  v4 = sub_195FA0778();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_195FA07D8();
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_subscriptions;
  result = swift_beginAccess();
  v15 = *&a1[v13];
  if ((v15 & 0xC000000000000001) == 0)
  {
    if (!*(v15 + 16))
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v15 < 0)
  {
    v16 = *&a1[v13];
  }

  v17 = *&a1[v13];

  v18 = sub_195FA0E88();

  if (v18)
  {
LABEL_7:
    v31 = v5;
    v32 = v2;
    if (qword_1EAEEC280 != -1)
    {
      swift_once();
    }

    v19 = sub_195FA0678();
    __swift_project_value_buffer(v19, qword_1EAEF7318);
    v20 = a1;
    v21 = sub_195FA0658();
    v22 = sub_195FA0CC8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134349056;
      v24 = *&a1[v13];
      if ((v24 & 0xC000000000000001) != 0)
      {

        v25 = sub_195FA0E88();
      }

      else
      {
        v25 = *(v24 + 16);
      }

      *(v23 + 4) = v25;

      _os_log_impl(&dword_195EB2000, v21, v22, "Reconnecting because we had %{public}ld subscriptions active.", v23, 0xCu);
      MEMORY[0x19A8C5B70](v23, -1, -1);
    }

    else
    {

      v21 = v20;
    }

    v26 = *(&v20->isa + OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue);
    v27 = swift_allocObject();
    *(v27 + 16) = v20;
    aBlock[4] = sub_195F828B0;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195EBDBE8;
    aBlock[3] = &block_descriptor_148;
    v28 = _Block_copy(aBlock);
    v29 = v20;
    sub_195FA0798();
    aBlock[10] = MEMORY[0x1E69E7CC0];
    sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
    sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
    sub_195FA0E38();
    MEMORY[0x19A8C42F0](0, v12, v8, v28);
    _Block_release(v28);
    (*(v31 + 8))(v8, v4);
    (*(v33 + 8))(v12, v34);
  }

  return result;
}

void sub_195F801D4(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue);
  v3 = BSDispatchQueueAssert();
  sub_195F7F55C(v3);
  v4 = *(a1 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue_connection);
  if (v4)
  {
    v5 = v4;
    if ([v5 remoteTarget])
    {
      sub_195FA0E08();
      swift_unknownObjectRelease();

      sub_195F2DB00(v6, &unk_1EAEED4B0, &qword_195FAC080);
    }

    else
    {
      memset(v6, 0, sizeof(v6));
      sub_195F2DB00(v6, &unk_1EAEED4B0, &qword_195FAC080);
      [v5 activate];
    }
  }
}

void sub_195F802B4(uint64_t a1, const char *a2)
{
  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v3 = sub_195FA0678();
  __swift_project_value_buffer(v3, qword_1EAEF7318);
  oslog = sub_195FA0658();
  v4 = sub_195FA0CC8();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_195EB2000, oslog, v4, a2, v5, 2u);
    MEMORY[0x19A8C5B70](v5, -1, -1);
  }
}

uint64_t sub_195F803A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_195F80458(unint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a2;
  v32 = a3;
  v8 = v5;
  v10 = sub_195FA0778();
  v34 = *(v10 - 8);
  v11 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_195FA07D8();
  v14 = *(v33 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *&v5[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue];
  BSDispatchQueueAssert();
  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v19 = sub_195FA0678();
  __swift_project_value_buffer(v19, qword_1EAEF7318);

  v20 = sub_195FA0658();
  v21 = sub_195FA0CC8();
  if (os_log_type_enabled(v20, v21))
  {
    v30 = a4;
    v22 = a5;
    v23 = swift_slowAlloc();
    *v23 = 134349056;
    if (a1 >> 62)
    {
      v24 = sub_195FA0E88();
    }

    else
    {
      v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v23 + 4) = v24;

    _os_log_impl(&dword_195EB2000, v20, v21, v31, v23, 0xCu);
    MEMORY[0x19A8C5B70](v23, -1, -1);

    a5 = v22;
    a4 = v30;
  }

  else
  {
  }

  v25 = *&v8[OBJC_IVAR____TtC14ChronoServices14ControlsClient__calloutQueue];
  v26 = swift_allocObject();
  *(v26 + 16) = v8;
  *(v26 + 24) = a1;
  aBlock[4] = a4;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = a5;
  v27 = _Block_copy(aBlock);

  v28 = v8;
  sub_195FA0798();
  v35 = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v17, v13, v27);
  _Block_release(v27);
  (*(v34 + 8))(v13, v10);
  (*(v14 + 8))(v17, v33);
}

uint64_t sub_195F80898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_195FA0778();
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_195FA07D8();
  v12 = *(v22 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&v4[OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue];
  BSDispatchQueueAssertNot();
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = a4;
  v18 = _Block_copy(aBlock);
  v19 = v4;

  sub_195FA0798();
  v24 = MEMORY[0x1E69E7CC0];
  sub_195EC6890(&qword_1EAEEC450, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v15, v11, v18);
  _Block_release(v18);
  (*(v23 + 8))(v11, v8);
  (*(v12 + 8))(v15, v22);
}

id ControlsClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ControlsClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_195F80D10(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 88) = a3;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 56) = *v5;
  return MEMORY[0x1EEE6DFA0](sub_195F80D40, 0, 0);
}

uint64_t sub_195F80D40()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 88);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
  *(v7 + 48) = v3;
  *(v7 + 56) = v2;
  v8 = *(MEMORY[0x1E69E8920] + 4);
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE3F8, &qword_195FB00D0);
  *v9 = v0;
  v9[1] = sub_195F80E70;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD00000000000004BLL, 0x8000000195FC2550, sub_195F83B74, v7, v10);
}

uint64_t sub_195F80E70()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_195F83AA0;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_195F83B90;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_195F80F8C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x1EEE6DFA0](sub_195F80FB0, 0, 0);
}

uint64_t sub_195F80FB0()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE400, &qword_195FB00E0);
  *v3 = v0;
  v3[1] = sub_195F810BC;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD00000000000001CLL, 0x8000000195FC25A0, sub_195F83B88, v1, v4);
}

uint64_t sub_195F810BC()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_195F83AA4;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_195F83B90;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_195F81268()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE3F0, &qword_195FB00C0);
  *v4 = v0;
  v4[1] = sub_195F81370;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000020, 0x8000000195FC2520, sub_195F83B8C, v2, v5);
}

uint64_t sub_195F81370()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_195F83AA8;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_195F83B90;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_195F8148C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_195F814B0, 0, 0);
}

uint64_t sub_195F814B0()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_195F7CA38;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000013, 0x8000000195FC25E0, sub_195F83B84, v1, v4);
}

uint64_t sub_195F815A0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_195F815C4, 0, 0);
}

uint64_t sub_195F815C4()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_195F7CA38;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000014, 0x8000000195FC2600, sub_195F83B80, v1, v4);
}

uint64_t sub_195F816B4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_195F816D8, 0, 0);
}

uint64_t sub_195F816D8()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_195F7CA38;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000019, 0x8000000195FC25C0, sub_195F83B7C, v1, v4);
}

uint64_t sub_195F8187C(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_195F818A4, 0, 0);
}

uint64_t sub_195F818A4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_195F78560;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000019, 0x8000000195FC24E0, sub_195F83AB4, v4, v7);
}

uint64_t sub_195F819A8(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_195F819D0, 0, 0);
}

uint64_t sub_195F819D0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_195F78560;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD00000000000001ELL, 0x8000000195FC2500, sub_195F83AB0, v4, v7);
}

uint64_t ControlsClient.systemEnvironmentDidChange(_:)(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue);
  BSDispatchQueueAssertNot();
  v6 = (v2 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_environmentData);
  v7 = *(v2 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_environmentData);
  v8 = *(v2 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__lock_environmentData + 8);
  *v6 = a1;
  v6[1] = a2;
  sub_195EC08E4(a1, a2);
  sub_195EC5A34(v7, v8);
  v9 = v2 + OBJC_IVAR____TtC14ChronoServices14ControlsClient_handleSystemEnvironmentDidChange;
  result = swift_beginAccess();
  v11 = *v9;
  if (*v9)
  {
    v12 = *(v9 + 8);

    v11(a1, a2);
    return sub_195EB6E70(v11);
  }

  return result;
}

void sub_195F81BF4(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, unint64_t))
{
  v6 = a3;
  v10 = a1;
  v7 = sub_195FA04D8();
  v9 = v8;

  a4(v7, v9);
  sub_195EC0890(v7, v9);
}

uint64_t sub_195F81CB4(uint64_t a1, uint64_t a2, const char *a3, void (*a4)(uint64_t))
{
  v7 = *(v4 + OBJC_IVAR____TtC14ChronoServices14ControlsClient__queue);
  BSDispatchQueueAssertNot();
  sub_195FA05D8();
  sub_195F82290();
  sub_195FA05B8();
  v8 = v19;
  if (qword_1EAEEC280 != -1)
  {
    swift_once();
  }

  v9 = sub_195FA0678();
  __swift_project_value_buffer(v9, qword_1EAEF7318);

  v10 = sub_195FA0658();
  v11 = sub_195FA0CC8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136446210;
    v14 = sub_195EB4B30(0, &qword_1EAEEC310, off_1E74525B8);
    v15 = MEMORY[0x19A8C4110](v8, v14);
    v17 = sub_195EBD554(v15, v16, &v19);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_195EB2000, v10, v11, a3, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x19A8C5B70](v13, -1, -1);
    MEMORY[0x19A8C5B70](v12, -1, -1);
  }

  a4(v8);
}

uint64_t sub_195F82000()
{
  v1 = v0[5];
  v2 = v0[6];
  return sub_195F76BE8(v0[2], v0[3], v0[4]);
}

uint64_t objectdestroy_24Tm()
{
  v1 = *(v0 + 24);

  sub_195EC0890(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_195F82058()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_195F77390(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

uint64_t sub_195F82068()
{
  v1 = v0[6];
  v2 = v0[7];
  return sub_195F77B7C(v0[2], v0[3], v0[4], v0[5]);
}

void sub_195F82100()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_195F79474(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
}

uint64_t objectdestroy_52Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

unint64_t sub_195F82290()
{
  result = qword_1EAEEC2A8;
  if (!qword_1EAEEC2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC2A8);
  }

  return result;
}

uint64_t keypath_set_82Tm(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(*a2 + *a5);
  *(*a2 + *a5) = *a1;
}

uint64_t dispatch thunk of ControlsClient.setControlState(request:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x160);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_195F32774;

  return v10(a1, a2);
}

uint64_t dispatch thunk of ControlsClient.performControlAction(request:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x168);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_195F32D80;

  return v10(a1, a2);
}

uint64_t sub_195F8281C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_195F82864(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(*(v1 + 16) + *a1);
  return sub_195FA06D8();
}

uint64_t sub_195F828CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE0C8, &unk_195FAEFE0);
    v2 = sub_195FA10A8();
    v20 = v2;
    sub_195FA1018();
    v3 = sub_195FA1048();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for CHSExtensionIdentity();
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE4F0, qword_195FAC840);
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_195F5AAE0(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_195FA0D78();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_195FA1048();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_195F82B7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void), void (*a6)(unint64_t, uint64_t))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v7 = sub_195FA10A8();
    v26 = v7;
    sub_195FA1018();
    if (sub_195FA1048())
    {
      type metadata accessor for ControlSessionKey();
      do
      {
        swift_dynamicCast();
        a5(0);
        swift_dynamicCast();
        v18 = *(v7 + 16);
        if (*(v7 + 24) <= v18)
        {
          a6(v18 + 1, 1);
        }

        v7 = v26;
        v8 = *(v26 + 40);
        sub_195FA1398();
        swift_beginAccess();
        v9 = *(v25 + 16);
        v10 = *(v25 + 24);
        sub_195FA0958();
        swift_beginAccess();
        v11 = *(v25 + 32);
        sub_195FA0D98();

        result = sub_195FA13E8();
        v13 = v26 + 64;
        v14 = -1 << *(v26 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v26 + 64 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v26 + 64 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v26 + 48) + 8 * v17) = v25;
        *(*(v26 + 56) + 8 * v17) = v24;
        ++*(v26 + 16);
      }

      while (sub_195FA1048());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v7;
}

uint64_t sub_195F82E08(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6[0] = a1;
  v6[1] = a2;
  return v3(v6);
}

uint64_t sub_195F82E40(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_195F82E84()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_195F80428(v1);
}

uint64_t objectdestroy_18Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  return MEMORY[0x1EEE6BDD0](v1, 32, 7);
}

uint64_t sub_195F82EFC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_195F803F8(v1);
}

uint64_t sub_195F82F9C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a3(v5, v6, v7);
}

uint64_t objectdestroy_198Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_195F831E0(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE500, &qword_195FB0200) - 8) + 80);

  return sub_195F7C898(a1, a2);
}

void sub_195F8326C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE508, &qword_195FB0208) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80));

  sub_195F7B634(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_195F83338()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE510, &qword_195FB0210) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_195F7A75C(v2, v3);
}

uint64_t sub_195F833D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = *(v5 + 16);
  v10 = v5 + ((*(v8 + 80) + 24) & ~*(v8 + 80));

  return a5(a1, a2, v9, v10);
}

uint64_t sub_195F83494(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v3 + 16);
  v7 = *(v3 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a3(v6, v3 + v5, v7);
}