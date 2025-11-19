uint64_t sub_1D1B45600(uint64_t a1)
{
  result = sub_1D1B45658(&qword_1EC64B2C8, type metadata accessor for SecuritySystemStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B45658(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1B456A0(uint64_t a1)
{
  result = sub_1D1B45658(&qword_1EC64B2D0, type metadata accessor for DoorLockStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B456F8(uint64_t a1)
{
  result = sub_1D1B45658(&qword_1EC64B2D8, type metadata accessor for DoorLockStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B45750(uint64_t a1)
{
  result = sub_1D1B45658(&qword_1EC64B2E0, type metadata accessor for GarageDoorStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B457A8(uint64_t a1)
{
  result = sub_1D1B45658(&qword_1EC64B2E8, type metadata accessor for GarageDoorStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B45800(uint64_t a1)
{
  result = sub_1D1B45658(&qword_1EC64B2F0, type metadata accessor for DoorStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B45858(uint64_t a1)
{
  result = sub_1D1B45658(&qword_1EC64B2F8, type metadata accessor for DoorStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B458B0(uint64_t a1)
{
  result = sub_1D1B45658(&qword_1EC64B300, type metadata accessor for WindowStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B45908(uint64_t a1)
{
  result = sub_1D1B45658(&qword_1EC64B308, type metadata accessor for WindowStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B45960(uint64_t a1)
{
  result = sub_1D1B45658(&qword_1EC64B310, type metadata accessor for SmokeAlarmStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B459B8(uint64_t a1)
{
  result = sub_1D1B45658(&qword_1EC64B318, type metadata accessor for SmokeAlarmStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B45A10(uint64_t a1)
{
  result = sub_1D1B45658(&qword_1EC64B320, type metadata accessor for CarbonDioxideAlarmStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B45A68(uint64_t a1)
{
  result = sub_1D1B45658(&qword_1EC64B328, type metadata accessor for CarbonDioxideAlarmStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B45AC0(uint64_t a1)
{
  result = sub_1D1B45658(&qword_1EC64B330, type metadata accessor for CarbonMonoxideAlarmStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B45B18(uint64_t a1)
{
  result = sub_1D1B45658(&qword_1EC64B338, type metadata accessor for CarbonMonoxideAlarmStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B45B70(uint64_t a1)
{
  result = sub_1D1B45658(&qword_1EC64B340, type metadata accessor for ContactSensorStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B45BC8(uint64_t a1)
{
  result = sub_1D1B45658(&qword_1EC64B348, type metadata accessor for ContactSensorStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B45C20(uint64_t a1)
{
  result = sub_1D1B45658(&qword_1EC64B350, type metadata accessor for MotionSensorStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B45C78(uint64_t a1)
{
  result = sub_1D1B45658(&qword_1EC64B358, type metadata accessor for MotionSensorStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B45CD0(uint64_t a1)
{
  result = sub_1D1B45658(&qword_1EC64B360, type metadata accessor for OccupancySensorStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B45D28(uint64_t a1)
{
  result = sub_1D1B45658(&qword_1EC64B368, type metadata accessor for OccupancySensorStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B45D80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B45DF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B45E58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D1B45EB8()
{
  result = qword_1EC64B388;
  if (!qword_1EC64B388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B380, &qword_1D1E9A218);
    sub_1D1B45F44();
    sub_1D1B45FF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B388);
  }

  return result;
}

unint64_t sub_1D1B45F44()
{
  result = qword_1EC64B390;
  if (!qword_1EC64B390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B378, &qword_1D1E9A1F0);
    sub_1D17D8EA8(&qword_1EC64AFA0, &qword_1EC64AF60, &unk_1D1E9A850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B390);
  }

  return result;
}

unint64_t sub_1D1B45FF4()
{
  result = qword_1EC64B398;
  if (!qword_1EC64B398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B370, &unk_1D1E9A1E0);
    sub_1D18F1978();
    sub_1D18F1780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B398);
  }

  return result;
}

uint64_t sub_1D1B4608C@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v69 = a4;
  v75 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B370, &unk_1D1E9A1E0);
  v9 = *(v8 - 8);
  v71 = v8;
  v72 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v67 = v52 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B378, &qword_1D1E9A1F0);
  v70 = *(v68 - 8);
  v12 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v62 = v52 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B380, &qword_1D1E9A218);
  v15 = *(v14 - 8);
  v73 = v14;
  v74 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v65 = v52 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF60, &unk_1D1E9A850);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v52 - v21;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF68, &unk_1D1E99350);
  v59 = *(v58 - 8);
  v23 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v25 = v52 - v24;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF70, &unk_1D1E9A860);
  v57 = *(v56 - 8);
  v26 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v28 = v52 - v27;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF80, &unk_1D1E9A890);
  v66 = *(v64 - 8);
  v29 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v76 = v52 - v30;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B3B0, &qword_1D1E9A220);
  v63 = *(v61 - 8);
  v31 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v60 = v52 - v32;
  v54 = *a1;
  v79 = a2;
  sub_1D1E664BC();
  v78 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  sub_1D1E664BC();
  sub_1D17D8EA8(&qword_1EC64AF78, &qword_1EC64AF60, &unk_1D1E9A850);
  sub_1D1E664CC();
  swift_getKeyPath();
  sub_1D1E6645C();

  v33 = *(v19 + 8);
  v52[1] = v19 + 8;
  v53 = v33;
  v33(v22, v18);
  v55 = MEMORY[0x1E6968D20];
  sub_1D17D8EA8(&qword_1EC64AFA8, &qword_1EC64AF70, &unk_1D1E9A860);
  v52[0] = MEMORY[0x1E6968D58];
  sub_1D17D8EA8(&qword_1EC64AFB0, &qword_1EC64AF68, &unk_1D1E99350);
  sub_1D17D8EA8(&qword_1EC64AFB8, &qword_1EC6438F0, &qword_1D1E99360);
  sub_1D174A5FC(&qword_1EE07D170);
  v34 = v28;
  v35 = v25;
  v36 = v56;
  v37 = v58;
  sub_1D1E6647C();
  (*(v59 + 8))(v35, v37);
  (*(v57 + 8))(v34, v36);
  sub_1D1E664CC();
  swift_getKeyPath();
  v38 = v62;
  sub_1D1E6645C();

  v53(v22, v18);
  v77 = v69;
  v39 = v67;
  sub_1D1E664BC();
  sub_1D17D8EA8(&qword_1EC64B3A0, &qword_1EC64B378, &qword_1D1E9A1F0);
  sub_1D17D8EA8(&qword_1EC64B3A8, &qword_1EC64B370, &unk_1D1E9A1E0);
  sub_1D18DF248();
  v40 = v65;
  v41 = v39;
  v42 = v68;
  v43 = v71;
  sub_1D1E6644C();
  (*(v72 + 8))(v41, v43);
  (*(v70 + 8))(v38, v42);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B3B8, qword_1D1E9A268);
  v45 = v75;
  v75[3] = v44;
  v45[4] = sub_1D1B469CC();
  __swift_allocate_boxed_opaque_existential_1(v45);
  sub_1D17D8EA8(&qword_1EC64B3D0, &qword_1EC64B3B0, &qword_1D1E9A220);
  sub_1D17D8EA8(&qword_1EC64B3D8, &qword_1EC64AF80, &unk_1D1E9A890);
  sub_1D17D8EA8(qword_1EC64B3E0, &qword_1EC64B380, &qword_1D1E9A218);
  v47 = v60;
  v46 = v61;
  v48 = v76;
  v49 = v64;
  v50 = v73;
  sub_1D1E664AC();
  (*(v74 + 8))(v40, v50);
  (*(v66 + 8))(v48, v49);
  return (*(v63 + 8))(v47, v46);
}

unint64_t sub_1D1B469CC()
{
  result = qword_1EC64B3C0;
  if (!qword_1EC64B3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B3B8, qword_1D1E9A268);
    sub_1D1B46A6C();
    sub_1D1B39320();
    sub_1D1B45EB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B3C0);
  }

  return result;
}

unint64_t sub_1D1B46A6C()
{
  result = qword_1EC64B3C8;
  if (!qword_1EC64B3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B3B0, &qword_1D1E9A220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B3C8);
  }

  return result;
}

uint64_t sub_1D1B46B28(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_1D1E685AC();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D1B46B98(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_1D1B46D18(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
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
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t sub_1D1B46F5C(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    v2 = *(*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL);
    result = swift_checkMetadataState();
    if (v4 > 0x3F)
    {
      return result;
    }

LABEL_13:
    v20[7] = 0;
    v21 = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  MEMORY[0x1EEE9AC00](a1);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v5)
  {
    v8 = 0;
    v9 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (v5 < 4)
    {
      goto LABEL_10;
    }

    if (&v7[-v9] < 0x20)
    {
      goto LABEL_10;
    }

    v8 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = (v9 + 16);
    v11 = v7 + 16;
    v12 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v13 = *v10;
      *(v11 - 1) = *(v10 - 1);
      *v11 = v13;
      v10 += 2;
      v11 += 2;
      v12 -= 4;
    }

    while (v12);
    if (v5 != v8)
    {
LABEL_10:
      v14 = v5 - v8;
      v15 = 8 * v8;
      v16 = &v7[8 * v8];
      v17 = (v9 + v15);
      do
      {
        v18 = *v17++;
        *v16++ = v18;
        --v14;
      }

      while (v14);
    }
  }

  result = swift_getTupleTypeMetadata();
  if (v19 <= 0x3F)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1D1B470E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1D1E685AC();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = sub_1D1E685AC();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D1B4716C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = v10;
  }

  if (v5)
  {
    v12 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v12 = *(*(*(a3 + 16) - 8) + 64) + 1;
  }

  v13 = *(v8 + 80);
  if (v9)
  {
    v14 = *(*(v7 - 8) + 64);
  }

  else
  {
    v14 = *(*(v7 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v12 + v13;
  v16 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_40:
    if (v6 >= v10)
    {
      v24 = (*(v4 + 48))();
    }

    else
    {
      v24 = (*(v8 + 48))((a1 + v15) & ~v13, v9, v7);
    }

    if (v24 >= 2)
    {
      return v24 - 1;
    }

    else
    {
      return 0;
    }
  }

  v17 = v14 + (v15 & ~v13);
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v20 = ((v16 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v20))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v20 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v20 < 2)
    {
LABEL_39:
      if (v11)
      {
        goto LABEL_40;
      }

      return 0;
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_39;
  }

LABEL_26:
  v21 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v21 = 0;
  }

  if (v17)
  {
    if (v17 <= 3)
    {
      v22 = v17;
    }

    else
    {
      v22 = 4;
    }

    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v23 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v23 = *a1;
      }
    }

    else if (v22 == 1)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }
  }

  else
  {
    v23 = 0;
  }

  return v11 + (v23 | v21) + 1;
}

void sub_1D1B47394(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a4 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(*(*(a4 + 16) - 8) + 64);
  v14 = *(v11 + 80);
  v15 = *(v11 + 64);
  v16 = v12 - 1;
  if (!v12)
  {
    v16 = 0;
  }

  if (v16 <= v9)
  {
    v17 = v9;
  }

  else
  {
    v17 = v16;
  }

  if (!v8)
  {
    ++v13;
  }

  if (!v12)
  {
    ++v15;
  }

  v18 = ((v13 + v14) & ~v14) + v15;
  v19 = a3 >= v17;
  v20 = a3 - v17;
  if (v20 == 0 || !v19)
  {
LABEL_28:
    if (v17 < a2)
    {
      goto LABEL_29;
    }

    goto LABEL_17;
  }

  if (v18 > 3)
  {
    v6 = 1;
    if (v17 < a2)
    {
      goto LABEL_29;
    }

    goto LABEL_17;
  }

  v21 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
  if (!HIWORD(v21))
  {
    if (v21 < 0x100)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2;
    }

    if (v21 >= 2)
    {
      v6 = v22;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_28;
  }

  v6 = 4;
  if (v17 < a2)
  {
LABEL_29:
    v23 = ~v17 + a2;
    if (v18 >= 4)
    {
      bzero(a1, v18);
      *a1 = v23;
      v24 = 1;
      if (v6 > 1)
      {
        goto LABEL_31;
      }

      goto LABEL_77;
    }

    v24 = (v23 >> (8 * v18)) + 1;
    if (v18)
    {
      v28 = v23 & ~(-1 << (8 * v18));
      bzero(a1, v18);
      if (v18 != 3)
      {
        if (v18 == 2)
        {
          *a1 = v28;
          if (v6 > 1)
          {
            goto LABEL_31;
          }
        }

        else
        {
          *a1 = v23;
          if (v6 > 1)
          {
LABEL_31:
            if (v6 == 2)
            {
              *&a1[v18] = v24;
            }

            else
            {
              *&a1[v18] = v24;
            }

            return;
          }
        }

LABEL_77:
        if (v6)
        {
          a1[v18] = v24;
        }

        return;
      }

      *a1 = v28;
      a1[2] = BYTE2(v28);
    }

    if (v6 > 1)
    {
      goto LABEL_31;
    }

    goto LABEL_77;
  }

LABEL_17:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *&a1[v18] = 0;
  }

  else if (v6)
  {
    a1[v18] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v9 >= v16)
  {
    if (v9 >= a2)
    {
      v32 = *(v7 + 56);
      v33 = a2 + 1;

      v32(a1, v33);
    }

    else
    {
      if (v13 <= 3)
      {
        v29 = ~(-1 << (8 * v13));
      }

      else
      {
        v29 = -1;
      }

      if (v13)
      {
        v26 = v29 & (~v9 + a2);
        if (v13 <= 3)
        {
          v27 = v13;
        }

        else
        {
          v27 = 4;
        }

        bzero(a1, v13);
        if (v27 <= 2)
        {
          if (v27 != 1)
          {
            goto LABEL_47;
          }

          goto LABEL_63;
        }

LABEL_82:
        if (v27 == 3)
        {
          *a1 = v26;
          a1[2] = BYTE2(v26);
        }

        else
        {
          *a1 = v26;
        }
      }
    }
  }

  else
  {
    a1 = (&a1[v13 + v14] & ~v14);
    if (v16 >= a2)
    {
      v30 = *(v11 + 56);
      v31 = a2 + 1;

      v30(a1, v31, v12, v10);
    }

    else
    {
      if (v15 <= 3)
      {
        v25 = ~(-1 << (8 * v15));
      }

      else
      {
        v25 = -1;
      }

      if (v15)
      {
        v26 = v25 & (~v16 + a2);
        if (v15 <= 3)
        {
          v27 = v15;
        }

        else
        {
          v27 = 4;
        }

        bzero(a1, v15);
        if (v27 <= 2)
        {
          if (v27 != 1)
          {
LABEL_47:
            *a1 = v26;
            return;
          }

LABEL_63:
          *a1 = v26;
          return;
        }

        goto LABEL_82;
      }
    }
  }
}

uint64_t sub_1D1B47774(uint64_t TupleTypeMetadata)
{
  v1 = TupleTypeMetadata;
  v2 = *(TupleTypeMetadata + 16);
  if (v2 == 1)
  {
    v3 = *(*(TupleTypeMetadata + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v2)
    {
      v6 = 0;
      v7 = *(v1 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v2 < 4)
      {
        goto LABEL_9;
      }

      if (&v5[-v7] < 0x20)
      {
        goto LABEL_9;
      }

      v6 = v2 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = (v7 + 16);
      v9 = v5 + 16;
      v10 = v2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v11 = *v8;
        *(v9 - 1) = *(v8 - 1);
        *v9 = v11;
        v8 += 2;
        v9 += 2;
        v10 -= 4;
      }

      while (v10);
      if (v2 != v6)
      {
LABEL_9:
        v12 = v2 - v6;
        v13 = 8 * v6;
        v14 = &v5[8 * v6];
        v15 = (v7 + v13);
        do
        {
          v16 = *v15++;
          *v14 = v16;
          v14 += 8;
          --v12;
        }

        while (v12);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = TupleTypeMetadata;
  }

  v17 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v48 = v19;
  v20 = *(v19 + 16);
  v51 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v20();
  v49 = v3;
  if (!v2)
  {
    v25 = MEMORY[0x1E69E7CC0];
LABEL_32:
    (*(v48 + 8))(v51, v49);
    return v25;
  }

  v22 = (*(v1 + 24) & 0xFFFFFFFFFFFFFFFELL);
  v23 = (*(v1 + 32) & 0xFFFFFFFFFFFFFFFELL);
  v24 = (v3 + 32);
  v25 = MEMORY[0x1E69E7CC0];
  v26 = v2;
  v50 = v2;
  while (1)
  {
    if (v2 != 1)
    {
      v27 = *v24;
    }

    v28 = *v22;
    v29 = *v23;
    v30 = *(*v22 - 8);
    v31 = *(v30 + 64);
    MEMORY[0x1EEE9AC00](result);
    v33 = &v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v30 + 16))(v33, &v51[v34], v28);
    v35 = (*(v29 + 8))(v28, v29);
    result = (*(v30 + 8))(v33, v28);
    v36 = *(v35 + 16);
    v37 = v25[2];
    v38 = v37 + v36;
    if (__OFADD__(v37, v36))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v38 <= v25[3] >> 1)
    {
      if (*(v35 + 16))
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v37 <= v38)
      {
        v40 = v37 + v36;
      }

      else
      {
        v40 = v37;
      }

      v25 = sub_1D177F6AC(isUniquelyReferenced_nonNull_native, v40, 1, v25);
      if (*(v35 + 16))
      {
LABEL_27:
        v41 = (v25[3] >> 1) - v25[2];
        result = type metadata accessor for AnyStatusItem();
        v42 = *(result - 8);
        if (v41 < v36)
        {
          goto LABEL_35;
        }

        v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v44 = *(v42 + 72);
        swift_arrayInitWithCopy();

        if (v36)
        {
          v45 = v25[2];
          v46 = __OFADD__(v45, v36);
          v47 = v45 + v36;
          if (v46)
          {
            goto LABEL_36;
          }

          v25[2] = v47;
        }

        goto LABEL_15;
      }
    }

    if (v36)
    {
      goto LABEL_34;
    }

LABEL_15:
    v24 += 4;
    ++v23;
    ++v22;
    --v26;
    v2 = v50;
    if (!v26)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1D1B47B7C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v13 = v3;
  v14 = v2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v15 = v4;
  v16 = v5;
  sub_1D1E685AC();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B568, &qword_1D1E9A338);
  sub_1D1D9CE78(sub_1D1B47F00, v12, MEMORY[0x1E69E73E0], v6, v7, &v18);
  result = v18;
  if (!v18)
  {
    v9 = *(a1 + 52);
    MEMORY[0x1EEE9AC00](0);
    v11[2] = v3;
    v11[3] = v2;
    v11[4] = v4;
    v11[5] = v5;
    sub_1D1E685AC();
    sub_1D1D9CE78(sub_1D1B47F58, v11, MEMORY[0x1E69E73E0], v6, v10, &v17);
    if (v17)
    {
      return v17;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1D1B47CD0(uint64_t a1)
{
  v4[1] = *(a1 + 16);
  sub_1D1E685AC();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B568, &qword_1D1E9A338);
  sub_1D1D9CE78(sub_1D1B47FB0, v4, MEMORY[0x1E69E73E0], v1, v2, &v5);
  if (v5)
  {
    return v5;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

void sub_1D1B47D78(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643110, &qword_1D1E71E20);
  v12 = *(type metadata accessor for AnyStatusItem() - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D1E739C0;
  (*(v8 + 16))(v11, a1, a2);
  sub_1D1B3357C(v11, a2, a3, v15 + v14);
  *a4 = v15;
}

uint64_t sub_1D1B47F00@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*(v1 + 32) + 8))(*(v1 + 16));
  *a1 = result;
  return result;
}

uint64_t sub_1D1B47F58@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*(v1 + 40) + 8))(*(v1 + 24));
  *a1 = result;
  return result;
}

uint64_t StatusItem.id.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for IconTextValueStringDataHolder();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 24))(a1, a2);
  v10 = sub_1D1E66A7C();
  (*(*(v10 - 8) + 16))(a3, v9, v10);
  return sub_1D1831068(v9);
}

uint64_t StatusItem.label.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconTextValueStringDataHolder();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 24))(a1, a2);
  v9 = &v8[*(v5 + 32)];
  v10 = *v9;
  v11 = *(v9 + 1);

  sub_1D1831068(v8);
  return v10;
}

uint64_t StatusItem.valueString.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconTextValueStringDataHolder();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 24))(a1, a2);
  v9 = &v8[*(v5 + 36)];
  v10 = *v9;
  v11 = *(v9 + 1);

  sub_1D1831068(v8);
  return v10;
}

uint64_t StatusItem.location.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D1E66A7C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1D1B482F4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + *(a1(0) + 24));
  if (v4 <= 3)
  {
    if (!v4)
    {
      v5 = sub_1D1E6735C();
      goto LABEL_14;
    }

    if (v4 != 2)
    {
      if (v4 == 3)
      {
        v5 = sub_1D1E673CC();
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v4 == 4)
  {
    v5 = sub_1D1E6738C();
    goto LABEL_14;
  }

  if (v4 != 6)
  {
    if (v4 != 7)
    {
LABEL_12:
      v5 = sub_1D1E673AC();
      goto LABEL_14;
    }

LABEL_9:
    v5 = sub_1D1E673FC();
    goto LABEL_14;
  }

  v5 = sub_1D1E6734C();
LABEL_14:
  *a2 = v5;
  a2[1] = v5;
}

uint64_t sub_1D1B483A0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + *(a1(0) + 28));
  if (v4 <= 3)
  {
    if (!v4)
    {
      v5 = sub_1D1E6735C();
      goto LABEL_14;
    }

    if (v4 != 2)
    {
      if (v4 == 3)
      {
        v5 = sub_1D1E673CC();
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v4 == 4)
  {
    v5 = sub_1D1E6738C();
    goto LABEL_14;
  }

  if (v4 != 6)
  {
    if (v4 != 7)
    {
LABEL_12:
      v5 = sub_1D1E673AC();
      goto LABEL_14;
    }

LABEL_9:
    v5 = sub_1D1E673FC();
    goto LABEL_14;
  }

  v5 = sub_1D1E6734C();
LABEL_14:
  *a2 = v5;
  a2[1] = v5;
}

uint64_t StatusItem.color.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 48);
  v6((&v9 + 1));
  if (BYTE1(v9) == 7)
  {
    goto LABEL_2;
  }

  (v6)(&v9, a1, a2);
  if (v9 <= 2u)
  {
    if (v9)
    {
      if (v9 == 2)
      {
LABEL_2:
        v7 = sub_1D1E673FC();
        goto LABEL_3;
      }

LABEL_13:
      v7 = sub_1D1E673AC();
      goto LABEL_3;
    }

    v7 = sub_1D1E6735C();
  }

  else
  {
    switch(v9)
    {
      case 3u:
        v7 = sub_1D1E673CC();
        break;
      case 4u:
        v7 = sub_1D1E6738C();
        break;
      case 6u:
        v7 = sub_1D1E6734C();
        break;
      default:
        goto LABEL_13;
    }
  }

LABEL_3:
  *a3 = v7;
  a3[1] = v7;
}

unint64_t sub_1D1B48A84()
{
  result = qword_1EC64B570;
  if (!qword_1EC64B570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B570);
  }

  return result;
}

unint64_t sub_1D1B48AD8()
{
  result = qword_1EC64B578;
  if (!qword_1EC64B578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B578);
  }

  return result;
}

void sub_1D1B48C00()
{
  sub_1D1B48CFC();
  if (v0 <= 0x3F)
  {
    sub_1D1B48D70(319, &qword_1EC64B598, type metadata accessor for StaticService);
    if (v1 <= 0x3F)
    {
      sub_1D1B48D70(319, &qword_1EC64B5A0, type metadata accessor for StaticEndpoint);
      if (v2 <= 0x3F)
      {
        sub_1D1B48D70(319, &qword_1EC64B5A8, type metadata accessor for StaticAccessory);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1D1B48CFC()
{
  if (!qword_1EC64B590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC643298, &qword_1D1E716F0);
    v0 = sub_1D1E66C7C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC64B590);
    }
  }
}

void sub_1D1B48D70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1E66C7C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D1B48E3C()
{
  v0 = sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1D1B48EEC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D1E66A7C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1D1B48FE0(uint64_t a1)
{
  if (*(v1 + *(a1 + 28)))
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

void *Status.sortedErasedStatusItems.getter(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 8))();

  sub_1D1B491A0(&v3);

  return v3;
}

void *sub_1D1B49074()
{
  v1 = MEMORY[0x1E69E7CC0];
  sub_1D1B491A0(&v1);
  return v1;
}

BOOL sub_1D1B490CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyStatusItem();
  v5 = *(v4 + 28);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 != v7)
  {
    return v6 < v7;
  }

  v8 = *(v4 + 32);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 != v10)
  {
    return v9 < v10;
  }

  v11 = *(type metadata accessor for IconTextValueStringDataHolder() + 24);
  v16 = *(a1 + v11);
  v17 = *(a1 + v11 + 8);
  v12 = (a2 + v11);
  v14 = *v12;
  v15 = v12[1];
  sub_1D17D8EF0();
  return sub_1D1E685FC() == -1;
}

uint64_t sub_1D1B491A0(void **a1)
{
  v2 = *(type metadata accessor for AnyStatusItem() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D1E0C0D0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D1B49248(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1D1B49248(uint64_t *a1)
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
        type metadata accessor for AnyStatusItem();
        v6 = sub_1D1E67C8C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for AnyStatusItem() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D1B495EC(v8, v9, a1, v4);
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
    return sub_1D1B49374(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D1B49374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for AnyStatusItem();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v39 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v19 = &v39 - v18;
  v41 = a2;
  if (a3 != a2)
  {
    v20 = *(v17 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v50 = *a4;
    v40 = v20;
    v24 = v50 + v20 * a3;
LABEL_5:
    v44 = v21;
    v45 = a3;
    v42 = v24;
    v43 = v23;
    v25 = v21;
    while (1)
    {
      sub_1D1B4A628(v24, v19);
      sub_1D1B4A628(v25, v15);
      v26 = *(v8 + 28);
      v27 = v19[v26];
      v28 = v15[v26];
      if (v27 == v28)
      {
        v29 = *(v8 + 32);
        v30 = *&v19[v29];
        v31 = *&v15[v29];
        if (v30 == v31)
        {
          v32 = *(type metadata accessor for IconTextValueStringDataHolder() + 24);
          v33 = *&v19[v32 + 8];
          v48 = *&v19[v32];
          v49 = v33;
          v34 = &v15[v32];
          v36 = *v34;
          v35 = *(v34 + 1);
          v46 = v36;
          v47 = v35;
          sub_1D17D8EF0();
          v37 = sub_1D1E685FC() == -1;
        }

        else
        {
          v37 = v30 < v31;
        }
      }

      else
      {
        v37 = v27 < v28;
      }

      sub_1D1B4A68C(v15);
      result = sub_1D1B4A68C(v19);
      if (!v37)
      {
LABEL_4:
        a3 = v45 + 1;
        v21 = v44 + v40;
        v23 = v43 - 1;
        v24 = v42 + v40;
        if (v45 + 1 == v41)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      sub_1D1B4A6E8(v24, v12);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D1B4A6E8(v12, v25);
      v25 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1B495EC(int64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v142 = a1;
  v6 = type metadata accessor for AnyStatusItem();
  v151 = *(v6 - 8);
  v7 = *(v151 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v145 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v156 = &v136 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v136 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v136 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v136 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v136 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  result = MEMORY[0x1EEE9AC00](v24);
  v153 = a3;
  v28 = *(a3 + 8);
  if (v28 < 1)
  {
    v30 = MEMORY[0x1E69E7CC0];
LABEL_108:
    v29 = *v142;
    if (!*v142)
    {
      goto LABEL_148;
    }

    a3 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v155;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_142;
    }

    result = a3;
LABEL_111:
    v161 = result;
    v131 = *(result + 16);
    if (v131 >= 2)
    {
      while (*v153)
      {
        a3 = v131 - 1;
        v132 = *(result + 16 * v131);
        v133 = result;
        v134 = *(result + 16 * (v131 - 1) + 40);
        sub_1D1B4A064(*v153 + *(v151 + 72) * v132, *v153 + *(v151 + 72) * *(result + 16 * (v131 - 1) + 32), *v153 + *(v151 + 72) * v134, v29);
        if (v23)
        {
        }

        if (v134 < v132)
        {
          goto LABEL_135;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v133 = sub_1D1E0BE44(v133);
        }

        if (v131 - 2 >= *(v133 + 2))
        {
          goto LABEL_136;
        }

        v135 = &v133[16 * v131];
        *v135 = v132;
        *(v135 + 1) = v134;
        v161 = v133;
        sub_1D1E0BDB8(a3);
        result = v161;
        v131 = *(v161 + 16);
        if (v131 <= 1)
        {
        }
      }

      goto LABEL_146;
    }
  }

  v139 = &v136 - v26;
  v140 = v27;
  v29 = 0;
  v30 = MEMORY[0x1E69E7CC0];
  v141 = a4;
  v148 = v17;
  while (1)
  {
    v146 = v30;
    if (v29 + 1 >= v28)
    {
      v52 = v29 + 1;
      goto LABEL_31;
    }

    v154 = v28;
    v31 = *v153;
    v32 = *(v151 + 72);
    v143 = v29;
    v33 = v31 + v32 * (v29 + 1);
    v34 = v139;
    sub_1D1B4A628(v33, v139);
    v152 = v32;
    v149 = v31;
    v35 = v31 + v32 * v143;
    v36 = v140;
    sub_1D1B4A628(v35, v140);
    v37 = v155;
    LODWORD(v150) = sub_1D1B490CC(v34, v36);
    v155 = v37;
    if (v37)
    {
      sub_1D1B4A68C(v36);
      sub_1D1B4A68C(v34);
    }

    sub_1D1B4A68C(v36);
    result = sub_1D1B4A68C(v34);
    v38 = v143 + 2;
    v39 = v152;
    a3 = v149 + v152 * (v143 + 2);
    do
    {
      if (v154 == v38)
      {
        v52 = v154;
        goto LABEL_17;
      }

      sub_1D1B4A628(a3, v23);
      sub_1D1B4A628(v33, v20);
      v41 = *(v6 + 28);
      v42 = v23[v41];
      v43 = v20[v41];
      if (v42 == v43)
      {
        v44 = *(v6 + 32);
        v45 = *&v23[v44];
        v46 = *&v20[v44];
        if (v45 == v46)
        {
          v47 = *(type metadata accessor for IconTextValueStringDataHolder() + 24);
          v48 = *&v23[v47 + 8];
          v159 = *&v23[v47];
          v160 = v48;
          v49 = &v20[v47];
          v51 = *v49;
          v50 = *(v49 + 1);
          v157 = v51;
          v158 = v50;
          sub_1D17D8EF0();
          v40 = sub_1D1E685FC() == -1;
        }

        else
        {
          v40 = v45 < v46;
        }
      }

      else
      {
        v40 = v42 < v43;
      }

      sub_1D1B4A68C(v20);
      result = sub_1D1B4A68C(v23);
      ++v38;
      v39 = v152;
      a3 += v152;
      v33 += v152;
    }

    while ((v150 & 1) == v40);
    v52 = v38 - 1;
LABEL_17:
    a4 = v141;
    v29 = v143;
    if (v150)
    {
      if (v52 < v143)
      {
        goto LABEL_141;
      }

      if (v143 < v52)
      {
        v137 = v23;
        v138 = v20;
        v53 = v39 * (v52 - 1);
        v54 = v52 * v39;
        v154 = v52;
        v55 = v143;
        v56 = v143 * v39;
        do
        {
          if (v55 != --v52)
          {
            v150 = v52;
            a3 = *v153;
            if (!*v153)
            {
              goto LABEL_145;
            }

            sub_1D1B4A6E8(a3 + v56, v145);
            if (v56 < v53 || a3 + v56 >= a3 + v54)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v56 != v53)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_1D1B4A6E8(v145, a3 + v53);
            v39 = v152;
            v52 = v150;
          }

          ++v55;
          v53 -= v39;
          v54 -= v39;
          v56 += v39;
        }

        while (v55 < v52);
        a4 = v141;
        v20 = v138;
        v23 = v137;
        v29 = v143;
        v52 = v154;
      }
    }

LABEL_31:
    v57 = v153[1];
    if (v52 >= v57)
    {
      goto LABEL_39;
    }

    if (__OFSUB__(v52, v29))
    {
      goto LABEL_138;
    }

    if (v52 - v29 >= a4)
    {
      goto LABEL_39;
    }

    if (__OFADD__(v29, a4))
    {
      goto LABEL_139;
    }

    if (v29 + a4 < v57)
    {
      v57 = v29 + a4;
    }

    if (v57 < v29)
    {
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      result = sub_1D1E0BE44(a3);
      goto LABEL_111;
    }

    if (v52 == v57)
    {
LABEL_39:
      v58 = v52;
      if (v52 < v29)
      {
        goto LABEL_137;
      }

      goto LABEL_40;
    }

    v147 = v57;
    v137 = v23;
    v138 = v20;
    a3 = *v153;
    v110 = *(v151 + 72);
    v111 = *v153 + v110 * (v52 - 1);
    v112 = -v110;
    v143 = v29;
    v144 = v110;
    v113 = v29 - v52;
    v114 = a3 + v52 * v110;
LABEL_92:
    v154 = v52;
    v149 = v114;
    v150 = v113;
    v115 = v113;
    v152 = v111;
LABEL_93:
    sub_1D1B4A628(v114, v17);
    sub_1D1B4A628(v111, v14);
    v116 = *(v6 + 28);
    v117 = v17[v116];
    v118 = v14[v116];
    if (v117 == v118)
    {
      v119 = *(v6 + 32);
      v120 = *&v17[v119];
      v121 = *&v14[v119];
      if (v120 == v121)
      {
        v122 = *(type metadata accessor for IconTextValueStringDataHolder() + 24);
        v123 = *&v17[v122 + 8];
        v159 = *&v17[v122];
        v160 = v123;
        v124 = &v14[v122];
        v126 = *v124;
        v125 = *(v124 + 1);
        v157 = v126;
        v158 = v125;
        sub_1D17D8EF0();
        v127 = sub_1D1E685FC() == -1;
      }

      else
      {
        v127 = v120 < v121;
      }
    }

    else
    {
      v127 = v117 < v118;
    }

    sub_1D1B4A68C(v14);
    result = sub_1D1B4A68C(v17);
    if (v127)
    {
      break;
    }

LABEL_91:
    v52 = v154 + 1;
    v111 = v152 + v144;
    v113 = v150 - 1;
    v114 = v149 + v144;
    if (v154 + 1 != v147)
    {
      goto LABEL_92;
    }

    v20 = v138;
    v23 = v137;
    v29 = v143;
    v58 = v147;
    if (v147 < v143)
    {
      goto LABEL_137;
    }

LABEL_40:
    v147 = v58;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v30 = v146;
    }

    else
    {
      result = sub_1D177D070(0, *(v146 + 2) + 1, 1, v146);
      v30 = result;
    }

    a3 = *(v30 + 2);
    v59 = *(v30 + 3);
    v60 = a3 + 1;
    if (a3 >= v59 >> 1)
    {
      result = sub_1D177D070((v59 > 1), a3 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = v60;
    v61 = &v30[16 * a3];
    v62 = v147;
    *(v61 + 4) = v29;
    *(v61 + 5) = v62;
    v154 = *v142;
    if (!v154)
    {
      goto LABEL_147;
    }

    if (a3)
    {
      while (1)
      {
        v63 = v60 - 1;
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v64 = *(v30 + 4);
          v65 = *(v30 + 5);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_59:
          if (v67)
          {
            goto LABEL_126;
          }

          v80 = &v30[16 * v60];
          v82 = *v80;
          v81 = *(v80 + 1);
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_129;
          }

          v86 = &v30[16 * v63 + 32];
          v88 = *v86;
          v87 = *(v86 + 1);
          v74 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v74)
          {
            goto LABEL_132;
          }

          if (__OFADD__(v84, v89))
          {
            goto LABEL_133;
          }

          if (v84 + v89 >= v66)
          {
            if (v66 < v89)
            {
              v63 = v60 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v90 = &v30[16 * v60];
        v92 = *v90;
        v91 = *(v90 + 1);
        v74 = __OFSUB__(v91, v92);
        v84 = v91 - v92;
        v85 = v74;
LABEL_73:
        if (v85)
        {
          goto LABEL_128;
        }

        v93 = &v30[16 * v63];
        v95 = *(v93 + 4);
        v94 = *(v93 + 5);
        v74 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v74)
        {
          goto LABEL_131;
        }

        if (v96 < v84)
        {
          goto LABEL_3;
        }

LABEL_80:
        a3 = v63 - 1;
        if (v63 - 1 >= v60)
        {
          __break(1u);
LABEL_122:
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
          goto LABEL_140;
        }

        if (!*v153)
        {
          goto LABEL_144;
        }

        v101 = v14;
        v29 = v6;
        v102 = v23;
        v23 = v20;
        v103 = v30;
        v104 = *&v30[16 * a3 + 32];
        v105 = v63;
        v106 = *&v30[16 * v63 + 40];
        v107 = v155;
        sub_1D1B4A064(*v153 + *(v151 + 72) * v104, *v153 + *(v151 + 72) * *&v30[16 * v63 + 32], *v153 + *(v151 + 72) * v106, v154);
        v155 = v107;
        if (v107)
        {
        }

        if (v106 < v104)
        {
          goto LABEL_122;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v108 = v103;
        }

        else
        {
          v108 = sub_1D1E0BE44(v103);
        }

        if (a3 >= *(v108 + 2))
        {
          goto LABEL_123;
        }

        v20 = v23;
        v109 = &v108[16 * a3];
        *(v109 + 4) = v104;
        *(v109 + 5) = v106;
        v161 = v108;
        result = sub_1D1E0BDB8(v105);
        v30 = v161;
        v60 = *(v161 + 16);
        v23 = v102;
        v6 = v29;
        v14 = v101;
        v17 = v148;
        if (v60 <= 1)
        {
          goto LABEL_3;
        }
      }

      v68 = &v30[16 * v60 + 32];
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_124;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_125;
      }

      v75 = &v30[16 * v60];
      v77 = *v75;
      v76 = *(v75 + 1);
      v74 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v74)
      {
        goto LABEL_127;
      }

      v74 = __OFADD__(v66, v78);
      v79 = v66 + v78;
      if (v74)
      {
        goto LABEL_130;
      }

      if (v79 >= v71)
      {
        v97 = &v30[16 * v63 + 32];
        v99 = *v97;
        v98 = *(v97 + 1);
        v74 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v74)
        {
          goto LABEL_134;
        }

        if (v66 < v100)
        {
          v63 = v60 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v28 = v153[1];
    v29 = v147;
    a4 = v141;
    if (v147 >= v28)
    {
      goto LABEL_108;
    }
  }

  if (a3)
  {
    v128 = v156;
    sub_1D1B4A6E8(v114, v156);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D1B4A6E8(v128, v111);
    v111 += v112;
    v114 += v112;
    if (__CFADD__(v115++, 1))
    {
      goto LABEL_91;
    }

    goto LABEL_93;
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
  return result;
}

uint64_t sub_1D1B4A064(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for AnyStatusItem();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v74 = &v69 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v69 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v19 = &v69 - v18;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_73;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_74;
  }

  v23 = (a2 - a1) / v21;
  v82 = a1;
  v81 = a4;
  v75 = v8;
  if (v23 >= v22 / v21)
  {
    v25 = v22 / v21 * v21;
    v72 = v17;
    if (a4 < a2 || a2 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v25 < 1)
    {
      v43 = a4 + v25;
    }

    else
    {
      v41 = -v21;
      v42 = a4 + v25;
      v43 = a4 + v25;
      v70 = a4;
      v73 = v41;
      do
      {
        v69 = v43;
        v44 = a2;
        a2 += v41;
        v71 = v44;
        while (1)
        {
          if (v44 <= a1)
          {
            v82 = v44;
            v80 = v69;
            goto LABEL_71;
          }

          v45 = a3;
          v46 = a2;
          v47 = v43;
          v48 = v42 + v41;
          v49 = v74;
          sub_1D1B4A628(v42 + v41, v74);
          v50 = v46;
          v51 = v46;
          v52 = v72;
          sub_1D1B4A628(v51, v72);
          v53 = v52;
          v54 = *(v8 + 28);
          v55 = *(v49 + v54);
          v56 = *(v52 + v54);
          if (v55 == v56)
          {
            v57 = *(v8 + 32);
            v58 = *(v49 + v57);
            v59 = *(v52 + v57);
            if (v58 == v59)
            {
              v60 = *(type metadata accessor for IconTextValueStringDataHolder() + 24);
              v61 = *(v49 + v60 + 8);
              v78 = *(v49 + v60);
              v79 = v61;
              v62 = (v72 + v60);
              v64 = *v62;
              v63 = v62[1];
              v76 = v64;
              v77 = v63;
              sub_1D17D8EF0();
              v65 = sub_1D1E685FC() == -1;
              v53 = v72;
              v66 = v65;
            }

            else
            {
              v66 = v58 < v59;
            }
          }

          else
          {
            v66 = v55 < v56;
          }

          v43 = v47;
          a3 = v45 + v73;
          sub_1D1B4A68C(v53);
          sub_1D1B4A68C(v74);
          a2 = v50;
          if (v66)
          {
            break;
          }

          v43 = v48;
          v67 = v70;
          if (v45 < v42 || a3 >= v42)
          {
            v8 = v75;
            swift_arrayInitWithTakeFrontToBack();
          }

          else
          {
            v8 = v75;
            if (v45 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v42 = v48;
          v41 = v73;
          v44 = v71;
          if (v48 <= v67)
          {
            a2 = v71;
            goto LABEL_70;
          }
        }

        v68 = v70;
        if (v45 < v71 || a3 >= v71)
        {
          v8 = v75;
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          v8 = v75;
          if (v45 != v71)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v41 = v73;
      }

      while (v42 > v68);
    }

LABEL_70:
    v82 = a2;
    v80 = v43;
  }

  else
  {
    v24 = v23 * v21;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v24;
    v80 = a4 + v24;
    v27 = v24 < 1 || a2 >= a3;
    v28 = v75;
    if (!v27)
    {
      do
      {
        sub_1D1B4A628(a2, v19);
        sub_1D1B4A628(a4, v15);
        v29 = *(v28 + 28);
        v30 = v19[v29];
        v31 = v15[v29];
        if (v30 == v31)
        {
          v32 = *(v28 + 32);
          v33 = *&v19[v32];
          v34 = *&v15[v32];
          if (v33 == v34)
          {
            v35 = *(type metadata accessor for IconTextValueStringDataHolder() + 24);
            v36 = *&v19[v35 + 8];
            v78 = *&v19[v35];
            v79 = v36;
            v37 = &v15[v35];
            v39 = *v37;
            v38 = *(v37 + 1);
            v76 = v39;
            v77 = v38;
            sub_1D17D8EF0();
            v40 = sub_1D1E685FC() == -1;
          }

          else
          {
            v40 = v33 < v34;
          }
        }

        else
        {
          v40 = v30 < v31;
        }

        sub_1D1B4A68C(v15);
        sub_1D1B4A68C(v19);
        if (v40)
        {
          if (a1 < a2 || a1 >= a2 + v21)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v21;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v21)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v81 = a4 + v21;
          a4 += v21;
        }

        a1 += v21;
        v82 = a1;
        v28 = v75;
      }

      while (a4 < v26 && a2 < a3);
    }
  }

LABEL_71:
  sub_1D1DC71D4(&v82, &v81, &v80);
  return 1;
}

uint64_t sub_1D1B4A628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyStatusItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1B4A68C(uint64_t a1)
{
  v2 = type metadata accessor for AnyStatusItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1B4A6E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyStatusItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for VacuumStatusItem()
{
  result = qword_1EC64B5C0;
  if (!qword_1EC64B5C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1B4A7C4()
{
  result = type metadata accessor for IconTextValueStringDataHolder();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TilesFilter(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D1B4A8AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D1E66A7C();
  v79 = *(v4 - 8);
  v5 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v76 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for IconTextValueStringDataHolder();
  v7 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v74 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v73 = &v66 - v13;
  v14 = type metadata accessor for StaticMatterDevice();
  v72 = *(v14 - 8);
  v15 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for VacuumStatusItem();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[v21[6]] = 7;
  v23[v21[7]] = 3;
  v24 = v21[8];
  v75 = v23;
  *&v23[v24] = 0;
  v25 = a1[3];
  v26 = a1[4];
  v27 = __swift_project_boxed_opaque_existential_1(a1, v25);
  v28 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  (*(v30 + 16))(&v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = *(v26 + 8);
  v32 = sub_1D1E67A8C();
  if (*(v32 + 16) && (v33 = , v34 = sub_1D1E530F8(v33), , (v34 & 1) == 0))
  {
    v71 = v19;
    v36 = *(v32 + 16);
    v37 = MEMORY[0x1E69E7CC0];
    if (v36)
    {
      v67 = v4;
      v68 = v18;
      v69 = a2;
      v70 = a1;
      v80 = MEMORY[0x1E69E7CC0];
      sub_1D178D784(0, v36, 0);
      v37 = v80;
      v38 = v32 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
      v39 = *(v72 + 72);
      do
      {
        sub_1D1B4B9A0(v38, v17, type metadata accessor for StaticMatterDevice);
        v40 = *&v17[*(v14 + 20)];
        sub_1D19D4620(v17);
        v80 = v37;
        v42 = *(v37 + 16);
        v41 = *(v37 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_1D178D784((v41 > 1), v42 + 1, 1);
          v37 = v80;
        }

        *(v37 + 16) = v42 + 1;
        *(v37 + 8 * v42 + 32) = v40;
        v38 += v39;
        --v36;
      }

      while (v36);
      a2 = v69;
      a1 = v70;
      v4 = v67;
      v18 = v68;
    }

    v72 = sub_1D1785204(v37);

    v43 = v79;
    v44 = v73;
    (*(v79 + 56))(v73, 1, 1, v4);
    v70 = 0x80000001D1EB60A0;

    v46 = sub_1D1B4B6BC(v45);
    v68 = v47;
    v69 = v46;

    v48 = sub_1D1E53980(v32);
    v66 = v49;
    v67 = v48;

    v50 = v74;
    sub_1D17783E0(v44, v74);
    v51 = *(v43 + 48);
    if (v51(v50, 1, v4) == 1)
    {
      v52 = v76;
      sub_1D1E66A6C();
      sub_1D1835548(v44);
      v53 = v51(v50, 1, v4);
      v54 = v52;
      v55 = v75;
      if (v53 != 1)
      {
        sub_1D1835548(v50);
      }
    }

    else
    {
      sub_1D1835548(v44);
      v54 = v76;
      (*(v43 + 32))(v76, v50, v4);
      v55 = v75;
    }

    v56 = v77;
    (*(v43 + 32))(v77, v54, v4);
    v57 = v78;
    v58 = (v56 + *(v78 + 20));
    *v58 = 0xD000000000000013;
    v59 = v69;
    v58[1] = v70;
    v60 = (v56 + v57[6]);
    *v60 = v59;
    v61 = v67;
    v60[1] = v68;
    v62 = (v56 + v57[7]);
    *v62 = v61;
    v62[1] = v66;
    v63 = v56 + v57[8];
    *v63 = 0;
    *(v63 + 8) = 0;
    *(v63 + 16) = 0;
    *(v63 + 24) = -1;
    v64 = sub_1D1B4BCA4(v56, v55, type metadata accessor for IconTextValueStringDataHolder);
    v65 = *(v18 + 20);
    MEMORY[0x1EEE9AC00](v64);
    *(&v66 - 2) = v72;
    v80 = type metadata accessor for StaticEndpoint();
    sub_1D1E66C8C();

    type metadata accessor for TilesFilter(0);
    swift_storeEnumTagMultiPayload();
    sub_1D1B4BCA4(v55, a2, type metadata accessor for VacuumStatusItem);
    (*(v71 + 56))(a2, 0, 1, v18);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v19 + 56))(a2, 1, 1, v18);
  }
}

uint64_t sub_1D1B4B02C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v31 = a2;
  v36 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B5D8, &qword_1D1E9A650);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B5E0, &qword_1D1E9A658);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B5E8, &qword_1D1E9A660);
  v15 = *(v14 - 8);
  v34 = v14;
  v35 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v30 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B5F0, &unk_1D1E9A668);
  v20 = *(v19 - 8);
  v32 = v19;
  v33 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v30 - v22;
  v24 = *a1;
  v37 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6492B0, &unk_1D1E92C90);
  sub_1D1E664BC();
  sub_1D17D8EA8(&qword_1EC64B5F8, &qword_1EC64B5D8, &qword_1D1E9A650);
  sub_1D1E664CC();
  swift_getKeyPath();
  sub_1D1E6645C();

  (*(v5 + 8))(v8, v4);
  swift_getKeyPath();
  sub_1D17D8EA8(&qword_1EC64B600, &qword_1EC64B5E0, &qword_1D1E9A658);
  sub_1D1E6645C();

  (*(v10 + 8))(v13, v9);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B608, &qword_1D1E9A6B8);
  v26 = v36;
  v36[3] = v25;
  v26[4] = sub_1D1B4BA10();
  __swift_allocate_boxed_opaque_existential_1(v26);
  sub_1D17D8EA8(&qword_1EC64B638, &qword_1EC64B5F0, &unk_1D1E9A668);
  sub_1D17D8EA8(&qword_1EC64B640, &qword_1EC64B5E8, &qword_1D1E9A660);
  sub_1D17D8EA8(&qword_1EC64B648, &qword_1EC6492B0, &unk_1D1E92C90);
  v27 = v32;
  v28 = v34;
  sub_1D1E6647C();
  (*(v35 + 8))(v18, v28);
  return (*(v33 + 8))(v23, v27);
}

uint64_t sub_1D1B4B540@<X0>(uint64_t *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x1E69DC890]);
  v6[4] = sub_1D19E38B0;
  v6[5] = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1D19E3848;
  v6[3] = &block_descriptor_46;
  v3 = _Block_copy(v6);
  [v2 initWithDynamicProvider_];
  _Block_release(v3);

  v4 = sub_1D1E6730C();
  *a1 = v4;
  a1[1] = v4;
}

uint64_t sub_1D1B4B61C(uint64_t a1)
{
  result = sub_1D1B4B674(&qword_1EC64B5D0, type metadata accessor for VacuumStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B4B674(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1B4B6BC(uint64_t a1)
{
  v2 = type metadata accessor for StaticMatterDevice();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v29 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = *(v7 + 72);
    v29 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v13 = a1 + v29;
    v14 = MEMORY[0x1E69E7CC0];
    v30 = v6;
    do
    {
      sub_1D1B4B9A0(v13 + v12 * v11, v9, type metadata accessor for StaticMatterDevice);
      v15 = *&v9[*(v2 + 32)];
      if (*(v15 + 16) && (v16 = *(v15 + 40), sub_1D1E6920C(), sub_1D1E6924C(), v17 = sub_1D1E6926C(), v18 = -1 << *(v15 + 32), v19 = v17 & ~v18, ((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0))
      {
        v20 = ~v18;
        while (*(*(v15 + 48) + v19) != 23)
        {
          v19 = (v19 + 1) & v20;
          if (((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        sub_1D1B4BCA4(v9, v6, type metadata accessor for StaticMatterDevice);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D178CDA8(0, *(v14 + 16) + 1, 1);
          v14 = v31;
        }

        v23 = *(v14 + 16);
        v22 = *(v14 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1D178CDA8(v22 > 1, v23 + 1, 1);
          v14 = v31;
        }

        *(v14 + 16) = v23 + 1;
        v24 = v14 + v29 + v23 * v12;
        v6 = v30;
        sub_1D1B4BCA4(v30, v24, type metadata accessor for StaticMatterDevice);
      }

      else
      {
LABEL_3:
        sub_1D19D4620(v9);
      }

      ++v11;
    }

    while (v11 != v10);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v25 = *(v14 + 16);

  v26 = "ategoryCapitalizedPlural";
  if (v25 <= 1)
  {
    v27 = 0xD000000000000021;
  }

  else
  {
    v26 = "ameVacuumSingular";
    v27 = 0xD00000000000001ALL;
  }

  return static String.hfLocalized(_:)(v27, v26 | 0x8000000000000000);
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D1B4B9A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D1B4BA10()
{
  result = qword_1EC64B610;
  if (!qword_1EC64B610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B608, &qword_1D1E9A6B8);
    sub_1D1B4BA9C();
    sub_1D1B4BB70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B610);
  }

  return result;
}

unint64_t sub_1D1B4BA9C()
{
  result = qword_1EC64B618;
  if (!qword_1EC64B618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B5F0, &unk_1D1E9A668);
    sub_1D1A31198(&qword_1EC6492F0);
    sub_1D1A31198(&qword_1EC6492B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B618);
  }

  return result;
}

unint64_t sub_1D1B4BB70()
{
  result = qword_1EC64B620;
  if (!qword_1EC64B620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B5E8, &qword_1D1E9A660);
    sub_1D1B4BBF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B620);
  }

  return result;
}

unint64_t sub_1D1B4BBF4()
{
  result = qword_1EC64B628;
  if (!qword_1EC64B628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B5E0, &qword_1D1E9A658);
    sub_1D17D8EA8(&qword_1EC64B630, &qword_1EC64B5D8, &qword_1D1E9A650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B628);
  }

  return result;
}

uint64_t sub_1D1B4BCA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B4BDE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a2;
  v127 = type metadata accessor for IconTextValueStringDataHolder();
  v3 = *(*(v127 - 8) + 64);
  MEMORY[0x1EEE9AC00](v127);
  v126 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v125 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v119 - v9;
  v11 = sub_1D1E66A7C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v124 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v122 = &v119 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v132 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v131 = &v119 - v21;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v22 = *(*(v145 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v145);
  v121 = &v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v133 = &v119 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v141 = &v119 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v146 = &v119 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v140 = &v119 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v143 = &v119 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v120 = &v119 - v35;
  v36 = type metadata accessor for IrrigationStatusItem(0);
  v128 = *(v36 - 8);
  v37 = *(v128 + 64);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v119 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40[*(v38 + 24)] = 6;
  v129 = v38;
  v41 = *(v38 + 28);
  v123 = v40;
  v40[v41] = 2;
  v149 = MEMORY[0x1E69E7CD0];
  v42 = a1 + 64;
  v43 = 1 << *(a1 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(a1 + 64);
  v46 = (v43 + 63) >> 6;
  v139 = v12 + 16;
  v144 = (v12 + 8);
  v134 = 0x80000001D1EB3130;
  v142 = a1;

  v48 = 0;
  v147 = v11;
  v135 = v42;
  v136 = v46;
  v137 = v10;
  v138 = v12;
  if (v45)
  {
    while (1)
    {
LABEL_8:
      v50 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      v51 = v50 | (v48 << 6);
      v52 = v142;
      v53 = v140;
      (*(v12 + 16))(v140, *(v142 + 48) + *(v12 + 72) * v51, v11);
      v54 = *(v52 + 56);
      v55 = v11;
      v56 = type metadata accessor for StaticService(0);
      v57 = v145;
      sub_1D1B43A14(v54 + *(*(v56 - 1) + 72) * v51, v53 + *(v145 + 48), type metadata accessor for StaticService);
      v58 = v143;
      sub_1D1741A90(v53, v143, &qword_1EC642DB0, &unk_1D1E6F360);
      v59 = v146;
      sub_1D1741C08(v58, v146, &qword_1EC642DB0, &unk_1D1E6F360);
      v60 = v59 + *(v57 + 48);
      LODWORD(v51) = *(v60 + v56[24]);
      sub_1D1B43A7C(v60, type metadata accessor for StaticService);
      if (v51 != 1)
      {
        (*v144)(v59, v55);
        v64 = v58;
        goto LABEL_47;
      }

      v61 = v141;
      sub_1D1741C08(v58, v141, &qword_1EC642DB0, &unk_1D1E6F360);
      v62 = v61 + *(v57 + 48);
      LOBYTE(v61) = *(v62 + v56[26]);
      sub_1D1B43A7C(v62, type metadata accessor for StaticService);
      v148 = v61;
      v64 = v58;
      if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v134 == v63)
      {
        v65 = 1;
      }

      else
      {
        v65 = sub_1D1E6904C();
      }

      v66 = v146;

      v67 = *v144;
      v68 = v147;
      (*v144)(v141, v147);
      v67(v66, v68);
      if ((v65 & 1) == 0)
      {
        goto LABEL_47;
      }

      v69 = v133;
      sub_1D1741C08(v58, v133, &qword_1EC642DB0, &unk_1D1E6F360);
      v70 = v69 + *(v145 + 48);
      v71 = *(v70 + v56[32]);
      if (*(v71 + 16) && (v72 = sub_1D171D140(65), (v73 & 1) != 0))
      {
        v74 = v72;
        v75 = *(v71 + 56);
        v76 = type metadata accessor for StaticCharacteristic();
        v77 = *(v76 - 8);
        v78 = v131;
        sub_1D1B43A14(v75 + *(v77 + 72) * v74, v131, type metadata accessor for StaticCharacteristic);
        (*(v77 + 56))(v78, 0, 1, v76);
      }

      else
      {
        v76 = type metadata accessor for StaticCharacteristic();
        v78 = v131;
        (*(*(v76 - 8) + 56))(v131, 1, 1, v76);
      }

      v79 = v78;
      v80 = v132;
      sub_1D1741A90(v79, v132, &qword_1EC643630, &qword_1D1E71D10);
      type metadata accessor for StaticCharacteristic();
      result = (*(*(v76 - 8) + 48))(v80, 1, v76);
      if (result == 1)
      {
        sub_1D1741A30(v80, &qword_1EC643630, &qword_1D1E71D10);
        v64 = v143;
        goto LABEL_46;
      }

      v81 = v80 + *(v76 + 24);
      v82 = *v81;
      v83 = *(v81 + 16);
      if (v83 <= 2)
      {
        if (!v83)
        {
          v64 = v143;
          goto LABEL_42;
        }

        v64 = v143;
        if (v83 == 1)
        {
          v84 = v82 == 1;
          if (v82 > 1uLL)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v84 = v82 == 1;
          if (v82 > 1uLL)
          {
            goto LABEL_45;
          }
        }
      }

      else
      {
        if (v83 > 4)
        {
          if (v83 != 5)
          {
            v64 = v143;
            if (v83 != 6 || (v84 = v82 == 1, v82 > 1))
            {
LABEL_45:
              sub_1D1B43A7C(v80, type metadata accessor for StaticCharacteristic);
LABEL_46:
              sub_1D1B43A7C(v70, type metadata accessor for StaticService);
              v67(v133, v147);
LABEL_47:
              result = sub_1D1741A30(v64, &qword_1EC642DB0, &unk_1D1E6F360);
              v11 = v147;
              goto LABEL_48;
            }

            goto LABEL_39;
          }

          v82 = v82;
          v64 = v143;
          goto LABEL_38;
        }

        if (v83 != 3)
        {
          v64 = v143;
          if ((v82 & 0x8000000000000000) != 0)
          {
LABEL_58:
            __break(1u);
            return result;
          }

LABEL_38:
          v84 = v82 == 1;
          if (v82 > 1)
          {
            goto LABEL_45;
          }

          goto LABEL_39;
        }

        v64 = v143;
        v84 = v82 == 1;
        if (v82 > 1uLL)
        {
          goto LABEL_45;
        }
      }

LABEL_39:
      LOBYTE(v82) = v84;
LABEL_42:
      sub_1D1B43A7C(v80, type metadata accessor for StaticCharacteristic);
      sub_1D1B43A7C(v70, type metadata accessor for StaticService);
      v67(v133, v147);
      if ((v82 & 1) == 0)
      {
        goto LABEL_47;
      }

      v85 = v120;
      sub_1D1741A90(v64, v120, &qword_1EC642DB0, &unk_1D1E6F360);
      v86 = v121;
      sub_1D1741C08(v85, v121, &qword_1EC642DB0, &unk_1D1E6F360);
      v87 = *(v145 + 48);
      v88 = v122;
      sub_1D1762CB8(v122, v86);
      v89 = v88;
      v11 = v147;
      v67(v89, v147);
      sub_1D1741A30(v85, &qword_1EC642DB0, &unk_1D1E6F360);
      result = sub_1D1B43A7C(&v86[v87], type metadata accessor for StaticService);
LABEL_48:
      v10 = v137;
      v12 = v138;
      v42 = v135;
      v46 = v136;
      if (!v45)
      {
        goto LABEL_4;
      }
    }
  }

  while (1)
  {
LABEL_4:
    v49 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      __break(1u);
      goto LABEL_58;
    }

    if (v49 >= v46)
    {
      break;
    }

    v45 = *(v42 + 8 * v49);
    ++v48;
    if (v45)
    {
      v48 = v49;
      goto LABEL_8;
    }
  }

  v90 = v149;
  if (*(v149 + 16))
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    v145 = 0x80000001D1EB6210;
    v91 = static String.hfLocalized(_:)(0xD000000000000022, 0x80000001D1EC5300);
    v146 = v92;
    v147 = v91;
    static String.hfLocalized(_:)(0xD000000000000033, 0x80000001D1EC5330);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_1D1E739C0;
    v94 = *(v90 + 16);
    v95 = MEMORY[0x1E69E65A8];
    *(v93 + 56) = MEMORY[0x1E69E6530];
    *(v93 + 64) = v95;
    *(v93 + 32) = v94;
    v96 = sub_1D1E6783C();
    v97 = v12;
    v99 = v98;

    v100 = v125;
    sub_1D1741C08(v10, v125, &qword_1EC642590, qword_1D1E71260);
    v101 = *(v97 + 48);
    if (v101(v100, 1, v11) == 1)
    {
      v102 = v97;
      v103 = v124;
      sub_1D1E66A6C();
      sub_1D1741A30(v10, &qword_1EC642590, qword_1D1E71260);
      v84 = v101(v100, 1, v11) == 1;
      v104 = v130;
      v105 = v127;
      v106 = v100;
      v107 = v126;
      if (!v84)
      {
        sub_1D1741A30(v106, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      sub_1D1741A30(v10, &qword_1EC642590, qword_1D1E71260);
      v102 = v97;
      v108 = *(v97 + 32);
      v103 = v124;
      v108(v124, v100, v11);
      v104 = v130;
      v105 = v127;
      v107 = v126;
    }

    (*(v102 + 32))(v107, v103, v11);
    v109 = (v107 + v105[5]);
    v110 = v145;
    *v109 = 0xD00000000000001BLL;
    v109[1] = v110;
    v111 = (v107 + v105[6]);
    v112 = v146;
    *v111 = v147;
    v111[1] = v112;
    v113 = (v107 + v105[7]);
    *v113 = v96;
    v113[1] = v99;
    v114 = v107 + v105[8];
    *v114 = 0;
    *(v114 + 8) = 0;
    *(v114 + 16) = 0;
    *(v114 + 24) = -1;
    v115 = v123;
    v116 = sub_1D1B4D950(v107, v123, type metadata accessor for IconTextValueStringDataHolder);
    v117 = v129;
    v118 = *(v129 + 20);
    MEMORY[0x1EEE9AC00](v116);
    *(&v119 - 2) = v90;
    v149 = type metadata accessor for StaticService(0);
    sub_1D1E66C8C();

    type metadata accessor for TilesFilter(0);
    swift_storeEnumTagMultiPayload();
    sub_1D1B4D950(v115, v104, type metadata accessor for IrrigationStatusItem);
    return (*(v128 + 56))(v104, 0, 1, v117);
  }

  else
  {

    return (*(v128 + 56))(v130, 1, 1, v129);
  }
}

uint64_t sub_1D1B4CC9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF60, &unk_1D1E9A850);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF68, &unk_1D1E99350);
  v12 = *(v11 - 8);
  v25 = v11;
  v26 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF70, &unk_1D1E9A860);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - v19;
  v21 = *a1;
  v27 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  sub_1D1E664BC();
  sub_1D17D8EA8(&qword_1EC64AF78, &qword_1EC64AF60, &unk_1D1E9A850);
  sub_1D1E664CC();
  swift_getKeyPath();
  sub_1D1E6645C();

  (*(v7 + 8))(v10, v6);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AF80, &unk_1D1E9A890);
  a3[4] = sub_1D1B39320();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1D17D8EA8(&qword_1EC64AFA8, &qword_1EC64AF70, &unk_1D1E9A860);
  sub_1D17D8EA8(&qword_1EC64AFB0, &qword_1EC64AF68, &unk_1D1E99350);
  sub_1D17D8EA8(&qword_1EC64AFB8, &qword_1EC6438F0, &qword_1D1E99360);
  sub_1D1B4D7A8(&qword_1EE07D170, MEMORY[0x1E69695A8]);
  v22 = v25;
  sub_1D1E6647C();
  (*(v26 + 8))(v15, v22);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_1D1B4D080(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17[-v4];
  v6 = type metadata accessor for StaticService(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v19) = *(a1 + *(v9 + 104));
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB2FE0 == v12)
  {
  }

  else
  {
    v13 = sub_1D1E6904C();

    if ((v13 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  sub_1D1B4D2C4(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    sub_1D1B4D950(v5, v11, type metadata accessor for StaticService);
    v19 = *&v11[*(v6 + 128)];
    v18 = 65;
    v15 = sub_1D1CE4920(&v18);
    sub_1D1B43A7C(v11, type metadata accessor for StaticService);
    v14 = v15;
    return v14 & 1;
  }

  sub_1D1741A30(v5, &qword_1EC6436F0, &qword_1D1E99BC0);
LABEL_7:
  v19 = *(a1 + *(v6 + 128));
  v18 = 3;
  v14 = sub_1D1CE4920(&v18);
  return v14 & 1;
}

uint64_t sub_1D1B4D2C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StaticService(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + *(result + 124));
  v11 = *(v10 + 16);
  if (v11)
  {
    v16 = a2;
    v12 = 0;
    while (v12 < *(v10 + 16))
    {
      sub_1D1B43A14(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v9, type metadata accessor for StaticService);
      v17 = v9[*(v4 + 104)];
      if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3580 == v13)
      {

LABEL_11:
        a2 = v16;
        sub_1D1B4D950(v9, v16, type metadata accessor for StaticService);
        v15 = 0;
        return (*(v5 + 56))(a2, v15, 1, v4);
      }

      v14 = sub_1D1E6904C();

      if (v14)
      {
        goto LABEL_11;
      }

      ++v12;
      result = sub_1D1B43A7C(v9, type metadata accessor for StaticService);
      if (v11 == v12)
      {
        v15 = 1;
        a2 = v16;
        return (*(v5 + 56))(a2, v15, 1, v4);
      }
    }

    __break(1u);
  }

  else
  {
    v15 = 1;
    return (*(v5 + 56))(a2, v15, 1, v4);
  }

  return result;
}

uint64_t sub_1D1B4D4D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18[-v4];
  v6 = type metadata accessor for StaticService(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v20) = *(a1 + *(v9 + 104));
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB2FE0 == v12)
  {
  }

  else
  {
    v13 = sub_1D1E6904C();

    v14 = 0;
    if ((v13 & 1) == 0)
    {
      return v14 & 1;
    }
  }

  sub_1D1B4D2C4(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D1741A30(v5, &qword_1EC6436F0, &qword_1D1E99BC0);
    v14 = 0;
  }

  else
  {
    sub_1D1B4D950(v5, v11, type metadata accessor for StaticService);
    v20 = *(a1 + *(v6 + 128));
    v19 = 3;
    v15 = sub_1D1CE4920(&v19);
    v20 = *&v11[*(v6 + 128)];
    v19 = 65;
    v16 = sub_1D1CE4920(&v19);
    sub_1D1B43A7C(v11, type metadata accessor for StaticService);
    if (v15 == 2)
    {
      v14 = v16 != 2;
    }

    else if (v16 == 2)
    {
      v14 = 1;
    }

    else
    {
      v14 = v15 ^ v16;
    }
  }

  return v14 & 1;
}

uint64_t sub_1D1B4D750(uint64_t a1)
{
  result = sub_1D1B4D7A8(&qword_1EC64B680, type metadata accessor for LeakAlarmStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B4D7A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1B4D7F0(uint64_t a1)
{
  result = sub_1D1B4D7A8(&qword_1EC64B688, type metadata accessor for LeakAlarmStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B4D848(uint64_t a1)
{
  result = sub_1D1B4D7A8(&qword_1EC64B690, type metadata accessor for IrrigationStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B4D8A0(uint64_t a1)
{
  result = sub_1D1B4D7A8(&qword_1EC64B698, type metadata accessor for FaucetStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B4D8F8(uint64_t a1)
{
  result = sub_1D1B4D7A8(&qword_1EC64B6A0, type metadata accessor for FaucetStatusItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1B4D950(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

HomeDataModel::UmbrellaCategory_optional __swiftcall UmbrellaCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D1E68C2C();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t UmbrellaCategory.iconColorBase.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (!*v0)
    {
      return sub_1D1E6735C();
    }

    if (v1 == 2)
    {
      return sub_1D1E673FC();
    }
  }

  else
  {
    switch(v1)
    {
      case 3u:
        return sub_1D1E673CC();
      case 4u:
        return sub_1D1E6738C();
      case 6u:
        return sub_1D1E6734C();
    }
  }

  return sub_1D1E673AC();
}

unint64_t UmbrellaCategory.rawValue.getter()
{
  *v0;
  *v0;
  *v0;
  *v0;
  return 0xD000000000000024;
}

void sub_1D1B4DB68(void *a1@<X8>)
{
  v2 = *v1;
  v3 = "00-8000-0026BB765291";
  v4 = "17-A590-755E1AAC02AE";
  if (v2 != 6)
  {
    v4 = "73-8FBD-0E8978A33403";
  }

  v5 = "60-AD68-D91053B75F44";
  if (v2 != 4)
  {
    v5 = "7E-BE63-1D00B1500545";
  }

  if (*v1 <= 5u)
  {
    v4 = v5;
  }

  v6 = "73-A058-C5E64BC487B2";
  if (v2 != 2)
  {
    v6 = "CE-986D-63B28F62C9E3";
  }

  if (*v1)
  {
    v3 = "13-AA62-01754F256DD5";
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  if (*v1 <= 3u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  *a1 = 0xD000000000000024;
  a1[1] = v7 | 0x8000000000000000;
}

uint64_t UmbrellaCategory.iconSymbol.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (!*v0)
    {
      return 0x6564616C626E6166;
    }

    if (v1 == 2)
    {
      return 0x6C7562746867696CLL;
    }
  }

  else
  {
    switch(v1)
    {
      case 3u:
        return 0xD00000000000001CLL;
      case 4u:
        v2 = 1801678700;
        return v2 | 0x6C69662E00000000;
      case 6u:
        v2 = 1886351972;
        return v2 | 0x6C69662E00000000;
    }
  }

  return 0xD00000000000001DLL;
}

uint64_t UmbrellaCategory.localizedDescription.getter()
{
  v1 = 0xD00000000000001DLL;
  v2 = *v0;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3u:
        return static String.hfLocalized(_:)(0xD000000000000026, 0x80000001D1EC53F0);
      case 4u:
        return static String.hfLocalized(_:)(0xD000000000000020, 0x80000001D1EC5420);
      case 6u:
        v3 = "HFAccessoryTypeGroupNameWater";
LABEL_15:
        v4 = (v3 - 32) | 0x8000000000000000;
        return static String.hfLocalized(_:)(v1, v4);
    }

    goto LABEL_14;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000001FLL;
    v3 = "HFAccessoryTypeGroupNameClimate";
    goto LABEL_15;
  }

  if (v2 != 2)
  {
LABEL_14:
    v3 = "HFAccessoryTypeGroupNameOther";
    goto LABEL_15;
  }

  v1 = 0xD00000000000001ELL;
  v4 = 0x80000001D1EC5450;
  return static String.hfLocalized(_:)(v1, v4);
}

uint64_t UmbrellaCategory.servicesKindsNotContributingToSummary.getter()
{
  if (*v0 == 4)
  {
    return sub_1D179ACDC(&unk_1F4D65DA0);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }
}

unint64_t sub_1D1B4DEB8()
{
  result = qword_1EC64B6A8;
  if (!qword_1EC64B6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64B6B0, &qword_1D1E9A8D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B6A8);
  }

  return result;
}

unint64_t sub_1D1B4DF20()
{
  result = qword_1EE07C950;
  if (!qword_1EE07C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07C950);
  }

  return result;
}

unint64_t sub_1D1B4DF78()
{
  result = qword_1EE07C958;
  if (!qword_1EE07C958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07C958);
  }

  return result;
}

unint64_t sub_1D1B4DFDC()
{
  result = qword_1EC64B6B8;
  if (!qword_1EC64B6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B6B8);
  }

  return result;
}

uint64_t sub_1D1B4E030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v10);
  v39 = a1;
  v14 = *(a2 + 16);
  if (v14)
  {
    v33 = v26 - v11;
    v34 = v13;
    v35 = v12;
    v26[1] = v4;
    v28 = type metadata accessor for StaticServiceCharacteristicDoublet();
    v15 = *(v28 - 8);
    v16 = *(v8 + 16);
    v37 = v8 + 16;
    v31 = (v8 + 8);
    v17 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v27 = *(v15 + 72);
    v32 = v16;
    while (1)
    {
      v38 = v14;
      v18 = v28;
      v36 = *(v28 + 20);
      v19 = v34;
      v20 = v35;
      v16(v34, v17 + v36, v35);
      v21 = v33;
      sub_1D1762CB8(v33, v19);
      v22 = *v31;
      (*v31)(v21, v20);
      v23 = v17 + *(v18 + 24);
      v24 = StaticCharacteristic.BOOLValue.getter();
      if (v24 == 2)
      {
        v16(v19, v17 + v36, v20);
      }

      else
      {
        if ((v24 & 1) == 0)
        {
          goto LABEL_5;
        }

        v19 = v34;
        v20 = v35;
        v21 = v33;
        v32(v34, v17 + v36, v35);
      }

      sub_1D1762CB8(v21, v19);
      v22(v21, v20);
LABEL_5:
      v17 += v27;
      v14 = v38 - 1;
      v16 = v32;
      if (v38 == 1)
      {
        return v39;
      }
    }
  }

  return a1;
}

uint64_t UmbrellaCategoryInformation.summary.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t UmbrellaCategoryInformation.shortSummary.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t UmbrellaCategoryInformation.foregroundColor.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (!*v0)
    {
      return sub_1D1E6735C();
    }

    if (v1 == 2)
    {
      return sub_1D1E673FC();
    }
  }

  else
  {
    switch(v1)
    {
      case 3u:
        return sub_1D1E673CC();
      case 4u:
        return sub_1D1E6738C();
      case 6u:
        return sub_1D1E6734C();
    }
  }

  return sub_1D1E673AC();
}

uint64_t UmbrellaCategoryInformation.iconSymbol.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (!*v0)
    {
      return 0x6564616C626E6166;
    }

    if (v1 == 2)
    {
      return 0x6C7562746867696CLL;
    }
  }

  else
  {
    switch(v1)
    {
      case 3u:
        return 0xD00000000000001CLL;
      case 4u:
        v2 = 1801678700;
        return v2 | 0x6C69662E00000000;
      case 6u:
        v2 = 1886351972;
        return v2 | 0x6C69662E00000000;
    }
  }

  return 0xD00000000000001DLL;
}

uint64_t UmbrellaCategoryInformation.status(stateSnapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v166 = a1;
  v172 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B6C0, &qword_1D1E9AA50);
  v170 = *(v3 - 8);
  v171 = v3;
  v4 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v159 = &v136 - v5;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B6C8, &qword_1D1E9AA58);
  v155 = *(v156 - 8);
  v6 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v156);
  v149 = &v136 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B6D0, &qword_1D1E9AA60);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v147 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v148 = &v136 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v146 = &v136 - v14;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B6D8, &qword_1D1E9AA68);
  v157 = *(v158 - 8);
  v15 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v158);
  v163 = &v136 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B6E0, &qword_1D1E9AA70);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v144 = &v136 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v145 = &v136 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v143 = &v136 - v23;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B6E8, &qword_1D1E9AA78);
  v164 = *(v165 - 8);
  v24 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v165);
  v154 = &v136 - v25;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B6F0, &qword_1D1E9AA80);
  v152 = *(v153 - 8);
  v26 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v153);
  v142 = &v136 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B6F8, &qword_1D1E9AA88);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v140 = &v136 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v141 = &v136 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v139 = &v136 - v34;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B700, &qword_1D1E9AA90);
  v151 = *(v150 - 8);
  v35 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v138 = &v136 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B708, &qword_1D1E9AA98);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v37 - 8);
  v137 = &v136 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v43 = &v136 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v136 - v44;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B710, &qword_1D1E9AAA0);
  v160 = *(v161 - 8);
  v46 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v48 = &v136 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B718, &qword_1D1E9AAA8);
  v168 = *(v49 - 8);
  v169 = v49;
  v50 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v162 = &v136 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B720, &qword_1D1E9AAB0);
  v53 = *(v52 - 8);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v56 = &v136 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B728, &qword_1D1E9AAB8);
  v58 = *(*(v57 - 8) + 64);
  v59 = MEMORY[0x1EEE9AC00](v57 - 8);
  v61 = &v136 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x1EEE9AC00](v59);
  v64 = &v136 - v63;
  MEMORY[0x1EEE9AC00](v62);
  v66 = &v136 - v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B730, &qword_1D1E9AAC0);
  v68 = *(*(v67 - 8) + 64);
  v69 = MEMORY[0x1EEE9AC00](v67);
  v70 = MEMORY[0x1EEE9AC00](v69);
  v71 = MEMORY[0x1EEE9AC00](v70);
  v167 = &v136 - v72;
  v75 = *v2;
  v74 = (v2 + 1);
  v73 = v75;
  v173 = v77;
  v174 = v76;
  if (v75 > 2)
  {
    if (v73 != 3)
    {
      v163 = v71;
      v78 = v172;
      if (v73 != 4)
      {
        if (v73 == 6)
        {
          v175 = 6;
          v79 = v74[3];
          v178 = v74[2];
          v179 = v79;
          *v180 = v74[4];
          *&v180[15] = *(v74 + 79);
          v80 = v74[1];
          v176 = *v74;
          v177 = v80;
          v81 = v146;
          UmbrellaCategoryInformation.waterStatus(stateSnapshot:)(v166, v146);
          v82 = v148;
          sub_1D1741C08(v81, v148, &qword_1EC64B6D0, &qword_1D1E9AA60);
          v83 = v147;
          sub_1D1741C08(v82, v147, &qword_1EC64B6D0, &qword_1D1E9AA60);
          v84 = v83;
          v85 = v149;
          sub_1D1741A90(v84, v149, &qword_1EC64B6D0, &qword_1D1E9AA60);
          sub_1D1741A30(v81, &qword_1EC64B6D0, &qword_1D1E9AA60);
          sub_1D1741A30(v82, &qword_1EC64B6D0, &qword_1D1E9AA60);
          v86 = v85;
          v87 = v159;
          sub_1D1741A90(v86, v159, &qword_1EC64B6C8, &qword_1D1E9AA58);
          (*(v155 + 56))(v87, 0, 1, v156);
          v88 = v171;
          *(v87 + *(v171 + 52)) = 1;
LABEL_15:
          v94 = v167;
          (*(v168 + 56))(v167, 1, 1, v169);
          v132 = *(v163 + 52);
          sub_1D1741A90(v87, v94 + v132, &qword_1EC64B6C0, &qword_1D1E9AA50);
          (*(v170 + 56))(v94 + v132, 0, 1, v88);
          goto LABEL_16;
        }

LABEL_14:
        v87 = v159;
        (*(v155 + 56))(v159, 1, 1, v156);
        v88 = v171;
        *(v87 + *(v171 + 52)) = 0;
        goto LABEL_15;
      }

      v175 = 4;
      v110 = v74[3];
      v178 = v74[2];
      v179 = v110;
      *v180 = v74[4];
      *&v180[15] = *(v74 + 79);
      v111 = v74[1];
      v176 = *v74;
      v177 = v111;
      v112 = v139;
      UmbrellaCategoryInformation.securityStatus(stateSnapshot:)(v166, v139);
      v113 = v141;
      sub_1D1741C08(v112, v141, &qword_1EC64B6F8, &qword_1D1E9AA88);
      v114 = v140;
      sub_1D1741C08(v113, v140, &qword_1EC64B6F8, &qword_1D1E9AA88);
      v115 = v114;
      v116 = v142;
      sub_1D1741A90(v115, v142, &qword_1EC64B6F8, &qword_1D1E9AA88);
      sub_1D1741A30(v112, &qword_1EC64B6F8, &qword_1D1E9AA88);
      sub_1D1741A30(v113, &qword_1EC64B6F8, &qword_1D1E9AA88);
      v117 = v154;
      sub_1D1741A90(v116, v154, &qword_1EC64B6F0, &qword_1D1E9AA80);
      (*(v152 + 56))(v117, 0, 1, v153);
      v118 = v165;
      (*(v157 + 56))(v117 + *(v165 + 52), 1, 1, v158);
      v119 = v162;
      (*(v160 + 56))(v162, 1, 1, v161);
      v120 = v169;
      v121 = *(v169 + 52);
      sub_1D1741A90(v117, v119 + v121, &qword_1EC64B6E8, &qword_1D1E9AA78);
      (*(v164 + 56))(v119 + v121, 0, 1, v118);
      v94 = v167;
      sub_1D1741A90(v119, v167, &qword_1EC64B718, &qword_1D1E9AAA8);
      (*(v168 + 56))(v94, 0, 1, v120);
      goto LABEL_11;
    }

    v175 = 3;
    v95 = v74[3];
    v178 = v74[2];
    v179 = v95;
    *v180 = v74[4];
    *&v180[15] = *(v74 + 79);
    v96 = v74[1];
    v176 = *v74;
    v177 = v96;
    v97 = v143;
    v98 = v71;
    UmbrellaCategoryInformation.speakerStatus(stateSnapshot:)(v166, v143);
    v99 = v145;
    sub_1D1741C08(v97, v145, &qword_1EC64B6E0, &qword_1D1E9AA70);
    v100 = v144;
    sub_1D1741C08(v99, v144, &qword_1EC64B6E0, &qword_1D1E9AA70);
    v101 = v100;
    v102 = v163;
    sub_1D1741A90(v101, v163, &qword_1EC64B6E0, &qword_1D1E9AA70);
    sub_1D1741A30(v97, &qword_1EC64B6E0, &qword_1D1E9AA70);
    sub_1D1741A30(v99, &qword_1EC64B6E0, &qword_1D1E9AA70);
    v103 = v154;
    (*(v152 + 56))(v154, 1, 1, v153);
    v104 = v165;
    v105 = *(v165 + 52);
    sub_1D1741A90(v102, v103 + v105, &qword_1EC64B6D8, &qword_1D1E9AA68);
    (*(v157 + 56))(v103 + v105, 0, 1, v158);
    v106 = v162;
    (*(v160 + 56))(v162, 1, 1, v161);
    v107 = v169;
    v108 = *(v169 + 52);
    sub_1D1741A90(v103, v106 + v108, &qword_1EC64B6E8, &qword_1D1E9AA78);
    (*(v164 + 56))(v106 + v108, 0, 1, v104);
    v94 = v167;
    sub_1D1741A90(v106, v167, &qword_1EC64B718, &qword_1D1E9AAA8);
    (*(v168 + 56))(v94, 0, 1, v107);
    v109 = *(v98 + 52);
LABEL_13:
    (*(v170 + 56))(v94 + v109, 1, 1, v171);
    v78 = v172;
    goto LABEL_16;
  }

  v157 = v53;
  v158 = v52;
  v163 = v71;
  if (!v73)
  {
    v175 = 0;
    v122 = v74[3];
    v178 = v74[2];
    v179 = v122;
    *v180 = v74[4];
    *&v180[15] = *(v74 + 79);
    v123 = v74[1];
    v176 = *v74;
    v177 = v123;
    UmbrellaCategoryInformation.climateStatus(stateSnapshot:)(v166, v45);
    sub_1D1741C08(v45, v43, &qword_1EC64B708, &qword_1D1E9AA98);
    v124 = v137;
    sub_1D1741C08(v43, v137, &qword_1EC64B708, &qword_1D1E9AA98);
    v125 = v138;
    sub_1D1741A90(v124, v138, &qword_1EC64B708, &qword_1D1E9AA98);
    sub_1D1741A30(v45, &qword_1EC64B708, &qword_1D1E9AA98);
    sub_1D1741A30(v43, &qword_1EC64B708, &qword_1D1E9AA98);
    v126 = v48;
    (*(v157 + 56))(v48, 1, 1, v158);
    v127 = v161;
    v128 = *(v161 + 52);
    sub_1D1741A90(v125, &v126[v128], &qword_1EC64B700, &qword_1D1E9AA90);
    (*(v151 + 56))(&v126[v128], 0, 1, v150);
    v129 = v126;
    v130 = v162;
    sub_1D1741A90(v129, v162, &qword_1EC64B710, &qword_1D1E9AAA0);
    (*(v160 + 56))(v130, 0, 1, v127);
    v131 = v169;
    (*(v164 + 56))(v130 + *(v169 + 52), 1, 1, v165);
    v94 = v167;
    sub_1D1741A90(v130, v167, &qword_1EC64B718, &qword_1D1E9AAA8);
    (*(v168 + 56))(v94, 0, 1, v131);
    v109 = *(v163 + 52);
    goto LABEL_13;
  }

  v78 = v172;
  if (v73 != 2)
  {
    goto LABEL_14;
  }

  v175 = 2;
  v89 = v74[3];
  v178 = v74[2];
  v179 = v89;
  *v180 = v74[4];
  *&v180[15] = *(v74 + 79);
  v90 = v74[1];
  v176 = *v74;
  v177 = v90;
  UmbrellaCategoryInformation.lightStatus(stateSnapshot:)(v166, v66);
  sub_1D1741C08(v66, v64, &qword_1EC64B728, &qword_1D1E9AAB8);
  sub_1D1741C08(v64, v61, &qword_1EC64B728, &qword_1D1E9AAB8);
  sub_1D1741A90(v61, v56, &qword_1EC64B728, &qword_1D1E9AAB8);
  sub_1D1741A30(v66, &qword_1EC64B728, &qword_1D1E9AAB8);
  sub_1D1741A30(v64, &qword_1EC64B728, &qword_1D1E9AAB8);
  sub_1D1741A90(v56, v48, &qword_1EC64B720, &qword_1D1E9AAB0);
  (*(v157 + 56))(v48, 0, 1, v158);
  v91 = v161;
  (*(v151 + 56))(&v48[*(v161 + 52)], 1, 1, v150);
  v92 = v162;
  sub_1D1741A90(v48, v162, &qword_1EC64B710, &qword_1D1E9AAA0);
  (*(v160 + 56))(v92, 0, 1, v91);
  v93 = v169;
  (*(v164 + 56))(v92 + *(v169 + 52), 1, 1, v165);
  v94 = v167;
  sub_1D1741A90(v92, v167, &qword_1EC64B718, &qword_1D1E9AAA8);
  (*(v168 + 56))(v94, 0, 1, v93);
LABEL_11:
  (*(v170 + 56))(v94 + *(v163 + 52), 1, 1, v171);
LABEL_16:
  v133 = v174;
  sub_1D1741C08(v94, v174, &qword_1EC64B730, &qword_1D1E9AAC0);
  v134 = v173;
  sub_1D1741C08(v133, v173, &qword_1EC64B730, &qword_1D1E9AAC0);
  sub_1D1741A90(v134, v78, &qword_1EC64B730, &qword_1D1E9AAC0);
  sub_1D1741A30(v94, &qword_1EC64B730, &qword_1D1E9AAC0);
  return sub_1D1741A30(v133, &qword_1EC64B730, &qword_1D1E9AAC0);
}

uint64_t UmbrellaCategoryInformation.init(for:stateSnapshot:room:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643878, &qword_1D1E72030);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v65 - v10;
  v12 = *a1;
  v70 = a3;
  sub_1D1741C08(a3, &v65 - v10, &qword_1EC643878, &qword_1D1E72030);
  v13 = type metadata accessor for StaticRoom(0);
  if ((*(*(v13 - 8) + 48))(v11, 1, v13) == 1)
  {
    sub_1D1741A30(v11, &qword_1EC643878, &qword_1D1E72030);
    v14 = *(a2 + *(type metadata accessor for StateSnapshot(0) + 32));
  }

  else
  {
    v14 = *&v11[*(v13 + 40)];

    sub_1D1B53BBC(v11, type metadata accessor for StaticRoom);
  }

  LOBYTE(v78[0]) = v12;
  v15 = _s13HomeDataModel27UmbrellaCategoryInformationV26categoryStaticAccessoryIds07servicedE04from13stateSnapshotShy10Foundation4UUIDVGAA0dE0O_SDyAjA0hI0VGAA05StateN0VtFZ_0(v78, v14);
  MEMORY[0x1EEE9AC00](v15);
  *(&v65 - 2) = a2;
  swift_bridgeObjectRetain_n();
  v16 = sub_1D1B52624(sub_1D1B53988, (&v65 - 4), v15);
  MEMORY[0x1EEE9AC00](v16);
  *(&v65 - 2) = a2;

  v17 = MEMORY[0x1E69E7CD0];
  v71 = sub_1D190104C(MEMORY[0x1E69E7CD0], sub_1D1B539A8, (&v65 - 4), v16);
  MEMORY[0x1EEE9AC00](v71);
  *(&v65 - 2) = a2;
  *(&v65 - 8) = v12;
  v18 = sub_1D18FBDE8(0, sub_1D1B539C4, (&v65 - 4), v16);

  v19 = *(v15 + 16);

  if (!v19)
  {
    goto LABEL_17;
  }

  if (v12 > 2)
  {
    switch(v12)
    {
      case 3:
        v69 = v18;

        v68 = a2;
        v36 = _s13HomeDataModel27UmbrellaCategoryInformationV16activeMediaCount13stateSnapshotSiAA05StateK0V_tFZ_0(a2);
        if (v36)
        {
          v78[0] = v36;
          v20 = sub_1D1E68FAC();
          v28 = v37;
          sub_1D1741A30(v70, &qword_1EC643878, &qword_1D1E72030);
          v38 = 0;
          v26 = 0;
        }

        else
        {
          v52 = static String.hfLocalized(_:)(0xD00000000000002CLL, 0x80000001D1EC54F0);
          v26 = v53;
          sub_1D1741A30(v70, &qword_1EC643878, &qword_1D1E72030);
          v38 = v52;
          v20 = 0;
          v28 = 0;
        }

        v33 = v17;
        v51 = v17;
        goto LABEL_31;
      case 4:

        v39 = sub_1D18D5304(MEMORY[0x1E69E7CC0]);
        v40 = MEMORY[0x1EEE9AC00](v39);
        v68 = a2;
        *(&v65 - 2) = a2;
        v41 = sub_1D190104C(v40, sub_1D1B53A14, (&v65 - 4), v16);
        v42 = _s13HomeDataModel18SecuritySummarizerO23securityIssueDictionary4fromSDyAA34StaticServiceCharacteristicDoubletVAA019IconTextValueStringB6HolderVGSDy10Foundation4UUIDVAA0J9AccessoryVG_tFZ_0(v41);

        v67 = sub_1D183DA40(v42);
        v44 = v43;

        v69 = v18;
        if (v18)
        {
          v78[0] = v18;
          v20 = sub_1D1E68FAC();
          v28 = v45;
          sub_1D1741A30(v70, &qword_1EC643878, &qword_1D1E72030);
        }

        else
        {
          sub_1D1741A30(v70, &qword_1EC643878, &qword_1D1E72030);
          v20 = 0;
          v28 = 0;
        }

        v17 = MEMORY[0x1E69E7CD0];
        v33 = MEMORY[0x1E69E7CD0];
        v51 = MEMORY[0x1E69E7CD0];
        v38 = v67;
        v26 = v44;
        goto LABEL_31;
      case 6:

        v20 = v18;
        v69 = v18;
        v68 = a2;
        if (v18)
        {
          static String.hfLocalized(_:)(0xD000000000000023, 0x80000001D1EC5490);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_1D1E73A90;
          *(v21 + 56) = MEMORY[0x1E69E6158];
          v22 = sub_1D1757D20();
          *(v21 + 32) = 7695397;
          *(v21 + 40) = 0xE300000000000000;
          v23 = MEMORY[0x1E69E65A8];
          *(v21 + 96) = MEMORY[0x1E69E6530];
          *(v21 + 104) = v23;
          *(v21 + 64) = v22;
          *(v21 + 72) = v18;
          v24 = sub_1D1E6784C();
          v26 = v25;

          v78[0] = v20;
          v20 = sub_1D1E68FAC();
          v28 = v27;
          sub_1D1741A30(v70, &qword_1EC643878, &qword_1D1E72030);
        }

        else
        {
          v24 = static String.hfLocalized(_:)(0xD000000000000027, 0x80000001D1EC54C0);
          v26 = v54;
          sub_1D1741A30(v70, &qword_1EC643878, &qword_1D1E72030);
          v28 = 0;
        }

        v17 = MEMORY[0x1E69E7CD0];
        v33 = MEMORY[0x1E69E7CD0];
        v51 = MEMORY[0x1E69E7CD0];
        v38 = v24;
        goto LABEL_31;
    }

LABEL_17:

    sub_1D1741A30(v70, &qword_1EC643878, &qword_1D1E72030);
    sub_1D1B53BBC(a2, type metadata accessor for StateSnapshot);

    a4[4] = 0u;
    a4[5] = 0u;
    a4[2] = 0u;
    a4[3] = 0u;
    *a4 = 0u;
    a4[1] = 0u;
    return result;
  }

  if (v12)
  {
    if (v12 == 2)
    {
      v78[0] = v17;
      *&v72 = v17;
      if (qword_1EC642190 != -1)
      {
        swift_once();
      }

      v68 = a2;
      v29 = sub_1D1828A0C(qword_1EC645000, 0, 0, 0, v14);
      v17 = sub_1D1B4E030(MEMORY[0x1E69E7CD0], v29, &v72, v78);

      v30 = *(v17 + 16);
      v66 = v72;
      v67 = sub_1D183A528(v30, *(v72 + 16));
      v32 = v31;

      v33 = v78[0];
      v69 = v18;
      if (v18)
      {
        v78[0] = v18;
        v20 = sub_1D1E68FAC();
        v28 = v34;
        sub_1D1741A30(v70, &qword_1EC643878, &qword_1D1E72030);
      }

      else
      {
        sub_1D1741A30(v70, &qword_1EC643878, &qword_1D1E72030);
        v20 = 0;
        v28 = 0;
      }

      v38 = v67;
      v26 = v32;
      v51 = v66;
      goto LABEL_31;
    }

    goto LABEL_17;
  }

  v69 = v18;

  LOBYTE(v78[0]) = 1;
  v46 = sub_1D18D5304(MEMORY[0x1E69E7CC0]);
  v47 = MEMORY[0x1EEE9AC00](v46);
  v68 = a2;
  *(&v65 - 2) = a2;
  v48 = sub_1D190104C(v47, sub_1D1B53C80, (&v65 - 4), v16);
  v49 = static ClimateSummarizer.climateSummary(context:from:)(v78, v48);
  v26 = v50;

  sub_1D1741A30(v70, &qword_1EC643878, &qword_1D1E72030);

  v38 = v49;
  v17 = MEMORY[0x1E69E7CD0];
  v33 = MEMORY[0x1E69E7CD0];
  v51 = MEMORY[0x1E69E7CD0];
  v20 = v49;
  v28 = v26;
LABEL_31:
  v67 = v28;
  LOBYTE(v72) = v12;
  *(&v72 + 1) = *v79;
  DWORD1(v72) = *&v79[3];
  *(&v72 + 1) = v15;
  *&v73 = v16;
  LODWORD(v70) = v12;
  v55 = v71;
  *(&v73 + 1) = v71;
  v56 = v69;
  *&v74 = v69;
  *(&v74 + 1) = v17;
  *&v75 = v33;
  *(&v75 + 1) = v51;
  *&v76 = v38;
  *(&v76 + 1) = v26;
  *&v77 = v20;
  *(&v77 + 1) = v28;
  v57 = v73;
  *a4 = v72;
  a4[1] = v57;
  v58 = v74;
  v59 = v75;
  v60 = v77;
  a4[4] = v76;
  a4[5] = v60;
  a4[2] = v58;
  a4[3] = v59;
  v61 = v38;
  v62 = v20;
  v63 = v26;
  v64 = v51;
  sub_1D1741914(&v72, v78);
  sub_1D1B53BBC(v68, type metadata accessor for StateSnapshot);
  LOBYTE(v78[0]) = v70;
  *(v78 + 1) = *v79;
  HIDWORD(v78[0]) = *&v79[3];
  v78[1] = v15;
  v78[2] = v16;
  v78[3] = v55;
  v78[4] = v56;
  v78[5] = v17;
  v78[6] = v33;
  v78[7] = v64;
  v78[8] = v61;
  v78[9] = v63;
  v78[10] = v62;
  v78[11] = v67;
  return sub_1D1B539E4(v78);
}

uint64_t static UmbrellaCategoryInformation.categoryStaticAccessoryIdsSkippingNonContributingToHomeStatus(categoryStaticAccessoryIds:stateSnapshot:)(uint64_t a1, uint64_t a2)
{
  v4[2] = a2;

  return sub_1D1B52624(sub_1D1B53CB0, v4, a1);
}

uint64_t static UmbrellaCategoryInformation.activeServiceCount(categoryStaticAccessoryIdsSkippingNonContributingToHomeStatus:category:stateSnapshot:)(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = *a2;
  v5[2] = a3;
  v6 = v3;
  return sub_1D18FBDE8(0, sub_1D1B53CD0, v5, a1);
}

uint64_t static UmbrellaCategoryInformation.shortSummary(count:)(uint64_t result)
{
  if (result)
  {
    return sub_1D1E68FAC();
  }

  return result;
}

uint64_t sub_1D1B50414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v23 - v7;
  v9 = sub_1D1E66A7C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a2);
  v14 = *(a3 + *(type metadata accessor for StateSnapshot(0) + 32));
  if (*(v14 + 16) && (v15 = sub_1D1742188(a2), (v16 & 1) != 0))
  {
    v17 = v15;
    v18 = *(v14 + 56);
    v19 = type metadata accessor for StaticAccessory(0);
    v20 = *(v19 - 8);
    sub_1D1B53B54(v18 + *(v20 + 72) * v17, v8, type metadata accessor for StaticAccessory);
    (*(v20 + 56))(v8, 0, 1, v19);
  }

  else
  {
    v21 = type metadata accessor for StaticAccessory(0);
    (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  }

  return sub_1D1B0CF04(v8, v12);
}

uint64_t UmbrellaCategoryInformation.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  v7 = *(v1 + 40);
  v6 = *(v1 + 48);
  v12 = *(v1 + 64);
  v8 = *(v1 + 72);
  v13 = *(v1 + 80);
  v14 = *(v1 + 56);
  v9 = *(v1 + 88);
  *v1;
  *v1;
  *v1;
  sub_1D1E678EC();

  sub_1D176D4E8(a1, v3);
  sub_1D176D4E8(a1, v2);
  sub_1D176D4E8(a1, v5);
  MEMORY[0x1D3892850](v4);
  sub_1D176D4E8(a1, v7);
  sub_1D176D4E8(a1, v6);
  sub_1D176D4E8(a1, v14);
  if (!v8)
  {
    sub_1D1E6922C();
    if (v9)
    {
      goto LABEL_3;
    }

    return sub_1D1E6922C();
  }

  sub_1D1E6922C();
  sub_1D1E678EC();
  if (!v9)
  {
    return sub_1D1E6922C();
  }

LABEL_3:
  sub_1D1E6922C();

  return sub_1D1E678EC();
}

uint64_t UmbrellaCategoryInformation.hashValue.getter()
{
  sub_1D1E6920C();
  UmbrellaCategoryInformation.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1B5088C()
{
  sub_1D1E6920C();
  UmbrellaCategoryInformation.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1B508D0()
{
  sub_1D1E6920C();
  UmbrellaCategoryInformation.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1B5090C(uint64_t a1, uint64_t a2)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v5 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v7 = &v40 - v6;
  v8 = type metadata accessor for StaticAccessory(0);
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - v14;
  v16 = *(a2 + *(type metadata accessor for StateSnapshot(0) + 32));
  if (!*(v16 + 16))
  {
    return 0;
  }

  v17 = sub_1D1742188(a1);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  sub_1D1B53B54(*(v16 + 56) + *(v9 + 72) * v17, v13, type metadata accessor for StaticAccessory);
  sub_1D1B53C1C(v13, v15);
  if (v15[v8[18]] != 1 || v15[v8[31]] != 1)
  {
    sub_1D1B53BBC(v15, type metadata accessor for StaticAccessory);
    return 0;
  }

  v40 = v2;
  v19 = *&v15[v8[20]];
  v20 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v19 + 64);
  v24 = (v21 + 63) >> 6;
  v41 = v19;
  result = swift_bridgeObjectRetain_n();
  v26 = 0;
  if (v23)
  {
    while (1)
    {
LABEL_17:
      while (1)
      {
        v29 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        v30 = v29 | (v26 << 6);
        v31 = v41;
        v32 = *(v41 + 48);
        v33 = sub_1D1E66A7C();
        (*(*(v33 - 8) + 16))(v7, v32 + *(*(v33 - 8) + 72) * v30, v33);
        v34 = *(v31 + 56);
        v35 = type metadata accessor for StaticService(0);
        v36 = v34 + *(*(v35 - 1) + 72) * v30;
        v37 = &v7[*(v42 + 48)];
        sub_1D1B53B54(v36, v37, type metadata accessor for StaticService);
        v38 = *(v37 + v35[9]);
        if (v38 == 2 || (v38 & 1) == 0)
        {
          break;
        }

        result = sub_1D1741A30(v7, &qword_1EC642DB0, &unk_1D1E6F360);
        if (!v23)
        {
          goto LABEL_13;
        }
      }

      v44 = *(v37 + v35[32]);
      v43 = *(v37 + v35[26]);

      v27 = StaticCharacteristicsBag.isReachable(for:)(&v43);

      result = sub_1D1741A30(v7, &qword_1EC642DB0, &unk_1D1E6F360);
      if (!v27)
      {
        break;
      }

      if (!v23)
      {
        goto LABEL_13;
      }
    }

    v39 = 0;
LABEL_22:

    sub_1D1B53BBC(v15, type metadata accessor for StaticAccessory);

    return v39;
  }

  else
  {
LABEL_13:
    while (1)
    {
      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v28 >= v24)
      {
        v39 = 1;
        goto LABEL_22;
      }

      v23 = *(v20 + 8 * v28);
      ++v26;
      if (v23)
      {
        v26 = v28;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1B50CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v57 = v7;
  v58 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v48 - v13;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v14 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v16 = &v48 - v15;
  v17 = type metadata accessor for StaticAccessory(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v53 = &v48 - v23;
  result = type metadata accessor for StateSnapshot(0);
  v25 = *(a3 + *(result + 32));
  if (*(v25 + 16))
  {
    result = sub_1D1742188(a2);
    if (v26)
    {
      v49 = v12;
      v50 = a1;
      v51 = v3;
      sub_1D1B53B54(*(v25 + 56) + *(v18 + 72) * result, v22, type metadata accessor for StaticAccessory);
      v27 = v53;
      sub_1D1B53C1C(v22, v53);
      v28 = *(v27 + *(v17 + 80));
      v29 = v28 + 64;
      v30 = 1 << *(v28 + 32);
      v31 = -1;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      v32 = v31 & *(v28 + 64);
      v33 = (v30 + 63) >> 6;
      v54 = v58 + 16;
      v55 = v28;
      v48 = (v58 + 8);
      result = swift_bridgeObjectRetain_n();
      v34 = 0;
      while (v32)
      {
LABEL_13:
        v39 = __clz(__rbit64(v32)) | (v34 << 6);
        v40 = v55;
        v41 = *(v58 + 16);
        v41(v16, *(v55 + 48) + *(v58 + 72) * v39, v57);
        v42 = *(v40 + 56);
        v43 = type metadata accessor for StaticService(0);
        v44 = v42 + *(*(v43 - 1) + 72) * v39;
        v45 = &v16[*(v56 + 48)];
        sub_1D1B53B54(v44, v45, type metadata accessor for StaticService);
        if (*(v45 + v43[24]) == 1 && *(v45 + v43[8]) == 1)
        {
          if ((v46 = *(v45 + v43[9]), v46 != 2) && (v46 & 1) != 0 || (v60 = *(v45 + v43[32]), v59 = *(v45 + v43[26]), , v47 = StaticCharacteristicsBag.isReachable(for:)(&v59), , v47))
          {
            v35 = v49;
            v36 = v57;
            v41(v49, v16, v57);
            v37 = v52;
            sub_1D1762CB8(v52, v35);
            (*v48)(v37, v36);
          }
        }

        v32 &= v32 - 1;
        result = sub_1D1741A30(v16, &qword_1EC642DB0, &unk_1D1E6F360);
      }

      while (1)
      {
        v38 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v38 >= v33)
        {

          sub_1D1B53BBC(v53, type metadata accessor for StaticAccessory);
        }

        v32 = *(v29 + 8 * v38);
        ++v34;
        if (v32)
        {
          v34 = v38;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D1B51148(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for StaticAccessory(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v22 - v14;
  result = type metadata accessor for StateSnapshot(0);
  v17 = *(a3 + *(result + 32));
  if (*(v17 + 16))
  {
    result = sub_1D1742188(a2);
    if (v18)
    {
      sub_1D1B53B54(*(v17 + 56) + *(v9 + 72) * result, v13, type metadata accessor for StaticAccessory);
      sub_1D1B53C1C(v13, v15);
      v19 = sub_1D1B5134C(*&v15[*(v8 + 80)], a4, sub_1D1B5172C, sub_1D1B5172C);
      v20 = sub_1D1B5134C(v19, a4, sub_1D1B514D0, sub_1D1B514D0);

      sub_1D1B53BBC(v15, type metadata accessor for StaticAccessory);
      v21 = *(v20 + 16);

      if (__OFADD__(*a1, v21))
      {
        __break(1u);
      }

      else
      {
        *a1 += v21;
      }
    }
  }

  return result;
}

uint64_t sub_1D1B5134C(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  v7 = a1;
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v9 = ((1 << v8) + 63) >> 6;
  if ((v8 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v11 = v17 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v11, v10);
    result = a3(v11, v9, v7, a2);
    if (v4)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v15 = swift_slowAlloc();
  v16 = sub_1D1B51AC8(v15, v9, v7, a2, a4);
  result = MEMORY[0x1D3893640](v15, -1, -1);
  if (!v4)
  {
    result = v16;
  }

LABEL_4:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1B514D0(unint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v23 = a2;
  v27 = a4;
  v24 = a1;
  v5 = type metadata accessor for StaticService(0);
  v26 = *(v5 - 1);
  v6 = *(v26 + 64);
  result = MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0;
  v10 = 0;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_12:
    v18 = v15 | (v10 << 6);
    sub_1D1B53B54(*(a3 + 56) + *(v26 + 72) * v18, v9, type metadata accessor for StaticService);
    v19 = v9[v5[28]];
    if (v19 == 53)
    {
      LOBYTE(v19) = v9[v5[26]];
    }

    v28[1] = v19;
    ServiceKind.umbrellaCategory.getter(v28);
    if ((sub_1D179F48C(v28[0], v27) & 1) != 0 && v9[v5[24]] == 1)
    {
      v20 = StaticService.isActivated.getter();
      result = sub_1D1B53BBC(v9, type metadata accessor for StaticService);
      if (v20)
      {
        *(v24 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        if (__OFADD__(v25++, 1))
        {
          __break(1u);
          return sub_1D188B1C8(v24, v23, v25, a3);
        }
      }
    }

    else
    {
      result = sub_1D1B53BBC(v9, type metadata accessor for StaticService);
    }
  }

  v16 = v10;
  while (1)
  {
    v10 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v10 >= v14)
    {
      return sub_1D188B1C8(v24, v23, v25, a3);
    }

    v17 = *(a3 + 64 + 8 * v10);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1B5172C(unint64_t *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v36 = a2;
  v38 = a1;
  v45 = type metadata accessor for StaticService(0);
  v42 = *(v45 - 8);
  v6 = *(v42 + 64);
  result = MEMORY[0x1EEE9AC00](v45);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v44 = a3;
  v11 = *(a3 + 64);
  v37 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & v11;
  v15 = (v12 + 63) >> 6;
  v48 = a4;
  v39 = 0;
  v40 = v15;
  v41 = v9;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v46 = (v14 - 1) & v14;
LABEL_14:
    v19 = v16 | (v10 << 6);
    v20 = v44[7];
    v21 = *(v42 + 72);
    v43 = v19;
    sub_1D1B53B54(v20 + v21 * v19, v9, type metadata accessor for StaticService);
    v22 = MEMORY[0x1E69E7CD0];
    if (v48 == 4)
    {
      v22 = sub_1D179ACDC(&unk_1F4D65DC8);
    }

    v23 = v9[*(v45 + 112)];
    if (v23 == 53)
    {
      LOBYTE(v23) = v9[*(v45 + 104)];
    }

    if (!*(v22 + 16))
    {
      goto LABEL_27;
    }

    v24 = *(v22 + 40);
    sub_1D1E6920C();
    v49 = v23;
    ServiceKind.rawValue.getter();
    sub_1D1E678EC();

    v25 = sub_1D1E6926C();
    v26 = -1 << *(v22 + 32);
    v27 = v25 & ~v26;
    if ((*(v22 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
    {
      v28 = ~v26;
      while (1)
      {
        v47 = *(*(v22 + 48) + v27);
        v49 = v23;
        v29 = ServiceKind.rawValue.getter();
        v31 = v30;
        if (v29 == ServiceKind.rawValue.getter() && v31 == v32)
        {
          break;
        }

        v34 = sub_1D1E6904C();

        if (v34)
        {
          goto LABEL_6;
        }

        v27 = (v27 + 1) & v28;
        if (((*(v22 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

LABEL_6:

      v9 = v41;
      result = sub_1D1B53BBC(v41, type metadata accessor for StaticService);
      v15 = v40;
      v14 = v46;
    }

    else
    {
LABEL_27:

      v9 = v41;
      result = sub_1D1B53BBC(v41, type metadata accessor for StaticService);
      *(v38 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      v15 = v40;
      v35 = __OFADD__(v39++, 1);
      v14 = v46;
      if (v35)
      {
        __break(1u);
        return sub_1D188B1C8(v38, v36, v39, v44);
      }
    }
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
      return sub_1D188B1C8(v38, v36, v39, v44);
    }

    v18 = *(v37 + 8 * v10);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v46 = (v18 - 1) & v18;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D1B51AC8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v7 = result;
      v8 = a2;
      bzero(result, 8 * a2);
      result = v7;
      a2 = v8;
    }

    v9 = a5(result, a2, a3);

    return v9;
  }

  return result;
}

void *sub_1D1B51B58(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a6(result, a2, a3);

    return v10;
  }

  return result;
}

uint64_t sub_1D1B51BF8(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v36 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for StaticAccessory(0);
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a3 + 32);
  v11 = ((1 << v9) + 63) >> 6;
  if ((v9 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v29 = v11;
    v31 = &v29;
    MEMORY[0x1EEE9AC00](v8);
    v30 = &v29 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v30, v12);
    v32 = 0;
    v11 = 0;
    v35 = a3;
    v14 = *(a3 + 56);
    a3 += 56;
    v13 = v14;
    v15 = 1 << *(a3 - 24);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & v13;
    v18 = (v15 + 63) >> 6;
    while (v17)
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_12:
      v22 = v19 | (v11 << 6);
      sub_1D1B53B54(*(v35 + 48) + *(v33 + 72) * v22, v10, type metadata accessor for StaticAccessory);
      v23 = v34(v10);
      sub_1D1B53BBC(v10, type metadata accessor for StaticAccessory);
      if (v3)
      {

        result = swift_willThrow();
        goto LABEL_18;
      }

      if (v23)
      {
        *&v30[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
LABEL_17:
          result = sub_1D19E073C(v30, v29, v32, v35);
          goto LABEL_18;
        }
      }
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v18)
      {
        goto LABEL_17;
      }

      v21 = *(a3 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();
  v28 = sub_1D1BCEE08(v27, v11, a3, v34, a2);

  result = MEMORY[0x1D3893640](v27, -1, -1);
  if (!v3)
  {
    result = v28;
  }

LABEL_18:
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1B51F30(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v36 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for StaticServiceGroup();
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a3 + 32);
  v11 = ((1 << v9) + 63) >> 6;
  if ((v9 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v29 = v11;
    v31 = &v29;
    MEMORY[0x1EEE9AC00](v8);
    v30 = &v29 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v30, v12);
    v32 = 0;
    v11 = 0;
    v35 = a3;
    v14 = *(a3 + 56);
    a3 += 56;
    v13 = v14;
    v15 = 1 << *(a3 - 24);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & v13;
    v18 = (v15 + 63) >> 6;
    while (v17)
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_12:
      v22 = v19 | (v11 << 6);
      sub_1D1B53B54(*(v35 + 48) + *(v33 + 72) * v22, v10, type metadata accessor for StaticServiceGroup);
      v23 = v34(v10);
      sub_1D1B53BBC(v10, type metadata accessor for StaticServiceGroup);
      if (v3)
      {

        result = swift_willThrow();
        goto LABEL_18;
      }

      if (v23)
      {
        *&v30[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
LABEL_17:
          result = sub_1D19E0C6C(v30, v29, v32, v35);
          goto LABEL_18;
        }
      }
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v18)
      {
        goto LABEL_17;
      }

      v21 = *(a3 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();
  v28 = sub_1D1CD19AC(v27, v11, a3, v34, a2);

  result = MEMORY[0x1D3893640](v27, -1, -1);
  if (!v3)
  {
    result = v28;
  }

LABEL_18:
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1B52268(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v36 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for StaticService(0);
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a3 + 32);
  v11 = ((1 << v9) + 63) >> 6;
  if ((v9 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v29 = v11;
    v31 = &v29;
    MEMORY[0x1EEE9AC00](v8);
    v30 = &v29 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v30, v12);
    v32 = 0;
    v11 = 0;
    v35 = a3;
    v14 = *(a3 + 56);
    a3 += 56;
    v13 = v14;
    v15 = 1 << *(a3 - 24);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & v13;
    v18 = (v15 + 63) >> 6;
    while (v17)
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_12:
      v22 = v19 | (v11 << 6);
      sub_1D1B53B54(*(v35 + 48) + *(v33 + 72) * v22, v10, type metadata accessor for StaticService);
      v23 = v34(v10);
      sub_1D1B53BBC(v10, type metadata accessor for StaticService);
      if (v3)
      {

        result = swift_willThrow();
        goto LABEL_18;
      }

      if (v23)
      {
        *&v30[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
LABEL_17:
          result = sub_1D19E0ED0(v30, v29, v32, v35);
          goto LABEL_18;
        }
      }
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v18)
      {
        goto LABEL_17;
      }

      v21 = *(a3 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();
  v28 = sub_1D1CD19D8(v27, v11, a3, v34, a2);

  result = MEMORY[0x1D3893640](v27, -1, -1);
  if (!v3)
  {
    result = v28;
  }

LABEL_18:
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1B525A0(uint64_t (*a1)(uint64_t), uint64_t a2, unint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  result = sub_1D1B52DA0(a1, a2, a3, &qword_1EC643018, &qword_1D1E9AC00, sub_1D19E16BC, sub_1D19FB00C);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1B52624(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v46 = a1;
  v50 = *MEMORY[0x1E69E9840];
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v11) = *(a3 + 32);
  v13 = ((1 << v11) + 63) >> 6;
  if ((v11 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v44 = v12;
    v45 = v10;
    v38 = v13;
    v49 = v4;
    v40 = &v37;
    MEMORY[0x1EEE9AC00](v10);
    v39 = &v37 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v39, v14);
    v15 = 0;
    v47 = a3;
    v17 = *(a3 + 56);
    a3 += 56;
    v16 = v17;
    v18 = 1 << *(a3 - 24);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v16;
    v12 = ((v18 + 63) >> 6);
    v41 = 0;
    v42 = v8 + 2;
    v43 = (v8 + 1);
    while (v20)
    {
      v21 = __clz(__rbit64(v20));
      v48 = (v20 - 1) & v20;
LABEL_12:
      v13 = v21 | (v15 << 6);
      v24 = *(v47 + 48) + v8[9] * v13;
      v4 = v8;
      v25 = v8[2];
      v26 = v44;
      v27 = v45;
      v25(v44, v24, v45);
      v28 = v49;
      v29 = v46(v26);
      v49 = v28;
      if (v28)
      {
        (*v43)(v26, v27);

        result = swift_willThrow();
        goto LABEL_18;
      }

      v30 = v29;
      v10 = (*v43)(v26, v27);
      v8 = v4;
      v20 = v48;
      if (v30)
      {
        *&v39[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
        if (__OFADD__(v41++, 1))
        {
          __break(1u);
LABEL_17:
          result = sub_1D19E13B0(v39, v38, v41, v47);
          goto LABEL_18;
        }
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

      if (v15 >= v12)
      {
        goto LABEL_17;
      }

      v23 = *(a3 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v48 = (v23 - 1) & v23;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v34 = v10;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v10 = v34;
  }

  v35 = swift_slowAlloc();
  v36 = sub_1D1B51B58(v35, v13, a3, v46, a2, sub_1D19FB190);

  result = MEMORY[0x1D3893640](v35, -1, -1);
  if (!v4)
  {
    result = v36;
  }

LABEL_18:
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1B529D0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v36 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for StaticRoom(0);
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a3 + 32);
  v11 = ((1 << v9) + 63) >> 6;
  if ((v9 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v29 = v11;
    v31 = &v29;
    MEMORY[0x1EEE9AC00](v8);
    v30 = &v29 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v30, v12);
    v32 = 0;
    v11 = 0;
    v35 = a3;
    v14 = *(a3 + 56);
    a3 += 56;
    v13 = v14;
    v15 = 1 << *(a3 - 24);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & v13;
    v18 = (v15 + 63) >> 6;
    while (v17)
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_12:
      v22 = v19 | (v11 << 6);
      sub_1D1B53B54(*(v35 + 48) + *(v33 + 72) * v22, v10, type metadata accessor for StaticRoom);
      v23 = v34(v10);
      sub_1D1B53BBC(v10, type metadata accessor for StaticRoom);
      if (v3)
      {

        result = swift_willThrow();
        goto LABEL_18;
      }

      if (v23)
      {
        *&v30[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
LABEL_17:
          result = sub_1D19E2594(v30, v29, v32, v35);
          goto LABEL_18;
        }
      }
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v18)
      {
        goto LABEL_17;
      }

      v21 = *(a3 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();
  v28 = sub_1D1B51B58(v27, v11, a3, v34, a2, sub_1D19FB444);

  result = MEMORY[0x1D3893640](v27, -1, -1);
  if (!v3)
  {
    result = v28;
  }

LABEL_18:
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1B52D1C(uint64_t (*a1)(uint64_t), uint64_t a2, unint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  result = sub_1D1B52DA0(a1, a2, a3, &qword_1EC643010, &qword_1D1E90E20, sub_1D19E29F8, sub_1D19FB498);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1B52DA0(uint64_t (*a1)(uint64_t), uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void *, uint64_t, uint64_t))
{
  v10 = v7;
  v45 = a1;
  v49 = *MEMORY[0x1E69E9840];
  v43 = a4;
  v44 = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v42 = *(v13 - 8);
  v14 = *(v42 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v41 = &v34 - v16;
  LOBYTE(v16) = *(a3 + 32);
  v17 = ((1 << v16) + 63) >> 6;
  v18 = 8 * v17;
  if ((v16 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v35 = v17;
    v36 = a6;
    v48 = v10;
    v38 = &v34;
    MEMORY[0x1EEE9AC00](v15);
    v37 = &v34 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v18);
    a7 = 0;
    v46 = a3;
    v20 = *(a3 + 56);
    a3 += 56;
    v19 = v20;
    v39 = 0;
    v40 = a3;
    v21 = 1 << *(a3 - 24);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v19;
    v24 = (v21 + 63) >> 6;
    while (v23)
    {
      v25 = __clz(__rbit64(v23));
      v47 = (v23 - 1) & v23;
LABEL_12:
      a6 = v41;
      a3 = v25 | (a7 << 6);
      v10 = v43;
      v17 = v44;
      sub_1D1741C08(*(v46 + 48) + *(v42 + 72) * a3, v41, v43, v44);
      v28 = v48;
      v18 = v45(a6);
      sub_1D1741A30(a6, v10, v17);
      v48 = v28;
      if (v28)
      {

        result = swift_willThrow();
        goto LABEL_18;
      }

      v23 = v47;
      if (v18)
      {
        *&v37[(a3 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << a3;
        if (__OFADD__(v39++, 1))
        {
          __break(1u);
LABEL_17:
          result = v36(v37, v35, v39, v46);
          goto LABEL_18;
        }
      }
    }

    v26 = a7;
    while (1)
    {
      a7 = (v26 + 1);
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (a7 >= v24)
      {
        goto LABEL_17;
      }

      v27 = *(v40 + 8 * a7);
      v26 = (v26 + 1);
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v47 = (v27 - 1) & v27;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v32 = swift_slowAlloc();
  v33 = sub_1D1B51B58(v32, v17, a3, v45, a2, a7);

  result = MEMORY[0x1D3893640](v32, -1, -1);
  if (!v10)
  {
    result = v33;
  }

LABEL_18:
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _s13HomeDataModel27UmbrellaCategoryInformationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v21 = *(a1 + 72);
  v14 = *(a1 + 80);
  v19 = *(a1 + 88);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v10 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  v24 = *(a2 + 48);
  v25 = *(a1 + 48);
  v22 = *(a2 + 56);
  v23 = *(a1 + 56);
  v16 = *(a2 + 64);
  v17 = *(a1 + 64);
  v20 = *(a2 + 72);
  v15 = *(a2 + 80);
  v18 = *(a2 + 88);
  if ((sub_1D179F48C(*a1, *a2) & 1) == 0 || (sub_1D17A6E98(v3, v7) & 1) == 0 || (sub_1D17A6E98(v2, v8) & 1) == 0)
  {
    return 0;
  }

  v12 = sub_1D17A6E98(v4, v10);
  result = 0;
  if ((v12 & 1) != 0 && v5 == v9)
  {
    if ((sub_1D17A6E98(v6, v11) & 1) == 0 || (sub_1D17A6E98(v25, v24) & 1) == 0 || (sub_1D17A6E98(v23, v22) & 1) == 0)
    {
      return 0;
    }

    if (v21)
    {
      if (!v20 || (v17 != v16 || v21 != v20) && (sub_1D1E6904C() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v20)
    {
      return 0;
    }

    if (v19)
    {
      if (v18 && (v14 == v15 && v19 == v18 || (sub_1D1E6904C() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v18)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t _s13HomeDataModel27UmbrellaCategoryInformationV26categoryStaticAccessoryIds07servicedE04from13stateSnapshotShy10Foundation4UUIDVGAA0dE0O_SDyAjA0hI0VGAA05StateN0VtFZ_0(_BYTE *a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v9 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v83 = &v66 - v10;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
  v11 = *(*(v74 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v74);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v66 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v75 = &v66 - v18;
  v19 = *a1;
  if (v19 <= 3)
  {
    if (*a1 <= 1u)
    {
      v20 = "00-8000-0026BB765291";
      if (*a1)
      {
        v20 = "13-AA62-01754F256DD5";
      }

      goto LABEL_17;
    }

    if (v19 != 2)
    {
      v20 = "CE-986D-63B28F62C9E3";
      goto LABEL_17;
    }

    v21 = "563F7D20-6AFC-44CE-986D-63B28F62C9E3";
LABEL_15:
    v20 = (v21 - 32);
    goto LABEL_17;
  }

  if (*a1 <= 5u)
  {
    if (v19 == 4)
    {
      v21 = "430C9F25-44E0-4F7E-BE63-1D00B1500545";
    }

    else
    {
      v21 = "63489665-5E39-4C17-A590-755E1AAC02AE";
    }

    goto LABEL_15;
  }

  v20 = "17-A590-755E1AAC02AE";
  if (v19 != 6)
  {
    v20 = "73-8FBD-0E8978A33403";
  }

LABEL_17:
  if ((v20 | 0x8000000000000000) == 0x80000001D1EB3730)
  {

LABEL_20:

    return _s13HomeDataModel27UmbrellaCategoryInformationV05mediaE18StaticAccessoryIds11accessoriesShy10Foundation4UUIDVGSDyAhA0hI0VG_tFZ_0(a2);
  }

  v77 = *a1;
  v22 = sub_1D1E6904C();

  if (v22)
  {
    goto LABEL_20;
  }

  v66 = v14;
  v67 = v8;
  v84 = MEMORY[0x1E69E7CD0];
  v24 = a2 + 64;
  v25 = 1 << *(a2 + 32);
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & *(a2 + 64);
  v28 = (v25 + 63) >> 6;
  v81 = v5 + 2;
  v73 = (v5 + 1);

  v29 = 0;
  v68 = v28;
  v69 = a2 + 64;
  v70 = a2;
  v71 = v17;
  v72 = v5;
  v76 = v4;
LABEL_29:
  if (v27)
  {
    v30 = v29;
LABEL_34:
    v31 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v32 = v31 | (v30 << 6);
    v33 = *(a2 + 48);
    v79 = v5[9];
    v34 = v75;
    v78 = v5[2];
    v78(v75, v33 + v79 * v32, v4);
    v35 = *(a2 + 56);
    v36 = (type metadata accessor for StaticAccessory(0) - 8);
    v37 = v35 + *(*v36 + 72) * v32;
    v38 = v74;
    sub_1D1B53B54(v37, v34 + *(v74 + 48), type metadata accessor for StaticAccessory);
    sub_1D1741C08(v34, v17, &qword_1EC644B30, &qword_1D1E77280);
    v39 = &v17[*(v38 + 48)];
    v40 = *(v39 + v36[22]);

    sub_1D1B53BBC(v39, type metadata accessor for StaticAccessory);
    v41 = v40 + 64;
    v42 = 1 << *(v40 + 32);
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    else
    {
      v43 = -1;
    }

    v44 = v43 & *(v40 + 64);
    v45 = (v42 + 63) >> 6;
    v82 = v40;

    v46 = 0;
    while (v44)
    {
LABEL_45:
      v49 = __clz(__rbit64(v44)) | (v46 << 6);
      v50 = v82;
      v51 = v83;
      v78(v83, *(v82 + 48) + v49 * v79, v4);
      v52 = *(v50 + 56);
      v53 = type metadata accessor for StaticService(0);
      v54 = v52 + *(*(v53 - 1) + 72) * v49;
      v55 = v51 + *(v80 + 48);
      sub_1D1B53B54(v54, v55, type metadata accessor for StaticService);
      v56 = *(v55 + v53[28]);
      if (v56 == 53)
      {
        LOBYTE(v56) = *(v55 + v53[26]);
      }

      v44 &= v44 - 1;
      if (sub_1D179F48C(byte_1D1E9AC0A[v56], v77))
      {
        v57 = *(v55 + v53[24]);
        result = sub_1D1741A30(v83, &qword_1EC642DB0, &unk_1D1E6F360);
        v4 = v76;
        if (v57)
        {
          v58 = 1;
          v47 = v73;
LABEL_51:

          v59 = *v47;
          v17 = v71;
          (*v47)(v71, v4);
          v5 = v72;
          if (v58)
          {
            v60 = v75;
            v61 = v66;
            sub_1D1741C08(v75, v66, &qword_1EC644B30, &qword_1D1E77280);
            v62 = *(v74 + 48);
            v63 = v67;
            sub_1D1762CB8(v67, v61);
            v64 = v63;
            v17 = v71;
            v59(v64, v4);
            sub_1D1741A30(v60, &qword_1EC644B30, &qword_1D1E77280);
            v65 = &v61[v62];
            v5 = v72;
            result = sub_1D1B53BBC(v65, type metadata accessor for StaticAccessory);
          }

          else
          {
            result = sub_1D1741A30(v75, &qword_1EC644B30, &qword_1D1E77280);
          }

          v29 = v30;
          v24 = v69;
          a2 = v70;
          v28 = v68;
          goto LABEL_29;
        }
      }

      else
      {
        result = sub_1D1741A30(v83, &qword_1EC642DB0, &unk_1D1E6F360);
        v4 = v76;
      }
    }

    v47 = v73;
    while (1)
    {
      v48 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v48 >= v45)
      {
        v58 = 0;
        goto LABEL_51;
      }

      v44 = *(v41 + 8 * v48);
      ++v46;
      if (v44)
      {
        v46 = v48;
        goto LABEL_45;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v30 >= v28)
      {

        return v84;
      }

      v27 = *(v24 + 8 * v30);
      ++v29;
      if (v27)
      {
        goto LABEL_34;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D1B53A34()
{
  result = qword_1EC64B738;
  if (!qword_1EC64B738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B738);
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

uint64_t sub_1D1B53AA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1D1B53AEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D1B53B54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B53BBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1B53C1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticAccessory(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1B53CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v176 = a2;
  v3 = 0xD000000000000024;
  v174 = type metadata accessor for TilesFilter(0);
  v4 = *(*(v174 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v174);
  v175 = &v168 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v173 = &v168 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v169 = &v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v177 = &v168 - v12;
  v171 = type metadata accessor for IconTextValueStringDataHolder();
  v13 = *(*(v171 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v171);
  v170 = &v168 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v172 = &v168 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v179 = &v168 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v178 = &v168 - v21;
  v195 = type metadata accessor for StaticService(0);
  v182 = *(v195 - 8);
  v22 = *(v182 + 64);
  v23 = MEMORY[0x1EEE9AC00](v195);
  v25 = &v168 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v181 = &v168 - v26;
  v194 = sub_1D1E66A7C();
  v27 = *(v194 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v194);
  v168 = &v168 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v180 = &v168 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v192 = &v168 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8);
  v38 = &v168 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v168 - v39;
  v41 = 0;
  v185 = a1;
  v44 = *(a1 + 64);
  v43 = a1 + 64;
  v42 = v44;
  v45 = 1 << *(v43 - 32);
  v46 = -1;
  v203 = MEMORY[0x1E69E7CD0];
  v204 = MEMORY[0x1E69E7CD0];
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & v42;
  v201 = MEMORY[0x1E69E7CD0];
  v202 = MEMORY[0x1E69E7CD0];
  v48 = (v45 + 63) >> 6;
  v191 = (v27 + 16);
  v184 = (v27 + 32);
  v198 = 0x80000001D1EB3670;
  v183 = v27;
  v189 = v38;
  v190 = &v168 - v39;
  v186 = v48;
  v187 = v43;
  v193 = v25;
  v188 = (v27 + 8);
  while (1)
  {
    if (!v47)
    {
      if (v48 <= v41 + 1)
      {
        v50 = v41 + 1;
      }

      else
      {
        v50 = v48;
      }

      v51 = v50 - 1;
      while (1)
      {
        v49 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          break;
        }

        if (v49 >= v48)
        {
          v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
          (*(*(v81 - 8) + 56))(v38, 1, 1, v81);
          v47 = 0;
          v41 = v51;
          goto LABEL_17;
        }

        v47 = *(v43 + 8 * v49);
        ++v41;
        if (v47)
        {
          v41 = v49;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_115;
    }

    v49 = v41;
LABEL_16:
    v52 = __clz(__rbit64(v47));
    v47 &= v47 - 1;
    v53 = v52 | (v49 << 6);
    v54 = v185;
    v55 = v183;
    (*(v183 + 16))(v192, *(v185 + 48) + *(v183 + 72) * v53, v194);
    v56 = v181;
    sub_1D1B615D8(*(v54 + 56) + *(v182 + 72) * v53, v181, type metadata accessor for StaticService);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
    v58 = *(v57 + 48);
    v38 = v189;
    (*(v55 + 32))();
    sub_1D1B61510(v56, &v38[v58], type metadata accessor for StaticService);
    (*(*(v57 - 8) + 56))(v38, 0, 1, v57);
    v40 = v190;
    v3 = 0xD000000000000024;
    v25 = v193;
LABEL_17:
    sub_1D1741A90(v38, v40, &qword_1EC643C68, &unk_1D1E764C0);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
    v60 = (*(*(v59 - 8) + 48))(v40, 1, v59);
    v61 = v195;
    if (v60 == 1)
    {
      break;
    }

    sub_1D1B61510(&v40[*(v59 + 48)], v25, type metadata accessor for StaticService);
    v196 = v61[26];
    LODWORD(v197) = v25[v196];
    LOBYTE(v200) = v197;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v198 == v62)
    {
    }

    else
    {
      v63 = sub_1D1E6904C();

      if ((v63 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    LOBYTE(v200) = v25[v196];
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v198 == v64)
    {
    }

    else
    {
      v65 = sub_1D1E6904C();

      if ((v65 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    v66 = *&v25[v61[32]];
    if (*(v66 + 16) && (v67 = sub_1D171D140(88), (v68 & 1) != 0))
    {
      v69 = v67;
      v70 = v61;
      v71 = *(v66 + 56);
      v72 = type metadata accessor for StaticCharacteristic();
      v73 = *(v72 - 8);
      v74 = v71 + *(v73 + 72) * v69;
      v75 = v178;
      sub_1D1B615D8(v74, v178, type metadata accessor for StaticCharacteristic);
      (*(v73 + 56))(v75, 0, 1, v72);
    }

    else
    {
      v70 = v61;
      v72 = type metadata accessor for StaticCharacteristic();
      v75 = v178;
      (*(*(v72 - 8) + 56))(v178, 1, 1, v72);
    }

    v76 = v179;
    sub_1D1741A90(v75, v179, &qword_1EC643630, &qword_1D1E71D10);
    type metadata accessor for StaticCharacteristic();
    result = (*(*(v72 - 8) + 48))(v76, 1, v72);
    if (result == 1)
    {
      sub_1D1741A30(v76, &qword_1EC643630, &qword_1D1E71D10);
      v61 = v70;
      v3 = 0xD000000000000024;
      v38 = v189;
      v40 = v190;
      goto LABEL_52;
    }

    v78 = v76 + *(v72 + 24);
    v79 = *v78;
    v80 = *(v78 + 16);
    if (v80 > 2)
    {
      if (v80 > 4)
      {
        v40 = v190;
        if (v80 != 6 && v80 != 5 || (v79 = v79, v79 > 1))
        {
LABEL_51:
          sub_1D1B61578(v76, type metadata accessor for StaticCharacteristic);
          v61 = v70;
          v3 = 0xD000000000000024;
          v38 = v189;
          goto LABEL_52;
        }

        goto LABEL_46;
      }

      v40 = v190;
      if (v80 == 3)
      {
        v79 = v79;
        if (v79 > 1uLL)
        {
          goto LABEL_51;
        }

        goto LABEL_46;
      }

      if ((v79 & 0x8000000000000000) == 0)
      {
        if (v79 > 1)
        {
          goto LABEL_51;
        }

LABEL_46:
        sub_1D1B61578(v76, type metadata accessor for StaticCharacteristic);
        v61 = v70;
        v3 = 0xD000000000000024;
        v38 = v189;
        if (v79 == 1)
        {
          goto LABEL_49;
        }

        goto LABEL_52;
      }

      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    if (v80)
    {
      if (v80 == 1)
      {
        v79 = v79;
        v40 = v190;
        if (v79 > 1uLL)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v40 = v190;
        v79 = v79;
        if (v79 > 1uLL)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_46;
    }

    sub_1D1B61578(v76, type metadata accessor for StaticCharacteristic);
    v61 = v70;
    v3 = 0xD000000000000024;
    v38 = v189;
    v40 = v190;
    if (v79)
    {
LABEL_49:
      v82 = v180;
      v83 = v25;
      v84 = v194;
      (*v191)(v180, v83, v194);
      v85 = v192;
      sub_1D1762CB8(v192, v82);
      v86 = *v188;
      (*v188)(v85, v84);
      sub_1D1B61578(v193, type metadata accessor for StaticService);
      v87 = v84;
      v25 = v193;
      v86(v40, v87);
      goto LABEL_5;
    }

LABEL_52:
    LOBYTE(v200) = v197;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v198 == v88)
    {
    }

    else
    {
      v89 = sub_1D1E6904C();

      if ((v89 & 1) == 0)
      {
        goto LABEL_68;
      }
    }

    v90 = v25[v196];
    LOBYTE(v200) = v25[v196];
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v198 == v91)
    {
    }

    else
    {
      v92 = sub_1D1E6904C();

      if ((v92 & 1) == 0)
      {
        v93 = v90 == 11;
        v61 = v195;
        if (!v93)
        {
          goto LABEL_68;
        }

        v200 = *&v25[*(v195 + 128)];
        v199 = 28;
        v206 = StaticCharacteristicsBag.int(for:)(&v199);
        if (v206.is_nil || v206.value != 1)
        {
          goto LABEL_68;
        }

        goto LABEL_62;
      }
    }

    v61 = v195;
    v200 = *&v25[*(v195 + 128)];
    v199 = -98;
    v205 = StaticCharacteristicsBag.int(for:)(&v199);
    if (v205.is_nil || v205.value < 1)
    {
      goto LABEL_68;
    }

LABEL_62:
    if (sub_1D1B61640(v25))
    {
      goto LABEL_97;
    }

LABEL_68:
    LOBYTE(v200) = v197;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v198 == v94)
    {
    }

    else
    {
      v95 = sub_1D1E6904C();

      if ((v95 & 1) == 0)
      {
        goto LABEL_73;
      }
    }

    if (sub_1D1B61640(v25))
    {
      goto LABEL_97;
    }

LABEL_73:
    LOBYTE(v200) = v197;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v198 == v96)
    {
    }

    else
    {
      v97 = sub_1D1E6904C();

      if ((v97 & 1) == 0)
      {
        goto LABEL_88;
      }
    }

    v98 = v25[v196];
    LOBYTE(v200) = v25[v196];
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v198 == v99)
    {

LABEL_81:
      v61 = v195;
      v200 = *&v25[*(v195 + 128)];
      v199 = 40;
      v207 = StaticCharacteristicsBag.int(for:)(&v199);
      if (!v207.is_nil && v207.value >= 1)
      {
        goto LABEL_97;
      }

      goto LABEL_88;
    }

    v100 = sub_1D1E6904C();

    if (v100)
    {
      goto LABEL_81;
    }

    v93 = v98 == 11;
    v61 = v195;
    if (v93)
    {
      v200 = *&v25[*(v195 + 128)];
      v199 = 28;
      v208 = StaticCharacteristicsBag.int(for:)(&v199);
      if (!v208.is_nil && v208.value == 1)
      {
        goto LABEL_97;
      }
    }

LABEL_88:
    if (v197 != 11)
    {
      sub_1D1B61578(v25, type metadata accessor for StaticService);
      (*v188)(v40, v194);
      goto LABEL_5;
    }

    v101 = v25[v61[28]];
    v102 = v188;
    if (v101 == 53)
    {
      LOBYTE(v101) = v25[v196];
    }

    LOBYTE(v200) = v101;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v198 == v103)
    {

LABEL_95:
      v200 = *&v25[*(v195 + 128)];
      v199 = 28;
      v209 = StaticCharacteristicsBag.int(for:)(&v199);
      v105 = v194;
      if (v209.is_nil || v209.value != 1)
      {
        goto LABEL_98;
      }

LABEL_97:
      v106 = v180;
      v107 = v25;
      v108 = v194;
      (*v191)(v180, v107, v194);
      v109 = v192;
      sub_1D1762CB8(v192, v106);
      v105 = v108;
      v25 = v193;
      v102 = v188;
      (*v188)(v109, v105);
      goto LABEL_98;
    }

    v104 = sub_1D1E6904C();

    v105 = v194;
    if (v104)
    {
      goto LABEL_95;
    }

LABEL_98:
    sub_1D1B61578(v25, type metadata accessor for StaticService);
    (*v102)(v40, v105);
LABEL_5:
    v48 = v186;
    v43 = v187;
  }

  v110 = v203;
  v111 = v204;
  v112 = *(v204 + 16);
  v113 = *(v203 + 16);
  v114 = __OFADD__(v112, v113);
  v115 = v112 + v113;
  if (v114)
  {
    goto LABEL_124;
  }

  v116 = v202;
  v117 = *(v202 + 16);
  v114 = __OFADD__(v115, v117);
  v118 = v115 + v117;
  if (v114)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  v119 = v194;
  v41 = v177;
  v120 = v201;
  v121 = *(v201 + 16);
  v3 = v118 + v121;
  if (__OFADD__(v118, v121))
  {
LABEL_126:
    __break(1u);
    return result;
  }

  v122 = sub_1D18C02C0(v116, v110);
  v123 = sub_1D18C02C0(v120, v122);
  v124 = sub_1D18C02C0(v111, v123);
  if (v3 <= 0)
  {

    v133 = type metadata accessor for BlindsStatusItem(0);
    return (*(*(v133 - 8) + 56))(v176, 1, 1, v133);
  }

  v125 = *(v111 + 16);
  v198 = v124;
  if (!v125)
  {

    v134 = *(v116 + 16);
    v38 = v169;
    if (v134 && v134 == v3)
    {
      v51 = v119;

      static String.hfLocalized(_:)(0xD000000000000028, 0x80000001D1EC5A20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v135 = swift_allocObject();
      *(v135 + 16) = xmmword_1D1E739C0;
      v136 = *(v116 + 16);

      v137 = MEMORY[0x1E69E65A8];
      *(v135 + 56) = MEMORY[0x1E69E6530];
      *(v135 + 64) = v137;
      *(v135 + 32) = v136;
LABEL_116:
      v129 = sub_1D1E6783C();
      v131 = v147;
      v132 = "blinds.vertical.open";
      v143 = 0xD000000000000016;
      goto LABEL_117;
    }

    v51 = v119;

    v138 = *(v120 + 16);
    if (v138 && v138 == v3)
    {
      static String.hfLocalized(_:)(0xD000000000000028, 0x80000001D1EC59F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v139 = swift_allocObject();
      *(v139 + 16) = xmmword_1D1E739C0;
      v140 = *(v120 + 16);

      v141 = MEMORY[0x1E69E65A8];
      *(v139 + 56) = MEMORY[0x1E69E6530];
      *(v139 + 64) = v141;
      *(v139 + 32) = v140;
      v129 = sub_1D1E6783C();
      v131 = v142;
      v132 = "air.conditioner.horizontal.fill";
      v143 = 0xD000000000000018;
LABEL_117:
      v197 = v143;
      goto LABEL_118;
    }

LABEL_115:

    static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EC59C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v144 = swift_allocObject();
    v145 = MEMORY[0x1E69E6530];
    *(v144 + 16) = xmmword_1D1E739C0;
    v146 = MEMORY[0x1E69E65A8];
    *(v144 + 56) = v145;
    *(v144 + 64) = v146;
    *(v144 + 32) = v3;
    goto LABEL_116;
  }

  v51 = v119;

  static String.hfLocalized(_:)(0xD00000000000002BLL, 0x80000001D1EC5960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
  v126 = swift_allocObject();
  *(v126 + 16) = xmmword_1D1E739C0;
  v127 = *(v111 + 16);

  v128 = MEMORY[0x1E69E65A8];
  *(v126 + 56) = MEMORY[0x1E69E6530];
  *(v126 + 64) = v128;
  *(v126 + 32) = v127;
  v129 = sub_1D1E6783C();
  v131 = v130;
  v132 = "blinds.vertical.open";
  v197 = 0xD000000000000016;
  v38 = v169;
LABEL_118:

  v148 = v132 | 0x8000000000000000;
  v149 = v183;
  (*(v183 + 56))(v41, 1, 1, v51);
  v150 = static String.hfLocalized(_:)(0xD000000000000028, 0x80000001D1EC5990);
  v152 = v151;
  sub_1D1741C08(v41, v38, &qword_1EC642590, qword_1D1E71260);
  v153 = *(v149 + 48);
  if (v153(v38, 1, v51) == 1)
  {
    v196 = v152;
    v154 = v168;
    sub_1D1E66A6C();
    sub_1D1741A30(v41, &qword_1EC642590, qword_1D1E71260);
    v155 = v153(v38, 1, v51);
    v152 = v196;
    if (v155 != 1)
    {
      sub_1D1741A30(v38, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    sub_1D1741A30(v41, &qword_1EC642590, qword_1D1E71260);
    v154 = v168;
    (*v184)(v168, v38, v51);
  }

  v156 = v170;
  (*v184)(v170, v154, v51);
  v157 = v171;
  v158 = (v156 + *(v171 + 20));
  *v158 = v197;
  v158[1] = v148;
  v159 = (v156 + v157[6]);
  *v159 = v150;
  v159[1] = v152;
  v160 = (v156 + v157[7]);
  *v160 = v129;
  v160[1] = v131;
  v161 = v156 + v157[8];
  *v161 = 0;
  *(v161 + 8) = 0;
  *(v161 + 16) = 0;
  *(v161 + 24) = -1;
  v162 = v172;
  v163 = sub_1D1B61510(v156, v172, type metadata accessor for IconTextValueStringDataHolder);
  MEMORY[0x1EEE9AC00](v163);
  *(&v168 - 2) = v198;
  v200 = v195;
  v164 = v173;
  sub_1D1E66C8C();

  swift_storeEnumTagMultiPayload();
  v165 = v175;
  sub_1D1B61510(v164, v175, type metadata accessor for TilesFilter);
  v166 = type metadata accessor for BlindsStatusItem(0);
  v167 = v176;
  *(v176 + v166[6]) = 3;
  *(v167 + v166[7]) = 0;
  *(v167 + v166[8]) = 3;
  sub_1D1B61510(v162, v167, type metadata accessor for IconTextValueStringDataHolder);
  sub_1D1B61510(v165, v167 + v166[5], type metadata accessor for TilesFilter);
  return (*(*(v166 - 1) + 56))(v167, 0, 1, v166);
}

uint64_t sub_1D1B55400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v141 = a2;
  v139 = type metadata accessor for TilesFilter(0);
  v4 = *(*(v139 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v139);
  v140 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v138 = &v133 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v142 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v134 = &v133 - v12;
  v136 = type metadata accessor for IconTextValueStringDataHolder();
  v13 = *(*(v136 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v136);
  v135 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v137 = &v133 - v16;
  v17 = type metadata accessor for StaticService(0);
  v146 = *(v17 - 8);
  v18 = *(v146 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v145 = &v133 - v22;
  v157 = sub_1D1E66A7C();
  v23 = *(v157 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v157);
  v133 = &v133 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v143 = &v133 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v156 = &v133 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v154 = &v133 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v158 = &v133 - v34;
  v35 = 0;
  v150 = a1;
  v38 = *(a1 + 64);
  v37 = a1 + 64;
  v36 = v38;
  v39 = 1 << *(v37 - 32);
  v40 = -1;
  v164 = MEMORY[0x1E69E7CD0];
  v165 = MEMORY[0x1E69E7CD0];
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v162 = MEMORY[0x1E69E7CD0];
  v163 = MEMORY[0x1E69E7CD0];
  v41 = v40 & v36;
  v42 = (v39 + 63) >> 6;
  v155 = (v23 + 16);
  v149 = (v23 + 32);
  v159 = 0x80000001D1EB3250;
  v147 = v23;
  v152 = (v23 + 8);
  v144 = v21;
  v153 = v37;
  v151 = v42;
  v148 = v17;
  while (1)
  {
    if (!v41)
    {
      if (v42 <= v35 + 1)
      {
        v44 = v35 + 1;
      }

      else
      {
        v44 = v42;
      }

      v45 = v44 - 1;
      v46 = v154;
      while (1)
      {
        v43 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v43 >= v42)
        {
          v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
          (*(*(v78 - 8) + 56))(v46, 1, 1, v78);
          v41 = 0;
          v35 = v45;
          v57 = v158;
          goto LABEL_17;
        }

        v41 = *(v37 + 8 * v43);
        ++v35;
        if (v41)
        {
          v35 = v43;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_74;
    }

    v43 = v35;
LABEL_16:
    v47 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v48 = v47 | (v43 << 6);
    v49 = v150;
    v50 = v147;
    v52 = v156;
    v51 = v157;
    (*(v147 + 16))(v156, *(v150 + 48) + *(v147 + 72) * v48, v157);
    v53 = v145;
    sub_1D1B615D8(*(v49 + 56) + *(v146 + 72) * v48, v145, type metadata accessor for StaticService);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
    v55 = *(v54 + 48);
    v56 = *(v50 + 32);
    v46 = v154;
    v56(v154, v52, v51);
    sub_1D1B61510(v53, v46 + v55, type metadata accessor for StaticService);
    (*(*(v54 - 8) + 56))(v46, 0, 1, v54);
    v17 = v148;
    v21 = v144;
    v57 = v158;
LABEL_17:
    sub_1D1741A90(v46, v57, &qword_1EC643C68, &unk_1D1E764C0);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
    if ((*(*(v58 - 8) + 48))(v57, 1, v58) == 1)
    {
      break;
    }

    sub_1D1B61510(v57 + *(v58 + 48), v21, type metadata accessor for StaticService);
    v59 = v21[*(v17 + 104)];
    LOBYTE(v161) = v59;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v159 == v60)
    {

      v2 = 38;
    }

    else
    {
      v61 = sub_1D1E6904C();

      v2 = 38;
      if ((v61 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v161 = *&v21[*(v17 + 128)];
    v160 = 38;
    v166 = StaticCharacteristicsBag.int(for:)(&v160);
    if (!v166.is_nil && v166.value == 2)
    {
      goto LABEL_51;
    }

LABEL_24:
    LOBYTE(v161) = v59;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v159 == v62)
    {
    }

    else
    {
      v63 = sub_1D1E6904C();

      if ((v63 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v64 = *(v17 + 128);
    v161 = *&v21[v64];
    v160 = 38;
    v167 = StaticCharacteristicsBag.int(for:)(&v160);
    if (!v167.is_nil && v167.value != 3)
    {
      v161 = *&v21[v64];
      v160 = -100;
      v168 = StaticCharacteristicsBag.int(for:)(&v160);
      if (!v168.is_nil && v168.value != 1)
      {
        v161 = *&v21[v64];
        v160 = 38;
        v169 = StaticCharacteristicsBag.int(for:)(&v160);
        if (!v169.is_nil)
        {
          value = v169.value;
          if (v169.value != 3)
          {
            v161 = *&v21[v64];
            v160 = -100;
            v170 = StaticCharacteristicsBag.int(for:)(&v160);
            if (!v170.is_nil && value != v170.value)
            {
              goto LABEL_51;
            }
          }
        }
      }
    }

LABEL_36:
    v66 = v17;
    LOBYTE(v161) = v59;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v159 == v67)
    {
    }

    else
    {
      v68 = sub_1D1E6904C();

      if ((v68 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    v69 = *(v17 + 128);
    v161 = *&v21[v69];
    v160 = 38;
    v171 = StaticCharacteristicsBag.int(for:)(&v160);
    if (!v171.is_nil)
    {
      v70 = v171.value;
      if (v171.value != 3)
      {
        v161 = *&v21[v69];
        v160 = -100;
        v172 = StaticCharacteristicsBag.int(for:)(&v160);
        if (!v172.is_nil && v70 != v172.value)
        {
          v17 = v66;
          goto LABEL_51;
        }
      }
    }

LABEL_45:
    LOBYTE(v161) = v59;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v159 == v71)
    {

      v17 = v66;
      v72 = v158;
    }

    else
    {
      v73 = sub_1D1E6904C();

      v17 = v66;
      v72 = v158;
      if ((v73 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v161 = *&v21[*(v17 + 128)];
    v160 = 38;
    v173 = StaticCharacteristicsBag.int(for:)(&v160);
    if (v173.is_nil || (v173.value | 2) != 2)
    {
LABEL_4:
      sub_1D1B61578(v21, type metadata accessor for StaticService);
      (*v152)(v72, v157);
      goto LABEL_5;
    }

LABEL_51:
    v74 = v143;
    v75 = v157;
    (*v155)(v143, v21, v157);
    v76 = v156;
    sub_1D1762CB8(v156, v74);
    v77 = *v152;
    (*v152)(v76, v75);
    sub_1D1B61578(v21, type metadata accessor for StaticService);
    v77(v158, v75);
LABEL_5:
    v37 = v153;
    v42 = v151;
  }

  v80 = v164;
  v81 = v165;
  v82 = *(v165 + 16);
  v83 = *(v164 + 16);
  v84 = __OFADD__(v82, v83);
  v85 = v82 + v83;
  if (v84)
  {
    __break(1u);
    goto LABEL_76;
  }

  v37 = 0xD000000000000024;
  v21 = v142;
  v86 = v163;
  v87 = *(v163 + 16);
  v84 = __OFADD__(v85, v87);
  v88 = v85 + v87;
  if (v84)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v89 = v162;
  v90 = *(v162 + 16);
  v2 = v88 + v90;
  if (__OFADD__(v88, v90))
  {
LABEL_77:
    __break(1u);
    return result;
  }

  v91 = sub_1D18C02C0(v86, v80);
  v92 = sub_1D18C02C0(v89, v91);
  v93 = sub_1D18C02C0(v81, v92);
  if (v2 <= 0)
  {

    v97 = type metadata accessor for DoorLockStatusItem(0);
    return (*(*(v97 - 8) + 56))(v141, 1, 1, v97);
  }

  v94 = *(v81 + 16);
  v159 = v93;
  if (v94)
  {

    static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EC5870);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_1D1E739C0;
    v96 = *(v81 + 16);
    goto LABEL_63;
  }

  v98 = *(v86 + 16);
  if (!v98 || v98 != v2)
  {

    v125 = *(v89 + 16);
    if (v125 && v125 == v2)
    {
      static String.hfLocalized(_:)(0xD000000000000026, 0x80000001D1EC5900);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v126 = swift_allocObject();
      *(v126 + 16) = xmmword_1D1E739C0;
      v127 = *(v89 + 16);

      v128 = MEMORY[0x1E69E65A8];
      *(v126 + 56) = MEMORY[0x1E69E6530];
      *(v126 + 64) = v128;
      *(v126 + 32) = v127;
      v100 = sub_1D1E6783C();
      v102 = v129;
      v158 = 0xE90000000000006CLL;
      v103 = 0x6C69662E6B636F6CLL;
      goto LABEL_65;
    }

LABEL_74:

    static String.hfLocalized(_:)(v37 + 3, 0x80000001D1EC58D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v130 = swift_allocObject();
    v131 = MEMORY[0x1E69E6530];
    *(v130 + 16) = xmmword_1D1E739C0;
    v132 = MEMORY[0x1E69E65A8];
    *(v130 + 56) = v131;
    *(v130 + 64) = v132;
    *(v130 + 32) = v2;
    goto LABEL_64;
  }

  static String.hfLocalized(_:)(0xD000000000000028, 0x80000001D1EC5930);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_1D1E739C0;
  v96 = *(v86 + 16);
LABEL_63:

  v99 = MEMORY[0x1E69E65A8];
  *(v95 + 56) = MEMORY[0x1E69E6530];
  *(v95 + 64) = v99;
  *(v95 + 32) = v96;
LABEL_64:
  v100 = sub_1D1E6783C();
  v102 = v101;
  v103 = 0x65706F2E6B636F6CLL;
  v158 = 0xEE006C6C69662E6ELL;
LABEL_65:

  v104 = v147;
  v105 = v134;
  v106 = v157;
  (*(v147 + 56))(v134, 1, 1, v157);
  v156 = static String.hfLocalized(_:)(0xD000000000000022, 0x80000001D1EC58A0);
  v108 = v107;
  sub_1D1741C08(v105, v21, &qword_1EC642590, qword_1D1E71260);
  v109 = *(v104 + 48);
  if (v109(v21, 1, v106) == 1)
  {
    v110 = v133;
    sub_1D1E66A6C();
    sub_1D1741A30(v105, &qword_1EC642590, qword_1D1E71260);
    v111 = v109(v21, 1, v106);
    v112 = v158;
    if (v111 != 1)
    {
      sub_1D1741A30(v21, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    sub_1D1741A30(v105, &qword_1EC642590, qword_1D1E71260);
    v110 = v133;
    (*v149)(v133, v21, v106);
    v112 = v158;
  }

  v113 = v135;
  (*v149)(v135, v110, v106);
  v114 = v136;
  v115 = (v113 + *(v136 + 20));
  *v115 = v103;
  v115[1] = v112;
  v116 = (v113 + v114[6]);
  *v116 = v156;
  v116[1] = v108;
  v117 = (v113 + v114[7]);
  *v117 = v100;
  v117[1] = v102;
  v118 = v113 + v114[8];
  *v118 = 0;
  *(v118 + 8) = 0;
  *(v118 + 16) = 0;
  *(v118 + 24) = -1;
  v119 = v137;
  v120 = sub_1D1B61510(v113, v137, type metadata accessor for IconTextValueStringDataHolder);
  MEMORY[0x1EEE9AC00](v120);
  *(&v133 - 2) = v159;
  v161 = v148;
  v121 = v138;
  sub_1D1E66C8C();

  swift_storeEnumTagMultiPayload();
  v122 = v140;
  sub_1D1B61510(v121, v140, type metadata accessor for TilesFilter);
  v123 = type metadata accessor for DoorLockStatusItem(0);
  v124 = v141;
  *(v141 + v123[7]) = 4;
  *(v124 + v123[8]) = 3;
  sub_1D1B61510(v119, v124, type metadata accessor for IconTextValueStringDataHolder);
  sub_1D1B61510(v122, v124 + v123[5], type metadata accessor for TilesFilter);
  *(v124 + v123[6]) = 1;
  return (*(*(v123 - 1) + 56))(v124, 0, 1, v123);
}

uint64_t sub_1D1B56598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v170 = a2;
  v168 = type metadata accessor for TilesFilter(0);
  v4 = *(*(v168 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v168);
  v169 = &v161 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v167 = &v161 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v163 = (&v161 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v171 = &v161 - v12;
  v165 = type metadata accessor for IconTextValueStringDataHolder();
  v13 = *(*(v165 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v165);
  v164 = &v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v166 = &v161 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v174 = &v161 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v173 = &v161 - v21;
  v22 = type metadata accessor for StaticService(0);
  v176 = *(v22 - 1);
  v23 = *(v176 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v161 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v175 = &v161 - v27;
  v190 = sub_1D1E66A7C();
  v28 = *(v190 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x1EEE9AC00](v190);
  v162 = &v161 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v172 = &v161 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v185 = &v161 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v39 = &v161 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v161 - v40;
  v42 = 0;
  v44 = a1 + 64;
  v43 = *(a1 + 64);
  v45 = 1 << *(a1 + 32);
  v46 = -1;
  v196 = MEMORY[0x1E69E7CD0];
  v197 = MEMORY[0x1E69E7CD0];
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & v43;
  v194 = MEMORY[0x1E69E7CD0];
  v195 = MEMORY[0x1E69E7CD0];
  v48 = (v45 + 63) >> 6;
  v184 = (v28 + 16);
  v179 = (v28 + 32);
  v180 = a1;
  v191 = 0x80000001D1EB3040;
  v186 = (v28 + 8);
  v187 = v39;
  v177 = v28;
  v178 = v22;
  v188 = v26;
  v189 = &v161 - v40;
  v181 = v48;
  for (i = a1 + 64; ; v44 = i)
  {
    if (!v47)
    {
      if (v48 <= v42 + 1)
      {
        v53 = v42 + 1;
      }

      else
      {
        v53 = v48;
      }

      v54 = v53 - 1;
      while (1)
      {
        v52 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        if (v52 >= v48)
        {
          v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
          (*(*(v83 - 8) + 56))(v39, 1, 1, v83);
          v47 = 0;
          v42 = v54;
          goto LABEL_18;
        }

        v47 = *(v44 + 8 * v52);
        ++v42;
        if (v47)
        {
          v42 = v52;
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_99;
    }

    v52 = v42;
LABEL_17:
    v55 = __clz(__rbit64(v47));
    v47 &= v47 - 1;
    v56 = v55 | (v52 << 6);
    v57 = v180;
    v58 = v177;
    v59 = v185;
    v60 = v190;
    (*(v177 + 16))(v185, *(v180 + 48) + *(v177 + 72) * v56, v190);
    v61 = v175;
    sub_1D1B615D8(*(v57 + 56) + *(v176 + 72) * v56, v175, type metadata accessor for StaticService);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
    v63 = *(v62 + 48);
    v64 = *(v58 + 32);
    v39 = v187;
    v64(v187, v59, v60);
    sub_1D1B61510(v61, &v39[v63], type metadata accessor for StaticService);
    (*(*(v62 - 8) + 56))(v39, 0, 1, v62);
    v26 = v188;
    v41 = v189;
    v22 = v178;
LABEL_18:
    sub_1D1741A90(v39, v41, &qword_1EC643C68, &unk_1D1E764C0);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
    if ((*(*(v65 - 8) + 48))(v41, 1, v65) == 1)
    {
      break;
    }

    sub_1D1B61510(&v41[*(v65 + 48)], v26, type metadata accessor for StaticService);
    v183 = v22[26];
    v2 = v26[v183];
    LOBYTE(v193) = v26[v183];
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v191 == v66)
    {
    }

    else
    {
      v67 = sub_1D1E6904C();

      if ((v67 & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    v68 = *&v26[v22[32]];
    if (*(v68 + 16) && (v69 = sub_1D171D140(88), (v70 & 1) != 0))
    {
      v71 = v69;
      v72 = *(v68 + 56);
      v73 = type metadata accessor for StaticCharacteristic();
      v74 = v22;
      v75 = *(v73 - 8);
      v76 = v72 + *(v75 + 72) * v71;
      v41 = v189;
      v77 = v173;
      sub_1D1B615D8(v76, v173, type metadata accessor for StaticCharacteristic);
      (*(v75 + 56))(v77, 0, 1, v73);
      v22 = v74;
    }

    else
    {
      v73 = type metadata accessor for StaticCharacteristic();
      v77 = v173;
      (*(*(v73 - 8) + 56))(v173, 1, 1, v73);
    }

    v78 = v174;
    sub_1D1741A90(v77, v174, &qword_1EC643630, &qword_1D1E71D10);
    type metadata accessor for StaticCharacteristic();
    result = (*(*(v73 - 8) + 48))(v78, 1, v73);
    if (result == 1)
    {
      sub_1D1741A30(v78, &qword_1EC643630, &qword_1D1E71D10);
LABEL_49:
      v39 = v187;
      v26 = v188;
LABEL_50:
      LOBYTE(v193) = v2;
      if (ServiceKind.rawValue.getter() != 0xD000000000000024 || v191 != v88)
      {
        v89 = sub_1D1E6904C();

        if (v89)
        {
          goto LABEL_54;
        }

        goto LABEL_60;
      }

LABEL_54:
      v90 = v22[32];
      v193 = *&v26[v90];
      v192 = -107;
      v198 = StaticCharacteristicsBag.int(for:)(&v192);
      if (v198.is_nil)
      {
        goto LABEL_60;
      }

      if (v198.value == 1)
      {
        goto LABEL_60;
      }

      v193 = *&v26[v90];
      v192 = 31;
      v199 = StaticCharacteristicsBag.int(for:)(&v192);
      if (v199.is_nil || (v193 = *&v26[v90], v192 = 31, v200 = StaticCharacteristicsBag.int(for:)(&v192), v200.is_nil) || (v91 = v200.value, v193 = *&v26[v90], v192 = -107, v201 = StaticCharacteristicsBag.int(for:)(&v192), !v201.is_nil) && v91 == v201.value)
      {
LABEL_60:
        LOBYTE(v193) = v2;
        if (ServiceKind.rawValue.getter() != 0xD000000000000024 || v191 != v92)
        {
          v93 = sub_1D1E6904C();

          if (v93)
          {
            goto LABEL_64;
          }

          goto LABEL_67;
        }

LABEL_64:
        v94 = v22[32];
        v193 = *&v26[v94];
        v192 = 31;
        v202 = StaticCharacteristicsBag.int(for:)(&v192);
        if (v202.is_nil || (value = v202.value, v193 = *&v26[v94], v192 = -107, v203 = StaticCharacteristicsBag.int(for:)(&v192), !v203.is_nil) && value == v203.value)
        {
LABEL_67:
          LOBYTE(v193) = v2;
          if (ServiceKind.rawValue.getter() != 0xD000000000000024 || v191 != v96)
          {
            v97 = sub_1D1E6904C();

            if (v97)
            {
              goto LABEL_71;
            }

            goto LABEL_73;
          }

LABEL_71:
          v193 = *&v26[v22[32]];
          v192 = 31;
          v204 = StaticCharacteristicsBag.int(for:)(&v192);
          if (v204.is_nil || v204.value == 1)
          {
LABEL_73:
            if (v2 != 11)
            {
              goto LABEL_5;
            }

            v98 = v26[v22[28]];
            if (v98 == 53)
            {
              LOBYTE(v98) = v26[v183];
            }

            LOBYTE(v193) = v98;
            if (ServiceKind.rawValue.getter() != 0xD000000000000024 || v191 != v99)
            {
              v100 = sub_1D1E6904C();

              if (v100)
              {
                goto LABEL_80;
              }

              goto LABEL_5;
            }

LABEL_80:
            v193 = *&v26[v22[32]];
            v192 = 28;
            v205 = StaticCharacteristicsBag.int(for:)(&v192);
            if (v205.is_nil || v205.value != 1)
            {
LABEL_5:
              sub_1D1B61578(v26, type metadata accessor for StaticService);
              (*v186)(v41, v190);
              goto LABEL_6;
            }
          }
        }
      }

      v49 = v172;
      v2 = v190;
      (*v184)(v172, v26, v190);
      v50 = v185;
      sub_1D1762CB8(v185, v49);
      v51 = v50;
      v41 = v189;
      (*v186)(v51, v2);
      goto LABEL_5;
    }

    v80 = v78 + *(v73 + 24);
    v81 = *v80;
    v82 = *(v80 + 16);
    if (v82 > 2)
    {
      if (v82 > 4)
      {
        if (v82 != 6 && v82 != 5 || (v81 = v81, v81 > 1))
        {
LABEL_48:
          sub_1D1B61578(v78, type metadata accessor for StaticCharacteristic);
          goto LABEL_49;
        }

        goto LABEL_43;
      }

      if (v82 == 3)
      {
        v81 = v81;
        if (v81 > 1uLL)
        {
          goto LABEL_48;
        }

        goto LABEL_43;
      }

      if ((v81 & 0x8000000000000000) == 0)
      {
        if (v81 > 1)
        {
          goto LABEL_48;
        }

LABEL_43:
        sub_1D1B61578(v78, type metadata accessor for StaticCharacteristic);
        v39 = v187;
        v26 = v188;
        if (v81 != 1)
        {
          goto LABEL_50;
        }

        goto LABEL_46;
      }

      __break(1u);
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    if (v82)
    {
      if (v82 == 1)
      {
        v81 = v81;
        if (v81 > 1uLL)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v81 = v81;
        if (v81 > 1uLL)
        {
          goto LABEL_48;
        }
      }

      goto LABEL_43;
    }

    sub_1D1B61578(v78, type metadata accessor for StaticCharacteristic);
    v39 = v187;
    v26 = v188;
    if ((v81 & 1) == 0)
    {
      goto LABEL_50;
    }

LABEL_46:
    v84 = v172;
    v2 = v190;
    (*v184)(v172, v26, v190);
    v85 = v185;
    sub_1D1762CB8(v185, v84);
    v86 = *v186;
    v87 = v85;
    v41 = v189;
    (*v186)(v87, v2);
    sub_1D1B61578(v26, type metadata accessor for StaticService);
    v86(v41, v2);
LABEL_6:
    v48 = v181;
  }

  v101 = v196;
  v102 = v197;
  v103 = *(v197 + 16);
  v104 = *(v196 + 16);
  v105 = __OFADD__(v103, v104);
  v106 = v103 + v104;
  if (v105)
  {
    goto LABEL_107;
  }

  v42 = v171;
  v107 = v195;
  v108 = *(v195 + 16);
  v105 = __OFADD__(v106, v108);
  v109 = v106 + v108;
  if (v105)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v110 = v194;
  v111 = *(v194 + 16);
  v2 = v109 + v111;
  if (__OFADD__(v109, v111))
  {
LABEL_109:
    __break(1u);
    return result;
  }

  v112 = sub_1D18C02C0(v107, v101);
  v113 = sub_1D18C02C0(v110, v112);
  v114 = sub_1D18C02C0(v102, v113);
  if (v2 <= 0)
  {

    v123 = type metadata accessor for GarageDoorStatusItem(0);
    return (*(*(v123 - 8) + 56))(v170, 1, 1, v123);
  }

  v115 = *(v102 + 16);
  v191 = v114;
  if (!v115)
  {

    v124 = *(v107 + 16);
    v22 = v163;
    if (v124 && v124 == v2)
    {

      static String.hfLocalized(_:)(0xD00000000000002CLL, 0x80000001D1EC5840);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v125 = swift_allocObject();
      *(v125 + 16) = xmmword_1D1E739C0;
      v126 = *(v107 + 16);

      v127 = MEMORY[0x1E69E65A8];
      *(v125 + 56) = MEMORY[0x1E69E6530];
      *(v125 + 64) = v127;
      *(v125 + 32) = v126;
LABEL_100:
      v137 = sub_1D1E6783C();
      v188 = v138;
      v189 = v137;
      v121 = "light.beacon.max.fill";
      v122 = 0xD000000000000010;
      goto LABEL_101;
    }

    v128 = *(v110 + 16);
    if (v128 && v128 == v2)
    {
      static String.hfLocalized(_:)(0xD00000000000002CLL, 0x80000001D1EC5810);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v129 = swift_allocObject();
      *(v129 + 16) = xmmword_1D1E739C0;
      v130 = *(v110 + 16);

      v131 = MEMORY[0x1E69E65A8];
      *(v129 + 56) = MEMORY[0x1E69E6530];
      *(v129 + 64) = v131;
      *(v129 + 32) = v130;
      v132 = sub_1D1E6783C();
      v188 = v133;
      v189 = v132;
      v121 = "door.french.closed";
      v122 = 0xD000000000000012;
      goto LABEL_101;
    }

LABEL_99:

    static String.hfLocalized(_:)(0xD000000000000029, 0x80000001D1EC57E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v134 = swift_allocObject();
    v135 = MEMORY[0x1E69E6530];
    *(v134 + 16) = xmmword_1D1E739C0;
    v136 = MEMORY[0x1E69E65A8];
    *(v134 + 56) = v135;
    *(v134 + 64) = v136;
    *(v134 + 32) = v2;
    goto LABEL_100;
  }

  static String.hfLocalized(_:)(0xD00000000000002FLL, 0x80000001D1EC5780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_1D1E739C0;
  v117 = *(v102 + 16);

  v118 = MEMORY[0x1E69E65A8];
  *(v116 + 56) = MEMORY[0x1E69E6530];
  *(v116 + 64) = v118;
  *(v116 + 32) = v117;
  v119 = sub_1D1E6783C();
  v188 = v120;
  v189 = v119;
  v121 = "light.beacon.max.fill";
  v122 = 0xD000000000000010;
  v22 = v163;
LABEL_101:

  v139 = v121 | 0x8000000000000000;
  v140 = v177;
  v141 = v190;
  (*(v177 + 56))(v42, 1, 1, v190);
  v142 = static String.hfLocalized(_:)(0xD00000000000002ALL, 0x80000001D1EC57B0);
  v144 = v143;
  sub_1D1741C08(v42, v22, &qword_1EC642590, qword_1D1E71260);
  v145 = *(v140 + 48);
  if (v145(v22, 1, v141) == 1)
  {
    v146 = v162;
    sub_1D1E66A6C();
    sub_1D1741A30(v42, &qword_1EC642590, qword_1D1E71260);
    if (v145(v22, 1, v141) != 1)
    {
      sub_1D1741A30(v22, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    sub_1D1741A30(v42, &qword_1EC642590, qword_1D1E71260);
    v146 = v162;
    (*v179)(v162, v22, v141);
  }

  v147 = v164;
  (*v179)(v164, v146, v141);
  v148 = v165;
  v149 = &v147[*(v165 + 20)];
  *v149 = v122;
  v149[1] = v139;
  v150 = &v147[v148[6]];
  *v150 = v142;
  v150[1] = v144;
  v151 = &v147[v148[7]];
  v152 = v188;
  *v151 = v189;
  *(v151 + 1) = v152;
  v153 = &v147[v148[8]];
  *v153 = 0;
  *(v153 + 1) = 0;
  *(v153 + 2) = 0;
  v153[24] = -1;
  v154 = v147;
  v155 = v166;
  v156 = sub_1D1B61510(v154, v166, type metadata accessor for IconTextValueStringDataHolder);
  MEMORY[0x1EEE9AC00](v156);
  *(&v161 - 2) = v191;
  v193 = v178;
  v157 = v167;
  sub_1D1E66C8C();

  swift_storeEnumTagMultiPayload();
  v158 = v169;
  sub_1D1B61510(v157, v169, type metadata accessor for TilesFilter);
  v159 = type metadata accessor for GarageDoorStatusItem(0);
  v160 = v170;
  *(v170 + v159[7]) = 4;
  *(v160 + v159[8]) = 3;
  sub_1D1B61510(v155, v160, type metadata accessor for IconTextValueStringDataHolder);
  sub_1D1B61510(v158, v160 + v159[5], type metadata accessor for TilesFilter);
  *(v160 + v159[6]) = 1;
  return (*(*(v159 - 1) + 56))(v160, 0, 1, v159);
}

uint64_t sub_1D1B57AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v178 = a2;
  v176 = type metadata accessor for TilesFilter(0);
  v5 = *(*(v176 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v176);
  v177 = &v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v175 = &v168 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v171 = &v168 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v170 = &v168 - v13;
  v173 = type metadata accessor for IconTextValueStringDataHolder();
  v14 = *(*(v173 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v173);
  v172 = &v168 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v174 = &v168 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v180 = &v168 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v179 = &v168 - v22;
  v23 = type metadata accessor for StaticService(0);
  v183 = *(v23 - 1);
  v24 = *(v183 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v190 = &v168 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v182 = &v168 - v27;
  v28 = sub_1D1E66A7C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v169 = &v168 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v181 = &v168 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v194 = &v168 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8);
  v192 = &v168 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v168 - v40;
  v42 = 0;
  v44 = a1 + 64;
  v43 = *(a1 + 64);
  v45 = 1 << *(a1 + 32);
  v46 = -1;
  v203 = MEMORY[0x1E69E7CD0];
  v204 = MEMORY[0x1E69E7CD0];
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & v43;
  v201 = MEMORY[0x1E69E7CD0];
  v202 = MEMORY[0x1E69E7CD0];
  v48 = (v45 + 63) >> 6;
  v193 = (v29 + 16);
  v186 = (v29 + 32);
  v187 = a1;
  v195 = 0x80000001D1EB2F50;
  v196 = &v168 - v40;
  v184 = v29;
  v185 = v23;
  v197 = v28;
  v188 = v48;
  v189 = a1 + 64;
  v191 = (v29 + 8);
  while (1)
  {
    if (!v47)
    {
      if (v48 <= v42 + 1)
      {
        v50 = v42 + 1;
      }

      else
      {
        v50 = v48;
      }

      v51 = v50 - 1;
      v52 = v192;
      v53 = v195;
      while (1)
      {
        v49 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        if (v49 >= v48)
        {
          v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
          (*(*(v87 - 8) + 56))(v52, 1, 1, v87);
          v47 = 0;
          v42 = v51;
          goto LABEL_17;
        }

        v47 = *(v44 + 8 * v49);
        ++v42;
        if (v47)
        {
          v42 = v49;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_117;
    }

    v49 = v42;
LABEL_16:
    v54 = __clz(__rbit64(v47));
    v47 &= v47 - 1;
    v55 = v54 | (v49 << 6);
    v56 = v187;
    v57 = v184;
    v3 = v194;
    v58 = v197;
    (*(v184 + 16))(v194, *(v187 + 48) + *(v184 + 72) * v55, v197);
    v59 = v182;
    sub_1D1B615D8(*(v56 + 56) + *(v183 + 72) * v55, v182, type metadata accessor for StaticService);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
    v61 = *(v60 + 48);
    v62 = *(v57 + 32);
    v63 = v192;
    v62(v192, v3, v58);
    v64 = &v63[v61];
    v52 = v63;
    sub_1D1B61510(v59, v64, type metadata accessor for StaticService);
    (*(*(v60 - 8) + 56))(v63, 0, 1, v60);
    v53 = v195;
    v41 = v196;
    v23 = v185;
LABEL_17:
    sub_1D1741A90(v52, v41, &qword_1EC643C68, &unk_1D1E764C0);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
    if ((*(*(v65 - 8) + 48))(v41, 1, v65) == 1)
    {
      break;
    }

    v66 = v190;
    sub_1D1B61510(&v41[*(v65 + 48)], v190, type metadata accessor for StaticService);
    v198 = v23[26];
    v67 = *(v66 + v198);
    LOBYTE(v200) = *(v66 + v198);
    v2 = 0xD000000000000024;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v53 == v68)
    {
    }

    else
    {
      v69 = sub_1D1E6904C();

      if ((v69 & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    LOBYTE(v200) = *(v66 + v198);
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v53 == v70)
    {
    }

    else
    {
      v71 = sub_1D1E6904C();

      if ((v71 & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    v72 = *(v66 + v23[32]);
    if (*(v72 + 16) && (v73 = sub_1D171D140(88), (v74 & 1) != 0))
    {
      v75 = v73;
      v76 = v23;
      v77 = *(v72 + 56);
      v78 = type metadata accessor for StaticCharacteristic();
      v79 = *(v78 - 8);
      v3 = (v78 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
      v80 = v77 + *(v79 + 72) * v75;
      v81 = v179;
      sub_1D1B615D8(v80, v179, type metadata accessor for StaticCharacteristic);
      (*(v79 + 56))(v81, 0, 1, v78);
    }

    else
    {
      v76 = v23;
      v78 = type metadata accessor for StaticCharacteristic();
      v3 = (v78 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
      v81 = v179;
      (*(*(v78 - 8) + 56))(v179, 1, 1, v78);
    }

    v82 = v180;
    sub_1D1741A90(v81, v180, &qword_1EC643630, &qword_1D1E71D10);
    type metadata accessor for StaticCharacteristic();
    result = (*(*(v78 - 8) + 48))(v82, 1, v78);
    if (result == 1)
    {
      sub_1D1741A30(v82, &qword_1EC643630, &qword_1D1E71D10);
      v23 = v76;
      v2 = 0xD000000000000024;
LABEL_52:
      v53 = v195;
      goto LABEL_53;
    }

    v84 = v82 + *(v78 + 24);
    v85 = *v84;
    v86 = *(v84 + 16);
    if (v86 > 2)
    {
      v23 = v76;
      if (v86 > 4)
      {
        v2 = 0xD000000000000024;
        if (v86 != 6 && v86 != 5 || (v85 = v85, v85 > 1))
        {
LABEL_51:
          sub_1D1B61578(v82, type metadata accessor for StaticCharacteristic);
          goto LABEL_52;
        }

        goto LABEL_46;
      }

      v2 = 0xD000000000000024;
      if (v86 == 3)
      {
        v85 = v85;
        if (v85 > 1uLL)
        {
          goto LABEL_51;
        }

        goto LABEL_46;
      }

      if ((v85 & 0x8000000000000000) == 0)
      {
        if (v85 > 1)
        {
          goto LABEL_51;
        }

LABEL_46:
        sub_1D1B61578(v82, type metadata accessor for StaticCharacteristic);
        v53 = v195;
        if (v85 == 1)
        {
          goto LABEL_49;
        }

        goto LABEL_53;
      }

      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    v23 = v76;
    if (v86)
    {
      if (v86 == 1)
      {
        v85 = v85;
        v2 = 0xD000000000000024;
        if (v85 > 1uLL)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v2 = 0xD000000000000024;
        v85 = v85;
        if (v85 > 1uLL)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_46;
    }

    sub_1D1B61578(v82, type metadata accessor for StaticCharacteristic);
    v2 = 0xD000000000000024;
    v53 = v195;
    if (v85)
    {
LABEL_49:
      v88 = v181;
      (*v193)(v181, v66, v197);
      v89 = v194;
      sub_1D1762CB8(v194, v88);
      v90 = *v191;
      (*v191)(v89, v197);
      sub_1D1B61578(v66, type metadata accessor for StaticService);
      v41 = v196;
      v90(v196, v197);
      goto LABEL_5;
    }

LABEL_53:
    LOBYTE(v200) = v67;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v53 == v91)
    {
    }

    else
    {
      v92 = sub_1D1E6904C();

      if ((v92 & 1) == 0)
      {
        goto LABEL_68;
      }
    }

    v3 = *(v66 + v198);
    LOBYTE(v200) = *(v66 + v198);
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v53 == v93)
    {
    }

    else
    {
      v94 = sub_1D1E6904C();

      if ((v94 & 1) == 0)
      {
        if (v3 != 11)
        {
          goto LABEL_68;
        }

        v200 = *(v66 + v23[32]);
        v199 = 28;
        v206 = StaticCharacteristicsBag.int(for:)(&v199);
        if (v206.is_nil || v206.value != 1)
        {
          goto LABEL_68;
        }

        goto LABEL_63;
      }
    }

    v200 = *(v66 + v23[32]);
    v199 = -98;
    v205 = StaticCharacteristicsBag.int(for:)(&v199);
    if (v205.is_nil || v205.value < 1)
    {
      goto LABEL_68;
    }

LABEL_63:
    if (sub_1D1B6175C(v66))
    {
      v2 = v23;
LABEL_85:
      v41 = v196;
      goto LABEL_86;
    }

LABEL_68:
    LOBYTE(v200) = v67;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v53 == v95)
    {
    }

    else
    {
      v96 = sub_1D1E6904C();

      if ((v96 & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    if (sub_1D1B6175C(v66))
    {
      v2 = v23;
      goto LABEL_85;
    }

LABEL_74:
    LOBYTE(v200) = v67;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v53 == v97)
    {
    }

    else
    {
      v98 = sub_1D1E6904C();

      if ((v98 & 1) == 0)
      {
        goto LABEL_91;
      }
    }

    v3 = *(v66 + v198);
    LOBYTE(v200) = *(v66 + v198);
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v53 == v99)
    {

LABEL_82:
      v200 = *(v66 + v23[32]);
      v199 = 40;
      v207 = StaticCharacteristicsBag.int(for:)(&v199);
      if (!v207.is_nil && v207.value >= 1)
      {
        goto LABEL_84;
      }

      goto LABEL_91;
    }

    v100 = sub_1D1E6904C();

    if (v100)
    {
      goto LABEL_82;
    }

    if (v3 == 11)
    {
      v200 = *(v66 + v23[32]);
      v199 = 28;
      v208 = StaticCharacteristicsBag.int(for:)(&v199);
      if (!v208.is_nil && v208.value == 1)
      {
LABEL_84:
        v2 = v23;
        goto LABEL_85;
      }
    }

LABEL_91:
    if (v67 != 11)
    {
      sub_1D1B61578(v66, type metadata accessor for StaticService);
      v41 = v196;
      (*v191)(v196, v197);
      goto LABEL_5;
    }

    v106 = *(v66 + v23[28]);
    v41 = v196;
    if (v106 == 53)
    {
      LOBYTE(v106) = *(v66 + v198);
    }

    LOBYTE(v200) = v106;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v53 == v107)
    {
    }

    else
    {
      v108 = sub_1D1E6904C();

      v104 = v197;
      v105 = v191;
      if ((v108 & 1) == 0)
      {
        goto LABEL_87;
      }
    }

    v200 = *(v66 + v23[32]);
    v199 = 28;
    v209 = StaticCharacteristicsBag.int(for:)(&v199);
    v105 = v191;
    v104 = v197;
    if (v209.is_nil || v209.value != 1)
    {
      goto LABEL_87;
    }

    v2 = v23;
LABEL_86:
    v101 = v181;
    v102 = v197;
    (*v193)(v181, v66, v197);
    v103 = v194;
    sub_1D1762CB8(v194, v101);
    v104 = v102;
    v105 = v191;
    (*v191)(v103, v102);
    v23 = v2;
LABEL_87:
    sub_1D1B61578(v66, type metadata accessor for StaticService);
    (*v105)(v41, v104);
LABEL_5:
    v48 = v188;
    v44 = v189;
  }

  v109 = v203;
  v110 = v204;
  v111 = *(v204 + 16);
  v112 = *(v203 + 16);
  v113 = __OFADD__(v111, v112);
  v114 = v111 + v112;
  if (v113)
  {
    goto LABEL_126;
  }

  v115 = v202;
  v116 = *(v202 + 16);
  v113 = __OFADD__(v114, v116);
  v117 = v114 + v116;
  if (v113)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  v118 = v201;
  v119 = *(v201 + 16);
  v2 = v117 + v119;
  if (__OFADD__(v117, v119))
  {
LABEL_128:
    __break(1u);
    return result;
  }

  v120 = sub_1D18C02C0(v115, v109);
  v121 = sub_1D18C02C0(v118, v120);
  v122 = sub_1D18C02C0(v110, v121);
  if (v2 <= 0)
  {

    v131 = type metadata accessor for DoorStatusItem(0);
    return (*(*(v131 - 8) + 56))(v178, 1, 1, v131);
  }

  v123 = *(v110 + 16);
  v198 = v122;
  if (!v123)
  {

    v132 = *(v115 + 16);
    v3 = v171;
    if (v132 && v132 == v2)
    {

      static String.hfLocalized(_:)(0xD000000000000026, 0x80000001D1EC5750);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v133 = swift_allocObject();
      *(v133 + 16) = xmmword_1D1E739C0;
      v134 = *(v115 + 16);

      v135 = MEMORY[0x1E69E65A8];
      *(v133 + 56) = MEMORY[0x1E69E6530];
      *(v133 + 64) = v135;
      *(v133 + 32) = v134;
LABEL_118:
      v127 = sub_1D1E6783C();
      v129 = v145;
      v130 = "door.french.open";
      v141 = 0xD000000000000014;
      goto LABEL_119;
    }

    v136 = *(v118 + 16);
    if (v136 && v136 == v2)
    {
      static String.hfLocalized(_:)(0xD000000000000026, 0x80000001D1EC5720);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v137 = swift_allocObject();
      *(v137 + 16) = xmmword_1D1E739C0;
      v138 = *(v118 + 16);

      v139 = MEMORY[0x1E69E65A8];
      *(v137 + 56) = MEMORY[0x1E69E6530];
      *(v137 + 64) = v139;
      *(v137 + 32) = v138;
      v127 = sub_1D1E6783C();
      v129 = v140;
      v130 = "l";
      v141 = 0xD000000000000016;
LABEL_119:
      v196 = v141;
      goto LABEL_120;
    }

LABEL_117:

    static String.hfLocalized(_:)(0xD000000000000023, 0x80000001D1EC56F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v142 = swift_allocObject();
    v143 = MEMORY[0x1E69E6530];
    *(v142 + 16) = xmmword_1D1E739C0;
    v144 = MEMORY[0x1E69E65A8];
    *(v142 + 56) = v143;
    *(v142 + 64) = v144;
    *(v142 + 32) = v2;
    goto LABEL_118;
  }

  static String.hfLocalized(_:)(0xD000000000000029, 0x80000001D1EC56A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
  v124 = swift_allocObject();
  *(v124 + 16) = xmmword_1D1E739C0;
  v125 = *(v110 + 16);

  v126 = MEMORY[0x1E69E65A8];
  *(v124 + 56) = MEMORY[0x1E69E6530];
  *(v124 + 64) = v126;
  *(v124 + 32) = v125;
  v127 = sub_1D1E6783C();
  v129 = v128;
  v130 = "door.french.open";
  v196 = 0xD000000000000014;
  v3 = v171;
LABEL_120:

  v146 = v130 | 0x8000000000000000;
  v147 = v184;
  v148 = v170;
  v149 = v197;
  (*(v184 + 56))(v170, 1, 1, v197);
  v150 = static String.hfLocalized(_:)(0xD00000000000001ELL, 0x80000001D1EC56D0);
  v152 = v151;
  sub_1D1741C08(v148, v3, &qword_1EC642590, qword_1D1E71260);
  v153 = *(v147 + 48);
  if (v153(v3, 1, v149) == 1)
  {
    v195 = v152;
    v154 = v169;
    sub_1D1E66A6C();
    sub_1D1741A30(v148, &qword_1EC642590, qword_1D1E71260);
    v155 = v153(v3, 1, v149);
    v152 = v195;
    if (v155 != 1)
    {
      sub_1D1741A30(v3, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    sub_1D1741A30(v148, &qword_1EC642590, qword_1D1E71260);
    v154 = v169;
    (*v186)(v169, v3, v149);
  }

  v156 = v172;
  (*v186)(v172, v154, v149);
  v157 = v173;
  v158 = (v156 + *(v173 + 20));
  *v158 = v196;
  v158[1] = v146;
  v159 = (v156 + v157[6]);
  *v159 = v150;
  v159[1] = v152;
  v160 = (v156 + v157[7]);
  *v160 = v127;
  v160[1] = v129;
  v161 = v156 + v157[8];
  *v161 = 0;
  *(v161 + 8) = 0;
  *(v161 + 16) = 0;
  *(v161 + 24) = -1;
  v162 = v174;
  v163 = sub_1D1B61510(v156, v174, type metadata accessor for IconTextValueStringDataHolder);
  MEMORY[0x1EEE9AC00](v163);
  *(&v168 - 2) = v198;
  v200 = v185;
  v164 = v175;
  sub_1D1E66C8C();

  swift_storeEnumTagMultiPayload();
  v165 = v177;
  sub_1D1B61510(v164, v177, type metadata accessor for TilesFilter);
  v166 = type metadata accessor for DoorStatusItem(0);
  v167 = v178;
  *(v178 + v166[6]) = 4;
  *(v167 + v166[7]) = 3;
  sub_1D1B61510(v162, v167, type metadata accessor for IconTextValueStringDataHolder);
  sub_1D1B61510(v165, v167 + v166[5], type metadata accessor for TilesFilter);
  return (*(*(v166 - 1) + 56))(v167, 0, 1, v166);
}

uint64_t sub_1D1B59184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v178 = a2;
  v176 = type metadata accessor for TilesFilter(0);
  v5 = *(*(v176 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v176);
  v177 = &v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v175 = &v168 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v171 = &v168 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v170 = &v168 - v13;
  v173 = type metadata accessor for IconTextValueStringDataHolder();
  v14 = *(*(v173 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v173);
  v172 = &v168 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v174 = &v168 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v180 = &v168 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v179 = &v168 - v22;
  v23 = type metadata accessor for StaticService(0);
  v183 = *(v23 - 1);
  v24 = *(v183 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v190 = &v168 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v182 = &v168 - v27;
  v28 = sub_1D1E66A7C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v169 = &v168 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v181 = &v168 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v194 = &v168 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8);
  v192 = &v168 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v168 - v40;
  v42 = 0;
  v44 = a1 + 64;
  v43 = *(a1 + 64);
  v45 = 1 << *(a1 + 32);
  v46 = -1;
  v203 = MEMORY[0x1E69E7CD0];
  v204 = MEMORY[0x1E69E7CD0];
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & v43;
  v201 = MEMORY[0x1E69E7CD0];
  v202 = MEMORY[0x1E69E7CD0];
  v48 = (v45 + 63) >> 6;
  v193 = (v29 + 16);
  v186 = (v29 + 32);
  v187 = a1;
  v195 = 0x80000001D1EB3640;
  v196 = &v168 - v40;
  v184 = v29;
  v185 = v23;
  v197 = v28;
  v188 = v48;
  v189 = a1 + 64;
  v191 = (v29 + 8);
  while (1)
  {
    if (!v47)
    {
      if (v48 <= v42 + 1)
      {
        v50 = v42 + 1;
      }

      else
      {
        v50 = v48;
      }

      v51 = v50 - 1;
      v52 = v192;
      v53 = v195;
      while (1)
      {
        v49 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        if (v49 >= v48)
        {
          v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
          (*(*(v87 - 8) + 56))(v52, 1, 1, v87);
          v47 = 0;
          v42 = v51;
          goto LABEL_17;
        }

        v47 = *(v44 + 8 * v49);
        ++v42;
        if (v47)
        {
          v42 = v49;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_117;
    }

    v49 = v42;
LABEL_16:
    v54 = __clz(__rbit64(v47));
    v47 &= v47 - 1;
    v55 = v54 | (v49 << 6);
    v56 = v187;
    v57 = v184;
    v3 = v194;
    v58 = v197;
    (*(v184 + 16))(v194, *(v187 + 48) + *(v184 + 72) * v55, v197);
    v59 = v182;
    sub_1D1B615D8(*(v56 + 56) + *(v183 + 72) * v55, v182, type metadata accessor for StaticService);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
    v61 = *(v60 + 48);
    v62 = *(v57 + 32);
    v63 = v192;
    v62(v192, v3, v58);
    v64 = &v63[v61];
    v52 = v63;
    sub_1D1B61510(v59, v64, type metadata accessor for StaticService);
    (*(*(v60 - 8) + 56))(v63, 0, 1, v60);
    v53 = v195;
    v41 = v196;
    v23 = v185;
LABEL_17:
    sub_1D1741A90(v52, v41, &qword_1EC643C68, &unk_1D1E764C0);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
    if ((*(*(v65 - 8) + 48))(v41, 1, v65) == 1)
    {
      break;
    }

    v66 = v190;
    sub_1D1B61510(&v41[*(v65 + 48)], v190, type metadata accessor for StaticService);
    v198 = v23[26];
    v67 = *(v66 + v198);
    LOBYTE(v200) = *(v66 + v198);
    v2 = 0xD000000000000024;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v53 == v68)
    {
    }

    else
    {
      v69 = sub_1D1E6904C();

      if ((v69 & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    LOBYTE(v200) = *(v66 + v198);
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v53 == v70)
    {
    }

    else
    {
      v71 = sub_1D1E6904C();

      if ((v71 & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    v72 = *(v66 + v23[32]);
    if (*(v72 + 16) && (v73 = sub_1D171D140(88), (v74 & 1) != 0))
    {
      v75 = v73;
      v76 = v23;
      v77 = *(v72 + 56);
      v78 = type metadata accessor for StaticCharacteristic();
      v79 = *(v78 - 8);
      v3 = (v78 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
      v80 = v77 + *(v79 + 72) * v75;
      v81 = v179;
      sub_1D1B615D8(v80, v179, type metadata accessor for StaticCharacteristic);
      (*(v79 + 56))(v81, 0, 1, v78);
    }

    else
    {
      v76 = v23;
      v78 = type metadata accessor for StaticCharacteristic();
      v3 = (v78 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
      v81 = v179;
      (*(*(v78 - 8) + 56))(v179, 1, 1, v78);
    }

    v82 = v180;
    sub_1D1741A90(v81, v180, &qword_1EC643630, &qword_1D1E71D10);
    type metadata accessor for StaticCharacteristic();
    result = (*(*(v78 - 8) + 48))(v82, 1, v78);
    if (result == 1)
    {
      sub_1D1741A30(v82, &qword_1EC643630, &qword_1D1E71D10);
      v23 = v76;
      v2 = 0xD000000000000024;
LABEL_52:
      v53 = v195;
      goto LABEL_53;
    }

    v84 = v82 + *(v78 + 24);
    v85 = *v84;
    v86 = *(v84 + 16);
    if (v86 > 2)
    {
      v23 = v76;
      if (v86 > 4)
      {
        v2 = 0xD000000000000024;
        if (v86 != 6 && v86 != 5 || (v85 = v85, v85 > 1))
        {
LABEL_51:
          sub_1D1B61578(v82, type metadata accessor for StaticCharacteristic);
          goto LABEL_52;
        }

        goto LABEL_46;
      }

      v2 = 0xD000000000000024;
      if (v86 == 3)
      {
        v85 = v85;
        if (v85 > 1uLL)
        {
          goto LABEL_51;
        }

        goto LABEL_46;
      }

      if ((v85 & 0x8000000000000000) == 0)
      {
        if (v85 > 1)
        {
          goto LABEL_51;
        }

LABEL_46:
        sub_1D1B61578(v82, type metadata accessor for StaticCharacteristic);
        v53 = v195;
        if (v85 == 1)
        {
          goto LABEL_49;
        }

        goto LABEL_53;
      }

      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    v23 = v76;
    if (v86)
    {
      if (v86 == 1)
      {
        v85 = v85;
        v2 = 0xD000000000000024;
        if (v85 > 1uLL)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v2 = 0xD000000000000024;
        v85 = v85;
        if (v85 > 1uLL)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_46;
    }

    sub_1D1B61578(v82, type metadata accessor for StaticCharacteristic);
    v2 = 0xD000000000000024;
    v53 = v195;
    if (v85)
    {
LABEL_49:
      v88 = v181;
      (*v193)(v181, v66, v197);
      v89 = v194;
      sub_1D1762CB8(v194, v88);
      v90 = *v191;
      (*v191)(v89, v197);
      sub_1D1B61578(v66, type metadata accessor for StaticService);
      v41 = v196;
      v90(v196, v197);
      goto LABEL_5;
    }

LABEL_53:
    LOBYTE(v200) = v67;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v53 == v91)
    {
    }

    else
    {
      v92 = sub_1D1E6904C();

      if ((v92 & 1) == 0)
      {
        goto LABEL_68;
      }
    }

    v3 = *(v66 + v198);
    LOBYTE(v200) = *(v66 + v198);
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v53 == v93)
    {
    }

    else
    {
      v94 = sub_1D1E6904C();

      if ((v94 & 1) == 0)
      {
        if (v3 != 11)
        {
          goto LABEL_68;
        }

        v200 = *(v66 + v23[32]);
        v199 = 28;
        v206 = StaticCharacteristicsBag.int(for:)(&v199);
        if (v206.is_nil || v206.value != 1)
        {
          goto LABEL_68;
        }

        goto LABEL_63;
      }
    }

    v200 = *(v66 + v23[32]);
    v199 = -98;
    v205 = StaticCharacteristicsBag.int(for:)(&v199);
    if (v205.is_nil || v205.value < 1)
    {
      goto LABEL_68;
    }

LABEL_63:
    if (sub_1D1B61878(v66))
    {
      v2 = v23;
LABEL_85:
      v41 = v196;
      goto LABEL_86;
    }

LABEL_68:
    LOBYTE(v200) = v67;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v53 == v95)
    {
    }

    else
    {
      v96 = sub_1D1E6904C();

      if ((v96 & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    if (sub_1D1B61878(v66))
    {
      v2 = v23;
      goto LABEL_85;
    }

LABEL_74:
    LOBYTE(v200) = v67;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v53 == v97)
    {
    }

    else
    {
      v98 = sub_1D1E6904C();

      if ((v98 & 1) == 0)
      {
        goto LABEL_91;
      }
    }

    v3 = *(v66 + v198);
    LOBYTE(v200) = *(v66 + v198);
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v53 == v99)
    {

LABEL_82:
      v200 = *(v66 + v23[32]);
      v199 = 40;
      v207 = StaticCharacteristicsBag.int(for:)(&v199);
      if (!v207.is_nil && v207.value >= 1)
      {
        goto LABEL_84;
      }

      goto LABEL_91;
    }

    v100 = sub_1D1E6904C();

    if (v100)
    {
      goto LABEL_82;
    }

    if (v3 == 11)
    {
      v200 = *(v66 + v23[32]);
      v199 = 28;
      v208 = StaticCharacteristicsBag.int(for:)(&v199);
      if (!v208.is_nil && v208.value == 1)
      {
LABEL_84:
        v2 = v23;
        goto LABEL_85;
      }
    }

LABEL_91:
    if (v67 != 11)
    {
      sub_1D1B61578(v66, type metadata accessor for StaticService);
      v41 = v196;
      (*v191)(v196, v197);
      goto LABEL_5;
    }

    v106 = *(v66 + v23[28]);
    v41 = v196;
    if (v106 == 53)
    {
      LOBYTE(v106) = *(v66 + v198);
    }

    LOBYTE(v200) = v106;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v53 == v107)
    {
    }

    else
    {
      v108 = sub_1D1E6904C();

      v104 = v197;
      v105 = v191;
      if ((v108 & 1) == 0)
      {
        goto LABEL_87;
      }
    }

    v200 = *(v66 + v23[32]);
    v199 = 28;
    v209 = StaticCharacteristicsBag.int(for:)(&v199);
    v105 = v191;
    v104 = v197;
    if (v209.is_nil || v209.value != 1)
    {
      goto LABEL_87;
    }

    v2 = v23;
LABEL_86:
    v101 = v181;
    v102 = v197;
    (*v193)(v181, v66, v197);
    v103 = v194;
    sub_1D1762CB8(v194, v101);
    v104 = v102;
    v105 = v191;
    (*v191)(v103, v102);
    v23 = v2;
LABEL_87:
    sub_1D1B61578(v66, type metadata accessor for StaticService);
    (*v105)(v41, v104);
LABEL_5:
    v48 = v188;
    v44 = v189;
  }

  v109 = v203;
  v110 = v204;
  v111 = *(v204 + 16);
  v112 = *(v203 + 16);
  v113 = __OFADD__(v111, v112);
  v114 = v111 + v112;
  if (v113)
  {
    goto LABEL_126;
  }

  v115 = v202;
  v116 = *(v202 + 16);
  v113 = __OFADD__(v114, v116);
  v117 = v114 + v116;
  if (v113)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  v118 = v201;
  v119 = *(v201 + 16);
  v2 = v117 + v119;
  if (__OFADD__(v117, v119))
  {
LABEL_128:
    __break(1u);
    return result;
  }

  v120 = sub_1D18C02C0(v115, v109);
  v121 = sub_1D18C02C0(v118, v120);
  v122 = sub_1D18C02C0(v110, v121);
  if (v2 <= 0)
  {

    v131 = type metadata accessor for WindowStatusItem(0);
    return (*(*(v131 - 8) + 56))(v178, 1, 1, v131);
  }

  v123 = *(v110 + 16);
  v198 = v122;
  if (!v123)
  {

    v132 = *(v115 + 16);
    v3 = v171;
    if (v132 && v132 == v2)
    {

      static String.hfLocalized(_:)(0xD000000000000028, 0x80000001D1EC5670);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v133 = swift_allocObject();
      *(v133 + 16) = xmmword_1D1E739C0;
      v134 = *(v115 + 16);

      v135 = MEMORY[0x1E69E65A8];
      *(v133 + 56) = MEMORY[0x1E69E6530];
      *(v133 + 64) = v135;
      *(v133 + 32) = v134;
LABEL_118:
      v127 = sub_1D1E6783C();
      v129 = v145;
      v130 = "door.left.hand.open";
      v141 = 0xD000000000000014;
      goto LABEL_119;
    }

    v136 = *(v118 + 16);
    if (v136 && v136 == v2)
    {
      static String.hfLocalized(_:)(0xD000000000000028, 0x80000001D1EC5640);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v137 = swift_allocObject();
      *(v137 + 16) = xmmword_1D1E739C0;
      v138 = *(v118 + 16);

      v139 = MEMORY[0x1E69E65A8];
      *(v137 + 56) = MEMORY[0x1E69E6530];
      *(v137 + 64) = v139;
      *(v137 + 32) = v138;
      v127 = sub_1D1E6783C();
      v129 = v140;
      v130 = "window.horizontal.closed";
      v141 = 0xD000000000000016;
LABEL_119:
      v196 = v141;
      goto LABEL_120;
    }

LABEL_117:

    static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EC5610);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v142 = swift_allocObject();
    v143 = MEMORY[0x1E69E6530];
    *(v142 + 16) = xmmword_1D1E739C0;
    v144 = MEMORY[0x1E69E65A8];
    *(v142 + 56) = v143;
    *(v142 + 64) = v144;
    *(v142 + 32) = v2;
    goto LABEL_118;
  }

  static String.hfLocalized(_:)(0xD00000000000002BLL, 0x80000001D1EC55B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
  v124 = swift_allocObject();
  *(v124 + 16) = xmmword_1D1E739C0;
  v125 = *(v110 + 16);

  v126 = MEMORY[0x1E69E65A8];
  *(v124 + 56) = MEMORY[0x1E69E6530];
  *(v124 + 64) = v126;
  *(v124 + 32) = v125;
  v127 = sub_1D1E6783C();
  v129 = v128;
  v130 = "door.left.hand.open";
  v196 = 0xD000000000000014;
  v3 = v171;
LABEL_120:

  v146 = v130 | 0x8000000000000000;
  v147 = v184;
  v148 = v170;
  v149 = v197;
  (*(v184 + 56))(v170, 1, 1, v197);
  v150 = static String.hfLocalized(_:)(0xD000000000000020, 0x80000001D1EC55E0);
  v152 = v151;
  sub_1D1741C08(v148, v3, &qword_1EC642590, qword_1D1E71260);
  v153 = *(v147 + 48);
  if (v153(v3, 1, v149) == 1)
  {
    v195 = v152;
    v154 = v169;
    sub_1D1E66A6C();
    sub_1D1741A30(v148, &qword_1EC642590, qword_1D1E71260);
    v155 = v153(v3, 1, v149);
    v152 = v195;
    if (v155 != 1)
    {
      sub_1D1741A30(v3, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    sub_1D1741A30(v148, &qword_1EC642590, qword_1D1E71260);
    v154 = v169;
    (*v186)(v169, v3, v149);
  }

  v156 = v172;
  (*v186)(v172, v154, v149);
  v157 = v173;
  v158 = (v156 + *(v173 + 20));
  *v158 = v196;
  v158[1] = v146;
  v159 = (v156 + v157[6]);
  *v159 = v150;
  v159[1] = v152;
  v160 = (v156 + v157[7]);
  *v160 = v127;
  v160[1] = v129;
  v161 = v156 + v157[8];
  *v161 = 0;
  *(v161 + 8) = 0;
  *(v161 + 16) = 0;
  *(v161 + 24) = -1;
  v162 = v174;
  v163 = sub_1D1B61510(v156, v174, type metadata accessor for IconTextValueStringDataHolder);
  MEMORY[0x1EEE9AC00](v163);
  *(&v168 - 2) = v198;
  v200 = v185;
  v164 = v175;
  sub_1D1E66C8C();

  swift_storeEnumTagMultiPayload();
  v165 = v177;
  sub_1D1B61510(v164, v177, type metadata accessor for TilesFilter);
  v166 = type metadata accessor for WindowStatusItem(0);
  v167 = v178;
  *(v178 + v166[6]) = 4;
  *(v167 + v166[7]) = 3;
  sub_1D1B61510(v162, v167, type metadata accessor for IconTextValueStringDataHolder);
  sub_1D1B61510(v165, v167 + v166[5], type metadata accessor for TilesFilter);
  return (*(*(v166 - 1) + 56))(v167, 0, 1, v166);
}