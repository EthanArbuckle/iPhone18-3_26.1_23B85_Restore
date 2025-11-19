uint64_t sub_1D1D658F4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *a2;
  v6 = *(a1 + 32);
  *&v8 = *a1;
  *(&v8 + 1) = v2;
  v9 = v3;
  v10 = v4;
  v11 = v6;
  sub_1D1C2B3B4(v8, v2, v3);
  return sub_1D1D687D8(&v8);
}

unint64_t sub_1D1D65948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
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
    return sub_1D1741A30(a4, &qword_1EC64E500, &qword_1D1EABC60);
  }

  if (v17 < 1)
  {
    return sub_1D1741A30(a4, &qword_1EC64E500, &qword_1D1EABC60);
  }

  result = sub_1D1D52DAC(a4, v15, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
  if (v12 >= v17)
  {
    return sub_1D1741A30(a4, &qword_1EC64E500, &qword_1D1EABC60);
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t *sub_1D1D65AD4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1D1D669CC(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_1D1D65B70(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D1E66A7C() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D17C4CF0;

  return sub_1D1D531A4(a1, v10, v11, v1 + v7, v1 + v9, v12);
}

uint64_t sub_1D1D65CAC(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v4 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  v52 = *(v4 - 8);
  v53 = v4;
  v5 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = sub_1D1E6873C();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v62 = MEMORY[0x1E69E7CC0];
    sub_1D178DCE4(0, v8 & ~(v8 >> 63), 0);
    v57 = v62;
    if (v55)
    {
      result = sub_1D1E686DC();
    }

    else
    {
      v11 = -1 << *(a1 + 32);
      result = sub_1D1E6869C();
      v10 = *(a1 + 36);
    }

    v59 = result;
    v60 = v10;
    v61 = v55 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v50 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeUUID;
      v51 = a1;
      v13 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v13 = a1;
      }

      v47 = a1 + 56;
      v48 = v13;
      v45[1] = v2;
      v46 = a1 + 64;
      v49 = v8;
      while (v12 < v8)
      {
        if (__OFADD__(v12++, 1))
        {
          goto LABEL_37;
        }

        v16 = v59;
        v17 = v61;
        v56 = v60;
        sub_1D1790CC8(v59, v60, v61, a1);
        v19 = v18;
        v20 = [v18 uniqueIdentifier];
        sub_1D1E66A5C();

        v21 = [v19 name];
        v22 = sub_1D1E6781C();
        v24 = v23;

        v25 = v7;
        v26 = v53;
        v27 = *(v53 + 24);
        v28 = sub_1D1E66A7C();
        (*(*(v28 - 8) + 16))(v25 + v27, v54 + v50, v28);

        v29 = *(v26 + 20);
        v7 = v25;
        v30 = (v25 + v29);
        *v30 = v22;
        v30[1] = v24;
        v31 = v57;
        v62 = v57;
        v33 = *(v57 + 16);
        v32 = *(v57 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_1D178DCE4(v32 > 1, v33 + 1, 1);
          v31 = v62;
        }

        *(v31 + 16) = v33 + 1;
        v34 = (*(v52 + 80) + 32) & ~*(v52 + 80);
        v57 = v31;
        result = sub_1D1D66490(v25, v31 + v34 + *(v52 + 72) * v33, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
        if (v55)
        {
          a1 = v51;
          if (!v17)
          {
            goto LABEL_42;
          }

          if (sub_1D1E686FC())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v8 = v49;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E568, &qword_1D1EABE68);
          v14 = sub_1D1E681AC();
          sub_1D1E687AC();
          result = v14(v58, 0);
          if (v12 == v8)
          {
LABEL_34:
            sub_1D1716920(v59, v60, v61);
            return v57;
          }
        }

        else
        {
          a1 = v51;
          if (v17)
          {
            goto LABEL_43;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v35 = 1 << *(v51 + 32);
          if (v16 >= v35)
          {
            goto LABEL_38;
          }

          v36 = v16 >> 6;
          v37 = *(v47 + 8 * (v16 >> 6));
          if (((v37 >> v16) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v51 + 36) != v56)
          {
            goto LABEL_40;
          }

          v38 = v37 & (-2 << (v16 & 0x3F));
          if (v38)
          {
            v35 = __clz(__rbit64(v38)) | v16 & 0x7FFFFFFFFFFFFFC0;
            v8 = v49;
          }

          else
          {
            v39 = v36 << 6;
            v40 = v36 + 1;
            v41 = (v46 + 8 * v36);
            v8 = v49;
            while (v40 < (v35 + 63) >> 6)
            {
              v43 = *v41++;
              v42 = v43;
              v39 += 64;
              ++v40;
              if (v43)
              {
                result = sub_1D1716920(v16, v56, 0);
                v35 = __clz(__rbit64(v42)) + v39;
                goto LABEL_33;
              }
            }

            result = sub_1D1716920(v16, v56, 0);
          }

LABEL_33:
          v44 = *(a1 + 36);
          v59 = v35;
          v60 = v44;
          v61 = 0;
          if (v12 == v8)
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

uint64_t sub_1D1D6614C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for MockObserver();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1D1E6873C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1D1E6873C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_1D1D6624C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_1D1E66A7C();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1D1D66394(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1D663DC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1D55C00(a1, a2, v7, v6);
}

uint64_t sub_1D1D66490(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1D66500()
{
  result = sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = _s10ThermostatC23ThermostatServiceConfigVMa(319);
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_1D1E66C5C();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of AutoClimateModel.Thermostat.startObservation()()
{
  v2 = *(*v0 + 224);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D17C4CF0;

  return v6();
}

uint64_t dispatch thunk of AutoClimateModel.Thermostat.initialSetup()()
{
  v2 = *(*v0 + 240);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D17C4BFC;

  return v6();
}

uint64_t sub_1D1D6693C()
{
  result = sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D1D669CC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a2;
  v32 = a1;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = 0;
  v36 = a3;
  v11 = 0;
  v12 = *(a3 + 56);
  v31 = a3 + 56;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v33 = (v7 + 8);
  v34 = v16;
LABEL_5:
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v39 = (v15 - 1) & v15;
LABEL_12:
    v20 = v17 | (v11 << 6);
    v21 = *(v36 + 48);
    v37 = v20;
    v38 = *(v21 + 8 * v20);
    v22 = [v38 uniqueIdentifier];
    sub_1D1E66A5C();

    v23 = 0;
    v24 = *(a4 + 16);
    do
    {
      if (v24 == v23)
      {
        (*v33)(v10, v6);

        v16 = v34;
        v15 = v39;
        goto LABEL_5;
      }

      v25 = v23 + 1;
      v26 = a4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v23;
      sub_1D1D66394(&qword_1EE07D170, MEMORY[0x1E69695A8]);
      v27 = sub_1D1E6775C();
      v23 = v25;
    }

    while ((v27 & 1) == 0);
    (*v33)(v10, v6);

    *(v32 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    v16 = v34;
    v28 = __OFADD__(v35++, 1);
    v15 = v39;
    if (v28)
    {
      __break(1u);
LABEL_18:
      v29 = v36;

      sub_1D19E27F8(v32, v30, v35, v29);
      return;
    }
  }

  v18 = v11;
  while (1)
  {
    v11 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v11 >= v16)
    {
      goto LABEL_18;
    }

    v19 = *(v31 + 8 * v11);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v39 = (v19 - 1) & v19;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1D1D66CA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46 = *MEMORY[0x1E69E9840];
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a1 + 32);
  v11 = v9 & 0x3F;
  v12 = ((1 << v9) + 63) >> 6;
  v13 = (8 * v12);

  if (v11 > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v35 = v12;
    v36 = v3;
    v34[1] = v34;
    MEMORY[0x1EEE9AC00](v14);
    v38 = v34 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v38, v13);
    v41 = a1;
    v42 = 0;
    v15 = 0;
    v16 = *(a1 + 56);
    v37 = a1 + 56;
    v17 = 1 << *(a1 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v16;
    v20 = (v17 + 63) >> 6;
    v39 = (v7 + 8);
    v40 = v20;
    v13 = &qword_1EE07D170;
LABEL_6:
    while (v19)
    {
      v21 = __clz(__rbit64(v19));
      v45 = (v19 - 1) & v19;
LABEL_13:
      v24 = v21 | (v15 << 6);
      v25 = *(a1 + 48);
      v43 = v24;
      v44 = *(v25 + 8 * v24);
      v3 = [v44 uniqueIdentifier];
      sub_1D1E66A5C();

      v26 = 0;
      v27 = *(a2 + 16);
      do
      {
        if (v27 == v26)
        {
          (*v39)(v10, v6);

          v20 = v40;
          a1 = v41;
          v19 = v45;
          goto LABEL_6;
        }

        v12 = v26 + 1;
        v3 = (a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v26);
        sub_1D1D66394(&qword_1EE07D170, MEMORY[0x1E69695A8]);
        v28 = sub_1D1E6775C();
        v26 = v12;
      }

      while ((v28 & 1) == 0);
      (*v39)(v10, v6);

      *&v38[(v43 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v43;
      a1 = v41;
      v29 = __OFADD__(v42++, 1);
      v20 = v40;
      v19 = v45;
      if (v29)
      {
        __break(1u);
LABEL_19:
        v30 = sub_1D19E27F8(v38, v35, v42, a1);

        goto LABEL_20;
      }
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {
        goto LABEL_19;
      }

      v23 = *(v37 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v45 = (v23 - 1) & v23;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v33 = swift_slowAlloc();

  v30 = sub_1D1D65AD4(v33, v12, a1, a2);

  MEMORY[0x1D3893640](v33, -1, -1);

LABEL_20:
  v31 = *MEMORY[0x1E69E9840];
  return v30;
}

uint64_t sub_1D1D670A8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1E69E7CD0];
    v40 = MEMORY[0x1E69E7CD0];

    v37 = sub_1D1E686EC();
    v10 = sub_1D1E6877C();
    if (v10)
    {
      v11 = v10;
      v36 = sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
      v12 = v11;
      v35 = (v6 + 8);
      do
      {
        v38 = v12;
        swift_dynamicCast();
        v13 = [v39 uniqueIdentifier];
        sub_1D1E66A5C();

        v14 = 0;
        v15 = *(a2 + 16);
        do
        {
          if (v15 == v14)
          {
            (*v35)(v9, v5);

            goto LABEL_5;
          }

          v16 = v14 + 1;
          v17 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14;
          sub_1D1D66394(&qword_1EE07D170, MEMORY[0x1E69695A8]);
          v18 = sub_1D1E6775C();
          v14 = v16;
        }

        while ((v18 & 1) == 0);
        (*v35)(v9, v5);
        v19 = v39;
        v20 = *(v2 + 16);
        if (*(v2 + 24) <= v20)
        {
          sub_1D193C814(v20 + 1);
        }

        v2 = v40;
        v21 = *(v40 + 40);
        result = sub_1D1E684EC();
        v23 = v2 + 56;
        v24 = -1 << *(v2 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v2 + 56 + 8 * (v25 >> 6))) != 0)
        {
          v27 = __clz(__rbit64((-1 << v25) & ~*(v2 + 56 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v28 = 0;
          v29 = (63 - v24) >> 6;
          do
          {
            if (++v26 == v29 && (v28 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v30 = v26 == v29;
            if (v26 == v29)
            {
              v26 = 0;
            }

            v28 |= v30;
            v31 = *(v23 + 8 * v26);
          }

          while (v31 == -1);
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
        }

        *(v23 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        *(*(v2 + 48) + 8 * v27) = v19;
        ++*(v2 + 16);
LABEL_5:
        v12 = sub_1D1E6877C();
      }

      while (v12);
    }
  }

  else
  {
    v32 = v34;
    v33 = sub_1D1D66CA4(a1, a2);
    if (!v32)
    {
      return v33;
    }
  }

  return v2;
}

uint64_t sub_1D1D67428()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D17C4CF0;

  return sub_1D1D55ED4(v2, v3, v5, v4);
}

uint64_t sub_1D1D674D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D17C4CF0;

  return sub_1D1D57A28(v2, v3, v5, v4);
}

uint64_t sub_1D1D67580()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D17C4CF0;

  return sub_1D1D59540(v2, v3, v5, v4);
}

uint64_t sub_1D1D6762C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_1D1E66A7C() - 8);
  v4 = *(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  return sub_1D1D54990(v1 + ((v4 + 32) & ~v4), v1 + ((*(v3 + 64) + v4 + ((v4 + 32) & ~v4)) & ~v4), a1);
}

uint64_t sub_1D1D676D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1D67748@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_1D1E66A7C() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v3 + 64) + v4 + v5) & ~v4);

  return sub_1D1D542B4(v6, v1 + v5, v7, a1);
}

uint64_t sub_1D1D677E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1B1448C(a1, v4, v5, v7, v6);
}

uint64_t sub_1D1D678A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_1D1E66A7C() - 8);
  v4 = *(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  return sub_1D1D5450C(v1[4], v1 + ((v4 + 40) & ~v4), v1 + ((*(v3 + 64) + v4 + ((v4 + 40) & ~v4)) & ~v4), a1);
}

unint64_t AutoClimateModel.Thermostat.State.UpdateError.UpdateType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t AutoClimateModel.Thermostat.State.UpdateError.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x1D3892850](0);
  return MEMORY[0x1D3892850](v1);
}

uint64_t AutoClimateModel.Thermostat.State.UpdateError.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](0);
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1D67A3C()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](0);
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1D67A90()
{
  v1 = *v0;
  MEMORY[0x1D3892850](0);
  return MEMORY[0x1D3892850](v1);
}

uint64_t sub_1D1D67AD0()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](0);
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

unint64_t sub_1D1D67B24()
{
  result = qword_1EC64E580;
  if (!qword_1EC64E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E580);
  }

  return result;
}

unint64_t sub_1D1D67B7C()
{
  result = qword_1EC64E588;
  if (!qword_1EC64E588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E588);
  }

  return result;
}

uint64_t AutoClimateModel.Thermostat.State.accessoryUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State_accessoryUUID;
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D1D67CC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D1D67EC4();
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__adaptiveTemperatureSettings;
  swift_beginAccess();
  return sub_1D1741C08(v3 + v4, a2, &qword_1EC64E538, &qword_1D1EAC240);
}

uint64_t sub_1D1D67D70(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E538, &qword_1D1EAC240);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1D1741C08(a1, &v10 - v6, &qword_1EC64E538, &qword_1D1EAC240);
  v8 = *a2;
  return sub_1D1D67F68(v7);
}

uint64_t sub_1D1D67E1C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1D1D67EC4();
  sub_1D1E66CAC();

  v3 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__adaptiveTemperatureSettings;
  swift_beginAccess();
  return sub_1D1741C08(v5 + v3, a1, &qword_1EC64E538, &qword_1D1EAC240);
}

unint64_t sub_1D1D67EC4()
{
  result = qword_1EC64E508;
  if (!qword_1EC64E508)
  {
    type metadata accessor for AutoClimateModel.Thermostat.State();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E508);
  }

  return result;
}

uint64_t type metadata accessor for AutoClimateModel.Thermostat.State()
{
  result = qword_1EC64E5B0;
  if (!qword_1EC64E5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1D67F68(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E538, &qword_1D1EAC240);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__adaptiveTemperatureSettings;
  swift_beginAccess();
  sub_1D1741C08(v1 + v7, v6, &qword_1EC64E538, &qword_1D1EAC240);
  v8 = sub_1D1D6913C(v6, a1);
  sub_1D1741A30(v6, &qword_1EC64E538, &qword_1D1EAC240);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_1D1D67EC4();
    sub_1D1E66C9C();
  }

  else
  {
    sub_1D1741C08(a1, v6, &qword_1EC64E538, &qword_1D1EAC240);
    swift_beginAccess();
    sub_1D1D693DC(v6, v1 + v7);
    swift_endAccess();
  }

  return sub_1D1741A30(a1, &qword_1EC64E538, &qword_1D1EAC240);
}

uint64_t sub_1D1D68140(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E538, &qword_1D1EAC240);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1D1741C08(a2, &v10 - v6, &qword_1EC64E538, &qword_1D1EAC240);
  v8 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__adaptiveTemperatureSettings;
  swift_beginAccess();
  sub_1D1D693DC(v7, a1 + v8);
  return swift_endAccess();
}

void (*sub_1D1D6821C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1D1D67EC4();
  sub_1D1E66CAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  v4[7] = sub_1D1D67C68();
  return sub_1D1D68324;
}

uint64_t sub_1D1D68390@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1D1D67EC4();
  sub_1D1E66CAC();

  v3 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__sleepSchedule;
  swift_beginAccess();
  *a1 = *(v5 + v3);
}

uint64_t sub_1D1D68428(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__sleepSchedule;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v6 = sub_1D1D69468(v5, v2);

  if (v6)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D1D67EC4();
    sub_1D1E66C9C();
  }

  else
  {
    v9 = *(v1 + v3);
    *(v1 + v3) = v2;
  }
}

uint64_t sub_1D1D68548(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__sleepSchedule;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

void (*sub_1D1D685B8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1D1D67EC4();
  sub_1D1E66CAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  v4[7] = sub_1D1D68330();
  return sub_1D1D686C0;
}

uint64_t sub_1D1D6872C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1D1D67EC4();
  sub_1D1E66CAC();

  v3 = v1 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__cleanEnergySetting;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(v3 + 32);
  return sub_1D1C2B3B4(v4, v5, v6);
}

uint64_t sub_1D1D687D8(__int128 *a1)
{
  v2 = a1[1];
  v15 = *a1;
  v16 = v2;
  v17 = *(a1 + 32);
  v3 = v1 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__cleanEnergySetting;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v18[0] = *v3;
  v18[1] = v4;
  v19 = *(v3 + 32);
  sub_1D1741C08(v18, v14, &qword_1EC64E548, &qword_1D1EABE08);
  v5 = sub_1D1D6952C(v18, &v15);
  sub_1D1741A30(v18, &qword_1EC64E548, &qword_1D1EABE08);
  if (v5)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v14[0] = v1;
    sub_1D1D67EC4();
    sub_1D1E66C9C();
    sub_1D1741A30(&v15, &qword_1EC64E548, &qword_1D1EABE08);
  }

  else
  {
    v8 = *v3;
    v9 = *(v3 + 8);
    v10 = *(v3 + 16);
    v11 = *(v3 + 24);
    v12 = v16;
    *v3 = v15;
    *(v3 + 16) = v12;
    v13 = *(v3 + 32);
    *(v3 + 32) = v17;
    return sub_1D1C2B470(v8, v9, v10);
  }
}

uint64_t sub_1D1D68964(uint64_t a1, uint64_t a2)
{
  v3 = a1 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__cleanEnergySetting;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v8;
  v9 = *(v3 + 32);
  *(v3 + 32) = *(a2 + 32);
  sub_1D1741C08(a2, &v11, &qword_1EC64E548, &qword_1D1EABE08);
  return sub_1D1C2B470(v4, v5, v6);
}

void (*sub_1D1D68A1C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1D1D67EC4();
  sub_1D1E66CAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  v4[7] = sub_1D1D686CC();
  return sub_1D1D68B24;
}

uint64_t sub_1D1D68B30()
{
  v1 = v0;
  v2 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E538, &qword_1D1EAC240);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v29 - v9;
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_1D1E6884C();
  v34 = v29;
  v35 = v30;
  MEMORY[0x1D3890F70](0x5649524420202020, 0xEC000000203A5245);
  swift_getKeyPath();
  v29 = v0;
  sub_1D1D67EC4();
  sub_1D1E66CAC();

  v11 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__adaptiveTemperatureSettings;
  swift_beginAccess();
  sub_1D1741C08(v1 + v11, v10, &qword_1EC64E538, &qword_1D1EAC240);
  if ((*(v3 + 48))(v10, 1, v2))
  {
    sub_1D1741A30(v10, &qword_1EC64E538, &qword_1D1EAC240);
    v12 = 0xE700000000000000;
    v13 = 0x6E776F6E6B6E55;
    v14 = 0x6E776F6E6B6E55;
  }

  else
  {
    sub_1D1D69A70(v10, v6);
    sub_1D1741A30(v10, &qword_1EC64E538, &qword_1D1EAC240);
    v15 = AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.description.getter();
    v12 = v16;
    sub_1D1D69AD4(v6);
    v14 = v15;
    v13 = 0x6E776F6E6B6E55;
  }

  MEMORY[0x1D3890F70](v14, v12);

  MEMORY[0x1D3890F70](0x484353202020200ALL, 0xEF203A454C554445);
  swift_getKeyPath();
  v29 = v1;
  sub_1D1E66CAC();

  v17 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__sleepSchedule;
  swift_beginAccess();
  if (*(v1 + v17))
  {
    v29 = *(v1 + v17);
    v18 = AutoClimateModel.Thermostat.WeekdaySchedule.description.getter();
    v20 = v19;
  }

  else
  {
    v20 = 0xE700000000000000;
    v18 = 0x6E776F6E6B6E55;
  }

  MEMORY[0x1D3890F70](v18, v20);

  MEMORY[0x1D3890F70](0xD000000000000013, 0x80000001D1EC8E10);
  swift_getKeyPath();
  v29 = v1;
  sub_1D1E66CAC();

  v21 = v1 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__cleanEnergySetting;
  swift_beginAccess();
  v22 = *(v21 + 16);
  if (v22 == 1)
  {
    v23 = 0xE700000000000000;
  }

  else
  {
    v24 = *(v21 + 32);
    v25 = *(v21 + 24);
    v26 = *(v21 + 8);
    LOWORD(v29) = __PAIR16__(BYTE1(*v21), *v21) & 0x101;
    v30 = v26;
    v31 = v22;
    v32 = v25;
    v33 = v24;
    v13 = AutoClimateModel.Thermostat.CleanEnergySettingConfig.description.getter();
    v23 = v27;
  }

  MEMORY[0x1D3890F70](v13, v23);

  return v34;
}

uint64_t AutoClimateModel.Thermostat.State.deinit()
{
  v1 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State_accessoryUUID;
  v2 = sub_1D1E66A7C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D1741A30(v0 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__adaptiveTemperatureSettings, &qword_1EC64E538, &qword_1D1EAC240);
  v3 = *(v0 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__sleepSchedule);

  v4 = *(v0 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__cleanEnergySetting + 24);
  v5 = *(v0 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__cleanEnergySetting + 32);
  sub_1D1C2B470(*(v0 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__cleanEnergySetting), *(v0 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__cleanEnergySetting + 8), *(v0 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__cleanEnergySetting + 16));
  v6 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State___observationRegistrar;
  v7 = sub_1D1E66CEC();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t AutoClimateModel.Thermostat.State.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State_accessoryUUID;
  v2 = sub_1D1E66A7C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D1741A30(v0 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__adaptiveTemperatureSettings, &qword_1EC64E538, &qword_1D1EAC240);
  v3 = *(v0 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__sleepSchedule);

  v4 = *(v0 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__cleanEnergySetting + 24);
  v5 = *(v0 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__cleanEnergySetting + 32);
  sub_1D1C2B470(*(v0 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__cleanEnergySetting), *(v0 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__cleanEnergySetting + 8), *(v0 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__cleanEnergySetting + 16));
  v6 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State___observationRegistrar;
  v7 = sub_1D1E66CEC();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D1D6913C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E538, &qword_1D1EAC240);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v23 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E540, &qword_1D1EABE00);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_1D1741C08(a1, &v23 - v16, &qword_1EC64E538, &qword_1D1EAC240);
  sub_1D1741C08(a2, &v17[v18], &qword_1EC64E538, &qword_1D1EAC240);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1D1741C08(v17, v12, &qword_1EC64E538, &qword_1D1EAC240);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      sub_1D1D69B30(&v17[v18], v8);
      v21 = _s13HomeDataModel011AutoClimateC0C10ThermostatC25AdaptiveTemperatureConfigV2eeoiySbAG_AGtFZ_0(v12, v8);
      sub_1D1D69AD4(v8);
      sub_1D1D69AD4(v12);
      sub_1D1741A30(v17, &qword_1EC64E538, &qword_1D1EAC240);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    sub_1D1D69AD4(v12);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1D1741A30(v17, &qword_1EC64E540, &qword_1D1EABE00);
    v20 = 1;
    return v20 & 1;
  }

  sub_1D1741A30(v17, &qword_1EC64E538, &qword_1D1EAC240);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1D1D693DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E538, &qword_1D1EAC240);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1D69468(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    if (!a2)
    {

      v5 = 0;
      return v5 & 1;
    }

    goto LABEL_5;
  }

  if (!a2)
  {
LABEL_5:

    v5 = 1;
    return v5 & 1;
  }

  swift_bridgeObjectRetain_n();

  v4 = sub_1D177AE98(a1, a2);
  swift_bridgeObjectRelease_n();

  v5 = v4 ^ 1;
  return v5 & 1;
}

uint64_t sub_1D1D6952C(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  if (v6 != 1)
  {
    v23[0] = *a1;
    v23[1] = v3;
    v23[2] = v6;
    v23[3] = v5;
    v24 = v7;
    if (v10 != 1)
    {
      v18 = v8 & 0x101;
      v19 = v9;
      v20 = v10;
      v21 = v11;
      v22 = v12;
      sub_1D1741C08(a1, v17, &qword_1EC64E548, &qword_1D1EABE08);
      sub_1D1741C08(a2, v17, &qword_1EC64E548, &qword_1D1EABE08);
      sub_1D1C2B3B4(v4, v3, v6);
      v14 = _s13HomeDataModel011AutoClimateC0C10ThermostatC24CleanEnergySettingConfigV2eeoiySbAG_AGtFZ_0(v23, &v18);

      sub_1D1C2B470(v4, v3, v6);
      v13 = v14 ^ 1;
      return v13 & 1;
    }

    sub_1D1741C08(a1, &v18, &qword_1EC64E548, &qword_1D1EABE08);
    sub_1D1741C08(a2, &v18, &qword_1EC64E548, &qword_1D1EABE08);
    sub_1D1C2B3B4(v4, v3, v6);

    goto LABEL_7;
  }

  if (v10 != 1)
  {
    v16 = *(a2 + 32);
    sub_1D1741C08(a1, v23, &qword_1EC64E548, &qword_1D1EABE08);
    sub_1D1741C08(a2, v23, &qword_1EC64E548, &qword_1D1EABE08);
LABEL_7:
    sub_1D1C2B470(v4, v3, v6);
    sub_1D1C2B470(v8, v9, v10);
    v13 = 1;
    return v13 & 1;
  }

  sub_1D1741C08(a1, v23, &qword_1EC64E548, &qword_1D1EABE08);
  sub_1D1741C08(a2, v23, &qword_1EC64E548, &qword_1D1EABE08);
  sub_1D1C2B470(v4, v3, 1);
  v13 = 0;
  return v13 & 1;
}

void sub_1D1D6979C()
{
  v0 = sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1D1D69A18();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_1D1E66CEC();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1D1D69A18()
{
  if (!qword_1EC64E5C0)
  {
    type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(255);
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC64E5C0);
    }
  }
}

uint64_t sub_1D1D69A70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1D69AD4(uint64_t a1)
{
  v2 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1D69B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting.init(driver:selectedRooms:homeTimeZone:isAllowedToEnableAdaptiveTemperature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  v9 = *(v8 + 24);
  v10 = sub_1D1E66C5C();
  result = (*(*(v10 - 8) + 32))(&a5[v9], a3, v10);
  a5[*(v8 + 28)] = a4;
  return result;
}

uint64_t sub_1D1D69C58@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CA18, &qword_1D1EABE10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D1741C08(a1, v12, &qword_1EC64CA18, &qword_1D1EABE10);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D1741A30(v12, &qword_1EC64CA18, &qword_1D1EABE10);
    return sub_1D1D73C24(v2, a2, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
  }

  else
  {
    sub_1D1D73940(v12, v17, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    v19 = *v17;
    v20 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
    sub_1D1D73C24(v2 + v20[5], v8, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    v21 = v17[1];
    v22 = v21;
    if (!v21)
    {
      v22 = *(v2 + v20[7]);
    }

    v23 = v20[8];
    v24 = sub_1D1E66C5C();
    (*(*(v24 - 8) + 16))(&a2[v23], v2 + v23, v24);
    v25 = *(v17 + *(v13 + 28));
    swift_bridgeObjectRetain_n();
    sub_1D1D73C8C(v17, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    v26 = v20[6];
    v27 = v20[7];
    *a2 = v19;
    result = sub_1D1D73940(v8, &a2[v20[5]], type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    *&a2[v26] = v21;
    *&a2[v27] = v22;
    a2[v20[9]] = v25;
  }

  return result;
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.init(driver:currentRoom:selectedRooms:lastSelectedRooms:homeTimeZone:isAllowedToEnableAdaptiveTemperature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X8>)
{
  v14 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  v15 = v14[6];
  v16 = v14[7];
  *a7 = a1;
  sub_1D1D73940(a2, &a7[v14[5]], type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
  *&a7[v15] = a3;
  *&a7[v16] = a4;
  v17 = v14[8];
  v18 = sub_1D1E66C5C();
  result = (*(*(v18 - 8) + 32))(&a7[v17], a5, v18);
  a7[v14[9]] = a6;
  return result;
}

id sub_1D1D6A020()
{
  v1 = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v26 = MEMORY[0x1E69E7CC0];
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = *(v3 + 24);
    v25 = *(v3 + 20);
    v10 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    v24 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D1D73C24(v10, v6, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
      v12 = *&v6[v9];
      v13 = objc_allocWithZone(MEMORY[0x1E696CCC0]);
      v14 = sub_1D1E661FC();
      v15 = sub_1D1E661FC();
      v16 = [v13 initWithStartTime:v14 endTime:v15 daysOfTheWeek:v12];

      v17 = sub_1D1D73C8C(v6, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
      if (v16)
      {
        MEMORY[0x1D3891220](v17);
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v18 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D1E67C5C();
        }

        sub_1D1E67CAC();
        v24 = v26;
      }

      v10 += v11;
      --v8;
    }

    while (v8);
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  v19 = objc_allocWithZone(MEMORY[0x1E696CCB8]);
  sub_1D1D738F4();
  v20 = sub_1D1E67BFC();

  v21 = [v19 initWithScheduleRules_];

  return v21;
}

uint64_t AutoClimateModel.Thermostat.WeekdaySchedule.description.getter()
{
  v1 = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v23 = 0x5B203A53454C5552;
  v24 = 0xE800000000000000;
  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1D178CD24(0, v7, 0);
    v8 = v22;
    v9 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    do
    {
      sub_1D1D73C24(v9, v5, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
      v11 = AutoClimateModel.Thermostat.WeekdayScheduleRule.description.getter();
      v13 = v12;
      sub_1D1D73C8C(v5, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
      v22 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D178CD24((v14 > 1), v15 + 1, 1);
        v8 = v22;
      }

      *(v8 + 16) = v15 + 1;
      v16 = v8 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  v17 = MEMORY[0x1D3891260](v8, MEMORY[0x1E69E6158]);
  v19 = v18;

  MEMORY[0x1D3890F70](v17, v19);

  MEMORY[0x1D3890F70](93, 0xE100000000000000);
  return v23;
}

uint64_t HMAdaptiveTemperatureDriver.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6E776F6E6B6E55;
    case 1:
      return 0x65725020656D6F48;
    case 2:
      return 0x7250206C61636F4CLL;
  }

  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD000000000000012, 0x80000001D1EC8E80);
  type metadata accessor for HMAdaptiveTemperatureDriver(0);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](46, 0xE100000000000000);
  result = sub_1D1E68AFC();
  __break(1u);
  return result;
}

uint64_t AutoClimateModel.Thermostat.WeekdayScheduleRule.description.getter()
{
  v32 = sub_1D1E66BBC();
  v1 = *(v32 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_1D1E6884C();
  v4 = MEMORY[0x1D3890F70](0xD000000000000012, 0x80000001D1EC8EA0);
  v5 = MEMORY[0x1D388F820](v4);
  MEMORY[0x1D3890F70](v5);

  MEMORY[0x1D3890F70](0xD000000000000012, 0x80000001D1EC8EC0);
  v6 = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
  v7 = *(v6 + 20);
  v8 = MEMORY[0x1D388F820]();
  MEMORY[0x1D3890F70](v8);

  MEMORY[0x1D3890F70](0xD000000000000012, 0x80000001D1EC8EE0);
  v9 = *(v0 + *(v6 + 24));
  v10 = HMDaysOfTheWeek.label.getter(v9);
  MEMORY[0x1D3890F70](v10);

  MEMORY[0x1D3890F70](0x4144202020200A5DLL, 0xED00005B203A5359);
  v11 = _s13HomeDataModel011AutoClimateC0C10ThermostatC19WeekdayScheduleRuleV15getSelectedDays4fromSayAG3DayOGSo15HMDaysOfTheWeekV_tFZ_0(v9);
  v12 = *(v11 + 2);
  if (v12)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1D178CD24(0, v12, 0);
    v13 = v33;
    v14 = (v1 + 8);
    v15 = 32;
    while (1)
    {
      v16 = v11[v15];
      v17 = v31;
      sub_1D1E66B9C();
      v18 = sub_1D1E66B2C();
      result = (*v14)(v17, v32);
      if (*(v18 + 16) <= v16)
      {
        break;
      }

      v20 = v11;
      v21 = v18 + 16 * v16;
      v22 = *(v21 + 32);
      v23 = *(v21 + 40);

      v33 = v13;
      v25 = *(v13 + 16);
      v24 = *(v13 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1D178CD24((v24 > 1), v25 + 1, 1);
        v13 = v33;
      }

      *(v13 + 16) = v25 + 1;
      v26 = v13 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      ++v15;
      --v12;
      v11 = v20;
      if (!v12)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
LABEL_9:
    v27 = MEMORY[0x1D3891260](v13, MEMORY[0x1E69E6158]);
    v29 = v28;

    MEMORY[0x1D3890F70](v27, v29);

    MEMORY[0x1D3890F70](93, 0xE100000000000000);
    return v34;
  }

  return result;
}

size_t AutoClimateModel.Thermostat.WeekdaySchedule.init(hmweekdaySchedule:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 scheduleRules];
  sub_1D1D738F4();
  v10 = sub_1D1E67C1C();

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_13:

    v14 = MEMORY[0x1E69E7CC0];
LABEL_14:
    *a2 = v14;
    return result;
  }

  v11 = sub_1D1E6873C();
  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_3:
  v29 = MEMORY[0x1E69E7CC0];
  result = sub_1D178DD28(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v26 = a1;
    v27 = a2;
    v13 = 0;
    v14 = v29;
    v15 = v10;
    v28 = v10 & 0xC000000000000001;
    v16 = v10;
    v17 = v11;
    do
    {
      if (v28)
      {
        v18 = MEMORY[0x1D3891EF0](v13, v15);
      }

      else
      {
        v18 = *(v15 + 8 * v13 + 32);
      }

      v19 = v18;
      v20 = [v18 startTime];
      sub_1D1E6621C();

      v21 = [v19 endTime];
      v22 = &v8[*(v4 + 20)];
      sub_1D1E6621C();

      v23 = [v19 daysOfTheWeek];
      *&v8[*(v4 + 24)] = v23;
      v29 = v14;
      v25 = *(v14 + 16);
      v24 = *(v14 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1D178DD28(v24 > 1, v25 + 1, 1);
        v14 = v29;
      }

      ++v13;
      *(v14 + 16) = v25 + 1;
      sub_1D1D73940(v8, v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v25, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
      v15 = v16;
    }

    while (v17 != v13);

    a2 = v27;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting.description.getter()
{
  v1 = v0;
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0x203A524556495244, 0xE800000000000000);
  v2 = HMAdaptiveTemperatureDriver.description.getter(*v0);
  MEMORY[0x1D3890F70](v2);

  MEMORY[0x1D3890F70](0x534D4F4F52200A20, 0xEA0000000000203ALL);
  v10 = v0[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E5D0, &qword_1D1EAC1A0);
  v3 = sub_1D1E6789C();
  MEMORY[0x1D3890F70](v3);

  MEMORY[0x1D3890F70](0x4F5A454D4954202CLL, 0xEC000000203A454ELL);
  v4 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  v5 = *(v4 + 24);
  sub_1D1E66C5C();
  sub_1D1D739A8(&qword_1EC643940, MEMORY[0x1E6969BC0]);
  v6 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v6);

  MEMORY[0x1D3890F70](0x4F4C4C415349202CLL, 0xED0000203A444557);
  if (*(v1 + *(v4 + 28)))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v1 + *(v4 + 28)))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v7, v8);

  return 0;
}

uint64_t AutoClimateModel.Thermostat.CleanEnergySettingConfig.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 2);
  v11 = *(v0 + 3);
  v12 = *(v0 + 1);
  v4 = v0[32];

  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD00000000000001BLL, 0x80000001D1EC8F00);
  if (v1)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v1)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v5, v6);

  MEMORY[0x1D3890F70](0xD00000000000001ALL, 0x80000001D1EC8F20);
  if (v2)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v7, v8);

  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC8F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E5D8, &unk_1D1EAC1A8);
  v9 = sub_1D1E6789C();
  MEMORY[0x1D3890F70](v9);

  return 0;
}

uint64_t AutoClimateModel.Thermostat.CleanEnergySettingConfig.copyApplying(electricityRatesEnabled:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 1);
  v4 = *(v2 + 8);
  v5 = *(v2 + 32);
  *a2 = a1;
  *(a2 + 1) = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = *(v2 + 16);
  *(a2 + 32) = v5;
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.description.getter()
{
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0x203A524556495244, 0xE800000000000000);
  v1 = HMAdaptiveTemperatureDriver.description.getter(*v0);
  MEMORY[0x1D3890F70](v1);

  MEMORY[0x1D3890F70](0xD000000000000011, 0x80000001D1EC8F60);
  v2 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  v3 = v0 + v2[5];
  sub_1D1E6884C();

  v4 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  MEMORY[0x1D3890F70](*&v3[*(v4 + 20)], *&v3[*(v4 + 20) + 8]);
  MEMORY[0x1D3890F70](0xD000000000000015, 0x80000001D1EC8F80);
  sub_1D1E66A7C();
  sub_1D1D739A8(&qword_1EE07B250, MEMORY[0x1E69695A8]);
  v5 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v5);

  MEMORY[0x1D3890F70](0x203A454D414ELL, 0xE600000000000000);

  MEMORY[0x1D3890F70](0x534D4F4F52200A20, 0xEA0000000000203ALL);
  v10 = *(v0 + v2[6]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E5D0, &qword_1D1EAC1A0);
  v6 = sub_1D1E6789C();
  MEMORY[0x1D3890F70](v6);

  MEMORY[0x1D3890F70](0xD00000000000002ALL, 0x80000001D1EC8FA0);
  if (*(v0 + v2[9]))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + v2[9]))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v7, v8);

  return 0;
}

uint64_t AutoClimateModel.Thermostat.WeekdaySchedule.rules.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t AutoClimateModel.Thermostat.WeekdayScheduleRule.init(startTime:endTime:daysOfWeek:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D1E662EC();
  v9 = *(*(v8 - 8) + 32);
  v9(a4, a1, v8);
  v10 = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
  result = (v9)(a4 + *(v10 + 20), a2, v8);
  *(a4 + *(v10 + 24)) = a3;
  return result;
}

uint64_t AutoClimateModel.Thermostat.WeekdaySchedule.init()@<X0>(uint64_t *a1@<X8>)
{
  v42 = a1;
  v1 = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
  v2 = *(v1 - 8);
  v36 = v1 - 8;
  v40 = v2;
  v41 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v39 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643960, &qword_1D1EABC30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643968, &qword_1D1E72CE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v35 - v11;
  v13 = sub_1D1E662EC();
  v37 = *(v13 - 8);
  v38 = v13;
  v14 = *(v37 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v35 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v35 - v17;
  sub_1D1E66B9C();
  v19 = sub_1D1E66BBC();
  v20 = *(*(v19 - 8) + 56);
  v20(v12, 0, 1, v19);
  v21 = sub_1D1E66C5C();
  v22 = *(*(v21 - 8) + 56);
  v22(v8, 1, 1, v21);
  sub_1D1E662BC();
  sub_1D1E66B9C();
  v20(v12, 0, 1, v19);
  v22(v8, 1, 1, v21);
  v23 = v35;
  sub_1D1E662BC();
  v25 = v37;
  v24 = v38;
  v26 = *(v37 + 16);
  v27 = v39;
  v28 = v18;
  v26(v39, v18, v38);
  v29 = v36;
  v26((v27 + *(v36 + 28)), v23, v24);
  *(v27 + *(v29 + 32)) = 127;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6431E0, &qword_1D1E71D50);
  v30 = *(v40 + 72);
  v31 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1D1E739C0;
  sub_1D1D73940(v27, v32 + v31, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
  v33 = *(v25 + 8);
  v33(v23, v24);
  result = (v33)(v28, v24);
  *v42 = v32;
  return result;
}

void AutoClimateModel.Thermostat.WeekdayScheduleRule.init(hmweekdayScheduleRule:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 startTime];
  sub_1D1E6621C();

  v5 = [a1 endTime];
  v6 = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
  v7 = a2 + *(v6 + 20);
  sub_1D1E6621C();

  v8 = [a1 daysOfTheWeek];
  *(a2 + *(v6 + 24)) = v8;
}

uint64_t AutoClimateModel.Thermostat.WeekdaySchedule.hash(into:)()
{
  v1 = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(*v0 + 16);
  result = MEMORY[0x1D3892850](v7);
  if (v7)
  {
    v9 = *(v1 + 24);
    v12[1] = *(v1 + 20);
    v10 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v2 + 72);
    do
    {
      sub_1D1D73C24(v10, v5, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
      sub_1D1E662EC();
      sub_1D1D739A8(&qword_1EC643040, MEMORY[0x1E6968278]);
      sub_1D1E676EC();
      sub_1D1E676EC();
      MEMORY[0x1D3892850](*&v5[v9]);
      result = sub_1D1D73C8C(v5, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
      v10 += v11;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1D1D6B9B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656C7572 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D1E6904C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D1D6BA34(uint64_t a1)
{
  v2 = sub_1D1D739F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D6BA70(uint64_t a1)
{
  v2 = sub_1D1D739F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutoClimateModel.Thermostat.WeekdaySchedule.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E5E0, &qword_1D1EAC1B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D739F0();

  sub_1D1E6930C();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E5F0, &qword_1D1EAC1C0);
  sub_1D1D73A44(&qword_1EC64E5F8, &qword_1EC64E600);
  sub_1D1E68F1C();

  return (*(v4 + 8))(v7, v3);
}

uint64_t AutoClimateModel.Thermostat.WeekdaySchedule.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D176FDE8(v3, v1);
  return sub_1D1E6926C();
}

uint64_t AutoClimateModel.Thermostat.WeekdaySchedule.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E608, &qword_1D1EAC1C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D739F0();
  sub_1D1E692FC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E5F0, &qword_1D1EAC1C0);
    sub_1D1D73A44(&qword_1EC64E610, &qword_1EC64E618);
    sub_1D1E68D7C();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1D6BE68()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D176FDE8(v3, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1D6BEB8()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D176FDE8(v3, v1);
  return sub_1D1E6926C();
}

void *static AutoClimateModel.Thermostat.WeekdayScheduleRule.Day.allDays.getter()
{
  v0 = sub_1D1E66BBC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E66B9C();
  v5 = sub_1D1E66AEC();
  (*(v1 + 8))(v4, v0);
  if (v5 == 1)
  {
    return &unk_1F4D66250;
  }

  else
  {
    return &unk_1F4D66278;
  }
}

uint64_t sub_1D1D6C064(uint64_t (*a1)(uint64_t))
{
  v3 = sub_1D1E66BBC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = sub_1D1E66B9C();
  v10 = a1(v9);
  result = (*(v4 + 8))(v7, v3);
  if (*(v10 + 16) <= v8)
  {
    __break(1u);
  }

  else
  {
    v12 = v10 + 16 * v8;
    v13 = *(v12 + 32);
    v14 = *(v12 + 40);

    return v13;
  }

  return result;
}

unint64_t AutoClimateModel.Thermostat.WeekdayScheduleRule.Day.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 7;
  if (result < 7)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1D1D6C190()
{
  v1 = sub_1D1E66BBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_1D1E66B9C();
  v7 = sub_1D1E66B2C();
  result = (*(v2 + 8))(v5, v1);
  if (*(v7 + 16) <= v6)
  {
    __break(1u);
  }

  else
  {
    v9 = v7 + 16 * v6;
    v10 = *(v9 + 32);
    v11 = *(v9 + 40);

    return v10;
  }

  return result;
}

uint64_t AutoClimateModel.Thermostat.WeekdayScheduleRule.endTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0) + 20);
  v4 = sub_1D1E662EC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AutoClimateModel.Thermostat.WeekdayScheduleRule.daysOfWeek.setter(uint64_t a1)
{
  result = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

char *AutoClimateModel.Thermostat.WeekdayScheduleRule.days.getter()
{
  v1 = *(v0 + *(type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0) + 24));

  return _s13HomeDataModel011AutoClimateC0C10ThermostatC19WeekdayScheduleRuleV15getSelectedDays4fromSayAG3DayOGSo15HMDaysOfTheWeekV_tFZ_0(v1);
}

uint64_t HMDaysOfTheWeek.label.getter(uint64_t a1)
{
  result = 83;
  if (a1 > 15)
  {
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        return result;
      }

      if (a1 == 127)
      {
        return 5000257;
      }

      return 0x6E776F6E6B6E55;
    }

    if (a1 != 16)
    {
      if (a1 == 32)
      {
        return 70;
      }

      return 0x6E776F6E6B6E55;
    }

    return 84;
  }

  if (a1 > 3)
  {
    if (a1 != 4)
    {
      if (a1 == 8)
      {
        return 87;
      }

      return 0x6E776F6E6B6E55;
    }

    return 84;
  }

  if (a1 == 1)
  {
    return result;
  }

  if (a1 == 2)
  {
    return 77;
  }

  return 0x6E776F6E6B6E55;
}

BOOL static AutoClimateModel.Thermostat.WeekdayScheduleRule.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1D388F840]() & 1) != 0 && (v4 = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0), (MEMORY[0x1D388F840](a1 + *(v4 + 20), a2 + *(v4 + 20))))
  {
    return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D1D6C5DC()
{
  v1 = 0x656D6954646E65;
  if (*v0 != 1)
  {
    v1 = 0x6557664F73796164;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D69547472617473;
  }
}

uint64_t sub_1D1D6C640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1D74E58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1D6C668(uint64_t a1)
{
  v2 = sub_1D1D73AE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D6C6A4(uint64_t a1)
{
  v2 = sub_1D1D73AE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutoClimateModel.Thermostat.WeekdayScheduleRule.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E620, &qword_1D1EAC1D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D73AE0();
  sub_1D1E6930C();
  v17 = 0;
  sub_1D1E662EC();
  sub_1D1D739A8(&qword_1EC64E630, MEMORY[0x1E6968278]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
    v12 = *(v11 + 20);
    v16 = 1;
    sub_1D1E68F1C();
    v14[1] = *(v3 + *(v11 + 24));
    v15 = 2;
    type metadata accessor for HMDaysOfTheWeek(0);
    sub_1D1D739A8(&qword_1EC64E638, type metadata accessor for HMDaysOfTheWeek);
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t AutoClimateModel.Thermostat.WeekdayScheduleRule.hash(into:)()
{
  v1 = v0;
  sub_1D1E662EC();
  sub_1D1D739A8(&qword_1EC643040, MEMORY[0x1E6968278]);
  sub_1D1E676EC();
  v2 = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
  v3 = v0 + *(v2 + 20);
  sub_1D1E676EC();
  return MEMORY[0x1D3892850](*(v1 + *(v2 + 24)));
}

uint64_t AutoClimateModel.Thermostat.WeekdayScheduleRule.hashValue.getter()
{
  v1 = v0;
  sub_1D1E6920C();
  sub_1D1E662EC();
  sub_1D1D739A8(&qword_1EC643040, MEMORY[0x1E6968278]);
  sub_1D1E676EC();
  v2 = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
  v3 = v0 + *(v2 + 20);
  sub_1D1E676EC();
  MEMORY[0x1D3892850](*(v1 + *(v2 + 24)));
  return sub_1D1E6926C();
}

uint64_t AutoClimateModel.Thermostat.WeekdayScheduleRule.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_1D1E662EC();
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v29 = &v25 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E640, &qword_1D1EAC1D8);
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  v13 = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D73AE0();
  v32 = v12;
  v18 = v33;
  sub_1D1E692FC();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = a1;
  v26 = v16;
  v37 = 0;
  sub_1D1D739A8(&qword_1EC64E648, MEMORY[0x1E6968278]);
  v19 = v29;
  sub_1D1E68D7C();
  v29 = *(v28 + 32);
  (v29)(v26, v19, v3);
  v36 = 1;
  sub_1D1E68D7C();
  v20 = v13;
  v21 = *(v13 + 20);
  v22 = v26;
  (v29)(&v26[v21], v7, v3);
  type metadata accessor for HMDaysOfTheWeek(0);
  v35 = 2;
  sub_1D1D739A8(&qword_1EC64E650, type metadata accessor for HMDaysOfTheWeek);
  v23 = v32;
  sub_1D1E68D7C();
  (*(v30 + 8))(v23, v31);
  *(v22 + *(v20 + 24)) = v34;
  sub_1D1D73C24(v22, v27, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return sub_1D1D73C8C(v22, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
}

uint64_t sub_1D1D6CFA4(uint64_t a1)
{
  v3 = v1;
  sub_1D1E6920C();
  sub_1D1E662EC();
  sub_1D1D739A8(&qword_1EC643040, MEMORY[0x1E6968278]);
  sub_1D1E676EC();
  v4 = v1 + *(a1 + 20);
  sub_1D1E676EC();
  MEMORY[0x1D3892850](*(v3 + *(a1 + 24)));
  return sub_1D1E6926C();
}

uint64_t sub_1D1D6D070(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1D1E662EC();
  sub_1D1D739A8(&qword_1EC643040, MEMORY[0x1E6968278]);
  sub_1D1E676EC();
  v5 = v2 + *(a2 + 20);
  sub_1D1E676EC();
  return MEMORY[0x1D3892850](*(v4 + *(a2 + 24)));
}

uint64_t sub_1D1D6D124(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1D1E6920C();
  sub_1D1E662EC();
  sub_1D1D739A8(&qword_1EC643040, MEMORY[0x1E6968278]);
  sub_1D1E676EC();
  v5 = v2 + *(a2 + 20);
  sub_1D1E676EC();
  MEMORY[0x1D3892850](*(v4 + *(a2 + 24)));
  return sub_1D1E6926C();
}

uint64_t static AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.drivers.setter(void *a1)
{
  swift_beginAccess();
  off_1EC64E5C8 = a1;
}

uint64_t sub_1D1D6D52C(void **a1)
{
  v1 = *a1;

  swift_beginAccess();
  off_1EC64E5C8 = v1;
}

unint64_t sub_1D1D6D5DC()
{
  v1 = 0x726576697264;
  v2 = 0x656D6954656D6F68;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000024;
  }

  if (*v0)
  {
    v1 = 0x64657463656C6573;
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

uint64_t sub_1D1D6D66C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1D74F80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1D6D694(uint64_t a1)
{
  v2 = sub_1D1D73B34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D6D6D0(uint64_t a1)
{
  v2 = sub_1D1D73B34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E658, &qword_1D1EAC1E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D73B34();
  sub_1D1E6930C();
  v16 = *v3;
  HIBYTE(v15) = 0;
  type metadata accessor for HMAdaptiveTemperatureDriver(0);
  sub_1D1D739A8(&qword_1EC64E668, type metadata accessor for HMAdaptiveTemperatureDriver);
  sub_1D1E68F1C();
  if (!v2)
  {
    v16 = v3[1];
    HIBYTE(v15) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E670, &qword_1D1EAC1E8);
    sub_1D1D73B88(&qword_1EC64E678, &qword_1EC64E680);
    sub_1D1E68E5C();
    v11 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
    v12 = *(v11 + 24);
    LOBYTE(v16) = 2;
    sub_1D1E66C5C();
    sub_1D1D739A8(&qword_1EC64E688, MEMORY[0x1E6969BC0]);
    sub_1D1E68F1C();
    v13 = *(v3 + *(v11 + 28));
    LOBYTE(v16) = 3;
    sub_1D1E68EDC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting.hash(into:)(uint64_t a1)
{
  v2 = v1;
  MEMORY[0x1D3892850](*v1);
  v4 = v1[1];
  sub_1D1E6922C();
  if (v4)
  {
    sub_1D176FF94(a1, v4);
  }

  v5 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  v6 = *(v5 + 24);
  sub_1D1E66C5C();
  sub_1D1D739A8(&qword_1EC643958, MEMORY[0x1E6969BC0]);
  sub_1D1E676EC();
  v7 = *(v2 + *(v5 + 28));
  return sub_1D1E6922C();
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting.hashValue.getter()
{
  v1 = v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](*v0);
  v2 = v0[1];
  sub_1D1E6922C();
  if (v2)
  {
    sub_1D176FF94(v7, v2);
  }

  v3 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  v4 = *(v3 + 24);
  sub_1D1E66C5C();
  sub_1D1D739A8(&qword_1EC643958, MEMORY[0x1E6969BC0]);
  sub_1D1E676EC();
  v5 = *(v1 + *(v3 + 28));
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_1D1E66C5C();
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E690, &unk_1D1EAC1F0);
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D1D73B34();
  v17 = v29;
  sub_1D1E692FC();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v29 = v6;
  v18 = v14;
  v19 = v27;
  type metadata accessor for HMAdaptiveTemperatureDriver(0);
  v31 = 0;
  sub_1D1D739A8(&qword_1EC64E698, type metadata accessor for HMAdaptiveTemperatureDriver);
  v20 = v28;
  sub_1D1E68D7C();
  *v18 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E670, &qword_1D1EAC1E8);
  v31 = 1;
  sub_1D1D73B88(&qword_1EC64E6A0, &qword_1EC64E6A8);
  sub_1D1E68CBC();
  v21 = v19;
  *(v18 + 1) = v32;
  LOBYTE(v32) = 2;
  sub_1D1D739A8(&qword_1EC64E6B0, MEMORY[0x1E6969BC0]);
  v22 = v29;
  sub_1D1E68D7C();
  (*(v26 + 32))(&v18[*(v11 + 24)], v22, v3);
  LOBYTE(v32) = 3;
  LOBYTE(v22) = sub_1D1E68D3C();
  (*(v21 + 8))(v10, v20);
  v18[*(v11 + 28)] = v22 & 1;
  sub_1D1D73C24(v18, v25, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return sub_1D1D73C8C(v18, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
}

uint64_t sub_1D1D6E074(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  MEMORY[0x1D3892850](*v2);
  v6 = v2[1];
  sub_1D1E6922C();
  if (v6)
  {
    sub_1D176FF94(a1, v6);
  }

  v7 = *(a2 + 24);
  sub_1D1E66C5C();
  sub_1D1D739A8(&qword_1EC643958, MEMORY[0x1E6969BC0]);
  sub_1D1E676EC();
  v8 = *(v4 + *(a2 + 28));
  return sub_1D1E6922C();
}

uint64_t sub_1D1D6E150(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](*v2);
  v5 = v2[1];
  sub_1D1E6922C();
  if (v5)
  {
    sub_1D176FF94(v9, v5);
  }

  v6 = *(a2 + 24);
  sub_1D1E66C5C();
  sub_1D1D739A8(&qword_1EC643958, MEMORY[0x1E6969BC0]);
  sub_1D1E676EC();
  v7 = *(v4 + *(a2 + 28));
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.selectedRooms.getter()
{
  v1 = *(v0 + *(type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0) + 24));
}

uint64_t sub_1D1D6E318(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  v5 = *(v4 + 24);
  v6 = *(a2 + v5);

  *(a2 + v5) = v3;
  if (*a2 == 2 && v3 != 0)
  {
    v9 = *(v4 + 28);
    v10 = *(a2 + v9);

    *(a2 + v9) = v3;
  }

  return result;
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.selectedRooms.setter(uint64_t a1)
{
  v3 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  v4 = *(v3 + 24);
  v5 = *(v1 + v4);

  *(v1 + v4) = a1;
  if (*v1 == 2 && a1 != 0)
  {
    v8 = *(v3 + 28);
    v9 = *(v1 + v8);

    *(v1 + v8) = a1;
  }

  return result;
}

uint64_t (*AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.selectedRooms.modify(uint64_t a1))(uint64_t result, char a2)
{
  *a1 = v1;
  v3 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v3 + 24);
  return sub_1D1D6E464;
}

uint64_t sub_1D1D6E464(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *result;
    if (**result == 2)
    {
      v3 = *(v2 + *(result + 16));
      if (v3)
      {
        v4 = *(*(result + 8) + 28);
        v5 = *(v2 + v4);

        *(v2 + v4) = v3;
      }
    }
  }

  return result;
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.lastSelectedRooms.getter()
{
  v1 = *(v0 + *(type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0) + 28));
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.lastSelectedRooms.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0) + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.homeTimeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0) + 32);
  v4 = sub_1D1E66C5C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.selectedRoom.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E510, &qword_1D1EABC98);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v27 - v10;
  if (*v1 == 2)
  {
    v12 = *(v1 + *(type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0) + 24));
    if (v12 && *(v12 + 16))
    {
      sub_1D1D73C24(v12 + ((*(v30 + 80) + 32) & ~*(v30 + 80)), a1, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      v13 = *(v30 + 56);
      v14 = a1;
      v15 = 0;
LABEL_11:

      return v13(v14, v15, 1, v4);
    }

LABEL_10:
    v13 = *(v30 + 56);
    v14 = a1;
    v15 = 1;
    goto LABEL_11;
  }

  if (qword_1EC642408 != -1)
  {
LABEL_27:
    swift_once();
  }

  v16 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  v17 = v2 + *(v16 + 20);
  v18 = AutoClimateModel.localPresenceRoomConfigs(for:)(v17 + *(v4 + 24));
  if (!v18)
  {
    goto LABEL_10;
  }

  v19 = v18;
  v20 = *(v2 + *(v16 + 28));
  if (v20 && *(v20 + 16))
  {
    sub_1D1D73C24(v20 + ((*(v30 + 80) + 32) & ~*(v30 + 80)), v11, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    v21 = *(v30 + 56);
    v30 += 56;
    v21(v11, 0, 1, v4);

    sub_1D1D73940(v11, a1, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    return (v21)(a1, 0, 1, v4);
  }

  else
  {
    v28 = *(v30 + 56);
    v29 = v30 + 56;
    v28(v11, 1, 1, v4);
    v23 = 0;
    v24 = v19[2];
    while (v24 != v23)
    {
      if (v23 >= v19[2])
      {
        __break(1u);
        goto LABEL_27;
      }

      v2 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig;
      sub_1D1D73C24(v19 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v23++, v7, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      v25 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      sub_1D1D73C8C(v7, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      if (v25)
      {

        sub_1D1D73C24(v17, a1, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
LABEL_21:
        v26 = 0;
        goto LABEL_22;
      }
    }

    v31 = v19;

    sub_1D1D71C88(&v31);

    if (v31[2])
    {
      sub_1D1D73C24(v31 + ((*(v30 + 80) + 32) & ~*(v30 + 80)), a1, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);

      goto LABEL_21;
    }

    v26 = 1;
LABEL_22:
    v28(a1, v26, 1, v4);
    result = (*(v30 + 48))(v11, 1, v4);
    if (result != 1)
    {
      return sub_1D1741A30(v11, &qword_1EC64E510, &qword_1D1EABC98);
    }
  }

  return result;
}

uint64_t sub_1D1D6EAE8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig.name.getter()
{
  v1 = (v0 + *(type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1D1D6EBC4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig.description.getter()
{
  sub_1D1E6884C();

  v1 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  MEMORY[0x1D3890F70](*(v0 + *(v1 + 20)), *(v0 + *(v1 + 20) + 8));
  MEMORY[0x1D3890F70](0xD000000000000015, 0x80000001D1EC8F80);
  sub_1D1E66A7C();
  sub_1D1D739A8(&qword_1EE07B250, MEMORY[0x1E69695A8]);
  v2 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v2);

  return 0x203A454D414ELL;
}

uint64_t static AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 0;
  }

  return sub_1D1E6904C();
}

uint64_t static AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v4 + 24);

  return _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
}

unint64_t sub_1D1D6EE60()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x4449656D6F68;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1D1D6EEB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1D750F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1D6EEDC(uint64_t a1)
{
  v2 = sub_1D1D73CEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D6EF18(uint64_t a1)
{
  v2 = sub_1D1D73CEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E6B8, &qword_1D1EAC200);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D73CEC();
  sub_1D1E6930C();
  v20 = 0;
  sub_1D1E66A7C();
  sub_1D1D739A8(&qword_1EE07B258, MEMORY[0x1E69695A8]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
    v12 = (v3 + *(v11 + 20));
    v13 = *v12;
    v14 = v12[1];
    v19 = 1;
    sub_1D1E68ECC();
    v15 = *(v11 + 24);
    v18 = 2;
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig.hash(into:)()
{
  sub_1D1E66A7C();
  sub_1D1D739A8(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  v2 = (v0 + *(v1 + 20));
  v3 = *v2;
  v4 = v2[1];
  sub_1D1E678EC();
  v5 = v0 + *(v1 + 24);
  return sub_1D1E676EC();
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1D739A8(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  v2 = (v0 + *(v1 + 20));
  v3 = *v2;
  v4 = v2[1];
  sub_1D1E678EC();
  v5 = v0 + *(v1 + 24);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v36 = sub_1D1E66A7C();
  v33 = *(v36 - 8);
  v4 = *(v33 + 64);
  v5 = MEMORY[0x1EEE9AC00](v36);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v28 - v8;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E6C8, &qword_1D1EAC208);
  v34 = *(v37 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v11 = &v28 - v10;
  v12 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D73CEC();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v15;
  v31 = a1;
  v29 = v7;
  v40 = 0;
  v17 = sub_1D1D739A8(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  v18 = v35;
  v19 = v36;
  sub_1D1E68D7C();
  v28 = v17;
  v20 = *(v33 + 32);
  v20(v30, v18, v19);
  v39 = 1;
  v21 = sub_1D1E68D2C();
  v35 = v20;
  v22 = &v30[*(v12 + 20)];
  *v22 = v21;
  v22[1] = v23;
  v38 = 2;
  v24 = v29;
  sub_1D1E68D7C();
  (*(v34 + 8))(v11, v37);
  v25 = *(v12 + 24);
  v26 = v30;
  (v35)(&v30[v25], v24, v19);
  sub_1D1D73C24(v26, v32, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_1D1D73C8C(v26, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
}

uint64_t sub_1D1D6F70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a3 + 24);

  return _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
}

uint64_t sub_1D1D6F7A0(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1D739A8(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_1D1E678EC();
  v6 = v1 + *(a1 + 24);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1D6F864(uint64_t a1, uint64_t a2)
{
  sub_1D1E66A7C();
  sub_1D1D739A8(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_1D1E678EC();
  v7 = v2 + *(a2 + 24);
  return sub_1D1E676EC();
}

uint64_t sub_1D1D6F918(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1D739A8(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_1D1E678EC();
  v7 = v2 + *(a2 + 24);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1D6FA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  if (*(a1 + v3) == *(a2 + v3) && *(a1 + v3 + 8) == *(a2 + v3 + 8))
  {
    return 0;
  }

  else
  {
    return sub_1D1E6904C();
  }
}

uint64_t sub_1D1D6FA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 20);
  v5 = *(a2 + v4);
  v6 = *(a2 + v4 + 8);
  v7 = (a1 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  else
  {
    return (sub_1D1E6904C() ^ 1) & 1;
  }
}

uint64_t sub_1D1D6FA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  if (*(a1 + v3) == *(a2 + v3) && *(a1 + v3 + 8) == *(a2 + v3 + 8))
  {
    return 1;
  }

  else
  {
    return (sub_1D1E6904C() ^ 1) & 1;
  }
}

uint64_t sub_1D1D6FAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 20);
  v5 = *(a2 + v4);
  v6 = *(a2 + v4 + 8);
  v7 = (a1 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 0;
  }

  else
  {
    return sub_1D1E6904C();
  }
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.copyApplying(driver:selectedRooms:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  sub_1D1D73C24(v3 + v7[5], &a3[v7[5]], type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
  v8 = v7[8];
  v9 = sub_1D1E66C5C();
  (*(*(v9 - 8) + 16))(&a3[v8], v3 + v8, v9);
  v10 = *(v3 + v7[9]);
  v11 = v7[6];
  v12 = v7[7];
  *a3 = a1;
  *&a3[v11] = a2;
  *&a3[v12] = 0;
  a3[v7[9]] = v10;
}

unint64_t sub_1D1D6FC00()
{
  v1 = *v0;
  v2 = 0x726576697264;
  v3 = 0xD000000000000011;
  v4 = 0x656D6954656D6F68;
  if (v1 != 4)
  {
    v4 = 0xD000000000000024;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x52746E6572727563;
  if (v1 != 1)
  {
    v5 = 0x64657463656C6573;
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

uint64_t sub_1D1D6FCD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1D75214(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1D6FD00(uint64_t a1)
{
  v2 = sub_1D1D73D40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D6FD3C(uint64_t a1)
{
  v2 = sub_1D1D73D40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E6D0, &qword_1D1EAC210);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D73D40();
  sub_1D1E6930C();
  v18 = *v3;
  v17 = 0;
  type metadata accessor for HMAdaptiveTemperatureDriver(0);
  sub_1D1D739A8(&qword_1EC64E668, type metadata accessor for HMAdaptiveTemperatureDriver);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
    v12 = v11[5];
    LOBYTE(v18) = 1;
    type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
    sub_1D1D739A8(&qword_1EC64E680, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    sub_1D1E68F1C();
    v18 = *(v3 + v11[6]);
    v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E670, &qword_1D1EAC1E8);
    sub_1D1D73B88(&qword_1EC64E678, &qword_1EC64E680);
    sub_1D1E68E5C();
    v18 = *(v3 + v11[7]);
    v17 = 3;
    sub_1D1E68E5C();
    v13 = v11[8];
    LOBYTE(v18) = 4;
    sub_1D1E66C5C();
    sub_1D1D739A8(&qword_1EC64E688, MEMORY[0x1E6969BC0]);
    sub_1D1E68F1C();
    v14 = *(v3 + v11[9]);
    LOBYTE(v18) = 5;
    sub_1D1E68EDC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.hash(into:)(uint64_t a1)
{
  v2 = v1;
  MEMORY[0x1D3892850](*v1);
  v4 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  v5 = v1 + v4[5];
  sub_1D1E66A7C();
  sub_1D1D739A8(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v6 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  v7 = &v5[*(v6 + 20)];
  v8 = *v7;
  v9 = *(v7 + 1);
  sub_1D1E678EC();
  v10 = &v5[*(v6 + 24)];
  sub_1D1E676EC();
  v11 = *(v2 + v4[6]);
  sub_1D1E6922C();
  if (v11)
  {
    sub_1D176FF94(a1, v11);
  }

  v12 = *(v2 + v4[7]);
  sub_1D1E6922C();
  if (v12)
  {
    sub_1D176FF94(a1, v12);
  }

  v13 = v4[8];
  sub_1D1E66C5C();
  sub_1D1D739A8(&qword_1EC643958, MEMORY[0x1E6969BC0]);
  sub_1D1E676EC();
  v14 = *(v2 + v4[9]);
  return sub_1D1E6922C();
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.hashValue.getter()
{
  sub_1D1E6920C();
  AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_1D1E66C5C();
  v4 = *(v3 - 8);
  v37 = v3;
  v38 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E6E0, &qword_1D1EAC218);
  v39 = *(v12 - 8);
  v40 = v12;
  v13 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v34 - v14;
  v16 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[3];
  v21 = a1[4];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D1D73D40();
  v41 = v15;
  v22 = v42;
  sub_1D1E692FC();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
    return swift_bridgeObjectRelease_n();
  }

  else
  {
    v42 = v7;
    v23 = v39;
    v24 = v19;
    type metadata accessor for HMAdaptiveTemperatureDriver(0);
    v44 = 0;
    sub_1D1D739A8(&qword_1EC64E698, type metadata accessor for HMAdaptiveTemperatureDriver);
    v25 = v40;
    sub_1D1E68D7C();
    *v24 = v45;
    LOBYTE(v45) = 1;
    sub_1D1D739A8(&qword_1EC64E6A8, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    sub_1D1E68D7C();
    v35 = v16;
    sub_1D1D73940(v11, &v24[*(v16 + 20)], type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E670, &qword_1D1EAC1E8);
    v44 = 2;
    sub_1D1D73B88(&qword_1EC64E6A0, &qword_1EC64E6A8);
    sub_1D1E68CBC();
    v26 = v35[6];
    v34[1] = v45;
    *&v24[v26] = v45;
    v44 = 3;
    sub_1D1E68CBC();
    v27 = v38;
    *&v24[v35[7]] = v45;
    LOBYTE(v45) = 4;
    sub_1D1D739A8(&qword_1EC64E6B0, MEMORY[0x1E6969BC0]);
    v28 = v42;
    v29 = v37;
    sub_1D1E68D7C();
    v30 = v28;
    v31 = v35;
    (*(v27 + 32))(&v24[v35[8]], v30, v29);
    LOBYTE(v45) = 5;
    v32 = sub_1D1E68D3C();
    (*(v23 + 8))(v41, v25);
    v24[v31[9]] = v32 & 1;
    sub_1D1D73C24(v24, v36, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
    __swift_destroy_boxed_opaque_existential_1(v43);
    return sub_1D1D73C8C(v24, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
  }
}

uint64_t sub_1D1D70964()
{
  sub_1D1E6920C();
  AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1D709A8()
{
  sub_1D1E6920C();
  AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t AutoClimateModel.Thermostat.CleanEnergySettingConfig.EnergyPeakSymbolConfig.symbol.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AutoClimateModel.Thermostat.CleanEnergySettingConfig.EnergyPeakSymbolConfig.variableValue.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t static AutoClimateModel.Thermostat.CleanEnergySettingConfig.EnergyPeakSymbolConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (v7 = sub_1D1E6904C(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_1D1D70AD8()
{
  if (*v0)
  {
    result = 0x656C626169726176;
  }

  else
  {
    result = 0x6C6F626D7973;
  }

  *v0;
  return result;
}

uint64_t sub_1D1D70B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C626169726176 && a2 == 0xED000065756C6156)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

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

uint64_t sub_1D1D70BFC(uint64_t a1)
{
  v2 = sub_1D1D73D94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D70C38(uint64_t a1)
{
  v2 = sub_1D1D73D94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutoClimateModel.Thermostat.CleanEnergySettingConfig.EnergyPeakSymbolConfig.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E6E8, &qword_1D1EAC220);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13[0] = v1[2];
  v14 = *(v1 + 24);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D73D94();
  sub_1D1E6930C();
  v16 = 0;
  v11 = v13[1];
  sub_1D1E68ECC();
  if (!v11)
  {
    v15 = 1;
    sub_1D1E68E2C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t AutoClimateModel.Thermostat.CleanEnergySettingConfig.EnergyPeakSymbolConfig.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_1D1E678EC();
  if (v4 == 1)
  {
    return sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return MEMORY[0x1D3892890](v6);
}

uint64_t AutoClimateModel.Thermostat.CleanEnergySettingConfig.EnergyPeakSymbolConfig.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_1D1E6920C();
  sub_1D1E678EC();
  if (v4 == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x1D3892890](v5);
  }

  return sub_1D1E6926C();
}

uint64_t AutoClimateModel.Thermostat.CleanEnergySettingConfig.EnergyPeakSymbolConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E6F8, &qword_1D1EAC228);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D73D94();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_1D1E68D2C();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1D1E68C8C();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v16 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1D710FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (v7 = sub_1D1E6904C(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if ((v9 & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1D1D7118C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_1D1E6920C();
  sub_1D1E678EC();
  if (v4 == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x1D3892890](v5);
  }

  return sub_1D1E6926C();
}

uint64_t AutoClimateModel.Thermostat.CleanEnergySettingConfig.energyPeakSymbolConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 8);
  *(a1 + 8) = *(v1 + 16);
  *(a1 + 24) = v2;
}

unint64_t sub_1D1D712B4()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000017;
  }

  *v0;
  return result;
}

uint64_t sub_1D1D71310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1D75428(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1D71338(uint64_t a1)
{
  v2 = sub_1D1D73DE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D71374(uint64_t a1)
{
  v2 = sub_1D1D73DE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutoClimateModel.Thermostat.CleanEnergySettingConfig.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E700, &qword_1D1EAC230);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - v6;
  v8 = *v1;
  v25 = v1[1];
  v9 = *(v1 + 1);
  v18 = *(v1 + 2);
  v19 = v9;
  v17 = *(v1 + 3);
  v10 = v1[32];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D73DE8();
  sub_1D1E6930C();
  LOBYTE(v21) = 0;
  v12 = v20;
  sub_1D1E68EDC();
  if (!v12)
  {
    v15 = v17;
    v14 = v18;
    v16 = v19;
    LOBYTE(v21) = 1;
    sub_1D1E68EDC();
    v21 = v16;
    v22 = v14;
    v23 = v15;
    v24 = v10;
    v26 = 2;
    sub_1D1D73E3C();

    sub_1D1E68E5C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t AutoClimateModel.Thermostat.CleanEnergySettingConfig.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = v0[32];
  sub_1D1E6922C();
  sub_1D1E6922C();
  if (!v4)
  {
    return sub_1D1E6922C();
  }

  sub_1D1E6922C();
  sub_1D1E678EC();
  if (v6)
  {
    return sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return MEMORY[0x1D3892890](v8);
}

uint64_t AutoClimateModel.Thermostat.CleanEnergySettingConfig.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = v0[32];
  sub_1D1E6920C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  if (v4 && (sub_1D1E6922C(), sub_1D1E678EC(), (v6 & 1) == 0))
  {
    sub_1D1E6922C();
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x1D3892890](v7);
  }

  else
  {
    sub_1D1E6922C();
  }

  return sub_1D1E6926C();
}

uint64_t AutoClimateModel.Thermostat.CleanEnergySettingConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E718, &qword_1D1EAC238);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D73DE8();
  sub_1D1E692FC();
  if (!v2)
  {
    LOBYTE(v17) = 0;
    v11 = sub_1D1E68D3C();
    LOBYTE(v17) = 1;
    v12 = sub_1D1E68D3C();
    v20 = 2;
    sub_1D1D73E90();
    sub_1D1E68CBC();
    (*(v6 + 8))(v9, v5);
    v14 = v18;
    v15 = v19;
    v16 = v17;
    *a2 = v11 & 1;
    *(a2 + 1) = v12 & 1;
    *(a2 + 8) = v16;
    *(a2 + 24) = v14;
    *(a2 + 32) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1D7194C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = v0[32];
  sub_1D1E6920C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  if (v4 && (sub_1D1E6922C(), sub_1D1E678EC(), (v6 & 1) == 0))
  {
    sub_1D1E6922C();
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x1D3892890](v7);
  }

  else
  {
    sub_1D1E6922C();
  }

  return sub_1D1E6926C();
}

uint64_t AutoClimateModel.Thermostat.State.isAllowedToToggleAdaptiveTemperatureAutomations.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E538, &qword_1D1EAC240);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v14 - v9;
  swift_getKeyPath();
  v15 = v0;
  sub_1D1D739A8(&qword_1EC64E508, type metadata accessor for AutoClimateModel.Thermostat.State);
  sub_1D1E66CAC();

  v11 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__adaptiveTemperatureSettings;
  swift_beginAccess();
  sub_1D1741C08(v1 + v11, v10, &qword_1EC64E538, &qword_1D1EAC240);
  if ((*(v3 + 48))(v10, 1, v2))
  {
    sub_1D1741A30(v10, &qword_1EC64E538, &qword_1D1EAC240);
    return 0;
  }

  else
  {
    sub_1D1D73C24(v10, v6, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
    sub_1D1741A30(v10, &qword_1EC64E538, &qword_1D1EAC240);
    v12 = v6[*(v2 + 36)];
    sub_1D1D73C8C(v6, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
  }

  return v12;
}

uint64_t sub_1D1D71C88(void **a1)
{
  v2 = *(type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D1E0C15C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D1D71D30(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1D1D71D30(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D1E68F9C();
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
        type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
        v6 = sub_1D1E67C8C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D1D72104(v8, v9, a1, v4);
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
    return sub_1D1D71E5C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D1D71E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v41 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = &v33 - v17;
  v35 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v40 = v19;
    v34 = v20;
    v24 = v19 + v20 * a3;
LABEL_6:
    v38 = v21;
    v39 = a3;
    v36 = v24;
    v37 = v23;
    while (1)
    {
      sub_1D1D73C24(v24, v18, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      sub_1D1D73C24(v21, v14, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      v25 = *(v8 + 20);
      v26 = *&v18[v25];
      v27 = *&v18[v25 + 8];
      v28 = &v14[v25];
      if (v26 == *v28 && v27 == *(v28 + 1))
      {
        sub_1D1D73C8C(v14, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
        result = sub_1D1D73C8C(v18, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
LABEL_5:
        a3 = v39 + 1;
        v21 = v38 + v34;
        v23 = v37 - 1;
        v24 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return result;
        }

        goto LABEL_6;
      }

      v30 = sub_1D1E6904C();
      sub_1D1D73C8C(v14, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      result = sub_1D1D73C8C(v18, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      if ((v30 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v31 = v41;
      sub_1D1D73940(v24, v41, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D1D73940(v31, v21, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1D72104(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v133 = a1;
  v8 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v138 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v145 = &v126 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v146 = &v126 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v144 = &v126 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v143 = (&v126 - v21);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v132 = &v126 - v23;
  result = MEMORY[0x1EEE9AC00](v22);
  v131 = &v126 - v26;
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_111:
    v30 = *v133;
    if (!*v133)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_143:
      result = sub_1D1E0BE44(v29);
      v29 = result;
    }

    v149 = v29;
    v121 = *(v29 + 16);
    if (v121 >= 2)
    {
      while (*a3)
      {
        v122 = *(v29 + 16 * v121);
        v123 = v29;
        v124 = *(v29 + 16 * (v121 - 1) + 32);
        v29 = *(v29 + 16 * (v121 - 1) + 40);
        sub_1D1D72B98(*a3 + *(v9 + 72) * v122, *a3 + *(v9 + 72) * v124, *a3 + *(v9 + 72) * v29, v30);
        if (v5)
        {
        }

        if (v29 < v122)
        {
          goto LABEL_136;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v123 = sub_1D1E0BE44(v123);
        }

        if (v121 - 2 >= *(v123 + 2))
        {
          goto LABEL_137;
        }

        v125 = &v123[16 * v121];
        *v125 = v122;
        *(v125 + 1) = v29;
        v149 = v123;
        result = sub_1D1E0BDB8(v121 - 1);
        v29 = v149;
        v121 = *(v149 + 16);
        if (v121 <= 1)
        {
        }
      }

      goto LABEL_147;
    }
  }

  v147 = v25;
  v127 = a4;
  v28 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  v135 = a3;
  v128 = v9;
  v148 = v8;
  while (1)
  {
    v30 = v28 + 1;
    if (v28 + 1 >= v27)
    {
      goto LABEL_37;
    }

    v139 = v27;
    a3 = *a3;
    v31 = *(v9 + 72);
    v141 = v28 + 1;
    v32 = v131;
    sub_1D1D73C24(a3 + v31 * v30, v131, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    v134 = v28;
    v142 = v31;
    v30 = v132;
    sub_1D1D73C24(a3 + v31 * v28, v132, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    v33 = *(v8 + 20);
    v34 = *(v32 + v33);
    v35 = *(v32 + v33 + 8);
    v36 = (v30 + v33);
    v37 = v34 == *v36 && v35 == v36[1];
    v130 = v5;
    LODWORD(v140) = v37 ? 0 : sub_1D1E6904C();
    v129 = v29;
    sub_1D1D73C8C(v132, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    result = sub_1D1D73C8C(v131, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    v38 = v134 + 2;
    v39 = v141;
    v40 = v142 * (v134 + 2);
    v41 = a3 + v40;
    v42 = v142 * v141;
    v43 = a3 + v142 * v141;
    do
    {
      v9 = v38;
      v29 = v39;
      v45 = v42;
      v5 = v40;
      if (v38 >= v139)
      {
        break;
      }

      a3 = v143;
      sub_1D1D73C24(v41, v143, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      v46 = v144;
      sub_1D1D73C24(v43, v144, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      v47 = *(v148 + 20);
      v48 = *(a3 + v47);
      v49 = *(a3 + v47 + 8);
      v50 = (v46 + v47);
      v51 = v48 == *v50 && v49 == v50[1];
      v44 = v51 ? 0 : sub_1D1E6904C();
      v30 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig;
      sub_1D1D73C8C(v144, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      result = sub_1D1D73C8C(v143, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      v38 = v9 + 1;
      v41 += v142;
      v43 += v142;
      v39 = v29 + 1;
      v42 = v45 + v142;
      v40 = v5 + v142;
    }

    while (((v140 ^ v44) & 1) == 0);
    if (v140)
    {
      v52 = v134;
      if (v9 < v134)
      {
        goto LABEL_140;
      }

      if (v134 >= v9)
      {
        v30 = v9;
        v29 = v129;
        v5 = v130;
        a3 = v135;
        v9 = v128;
        v8 = v148;
        v28 = v134;
        goto LABEL_37;
      }

      v53 = v134 * v142;
      v8 = v148;
      do
      {
        if (v52 != v29)
        {
          v55 = *v135;
          if (!*v135)
          {
            goto LABEL_146;
          }

          sub_1D1D73940(v55 + v53, v138, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
          if (v53 < v45 || v55 + v53 >= (v55 + v5))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v53 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_1D1D73940(v138, v55 + v45, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
          v8 = v148;
        }

        ++v52;
        v45 -= v142;
        v5 -= v142;
        v53 += v142;
      }

      while (v52 < v29--);
      v30 = v9;
      v29 = v129;
      v5 = v130;
      a3 = v135;
      v9 = v128;
    }

    else
    {
      v30 = v9;
      v29 = v129;
      v5 = v130;
      a3 = v135;
      v9 = v128;
      v8 = v148;
    }

    v28 = v134;
LABEL_37:
    v56 = a3[1];
    if (v30 < v56)
    {
      if (__OFSUB__(v30, v28))
      {
        goto LABEL_139;
      }

      if (v30 - v28 < v127)
      {
        v57 = v28 + v127;
        if (__OFADD__(v28, v127))
        {
          goto LABEL_141;
        }

        if (v57 >= v56)
        {
          v57 = a3[1];
        }

        if (v57 < v28)
        {
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (v30 != v57)
        {
          break;
        }
      }
    }

LABEL_60:
    if (v30 < v28)
    {
      goto LABEL_138;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D177D070(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      result = sub_1D177D070((v75 > 1), v76 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v28;
    *(v78 + 40) = v30;
    v141 = v30;
    v30 = *v133;
    if (!*v133)
    {
      goto LABEL_148;
    }

    if (v76)
    {
      while (1)
      {
        v79 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_80:
          if (v83)
          {
            goto LABEL_127;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_130;
          }

          v102 = (v29 + 32 + 16 * v79);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_133;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_134;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v79 = v77 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_94:
        if (v101)
        {
          goto LABEL_129;
        }

        v109 = v29 + 16 * v79;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_132;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_101:
        v117 = v79 - 1;
        if (v79 - 1 >= v77)
        {
          __break(1u);
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        if (!*a3)
        {
          goto LABEL_145;
        }

        v118 = *(v29 + 32 + 16 * v117);
        v119 = *(v29 + 32 + 16 * v79 + 8);
        sub_1D1D72B98(*a3 + *(v9 + 72) * v118, *a3 + *(v9 + 72) * *(v29 + 32 + 16 * v79), *a3 + *(v9 + 72) * v119, v30);
        if (v5)
        {
        }

        if (v119 < v118)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_1D1E0BE44(v29);
        }

        if (v117 >= *(v29 + 16))
        {
          goto LABEL_124;
        }

        v120 = v29 + 16 * v117;
        *(v120 + 32) = v118;
        *(v120 + 40) = v119;
        v149 = v29;
        result = sub_1D1E0BDB8(v79);
        v29 = v149;
        v77 = *(v149 + 16);
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_125;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_126;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_128;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_131;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v79);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_135;
        }

        if (v82 < v116)
        {
          v79 = v77 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_80;
    }

LABEL_3:
    v27 = a3[1];
    v28 = v141;
    v8 = v148;
    if (v141 >= v27)
    {
      goto LABEL_111;
    }
  }

  v129 = v29;
  v130 = v5;
  v58 = *a3;
  v59 = *(v9 + 72);
  v60 = *a3 + v59 * (v30 - 1);
  v61 = -v59;
  v134 = v28;
  v62 = v28 - v30;
  v136 = v59;
  v137 = v57;
  v63 = v58 + v30 * v59;
  v64 = v146;
  while (2)
  {
    v140 = v62;
    v141 = v30;
    v139 = v63;
    v65 = v63;
    v142 = v60;
LABEL_49:
    v66 = v147;
    sub_1D1D73C24(v65, v147, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    sub_1D1D73C24(v60, v64, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    v67 = *(v8 + 20);
    v68 = *(v66 + v67);
    v69 = *(v66 + v67 + 8);
    v70 = (v64 + v67);
    if (v68 == *v70 && v69 == v70[1])
    {
      sub_1D1D73C8C(v64, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      sub_1D1D73C8C(v66, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
LABEL_47:
      v30 = v141 + 1;
      v60 = v142 + v136;
      v62 = v140 - 1;
      v63 = v139 + v136;
      if (v141 + 1 != v137)
      {
        continue;
      }

      v30 = v137;
      v29 = v129;
      v5 = v130;
      v28 = v134;
      a3 = v135;
      v9 = v128;
      goto LABEL_60;
    }

    break;
  }

  v72 = sub_1D1E6904C();
  sub_1D1D73C8C(v64, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
  result = sub_1D1D73C8C(v66, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
  if ((v72 & 1) == 0)
  {
    v8 = v148;
    goto LABEL_47;
  }

  v8 = v148;
  if (v58)
  {
    v73 = v145;
    sub_1D1D73940(v65, v145, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D1D73940(v73, v60, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    v60 += v61;
    v65 += v61;
    v74 = __CFADD__(v62++, 1);
    v64 = v146;
    if (v74)
    {
      goto LABEL_47;
    }

    goto LABEL_49;
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
  return result;
}

uint64_t sub_1D1D72B98(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v58 = a4;
  v57 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  v7 = *(*(v57 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v57);
  v56 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v55 = &v50 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v50 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v50 - v16;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_71;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_72;
  }

  v21 = (a2 - a1) / v19;
  v61 = a1;
  v60 = v58;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (v58 < a2 || a2 + v23 <= v58)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v58 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v33 = v58 + v23;
    if (v23 >= 1)
    {
      v34 = -v19;
      v35 = v58 + v23;
      do
      {
        v51 = v33;
        v36 = a2;
        v37 = a2 + v34;
        v53 = v36;
        v54 = v37;
        while (1)
        {
          if (v36 <= a1)
          {
            v61 = v36;
            v59 = v51;
            goto LABEL_69;
          }

          v38 = a3;
          v52 = v33;
          v39 = v34;
          v40 = v35 + v34;
          v41 = v35 + v34;
          v42 = v55;
          sub_1D1D73C24(v41, v55, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
          v43 = v56;
          sub_1D1D73C24(v37, v56, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
          v44 = *(v57 + 20);
          v45 = *(v42 + v44);
          v46 = *(v42 + v44 + 8);
          v47 = (v43 + v44);
          v48 = v45 == *v47 && v46 == v47[1];
          v49 = v48 ? 0 : sub_1D1E6904C();
          v34 = v39;
          a3 = v38 + v39;
          sub_1D1D73C8C(v56, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
          sub_1D1D73C8C(v55, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
          if (v49)
          {
            break;
          }

          v33 = v40;
          v37 = v54;
          if (v38 < v35 || a3 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v38 != v35)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v35 = v40;
          v36 = v53;
          if (v40 <= v58)
          {
            a2 = v53;
            goto LABEL_68;
          }
        }

        a2 = v54;
        if (v38 < v53 || a3 >= v53)
        {
          swift_arrayInitWithTakeFrontToBack();
          v33 = v52;
        }

        else
        {
          v33 = v52;
          if (v38 != v53)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v35 > v58);
    }

LABEL_68:
    v61 = a2;
    v59 = v33;
  }

  else
  {
    v22 = v21 * v19;
    if (v58 < a1 || a1 + v22 <= v58)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v58 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = v58 + v22;
    v59 = v58 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      while (1)
      {
        sub_1D1D73C24(a2, v17, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
        sub_1D1D73C24(v58, v14, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
        v26 = *(v57 + 20);
        v27 = *&v17[v26];
        v28 = *&v17[v26 + 8];
        v29 = &v14[v26];
        if (v27 == *v29 && v28 == *(v29 + 1))
        {
          break;
        }

        v31 = sub_1D1E6904C();
        sub_1D1D73C8C(v14, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
        sub_1D1D73C8C(v17, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
        if ((v31 & 1) == 0)
        {
          goto LABEL_30;
        }

        if (a1 < a2 || a1 >= a2 + v19)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v19;
LABEL_38:
        a1 += v19;
        v61 = a1;
        if (v58 >= v24 || a2 >= a3)
        {
          goto LABEL_69;
        }
      }

      sub_1D1D73C8C(v14, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      sub_1D1D73C8C(v17, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
LABEL_30:
      v32 = v58 + v19;
      if (a1 < v58 || a1 >= v32)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v58)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v60 = v32;
      v58 = v32;
      goto LABEL_38;
    }
  }

LABEL_69:
  sub_1D1DC724C(&v61, &v60, &v59);
  return 1;
}

uint64_t _s13HomeDataModel011AutoClimateC0C10ThermostatC24CleanEnergySettingConfigV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0)
  {
    v4 = *(a1 + 2);
    v5 = *(a2 + 2);
    if (v4)
    {
      if (v5)
      {
        v6 = *(a1 + 3);
        v7 = a1[32];
        v8 = *(a2 + 3);
        v9 = a2[32];
        if (*(a1 + 1) == *(a2 + 1) && v4 == v5)
        {
          v10 = *(a1 + 2);
          swift_bridgeObjectRetain_n();
        }

        else
        {
          v13 = *(a1 + 2);
          v14 = sub_1D1E6904C();
          swift_bridgeObjectRetain_n();
          if ((v14 & 1) == 0)
          {
LABEL_19:
            swift_bridgeObjectRelease_n();
            return 0;
          }
        }

        if (v7)
        {
          if ((v9 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        else if ((v9 & 1) != 0 || v6 != v8)
        {
          goto LABEL_19;
        }

        swift_bridgeObjectRelease_n();
        return 1;
      }

      v12 = *(a1 + 2);
    }

    else
    {
      if (!v5)
      {

        return 1;
      }

      v11 = *(a2 + 2);
    }

    return 0;
  }

  return result;
}

uint64_t _s13HomeDataModel011AutoClimateC0C10ThermostatC25AdaptiveTemperatureConfigV7SettingV2eeoiySbAI_AItFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_10;
    }

    v6 = a2[1];

    v7 = sub_1D177BFB8(v4, v5);

    if ((v7 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v5)
  {
LABEL_10:
    v10 = 0;
    return v10 & 1;
  }

  v9 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  if ((MEMORY[0x1D3890260](a1 + *(v9 + 24), a2 + *(v9 + 24)) & 1) == 0)
  {
    goto LABEL_10;
  }

  v10 = *(a1 + *(v9 + 28)) ^ *(a2 + *(v9 + 28)) ^ 1;
  return v10 & 1;
}

uint64_t _s13HomeDataModel011AutoClimateC0C10ThermostatC25AdaptiveTemperatureConfigV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  v5 = v4[5];
  v6 = a1 + v5;
  v7 = a2 + v5;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_22;
  }

  v8 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  v9 = *(v8 + 20);
  v10 = *&v6[v9];
  v11 = *&v6[v9 + 8];
  v12 = &v7[v9];
  v13 = v10 == *v12 && v11 == *(v12 + 1);
  if (!v13 && (sub_1D1E6904C() & 1) == 0)
  {
    goto LABEL_22;
  }

  v14 = *(v8 + 24);
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_22;
  }

  v15 = v4[6];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16)
  {
    if (!v17)
    {
      goto LABEL_22;
    }

    v18 = *(a2 + v15);

    v19 = sub_1D177BFB8(v16, v17);

    if ((v19 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v17)
  {
    goto LABEL_22;
  }

  v21 = v4[7];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (!v22)
  {
    if (!v23)
    {
      goto LABEL_20;
    }

LABEL_22:
    v26 = 0;
    return v26 & 1;
  }

  if (!v23)
  {
    goto LABEL_22;
  }

  v24 = *(a2 + v21);

  v25 = sub_1D177BFB8(v22, v23);

  if ((v25 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_20:
  if ((MEMORY[0x1D3890260](a1 + v4[8], a2 + v4[8]) & 1) == 0)
  {
    goto LABEL_22;
  }

  v26 = *(a1 + v4[9]) ^ *(a2 + v4[9]) ^ 1;
  return v26 & 1;
}

char *_s13HomeDataModel011AutoClimateC0C10ThermostatC19WeekdayScheduleRuleV15getSelectedDays4fromSayAG3DayOGSo15HMDaysOfTheWeekV_tFZ_0(char a1)
{
  if ((~a1 & 0x7F) == 0)
  {
    return &unk_1F4D5F3F0;
  }

  if ((a1 & 1) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((a1 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v2 = sub_1D177D00C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v3 = *(v2 + 2);
  v4 = *(v2 + 3);
  v5 = v3 + 1;
  if (v3 >= v4 >> 1)
  {
    v46 = v3 + 1;
    v25 = v2;
    v26 = *(v2 + 2);
    v27 = sub_1D177D00C((v4 > 1), v3 + 1, 1, v25);
    v3 = v26;
    v5 = v46;
    v2 = v27;
  }

  *(v2 + 2) = v5;
  v2[v3 + 32] = 0;
  if ((a1 & 2) != 0)
  {
LABEL_9:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1D177D00C(0, *(v2 + 2) + 1, 1, v2);
    }

    v6 = *(v2 + 2);
    v7 = *(v2 + 3);
    v8 = v6 + 1;
    if (v6 >= v7 >> 1)
    {
      v47 = v6 + 1;
      v28 = v2;
      v29 = *(v2 + 2);
      v30 = sub_1D177D00C((v7 > 1), v6 + 1, 1, v28);
      v6 = v29;
      v8 = v47;
      v2 = v30;
    }

    *(v2 + 2) = v8;
    v2[v6 + 32] = 1;
  }

LABEL_14:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1D177D00C(0, *(v2 + 2) + 1, 1, v2);
    }

    v9 = *(v2 + 2);
    v10 = *(v2 + 3);
    v11 = v9 + 1;
    if (v9 >= v10 >> 1)
    {
      v48 = v9 + 1;
      v31 = v2;
      v32 = *(v2 + 2);
      v33 = sub_1D177D00C((v10 > 1), v9 + 1, 1, v31);
      v9 = v32;
      v11 = v48;
      v2 = v33;
    }

    *(v2 + 2) = v11;
    v2[v9 + 32] = 2;
    if ((a1 & 8) == 0)
    {
LABEL_16:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_30;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_16;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D177D00C(0, *(v2 + 2) + 1, 1, v2);
  }

  v12 = *(v2 + 2);
  v13 = *(v2 + 3);
  v14 = v12 + 1;
  if (v12 >= v13 >> 1)
  {
    v49 = v12 + 1;
    v34 = v2;
    v35 = *(v2 + 2);
    v36 = sub_1D177D00C((v13 > 1), v12 + 1, 1, v34);
    v12 = v35;
    v14 = v49;
    v2 = v36;
  }

  *(v2 + 2) = v14;
  v2[v12 + 32] = 3;
  if ((a1 & 0x10) == 0)
  {
LABEL_17:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_30:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D177D00C(0, *(v2 + 2) + 1, 1, v2);
  }

  v15 = *(v2 + 2);
  v16 = *(v2 + 3);
  v17 = v15 + 1;
  if (v15 >= v16 >> 1)
  {
    v50 = v15 + 1;
    v37 = v2;
    v38 = *(v2 + 2);
    v39 = sub_1D177D00C((v16 > 1), v15 + 1, 1, v37);
    v15 = v38;
    v17 = v50;
    v2 = v39;
  }

  *(v2 + 2) = v17;
  v2[v15 + 32] = 4;
  if ((a1 & 0x20) == 0)
  {
LABEL_18:
    if ((a1 & 0x40) == 0)
    {
      return v2;
    }

    goto LABEL_40;
  }

LABEL_35:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D177D00C(0, *(v2 + 2) + 1, 1, v2);
  }

  v18 = *(v2 + 2);
  v19 = *(v2 + 3);
  v20 = v18 + 1;
  if (v18 >= v19 >> 1)
  {
    v51 = v18 + 1;
    v40 = v2;
    v41 = *(v2 + 2);
    v42 = sub_1D177D00C((v19 > 1), v18 + 1, 1, v40);
    v18 = v41;
    v20 = v51;
    v2 = v42;
  }

  *(v2 + 2) = v20;
  v2[v18 + 32] = 5;
  if ((a1 & 0x40) != 0)
  {
LABEL_40:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1D177D00C(0, *(v2 + 2) + 1, 1, v2);
    }

    v21 = *(v2 + 2);
    v22 = *(v2 + 3);
    v23 = v21 + 1;
    if (v21 >= v22 >> 1)
    {
      v43 = v2;
      v44 = *(v2 + 2);
      v45 = sub_1D177D00C((v22 > 1), v21 + 1, 1, v43);
      v21 = v44;
      v2 = v45;
    }

    *(v2 + 2) = v23;
    v2[v21 + 32] = 6;
  }

  return v2;
}

unint64_t sub_1D1D738F4()
{
  result = qword_1EC645C68;
  if (!qword_1EC645C68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC645C68);
  }

  return result;
}

uint64_t sub_1D1D73940(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1D739A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D1D739F0()
{
  result = qword_1EC64E5E8;
  if (!qword_1EC64E5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E5E8);
  }

  return result;
}

uint64_t sub_1D1D73A44(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64E5F0, &qword_1D1EAC1C0);
    sub_1D1D739A8(a2, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1D73AE0()
{
  result = qword_1EC64E628;
  if (!qword_1EC64E628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E628);
  }

  return result;
}

unint64_t sub_1D1D73B34()
{
  result = qword_1EC64E660;
  if (!qword_1EC64E660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E660);
  }

  return result;
}

uint64_t sub_1D1D73B88(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64E670, &qword_1D1EAC1E8);
    sub_1D1D739A8(a2, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1D73C24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1D73C8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D1D73CEC()
{
  result = qword_1EC64E6C0;
  if (!qword_1EC64E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E6C0);
  }

  return result;
}

unint64_t sub_1D1D73D40()
{
  result = qword_1EC64E6D8;
  if (!qword_1EC64E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E6D8);
  }

  return result;
}

unint64_t sub_1D1D73D94()
{
  result = qword_1EC64E6F0;
  if (!qword_1EC64E6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E6F0);
  }

  return result;
}

unint64_t sub_1D1D73DE8()
{
  result = qword_1EC64E708;
  if (!qword_1EC64E708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E708);
  }

  return result;
}

unint64_t sub_1D1D73E3C()
{
  result = qword_1EC64E710;
  if (!qword_1EC64E710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E710);
  }

  return result;
}

unint64_t sub_1D1D73E90()
{
  result = qword_1EC64E720;
  if (!qword_1EC64E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E720);
  }

  return result;
}

unint64_t sub_1D1D73EE8()
{
  result = qword_1EC64E728;
  if (!qword_1EC64E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E728);
  }

  return result;
}

unint64_t sub_1D1D73F40()
{
  result = qword_1EC64E730;
  if (!qword_1EC64E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E730);
  }

  return result;
}

unint64_t sub_1D1D73F98()
{
  result = qword_1EC64E738;
  if (!qword_1EC64E738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64E740, &qword_1D1EAC468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E738);
  }

  return result;
}

unint64_t sub_1D1D74120()
{
  result = qword_1EC64E768;
  if (!qword_1EC64E768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E768);
  }

  return result;
}

unint64_t sub_1D1D74178()
{
  result = qword_1EC64E770;
  if (!qword_1EC64E770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E770);
  }

  return result;
}

void sub_1D1D74204()
{
  sub_1D1E662EC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for HMDaysOfTheWeek(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D1D742C0()
{
  type metadata accessor for HMAdaptiveTemperatureDriver(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(319);
    if (v1 <= 0x3F)
    {
      sub_1D1D7437C();
      if (v2 <= 0x3F)
      {
        sub_1D1E66C5C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D1D7437C()
{
  if (!qword_1EC64E798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64E670, &qword_1D1EAC1E8);
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC64E798);
    }
  }
}

void sub_1D1D74408()
{
  type metadata accessor for HMAdaptiveTemperatureDriver(319);
  if (v0 <= 0x3F)
  {
    sub_1D1D7437C();
    if (v1 <= 0x3F)
    {
      sub_1D1E66C5C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D1D744D4()
{
  result = sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D1D74550(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t sub_1D1D745AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1D1D74614(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1D1D7465C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D1D74724()
{
  result = qword_1EC64E7C0;
  if (!qword_1EC64E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E7C0);
  }

  return result;
}

unint64_t sub_1D1D7477C()
{
  result = qword_1EC64E7C8;
  if (!qword_1EC64E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E7C8);
  }

  return result;
}

unint64_t sub_1D1D747D4()
{
  result = qword_1EC64E7D0;
  if (!qword_1EC64E7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E7D0);
  }

  return result;
}

unint64_t sub_1D1D7482C()
{
  result = qword_1EC64E7D8;
  if (!qword_1EC64E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E7D8);
  }

  return result;
}

unint64_t sub_1D1D74884()
{
  result = qword_1EC64E7E0;
  if (!qword_1EC64E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E7E0);
  }

  return result;
}

unint64_t sub_1D1D748DC()
{
  result = qword_1EC64E7E8;
  if (!qword_1EC64E7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E7E8);
  }

  return result;
}

unint64_t sub_1D1D74934()
{
  result = qword_1EC64E7F0;
  if (!qword_1EC64E7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E7F0);
  }

  return result;
}

unint64_t sub_1D1D7498C()
{
  result = qword_1EC64E7F8;
  if (!qword_1EC64E7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E7F8);
  }

  return result;
}

unint64_t sub_1D1D749E4()
{
  result = qword_1EC64E800;
  if (!qword_1EC64E800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E800);
  }

  return result;
}

unint64_t sub_1D1D74A3C()
{
  result = qword_1EC64E808;
  if (!qword_1EC64E808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E808);
  }

  return result;
}

unint64_t sub_1D1D74A94()
{
  result = qword_1EC64E810;
  if (!qword_1EC64E810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E810);
  }

  return result;
}

unint64_t sub_1D1D74AEC()
{
  result = qword_1EC64E818;
  if (!qword_1EC64E818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E818);
  }

  return result;
}

unint64_t sub_1D1D74B44()
{
  result = qword_1EC64E820;
  if (!qword_1EC64E820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E820);
  }

  return result;
}

unint64_t sub_1D1D74B9C()
{
  result = qword_1EC64E828;
  if (!qword_1EC64E828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E828);
  }

  return result;
}

unint64_t sub_1D1D74BF4()
{
  result = qword_1EC64E830;
  if (!qword_1EC64E830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E830);
  }

  return result;
}

unint64_t sub_1D1D74C4C()
{
  result = qword_1EC64E838;
  if (!qword_1EC64E838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E838);
  }

  return result;
}

unint64_t sub_1D1D74CA4()
{
  result = qword_1EC64E840;
  if (!qword_1EC64E840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E840);
  }

  return result;
}

unint64_t sub_1D1D74CFC()
{
  result = qword_1EC64E848;
  if (!qword_1EC64E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E848);
  }

  return result;
}

unint64_t sub_1D1D74D54()
{
  result = qword_1EC64E850;
  if (!qword_1EC64E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E850);
  }

  return result;
}

unint64_t sub_1D1D74DAC()
{
  result = qword_1EC64E858;
  if (!qword_1EC64E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E858);
  }

  return result;
}

unint64_t sub_1D1D74E04()
{
  result = qword_1EC64E860;
  if (!qword_1EC64E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E860);
  }

  return result;
}

uint64_t sub_1D1D74E58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6557664F73796164 && a2 == 0xEA00000000006B65)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D1D74F80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726576697264 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xED0000736D6F6F52 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D6954656D6F68 && a2 == 0xEC000000656E6F5ALL || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001D1EC8FD0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D1D750F4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001D1EC9000 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449656D6F68 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D1E6904C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D1D75214(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726576697264 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x52746E6572727563 && a2 == 0xEB000000006D6F6FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xED0000736D6F6F52 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC9020 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D6954656D6F68 && a2 == 0xEC000000656E6F5ALL || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001D1EC8FD0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D1D75428(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x80000001D1EC9040 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC9060 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D1EC9080 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D1E6904C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1D1D75554()
{
  result = qword_1EC64E870[0];
  if (!qword_1EC64E870[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC64E870);
  }

  return result;
}

uint64_t dispatch thunk of AutoClimateModelProtocol.invalidateLocalPresenceRooms(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D17C4BFC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AutoClimateModelHomeProtocol.fetchLocalPresenceRooms()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return v9(a1, a2);
}

uint64_t sub_1D1D757F0(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  type metadata accessor for AsyncBatchedSequenceStorage.State();
  result = sub_1D1E66E2C();
  if (v4 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D1D758D4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, v3, a2);
  result = type metadata accessor for AsyncBatchedSequence();
  *(a3 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_1D1D75970@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1D1D7595C(a1);
  result = (*(*(a1 - 8) + 8))(v2, a1);
  *a2 = v5;
  return result;
}

uint64_t sub_1D1D759D8(uint64_t a1, char a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_1D1D761BC(a1, a2);
  return v7;
}

uint64_t sub_1D1D75A48()
{
  v1 = **(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1D1D75ADC;

  return sub_1D1D75BDC();
}

uint64_t sub_1D1D75ADC(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1D1D75BDC()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1D1D75C24, 0, 0);
}

uint64_t sub_1D1D75C24()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = swift_allocObject();
  v0[5] = v3;
  swift_weakInit();
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = *(v2 + 80);
  v4[3] = *(v2 + 88);
  v4[4] = v3;
  v5 = *(MEMORY[0x1E69E88F0] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  swift_getAssociatedTypeWitness();
  sub_1D1E67D1C();
  v7 = sub_1D1E685AC();
  *v6 = v0;
  v6[1] = sub_1D1D75D84;
  v8 = v0[3];

  return MEMORY[0x1EEE6DE18](v0 + 2, &unk_1D1EAD560, v8, sub_1D1D7A148, v4, 0, 0, v7);
}

uint64_t sub_1D1D75D84()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1D19D85E8;
  }

  else
  {
    v5 = *(v2 + 40);
    v6 = *(v2 + 48);

    v4 = sub_1D19D88F8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D1D75EA8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D19DC774;

  return sub_1D1D75A28();
}

uint64_t sub_1D1D75F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v13 = *(a5 + 16);
  v12 = *(a5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[3] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v6[4] = v15;
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  v6[5] = v17;
  v18 = *(MEMORY[0x1E69E85D8] + 4);
  v19 = swift_task_alloc();
  v6[6] = v19;
  *v19 = v6;
  v19[1] = sub_1D1D76088;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v17);
}

uint64_t sub_1D1D76088()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
    (*(v2[4] + 32))(v2[2], v2[5], v2[3]);
  }

  else
  {
    v6 = v2[5];
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_1D1D761BC(uint64_t a1, char a2)
{
  v20 = a1;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 88);
  v6 = type metadata accessor for AsyncBatchedSequenceStorage.State();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  v11 = sub_1D1E66E2C();
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  sub_1D1D763CC(a2, v10);
  *v15 = 0;
  v16 = *(v12 + 36);
  v17 = sub_1D1E66E3C();
  bzero(&v15[v16], *(*(v17 - 8) + 64));
  (*(v7 + 32))(&v15[v16], v10, v6);
  memcpy((v2 + *(*v2 + 96)), v15, v13);
  (*(*(v4 - 8) + 32))(v2 + *(*v2 + 104), v20, v4);
  return v2;
}

uint64_t sub_1D1D763CC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine.State();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = type metadata accessor for AsyncBatchedSequenceStorage.State();
  *(a2 + *(v8 + 36)) = 0;
  v9 = *(v8 + 40);
  swift_getAssociatedTypeWitness();
  *(a2 + v9) = sub_1D1E67C7C();
  swift_storeEnumTagMultiPayload();
  return sub_1D1D78844(v7, a1, a2);
}

uint64_t sub_1D1D764D0(uint64_t a1, void *a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1D76518, 0, 0);
}

uint64_t sub_1D1D76518()
{
  v1 = v0[4];
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  v5 = *(v1 + 80);
  v4 = *(v1 + 88);
  swift_getAssociatedTypeWitness();
  sub_1D1E67D1C();
  v6 = sub_1D1E685AC();
  *v3 = v0;
  v3[1] = sub_1D195566C;
  v7 = v0[2];
  v8 = v0[3];

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0x29287478656ELL, 0xE600000000000000, sub_1D1D7A154, v8, v6);
}

uint64_t sub_1D1D76618(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 80);
  v4 = *(*a2 + 88);
  v5 = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine.Action();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  swift_getAssociatedTypeWitness();
  sub_1D1E67D1C();
  sub_1D1E685AC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v10 = sub_1D1E67D7C();
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  swift_storeEnumTagMultiPayload();
  sub_1D1D767CC(v9);
  return (*(v6 + 8))(v9, v5);
}

void sub_1D1D767CC(uint64_t a1)
{
  v3 = *v1;
  v4 = (v1 + *(*v1 + 96));
  os_unfair_lock_lock(v4);
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  type metadata accessor for AsyncBatchedSequenceStorage.State();
  v7 = sub_1D1E66E2C();
  sub_1D1D76988(v4 + *(v7 + 28), a1, v1);

  os_unfair_lock_unlock(v4);
}

uint64_t sub_1D1D76888()
{
  v0 = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine.Action();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_storeEnumTagMultiPayload();
    sub_1D1D767CC(v4);

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_1D1D76988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v110 = a2;
  v5 = *(*a3 + 88);
  v6 = *(*a3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v109 = sub_1D1E67D1C();
  sub_1D1E685AC();
  v95 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v8 = sub_1D1E67D7C();
  v9 = sub_1D1E685AC();
  v98 = *(v9 - 8);
  v99 = v9;
  v10 = *(v98 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v100 = (&v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v11);
  v97 = &v92 - v14;
  v106 = v8;
  v105 = *(v8 - 8);
  v15 = *(v105 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v93 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v96 = &v92 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v103 = AssociatedTypeWitness;
  v104 = &v92 - v21;
  v102 = *(AssociatedTypeWitness - 8);
  v22 = *(v102 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v94 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v101 = &v92 - v25;
  v26 = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine.Response();
  v27 = sub_1D1E685AC();
  v28 = *(v27 - 8);
  v29 = *(v28 + 8);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v92 - v33;
  v107 = v6;
  v108 = v5;
  v35 = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine();
  v36 = v110;
  v110 = a1;
  sub_1D1D7742C(v36, v35, v34);
  (*(v28 + 2))(v32, v34, v27);
  if ((*(*(v26 - 8) + 48))(v32, 1, v26) == 1)
  {
    return (*(v28 + 1))(v34, v27);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v100 = v28;
      if (EnumCaseMultiPayload)
      {
        v71 = v101;
        v72 = v102;
        v73 = v103;
        (*(v102 + 32))(v101, v32, v103);
        (*(v72 + 16))(v94, v71, v73);
        v74 = v110 + *(type metadata accessor for AsyncBatchedSequenceStorage.State() + 40);
        sub_1D1E67CDC();
        (*(v72 + 8))(v71, v73);
      }

      else
      {
        v39 = v103;
        v40 = v106;
        v41 = *(swift_getTupleTypeMetadata2() + 48);
        v42 = v101;
        v43 = v102;
        (*(v102 + 32))(v101, v32, v39);
        v44 = v105;
        v45 = &v32[v41];
        v46 = v104;
        (*(v105 + 32))(v104, v45, v40);
        v47 = sub_1D1D79EDC(v39, v39);
        v48 = *(v47 + 52);
        v49 = *(v43 + 72);
        v50 = (*(v43 + 80) + *(v47 + 48)) & ~*(v43 + 80);
        swift_allocObject();
        v51 = sub_1D1E67C3C();
        (*(v43 + 16))(v52, v42, v39);
        sub_1D1E67D1C();
        v111 = v51;
        sub_1D1E67D6C();
        (*(v44 + 8))(v46, v40);
        (*(v43 + 8))(v42, v39);
      }

      return v100[1](v34, v27);
    }

    v59 = v34;
    v60 = v28;
    if (EnumCaseMultiPayload == 2)
    {
      v62 = v104;
      v61 = v105;
      v63 = v32;
      v64 = v106;
      (*(v105 + 32))(v104, v63, v106);
      v111 = *(v110 + *(type metadata accessor for AsyncBatchedSequenceStorage.State() + 40));

      sub_1D1E67D6C();
      sub_1D1E67D0C();
      (*(v61 + 8))(v62, v64);
    }

    else
    {
      v87 = v106;
      v88 = *&v32[*(swift_getTupleTypeMetadata2() + 48)];
      v89 = v104;
      v90 = v105;
      (*(v105 + 32))(v104, v32, v87);
      v111 = v88;
      sub_1D1E67D5C();
      (*(v90 + 8))(v89, v87);
    }

    return v60[1](v59, v27);
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload != 6)
    {
      if (*(v110 + *(type metadata accessor for AsyncBatchedSequenceStorage.State() + 36)))
      {
        sub_1D1E67F5C();
      }

      return (*(v28 + 1))(v34, v27);
    }

    v65 = sub_1D1D7774C(a3 + *(*a3 + 104));
    v66 = v34;
    v67 = v65;
    (*(v28 + 1))(v66, v27);
    v68 = *(type metadata accessor for AsyncBatchedSequenceStorage.State() + 36);
    v69 = v110;
    v70 = *(v110 + v68);

    *(v69 + v68) = v67;
  }

  else
  {
    if (EnumCaseMultiPayload != 4)
    {
      v59 = v34;
      v60 = v28;
      v76 = v97;
      v75 = v98;
      v77 = v99;
      (*(v98 + 32))(v97, v32, v99);
      v78 = v100;
      (*(v75 + 16))(v100, v76, v77);
      v80 = v105;
      v79 = v106;
      v81 = (*(v105 + 48))(v78, 1, v106);
      v82 = v75;
      v83 = v77;
      if (v81 != 1)
      {
        v111 = 0;
        sub_1D1E67D6C();
        v78 = v100;
        v82 = v80;
        v83 = v79;
      }

      (*(v82 + 8))(v78, v83);
      v84 = type metadata accessor for AsyncBatchedSequenceStorage.State();
      v85 = v110;
      v86 = v110 + *(v84 + 40);
      sub_1D1E67D0C();
      if (*(v85 + *(v84 + 36)))
      {
        sub_1D1E67F5C();
      }

      (*(v75 + 8))(v76, v77);
      return v60[1](v59, v27);
    }

    v104 = v34;
    v100 = v28;
    v53 = v105;
    v54 = v106;
    v55 = v96;
    (*(v105 + 16))(v96, v32, v106);
    v108 = type metadata accessor for AsyncBatchedSequenceStorage.State();
    v56 = *(v110 + *(v108 + 40));
    v111 = v56;
    swift_getWitnessTable();
    if (sub_1D1E682AC())
    {
      v57 = *(v53 + 8);
      v57(v55, v54);
      v58 = v93;
      (*(v53 + 32))(v93, v32, v54);
      v111 = 0;
      sub_1D1E67D6C();
      if (*(v110 + *(v108 + 36)))
      {
        sub_1D1E67F5C();
      }

      v57(v58, v54);
      return v100[1](v104, v27);
    }

    else
    {
      v111 = v56;

      sub_1D1E67D6C();
      sub_1D1E67D0C();
      v91 = *(v53 + 8);
      v91(v55, v54);
      v100[1](v104, v27);
      return (v91)(v32, v54);
    }
  }

  return result;
}

void sub_1D1D7742C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v24 = a3;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v24 - v10;
  sub_1D1E67D1C();
  sub_1D1E685AC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v12 = sub_1D1E67D7C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v24 - v15;
  v17 = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine.Action();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v24 - v19);
  (*(v21 + 16))(&v24 - v19, a1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v8 + 32))(v11, v20, AssociatedTypeWitness);
      sub_1D1D79060(v11, a2, v24);
      (*(v8 + 8))(v11, AssociatedTypeWitness);
    }

    else
    {
      (*(v13 + 32))(v16, v20, v12);
      sub_1D1D788E0(v16, a2, v24);
      (*(v13 + 8))(v16, v12);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v23 = *v20;
    sub_1D1D79468(*v20, a2, v24);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_1D1D79860(a2, v24);
  }

  else
  {
    sub_1D1D79BC4(a2, v24);
  }
}

uint64_t sub_1D1D7774C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v18 - v11;
  v13 = sub_1D1E67E7C();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v8, a1, v4);
  v15 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = v4;
  *(v16 + 5) = *(v3 + 88);
  (*(v5 + 32))(&v16[v15], v8, v4);
  *&v16[(v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8] = v14;
  return sub_1D17C6EF0(0, 0, v12, &unk_1D1EAD540, v16);
}

uint64_t sub_1D1D7797C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[12] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v7[13] = v10;
  v11 = *(v10 + 64) + 15;
  v7[14] = swift_task_alloc();
  v12 = swift_getAssociatedTypeWitness();
  v7[15] = v12;
  v13 = *(v12 - 8);
  v7[16] = v13;
  v14 = *(v13 + 64) + 15;
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v15 = *(*(sub_1D1E685AC() - 8) + 64) + 15;
  v7[19] = swift_task_alloc();
  v16 = *(a6 - 8);
  v7[20] = v16;
  v17 = *(v16 + 64) + 15;
  v7[21] = swift_task_alloc();
  v18 = swift_getAssociatedTypeWitness();
  v7[22] = v18;
  v19 = *(v18 - 8);
  v7[23] = v19;
  v20 = *(v19 + 64) + 15;
  v7[24] = swift_task_alloc();
  v21 = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine.Action();
  v7[25] = v21;
  v22 = *(v21 - 8);
  v7[26] = v22;
  v23 = *(v22 + 64) + 15;
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D77C5C, 0, 0);
}

uint64_t sub_1D1D77C5C()
{
  v1 = v0[28];
  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[20];
  v4 = v0[21];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[8];
  v9 = v0[9];
  swift_storeEnumTagMultiPayload();
  (*(v5 + 16))(v4, v8, v7);
  sub_1D1E6801C();
  swift_beginAccess();
  v10 = v0[22];
  v12 = v0[10];
  v11 = v0[11];
  v0[29] = swift_getAssociatedConformanceWitness();
  v13 = *(MEMORY[0x1E69E85B0] + 4);
  v14 = swift_task_alloc();
  v0[30] = v14;
  *v14 = v0;
  v14[1] = sub_1D1D77DA4;
  v15 = v0[24];
  v16 = v0[22];
  v18 = v0[18];
  v17 = v0[19];

  return MEMORY[0x1EEE6D8D0](v17, 0, 0);
}

uint64_t sub_1D1D77DA4()
{
  v2 = *(*v1 + 240);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_1D1D781B4;
  }

  else
  {
    v3 = sub_1D1D77EB4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1D77EB4()
{
  v1 = v0[19];
  v2 = v0[12];
  v3 = v0[13];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[23] + 8))(v0[24], v0[22]);
LABEL_8:
    v24 = v0[9];
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1D1D767CC(v0[28]);
    }

    v25 = v0[27];
    v26 = v0[24];
    v27 = v0[21];
    v29 = v0[18];
    v28 = v0[19];
    v30 = v0[17];
    v31 = v0[14];
    (*(v0[26] + 8))(v0[28], v0[25]);

    v32 = v0[1];

    return v32();
  }

  v4 = v0[9];
  (*(v3 + 32))(v0[14], v1, v2);
  Strong = swift_weakLoadStrong();
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[12];
  if (!Strong)
  {
    v22 = v0[23];
    v21 = v0[24];
    v23 = v0[22];
    (*(v7 + 8))(v0[14], v0[12]);
    (*(v22 + 8))(v21, v23);
    goto LABEL_8;
  }

  v10 = v0[26];
  v9 = v0[27];
  v11 = v0[25];
  (*(v7 + 16))(v9, v0[14], v0[12]);
  swift_storeEnumTagMultiPayload();
  sub_1D1D767CC(v9);

  (*(v10 + 8))(v9, v11);
  (*(v7 + 8))(v6, v8);
  v12 = v0[22];
  v14 = v0[10];
  v13 = v0[11];
  v0[29] = swift_getAssociatedConformanceWitness();
  v15 = *(MEMORY[0x1E69E85B0] + 4);
  v16 = swift_task_alloc();
  v0[30] = v16;
  *v16 = v0;
  v16[1] = sub_1D1D77DA4;
  v17 = v0[24];
  v18 = v0[22];
  v20 = v0[18];
  v19 = v0[19];

  return MEMORY[0x1EEE6D8D0](v19, 0, 0);
}

uint64_t sub_1D1D781B4()
{
  v1 = v0[29];
  v2 = v0[22];
  v3 = *(v0[16] + 32);
  v3(v0[17], v0[18], v0[15]);
  swift_getAssociatedConformanceWitness();
  v4 = sub_1D1E68FEC();
  v5 = v0[17];
  if (v4)
  {
    v6 = v4;
    (*(v0[16] + 8))(v0[17], v0[15]);
  }

  else
  {
    v7 = v0[15];
    v6 = swift_allocError();
    v3(v8, v5, v7);
  }

  v9 = v0[28];
  v10 = v0[25];
  v11 = v0[26];
  (*(v0[23] + 8))(v0[24], v0[22]);
  (*(v11 + 8))(v9, v10);
  *v9 = v6;
  swift_storeEnumTagMultiPayload();
  v12 = v0[9];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D1D767CC(v0[28]);
  }

  v13 = v0[27];
  v14 = v0[24];
  v15 = v0[21];
  v17 = v0[18];
  v16 = v0[19];
  v18 = v0[17];
  v19 = v0[14];
  (*(v0[26] + 8))(v0[28], v0[25]);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1D1D783D0()
{
  v1 = v0 + *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  type metadata accessor for AsyncBatchedSequenceStorage.State();
  v4 = *(sub_1D1E66E2C() + 28);
  v5 = sub_1D1E66E3C();
  sub_1D1B16D04(v5);
  (*(*(v2 - 8) + 8))(v0 + *(*v0 + 104), v2);
  return v0;
}

uint64_t sub_1D1D784C0()
{
  sub_1D1D783D0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1D1D78548(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for AsyncBatchedSequenceStorage.StateMachine();
  if (v3 <= 0x3F)
  {
    sub_1D1D7865C();
    if (v4 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      sub_1D1E67D1C();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D1D7865C()
{
  if (!qword_1EC64E978[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC643198, &qword_1D1E715F0);
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, qword_1EC64E978);
    }
  }
}

uint64_t sub_1D1D786C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine.State();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D1D78778(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  sub_1D1E67D1C();
  sub_1D1E685AC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  result = sub_1D1E67D7C();
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D1D78844@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine.State();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine();
  *(a3 + *(result + 36)) = a2;
  return result;
}

uint64_t sub_1D1D788E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine.State();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v29 - v12);
  (*(v10 + 16))(&v29 - v12, v4, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload != 4)
      {
        (*(v10 + 8))(v4, v9);
        swift_getAssociatedTypeWitness();
        sub_1D1E67D1C();
        sub_1D1E685AC();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
        v25 = sub_1D1E67D7C();
        (*(*(v25 - 8) + 16))(v4, a1, v25);
        swift_storeEnumTagMultiPayload();
        v26 = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine.Response();
        return (*(*(v26 - 8) + 56))(a3, 1, 1, v26);
      }

      (*(v10 + 8))(v4, v9);
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 6)
    {
      swift_getAssociatedTypeWitness();
      sub_1D1E67D1C();
      sub_1D1E685AC();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
      v21 = sub_1D1E67D7C();
      v22 = *(v21 - 8);
      (*(v22 + 16))(a3, a1, v21);
      (*(v22 + 56))(a3, 0, 1, v21);
    }

    else
    {
      swift_getAssociatedTypeWitness();
      sub_1D1E67D1C();
      sub_1D1E685AC();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
      v28 = sub_1D1E67D7C();
      (*(*(v28 - 8) + 16))(a3, a1, v28);
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v15 = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine.Response();
        (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
        return (*(v10 + 8))(v13, v9);
      }

      v23 = *v13;
      (*(v10 + 8))(v4, v9);
      *v4 = v23;
LABEL_14:
      swift_storeEnumTagMultiPayload();
      swift_getAssociatedTypeWitness();
      sub_1D1E67D1C();
      sub_1D1E685AC();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
      v24 = sub_1D1E67D7C();
      (*(*(v24 - 8) + 16))(a3, a1, v24);
      v20 = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine.Response();
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v17 = *v13;
      (*(v10 + 8))(v4, v9);
      swift_storeEnumTagMultiPayload();
      swift_getAssociatedTypeWitness();
      sub_1D1E67D1C();
      sub_1D1E685AC();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
      v18 = sub_1D1E67D7C();
      v19 = *(swift_getTupleTypeMetadata2() + 48);
      (*(*(v18 - 8) + 16))(a3, a1, v18);
      *(a3 + v19) = v17;
    }

    else
    {
      (*(v10 + 8))(v4, v9);
      swift_getAssociatedTypeWitness();
      sub_1D1E67D1C();
      sub_1D1E685AC();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
      v27 = sub_1D1E67D7C();
      (*(*(v27 - 8) + 16))(v4, a1, v27);
      swift_storeEnumTagMultiPayload();
    }
  }

  v20 = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine.Response();
LABEL_18:
  swift_storeEnumTagMultiPayload();
  return (*(*(v20 - 8) + 56))(a3, 0, 1, v20);
}

uint64_t sub_1D1D79060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v29 = a1;
  v30 = a3;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1D1E67D1C();
  sub_1D1E685AC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v8 = sub_1D1E67D7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine.State();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - v16;
  (*(v14 + 16))(&v29 - v16, v4, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if ((EnumCaseMultiPayload - 6) < 2)
    {
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload != 4)
    {
      (*(v14 + 8))(v4, v13);
      swift_storeEnumTagMultiPayload();
    }

    v19 = v30;
    (*(*(AssociatedTypeWitness - 8) + 16))(v30, v29, AssociatedTypeWitness);
    v20 = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine.Response();
    swift_storeEnumTagMultiPayload();
    v21 = *(*(v20 - 8) + 56);
    v22 = v19;
  }

  else
  {
    if ((EnumCaseMultiPayload - 1) < 2)
    {
      (*(v14 + 8))(v17, v13);
LABEL_11:
      v27 = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine.Response();
      v21 = *(*(v27 - 8) + 56);
      v22 = v30;
      v26 = 1;
      return v21(v22, v26, 1, v27);
    }

    if (EnumCaseMultiPayload)
    {
      goto LABEL_11;
    }

    v23 = *(v9 + 32);
    v23(v12, v17, v8);
    (*(v14 + 8))(v4, v13);
    swift_storeEnumTagMultiPayload();
    v24 = *(swift_getTupleTypeMetadata2() + 48);
    v25 = v30;
    (*(*(AssociatedTypeWitness - 8) + 16))(v30, v29, AssociatedTypeWitness);
    v23((v25 + v24), v12, v8);
    v20 = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine.Response();
    swift_storeEnumTagMultiPayload();
    v21 = *(*(v20 - 8) + 56);
    v22 = v25;
  }

  v26 = 0;
  v27 = v20;
  return v21(v22, v26, 1, v27);
}

id sub_1D1D79468@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v32 = a1;
  v33 = a3;
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  sub_1D1E67D1C();
  sub_1D1E685AC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v8 = sub_1D1E67D7C();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine.State();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - v15;
  (*(v13 + 16))(&v30 - v15, v4, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 7)
  {
    goto LABEL_8;
  }

  if (((1 << EnumCaseMultiPayload) & 0xC8) != 0)
  {
LABEL_5:
    v18 = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine.Response();
    return (*(*(v18 - 8) + 56))(v33, 1, 1, v18);
  }

  if (((1 << EnumCaseMultiPayload) & 6) != 0)
  {
    (*(v13 + 8))(v16, v12);
    goto LABEL_5;
  }

  if (((1 << EnumCaseMultiPayload) & 0x30) != 0)
  {
    v20 = *(v4 + *(a2 + 36));
    (*(v13 + 8))(v4, v12);
    v21 = v32;
    *v4 = v32;
    v22 = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine.Response();
    swift_storeEnumTagMultiPayload();
    (*(*(v22 - 8) + 56))(v33, 1, 1, v22);
    v29 = v21;
  }

  else
  {
LABEL_8:
    v23 = v16;
    v24 = *(v31 + 32);
    v24(v11, v23, v8);
    (*(v13 + 8))(v4, v12);
    swift_storeEnumTagMultiPayload();
    v25 = *(swift_getTupleTypeMetadata2() + 48);
    v26 = v33;
    v24(v33, v11, v8);
    v27 = v32;
    *&v26[v25] = v32;
    v28 = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine.Response();
    swift_storeEnumTagMultiPayload();
    (*(*(v28 - 8) + 56))(v26, 0, 1, v28);
    v29 = v27;
  }

  return v29;
}

uint64_t sub_1D1D79860@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  sub_1D1E67D1C();
  sub_1D1E685AC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v7 = sub_1D1E67D7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine.State();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v24 - v15;
  (*(v13 + 16))(&v24 - v15, v3, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 7)
  {
    goto LABEL_9;
  }

  if (((1 << EnumCaseMultiPayload) & 0xB8) == 0)
  {
    if (((1 << EnumCaseMultiPayload) & 6) != 0)
    {
      (*(v13 + 8))(v16, v12);
      goto LABEL_5;
    }

    if (EnumCaseMultiPayload == 6)
    {
      goto LABEL_6;
    }

LABEL_9:
    v25 = a2;
    v20 = v16;
    v21 = *(v8 + 32);
    v21(v11, v20, v7);
    (*(v13 + 8))(v3, v12);
    swift_storeEnumTagMultiPayload();
    v22 = v25;
    v21(v25, v11, v7);
    (*(v8 + 56))(v22, 0, 1, v7);
    v23 = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine.Response();
    swift_storeEnumTagMultiPayload();
    return (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
  }

LABEL_5:
  (*(v13 + 8))(v3, v12);
  swift_storeEnumTagMultiPayload();
LABEL_6:
  v18 = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine.Response();
  return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
}

uint64_t sub_1D1D79BC4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  sub_1D1E67D1C();
  sub_1D1E685AC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v7 = sub_1D1E67D7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine.State();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - v15;
  (*(v13 + 16))(&v21 - v15, v3, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 3) >= 5)
  {
    if ((EnumCaseMultiPayload - 1) >= 2)
    {
      v22 = v8;
      v20 = *(v8 + 32);
      v20(v11, v16, v7);
      (*(v13 + 8))(v3, v12);
      swift_storeEnumTagMultiPayload();
      v20(a2, v11, v7);
      (*(v22 + 56))(a2, 0, 1, v7);
      goto LABEL_5;
    }

    (*(v13 + 8))(v16, v12);
  }

  (*(v13 + 8))(v3, v12);
  swift_storeEnumTagMultiPayload();
LABEL_5:
  v18 = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine.Response();
  swift_storeEnumTagMultiPayload();
  return (*(*(v18 - 8) + 56))(a2, 0, 1, v18);
}

uint64_t sub_1D1D79EDC(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
  }

  else
  {

    return MEMORY[0x1EEE6AEE8](0, a2);
  }
}

uint64_t sub_1D1D79F50(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = *(v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D17C4BFC;

  return sub_1D1D7797C(a1, v7, v8, v1 + v6, v9, v4, v5);
}

uint64_t sub_1D1D7A0AC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D17C4BFC;

  return sub_1D1D764D0(a1, v1);
}

uint64_t sub_1D1D7A148()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1D1D76888();
}

uint64_t sub_1D1D7A15C(uint64_t a1, char a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AsyncBatchedSequenceStorage();
  (*(v6 + 16))(v9, a1, a3);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  sub_1D1D761BC(v9, a2);
  return v13;
}

uint64_t sub_1D1D7A274()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D1D7A2C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = v4;
  sub_1D1E67D1C();
  sub_1D1E685AC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v6 = sub_1D1E67D7C();
  v8 = v7;
  result = swift_getTupleTypeMetadata2();
  if (v10 <= 0x3F)
  {
    if (v5 > 0x3F)
    {
      return AssociatedTypeWitness;
    }

    else if (v8 > 0x3F)
    {
      return v6;
    }

    else
    {
      result = swift_getTupleTypeMetadata2();
      if (v11 <= 0x3F)
      {
        result = sub_1D1E685AC();
        if (v12 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D1D7A42C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = v4;
  sub_1D1E67D1C();
  sub_1D1E685AC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  result = sub_1D1E67D7C();
  if (v7 <= 0x3F)
  {
    if (v5 > 0x3F)
    {
      return AssociatedTypeWitness;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D1D7A51C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D1D7A594(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *sub_1D1D7A708(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t sub_1D1D7A950(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t AsyncNotifySequence.init(name:queue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64EC80, &qword_1D1EAD6C0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  *(&v17 - v11) = 1;
  (*(v9 + 104))(&v17 - v11, *MEMORY[0x1E69E8788], v8);
  v13 = type metadata accessor for AsyncNotifySequence();
  v14 = v13[5];
  sub_1D1E6804C();
  result = (*(v9 + 8))(v12, v8);
  v16 = (a4 + v13[6]);
  *v16 = a1;
  v16[1] = a2;
  *(a4 + v13[7]) = a3;
  return result;
}

uint64_t type metadata accessor for AsyncNotifySequence()
{
  result = qword_1EC64ECA0;
  if (!qword_1EC64ECA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AsyncNotifySequence.makeAsyncIterator()()
{
  v1 = v0;
  v33 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for AsyncNotifySequence();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  out_token = 0;
  v6 = (v0 + *(v5 + 24));
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + *(v5 + 28));
  sub_1D1D7AFDC(v1, &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_1D1D7B040(&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v31 = sub_1D1D7B0A4;
  v32 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1D1D7B114;
  v30 = &block_descriptor_58;
  v12 = _Block_copy(&aBlock);

  v13 = sub_1D1E678CC();
  v14 = notify_register_dispatch((v13 + 32), &out_token, v9, v12);

  _Block_release(v12);
  if (v14)
  {
    v15 = *(v2 + 20);
    aBlock = 0;
    v28 = 0xE000000000000000;
    sub_1D1E6884C();
    MEMORY[0x1D3890F70](0xD00000000000002BLL, 0x80000001D1EC90B0);
    MEMORY[0x1D3890F70](v7, v8);
    MEMORY[0x1D3890F70](0x746C757365722027, 0xE90000000000003DLL);
    v25 = v14;
    v16 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v16);

    v17 = aBlock;
    v18 = v28;
    sub_1D1D7B180();
    v19 = swift_allocError();
    *v20 = v17;
    v20[1] = v18;
    aBlock = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64EC90, &qword_1D1EAD6D0);
    sub_1D1E680AC();
  }

  v21 = *(v2 + 20);
  v22 = out_token;
  *(swift_allocObject() + 16) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64EC90, &qword_1D1EAD6D0);
  sub_1D1E6807C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64EC88, &qword_1D1EAD6C8);
  result = sub_1D1E67EFC();
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1D7AEE0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC64ECD0, &qword_1D1EAD7B8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - v3;
  v5 = *(type metadata accessor for AsyncNotifySequence() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64EC90, &qword_1D1EAD6D0);
  sub_1D1E6809C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1D1D7AFDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncNotifySequence();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1D7B040(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncNotifySequence();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1D7B0A4()
{
  v0 = *(*(type metadata accessor for AsyncNotifySequence() - 8) + 80);

  return sub_1D1D7AEE0();
}

uint64_t sub_1D1D7B114(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t block_copy_helper_58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D1D7B180()
{
  result = qword_1EC64EC98;
  if (!qword_1EC64EC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64EC98);
  }

  return result;
}

uint64_t sub_1D1D7B1F8()
{
  AsyncNotifySequence.makeAsyncIterator()();

  return sub_1D1D7B468(v0);
}

void sub_1D1D7B24C()
{
  sub_1D1D7B328(319, &qword_1EC64ECB0, MEMORY[0x1E69E87C8]);
  if (v0 <= 0x3F)
  {
    sub_1D1D7B328(319, &qword_1EC64ECB8, MEMORY[0x1E69E87A0]);
    if (v1 <= 0x3F)
    {
      sub_1D1D7B3A8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D1D7B328(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v7 = a3(a1, MEMORY[0x1E69E7CA8] + 8, v6, MEMORY[0x1E69E7288]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D1D7B3A8()
{
  result = qword_1EC642608;
  if (!qword_1EC642608)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC642608);
  }

  return result;
}

unint64_t sub_1D1D7B404()
{
  result = qword_1EC64ECC0;
  if (!qword_1EC64ECC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64ECC8, &qword_1D1EAD7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64ECC0);
  }

  return result;
}

uint64_t sub_1D1D7B468(uint64_t a1)
{
  v2 = type metadata accessor for AsyncNotifySequence();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1D7B4C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(type metadata accessor for AsyncPrependSequence() + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v13 = *(v10 + 56);
  v13(a4 + v8, 1, 1, AssociatedTypeWitness);
  (*(*(a3 - 8) + 32))(a4, a1, a3);
  v11 = sub_1D1E685AC();
  (*(*(v11 - 8) + 8))(a4 + v8, v11);
  (*(v10 + 32))(a4 + v8, a2, AssociatedTypeWitness);

  return (v13)(a4 + v8, 0, 1, AssociatedTypeWitness);
}

uint64_t AsyncPrependSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v23 = a2;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v7 = sub_1D1E685AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v22 - v11;
  v13 = *(v6 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v20 = &v22 - v19;
  (*(v13 + 16))(v16, v3, v6);
  sub_1D1E6801C();
  (*(v8 + 16))(v12, v3 + *(a1 + 36), v7);
  return sub_1D1D7B874(v20, v12, 0, v23);
}

uint64_t sub_1D1D7B874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a4, a1, AssociatedTypeWitness);
  v9 = type metadata accessor for AsyncPrependSequence.Iterator();
  v10 = *(v9 + 36);
  swift_getAssociatedTypeWitness();
  v11 = sub_1D1E685AC();
  result = (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  *(a4 + *(v9 + 40)) = a3;
  return result;
}

uint64_t sub_1D1D7B994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AsyncPrependSequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t AsyncPrependSequence.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1D7BA18, 0, 0);
}

uint64_t sub_1D1D7BA18()
{
  v1 = v0[3];
  if (*(v0[4] + *(v1 + 40)))
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v6 = *(MEMORY[0x1E69E85A8] + 4);
    v7 = swift_task_alloc();
    v0[5] = v7;
    *v7 = v0;
    v7[1] = sub_1D17D0834;
    v8 = v0[4];
    v9 = v0[2];

    return MEMORY[0x1EEE6D8C8](v9, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    sub_1D1D7BB60(v1, v0[2]);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1D1D7BB60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1D1E685AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  v13 = *(a1 + 36);
  (*(v9 + 16))(&v17 - v11, v2 + v13, v8);
  v14 = *(AssociatedTypeWitness - 8);
  if ((*(v14 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v9 + 8))(v12, v8);
    return (*(v14 + 56))(a2, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    (*(v14 + 32))(a2, v12, AssociatedTypeWitness);
    (*(v9 + 8))(v2 + v13, v8);
    v16 = *(v14 + 56);
    v16(v2 + v13, 1, 1, AssociatedTypeWitness);
    *(v2 + *(a1 + 40)) = 1;
    return (v16)(a2, 0, 1, AssociatedTypeWitness);
  }
}

uint64_t sub_1D1D7BD70(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4BFC;

  return AsyncPrependSequence.Iterator.next()(a1, a2);
}

uint64_t AsyncSequence.prepend(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return sub_1D1D7B4C4(v3, v10, a2, a3);
}

uint64_t sub_1D1D7BF30(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    swift_getAssociatedTypeWitness();
    v3 = sub_1D1E685AC();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1D1D7BFE4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v9 + 80);
  if (v10)
  {
    v14 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v14 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v6 + 64) + v13;
  if (a2 <= v12)
  {
    goto LABEL_34;
  }

  v16 = v14 + (v15 & ~v13);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v19 < 2)
    {
LABEL_33:
      if (v12)
      {
LABEL_34:
        if (v7 >= v11)
        {
          v25 = *(v6 + 48);

          return v25(a1, v7, v5);
        }

        else
        {
          v23 = (*(v9 + 48))((a1 + v15) & ~v13);
          if (v23 >= 2)
          {
            return v23 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_33;
  }

LABEL_20:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v12 + (v22 | v20) + 1;
}

void sub_1D1D7C258(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v30 = v8;
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = *(v11 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v11 + 80);
  v16 = *(v8 + 64) + v15;
  if (v12)
  {
    v17 = *(v11 + 64);
  }

  else
  {
    v17 = *(v11 + 64) + 1;
  }

  v18 = (v16 & ~v15) + v17;
  if (a3 <= v14)
  {
    goto LABEL_20;
  }

  if (v18 <= 3)
  {
    v19 = ((a3 - v14 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v19))
    {
      v10 = 4;
      if (v14 >= a2)
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    if (v19 >= 2)
    {
      v10 = v20;
    }

    else
    {
      v10 = 0;
    }

LABEL_20:
    if (v14 >= a2)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  v10 = 1;
  if (v14 >= a2)
  {
LABEL_30:
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        *&a1[v18] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_37;
      }

      *&a1[v18] = 0;
    }

    else if (v10)
    {
      a1[v18] = 0;
      if (!a2)
      {
        return;
      }

LABEL_37:
      if (v9 >= v13)
      {
        v28 = *(v30 + 56);

        v28(a1, a2, v9, v7);
      }

      else
      {
        v24 = (&a1[v16] & ~v15);
        if (v13 >= a2)
        {
          v29 = *(v11 + 56);

          v29(v24, (a2 + 1));
        }

        else
        {
          if (v17 <= 3)
          {
            v25 = ~(-1 << (8 * v17));
          }

          else
          {
            v25 = -1;
          }

          if (v17)
          {
            v26 = v25 & (~v13 + a2);
            if (v17 <= 3)
            {
              v27 = v17;
            }

            else
            {
              v27 = 4;
            }

            bzero(v24, v17);
            if (v27 > 2)
            {
              if (v27 == 3)
              {
                *v24 = v26;
                v24[2] = BYTE2(v26);
              }

              else
              {
                *v24 = v26;
              }
            }

            else if (v27 == 1)
            {
              *v24 = v26;
            }

            else
            {
              *v24 = v26;
            }
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

LABEL_21:
  v21 = ~v14 + a2;
  if (v18 >= 4)
  {
    bzero(a1, (v16 & ~v15) + v17);
    *a1 = v21;
    v22 = 1;
    if (v10 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v22 = (v21 >> (8 * v18)) + 1;
  if (!v18)
  {
LABEL_58:
    if (v10 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v23 = v21 & ~(-1 << (8 * v18));
  bzero(a1, v18);
  if (v18 == 3)
  {
    *a1 = v23;
    a1[2] = BYTE2(v23);
    goto LABEL_58;
  }

  if (v18 == 2)
  {
    *a1 = v23;
    if (v10 > 1)
    {
LABEL_62:
      if (v10 == 2)
      {
        *&a1[v18] = v22;
      }

      else
      {
        *&a1[v18] = v22;
      }

      return;
    }
  }

  else
  {
    *a1 = v21;
    if (v10 > 1)
    {
      goto LABEL_62;
    }
  }

LABEL_59:
  if (v10)
  {
    a1[v18] = v22;
  }
}

uint64_t sub_1D1D7C610(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = sub_1D1E685AC();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D1D7C6E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  if (v15 <= 0xFE)
  {
    v15 = 254;
  }

  v16 = *(v11 + 80);
  v17 = *(*(v10 - 8) + 64);
  if (!v13)
  {
    ++v17;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(v8 + 64) + v16;
  if (a2 > v15)
  {
    v19 = v17 + (v18 & ~v16) + 1;
    v20 = 8 * v19;
    if (v19 > 3)
    {
      goto LABEL_14;
    }

    v22 = ((a2 - v15 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v22))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v22 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v22 >= 2)
    {
LABEL_14:
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_34;
      }

LABEL_21:
      v23 = (v21 - 1) << v20;
      if (v19 > 3)
      {
        v23 = 0;
      }

      if (v19)
      {
        if (v19 <= 3)
        {
          v24 = v19;
        }

        else
        {
          v24 = 4;
        }

        if (v24 > 2)
        {
          if (v24 == 3)
          {
            v25 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v25 = *a1;
          }
        }

        else if (v24 == 1)
        {
          v25 = *a1;
        }

        else
        {
          v25 = *a1;
        }
      }

      else
      {
        v25 = 0;
      }

      v31 = v15 + (v25 | v23);
      return (v31 + 1);
    }
  }

LABEL_34:
  if (v9 != v15)
  {
    v28 = (a1 + v18) & ~v16;
    if (v14 == v15)
    {
      if (v13 >= 2)
      {
        v29 = (*(v12 + 48))(v28);
        if (v29 >= 2)
        {
          return v29 - 1;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }

    v30 = *(v28 + v17);
    if (v30 < 2)
    {
      return 0;
    }

    v31 = (v30 + 2147483646) & 0x7FFFFFFF;
    return (v31 + 1);
  }

  v26 = *(v8 + 48);

  return v26(a1, v9, AssociatedTypeWitness);
}