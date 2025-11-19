uint64_t sub_20DA12BF8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_20D9E04CC(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_20DD63D64();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_20DA12D24(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_20DD655B4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_20DD655B4();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_20DA169E4(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_20DA16C24(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_20DA12E14(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_20D9E0398(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8438F0, &qword_20DD93F90);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_20DA12F18(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_20DD655B4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_20DD655B4();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_20DA169E4(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_20DA16F60(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

size_t sub_20DA13008(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v59 = a2;
  v9 = type metadata accessor for HFEvent();
  v60 = *(v9 - 8);
  v10 = *(v60 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844198, &qword_20DD949D0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v57 = &v50 - v19;
  MEMORY[0x28223BE20](v18);
  v20 = &v50;
  v22 = &v50 - v21;
  v23 = (a4 >> 1);
  v24 = __OFSUB__(a4 >> 1, a3);
  v25 = (a4 >> 1) - a3;
  if (v24)
  {
    __break(1u);
    goto LABEL_21;
  }

  v58 = v12;
  v61 = a1;
  v5 = *v4;
  v26 = *(*v4 + 16);
  v27 = v26 + v25;
  if (__OFADD__(v26, v25))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v28 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v20 = (v5[3] >> 1), v20 < v27))
  {
    if (v26 <= v27)
    {
      v30 = v26 + v25;
    }

    else
    {
      v30 = v26;
    }

    result = sub_20D9E0628(result, v30, 1, v5);
    v5 = result;
    v20 = (*(result + 24) >> 1);
  }

  v31 = v5[2];
  v32 = v20 - v31;
  if (v23 == a3)
  {
    if (v25 <= 0)
    {
      v25 = 0;
      v20 = a3;
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v32 < v25)
  {
    __break(1u);
  }

  else
  {
    v33 = v5 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v31;
    result = swift_arrayInitWithCopy();
    if (v25 <= 0)
    {
LABEL_16:
      v20 = v23;
LABEL_17:
      if (v25 != v32)
      {
        result = swift_unknownObjectRelease();
LABEL_19:
        *v4 = v5;
        return result;
      }

LABEL_23:
      v56 = v20;
      v36 = v5[2];
      v37 = v60;
      v51 = *(v60 + 56);
      v52 = v60 + 56;
      v51(v22, 1, 1, v9);
      v38 = v57;
      sub_20DA1A88C(v22, v57);
      v54 = *(v37 + 48);
      v55 = v37 + 48;
      for (i = v54(v38, 1, v9); i != 1; i = v54(v38, 1, v9))
      {
        sub_20D9D76EC(v38, &qword_27C844198, &qword_20DD949D0);
        v41 = v5[3];
        v40 = v41 >> 1;
        if ((v41 >> 1) < v36 + 1)
        {
          v5 = sub_20D9E0628(v41 > 1, v36 + 1, 1, v5);
          v40 = v5[3] >> 1;
        }

        v42 = *(v60 + 80);
        sub_20DA1A88C(v22, v17);
        if (v54(v17, 1, v9) == 1)
        {
LABEL_24:
          sub_20D9D76EC(v17, &qword_27C844198, &qword_20DD949D0);
          v40 = v36;
        }

        else
        {
          v53 = v5 + ((v42 + 32) & ~v42);
          if (v36 > v40)
          {
            v40 = v36;
          }

          v43 = v58;
          while (1)
          {
            sub_20DA1A8FC(v17, v43);
            if (v40 == v36)
            {
              break;
            }

            sub_20D9D76EC(v22, &qword_27C844198, &qword_20DD949D0);
            v46 = v43;
            v47 = *(v60 + 72);
            result = sub_20DA1A8FC(v46, &v53[v47 * v36]);
            if (v56 == v23)
            {
              v44 = 1;
              v56 = v23;
            }

            else
            {
              if (v56 < a3 || v56 >= v23)
              {
                goto LABEL_44;
              }

              v48 = v59 + v47 * v56;
              v49 = v56;
              sub_20DA1A828(v48, v22);
              v44 = 0;
              v56 = v49 + 1;
            }

            v51(v22, v44, 1, v9);
            sub_20DA1A88C(v22, v17);
            v45 = v54(v17, 1, v9);
            ++v36;
            v43 = v58;
            if (v45 == 1)
            {
              goto LABEL_24;
            }
          }

          sub_20DA1A960(v43);
          v36 = v40;
        }

        v5[2] = v40;
        v38 = v57;
        sub_20DA1A88C(v22, v57);
      }

      sub_20D9D76EC(v22, &qword_27C844198, &qword_20DD949D0);
      swift_unknownObjectRelease();
      result = sub_20D9D76EC(v38, &qword_27C844198, &qword_20DD949D0);
      goto LABEL_19;
    }

    v34 = v5[2];
    v24 = __OFADD__(v34, v25);
    v35 = v34 + v25;
    if (!v24)
    {
      v5[2] = v35;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_20DA13524(uint64_t a1, uint64_t (*a2)(uint64_t *, uint64_t, uint64_t, uint64_t), unint64_t *a3, uint64_t *a4)
{
  v11 = v4;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v13 = sub_20DD655B4();
  }

  else
  {
    v13 = *(a1 + 16);
  }

  v14 = *v4;
  if (!(*v4 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = __OFADD__(v15, v13);
    result = v15 + v13;
    if (!v16)
    {
      goto LABEL_6;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v14 < 0)
  {
    v22 = *v4;
  }

  v23 = sub_20DD655B4();
  v16 = __OFADD__(v23, v13);
  result = v23 + v13;
  if (v16)
  {
    goto LABEL_16;
  }

LABEL_6:
  sub_20DA169E4(result);
  v5 = *v4;
  v6 = *v4 & 0xFFFFFFFFFFFFFF8;
  v18 = *(v6 + 0x10);
  v19 = (*(v6 + 0x18) >> 1) - v18;
  result = a2(&v44, v6 + 8 * v18 + 32, v19, a1);
  if (result < v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (result >= 1)
  {
    v20 = *(v6 + 16);
    v16 = __OFADD__(v20, result);
    v21 = v20 + result;
    if (v16)
    {
      __break(1u);
      goto LABEL_22;
    }

    *(v6 + 16) = v21;
  }

  if (result != v19)
  {
LABEL_11:
    result = sub_20D9C51CC();
    *v11 = v5;
    return result;
  }

LABEL_18:
  a2 = *(v6 + 16);
  v13 = v45;
  v6 = v47;
  v39 = v46;
  v40 = v44;
  v7 = v48;
  if (v44 < 0)
  {
LABEL_22:
    if (!sub_20DD655F4())
    {
      goto LABEL_11;
    }

    sub_20D9D7510(0, a3, a4);
    result = swift_dynamicCast();
    v25 = v43;
    goto LABEL_33;
  }

  if (!v48)
  {
    v26 = (v46 + 64) >> 6;
    if (v26 <= v47 + 1)
    {
      v27 = v47 + 1;
    }

    else
    {
      v27 = (v46 + 64) >> 6;
    }

    v28 = v27 - 1;
    while (1)
    {
      v24 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_61;
      }

      if (v24 >= v26)
      {
        v25 = 0;
        v7 = 0;
        goto LABEL_32;
      }

      v7 = *(v45 + 8 * v24);
      ++v6;
      if (v7)
      {
        goto LABEL_31;
      }
    }
  }

  v24 = v47;
LABEL_31:
  v29 = __clz(__rbit64(v7));
  v7 &= v7 - 1;
  v25 = *(*(v44 + 48) + ((v24 << 9) | (8 * v29)));
  result = v25;
  v28 = v24;
LABEL_32:
  v47 = v28;
  v48 = v7;
  v6 = v28;
LABEL_33:
  v30 = v40;
  v31 = a2;
  if (!v25)
  {
    goto LABEL_11;
  }

  v32 = (v39 + 64) >> 6;
LABEL_35:
  if (v31 + 1 > *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_20DD65014();
    v30 = v40;
  }

  v5 = *v11;
  v33 = *((*v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v38 = *v11 & 0xFFFFFFFFFFFFFF8;
  if (v31 > v33)
  {
    v33 = v31;
  }

  v41 = v33;
  while (1)
  {
    while (1)
    {
      if (v31 == v41)
      {
        v31 = v41;
        *(v38 + 16) = v41;
        goto LABEL_35;
      }

      *(v38 + 32 + 8 * v31++) = v25;
      if ((v30 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_20DD655F4())
      {
        sub_20D9D7510(0, a3, a4);
        result = swift_dynamicCast();
        v30 = v40;
        v25 = v43;
        if (v43)
        {
          continue;
        }
      }

      goto LABEL_58;
    }

    v42 = v31;
    if (!v7)
    {
      break;
    }

    v34 = v6;
LABEL_56:
    v37 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v25 = *(*(v30 + 48) + ((v34 << 9) | (8 * v37)));
    result = v25;
    v30 = v40;
    v36 = v34;
LABEL_41:
    v44 = v30;
    v45 = v13;
    v46 = v39;
    v47 = v36;
    v6 = v36;
    v48 = v7;
    v31 = v42;
    if (!v25)
    {
LABEL_58:
      *(v38 + 16) = v31;
      goto LABEL_11;
    }
  }

  if (v32 <= v6 + 1)
  {
    v35 = v6 + 1;
  }

  else
  {
    v35 = (v39 + 64) >> 6;
  }

  v36 = v35 - 1;
  while (1)
  {
    v34 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v34 >= v32)
    {
      v25 = 0;
      v7 = 0;
      goto LABEL_41;
    }

    v7 = *(v13 + 8 * v34);
    ++v6;
    if (v7)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

unint64_t sub_20DA138D8(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v34)
  {
    v2 = 0;
    v39 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v40 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v36 = isUniquelyReferenced_nonNull_bridgeObject;
    v38 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v37 = i;
    while (1)
    {
      if (v40)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x20F326680](v2, v36);
      }

      else
      {
        if (v2 >= *(v39 + 16))
        {
          goto LABEL_55;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v38 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        break;
      }

      if ([isUniquelyReferenced_nonNull_bridgeObject hf_isMatterOnlyAccessory])
      {
        if ([v4 homeKitObject])
        {
          objc_opt_self();
          v6 = swift_dynamicCastObjCClass();
          swift_unknownObjectRelease();
          if (v6)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
            v7 = swift_allocObject();
            *(v7 + 16) = xmmword_20DD940A0;
            *(v7 + 32) = v4;
            v43 = v7;
            goto LABEL_23;
          }
        }
      }

      if (![v4 homeKitObject])
      {
        goto LABEL_21;
      }

      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8441D0, &unk_20DD95880);
        v10 = swift_allocObject();
        v11 = v10;
        *(v10 + 16) = xmmword_20DD93A70;
        *(v10 + 32) = v9;
        v12 = &protocol witness table for HMServiceGroup;
      }

      else
      {
        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (!v13)
        {
          swift_unknownObjectRelease();
LABEL_21:
          v11 = MEMORY[0x277D84F90];
          goto LABEL_22;
        }

        v14 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8441D0, &unk_20DD95880);
        v10 = swift_allocObject();
        v11 = v10;
        *(v10 + 16) = xmmword_20DD93A70;
        *(v10 + 32) = v14;
        v12 = &protocol witness table for HMMediaSystem;
      }

      *(v10 + 40) = v12;
LABEL_22:
      v15 = sub_20DA0B548(v11);

      v43 = v15;
      v16 = HFAccessoryLikeObject.elements.getter();
      v17 = sub_20DA0B55C(v16);

      sub_20DA12D24(v17);

      v7 = v43;
LABEL_23:
      v18 = v7 >> 62;
      if (v7 >> 62)
      {
        v19 = sub_20DD655B4();
      }

      else
      {
        v19 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v20 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_20DD655B4();
        v21 = isUniquelyReferenced_nonNull_bridgeObject + v19;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v19))
        {
LABEL_53:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v21 = isUniquelyReferenced_nonNull_bridgeObject + v19;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v19))
        {
          goto LABEL_53;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v20)
        {
          goto LABEL_34;
        }

        v22 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v21 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v20)
        {
LABEL_34:
          sub_20DD655B4();
          goto LABEL_35;
        }

        v22 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v23 = *(v22 + 16);
LABEL_35:
      isUniquelyReferenced_nonNull_bridgeObject = sub_20DD65734();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v22 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_36:
      v41 = v3;
      v24 = *(v22 + 16);
      v25 = *(v22 + 24);
      if (v18)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_20DD655B4();
        v26 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v26 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v26)
      {
        if (((v25 >> 1) - v24) < v19)
        {
          goto LABEL_57;
        }

        v27 = v22 + 8 * v24 + 32;
        if (v18)
        {
          if (v26 < 1)
          {
            goto LABEL_59;
          }

          sub_20DA1A9BC(&qword_27C8441C8, &qword_27C8441C0, &qword_20DD949E0);
          for (j = 0; j != v26; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8441C0, &qword_20DD949E0);
            v29 = sub_20D9EAE84(v42, j, v7);
            v31 = *v30;
            swift_unknownObjectRetain();
            (v29)(v42, 0);
            *(v27 + 8 * j) = v31;
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D48, &qword_20DD94240);
          swift_arrayInitWithCopy();
        }

        i = v37;
        v3 = v41;
        if (v19 >= 1)
        {
          v32 = *(v22 + 16);
          v5 = __OFADD__(v32, v19);
          v33 = v32 + v19;
          if (v5)
          {
            goto LABEL_58;
          }

          *(v22 + 16) = v33;
        }
      }

      else
      {

        v3 = v41;
        if (v19 > 0)
        {
          goto LABEL_56;
        }
      }

      if (v2 == i)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    v34 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_20DD655B4();
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_20DA13DE8(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v26)
  {
    v4 = 0;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = MEMORY[0x277D84F90];
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = i;
    v30 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v32)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x20F326680](v4, v28);
      }

      else
      {
        if (v4 >= *(v31 + 16))
        {
          goto LABEL_44;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v30 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v36 = isUniquelyReferenced_nonNull_bridgeObject;
      sub_20DA14B84(&v36, &v35);
      if (v2)
      {
        goto LABEL_42;
      }

      v8 = v35;
      v6 = (v35 >> 62);
      if (v35 >> 62)
      {
        v9 = sub_20DD655B4();
      }

      else
      {
        v9 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v5 >> 62;
      if (v5 >> 62)
      {
        v25 = sub_20DD655B4();
        v12 = v25 + v9;
        if (__OFADD__(v25, v9))
        {
LABEL_41:
          __break(1u);
LABEL_42:

          return v5;
        }
      }

      else
      {
        v11 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = v11 + v9;
        if (__OFADD__(v11, v9))
        {
          goto LABEL_41;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v33 = v9;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v10)
        {
          goto LABEL_22;
        }

        v13 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v10)
        {
LABEL_22:
          sub_20DD655B4();
          goto LABEL_23;
        }

        v13 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_23:
      isUniquelyReferenced_nonNull_bridgeObject = sub_20DD65734();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v6)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_20DD655B4();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v17)
      {
        if (((v16 >> 1) - v15) < v33)
        {
          goto LABEL_46;
        }

        v18 = v13 + 8 * v15 + 32;
        if (v6)
        {
          if (v17 < 1)
          {
            goto LABEL_48;
          }

          sub_20DA1A9BC(&qword_27C8441C8, &qword_27C8441C0, &qword_20DD949E0);
          for (j = 0; j != v17; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8441C0, &qword_20DD949E0);
            v20 = sub_20D9EAE84(v34, j, v8);
            v22 = *v21;
            swift_unknownObjectRetain();
            (v20)(v34, 0);
            *(v18 + 8 * j) = v22;
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D48, &qword_20DD94240);
          swift_arrayInitWithCopy();
        }

        v2 = 0;
        if (v33 >= 1)
        {
          v23 = *(v13 + 16);
          v7 = __OFADD__(v23, v33);
          v24 = v23 + v33;
          if (v7)
          {
            goto LABEL_47;
          }

          *(v13 + 16) = v24;
        }
      }

      else
      {

        if (v33 > 0)
        {
          goto LABEL_45;
        }
      }

      if (v4 == v29)
      {
        return v5;
      }
    }

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
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_20DD655B4();
  }

  return MEMORY[0x277D84F90];
}

void sub_20DA14150(uint64_t a1)
{
  v2 = sub_20DD63744();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_20DD63FE4();
  v5 = *(v43 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v43);
  v42 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v41 = &v35 - v9;
  v55 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20DD65564();
    sub_20D9D7510(0, &qword_280E01F60, off_277DEF2B8);
    sub_20DA1A7C0();
    sub_20DD65284();
    a1 = v50;
    v10 = v51;
    v12 = v52;
    v11 = v53;
    v13 = v54;
  }

  else
  {
    v14 = -1 << *(a1 + 32);
    v10 = a1 + 56;
    v12 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(a1 + 56);

    v11 = 0;
  }

  v45 = v12;
  v40 = (v5 + 16);
  v38 = (v5 + 8);
  v46 = MEMORY[0x277D84F90];
LABEL_8:
  v17 = v11;
  if ((a1 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v18 = v17;
      v19 = v13;
      v11 = v17;
      if (!v13)
      {
        while (1)
        {
          v11 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v11 >= ((v12 + 64) >> 6))
          {
            goto LABEL_32;
          }

          v19 = *(v10 + 8 * v11);
          ++v18;
          if (v19)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
        return;
      }

LABEL_16:
      v20 = (v19 - 1) & v19;
      v21 = *(*(a1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v19)))));
      if (!v21)
      {
        goto LABEL_32;
      }

LABEL_20:
      if (![v21 homeKitObject])
      {
        break;
      }

      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (v23 && (v24 = v23, (v25 = [v23 home]) != 0))
      {
        v26 = v25;
        if (([v24 hf_isMatterOnlyAccessory] & 1) == 0)
        {

          swift_unknownObjectRelease();
          goto LABEL_11;
        }

        v44 = v20;
        sub_20DD65334();
        if ((v27 & 1) == 0)
        {
          v37 = v26;
          v46 = [v26 uniqueIdentifier];
          sub_20DD63714();

          sub_20DD63FB4();
          v46 = *v40;
          (v46)(v42, v41, v43);
          v36 = type metadata accessor for MatterAccessoryRepresentable();
          v28 = objc_allocWithZone(v36);
          v29 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
          v30 = sub_20DD64294();
          (*(*(v30 - 8) + 56))(&v28[v29], 1, 1, v30);
          v31 = &v28[OBJC_IVAR___HFMatterAccessoryRepresentable__tileInfo];
          *(v31 + 4) = 0;
          *v31 = 0u;
          *(v31 + 1) = 0u;
          *&v28[OBJC_IVAR___HFMatterAccessoryRepresentable_accessory] = v24;
          (v46)(&v28[OBJC_IVAR___HFMatterAccessoryRepresentable_tilePath], v42, v43);
          v49.receiver = v28;
          v49.super_class = v36;
          swift_unknownObjectRetain();
          v32 = objc_msgSendSuper2(&v49, sel_init);
          v33 = *v38;
          (*v38)(v42, v43);
          v46 = v32;
          sub_20D9F18F4();
          swift_unknownObjectRelease();

          v33(v41, v43);
          MEMORY[0x20F325F00]();
          if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v34 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_20DD65014();
          }

          sub_20DD65054();
          v46 = v55;
          v13 = v44;
          goto LABEL_8;
        }

        swift_unknownObjectRelease();
        v17 = v11;
        v13 = v44;
        if (a1 < 0)
        {
          goto LABEL_18;
        }
      }

      else
      {

        swift_unknownObjectRelease();
LABEL_11:
        v17 = v11;
        v13 = v20;
        if (a1 < 0)
        {
          goto LABEL_18;
        }
      }
    }

    goto LABEL_11;
  }

LABEL_18:
  v22 = sub_20DD655F4();
  if (v22)
  {
    v47 = v22;
    sub_20D9D7510(0, &qword_280E01F60, off_277DEF2B8);
    swift_dynamicCast();
    v21 = v48;
    v11 = v17;
    v20 = v13;
    if (v48)
    {
      goto LABEL_20;
    }
  }

LABEL_32:
  sub_20D9C51CC();
}

uint64_t static HFAccessoryListUtilities.accessoryRepresentableObjects(from:objectLevel:accessoryTypeGroups:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_20DA148AC(a2, a1, v3, a3);
  v6 = v5;
  v15 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
LABEL_16:
    v7 = sub_20DD655B4();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v8 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          MEMORY[0x20F326680](v8, v6);
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v12 = v15;
            goto LABEL_18;
          }
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v10 = *(v6 + 8 * v8 + 32);
          swift_unknownObjectRetain();
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_13;
          }
        }

        swift_getObjectType();
        if (HFAccessoryRepresentable.isMatterOnlyAccessory.getter())
        {
          swift_unknownObjectRelease();
        }

        else
        {
          sub_20DD65754();
          v9 = *(v15 + 16);
          sub_20DD65784();
          sub_20DD65794();
          sub_20DD65764();
        }

        ++v8;
        if (v11 == v7)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v12 = MEMORY[0x277D84F90];
LABEL_18:

  sub_20DA14150(a1);
  sub_20DA12D24(v13);
  return v12;
}

uint64_t sub_20DA148AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1 <= 2)
  {
    if (a1 != 1)
    {
      if (a1 == 2)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    if (!a4)
    {
      goto LABEL_10;
    }

    v9 = sub_20DA55058(a2);

    sub_20DA17108(v9, a4);

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D48, &qword_20DD94240);
    v6 = sub_20DD64FB4();

    v7 = [ObjCClassFromMetadata uniqueAccessoryRepresentablesIn_];
LABEL_14:
    v15 = v7;

    v12 = sub_20DD64FD4();
    return v12;
  }

  if (a1 == 3)
  {
LABEL_13:
    v13 = sub_20DA55058(a2);
    sub_20DA138D8(v13);

    v14 = swift_getObjCClassFromMetadata();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D48, &qword_20DD94240);
    v6 = sub_20DD64FB4();

    v7 = [v14 uniqueAccessoryRepresentablesIn_];
    goto LABEL_14;
  }

  if (a1 == 4)
  {
    v4 = sub_20DA55058(a2);
    sub_20DA13DE8(v4);

    v5 = swift_getObjCClassFromMetadata();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D48, &qword_20DD94240);
    v6 = sub_20DD64FB4();

    v7 = [v5 uniqueAccessoryRepresentablesIn_];
    goto LABEL_14;
  }

LABEL_10:
  v11 = sub_20DA55058(a2);
  v12 = v11;
  if ((v11 & 0x8000000000000000) == 0 && (v11 & 0x4000000000000000) == 0)
  {

    sub_20DD65994();

    return v12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D48, &qword_20DD94240);
  v17 = sub_20DD65834();

  return v17;
}

void *sub_20DA14B84@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if ([*a1 hf_isMatterOnlyAccessory])
  {
    if ([v3 homeKitObject])
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      swift_unknownObjectRelease();
      if (v4)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_20DD940A0;
        *(v5 + 32) = v3;
        *a2 = v5;
        return v3;
      }
    }
  }

  v25 = a2;
  v26 = HFAccessoryLikeObject.elements.getter();
  result = HFAccessoryLikeObject.components.getter();
  v7 = result;
  v8 = result[2];
  if (!v8)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_24:

    sub_20DA12E14(v11);
    v24 = sub_20DA0B55C(v26);

    *v25 = v24;
    return result;
  }

  v9 = 0;
  v10 = result + 5;
  v11 = MEMORY[0x277D84F90];
  while (v9 < v7[2])
  {
    v12 = *(v10 - 1);
    v13 = *v10;
    ObjectType = swift_getObjectType();
    v15 = *(v13 + 24);
    swift_unknownObjectRetain();
    v16 = v15(ObjectType, v13);
    result = swift_unknownObjectRelease();
    v17 = *(v16 + 16);
    v18 = v11[2];
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      goto LABEL_26;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v19 <= v11[3] >> 1)
    {
      if (*(v16 + 16))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v20 = v18 + v17;
      }

      else
      {
        v20 = v18;
      }

      result = sub_20D9E0398(result, v20, 1, v11);
      v11 = result;
      if (*(v16 + 16))
      {
LABEL_19:
        if ((v11[3] >> 1) - v11[2] < v17)
        {
          goto LABEL_28;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8438F0, &qword_20DD93F90);
        swift_arrayInitWithCopy();

        if (v17)
        {
          v21 = v11[2];
          v22 = __OFADD__(v21, v17);
          v23 = v21 + v17;
          if (v22)
          {
            goto LABEL_29;
          }

          v11[2] = v23;
        }

        goto LABEL_8;
      }
    }

    if (v17)
    {
      goto LABEL_27;
    }

LABEL_8:
    ++v9;
    v10 += 2;
    if (v8 == v9)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

id sub_20DA14E0C@<X0>(id *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v4 = *a1;
  if ([*a1 hf_isMatterOnlyAccessory])
  {
    if ([v4 homeKitObject])
    {
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      swift_unknownObjectRelease();
      if (v5)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_20DD940A0;
        *(v6 + 32) = v4;
        *a3 = v6;
        return v4;
      }
    }
  }

  v8 = HFAccessoryLikeObject.components.getter();
  v9 = sub_20DA0B548(v8);

  v29 = v9;
  v10 = HFAccessoryLikeObject.elements.getter();
  v11 = sub_20DA0B55C(v10);

  sub_20DA12D24(v11);
  v28 = MEMORY[0x277D84FA0];
  v25 = v9;
  if (v9 >> 62)
  {
    goto LABEL_37;
  }

  v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v23 = v4;
  v24 = a3;
  if (v12)
  {
LABEL_7:
    v13 = 0;
    a3 = v25;
    v14 = MEMORY[0x277D84FA0];
    while (1)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        MEMORY[0x20F326680](v13, a3);
        v15 = __OFADD__(v13++, 1);
        if (v15)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v13 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v16 = *(v25 + 32 + 8 * v13);
        swift_unknownObjectRetain();
        v15 = __OFADD__(v13++, 1);
        if (v15)
        {
          goto LABEL_35;
        }
      }

      swift_getObjectType();
      if (HFAccessoryRepresentable.itemClass.getter())
      {
        if (a2 >> 62)
        {
          v17 = sub_20DD655B4();
          if (v17)
          {
LABEL_19:
            a3 = 0;
            while (1)
            {
              if ((a2 & 0xC000000000000001) != 0)
              {
                v18 = MEMORY[0x20F326680](a3, a2);
              }

              else
              {
                if (a3 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_34;
                }

                v18 = *(a2 + 8 * a3 + 32);
              }

              v19 = v18;
              v4 = (a3 + 1);
              if (__OFADD__(a3, 1))
              {
                break;
              }

              v20 = HFAccessoryRepresentable.accessoryType.getter();
              v21 = [v19 containsType_];

              if (v21)
              {
                goto LABEL_28;
              }

              ++a3;
              if (v4 == v17)
              {
                v19 = 0;
LABEL_28:
                a3 = v25;
                goto LABEL_31;
              }
            }

            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            v12 = sub_20DD655B4();
            v23 = v4;
            v24 = a3;
            if (!v12)
            {
              break;
            }

            goto LABEL_7;
          }
        }

        else
        {
          v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v17)
          {
            goto LABEL_19;
          }
        }

        v19 = 0;
LABEL_31:
        sub_20D9E1F34(&v27, v19);
        swift_unknownObjectRelease();

        v14 = v28;
        if (*(v28 + 16) >= 2uLL)
        {

          goto LABEL_41;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      if (v13 == v12)
      {
        goto LABEL_39;
      }
    }
  }

  v14 = MEMORY[0x277D84FA0];
  a3 = v25;
LABEL_39:
  v22 = *(v14 + 16);

  if (v22 <= 1)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
    a3 = swift_allocObject();
    *(a3 + 16) = xmmword_20DD940A0;
    *(a3 + 32) = v23;
    result = v23;
  }

LABEL_41:
  *v24 = a3;
  return result;
}

id static HFAccessoryListUtilities.accessoryRepresentableItem(for:valueSource:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  result = HFAccessoryRepresentable.itemClass.getter();
  if (result)
  {
    result = [swift_getObjCClassFromMetadata() itemWithAccessoryRepresentableObject:a1 valueSource:a2];
    if (result)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (!result)
      {
        swift_unknownObjectRelease();
        return 0;
      }
    }
  }

  return result;
}

uint64_t static HFAccessoryListUtilities.createRoomSections(with:in:sectionIdentifierBlock:)(unint64_t a1, void *a2, void (*a3)(id), uint64_t a4)
{
  v5 = v4;
  v55 = a3;
  v56 = a4;
  v54 = a2;
  v7 = sub_20DD63744();
  v8 = *(v7 - 8);
  v52 = v7;
  v53 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v51 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20DD655B4())
  {
    v12 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x20F326680](v12, a1);
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v13 = *(a1 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v58 = v13;
      sub_20DA15AD4(&v59, &v58, v5, &v57);

      v16 = v57;
      v59 = v57;
      ++v12;
      if (v15 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v16 = MEMORY[0x277D84F98];
LABEL_15:
  v17 = [v54 hf_orderedRooms];
  sub_20D9D7510(0, &unk_280E01EE0, 0x277CD1D88);
  v18 = sub_20DD64FD4();

  v59 = MEMORY[0x277D84F90];
  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_17;
    }

LABEL_46:
    v21 = MEMORY[0x277D84F90];
    goto LABEL_47;
  }

LABEL_45:
  v19 = sub_20DD655B4();
  if (!v19)
  {
    goto LABEL_46;
  }

LABEL_17:
  v20 = 0;
  v54 = (v18 & 0xC000000000000001);
  v50 = (v53 + 8);
  v21 = MEMORY[0x277D84F90];
  do
  {
    v22 = v20;
    while (1)
    {
      if (v54)
      {
        v23 = MEMORY[0x20F326680](v22, v18);
      }

      else
      {
        if (v22 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v23 = *(v18 + 8 * v22 + 32);
      }

      v24 = v23;
      v20 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v55(v23);
      if (v25)
      {
        break;
      }

      ++v22;
      if (v20 == v19)
      {
        goto LABEL_47;
      }
    }

    v26 = objc_allocWithZone(HFMutableItemSection);
    v27 = sub_20DD64E74();

    v49 = [v26 initWithIdentifier_];

    v28 = [v24 hf_reorderableServicesList];
    v29 = [v28 sortedHomeKitItemComparator];

    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    v31 = v30;
    v32 = [v24 uniqueIdentifier];
    v33 = v51;
    sub_20DD63714();

    v34 = *(v16 + 16);
    v53 = v31;
    if (v34 && (v35 = sub_20D9CB38C(v33), (v36 & 1) != 0))
    {
      v37 = *(*(v16 + 56) + 8 * v35);
      v48 = *v50;

      v48(v33, v52);
    }

    else
    {
      (*v50)(v33, v52);
      v37 = MEMORY[0x277D84F90];
    }

    if (v37 >> 62)
    {
      v43 = sub_20DD655B4();
      if (v43)
      {
        v48 = v43;
        v38 = sub_20D9EF64C(v43, 0);

        v44 = v48;
        sub_20DA16F60(v38 + 32, v48, v37);
        v47 = v45;

        if (v47 != v44)
        {
          __break(1u);

          __break(1u);
          return result;
        }
      }

      else
      {

        v38 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v38 = (v37 & 0xFFFFFFFFFFFFFF8);
    }

    v58 = v38;

    sub_20DA19ED8(&v58, sub_20DA17100);

    sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
    v39 = sub_20DD64FB4();

    v40 = v49;
    [v49 setItems_];

    v41 = [v24 name];
    if (!v41)
    {
      sub_20DD64EB4();
      v41 = sub_20DD64E74();
    }

    [v40 setHeaderTitle_];

    v42 = v40;
    MEMORY[0x20F325F00]();
    if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20DD65014();
    }

    sub_20DD65054();

    v21 = v59;
  }

  while (v20 != v19);
LABEL_47:

  return v21;
}

uint64_t sub_20DA15AD4@<X0>(uint64_t *a1@<X0>, id *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v49 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v47 - v10;
  v12 = sub_20DD63744();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v50 = *a2;
  v18 = [v50 latestResults];
  if (!v18)
  {
    goto LABEL_10;
  }

  v19 = v18;
  v20 = sub_20DD64DC4();

  v21 = sub_20DD64EB4();
  if (!*(v20 + 16))
  {

LABEL_10:
    (*(v13 + 56))(v11, 1, 1, v12);
    goto LABEL_11;
  }

  v47 = v4;
  v48 = a4;
  v23 = sub_20D9CB170(v21, v22);
  v25 = v24;

  if ((v25 & 1) == 0)
  {

    a4 = v48;
    goto LABEL_10;
  }

  sub_20D9D7174(*(v20 + 56) + 32 * v23, v51);

  v26 = swift_dynamicCast();
  (*(v13 + 56))(v11, v26 ^ 1u, 1, v12);
  v27 = (*(v13 + 48))(v11, 1, v12);
  a4 = v48;
  if (v27 != 1)
  {
    (*(v13 + 32))(v16, v11, v12);
    v28 = *(v17 + 16);

    if (v28 && (v29 = sub_20D9CB38C(v16), (v30 & 1) != 0))
    {
      v51[0] = *(*(v17 + 56) + 8 * v29);
    }

    else
    {
      v51[0] = MEMORY[0x277D84F90];
    }

    v42 = v50;
    MEMORY[0x20F325F00]();
    if (*((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v46 = *((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_20DD65014();
      a4 = v48;
    }

    sub_20DD65054();
    v43 = v51[0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v17;
    sub_20D9D0F48(v43, v16, isUniquelyReferenced_nonNull_native);
    v45 = v52;
    result = (*(v13 + 8))(v16, v12);
    *a4 = v45;
    return result;
  }

LABEL_11:
  sub_20D9D76EC(v11, &unk_27C843A70, &qword_20DD94260);
  v31 = sub_20DD65364();
  if (qword_280E01EC8 != -1)
  {
    swift_once();
  }

  v32 = qword_280E03EA0;
  if (os_log_type_enabled(qword_280E03EA0, v31))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v51[0] = v48;
    *v33 = 136315906;
    *(v33 + 4) = sub_20D9E0B38(0xD000000000000061, 0x800000020DD98B60, v51);
    *(v33 + 12) = 2048;
    *(v33 + 14) = 174;
    *(v33 + 22) = 2080;
    v35 = sub_20DD65B04();
    v37 = sub_20D9E0B38(v35, v36, v51);

    *(v33 + 24) = v37;
    *(v33 + 32) = 2112;
    v38 = v50;
    *(v33 + 34) = v50;
    *v34 = v38;
    v39 = v38;
    _os_log_impl(&dword_20D9BF000, v32, v31, "(%s:%ld) %s encountered item with no room identifier: %@", v33, 0x2Au);
    sub_20D9D76EC(v34, &unk_27C843630, &qword_20DD94080);
    MEMORY[0x20F327D10](v34, -1, -1);
    v40 = v48;
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v40, -1, -1);
    MEMORY[0x20F327D10](v33, -1, -1);
  }

  *a4 = v17;
}

uint64_t sub_20DA16018(void *a1, void *a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = sub_20DD65964();
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v6 = sub_20DD65964();
  v7 = (*(a3 + 16))(a3, v5, v6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v7;
}

uint64_t static HFAccessoryListUtilities.createAccessoryCategorySections(with:in:sectionIdentifierBlock:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a3;
  v49 = a4;
  v4 = a1;
  v62 = MEMORY[0x277D84F98];
  v61 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_46;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v5)
  {
    v6 = 0;
    v55 = v4 & 0xC000000000000001;
    v52 = v4 & 0xFFFFFFFFFFFFFF8;
    v53 = v4;
    v51 = v4 + 32;
    v7 = MEMORY[0x277D84F98];
    v54 = v5;
    while (1)
    {
      if (v55)
      {
        v9 = MEMORY[0x20F326680](v6, v53);
      }

      else
      {
        if (v6 >= *(v52 + 16))
        {
          goto LABEL_45;
        }

        v9 = *(v51 + 8 * v6);
      }

      v10 = v9;
      v11 = __OFADD__(v6, 1);
      v12 = v6 + 1;
      if (v11)
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        v5 = sub_20DD655B4();
        goto LABEL_3;
      }

      v58 = v7;
      v13 = [ObjCClassFromMetadata sortedAccessoryTypeGroups];
      sub_20D9D7510(0, &unk_280E020A0, off_277DEF390);
      v14 = sub_20DD64FD4();

      v57 = v12;
      if (v14 >> 62)
      {
        v15 = sub_20DD655B4();
        if (v15)
        {
LABEL_14:
          v16 = 0;
          while (1)
          {
            if ((v14 & 0xC000000000000001) != 0)
            {
              v17 = MEMORY[0x20F326680](v16, v14);
            }

            else
            {
              if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_43;
              }

              v17 = *(v14 + 8 * v16 + 32);
            }

            v18 = v17;
            v19 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              __break(1u);
LABEL_43:
              __break(1u);
              goto LABEL_44;
            }

            v20 = [v10 accessoryRepresentableObject];
            swift_getObjectType();
            v4 = HFAccessoryRepresentable.accessoryType.getter();
            swift_unknownObjectRelease();
            v21 = [v18 containsType_];

            if (v21)
            {
              break;
            }

            ++v16;
            if (v19 == v15)
            {
              goto LABEL_29;
            }
          }

          if (v58[2] && (v22 = sub_20D9CB6DC(v18), (v23 & 1) != 0))
          {
            v60 = *(v58[7] + 8 * v22);

            v24 = v10;
            MEMORY[0x20F325F00]();
            if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v27 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_20DD65014();
            }

            sub_20DD65054();
            v4 = v60;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v59[0] = v58;
            sub_20D9D1160(v60, v18, isUniquelyReferenced_nonNull_native);

            v7 = v58;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
            v4 = swift_allocObject();
            *(v4 + 16) = xmmword_20DD940A0;
            *(v4 + 32) = v10;
            v8 = swift_isUniquelyReferenced_nonNull_native();
            v60 = v58;
            sub_20D9D1160(v4, v18, v8);

            v7 = v58;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_14;
        }
      }

LABEL_29:

      v26 = v10;
      MEMORY[0x20F325F00]();
      if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v4 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_20DD65014();
      }

      sub_20DD65054();

      v7 = v58;
LABEL_6:
      v6 = v57;
      if (v57 == v54)
      {
        v62 = v7;
        break;
      }
    }
  }

  v60 = 0;
  v28 = [ObjCClassFromMetadata sortedAccessoryTypeGroups];
  sub_20D9D7510(0, &unk_280E020A0, off_277DEF390);
  v29 = sub_20DD64FD4();

  v30 = sub_20DA17480(v29, v48, v50, &v62, &v61, &v60);

  v31 = v61;
  if (v61 >> 62)
  {
    if (sub_20DD655B4())
    {
      goto LABEL_35;
    }

LABEL_48:
    v43 = v60;
    goto LABEL_49;
  }

  if (!*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_48;
  }

LABEL_35:
  v32 = sub_20DD65384();
  sub_20D9D7510(0, &qword_280E01EC0, 0x277D86200);
  v33 = sub_20DD65474();
  if (os_log_type_enabled(v33, v32))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v59[0] = v35;
    *v34 = 136315650;
    *(v34 + 4) = sub_20D9E0B38(0xD000000000000040, 0x800000020DD98A80, v59);
    *(v34 + 12) = 2048;
    if (v31 >> 62)
    {
      v36 = sub_20DD655B4();
    }

    else
    {
      v36 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v34 + 14) = v36;
    *(v34 + 22) = 2080;
    v37 = sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);

    v39 = MEMORY[0x20F325F40](v38, v37);
    v41 = v40;

    v42 = sub_20D9E0B38(v39, v41, v59);

    *(v34 + 24) = v42;
    _os_log_impl(&dword_20D9BF000, v33, v32, "%s Found %ld item(s) without an identified category: %s", v34, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v35, -1, -1);
    MEMORY[0x20F327D10](v34, -1, -1);
  }

  v43 = v60;
  if (v60)
  {
    sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);

    v44 = v43;
    v45 = sub_20DD64FB4();

    [v44 setItems_];
  }

LABEL_49:

  return v30;
}

uint64_t sub_20DA16908(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a2, a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_20DD64EB4();

  return v4;
}

uint64_t sub_20DA169E4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_20DD655B4();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_20DD65734();
  *v1 = result;
  return result;
}

uint64_t sub_20DA16A84(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20DD655B4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_20DD655B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20DA1A9BC(&qword_27C8441E8, &qword_27C8441E0, &qword_20DD949E8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8441E0, &qword_20DD949E8);
            v9 = sub_20D9EAD84(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_20D9D7510(0, &qword_280E01EF0, 0x277CD1A60);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20DA16C24(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20DD655B4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_20DD655B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20DA1A9BC(&qword_27C8441C8, &qword_27C8441C0, &qword_20DD949E0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8441C0, &qword_20DD949E0);
            v9 = sub_20D9EAE84(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D48, &qword_20DD94240);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20DA16DC0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20DD655B4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_20DD655B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20DA1A9BC(&qword_27C844190, &qword_27C8446E0, &qword_20DD95890);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8446E0, &qword_20DD95890);
            v9 = sub_20D9EAE04(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_20D9D7510(0, &qword_27C8435F0, 0x277CD1D90);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20DA16F60(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20DD655B4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_20DD655B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20DA1A9BC(&unk_27C8441B0, &qword_27C8441A8, &qword_20DD949D8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8441A8, &qword_20DD949D8);
            v9 = sub_20D9EAE04(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_20DA17108(unint64_t isUniquelyReferenced_nonNull_bridgeObject, unint64_t a2)
{
  v3 = v2;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v28)
  {
    v5 = 0;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v6 = MEMORY[0x277D84F90];
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v32 = i;
    v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v35)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x20F326680](v5, v30);
      }

      else
      {
        if (v5 >= *(v34 + 16))
        {
          goto LABEL_44;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v33 + 8 * v5);
      }

      v7 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = __OFADD__(v5++, 1);
      if (v8)
      {
        break;
      }

      v40 = isUniquelyReferenced_nonNull_bridgeObject;
      sub_20DA14E0C(&v40, a2, &v39);
      if (v3)
      {
        goto LABEL_42;
      }

      v9 = v39;
      v7 = (v39 >> 62);
      if (v39 >> 62)
      {
        v10 = sub_20DD655B4();
      }

      else
      {
        v10 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v6 >> 62;
      if (v6 >> 62)
      {
        v27 = sub_20DD655B4();
        v13 = v27 + v10;
        if (__OFADD__(v27, v10))
        {
LABEL_41:
          __break(1u);
LABEL_42:

          return v6;
        }
      }

      else
      {
        v12 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = v12 + v10;
        if (__OFADD__(v12, v10))
        {
          goto LABEL_41;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v37 = v10;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_22;
        }

        v14 = v6 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v11)
        {
LABEL_22:
          sub_20DD655B4();
          goto LABEL_23;
        }

        v14 = v6 & 0xFFFFFFFFFFFFFF8;
      }

      v15 = *(v14 + 16);
LABEL_23:
      isUniquelyReferenced_nonNull_bridgeObject = sub_20DD65734();
      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v7)
      {
        v19 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_20DD655B4();
        v14 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v18)
      {
        if (((v17 >> 1) - v16) < v37)
        {
          goto LABEL_46;
        }

        v20 = v14 + 8 * v16 + 32;
        v31 = v14;
        if (v7)
        {
          if (v18 < 1)
          {
            goto LABEL_48;
          }

          sub_20DA1A9BC(&qword_27C8441C8, &qword_27C8441C0, &qword_20DD949E0);
          for (j = 0; j != v18; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8441C0, &qword_20DD949E0);
            v22 = sub_20D9EAE84(v38, j, v9);
            v24 = *v23;
            swift_unknownObjectRetain();
            (v22)(v38, 0);
            *(v20 + 8 * j) = v24;
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D48, &qword_20DD94240);
          swift_arrayInitWithCopy();
        }

        v3 = 0;
        if (v37 >= 1)
        {
          v25 = *(v31 + 16);
          v8 = __OFADD__(v25, v37);
          v26 = v25 + v37;
          if (v8)
          {
            goto LABEL_47;
          }

          *(v31 + 16) = v26;
        }
      }

      else
      {

        if (v37 > 0)
        {
          goto LABEL_45;
        }
      }

      if (v5 == v32)
      {
        return v6;
      }
    }

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
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_20DD655B4();
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_20DA17480(unint64_t a1, void (*a2)(id), uint64_t a3, uint64_t *a4, uint64_t a5, void **a6)
{
  v39 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_28:
    v38 = a1 & 0xFFFFFFFFFFFFFF8;
    v33 = a6;
    v34 = sub_20DD655B4();
    a6 = v33;
    v8 = v34;
    if (v34)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  v38 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v35 = a6;
  v9 = 0;
  result = MEMORY[0x277D84F90];
  do
  {
    v36 = result;
    for (i = v9; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x20F326680](i, a1);
      }

      else
      {
        if (i >= *(v38 + 16))
        {
          goto LABEL_27;
        }

        v13 = *(a1 + 8 * i + 32);
      }

      v14 = v13;
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      a2(v13);
      if (v15)
      {
        break;
      }

LABEL_15:
      v19 = *a4;
      if (*(*a4 + 16) && (v20 = sub_20D9CB6DC(v14), (v21 & 1) != 0))
      {
        v22 = *(*(v19 + 56) + 8 * v20);
      }

      else
      {
        v12 = MEMORY[0x277D84F90];
      }

      sub_20DA12F18(v12);

      if (v9 == v8)
      {
        return v36;
      }
    }

    v16 = *a4;
    if (!*(*a4 + 16) || (v17 = sub_20D9CB6DC(v14), (v18 & 1) == 0))
    {

      goto LABEL_15;
    }

    v23 = *(*(v16 + 56) + 8 * v17);
    v24 = objc_allocWithZone(HFMutableItemSection);

    v25 = sub_20DD64E74();

    v26 = [v24 initWithIdentifier_];

    v27 = [v14 name];
    [v26 setHeaderTitle_];

    sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
    v28 = sub_20DD64FB4();

    [v26 setItems_];

    sub_20D9D7510(0, &qword_27C8441A0, 0x277D82BB8);
    v29 = [objc_opt_self() otherAccessoryTypeGroup];
    LOBYTE(v23) = sub_20DD65454();

    if (v23)
    {
      v30 = *v35;
      *v35 = v26;
      v31 = v26;

      v14 = v30;
    }

    MEMORY[0x20F325F00]();
    if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v32 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_20DD65014();
    }

    sub_20DD65054();
    result = v39;
  }

  while (v9 != v8);
  return result;
}

uint64_t sub_20DA177D0(unint64_t isUniquelyReferenced_nonNull_native)
{
  v40 = sub_20DD63744();
  v37 = *(v40 - 8);
  v2 = *(v37 + 64);
  MEMORY[0x28223BE20](v40);
  v4 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20DD655B4())
  {
    v6 = 0;
    v7 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v8 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    v36[1] = v37 + 16;
    v39 = (v37 + 8);
    v9 = MEMORY[0x277D84F98];
    v38 = isUniquelyReferenced_nonNull_native;
    v36[0] = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    while (v7)
    {
      v12 = MEMORY[0x20F326680](v6, isUniquelyReferenced_nonNull_native);
      v13 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_22;
      }

LABEL_9:
      v41 = v13;
      swift_getObjectType();

      v14 = [HFAccessoryRepresentable.homeKitObject.getter() uniqueIdentifier];
      swift_unknownObjectRelease();
      sub_20DD63714();

      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v9;
      v15 = sub_20D9CB38C(v4);
      v17 = v9[2];
      v18 = (v16 & 1) == 0;
      v19 = __OFADD__(v17, v18);
      v20 = v17 + v18;
      if (v19)
      {
        goto LABEL_24;
      }

      v21 = v16;
      if (v9[3] < v20)
      {
        sub_20D9CE0BC(v20, isUniquelyReferenced_nonNull_native);
        v15 = sub_20D9CB38C(v4);
        if ((v21 & 1) != (v22 & 1))
        {
          result = sub_20DD659E4();
          __break(1u);
          return result;
        }

LABEL_14:
        v23 = v42;
        if (v21)
        {
          goto LABEL_4;
        }

        goto LABEL_15;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_14;
      }

      v31 = v15;
      sub_20D9D2C88();
      v15 = v31;
      v23 = v42;
      if (v21)
      {
LABEL_4:
        v10 = v23[7];
        v11 = *(v10 + 8 * v15);
        *(v10 + 8 * v15) = v12;

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        (*v39)(v4, v40);
        goto LABEL_5;
      }

LABEL_15:
      v24 = v7;
      v25 = i;
      v23[(v15 >> 6) + 8] |= 1 << v15;
      v26 = v37;
      v27 = v15;
      v28 = v40;
      (*(v37 + 16))(v23[6] + *(v37 + 72) * v15, v4, v40);
      *(v23[7] + 8 * v27) = v12;

      swift_unknownObjectRelease();
      isUniquelyReferenced_nonNull_native = v4;
      (*(v26 + 8))(v4, v28);
      v29 = v23[2];
      v19 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v19)
      {
        goto LABEL_25;
      }

      v23[2] = v30;
      i = v25;
      v7 = v24;
      v8 = v36[0];
LABEL_5:
      ++v6;
      v9 = v23;
      isUniquelyReferenced_nonNull_native = v38;
      if (v41 == i)
      {
        goto LABEL_28;
      }
    }

    if (v6 >= *(v8 + 16))
    {
      goto LABEL_23;
    }

    v12 = *(isUniquelyReferenced_nonNull_native + 8 * v6 + 32);
    swift_unknownObjectRetain();
    v13 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_9;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v23 = MEMORY[0x277D84F98];
LABEL_28:
  v32 = v23[2];
  if (!v32)
  {
    goto LABEL_31;
  }

  v33 = sub_20D9EF64C(v23[2], 0);
  v34 = sub_20D9EF640(&v42, v33 + 32, v32, v23);
  sub_20D9C51CC();
  if (v34 != v32)
  {
    __break(1u);
LABEL_31:

    return MEMORY[0x277D84F90];
  }

  return v33;
}

uint64_t sub_20DA17BBC(char *__dst, char *__src, char *a3, char *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 3;
  v13 = a3 - __src;
  v14 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 3;
  if (v12 >= v14 >> 3)
  {
    if (a4 != __src || &__src[8 * v15] <= a4)
    {
      memmove(a4, __src, 8 * v15);
    }

    v16 = &v6[8 * v15];
    if (v13 >= 8 && v8 > v9)
    {
LABEL_25:
      v19 = v8 - 8;
      v7 -= 8;
      v20 = v16;
      do
      {
        v21 = v7 + 8;
        v22 = *(v20 - 1);
        v20 -= 8;
        if ((*(a5 + 16))(a5, v22, *v19) != 1)
        {
          if (v21 != v8)
          {
            *v7 = *v19;
          }

          if (v16 <= v6 || (v8 -= 8, v19 <= v9))
          {
            v8 = v19;
            goto LABEL_36;
          }

          goto LABEL_25;
        }

        if (v21 != v16)
        {
          *v7 = *v20;
        }

        v7 -= 8;
        v16 = v20;
      }

      while (v20 > v6);
      v16 = v20;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v12] <= a4)
    {
      memmove(a4, __dst, 8 * v12);
    }

    v16 = &v6[8 * v12];
    if (v10 >= 8 && v8 < v7)
    {
      while ((*(a5 + 16))(a5, *v8, *v6) == 1)
      {
        v17 = v6;
        v18 = v9 == v6;
        v6 += 8;
        if (!v18)
        {
          goto LABEL_16;
        }

LABEL_17:
        v9 += 8;
        if (v6 >= v16 || v8 >= v7)
        {
          goto LABEL_19;
        }
      }

      v17 = v8;
      v18 = v9 == v8;
      v8 += 8;
      if (v18)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v9 = *v17;
      goto LABEL_17;
    }

LABEL_19:
    v8 = v9;
  }

LABEL_36:
  if (v8 != v6 || v8 >= &v6[(v16 - v6 + (v16 - v6 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v8, v6, 8 * ((v16 - v6) / 8));
  }

  return 1;
}

void sub_20DA17E00(char **a1, char *a2, uint64_t *a3, void *aBlock)
{
  v5 = a1;
  v6 = *a1;
  _Block_copy(aBlock);
  v22 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v22 = sub_20DA73550(v22);
  }

  v18 = v5;
  *v5 = v22;
  v7 = v22 + 16;
  v8 = *(v22 + 2);
  if (v8 < 2)
  {
LABEL_9:
    _Block_release(aBlock);
    *v18 = v22;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v22[16 * v8];
      v11 = *v10;
      v12 = v7;
      v13 = &v7[16 * v8];
      v14 = *(v13 + 1);
      __dst = (v9 + 8 * *v10);
      v15 = (v9 + 8 * *v13);
      v23 = (v9 + 8 * v14);
      v5 = aBlock;
      _Block_copy(aBlock);
      sub_20DA17BBC(__dst, v15, v23, a2, aBlock);
      _Block_release(aBlock);
      if (v4)
      {
        *v18 = v22;
        _Block_release(aBlock);
        return;
      }

      if (v14 < v11)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v16 = *v12;
      if (v8 - 2 >= *v12)
      {
        goto LABEL_12;
      }

      *v10 = v11;
      *(v10 + 1) = v14;
      v17 = v16 - v8;
      if (v16 < v8)
      {
        goto LABEL_13;
      }

      v7 = v12;
      v8 = v16 - 1;
      memmove(v13, v13 + 16, 16 * v17);
      *v12 = v8;
      if (v8 <= 1)
      {
        goto LABEL_9;
      }
    }

    _Block_release(aBlock);
    *v18 = v22;
    _Block_release(aBlock);
    __break(1u);
  }
}

void sub_20DA17FB8(char **a1, int a2, uint64_t *a3, uint64_t a4, void *aBlock)
{
  v5 = aBlock;
  _Block_copy(aBlock);
  v102 = MEMORY[0x277D84F90];
  v99 = a3;
  v8 = a3[1];
  _Block_copy(v5);
  _Block_copy(v5);
  _Block_copy(v5);
  _Block_copy(v5);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    v92 = a4;
    aBlocka = v5;
    while (1)
    {
      if (v9 + 1 >= v8)
      {
        v8 = v9 + 1;
      }

      else
      {
        v11 = v10;
        v12 = 8 * v9;
        v13 = (*v99 + 8 * v9);
        v15 = *v13;
        v14 = v13 + 2;
        v16 = (*(v5 + 2))(v5, *(*v99 + 8 * (v9 + 1)), v15);
        v17 = v9 + 2;
        while (v8 != v17)
        {
          v18 = (*(v5 + 2))(v5, *v14, *(v14 - 1)) == 1;
          ++v17;
          ++v14;
          if ((((v16 != 1) ^ v18) & 1) == 0)
          {
            v8 = v17 - 1;
            break;
          }
        }

        a4 = v92;
        if (v16 != 1)
        {
          if (v8 < v9)
          {
            goto LABEL_115;
          }

          if (v9 < v8)
          {
            v19 = 8 * v8 - 8;
            v20 = v8;
            v21 = v9;
            do
            {
              if (v21 != --v20)
              {
                v23 = *v99;
                if (!*v99)
                {
                  goto LABEL_120;
                }

                v22 = *(v23 + v12);
                *(v23 + v12) = *(v23 + v19);
                *(v23 + v19) = v22;
              }

              ++v21;
              v19 -= 8;
              v12 += 8;
            }

            while (v21 < v20);
          }
        }

        v10 = v11;
      }

      v24 = v99[1];
      if (v8 >= v24)
      {
        v27 = v8;
        if (v8 < v9)
        {
          goto LABEL_113;
        }
      }

      else
      {
        if (__OFSUB__(v8, v9))
        {
          goto LABEL_114;
        }

        v25 = v8;
        if (v8 - v9 >= a4)
        {
          goto LABEL_29;
        }

        if (__OFADD__(v9, a4))
        {
          goto LABEL_116;
        }

        if (v9 + a4 >= v24)
        {
          v26 = v99[1];
        }

        else
        {
          v26 = v9 + a4;
        }

        if (v26 < v9)
        {
LABEL_117:
          __break(1u);
LABEL_118:
          _Block_release(v5);
          _Block_release(v5);
          _Block_release(v5);
          _Block_release(v5);
          _Block_release(v5);
          _Block_release(v5);
          __break(1u);
LABEL_119:
          v5 = aBlocka;
          _Block_release(aBlocka);
          _Block_release(aBlocka);
          _Block_release(aBlocka);
          _Block_release(aBlocka);
          _Block_release(aBlocka);
          _Block_release(aBlocka);
          __break(1u);
LABEL_120:
          _Block_release(v5);
          _Block_release(v5);
          _Block_release(v5);
          _Block_release(v5);
          _Block_release(v5);
          _Block_release(v5);
          __break(1u);
LABEL_121:
          _Block_release(v5);
          _Block_release(v5);
          _Block_release(v5);
          _Block_release(v5);
          _Block_release(v5);
          _Block_release(v5);
          __break(1u);
LABEL_122:
          _Block_release(v91);
          _Block_release(v5);
          _Block_release(v5);
          _Block_release(v5);
          _Block_release(v5);
          _Block_release(v5);
          __break(1u);
          return;
        }

        if (v25 == v26)
        {
LABEL_29:
          v27 = v25;
          if (v25 < v9)
          {
            goto LABEL_113;
          }
        }

        else
        {
          v97 = v10;
          v81 = *v99;
          v82 = *v99 + 8 * v25 - 8;
          v83 = v9 - v25;
          do
          {
            v84 = v25;
            v85 = *(v81 + 8 * v25);
            v86 = v83;
            v87 = v82;
            do
            {
              if ((*(v5 + 2))(v5, v85, *v87) == 1)
              {
                break;
              }

              if (!v81)
              {
                goto LABEL_118;
              }

              v88 = *v87;
              v85 = v87[1];
              *v87 = v85;
              v87[1] = v88;
              --v87;
            }

            while (!__CFADD__(v86++, 1));
            v25 = v84 + 1;
            v82 += 8;
            --v83;
          }

          while (v84 + 1 != v26);
          v27 = v26;
          v10 = v97;
          if (v26 < v9)
          {
            goto LABEL_113;
          }
        }
      }

      v94 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_20D9E014C(0, *(v10 + 2) + 1, 1, v10);
      }

      v29 = *(v10 + 2);
      v28 = *(v10 + 3);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v10 = sub_20D9E014C((v28 > 1), v29 + 1, 1, v10);
      }

      *(v10 + 2) = v30;
      v31 = v10 + 32;
      v32 = &v10[16 * v29 + 32];
      *v32 = v9;
      *(v32 + 1) = v94;
      v98 = *a1;
      if (!*a1)
      {
        goto LABEL_121;
      }

      if (v29)
      {
        v95 = v10 + 32;
        v96 = v10;
        while (1)
        {
          v33 = v30 - 1;
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v34 = *(v10 + 4);
            v35 = *(v10 + 5);
            v44 = __OFSUB__(v35, v34);
            v36 = v35 - v34;
            v37 = v44;
LABEL_52:
            if (v37)
            {
              goto LABEL_103;
            }

            v50 = &v10[16 * v30];
            v52 = *v50;
            v51 = *(v50 + 1);
            v53 = __OFSUB__(v51, v52);
            v54 = v51 - v52;
            v55 = v53;
            if (v53)
            {
              goto LABEL_105;
            }

            v56 = &v31[16 * v33];
            v58 = *v56;
            v57 = *(v56 + 1);
            v44 = __OFSUB__(v57, v58);
            v59 = v57 - v58;
            if (v44)
            {
              goto LABEL_108;
            }

            if (__OFADD__(v54, v59))
            {
              goto LABEL_110;
            }

            if (v54 + v59 >= v36)
            {
              if (v36 < v59)
              {
                v33 = v30 - 2;
              }

              goto LABEL_74;
            }

            goto LABEL_67;
          }

          if (v30 < 2)
          {
            goto LABEL_111;
          }

          v60 = &v10[16 * v30];
          v62 = *v60;
          v61 = *(v60 + 1);
          v44 = __OFSUB__(v61, v62);
          v54 = v61 - v62;
          v55 = v44;
LABEL_67:
          if (v55)
          {
            goto LABEL_107;
          }

          v63 = &v31[16 * v33];
          v65 = *v63;
          v64 = *(v63 + 1);
          v44 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v44)
          {
            goto LABEL_109;
          }

          if (v66 < v54)
          {
            goto LABEL_3;
          }

LABEL_74:
          if (v33 - 1 >= v30)
          {
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
            goto LABEL_117;
          }

          v71 = *v99;
          if (!*v99)
          {
            goto LABEL_119;
          }

          v72 = &v31[16 * v33 - 16];
          v73 = *v72;
          v74 = v33;
          v75 = &v31[16 * v33];
          v76 = *(v75 + 1);
          v77 = (v71 + 8 * *v72);
          v78 = (v71 + 8 * *v75);
          v79 = (v71 + 8 * v76);
          v5 = aBlocka;
          _Block_copy(aBlocka);
          sub_20DA17BBC(v77, v78, v79, v98, aBlocka);
          if (v101)
          {
            _Block_release(aBlocka);
            goto LABEL_96;
          }

          _Block_release(aBlocka);
          v10 = v96;
          if (v76 < v73)
          {
            goto LABEL_98;
          }

          v80 = *(v96 + 2);
          if (v74 > v80)
          {
            goto LABEL_99;
          }

          *v72 = v73;
          *(v72 + 1) = v76;
          if (v74 >= v80)
          {
            goto LABEL_100;
          }

          v30 = v80 - 1;
          memmove(v75, v75 + 16, 16 * (v80 - 1 - v74));
          *(v96 + 2) = v80 - 1;
          v5 = aBlocka;
          v31 = v95;
          if (v80 <= 2)
          {
            goto LABEL_3;
          }
        }

        v38 = &v31[16 * v30];
        v39 = *(v38 - 8);
        v40 = *(v38 - 7);
        v44 = __OFSUB__(v40, v39);
        v41 = v40 - v39;
        if (v44)
        {
          goto LABEL_101;
        }

        v43 = *(v38 - 6);
        v42 = *(v38 - 5);
        v44 = __OFSUB__(v42, v43);
        v36 = v42 - v43;
        v37 = v44;
        if (v44)
        {
          goto LABEL_102;
        }

        v45 = &v10[16 * v30];
        v47 = *v45;
        v46 = *(v45 + 1);
        v44 = __OFSUB__(v46, v47);
        v48 = v46 - v47;
        if (v44)
        {
          goto LABEL_104;
        }

        v44 = __OFADD__(v36, v48);
        v49 = v36 + v48;
        if (v44)
        {
          goto LABEL_106;
        }

        if (v49 >= v41)
        {
          v67 = &v31[16 * v33];
          v69 = *v67;
          v68 = *(v67 + 1);
          v44 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v44)
          {
            goto LABEL_112;
          }

          if (v36 < v70)
          {
            v33 = v30 - 2;
          }

          goto LABEL_74;
        }

        goto LABEL_52;
      }

LABEL_3:
      v8 = v99[1];
      v9 = v94;
      a4 = v92;
      if (v94 >= v8)
      {
        v102 = v10;
        break;
      }
    }
  }

  v90 = *a1;
  v91 = v5;
  if (!*a1)
  {
    goto LABEL_122;
  }

  _Block_copy(v5);
  sub_20DA17E00(&v102, v90, v99, v5);
  _Block_release(v5);
LABEL_96:

  _Block_release(v5);
  _Block_release(v5);
  _Block_release(v5);
  _Block_release(v5);
  _Block_release(v5);
}

void sub_20DA186A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (**a5)(void, void, void))
{
  if (a3 != a2)
  {
    v6 = a3;
    v8 = *a4;
    v9 = *a4 + 8 * a3 - 8;
    v10 = a1 - a3;
LABEL_5:
    v11 = *(v8 + 8 * v6);
    v12 = v10;
    v13 = v9;
    while (1)
    {
      if (a5[2](a5, v11, *v13) == 1)
      {
LABEL_4:
        ++v6;
        v9 += 8;
        --v10;
        if (v6 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v8)
      {
        break;
      }

      v14 = *v13;
      v11 = v13[1];
      *v13 = v11;
      v13[1] = v14;
      --v13;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_4;
      }
    }

    _Block_release(a5);
    __break(1u);
  }
}

void sub_20DA1876C(uint64_t *a1, void *aBlock)
{
  v4 = a1[1];
  _Block_copy(aBlock);
  _Block_copy(aBlock);
  v5 = sub_20DD65924();
  if (v5 >= v4)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v9 = aBlock;
      if (!v4)
      {
LABEL_11:
        _Block_release(v9);
        _Block_release(aBlock);
        return;
      }

      _Block_copy(aBlock);
      sub_20DA186A0(0, v4, 1, a1, aBlock);
      _Block_release(aBlock);
LABEL_10:
      v9 = aBlock;
      goto LABEL_11;
    }
  }

  else
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
        v8 = sub_20DD65034();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      _Block_copy(aBlock);
      sub_20DA17FB8(v10, &v11, a1, v6, aBlock);
      _Block_release(aBlock);
      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      goto LABEL_10;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_20DA188D0(uint64_t *a1, void *aBlock)
{
  v4 = *a1;
  _Block_copy(aBlock);
  _Block_copy(aBlock);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_20DA73C60(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v7[0] = v4 + 32;
  v7[1] = v6;
  _Block_copy(aBlock);
  sub_20DA1876C(v7, aBlock);
  _Block_release(aBlock);
  sub_20DD65764();
  _Block_release(aBlock);
  _Block_release(aBlock);
}

uint64_t sub_20DA18984(unint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v57 = a2;
  v7 = sub_20DD63744();
  v8 = *(v7 - 8);
  v52 = v7;
  v53 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v54 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = a4; v11; i = a4)
  {
    v12 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x20F326680](v12, a1);
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v13 = *(a1 + 8 * v12 + 32);
      }

      v14 = v13;
      a4 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v59 = v13;
      sub_20DA15AD4(&v60, &v59, a3, &v58);

      v15 = v58;
      v60 = v58;
      ++v12;
      if (a4 == v11)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    v11 = sub_20DD655B4();
  }

  v15 = MEMORY[0x277D84F98];
LABEL_15:
  v16 = [v57 hf_orderedRooms];
  sub_20D9D7510(0, &unk_280E01EE0, 0x277CD1D88);
  v17 = sub_20DD64FD4();

  v60 = MEMORY[0x277D84F90];
  v18 = i;
  v19 = v17 & 0xFFFFFFFFFFFFFF8;
  if (!(v17 >> 62))
  {
    v20 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_17;
    }

LABEL_46:
    v22 = MEMORY[0x277D84F90];
    goto LABEL_47;
  }

LABEL_45:
  v20 = sub_20DD655B4();
  if (!v20)
  {
    goto LABEL_46;
  }

LABEL_17:
  v21 = 0;
  v56 = v18 + 16;
  v57 = (v17 & 0xC000000000000001);
  ++v53;
  v22 = MEMORY[0x277D84F90];
  do
  {
    v23 = v21;
    while (1)
    {
      if (v57)
      {
        v24 = MEMORY[0x20F326680](v23, v17);
      }

      else
      {
        if (v23 >= *(v19 + 16))
        {
          goto LABEL_44;
        }

        v24 = *(v17 + 8 * v23 + 32);
      }

      v25 = v24;
      v21 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v26 = (*(v18 + 16))(v18, v24);
      if (v26)
      {
        break;
      }

      ++v23;
      if (v21 == v20)
      {
        goto LABEL_47;
      }
    }

    v50 = v20;
    v51 = v19;
    v27 = v26;
    sub_20DD64EB4();

    v28 = objc_allocWithZone(HFMutableItemSection);
    v29 = sub_20DD64E74();

    v30 = [v28 initWithIdentifier_];

    v31 = [v25 hf_reorderableServicesList];
    v32 = [v31 sortedHomeKitItemComparator];

    _Block_copy(v32);
    v33 = [v25 uniqueIdentifier];
    v34 = v54;
    sub_20DD63714();

    if (*(v15 + 16) && (v35 = sub_20D9CB38C(v34), (v36 & 1) != 0))
    {
      v37 = *(*(v15 + 56) + 8 * v35);
      v38 = *v53;

      v38(v54, v52);
    }

    else
    {
      (*v53)(v34, v52);
      v37 = MEMORY[0x277D84F90];
    }

    if (v37 >> 62)
    {
      v43 = sub_20DD655B4();
      if (v43)
      {
        v44 = v43;
        v39 = sub_20D9EF64C(v43, 0);

        sub_20DA16F60(v39 + 32, v44, v37);
        v49 = v45;

        if (v49 != v44)
        {
          __break(1u);
          _Block_release(v32);
          _Block_release(v32);

          __break(1u);
          return result;
        }
      }

      else
      {
        v39 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v39 = (v37 & 0xFFFFFFFFFFFFFF8);
    }

    v59 = v39;
    _Block_copy(v32);
    sub_20DA188D0(&v59, v32);
    _Block_release(v32);

    sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
    v40 = sub_20DD64FB4();

    [v30 setItems_];

    v41 = [v25 name];
    if (!v41)
    {
      sub_20DD64EB4();
      v41 = sub_20DD64E74();
    }

    [v30 setHeaderTitle_];

    v42 = v30;
    MEMORY[0x20F325F00]();
    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v46 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_20DD65014();
    }

    sub_20DD65054();

    _Block_release(v32);
    _Block_release(v32);

    v22 = v60;
    v20 = v50;
    v19 = v51;
    v18 = i;
  }

  while (v21 != v50);
LABEL_47:

  return v22;
}

uint64_t sub_20DA18F80(void **__src, void **__dst, void **a3, void **a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v5 = a4;
  v6 = a3;
  v7 = __dst;
  v8 = __src;
  v9 = __dst - __src;
  v10 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v10 = __dst - __src;
  }

  v11 = v10 >> 3;
  v12 = a3 - __dst;
  v13 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v13 = a3 - __dst;
  }

  v14 = v13 >> 3;
  if (v11 >= v13 >> 3)
  {
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, 8 * v14);
      v7 = __dst;
    }

    v51 = &v5[v14];
    if (v12 < 8)
    {
      v28 = v7;
      goto LABEL_39;
    }

    v30 = v7;
    if (v7 <= v8)
    {
      v28 = v7;
      goto LABEL_39;
    }

    v43 = v8;
    v45 = sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
    do
    {
      v44 = v30;
      v31 = v30 - 1;
      --v6;
      v32 = v51;
      while (1)
      {
        v33 = v5;
        v34 = *--v32;
        v35 = v6 + 1;
        v8 = v31;
        v36 = *v31;
        v50 = v45;
        v48 = v45;
        v49[0] = v34;
        v47[0] = v36;
        v37 = v34;
        v38 = v36;
        v39 = v37;
        v40 = v38;
        v41 = a5(v49, v47);
        __swift_destroy_boxed_opaque_existential_0(v47);
        __swift_destroy_boxed_opaque_existential_0(v49);

        if (v41 != 1)
        {
          break;
        }

        v5 = v33;
        if (v35 != v51)
        {
          *v6 = *v32;
        }

        --v6;
        v51 = v32;
        v31 = v8;
        if (v32 <= v33)
        {
          v51 = v32;
          v28 = v44;
          goto LABEL_39;
        }
      }

      v5 = v33;
      if (v35 != v44)
      {
        *v6 = *v8;
      }

      if (v51 <= v33)
      {
        break;
      }

      v30 = v8;
    }

    while (v8 > v43);
    goto LABEL_35;
  }

  if (a4 != __src || &__src[v11] <= a4)
  {
    memmove(a4, __src, 8 * v11);
    v7 = __dst;
  }

  v51 = &v5[v11];
  if (v9 < 8 || v7 >= v6)
  {
LABEL_35:
    v28 = v8;
    goto LABEL_39;
  }

  v16 = v7;
  v17 = sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
  do
  {
    v18 = *v16;
    v19 = *v5;
    v50 = v17;
    v48 = v17;
    v49[0] = v18;
    v47[0] = v19;
    v20 = v5;
    v21 = v18;
    v22 = v19;
    v23 = v21;
    v24 = v22;
    v25 = a5(v49, v47);
    __swift_destroy_boxed_opaque_existential_0(v47);
    __swift_destroy_boxed_opaque_existential_0(v49);

    if (v25 == 1)
    {
      v26 = v20;
      v5 = v20 + 1;
      if (v8 == v20)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v8 = *v26;
      goto LABEL_17;
    }

    v26 = v16;
    v27 = v8 == v16++;
    v5 = v20;
    if (!v27)
    {
      goto LABEL_16;
    }

LABEL_17:
    ++v8;
  }

  while (v5 < v51 && v16 < v6);
  v28 = v8;
LABEL_39:
  if (v28 != v5 || v28 >= (v5 + ((v51 - v5 + (v51 - v5 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v28, v5, 8 * (v51 - v5));
  }

  return 1;
}

uint64_t sub_20DA19304(void **a1, void **a2, uint64_t *a3, uint64_t (*a4)(uint64_t *, uint64_t *))
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v25 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v25 = sub_20DA73550(v25);
  }

  v21 = v6;
  *v6 = v25;
  v8 = v25 + 16;
  v9 = *(v25 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v21 = v25;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v25[16 * v9];
      v13 = *v12;
      v14 = v8;
      v15 = &v8[16 * v9];
      v16 = *(v15 + 1);
      __src = (v10 + 8 * *v12);
      v17 = (v10 + 8 * *v15);
      v6 = (v10 + 8 * v16);

      sub_20DA18F80(__src, v17, v6, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v21 = v25;

        return 1;
      }

      if (v16 < v13)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v18 = *v14;
      if (v9 - 2 >= *v14)
      {
        goto LABEL_13;
      }

      *v12 = v13;
      *(v12 + 1) = v16;
      v19 = v18 - v9;
      if (v18 < v9)
      {
        goto LABEL_14;
      }

      v8 = v14;
      v9 = v18 - 1;
      memmove(v15, v15 + 16, 16 * v19);
      *v14 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v21 = v25;
    __break(1u);
  }

  return result;
}

uint64_t sub_20DA194AC(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v6 = v5;
  v131 = MEMORY[0x277D84F90];
  v7 = a3[1];
  if (v7 >= 1)
  {
    swift_retain_n();
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = v8;
      v11 = v8 + 1;
      if (v8 + 1 < v7)
      {
        v112 = v6;
        v12 = *(*a3 + 8 * v11);
        v13 = 8 * v8;
        v14 = (*a3 + 8 * v8);
        v16 = *v14;
        v15 = v14 + 2;
        v115 = v8;
        v17 = sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
        v130 = v17;
        v129[0] = v12;
        v128 = v17;
        v127[0] = v16;
        v18 = v12;
        v19 = v16;
        v20 = v18;
        v21 = v19;
        v122 = a5(v129, v127);
        __swift_destroy_boxed_opaque_existential_0(v127);
        __swift_destroy_boxed_opaque_existential_0(v129);

        v22 = v115 + 2;
        while (1)
        {
          v23 = v7;
          if (v7 == v22)
          {
            break;
          }

          v25 = *(v15 - 1);
          v24 = *v15;
          v130 = v17;
          v129[0] = v24;
          v128 = v17;
          v127[0] = v25;
          v26 = v24;
          v27 = v25;
          v28 = v26;
          v29 = v27;
          v30 = a5(v129, v127);
          __swift_destroy_boxed_opaque_existential_0(v127);
          __swift_destroy_boxed_opaque_existential_0(v129);

          ++v22;
          ++v15;
          if ((v122 != 1) == (v30 == 1))
          {
            v23 = v22 - 1;
            break;
          }
        }

        v6 = v112;
        v10 = v115;
        if (v122 != 1)
        {
          if (v23 < v115)
          {
            goto LABEL_117;
          }

          if (v115 < v23)
          {
            v31 = 8 * v23 - 8;
            v32 = v23;
            v33 = v115;
            do
            {
              if (v33 != --v32)
              {
                v35 = *a3;
                if (!*a3)
                {
                  goto LABEL_122;
                }

                v34 = *(v35 + v13);
                *(v35 + v13) = *(v35 + v31);
                *(v35 + v31) = v34;
              }

              ++v33;
              v31 -= 8;
              v13 += 8;
            }

            while (v33 < v32);
          }
        }

        v11 = v23;
      }

      v36 = a3[1];
      if (v11 < v36)
      {
        v37 = v11;
        v56 = __OFSUB__(v11, v10);
        v38 = v11 - v10;
        if (v56)
        {
          goto LABEL_116;
        }

        if (v38 < a4)
        {
          if (__OFADD__(v10, a4))
          {
            goto LABEL_118;
          }

          if (v10 + a4 >= v36)
          {
            v39 = a3[1];
          }

          else
          {
            v39 = v10 + a4;
          }

          if (v39 < v10)
          {
LABEL_119:
            __break(1u);
LABEL_120:

            __break(1u);
LABEL_121:

            __break(1u);
LABEL_122:

            __break(1u);
LABEL_123:

            __break(1u);
            goto LABEL_124;
          }

          if (v37 != v39)
          {
            v113 = v6;
            v94 = *a3;
            v95 = sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
            v96 = v94 + 8 * v37 - 8;
            v97 = v37;
            v116 = v10;
            v118 = v39;
            v98 = v10 - v37;
            do
            {
              v124 = v97;
              v99 = *(v94 + 8 * v97);
              v100 = v98;
              v120 = v96;
              do
              {
                v101 = *v96;
                v130 = v95;
                v129[0] = v99;
                v128 = v95;
                v127[0] = v101;
                v102 = v99;
                v103 = v101;
                v104 = v102;
                v105 = v103;
                v106 = a5(v129, v127);
                __swift_destroy_boxed_opaque_existential_0(v127);
                __swift_destroy_boxed_opaque_existential_0(v129);

                if (v106 == 1)
                {
                  break;
                }

                if (!v94)
                {
                  goto LABEL_120;
                }

                v107 = *v96;
                v99 = *(v96 + 8);
                *v96 = v99;
                *(v96 + 8) = v107;
                v96 -= 8;
              }

              while (!__CFADD__(v100++, 1));
              v97 = v124 + 1;
              v96 = v120 + 8;
              --v98;
            }

            while (v124 + 1 != v118);
            v11 = v118;
            v6 = v113;
            v10 = v116;
            if (v118 < v116)
            {
              goto LABEL_115;
            }

            goto LABEL_30;
          }
        }

        v11 = v37;
      }

      if (v11 < v10)
      {
        goto LABEL_115;
      }

LABEL_30:
      v123 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_20D9E014C(0, *(v9 + 2) + 1, 1, v9);
      }

      v41 = *(v9 + 2);
      v40 = *(v9 + 3);
      v42 = v41 + 1;
      if (v41 >= v40 >> 1)
      {
        v9 = sub_20D9E014C((v40 > 1), v41 + 1, 1, v9);
      }

      *(v9 + 2) = v42;
      v43 = v9 + 32;
      v44 = &v9[16 * v41 + 32];
      *v44 = v10;
      *(v44 + 1) = v123;
      v119 = *a1;
      if (!*a1)
      {
        goto LABEL_123;
      }

      if (v41)
      {
        v117 = v9 + 32;
        v121 = v9;
        while (1)
        {
          v45 = v42 - 1;
          if (v42 >= 4)
          {
            break;
          }

          if (v42 == 3)
          {
            v46 = *(v9 + 4);
            v47 = *(v9 + 5);
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_50:
            if (v49)
            {
              goto LABEL_105;
            }

            v62 = &v9[16 * v42];
            v64 = *v62;
            v63 = *(v62 + 1);
            v65 = __OFSUB__(v63, v64);
            v66 = v63 - v64;
            v67 = v65;
            if (v65)
            {
              goto LABEL_107;
            }

            v68 = &v43[16 * v45];
            v70 = *v68;
            v69 = *(v68 + 1);
            v56 = __OFSUB__(v69, v70);
            v71 = v69 - v70;
            if (v56)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v66, v71))
            {
              goto LABEL_112;
            }

            if (v66 + v71 >= v48)
            {
              if (v48 < v71)
              {
                v45 = v42 - 2;
              }

              goto LABEL_72;
            }

            goto LABEL_65;
          }

          if (v42 < 2)
          {
            goto LABEL_113;
          }

          v72 = &v9[16 * v42];
          v74 = *v72;
          v73 = *(v72 + 1);
          v56 = __OFSUB__(v73, v74);
          v66 = v73 - v74;
          v67 = v56;
LABEL_65:
          if (v67)
          {
            goto LABEL_109;
          }

          v75 = &v43[16 * v45];
          v77 = *v75;
          v76 = *(v75 + 1);
          v56 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v56)
          {
            goto LABEL_111;
          }

          if (v78 < v66)
          {
            goto LABEL_3;
          }

LABEL_72:
          if (v45 - 1 >= v42)
          {
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
            goto LABEL_119;
          }

          v83 = *a3;
          if (!*a3)
          {
            goto LABEL_121;
          }

          v84 = v6;
          v85 = &v43[16 * v45 - 16];
          v86 = *v85;
          v87 = v45;
          v88 = &v43[16 * v45];
          v89 = *(v88 + 1);
          v90 = (v83 + 8 * *v85);
          v91 = (v83 + 8 * *v88);
          v92 = (v83 + 8 * v89);

          sub_20DA18F80(v90, v91, v92, v119, a5);
          v6 = v84;
          if (v84)
          {

            v131 = v121;
            goto LABEL_95;
          }

          v9 = v121;
          if (v89 < v86)
          {
            goto LABEL_100;
          }

          v93 = *(v121 + 2);
          if (v87 > v93)
          {
            goto LABEL_101;
          }

          *v85 = v86;
          *(v85 + 1) = v89;
          if (v87 >= v93)
          {
            goto LABEL_102;
          }

          v42 = v93 - 1;
          memmove(v88, v88 + 16, 16 * (v93 - 1 - v87));
          *(v121 + 2) = v93 - 1;
          v43 = v117;
          if (v93 <= 2)
          {
            goto LABEL_3;
          }
        }

        v50 = &v43[16 * v42];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_103;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_104;
        }

        v57 = &v9[16 * v42];
        v59 = *v57;
        v58 = *(v57 + 1);
        v56 = __OFSUB__(v58, v59);
        v60 = v58 - v59;
        if (v56)
        {
          goto LABEL_106;
        }

        v56 = __OFADD__(v48, v60);
        v61 = v48 + v60;
        if (v56)
        {
          goto LABEL_108;
        }

        if (v61 >= v53)
        {
          v79 = &v43[16 * v45];
          v81 = *v79;
          v80 = *(v79 + 1);
          v56 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v56)
          {
            goto LABEL_114;
          }

          if (v48 < v82)
          {
            v45 = v42 - 2;
          }

          goto LABEL_72;
        }

        goto LABEL_50;
      }

LABEL_3:
      v8 = v123;
      v7 = a3[1];
      if (v123 >= v7)
      {
        v131 = v9;
        goto LABEL_92;
      }
    }
  }

  swift_retain_n();
LABEL_92:
  v109 = *a1;
  if (*a1)
  {

    sub_20DA19304(&v131, v109, a3, a5);
    if (v6)
    {

LABEL_95:
    }

    else
    {
    }
  }

  else
  {
LABEL_124:

    __break(1u);
  }

  return result;
}

void sub_20DA19C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  if (a3 != a2)
  {
    v6 = a3;
    v8 = *a4;
    v9 = sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
    v10 = v8 + 8 * v6 - 8;
    v11 = a1 - v6;
LABEL_5:
    v27 = v6;
    v12 = *(v8 + 8 * v6);
    v23 = v11;
    v24 = v10;
    v13 = v10;
    while (1)
    {
      v14 = *v13;
      v26[3] = v9;
      v25[3] = v9;
      v26[0] = v12;
      v25[0] = v14;
      v15 = v12;
      v16 = v14;
      v17 = v15;
      v18 = v16;
      v19 = a5(v26, v25);
      __swift_destroy_boxed_opaque_existential_0(v25);
      __swift_destroy_boxed_opaque_existential_0(v26);

      if (v19 == 1)
      {
LABEL_4:
        v6 = v27 + 1;
        v10 = v24 + 8;
        v11 = v23 - 1;
        if (v27 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v8)
      {
        break;
      }

      v20 = *v13;
      v12 = *(v13 + 8);
      *v13 = v12;
      *(v13 + 8) = v20;
      v13 -= 8;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_20DA19D60(uint64_t *a1, uint64_t (*a2)(uint64_t *, uint64_t *))
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_20DD65924();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
        v8 = sub_20DD65034();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v9[1] = v7;

      sub_20DA194AC(v9, v10, a1, v6, a2);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_20DA19C1C(0, v4, 1, a1, a2);
  }
}

uint64_t sub_20DA19ED8(uint64_t *a1, uint64_t (*a2)(uint64_t *, uint64_t *))
{
  v4 = *a1;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_20DA73C60(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  sub_20DA19D60(v8, a2);

  sub_20DD65764();
}

uint64_t sub_20DA19F94(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v60 = a3;
  v64 = MEMORY[0x277D84F98];
  v63 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_48;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v4)
  {
    v5 = 0;
    v55 = v3 & 0xC000000000000001;
    v52 = v3 & 0xFFFFFFFFFFFFFF8;
    v53 = v3;
    v51 = (v3 + 4);
    v6 = MEMORY[0x277D84F98];
    v50 = xmmword_20DD940A0;
    v54 = v4;
    while (1)
    {
      if (v55)
      {
        v9 = MEMORY[0x20F326680](v5, v53);
      }

      else
      {
        if (v5 >= *(v52 + 16))
        {
          goto LABEL_47;
        }

        v9 = v51[v5];
      }

      v10 = v9;
      v11 = __OFADD__(v5, 1);
      v12 = v5 + 1;
      if (v11)
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        v4 = sub_20DD655B4();
        goto LABEL_3;
      }

      v3 = [ObjCClassFromMetadata sortedAccessoryTypeGroups];
      sub_20D9D7510(0, &unk_280E020A0, off_277DEF390);
      v13 = sub_20DD64FD4();

      v57 = v6;
      v58 = v12;
      if (v13 >> 62)
      {
        v14 = sub_20DD655B4();
        if (v14)
        {
LABEL_14:
          v15 = 0;
          while (1)
          {
            if ((v13 & 0xC000000000000001) != 0)
            {
              v16 = MEMORY[0x20F326680](v15, v13);
            }

            else
            {
              if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_45;
              }

              v16 = *(v13 + 8 * v15 + 32);
            }

            v17 = v16;
            v18 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
LABEL_45:
              __break(1u);
              goto LABEL_46;
            }

            v19 = [v10 accessoryRepresentableObject];
            swift_getObjectType();
            v20 = HFAccessoryRepresentable.accessoryType.getter();
            swift_unknownObjectRelease();
            v3 = [v17 containsType_];

            if (v3)
            {
              break;
            }

            ++v15;
            if (v18 == v14)
            {
              goto LABEL_29;
            }
          }

          if (v57[2] && (v21 = sub_20D9CB6DC(v17), (v22 & 1) != 0))
          {
            v62 = *(v57[7] + 8 * v21);
            v23 = v10;

            MEMORY[0x20F325F00](v24);
            if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v29 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_20DD65014();
            }

            sub_20DD65054();
            v25 = v62;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v61[0] = v57;
            v3 = v61;
            sub_20D9D1160(v25, v17, isUniquelyReferenced_nonNull_native);

            v6 = v61[0];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
            v7 = swift_allocObject();
            *(v7 + 16) = xmmword_20DD940A0;
            *(v7 + 32) = v10;
            v8 = swift_isUniquelyReferenced_nonNull_native();
            v62 = v57;
            v3 = &v62;
            sub_20D9D1160(v7, v17, v8);

            v6 = v62;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
          goto LABEL_14;
        }
      }

LABEL_29:

      v27 = v10;
      v3 = &v63;
      MEMORY[0x20F325F00]();
      if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v28 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_20DD65014();
      }

      sub_20DD65054();

      v6 = v57;
LABEL_6:
      v5 = v58;
      if (v58 == v54)
      {
        v64 = v6;
        break;
      }
    }
  }

  v62 = 0;
  v30 = [ObjCClassFromMetadata sortedAccessoryTypeGroups];
  sub_20D9D7510(0, &unk_280E020A0, off_277DEF390);
  v31 = sub_20DD64FD4();

  v32 = sub_20DA17480(v31, sub_20DA1A7B8, v59, &v64, &v63, &v62);

  v33 = v63;
  if (v63 >> 62)
  {
    if (!sub_20DD655B4())
    {
      goto LABEL_43;
    }
  }

  else if (!*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_43;
  }

  v34 = sub_20DD65384();
  sub_20D9D7510(0, &qword_280E01EC0, 0x277D86200);
  v35 = sub_20DD65474();
  if (!os_log_type_enabled(v35, v34))
  {

    v39 = v62;
    if (!v62)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v36 = swift_slowAlloc();
  v37 = swift_slowAlloc();
  v61[0] = v37;
  *v36 = 136315650;
  *(v36 + 4) = sub_20D9E0B38(0xD000000000000040, 0x800000020DD98A80, v61);
  *(v36 + 12) = 2048;
  if (v33 >> 62)
  {
    v38 = sub_20DD655B4();
  }

  else
  {
    v38 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v36 + 14) = v38;
  *(v36 + 22) = 2080;
  v40 = sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);

  v42 = MEMORY[0x20F325F40](v41, v40);
  v44 = v43;

  v45 = sub_20D9E0B38(v42, v44, v61);

  *(v36 + 24) = v45;
  _os_log_impl(&dword_20D9BF000, v35, v34, "%s Found %ld item(s) without an identified category: %s", v36, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x20F327D10](v37, -1, -1);
  MEMORY[0x20F327D10](v36, -1, -1);

  v39 = v62;
  if (v62)
  {
LABEL_42:
    sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);

    v46 = v39;
    v47 = sub_20DD64FB4();

    [v46 setItems_];
  }

LABEL_43:
  v48 = v62;

  return v32;
}

uint64_t _sSo24HFAccessoryListUtilitiesC4HomeE25sortedAccessoryTypeGroupsSaySo0aG5GroupCGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20DD949A0;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 climateAccessoryTypeGroup];
  *(v0 + 40) = [v1 lightAccessoryTypeGroup];
  *(v0 + 48) = [v1 securityAccessoryTypeGroup];
  *(v0 + 56) = [v1 mediaAccessoryTypeGroup];
  *(v0 + 64) = [v1 waterAccessoryTypeGroup];
  v2 = [v1 otherAccessoryTypeGroup];
  MEMORY[0x20F325F00]();
  if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v4 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_20DD65014();
  }

  sub_20DD65054();
  return v0;
}

unint64_t sub_20DA1A7C0()
{
  result = qword_280E01F58;
  if (!qword_280E01F58)
  {
    sub_20D9D7510(255, &qword_280E01F60, off_277DEF2B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E01F58);
  }

  return result;
}

uint64_t sub_20DA1A828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HFEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DA1A88C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844198, &qword_20DD949D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DA1A8FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HFEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DA1A960(uint64_t a1)
{
  v2 = type metadata accessor for HFEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20DA1A9BC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_20DA1AA10(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t HFItemManager.firstFastUpdate<A>()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = sub_20DD650F4();
  v2[6] = sub_20DD650E4();
  v4 = sub_20DD65094();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_20DA1AB38, v4, v3);
}

uint64_t sub_20DA1AB38()
{
  v1 = *(v0 + 40);
  v9 = *(v0 + 24);
  v2 = sub_20DD650E4();
  *(v0 + 72) = v2;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *(v3 + 16) = v9;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  swift_getWitnessTable();
  v6 = sub_20DD652C4();
  *v5 = v0;
  v5[1] = sub_20DA1AC84;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v0 + 16, v2, v7, 0xD000000000000011, 0x800000020DD98BD0, sub_20DA1AE88, v3, v6);
}

uint64_t sub_20DA1AC84()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v10 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_20DA1AE10;
  }

  else
  {
    v7 = v2[9];
    v8 = v2[10];

    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_20DA1ADA8;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_20DA1ADA8()
{
  v1 = v0[6];

  v2 = v0[2];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_20DA1AE10()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[12];

  return v4();
}

uint64_t HFItemManager.firstFullUpdate<A>()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = sub_20DD650F4();
  v2[6] = sub_20DD650E4();
  v4 = sub_20DD65094();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_20DA1AF6C, v4, v3);
}

uint64_t sub_20DA1AF6C()
{
  v1 = *(v0 + 40);
  v9 = *(v0 + 24);
  v2 = sub_20DD650E4();
  *(v0 + 72) = v2;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *(v3 + 16) = v9;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  swift_getWitnessTable();
  v6 = sub_20DD652C4();
  *v5 = v0;
  v5[1] = sub_20DA1B0B8;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v0 + 16, v2, v7, 0xD000000000000011, 0x800000020DD98BF0, sub_20DA1B408, v3, v6);
}

uint64_t sub_20DA1B0B8()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v10 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_20DA1B7A8;
  }

  else
  {
    v7 = v2[9];
    v8 = v2[10];

    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_20DA1B7A4;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

void sub_20DA1B1DC(uint64_t a1, void *a2, uint64_t a3, SEL *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a7;
  swift_getWitnessTable();
  sub_20DD652C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8443A0, &qword_20DD94E00);
  v12 = sub_20DD650C4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  v17 = [a2 *a4];
  (*(v13 + 16))(v16, a1, v12);
  v18 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  (*(v13 + 32))(v19 + v18, v16, v12);
  aBlock[4] = a6;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20DA1AA10;
  aBlock[3] = v23;
  v20 = _Block_copy(aBlock);

  v21 = [v17 addCompletionBlock_];
  _Block_release(v20);
}

uint64_t sub_20DA1B450(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    swift_getWitnessTable();
    sub_20DD652C4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8443A0, &qword_20DD94E00);
    sub_20DD650C4();
    return sub_20DD650A4();
  }

  else
  {
    if (a1)
    {
      v4 = a1;
      swift_getWitnessTable();
      sub_20DD65244();
    }

    else
    {
      swift_getWitnessTable();
      sub_20DD64DA4();
    }

    sub_20DD652C4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8443A0, &qword_20DD94E00);
    sub_20DD650C4();
    return sub_20DD650B4();
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_getWitnessTable();
  sub_20DD652C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8443A0, &qword_20DD94E00);
  v2 = sub_20DD650C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_20DA1B6C8(void *a1, void *a2)
{
  v5 = *(v2 + 16);
  swift_getWitnessTable();
  sub_20DD652C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8443A0, &qword_20DD94E00);
  v6 = *(*(sub_20DD650C4() - 8) + 80);
  return sub_20DA1B450(a1, a2);
}

id HomeDashboardReorderableItemList.__allocating_init(applicationDataContainer:category:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_20DD64E74();

  v5 = [v3 initWithApplicationDataContainer:a1 category:v4];
  swift_unknownObjectRelease();

  return v5;
}

char *HomeDashboardReorderableItemList.init(applicationDataContainer:category:)(uint64_t a1)
{
  v3 = sub_20DD63744();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20DD64E74();

  v9 = type metadata accessor for HomeDashboardReorderableItemList();
  v42.receiver = v1;
  v42.super_class = v9;
  v10 = objc_msgSendSuper2(&v42, sel_initWithApplicationDataContainer_category_, a1, v8);

  v11 = OBJC_IVAR___HFReorderableItemList_sortedIdentifiers;
  swift_beginAccess();
  if (*(*&v10[v11] + 16) || (objc_opt_self(), (v12 = swift_dynamicCastObjCClass()) == 0))
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = [v12 hf_reorderableRoomsList];
    v14 = [v13 sortedHomeKitObjectIdentifiers];

    v15 = sub_20DD64FD4();
    v16 = *(v15 + 16);
    if (v16)
    {
      v34 = v11;
      v35 = v10;
      v40 = v7;
      v36 = a1;
      v41 = MEMORY[0x277D84F90];
      sub_20DA4AF84(0, v16, 0);
      v17 = v41;
      v19 = *(v4 + 16);
      v18 = v4 + 16;
      v20 = *(v18 + 64);
      v33 = v15;
      v21 = v15 + ((v20 + 32) & ~v20);
      v38 = *(v18 + 56);
      v39 = v19;
      v37 = (v18 - 8);
      do
      {
        v22 = v40;
        v23 = v18;
        v39(v40, v21, v3);
        v24 = sub_20DD636E4();
        v26 = v25;
        v27 = v3;
        (*v37)(v22, v3);
        v41 = v17;
        v29 = *(v17 + 16);
        v28 = *(v17 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_20DA4AF84((v28 > 1), v29 + 1, 1);
          v17 = v41;
        }

        *(v17 + 16) = v29 + 1;
        v30 = v17 + 16 * v29;
        *(v30 + 32) = v24;
        *(v30 + 40) = v26;
        v21 += v38;
        --v16;
        v3 = v27;
        v18 = v23;
      }

      while (v16);
      swift_unknownObjectRelease();

      v11 = v34;
      v10 = v35;
    }

    else
    {
      swift_unknownObjectRelease();

      v17 = MEMORY[0x277D84F90];
    }

    v31 = *&v10[v11];
    *&v10[v11] = v17;
  }

  return v10;
}

uint64_t sub_20DA1BB98()
{
  sub_20D9C8A28();
  v0 = sub_20DD654C4();
  v2 = v1;
  v3 = sub_20DD654C4();
  v5 = v4;
  v6 = sub_20DA48C3C(v0, v2, v3, v4);
  if (v6 == 2)
  {
    v6 = sub_20DA06210(v0, v2, v3, v5);
    if (v6 == 2)
    {
      v6 = sub_20DA1BD24();
    }
  }

  v7 = v6;

  return v7;
}

uint64_t sub_20DA1BD24()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v40 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v40 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v40 - v13;
  if (![v1 applicationDataContainer])
  {
    return 2;
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {
    swift_unknownObjectRelease();
    return 2;
  }

  v40 = v15;
  sub_20DD636D4();
  v16 = v12;
  sub_20DD636D4();
  v17 = sub_20DD63744();
  v18 = *(v17 - 8);
  v19 = v14;
  v20 = *(v18 + 48);
  v21 = v20(v19, 1, v17);
  v41 = v19;
  if (v21 == 1)
  {
    if (v20(v12, 1, v17) != 1)
    {
      v22 = 0;
      v23 = 0;
      goto LABEL_13;
    }

LABEL_11:
    swift_unknownObjectRelease();
    v24 = 2;
    v31 = v41;
LABEL_27:
    sub_20D9C9040(v16);
    sub_20D9C9040(v31);
    return v24;
  }

  sub_20D9C90A8(v19, v9);
  result = v20(v9, 1, v17);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_30;
  }

  v26 = sub_20DD636F4();
  (*(v18 + 8))(v9, v17);
  v27 = [v40 hf:v26 roomWithIdentifier:?];

  v28 = [v27 hf_displayName];
  v29 = sub_20DD64EB4();
  v22 = v30;

  v16 = v12;
  if (v20(v12, 1, v17) == 1)
  {
    if (v22)
    {
LABEL_22:
      swift_unknownObjectRelease();

      v24 = 1;
      v31 = v41;
      goto LABEL_27;
    }

    goto LABEL_11;
  }

  v23 = v29;
LABEL_13:
  sub_20D9C90A8(v16, v6);
  result = v20(v6, 1, v17);
  if (result != 1)
  {
    v32 = sub_20DD636F4();
    (*(v18 + 8))(v6, v17);
    v33 = [v40 hf:v32 roomWithIdentifier:?];

    v34 = [v33 hf_displayName];
    v35 = sub_20DD64EB4();
    v37 = v36;

    v31 = v41;
    if (!v22)
    {
      swift_unknownObjectRelease();
      if (v37)
      {

        v24 = 0;
      }

      else
      {
        v24 = 2;
      }

      goto LABEL_27;
    }

    if (v37)
    {
      v38 = v23 == v35 && v22 == v37;
      if (v38 || (sub_20DD65974() & 1) != 0)
      {

        swift_unknownObjectRelease();
        v24 = 2;
      }

      else
      {
        v39 = sub_20DD65974();

        swift_unknownObjectRelease();
        v24 = v39 & 1;
      }

      goto LABEL_27;
    }

    goto LABEL_22;
  }

LABEL_30:
  __break(1u);
  return result;
}

id HomeDashboardReorderableItemList.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeDashboardReorderableItemList();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20DA1C200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_20D9D7558(a3, v27 - v11, &qword_27C8443F0, &qword_20DD93820);
  v13 = sub_20DD65114();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_20D9D76EC(v12, &qword_27C8443F0, &qword_20DD93820);
  }

  else
  {
    sub_20DD65104();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_20DD65094();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_20DD64EF4() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844278, &qword_20DD94AF0);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_20D9D76EC(a3, &qword_27C8443F0, &qword_20DD93820);

      return v24;
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

  sub_20D9D76EC(a3, &qword_27C8443F0, &qword_20DD93820);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844278, &qword_20DD94AF0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_20DA1C514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_20D9D7558(a3, v27 - v11, &qword_27C8443F0, &qword_20DD93820);
  v13 = sub_20DD65114();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_20D9D76EC(v12, &qword_27C8443F0, &qword_20DD93820);
  }

  else
  {
    sub_20DD65104();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_20DD65094();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_20DD64EF4() + 32;
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

      sub_20D9D76EC(a3, &qword_27C8443F0, &qword_20DD93820);

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

  sub_20D9D76EC(a3, &qword_27C8443F0, &qword_20DD93820);
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

uint64_t sub_20DA1C814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_20D9D7558(a3, v27 - v11, &qword_27C8443F0, &qword_20DD93820);
  v13 = sub_20DD65114();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_20D9D76EC(v12, &qword_27C8443F0, &qword_20DD93820);
  }

  else
  {
    sub_20DD65104();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_20DD65094();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_20DD64EF4() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844280, &qword_20DD94B28);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_20D9D76EC(a3, &qword_27C8443F0, &qword_20DD93820);

      return v24;
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

  sub_20D9D76EC(a3, &qword_27C8443F0, &qword_20DD93820);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844280, &qword_20DD94B28);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_20DA1CB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_20D9D7558(a3, v27 - v11, &qword_27C8443F0, &qword_20DD93820);
  v13 = sub_20DD65114();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_20D9D76EC(v12, &qword_27C8443F0, &qword_20DD93820);
  }

  else
  {
    sub_20DD65104();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_20DD65094();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_20DD64EF4() + 32;
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

      sub_20D9D76EC(a3, &qword_27C8443F0, &qword_20DD93820);

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

  sub_20D9D76EC(a3, &qword_27C8443F0, &qword_20DD93820);
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

unint64_t sub_20DA1CE20()
{
  type metadata accessor for HFPredictionsManager.AnalyticsScoringCache();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = MEMORY[0x277D84F90];
  v0[14] = sub_20D9D59F0(MEMORY[0x277D84F90]);
  result = sub_20D9D5BD8(v1);
  v3 = MEMORY[0x277D84F98];
  v0[15] = result;
  v0[16] = v3;
  qword_280E01F70 = v0;
  return result;
}

uint64_t static HFPredictionsManager.analyticsLatestScoresCache.getter()
{
  if (qword_280E01F68 != -1)
  {
    swift_once();
  }
}

Swift::Void __swiftcall HFPredictionsManager.submitPredictionsFetchEvent(duration:numberOfPredictions:receivedBeforeModuleFreeze:)(Swift::Double duration, Swift::UInt numberOfPredictions, Swift::Bool receivedBeforeModuleFreeze)
{
  v4 = v3;
  if ([v4 submitsAnalytics])
  {
    v8 = receivedBeforeModuleFreeze;
    v9 = [objc_opt_self() processInfo];
    v10 = [v9 processName];

    v11 = sub_20DD64EB4();
    v13 = v12;

    *&v14 = 0xD000000000000019;
    *(&v14 + 1) = 0x800000020DD98C40;
    *&v15 = 0xD00000000000001CLL;
    *(&v15 + 1) = 0x800000020DD98C60;
    *&v16 = duration * 1000.0;
    *(&v16 + 1) = numberOfPredictions;
    *&v17 = v11;
    *(&v17 + 1) = v13;
    sub_20DA1D034();
    sub_20DD63F44();
    v18[2] = v16;
    v18[3] = v17;
    v19 = v8;
    v18[0] = v14;
    v18[1] = v15;
    sub_20DA1D088(v18);
  }
}

unint64_t sub_20DA1D034()
{
  result = qword_280E02178;
  if (!qword_280E02178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E02178);
  }

  return result;
}

unint64_t sub_20DA1D190()
{
  result = qword_27C8441F0;
  if (!qword_27C8441F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8441F0);
  }

  return result;
}

Swift::Void __swiftcall HFPredictionsManager.saveAnalyticsScores(for:)(Swift::OpaquePointer a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  if ([v1 submitsAnalytics])
  {
    v8 = sub_20DD65114();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2]._rawValue = 0;
    v9[3]._rawValue = 0;
    v9[4]._rawValue = a1._rawValue;
    v9[5]._rawValue = v1;
    v9[6]._rawValue = ObjectType;

    v10 = v1;
    sub_20DA1C514(0, 0, v7, &unk_20DD94A50, v9);
  }
}

uint64_t sub_20DA1D368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_20DD64C44();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = sub_20DD63744();
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();
  v12 = sub_20DD64544();
  v5[10] = v12;
  v13 = *(v12 - 8);
  v5[11] = v13;
  v14 = *(v13 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA1D4EC, 0, 0);
}

uint64_t sub_20DA1D4EC()
{
  v1 = [*(v0 + 24) home];
  sub_20D9D7510(0, &qword_280E01EF0, 0x277CD1A60);
  sub_20DA210C4(&qword_280E01EF8, &qword_280E01EF0, 0x277CD1A60);
  v2 = sub_20DD63B74();

  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v0 + 104);
    v4 = *(v0 + 16);
    *(v0 + 112) = sub_20D9D7510(0, &unk_280E01F40, 0x277CD1EE8);
    sub_20DA210C4(&qword_280E01F50, &unk_280E01F40, 0x277CD1EE8);
    sub_20DD64534();
    *(v0 + 120) = sub_20DD63934();
    if (qword_280E01F68 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v5 = *(v0 + 72);
  v6 = *(v0 + 24);
  v7 = qword_280E01F70;
  *(v0 + 128) = qword_280E01F70;
  v8 = [v6 home];
  v9 = [v8 uniqueIdentifier];

  sub_20DD63714();

  return MEMORY[0x2822009F8](sub_20DA1D700, v7, 0);
}

uint64_t sub_20DA1D700()
{
  v1 = v0[16];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  sub_20DA1DED8(v0[15], v0[13], v2);

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_20DA1D7AC, 0, 0);
}

uint64_t sub_20DA1D7AC()
{
  v49 = v0;
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[6];
  v6 = v0[2];
  sub_20DD64BD4();
  (*(v4 + 16))(v1, v2, v3);

  v7 = sub_20DD64C24();
  v8 = sub_20DD65384();
  if (os_log_type_enabled(v7, v8))
  {
    v42 = v8;
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = v47;
    *v10 = 134349570;
    if (v9 >> 62)
    {
      if (v0[2] < 0)
      {
        v39 = v0[2];
      }

      v11 = sub_20DD655B4();
    }

    else
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v40 = v0[14];
    v13 = v0[11];
    v12 = v0[12];
    v14 = v0[10];
    v45 = v0[6];
    v46 = v0[13];
    v43 = v0[5];
    v44 = v0[4];
    v15 = v0[2];
    *(v10 + 4) = v11;

    *(v10 + 12) = 2082;
    sub_20DA211E8();
    v41 = v14;
    v16 = sub_20DD65934();
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v12, v14);
    v20 = sub_20D9E0B38(v16, v18, &v48);

    *(v10 + 14) = v20;
    *(v10 + 22) = 2080;
    v21 = MEMORY[0x20F325F40](v15, v40);
    v23 = sub_20D9E0B38(v21, v22, &v48);

    *(v10 + 24) = v23;
    _os_log_impl(&dword_20D9BF000, v7, v42, "HFPredictionsManager processed %{public}ld predictions with relevance %{public}s: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v47, -1, -1);
    MEMORY[0x20F327D10](v10, -1, -1);

    (*(v43 + 8))(v45, v44);
    v19(v46, v41);
  }

  else
  {
    v25 = v0[12];
    v24 = v0[13];
    v26 = v0[10];
    v27 = v0[11];
    v29 = v0[5];
    v28 = v0[6];
    v30 = v0[4];
    v31 = v0[2];

    v32 = *(v27 + 8);
    v32(v25, v26);
    (*(v29 + 8))(v28, v30);
    v32(v24, v26);
  }

  v34 = v0[12];
  v33 = v0[13];
  v35 = v0[9];
  v36 = v0[6];

  v37 = v0[1];

  return v37();
}

uint64_t sub_20DA1DAC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20D9D77C4;

  return sub_20DA1D368(a1, v4, v5, v6, v7);
}

uint64_t sub_20DA1DD10(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 112);
  *(v3 + 112) = v2;
}

uint64_t sub_20DA1DD70()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
}

uint64_t sub_20DA1DDA8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 120);
  *(v3 + 120) = v2;
}

uint64_t sub_20DA1DE08()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
}

uint64_t sub_20DA1DE40(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 128);
  *(v3 + 128) = v2;
}

uint64_t sub_20DA1DEA0()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
}

uint64_t sub_20DA1DED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844270, &qword_20DD94228);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - v12;
  v14 = sub_20DD63744();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  v19 = *(v3 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v3 + 112);
  *(v3 + 112) = 0x8000000000000000;
  sub_20D9D1574(a1, a3, isUniquelyReferenced_nonNull_native);
  *(v3 + 112) = v28;
  swift_endAccess();
  v21 = *(v15 + 16);
  v21(v18, a3, v14);
  v22 = sub_20DD64544();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v13, v27, v22);
  (*(v23 + 56))(v13, 0, 1, v22);
  swift_beginAccess();
  sub_20D9F9C28(v13, v18);
  swift_endAccess();
  v21(v18, a3, v14);
  sub_20DD636B4();
  v24 = sub_20DD636C4();
  (*(*(v24 - 8) + 56))(v9, 0, 1, v24);
  swift_beginAccess();
  sub_20D9F97D0(v9, v18);
  return swift_endAccess();
}

uint64_t sub_20DA1E1DC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_20DD63744();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = a2;
LABEL_3:
    v13 = a2;
    v14 = [v12 uniqueIdentifier];
    sub_20DD63714();

    swift_beginAccess();
    v15 = *(v3 + 112);
    if (*(v15 + 16))
    {

      v16 = sub_20D9CB38C(v11);
      if (v17)
      {
        v18 = *(*(v15 + 56) + 8 * v16);
        v19 = *(v8 + 8);

        v19(v11, v7);

        sub_20D9D7510(0, &unk_27C844260, off_277DEFF18);
        sub_20DA1E478(a1, v18, a3);
      }
    }

    (*(v8 + 8))(v11, v7);
    goto LABEL_12;
  }

  v26[5] = &unk_28252A8F8;
  v21 = swift_dynamicCastObjCProtocolConditional();
  if (v21)
  {
    v22 = [v21 homeKitObject];
    v26[4] = &unk_282562A98;
    v23 = swift_dynamicCastObjCProtocolConditional();
    if (!v23)
    {
      swift_unknownObjectRelease();
      goto LABEL_12;
    }

    v24 = [v23 home];
    swift_unknownObjectRelease();
    if (v24)
    {
      v12 = v24;
      goto LABEL_3;
    }
  }

LABEL_12:
  v25 = sub_20DD63944();
  return (*(*(v25 - 8) + 56))(a3, 1, 1, v25);
}

void sub_20DA1E478(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v250 = a2;
  v233 = a3;
  v246 = sub_20DD63944();
  v238 = *(v246 - 8);
  v4 = *(v238 + 64);
  v5 = MEMORY[0x28223BE20](v246);
  v218 = v211 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v226 = v211 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v219 = v211 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v241 = v211 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v220 = v211 - v14;
  MEMORY[0x28223BE20](v13);
  v236 = v211 - v15;
  v245 = sub_20DD63744();
  v247 = *(v245 - 8);
  v16 = *(v247 + 64);
  v17 = MEMORY[0x28223BE20](v245);
  v248 = v211 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v234 = v211 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v235 = (v211 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v232 = v211 - v24;
  MEMORY[0x28223BE20](v23);
  v244 = (v211 - v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844288, &qword_20DD94B38);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v225 = v211 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v231 = v211 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v240 = v211 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v227 = v211 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = v211 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = v211 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = v211 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = v211 - v46;
  v48 = MEMORY[0x28223BE20](v45);
  v50 = v211 - v49;
  v51 = MEMORY[0x28223BE20](v48);
  v53 = v211 - v52;
  v54 = MEMORY[0x28223BE20](v51);
  v56 = (v211 - v55);
  MEMORY[0x28223BE20](v54);
  v58 = v211 - v57;
  objc_opt_self();
  v59 = a1;
  v60 = swift_dynamicCastObjCClass();
  if (v60)
  {
    v61 = v60;
    v62 = v59;
    v248 = [v61 sourceItem];
    sub_20DA1E478();

    v63 = v248;

    return;
  }

  v242 = v56;
  v224 = v53;
  v216 = v50;
  v213 = v47;
  v223 = v41;
  v215 = v38;
  v230 = v44;
  v243 = v58;
  v64 = v246;
  v254 = &unk_28252AFF0;
  v65 = swift_dynamicCastObjCProtocolConditional();
  if (v65)
  {
    v66 = v65;
    v67 = v238;
    v68 = *(v238 + 56);
    v69 = 1;
    v249 = v238 + 56;
    v248 = v68;
    (v68)(v243, 1, 1, v64);
    v211[0] = v59;
    v70 = [objc_msgSend(v66 homeKitObject)];
    swift_unknownObjectRelease();
    v71 = v244;
    sub_20DD63714();

    v72 = v250;
    if (*(v250 + 16) && (v73 = sub_20D9CB38C(v71), (v74 & 1) != 0))
    {
      v75 = *(v67 + 16);
      v76 = *(v72 + 56) + *(v67 + 72) * v73;
      v77 = v242;
      v75(v242, v76, v246);
      v69 = 0;
    }

    else
    {
      v77 = v242;
    }

    v78 = *(v247 + 8);
    v247 += 8;
    v244 = v78;
    v78(v71, v245);
    (v248)(v77, v69, 1, v246);
    sub_20DA20170(v77, v243);
    sub_20D9D76EC(v77, &qword_27C844288, &qword_20DD94B38);
    v79 = [v66 accessoryRepresentableObject];
    ObjectType = swift_getObjectType();
    v81 = HFAccessoryRepresentable.containedServices.getter(ObjectType);
    swift_unknownObjectRelease();
    v82 = v232;
    v212 = v66;
    if ((v81 & 0xC000000000000001) != 0)
    {
      sub_20DD65564();
      sub_20D9D7510(0, &qword_27C8435F0, 0x277CD1D90);
      sub_20DA210C4(&qword_27C843900, &qword_27C8435F0, 0x277CD1D90);
      sub_20DD65284();
      v81 = v255;
      v83 = v256;
      v84 = v257;
      v85 = v258;
      v86 = v259;
    }

    else
    {
      v85 = 0;
      v100 = -1 << *(v81 + 32);
      v83 = (v81 + 56);
      v84 = ~v100;
      v101 = -v100;
      if (v101 < 64)
      {
        v102 = ~(-1 << v101);
      }

      else
      {
        v102 = -1;
      }

      v86 = v102 & *(v81 + 56);
    }

    v103 = v224;
    v211[1] = v84;
    v104 = (v84 + 64) >> 6;
    v221 = v238 + 16;
    v105 = (v238 + 48);
    v239 = (v238 + 32);
    v214 = (v238 + 8);
    v106 = v216;
    v228 = v83;
    v222 = v104;
    v242 = (v238 + 48);
    i = v81;
    if ((v81 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_23:
    v107 = sub_20DD655F4();
    if (v107)
    {
      v260 = v107;
      sub_20D9D7510(0, &qword_27C8435F0, 0x277CD1D90);
      swift_dynamicCast();
      v108 = v265;
      v109 = v85;
      v110 = v86;
      while (1)
      {
        if (!v108)
        {
          goto LABEL_45;
        }

        v113 = [v108 uniqueIdentifier];
        sub_20DD63714();

        v114 = v250;
        v115 = *(v250 + 16);
        v237 = v110;
        if (v115)
        {
          v116 = sub_20D9CB38C(v82);
          v117 = v245;
          if (v118)
          {
            (*(v238 + 16))(v103, *(v114 + 56) + *(v238 + 72) * v116, v246);
            v119 = 0;
          }

          else
          {
            v119 = 1;
          }
        }

        else
        {
          v119 = 1;
          v117 = v245;
        }

        v244(v82, v117);
        v120 = v246;
        (v248)(v103, v119, 1, v246);
        sub_20D9D7558(v103, v106, &qword_27C844288, &qword_20DD94B38);
        v121 = *v105;
        if ((*v105)(v106, 1, v120) == 1)
        {

          sub_20D9D76EC(v103, &qword_27C844288, &qword_20DD94B38);
          sub_20D9D76EC(v106, &qword_27C844288, &qword_20DD94B38);
          v85 = v109;
          v86 = v237;
          v83 = v228;
          v104 = v222;
          v81 = i;
          if (i < 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v217 = *v239;
          (v217)(v236, v106, v120);
          v122 = v243;
          swift_beginAccess();
          v123 = v213;
          sub_20D9D7558(v122, v213, &qword_27C844288, &qword_20DD94B38);
          if (v121(v123, 1, v120) == 1)
          {

            v124 = v224;
            sub_20D9D76EC(v224, &qword_27C844288, &qword_20DD94B38);
            sub_20D9D76EC(v122, &qword_27C844288, &qword_20DD94B38);
            sub_20D9D76EC(v123, &qword_27C844288, &qword_20DD94B38);
            v125 = v230;
            v103 = v124;
            (v217)(v230, v236, v120);
            (v248)(v125, 0, 1, v120);
            sub_20DA21108(v125, v122);
            v85 = v109;
            v86 = v237;
            v82 = v232;
            v106 = v216;
          }

          else
          {
            v126 = v220;
            v127 = v217;
            (v217)(v220, v123, v120);
            v128 = v236;
            v129 = sub_20DD63924();

            v130 = *v214;
            (*v214)(v126, v120);
            sub_20D9D76EC(v224, &qword_27C844288, &qword_20DD94B38);
            if (v129)
            {
              v131 = v243;
              sub_20D9D76EC(v243, &qword_27C844288, &qword_20DD94B38);
              v132 = v230;
              (v127)(v230, v128, v120);
              (v248)(v132, 0, 1, v120);
              sub_20DA21108(v132, v131);
            }

            else
            {
              v130(v128, v120);
            }

            v85 = v109;
            v86 = v237;
            v82 = v232;
            v106 = v216;
            v103 = v224;
          }

          v105 = v242;
          v81 = i;
          v83 = v228;
          v104 = v222;
          if (i < 0)
          {
            goto LABEL_23;
          }
        }

LABEL_25:
        v111 = v85;
        v112 = v86;
        v109 = v85;
        if (!v86)
        {
          break;
        }

LABEL_29:
        v110 = (v112 - 1) & v112;
        v108 = *(*(v81 + 48) + ((v109 << 9) | (8 * __clz(__rbit64(v112)))));
      }

      while (1)
      {
        v109 = v111 + 1;
        if (__OFADD__(v111, 1))
        {
          __break(1u);
          goto LABEL_111;
        }

        if (v109 >= v104)
        {
          break;
        }

        v112 = *&v83[8 * v109];
        ++v111;
        if (v112)
        {
          goto LABEL_29;
        }
      }
    }

LABEL_45:
    sub_20D9C51CC();
    v133 = [v212 accessoryRepresentableObject];
    v134 = swift_getObjectType();
    v135 = HFAccessoryRepresentable.associatedAccessories.getter(v134);
    swift_unknownObjectRelease();
    if ((v135 & 0xC000000000000001) != 0)
    {
      sub_20DD65564();
      sub_20D9D7510(0, &qword_27C844290, 0x277CD1650);
      sub_20DA210C4(&qword_27C843840, &qword_27C844290, 0x277CD1650);
      sub_20DD65284();
      v135 = v260;
      v136 = v261;
      v137 = v262;
      v138 = v263;
      v139 = v264;
    }

    else
    {
      v138 = 0;
      v140 = -1 << *(v135 + 32);
      v136 = (v135 + 56);
      v137 = ~v140;
      v141 = -v140;
      if (v141 < 64)
      {
        v142 = ~(-1 << v141);
      }

      else
      {
        v142 = -1;
      }

      v139 = v142 & *(v135 + 56);
    }

    v143 = v215;
    v144 = v223;
    v224 = v137;
    v145 = (v137 + 64) >> 6;
    v232 = v135;
    v236 = v136;
    for (i = v145; ; v145 = i)
    {
      if (v135 < 0)
      {
        v151 = sub_20DD655F4();
        if (!v151 || (v252 = v151, sub_20D9D7510(0, &qword_27C844290, 0x277CD1650), swift_dynamicCast(), v150 = v265, v148 = v138, v149 = v139, !v265))
        {
LABEL_76:
          sub_20D9C51CC();
          v170 = [v212 accessoryRepresentableObject];
          v171 = swift_getObjectType();
          v172 = HFAccessoryRepresentable.containedProfiles.getter(v171);
          swift_unknownObjectRelease();
          if ((v172 & 0xC000000000000001) != 0)
          {
            sub_20DD65564();
            sub_20D9D7510(0, &unk_27C8442A0, 0x277CD1760);
            sub_20DA210C4(&unk_27C8438E0, &unk_27C8442A0, 0x277CD1760);
            sub_20DD65284();
            v172 = v265;
            v173 = v266;
            v174 = v267;
            v175 = v268;
            v176 = v269;
          }

          else
          {
            v175 = 0;
            v177 = -1 << *(v172 + 32);
            v173 = (v172 + 56);
            v174 = ~v177;
            v178 = -v177;
            if (v178 < 64)
            {
              v179 = ~(-1 << v178);
            }

            else
            {
              v179 = -1;
            }

            v176 = v179 & *(v172 + 56);
          }

          v180 = v231;
          v181 = v246;
          v182 = v239;
          v232 = v174;
          v183 = (v174 + 64) >> 6;
          v237 = v172;
          v241 = v173;
          v236 = v183;
          while (2)
          {
            if (v172 < 0)
            {
              v189 = sub_20DD655F4();
              if (!v189 || (v251 = v189, sub_20D9D7510(0, &unk_27C8442A0, 0x277CD1760), swift_dynamicCast(), v188 = v252, v186 = v175, v187 = v176, !v252))
              {
LABEL_106:
                sub_20D9C51CC();

                v210 = v243;
                swift_beginAccess();
                sub_20D9D7558(v210, v233, &qword_27C844288, &qword_20DD94B38);
                sub_20D9D76EC(v210, &qword_27C844288, &qword_20DD94B38);
                return;
              }
            }

            else
            {
              v184 = v175;
              v185 = v176;
              v186 = v175;
              if (!v176)
              {
                while (1)
                {
                  v186 = v184 + 1;
                  if (__OFADD__(v184, 1))
                  {
                    break;
                  }

                  if (v186 >= v183)
                  {
                    goto LABEL_106;
                  }

                  v185 = *&v173[8 * v186];
                  ++v184;
                  if (v185)
                  {
                    goto LABEL_91;
                  }
                }

LABEL_112:
                __break(1u);
                return;
              }

LABEL_91:
              v187 = (v185 - 1) & v185;
              v188 = *(*(v172 + 48) + ((v186 << 9) | (8 * __clz(__rbit64(v185)))));
              if (!v188)
              {
                goto LABEL_106;
              }
            }

            v246 = v187;
            v190 = [v188 uniqueIdentifier];
            v191 = v234;
            sub_20DD63714();

            v192 = v250;
            if (*(v250 + 16))
            {
              v193 = sub_20D9CB38C(v191);
              v194 = v240;
              if (v195)
              {
                (*(v238 + 16))(v240, *(v192 + 56) + *(v238 + 72) * v193, v181);
                v196 = 0;
              }

              else
              {
                v196 = 1;
              }
            }

            else
            {
              v196 = 1;
              v194 = v240;
            }

            v244(v191, v245);
            (v248)(v194, v196, 1, v181);
            sub_20D9D7558(v194, v180, &qword_27C844288, &qword_20DD94B38);
            v197 = *v242;
            if ((*v242)(v180, 1, v181) != 1)
            {
              v198 = v226;
              v235 = *v182;
              v235(v226, v180, v181);
              v199 = v181;
              v200 = v243;
              swift_beginAccess();
              v201 = v225;
              sub_20D9D7558(v200, v225, &qword_27C844288, &qword_20DD94B38);
              if (v197(v201, 1, v199) == 1)
              {

                sub_20D9D76EC(v240, &qword_27C844288, &qword_20DD94B38);
                sub_20D9D76EC(v200, &qword_27C844288, &qword_20DD94B38);
                sub_20D9D76EC(v201, &qword_27C844288, &qword_20DD94B38);
                v202 = v230;
                v203 = v239;
                v235(v230, v198, v199);
                (v248)(v202, 0, 1, v199);
                sub_20DA21108(v202, v200);
                v175 = v186;
                v176 = v246;
                v180 = v231;
                v181 = v199;
                v182 = v203;
LABEL_84:
                v172 = v237;
              }

              else
              {
                v204 = v218;
                v235(v218, v201, v199);
                v205 = sub_20DD63924();

                v206 = *v214;
                (*v214)(v204, v199);
                sub_20D9D76EC(v240, &qword_27C844288, &qword_20DD94B38);
                v181 = v199;
                v172 = v237;
                if (v205)
                {
                  v207 = v243;
                  sub_20D9D76EC(v243, &qword_27C844288, &qword_20DD94B38);
                  v208 = v230;
                  v209 = v199;
                  v182 = v239;
                  v235(v230, v198, v209);
                  (v248)(v208, 0, 1, v181);
                  sub_20DA21108(v208, v207);
                  v175 = v186;
                  v176 = v246;
                  v180 = v231;
                }

                else
                {
                  v206(v198, v199);
                  v175 = v186;
                  v176 = v246;
                  v180 = v231;
                  v182 = v239;
                }
              }

              v173 = v241;
              v183 = v236;
              continue;
            }

            break;
          }

          sub_20D9D76EC(v194, &qword_27C844288, &qword_20DD94B38);
          sub_20D9D76EC(v180, &qword_27C844288, &qword_20DD94B38);
          v175 = v186;
          v176 = v246;
          goto LABEL_84;
        }
      }

      else
      {
        v146 = v138;
        v147 = v139;
        v148 = v138;
        if (!v139)
        {
          while (1)
          {
            v148 = v146 + 1;
            if (__OFADD__(v146, 1))
            {
              break;
            }

            if (v148 >= v145)
            {
              goto LABEL_76;
            }

            v147 = *&v136[8 * v148];
            ++v146;
            if (v147)
            {
              goto LABEL_60;
            }
          }

LABEL_111:
          __break(1u);
          goto LABEL_112;
        }

LABEL_60:
        v149 = (v147 - 1) & v147;
        v150 = *(*(v135 + 48) + ((v148 << 9) | (8 * __clz(__rbit64(v147)))));
        if (!v150)
        {
          goto LABEL_76;
        }
      }

      v152 = [v150 uniqueIdentifier];
      v153 = v235;
      sub_20DD63714();

      v154 = v250;
      v155 = *(v250 + 16);
      v237 = v149;
      if (v155)
      {
        v156 = sub_20D9CB38C(v153);
        v157 = v241;
        if (v158)
        {
          (*(v238 + 16))(v144, *(v154 + 56) + *(v238 + 72) * v156, v246);
          v159 = 0;
        }

        else
        {
          v159 = 1;
        }
      }

      else
      {
        v159 = 1;
        v157 = v241;
      }

      v244(v153, v245);
      v160 = v246;
      (v248)(v144, v159, 1, v246);
      sub_20D9D7558(v144, v143, &qword_27C844288, &qword_20DD94B38);
      v161 = *v242;
      if ((*v242)(v143, 1, v160) == 1)
      {
        break;
      }

      v228 = *v239;
      (v228)(v157, v143, v160);
      v162 = v243;
      swift_beginAccess();
      v163 = v227;
      sub_20D9D7558(v162, v227, &qword_27C844288, &qword_20DD94B38);
      if (v161(v163, 1, v160) == 1)
      {

        v144 = v223;
        sub_20D9D76EC(v223, &qword_27C844288, &qword_20DD94B38);
        sub_20D9D76EC(v162, &qword_27C844288, &qword_20DD94B38);
        sub_20D9D76EC(v163, &qword_27C844288, &qword_20DD94B38);
        v164 = v230;
        (v228)(v230, v241, v160);
        (v248)(v164, 0, 1, v160);
        sub_20DA21108(v164, v162);
        v138 = v148;
        v139 = v237;
        v143 = v215;
        goto LABEL_53;
      }

      v165 = v219;
      (v228)(v219, v163, v160);
      v166 = sub_20DD63924();

      v167 = *v214;
      (*v214)(v165, v160);
      sub_20D9D76EC(v223, &qword_27C844288, &qword_20DD94B38);
      v135 = v232;
      if (v166)
      {
        v168 = v243;
        sub_20D9D76EC(v243, &qword_27C844288, &qword_20DD94B38);
        v169 = v230;
        (v228)(v230, v241, v160);
        (v248)(v169, 0, 1, v160);
        sub_20DA21108(v169, v168);
      }

      else
      {
        v167(v241, v160);
      }

      v138 = v148;
      v139 = v237;
      v143 = v215;
      v144 = v223;
LABEL_54:
      v136 = v236;
    }

    sub_20D9D76EC(v144, &qword_27C844288, &qword_20DD94B38);
    sub_20D9D76EC(v143, &qword_27C844288, &qword_20DD94B38);
    v138 = v148;
    v139 = v237;
LABEL_53:
    v135 = v232;
    goto LABEL_54;
  }

  v253 = &unk_28252A8F8;
  v87 = swift_dynamicCastObjCProtocolConditional();
  v88 = v238;
  if (v87)
  {
    v89 = v87;
    v90 = v59;
    v91 = [objc_msgSend(v89 homeKitObject)];
    swift_unknownObjectRelease();
    v92 = v248;
    sub_20DD63714();

    v93 = v250;
    if (*(v250 + 16))
    {
      v94 = sub_20D9CB38C(v92);
      v95 = v245;
      v96 = v247;
      if (v97)
      {
        v98 = *(v93 + 56) + *(v88 + 72) * v94;
        v99 = v233;
        (*(v88 + 16))(v233, v98, v64);

        (*(v96 + 8))(v92, v95);
        (*(v88 + 56))(v99, 0, 1, v64);
        return;
      }

      (*(v96 + 8))(v92, v95);
    }

    else
    {

      (*(v247 + 8))(v92, v245);
    }
  }

  (*(v88 + 56))(v233, 1, 1, v64);
}

void *HFPredictionsManager.AnalyticsScoringCache.deinit()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t HFPredictionsManager.AnalyticsScoringCache.__deallocating_deinit()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_20DA20170(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844288, &qword_20DD94B38);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v29 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v12 = sub_20DD63944();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  sub_20D9D7558(a1, v11, &qword_27C844288, &qword_20DD94B38);
  v20 = *(v13 + 48);
  if (v20(v11, 1, v12) == 1)
  {
    return sub_20D9D76EC(v11, &qword_27C844288, &qword_20DD94B38);
  }

  v22 = *(v13 + 32);
  v22(v19, v11, v12);
  v23 = v30;
  swift_beginAccess();
  sub_20D9D7558(v23, v9, &qword_27C844288, &qword_20DD94B38);
  if (v20(v9, 1, v12) == 1)
  {
    sub_20D9D76EC(v9, &qword_27C844288, &qword_20DD94B38);
    v24 = v29;
    v22(v29, v19, v12);
    (*(v13 + 56))(v24, 0, 1, v12);
    swift_beginAccess();
    return sub_20DA21178(v24, v23);
  }

  else
  {
    v25 = v23;
    v22(v17, v9, v12);
    v26 = sub_20DD63924();
    v27 = *(v13 + 8);
    v27(v17, v12);
    if (v26)
    {
      v28 = v29;
      v22(v29, v19, v12);
      (*(v13 + 56))(v28, 0, 1, v12);
      swift_beginAccess();
      return sub_20DA21178(v28, v25);
    }

    else
    {
      return (v27)(v19, v12);
    }
  }
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20DA20608(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20D9C76B4;

  return sub_20DA1D368(a1, v4, v5, v6, v7);
}

uint64_t sub_20DA206D0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20DA21240;

  return v7(a1);
}

uint64_t sub_20DA207C8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20DA208C0;

  return v7(a1);
}

uint64_t sub_20DA208C0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_20DA209B8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_20DA20AAC;

  return v6(v2 + 32);
}

uint64_t sub_20DA20AAC()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_20DA20BC0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20D9D77C4;

  return sub_20DA209B8(a1, v5);
}

uint64_t sub_20DA20C78(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_20DA20D6C;

  return v6(v2 + 16);
}

uint64_t sub_20DA20D6C()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_20DA20E9C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20D9D77C4;

  return sub_20DA20C78(a1, v5);
}

uint64_t sub_20DA20F54(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20D9D77C4;

  return sub_20DA207C8(a1, v5);
}

uint64_t sub_20DA2100C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20D9C76B4;

  return sub_20DA207C8(a1, v5);
}

uint64_t sub_20DA210C4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_20D9D7510(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20DA21108(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844288, &qword_20DD94B38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DA21178(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844288, &qword_20DD94B38);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_20DA211E8()
{
  result = qword_280E02278;
  if (!qword_280E02278)
  {
    sub_20DD64544();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E02278);
  }

  return result;
}

unint64_t CameraEventDebugLogType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_20DA21258()
{
  v1 = *v0;
  sub_20DD65A64();
  MEMORY[0x20F3269D0](v1);
  return sub_20DD65AA4();
}

uint64_t sub_20DA212A0()
{
  v1 = *v0;
  sub_20DD65A64();
  MEMORY[0x20F3269D0](v1);
  return sub_20DD65AA4();
}

uint64_t *sub_20DA212E4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id CameraEventDebugLogger.__allocating_init(cameraProfile:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v5 + 15) = 0;
  *(v5 + 16) = 0;
  *(v5 + 17) = sub_20D9D5DF8(MEMORY[0x277D84F90]);
  v6 = OBJC_IVAR___HFCameraEventDebugLogger_previousViewModelDateInterval;
  v7 = sub_20DD63484();
  (*(*(v7 - 8) + 56))(&v5[v6], 1, 1, v7);
  *(v5 + 14) = a1;
  v9.receiver = v5;
  v9.super_class = v1;
  return objc_msgSendSuper2(&v9, sel_init);
}

id CameraEventDebugLogger.init(cameraProfile:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 15) = 0;
  *(v1 + 16) = 0;
  *(v1 + 17) = sub_20D9D5DF8(MEMORY[0x277D84F90]);
  v3 = OBJC_IVAR___HFCameraEventDebugLogger_previousViewModelDateInterval;
  v4 = sub_20DD63484();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *(v1 + 14) = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CameraEventDebugLogger();
  return objc_msgSendSuper2(&v6, sel_init);
}

id CameraEventDebugLogger.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();

  return [v3 initWithCameraProfile_];
}

uint64_t static CameraEventDebugLogger.debugLogDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8442B8, &qword_20DD94B60);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  v10 = [objc_opt_self() externalCachesDirectory];
  if (v10)
  {
    v11 = v10;
    sub_20DD634F4();

    v12 = sub_20DD63514();
    (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  }

  else
  {
    v12 = sub_20DD63514();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  }

  sub_20DA031AC(v7, v9, &qword_27C8442B8, &qword_20DD94B60);
  sub_20DD63514();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v9, 1, v12) == 1)
  {
    sub_20D9D76EC(v9, &qword_27C8442B8, &qword_20DD94B60);
    v14 = 1;
  }

  else
  {
    v16[1] = v1;
    swift_getMetatypeMetadata();
    sub_20DD64ED4();
    sub_20DD634E4();

    (*(v13 + 8))(v9, v12);
    v14 = 0;
  }

  return (*(v13 + 56))(a1, v14, 1, v12);
}

uint64_t static CameraEventDebugLogger.debugLogFileURL(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8442B8, &qword_20DD94B60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v23 - v7;
  v9 = sub_20DD63744();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[0] = v2;
  swift_getMetatypeMetadata();
  v23[0] = sub_20DD64ED4();
  v23[1] = v14;
  MEMORY[0x20F325E90](95, 0xE100000000000000);
  v15 = [a1 uniqueIdentifier];
  sub_20DD63714();

  v16 = sub_20DD636E4();
  v18 = v17;
  (*(v10 + 8))(v13, v9);
  MEMORY[0x20F325E90](v16, v18);

  MEMORY[0x20F325E90](0x6C6E6F736A2ELL, 0xE600000000000000);
  static CameraEventDebugLogger.debugLogDirectory.getter(v8);
  v19 = sub_20DD63514();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v8, 1, v19) == 1)
  {

    sub_20D9D76EC(v8, &qword_27C8442B8, &qword_20DD94B60);
    v21 = 1;
  }

  else
  {
    sub_20DD634E4();

    (*(v20 + 8))(v8, v19);
    v21 = 0;
  }

  return (*(v20 + 56))(a2, v21, 1, v19);
}

uint64_t static CameraEventDebugLogger.dateIntervalFileURL(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8442B8, &qword_20DD94B60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25 - v7;
  v9 = sub_20DD63744();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_20DD65704();
  v25 = v2;
  swift_getMetatypeMetadata();
  v14 = sub_20DD64ED4();
  v16 = v15;

  v25 = v14;
  v26 = v16;
  MEMORY[0x20F325E90](95, 0xE100000000000000);
  v17 = [a1 uniqueIdentifier];
  sub_20DD63714();

  v18 = sub_20DD636E4();
  v20 = v19;
  (*(v10 + 8))(v13, v9);
  MEMORY[0x20F325E90](v18, v20);

  MEMORY[0x20F325E90](0xD000000000000012, 0x800000020DD98D40);
  static CameraEventDebugLogger.debugLogDirectory.getter(v8);
  v21 = sub_20DD63514();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v8, 1, v21) == 1)
  {

    sub_20D9D76EC(v8, &qword_27C8442B8, &qword_20DD94B60);
    v23 = 1;
  }

  else
  {
    sub_20DD634E4();

    (*(v22 + 8))(v8, v21);
    v23 = 0;
  }

  return (*(v22 + 56))(a2, v23, 1, v21);
}

id sub_20DA21EBC(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8442B8, &qword_20DD94B60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  swift_getObjCClassMetadata();
  v10 = a3;
  a4();

  v11 = sub_20DD63514();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v9, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = sub_20DD634D4();
    (*(v12 + 8))(v9, v11);
    v14 = v15;
  }

  return v14;
}

uint64_t sub_20DA22008()
{
  v1[2] = v0;
  v1[3] = swift_getObjectType();
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8442B8, &qword_20DD94B60) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v3 = sub_20DD63514();
  v1[6] = v3;
  v4 = *(v3 - 8);
  v1[7] = v4;
  v5 = *(v4 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA22124, v0, 0);
}

uint64_t sub_20DA22124()
{
  if ([objc_opt_self() isInternalInstall])
  {
    v1 = *(v0[2] + 112);
    v2 = v0[6];
    v3 = v0[7];
    v4 = v0[5];
    if (!v1)
    {
      v8 = v0[4];
      v9 = *(v3 + 56);
      v9(v0[5], 1, 1, v0[6]);
      sub_20D9D76EC(v4, &qword_27C8442B8, &qword_20DD94B60);
      v9(v8, 1, 1, v2);
LABEL_8:
      sub_20D9D76EC(v0[4], &qword_27C8442B8, &qword_20DD94B60);
      goto LABEL_9;
    }

    v5 = v0[3];
    v6 = v1;
    static CameraEventDebugLogger.debugLogFileURL(for:)(v6, v4);

    v7 = *(v3 + 48);
    if (v7(v4, 1, v2) == 1)
    {
      sub_20D9D76EC(v0[5], &qword_27C8442B8, &qword_20DD94B60);
    }

    else
    {
      v10 = v0[9];
      v11 = v0[6];
      v12 = v0[7];
      (*(v12 + 32))(v10, v0[5], v11);
      sub_20DA2A7CC();
      (*(v12 + 8))(v10, v11);
    }

    v13 = v0[6];
    v14 = v0[3];
    v15 = v0[4];
    v16 = v6;
    static CameraEventDebugLogger.dateIntervalFileURL(for:)(v16, v15);

    if (v7(v15, 1, v13) == 1)
    {
      goto LABEL_8;
    }

    v24 = v0[7];
    v23 = v0[8];
    v25 = v0[6];
    (*(v24 + 32))(v23, v0[4], v25);
    sub_20DA2A7CC();
    (*(v24 + 8))(v23, v25);
  }

LABEL_9:
  v18 = v0[8];
  v17 = v0[9];
  v20 = v0[4];
  v19 = v0[5];

  v21 = v0[1];

  return v21();
}

uint64_t sub_20DA22540(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_20DA225E8;

  return sub_20DA22008();
}

uint64_t sub_20DA225E8()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = sub_20DD63494();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_20DA22770(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = *MEMORY[0x277D85DE8];
  *(v7 + 1024) = v6;
  *(v7 + 1016) = a6;
  *(v7 + 1008) = a5;
  *(v7 + 1000) = a4;
  *(v7 + 1120) = a3;
  *(v7 + 992) = a2;
  *(v7 + 984) = a1;
  *(v7 + 1032) = swift_getObjectType();
  v8 = sub_20DD63744();
  *(v7 + 1040) = v8;
  v9 = *(v8 - 8);
  *(v7 + 1048) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 1056) = swift_task_alloc();
  v11 = sub_20DD636C4();
  *(v7 + 1064) = v11;
  v12 = *(v11 - 8);
  *(v7 + 1072) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 1080) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8442B8, &qword_20DD94B60) - 8) + 64) + 15;
  *(v7 + 1088) = swift_task_alloc();
  v15 = sub_20DD63514();
  *(v7 + 1096) = v15;
  v16 = *(v15 - 8);
  *(v7 + 1104) = v16;
  v17 = *(v16 + 64) + 15;
  *(v7 + 1112) = swift_task_alloc();
  v18 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20DA22970, v6, 0);
}

uint64_t sub_20DA22970()
{
  v174 = v0;
  v173[2] = *MEMORY[0x277D85DE8];
  if (![objc_opt_self() isInternalInstall])
  {
    goto LABEL_9;
  }

  v1 = *(*(v0 + 1024) + 112);
  v2 = *(v0 + 1104);
  v3 = *(v0 + 1096);
  v4 = *(v0 + 1088);
  if (!v1)
  {
    (*(v2 + 56))(*(v0 + 1088), 1, 1, *(v0 + 1096));
    goto LABEL_8;
  }

  v5 = *(v0 + 1032);
  v6 = v1;
  static CameraEventDebugLogger.debugLogFileURL(for:)(v6, v4);

  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
LABEL_8:
    sub_20D9D76EC(*(v0 + 1088), &qword_27C8442B8, &qword_20DD94B60);
LABEL_9:
    [objc_opt_self() hf:33 errorWithCode:?];
    swift_willThrow();
    goto LABEL_10;
  }

  v169 = v6;
  v7 = *(v0 + 1024);
  (*(*(v0 + 1104) + 32))(*(v0 + 1112), *(v0 + 1088), *(v0 + 1096));
  v8 = *(v7 + 120);
  v9 = __CFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  v11 = *(v0 + 1080);
  v12 = *(v0 + 1072);
  v13 = *(v0 + 1064);
  v167 = *(v0 + 1120);
  v166 = *(v0 + 992);
  v164 = v13;
  v165 = *(v0 + 984);
  *(v7 + 120) = v10;
  v14 = sub_20D9D5FE0(MEMORY[0x277D84F90]);
  v15 = *(v7 + 120);
  *(v0 + 40) = MEMORY[0x277D83E88];
  *(v0 + 16) = v15;
  sub_20D9C29D8((v0 + 16), (v0 + 48));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v173[0] = v14;
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 48, *(v0 + 72));
  sub_20DA294AC(*v17, 0x756F436863746566, 0xEC0000007265746ELL, isUniquelyReferenced_nonNull_native, v173);
  __swift_destroy_boxed_opaque_existential_0((v0 + 48));
  v18 = v173[0];
  v19 = objc_opt_self();
  v20 = [v19 hf_rfc3339Formatter];
  sub_20DD63684();
  v21 = sub_20DD63624();
  v22 = *(v12 + 8);
  v22(v11, v13);
  v23 = [v20 stringFromDate_];

  v24 = sub_20DD64EB4();
  v26 = v25;

  v27 = MEMORY[0x277D837D0];
  *(v0 + 104) = MEMORY[0x277D837D0];
  *(v0 + 80) = v24;
  *(v0 + 88) = v26;
  sub_20D9C29D8((v0 + 80), (v0 + 112));
  LOBYTE(v24) = swift_isUniquelyReferenced_nonNull_native();
  v173[0] = v18;
  v28 = *(v0 + 136);
  v29 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 112, v28);
  v30 = *(v28 - 8);
  v31 = *(v30 + 64) + 15;
  v32 = swift_task_alloc();
  (*(v30 + 16))(v32, v29, v28);
  sub_20DA29604(*v32, v32[1], 0x6D617473656D6974, 0xE900000000000070, v24, v173);
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));

  v33 = v173[0];
  *(v0 + 168) = v27;
  *(v0 + 144) = 0x6863746566;
  *(v0 + 152) = 0xE500000000000000;
  sub_20D9C29D8((v0 + 144), (v0 + 176));
  LOBYTE(v28) = swift_isUniquelyReferenced_nonNull_native();
  v173[0] = v33;
  v34 = *(v0 + 200);
  v35 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 176, v34);
  v36 = *(v34 - 8);
  v37 = *(v36 + 64) + 15;
  v38 = swift_task_alloc();
  (*(v36 + 16))(v38, v35, v34);
  sub_20DA29604(*v38, v38[1], 1701869940, 0xE400000000000000, v28, v173);
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));

  v39 = v173[0];
  v168 = v19;
  v40 = [v19 hf_rfc3339Formatter];
  sub_20DD63464();
  v41 = sub_20DD63624();
  v22(v11, v164);
  v42 = [v40 stringFromDate_];

  v43 = sub_20DD64EB4();
  v45 = v44;

  *(v0 + 232) = v27;
  *(v0 + 208) = v43;
  *(v0 + 216) = v45;
  sub_20D9C29D8((v0 + 208), (v0 + 240));
  LOBYTE(v43) = swift_isUniquelyReferenced_nonNull_native();
  v173[0] = v39;
  v46 = *(v0 + 264);
  v47 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 240, v46);
  v48 = *(v46 - 8);
  v49 = *(v48 + 64) + 15;
  v50 = swift_task_alloc();
  (*(v48 + 16))(v50, v47, v46);
  sub_20DA29604(*v50, v50[1], 0x7461447472617473, 0xE900000000000065, v43, v173);
  __swift_destroy_boxed_opaque_existential_0((v0 + 240));

  v51 = v173[0];
  sub_20DD63474();
  *(v0 + 296) = MEMORY[0x277D839F8];
  *(v0 + 272) = v52;
  sub_20D9C29D8((v0 + 272), (v0 + 304));
  LOBYTE(v43) = swift_isUniquelyReferenced_nonNull_native();
  v173[0] = v51;
  v53 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 304, *(v0 + 328));
  sub_20DA297E8(0x6E6F697461727564, 0xE800000000000000, v43, v173, *v53);
  __swift_destroy_boxed_opaque_existential_0((v0 + 304));
  v54 = v173[0];
  *(v0 + 360) = MEMORY[0x277D83E88];
  *(v0 + 336) = v166;
  sub_20D9C29D8((v0 + 336), (v0 + 368));
  LOBYTE(v51) = swift_isUniquelyReferenced_nonNull_native();
  v173[0] = v54;
  v55 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 368, *(v0 + 392));
  sub_20DA294AC(*v55, 0x74696D696CLL, 0xE500000000000000, v51, v173);
  __swift_destroy_boxed_opaque_existential_0((v0 + 368));
  v56 = v173[0];
  *(v0 + 424) = MEMORY[0x277D839B0];
  *(v0 + 400) = v167;
  sub_20D9C29D8((v0 + 400), (v0 + 432));
  LOBYTE(v51) = swift_isUniquelyReferenced_nonNull_native();
  v173[0] = v56;
  v57 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 432, *(v0 + 456));
  sub_20DA29938(*v57, 0x6E69646E65637361, 0xE900000000000067, v51, v173);
  __swift_destroy_boxed_opaque_existential_0((v0 + 432));
  v58 = v173[0];
  v171 = v173[0];
  v59 = [v169 accessory];
  if (v59)
  {
    v60 = v59;
    v61 = [v59 hf_serviceNameComponents];

    v62 = [v61 composedString];
    v63 = sub_20DD64EB4();
    v65 = v64;

    *(v0 + 488) = v27;
    *(v0 + 464) = v63;
    *(v0 + 472) = v65;
    sub_20D9C29D8((v0 + 464), (v0 + 944));
    LOBYTE(v62) = swift_isUniquelyReferenced_nonNull_native();
    v173[0] = v58;
    v66 = *(v0 + 968);
    v67 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 944, v66);
    v68 = *(v66 - 8);
    v69 = *(v68 + 64) + 15;
    v70 = swift_task_alloc();
    (*(v68 + 16))(v70, v67, v66);
    sub_20DA29C88(v70, 0x614E6172656D6163, 0xEA0000000000656DLL, v62, v173, v27);
    __swift_destroy_boxed_opaque_existential_0((v0 + 944));

    v71 = v173[0];
  }

  else
  {
    sub_20DA27AE8(0x614E6172656D6163, 0xEA0000000000656DLL, sub_20D9D77C8, sub_20D9D2E2C, (v0 + 496));
    sub_20D9D76EC(v0 + 496, &qword_27C8442C0, &qword_20DD94B78);
    v71 = v171;
  }

  v79 = v27;
  v80 = *(v0 + 1056);
  v81 = *(v0 + 1048);
  v82 = *(v0 + 1040);
  v83 = [v169 uniqueIdentifier];
  sub_20DD63714();

  v84 = sub_20DD636E4();
  v86 = v85;
  (*(v81 + 8))(v80, v82);
  *(v0 + 552) = v79;
  *(v0 + 528) = v84;
  *(v0 + 536) = v86;
  sub_20D9C29D8((v0 + 528), (v0 + 560));
  LOBYTE(v80) = swift_isUniquelyReferenced_nonNull_native();
  v173[0] = v71;
  v87 = *(v0 + 584);
  v88 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 560, v87);
  v89 = *(v87 - 8);
  v90 = *(v89 + 64) + 15;
  v91 = swift_task_alloc();
  (*(v89 + 16))(v91, v88, v87);
  sub_20DA29604(*v91, v91[1], 0xD000000000000011, 0x800000020DD98D60, v80, v173);
  __swift_destroy_boxed_opaque_existential_0((v0 + 560));

  v92 = v173[0];
  v172 = v173[0];
  v93 = [v169 recordingEventManager];
  if (v93)
  {
    v94 = v93;
    v95 = [v93 zoneName];

    v96 = sub_20DD64EB4();
    v98 = v97;

    *(v0 + 616) = v79;
    *(v0 + 592) = v96;
    *(v0 + 600) = v98;
    sub_20D9C29D8((v0 + 592), (v0 + 912));
    LOBYTE(v96) = swift_isUniquelyReferenced_nonNull_native();
    v173[0] = v92;
    v99 = *(v0 + 936);
    v100 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 912, v99);
    v101 = *(v99 - 8);
    v102 = *(v101 + 64) + 15;
    v103 = swift_task_alloc();
    (*(v101 + 16))(v103, v100, v99);
    sub_20DA29C88(v103, 0x656D614E656E6F7ALL, 0xE800000000000000, v96, v173, v79);
    __swift_destroy_boxed_opaque_existential_0((v0 + 912));

    v104 = v173[0];
  }

  else
  {
    sub_20DA27AE8(0x656D614E656E6F7ALL, 0xE800000000000000, sub_20D9D77C8, sub_20D9D2E2C, (v0 + 624));
    sub_20D9D76EC(v0 + 624, &qword_27C8442C0, &qword_20DD94B78);
    v104 = v172;
  }

  v105 = v79;
  v170 = *(v0 + 1112);
  v106 = *(v0 + 1016);
  v107 = *(v0 + 1008);
  v108 = *(v0 + 1000);
  v109 = *(v0 + 984);
  *(v0 + 680) = v105;
  *(v0 + 656) = v108;
  *(v0 + 664) = v107;
  sub_20D9C29D8((v0 + 656), (v0 + 688));

  LOBYTE(v107) = swift_isUniquelyReferenced_nonNull_native();
  v173[0] = v104;
  v110 = *(v0 + 712);
  v111 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 688, v110);
  v112 = *(v110 - 8);
  v113 = *(v112 + 64) + 15;
  v114 = swift_task_alloc();
  (*(v112 + 16))(v114, v111, v110);
  sub_20DA29604(*v114, v114[1], 0x6E6F73616572, 0xE600000000000000, v107, v173);
  __swift_destroy_boxed_opaque_existential_0((v0 + 688));

  v115 = v173[0];
  v116 = sub_20DD63414();
  v117 = [v116 hf_hksvDescription];

  v118 = sub_20DD64EB4();
  v120 = v119;

  *(v0 + 744) = v105;
  *(v0 + 720) = v118;
  *(v0 + 728) = v120;
  sub_20D9C29D8((v0 + 720), (v0 + 752));
  LOBYTE(v118) = swift_isUniquelyReferenced_nonNull_native();
  v173[0] = v115;
  v121 = *(v0 + 776);
  v122 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 752, v121);
  v123 = *(v121 - 8);
  v124 = *(v123 + 64) + 15;
  v125 = swift_task_alloc();
  (*(v123 + 16))(v125, v122, v121);
  sub_20DA29604(*v125, v125[1], 0xD000000000000012, 0x800000020DD98D80, v118, v173);
  __swift_destroy_boxed_opaque_existential_0((v0 + 752));

  v126 = v173[0];
  v127 = [v168 hf_rfc3339Formatter];
  v128 = sub_20DD63624();
  v129 = [v127 stringFromDate_];

  v130 = sub_20DD64EB4();
  v132 = v131;

  *(v0 + 808) = v105;
  *(v0 + 784) = v130;
  *(v0 + 792) = v132;
  sub_20D9C29D8((v0 + 784), (v0 + 816));
  LOBYTE(v130) = swift_isUniquelyReferenced_nonNull_native();
  v173[0] = v126;
  v133 = *(v0 + 840);
  v134 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 816, v133);
  v135 = *(v133 - 8);
  v136 = *(v135 + 64) + 15;
  v137 = swift_task_alloc();
  (*(v135 + 16))(v137, v134, v133);
  sub_20DA29604(*v137, v137[1], 0xD000000000000010, 0x800000020DD98DA0, v130, v173);
  __swift_destroy_boxed_opaque_existential_0((v0 + 816));

  v138 = v173[0];
  v139 = sub_20DD63624();
  v140 = [v139 hf_hksvDescription];

  v141 = sub_20DD64EB4();
  v143 = v142;

  *(v0 + 872) = v105;
  *(v0 + 848) = v141;
  *(v0 + 856) = v143;
  sub_20D9C29D8((v0 + 848), (v0 + 880));
  LOBYTE(v141) = swift_isUniquelyReferenced_nonNull_native();
  v173[0] = v138;
  v144 = *(v0 + 904);
  v145 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 880, v144);
  v146 = *(v144 - 8);
  v147 = *(v146 + 64) + 15;
  v148 = swift_task_alloc();
  (*(v146 + 16))(v148, v145, v144);
  sub_20DA29604(*v148, v148[1], 0xD00000000000001ALL, 0x800000020DD98DC0, v141, v173);
  __swift_destroy_boxed_opaque_existential_0((v0 + 880));

  v149 = v173[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8442C8, &qword_20DD94B80);
  v150 = sub_20DD64DB4();
  v151 = sub_20DD634D4();
  *(v0 + 976) = 0;
  LODWORD(v145) = [v150 hf:v151 appendJSONLToURL:v0 + 976 error:?];

  v152 = *(v0 + 976);
  v153 = *(v0 + 1112);
  v154 = *(v0 + 1104);
  v155 = *(v0 + 1096);
  if (v145)
  {
    v156 = *(v0 + 1088);
    v157 = *(v0 + 1080);
    v158 = *(v0 + 1056);
    v159 = *(v154 + 8);
    v160 = v152;
    v159(v153, v155);

    v161 = *(v0 + 8);
    v162 = *MEMORY[0x277D85DE8];

    return v161(v149);
  }

  v163 = v152;

  sub_20DD634A4();

  swift_willThrow();
  (*(v154 + 8))(v153, v155);
LABEL_10:
  v72 = *(v0 + 1112);
  v73 = *(v0 + 1088);
  v74 = *(v0 + 1080);
  v75 = *(v0 + 1056);

  v76 = *(v0 + 8);
  v77 = *MEMORY[0x277D85DE8];

  return v76();
}

uint64_t sub_20DA23D70(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7)
{
  v7[2] = a7;
  v11 = sub_20DD636C4();
  v7[3] = v11;
  v12 = *(v11 - 8);
  v7[4] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v7[5] = v14;
  v15 = sub_20DD63484();
  v7[6] = v15;
  v16 = *(v15 - 8);
  v7[7] = v16;
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  v7[8] = v18;
  v7[9] = _Block_copy(a6);
  sub_20DD63424();
  v19 = sub_20DD64EB4();
  v21 = v20;
  v7[10] = v20;
  sub_20DD63674();

  v22 = swift_task_alloc();
  v7[11] = v22;
  *v22 = v7;
  v22[1] = sub_20DA23F58;

  return sub_20DA22770(v18, a2, a3, v19, v21, v14);
}

uint64_t sub_20DA23F58()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = v3[8];
  v10 = v3[7];
  v11 = v3[6];
  (*(v3[4] + 8))(v3[5], v3[3]);
  (*(v10 + 8))(v9, v11);
  if (v2)
  {
    v12 = sub_20DD63494();

    v13 = v12;
    v14 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8442C8, &qword_20DD94B80);
    v12 = sub_20DD64DB4();

    v14 = v12;
    v13 = 0;
  }

  v15 = v12;
  v16 = v4[8];
  v17 = v4[9];
  v18 = v4[5];
  v17[2](v17, v14, v13);

  _Block_release(v17);

  v19 = *(v8 + 8);

  return v19();
}

uint64_t sub_20DA241E4(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v3[29] = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843530, &qword_20DD95680);
  v3[30] = v4;
  v5 = *(v4 - 8);
  v3[31] = v5;
  v6 = *(v5 + 64) + 15;
  v3[32] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8442D8, &unk_20DD94BA0);
  v3[33] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8442E0, &qword_20DD95D90) - 8) + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v10 = sub_20DD636C4();
  v3[39] = v10;
  v11 = *(v10 - 8);
  v3[40] = v11;
  v12 = *(v11 + 64) + 15;
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v13 = sub_20DD63484();
  v3[44] = v13;
  v14 = *(v13 - 8);
  v3[45] = v14;
  v15 = *(v14 + 64) + 15;
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8442B8, &qword_20DD94B60) - 8) + 64) + 15;
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v17 = sub_20DD63514();
  v3[50] = v17;
  v18 = *(v17 - 8);
  v3[51] = v18;
  v19 = *(v18 + 64) + 15;
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v20 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20DA24514, v2, 0);
}

uint64_t sub_20DA24514()
{
  v185 = v0;
  v184[2] = *MEMORY[0x277D85DE8];
  v183 = v0;
  if (![objc_opt_self() isInternalInstall])
  {
    goto LABEL_23;
  }

  v2 = *(v0[28] + 112);
  v3 = v0[50];
  v4 = v0[51];
  v5 = v0[49];
  if (!v2)
  {
    (*(v4 + 56))(v0[49], 1, 1, v0[50]);
    goto LABEL_22;
  }

  v6 = v0[29];
  v7 = v2;
  static CameraEventDebugLogger.debugLogFileURL(for:)(v7, v5);

  v8 = *(v4 + 48);
  if (v8(v5, 1, v3) == 1)
  {
LABEL_22:
    sub_20D9D76EC(v0[49], &qword_27C8442B8, &qword_20DD94B60);
LABEL_23:
    [objc_opt_self() hf:33 errorWithCode:?];
    swift_willThrow();
    goto LABEL_24;
  }

  v9 = v0[27];
  v10 = *(v0[51] + 32);
  v10(v0[53], v0[49], v0[50]);
  if (!v9)
  {
    v11 = v0[28];
    v12 = *(v11 + 128);
    v13 = __CFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      __break(1u);
      goto LABEL_67;
    }

    *(v11 + 128) = v14;
  }

  v15 = v0[28];
  v16 = sub_20DA25998(v0[26], v0[27]);
  v1 = v16;
  if (!*(v16 + 16))
  {
    v174 = v16;
    (*(v0[51] + 8))(v0[53], v0[50]);
LABEL_62:
    v143 = v0[52];
    v142 = v0[53];
    v145 = v0[48];
    v144 = v0[49];
    v147 = v0[46];
    v146 = v0[47];
    v148 = v0[43];
    v149 = v183[42];
    v150 = v183[41];
    v151 = v183[38];
    v167 = v183[37];
    v169 = v183[36];
    v171 = v183[35];
    v178 = v183[34];
    v182 = v183[32];

    v152 = v183[1];
    v153 = *MEMORY[0x277D85DE8];

    return v152(v174);
  }

  if (v0[27] != 1)
  {
    goto LABEL_60;
  }

  v3 = v0[26];
  v5 = v3 >> 62;
  if (!(v3 >> 62))
  {
    v17 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v172 = v16;
    if (!v17)
    {
      goto LABEL_41;
    }

LABEL_11:
    v162 = v5;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v155 = MEMORY[0x20F326680](0, v0[26]);
      v25 = (v17 - 1);
      if (__OFSUB__(v17, 1))
      {
        goto LABEL_76;
      }

      v22 = MEMORY[0x20F326680](v25, v0[26]);
      v21 = v155;
LABEL_16:
      v156 = v10;
      v163 = v8;
      v161 = v3;
      v23 = v0[43];
      v24 = [v21 dateOfOccurrence];
      sub_20DD63674();
      v25 = [v22 hf_endDate];
      if (v25)
      {
        v30 = v25;
        v31 = v0[47];
        v32 = v0[45];
        v164 = v0[44];
        v33 = v0[43];
        v34 = v183[42];
        v35 = v183[38];
        v36 = v183[28];

        sub_20DD63674();
        v0 = v183;
        sub_20DD63444();
        v37 = OBJC_IVAR___HFCameraEventDebugLogger_previousViewModelDateInterval;
        swift_beginAccess();
        v179 = v36;
        v175 = v37;
        sub_20D9D7558(v36 + v37, v35, &qword_27C8442E0, &qword_20DD95D90);
        v38 = *(v32 + 48);
        LODWORD(v37) = v38(v35, 1, v164);
        sub_20D9D76EC(v35, &qword_27C8442E0, &qword_20DD95D90);
        if (v37 != 1)
        {
          v39 = v183[44];
          v40 = v183[45];
          v41 = v183[37];
          v42 = v183[34];
          v43 = v183[33];
          (*(v40 + 16))(v41, v183[47], v39);
          (*(v40 + 56))(v41, 0, 1, v39);
          v44 = *(v43 + 48);
          sub_20D9D7558(v41, v42, &qword_27C8442E0, &qword_20DD95D90);
          v0 = v183;
          sub_20D9D7558(v179 + v175, v42 + v44, &qword_27C8442E0, &qword_20DD95D90);
          v45 = v38(v42, 1, v39);
          v46 = v183[44];
          if (v45 == 1)
          {
            sub_20D9D76EC(v183[37], &qword_27C8442E0, &qword_20DD95D90);
            if (v38(v42 + v44, 1, v46) == 1)
            {
              v47 = v183[45];
              v48 = v183[34];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              sub_20D9D76EC(v48, &qword_27C8442E0, &qword_20DD95D90);
              (*(v47 + 8))(v183[47], v183[44]);
LABEL_39:
              v1 = v172;
LABEL_40:
              v3 = v161;
              v5 = v162;
              goto LABEL_41;
            }

            goto LABEL_30;
          }

          sub_20D9D7558(v183[34], v183[36], &qword_27C8442E0, &qword_20DD95D90);
          if (v38(v42 + v44, 1, v46) == 1)
          {
            v63 = v183[44];
            v62 = v183[45];
            v64 = v183[36];
            sub_20D9D76EC(v183[37], &qword_27C8442E0, &qword_20DD95D90);
            (*(v62 + 8))(v64, v63);
LABEL_30:
            sub_20D9D76EC(v183[34], &qword_27C8442D8, &unk_20DD94BA0);
            goto LABEL_31;
          }

          v106 = v183[45];
          v107 = v183[46];
          v108 = v183[44];
          v109 = v183[37];
          v110 = v183[36];
          v166 = v183[34];
          (*(v106 + 32))(v107, v42 + v44, v108);
          sub_20DA2B610(&qword_27C844300, MEMORY[0x277CC88A8]);
          v111 = sub_20DD64E64();
          v112 = *(v106 + 8);
          v112(v107, v108);
          sub_20D9D76EC(v109, &qword_27C8442E0, &qword_20DD95D90);
          v113 = v110;
          v0 = v183;
          v112(v113, v108);
          sub_20D9D76EC(v166, &qword_27C8442E0, &qword_20DD95D90);
          if (v111)
          {
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v112(v183[47], v183[44]);
            goto LABEL_39;
          }
        }

LABEL_31:
        v165 = v0[50];
        v66 = v0[40];
        v65 = v0[41];
        v67 = v0[39];
        v157 = v67;
        v158 = v0[47];
        v159 = v0[29];
        v160 = v0[48];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8442E8, &unk_20DD94BB0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_20DD94280;
        *(inited + 32) = 0x7461447472617473;
        *(inited + 40) = 0xE900000000000065;
        v69 = objc_opt_self();
        v70 = [v69 hf_rfc3339Formatter];
        sub_20DD63464();
        v71 = sub_20DD63624();
        v72 = *(v66 + 8);
        v72(v65, v67);
        v73 = [v70 stringFromDate_];

        v74 = sub_20DD64EB4();
        v76 = v75;

        v77 = MEMORY[0x277D837D0];
        *(inited + 48) = v74;
        *(inited + 56) = v76;
        *(inited + 72) = v77;
        *(inited + 80) = 0x65746144646E65;
        *(inited + 88) = 0xE700000000000000;
        v78 = [v69 hf_rfc3339Formatter];
        sub_20DD63434();
        v79 = sub_20DD63624();
        v72(v65, v157);
        v80 = [v78 stringFromDate_];

        v81 = sub_20DD64EB4();
        v83 = v82;

        *(inited + 120) = v77;
        *(inited + 96) = v81;
        *(inited + 104) = v83;
        sub_20D9D5FE0(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8442F0, &qword_20DD93BC8);
        swift_arrayDestroy();
        v84 = v7;
        static CameraEventDebugLogger.dateIntervalFileURL(for:)(v84, v160);

        if (v163(v160, 1, v165) == 1)
        {
          v0 = v183;
          v85 = v183[48];

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_20D9D76EC(v85, &qword_27C8442B8, &qword_20DD94B60);
        }

        else
        {
          v0 = v183;
          v156(v183[52], v183[48], v183[50]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8442C8, &qword_20DD94B80);
          v86 = sub_20DD64DB4();

          v87 = sub_20DD634D4();
          v183[25] = 0;
          v88 = [v86 hf:v87 writeJSONToURL:v183 + 25 error:?];

          v89 = v183[25];
          if (!v88)
          {
            v98 = v183[52];
            v97 = v183[53];
            v99 = v183[50];
            v100 = v183[51];
            v101 = v183[47];
            v102 = v183[45];
            v103 = v183[44];
            v104 = v89;

            sub_20DD634A4();

            swift_willThrow();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v105 = *(v100 + 8);
            v105(v98, v99);
            v0 = v183;
            (*(v102 + 8))(v101, v103);
            v105(v97, v99);
            goto LABEL_24;
          }

          v90 = v183[52];
          v91 = v183[50];
          v92 = *(v183[51] + 8);
          v93 = v89;
          v92(v90, v91);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        v1 = v172;
        v94 = v0[44];
        v95 = v0[45];
        v96 = v0[35];
        (*(v95 + 32))(v96, v0[47], v94);
        (*(v95 + 56))(v96, 0, 1, v94);
        swift_beginAccess();
        sub_20DA2A8F4(v96, v179 + v175);
        swift_endAccess();
        goto LABEL_40;
      }

      __break(1u);
LABEL_76:
      __break(1u);
      return MEMORY[0x2821FEBD8](v25, v26, v27, v28, v29);
    }

    v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      v19 = v17 - 1;
      if (!__OFSUB__(v17, 1))
      {
        if (v19 < v18)
        {
          v20 = v0[26];
          v21 = *(v20 + 32);
          v22 = *(v20 + 32 + 8 * v19);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          goto LABEL_16;
        }

LABEL_73:
        __break(1u);
        goto LABEL_74;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_73;
  }

LABEL_67:
  v17 = sub_20DD655B4();
  v172 = v1;
  if (v17)
  {
    goto LABEL_11;
  }

LABEL_41:
  if (v5)
  {
    v115 = v0[26];
    if (v3 < 0)
    {
      v116 = v0[26];
    }

    v114 = sub_20DD655B4();
  }

  else
  {
    v114 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v117 = MEMORY[0x277D84F90];
  if (!v114)
  {
    goto LABEL_56;
  }

  v184[0] = MEMORY[0x277D84F90];
  sub_20DA4B028(0, v114 & ~(v114 >> 63), 0);
  if (v114 < 0)
  {
LABEL_74:
    __break(1u);
  }

  v118 = 0;
  v119 = v0[31];
  v181 = v0[30];
  v117 = v184[0];
  v120 = v3 & 0xC000000000000001;
  v177 = v0[26] + 32;
  do
  {
    if (v120)
    {
      v121 = MEMORY[0x20F326680](v118, v0[26]);
    }

    else
    {
      v121 = *(v177 + 8 * v118);
      swift_unknownObjectRetain();
    }

    v122 = v0[32];
    v123 = *(v181 + 48);
    v124 = [v121 uniqueIdentifier];
    sub_20DD63714();

    *(v122 + v123) = v121;
    v184[0] = v117;
    v126 = *(v117 + 16);
    v125 = *(v117 + 24);
    if (v126 >= v125 >> 1)
    {
      sub_20DA4B028(v125 > 1, v126 + 1, 1);
      v117 = v184[0];
    }

    v127 = v0[32];
    ++v118;
    *(v117 + 16) = v126 + 1;
    sub_20DA031AC(v127, v117 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v126, &qword_27C843530, &qword_20DD95680);
  }

  while (v114 != v118);
  v1 = v172;
LABEL_56:
  if (*(v117 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843440, &qword_20DD94BC0);
    v128 = sub_20DD65884();
  }

  else
  {
    v128 = MEMORY[0x277D84F98];
  }

  v184[0] = v128;

  sub_20DA28F0C(v129, 1, v184);
  v130 = v0[28];

  v131 = *(v130 + 136);
  *(v130 + 136) = v184[0];

LABEL_60:
  v132 = v0[53];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8442C8, &qword_20DD94B80);
  v133 = sub_20DD64DB4();
  v134 = sub_20DD634D4();
  v0[24] = 0;
  v135 = [v133 hf:v134 appendJSONLToURL:v0 + 24 error:?];

  v136 = v0[24];
  v137 = v0[53];
  v138 = v0[50];
  v139 = v0[51];
  if (v135)
  {
    v174 = v1;
    v140 = *(v139 + 8);
    v141 = v136;
    v140(v137, v138);
    goto LABEL_62;
  }

  v154 = v136;

  sub_20DD634A4();

  swift_willThrow();
  (*(v139 + 8))(v137, v138);
LABEL_24:
  v50 = v0[52];
  v49 = v0[53];
  v52 = v0[48];
  v51 = v0[49];
  v54 = v0[46];
  v53 = v0[47];
  v55 = v183[43];
  v56 = v183[42];
  v57 = v183[41];
  v58 = v183[38];
  v168 = v183[37];
  v170 = v183[36];
  v173 = v183[35];
  v176 = v183[34];
  v180 = v183[32];

  v59 = v183[1];
  v60 = *MEMORY[0x277D85DE8];

  return v59();
}