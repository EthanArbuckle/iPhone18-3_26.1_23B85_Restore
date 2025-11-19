uint64_t sub_1D17841EC(uint64_t a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1D1784A20(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  result = MEMORY[0x1D38917C0](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1D1762CB8(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1D17843EC(uint64_t a1)
{
  v2 = type metadata accessor for StaticZone();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1D1784A20(&qword_1EE07B4E8, type metadata accessor for StaticZone);
  result = MEMORY[0x1D38917C0](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_1D1785B1C(v13, v7, type metadata accessor for StaticZone);
      sub_1D1763C54(v9, v7);
      sub_1D1785B84(v9, type metadata accessor for StaticZone);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_1D17845DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1D38917C0](v2, MEMORY[0x1E69E7668], MEMORY[0x1E69E7678]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1D1765494(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1D1784650(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1D38917C0](v2, MEMORY[0x1E69E75F8], MEMORY[0x1E69E7608]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1D17653AC(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1D178472C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D17859B8();
  result = MEMORY[0x1D38917C0](v2, &type metadata for StaticRVCClusterGroup.RunMode, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 56);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = *(v5 - 3);
      v8 = *(v5 - 2);

      sub_1D17659C4(v10, v9, v8, v7, v6);

      v5 += 4;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_1D17847E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D17858BC();
  result = MEMORY[0x1D38917C0](v2, &type metadata for ModeClusterSemanticTag, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1D1765BC4(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1D178485C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D1785964();
  result = MEMORY[0x1D38917C0](v2, &type metadata for StaticRVCClusterGroup.OperationalState, v3);
  v7 = result;
  if (v2)
  {
    v5 = a1 + 33;
    do
    {
      sub_1D1765D80(v6, *(v5 - 1));
      v5 += 2;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1D1784908(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x1D38917C0](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

uint64_t sub_1D1784988(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1D38917C0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1D1762FC4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1D1784A20(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D1784A6C()
{
  result = qword_1EC6434C8;
  if (!qword_1EC6434C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6434C8);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D1784AD4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D1784B1C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1D1784B74(uint64_t a1)
{
  v2 = type metadata accessor for Event();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1D1784A20(&qword_1EC643578, type metadata accessor for Event);
  result = MEMORY[0x1D38917C0](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_1D1785B1C(v13, v7, type metadata accessor for Event);
      sub_1D176358C(v9, v7);
      sub_1D1785B84(v9, type metadata accessor for Event);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_1D1784D00(uint64_t a1)
{
  v2 = type metadata accessor for Action();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1D1784A20(&qword_1EC643570, type metadata accessor for Action);
  result = MEMORY[0x1D38917C0](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_1D1785B1C(v13, v7, type metadata accessor for Action);
      sub_1D176334C(v9, v7);
      sub_1D1785B84(v9, type metadata accessor for Action);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_1D1784EEC(uint64_t a1)
{
  v2 = type metadata accessor for WriteInProgressStatusViewModel.ID(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1D1784A20(&qword_1EC643528, type metadata accessor for WriteInProgressStatusViewModel.ID);
  result = MEMORY[0x1D38917C0](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_1D1785B1C(v13, v7, type metadata accessor for WriteInProgressStatusViewModel.ID);
      sub_1D17646BC(v9, v7);
      sub_1D1785B84(v9, type metadata accessor for WriteInProgressStatusViewModel.ID);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_1D1785078(uint64_t a1)
{
  v2 = type metadata accessor for StaticService(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1D1784A20(&qword_1EE07AB20, type metadata accessor for StaticService);
  result = MEMORY[0x1D38917C0](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_1D1785B1C(v13, v7, type metadata accessor for StaticService);
      sub_1D17625F8(v9, v7);
      sub_1D1785B84(v9, type metadata accessor for StaticService);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_1D1785204(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1D38917C0](v2, MEMORY[0x1E69E76D8], MEMORY[0x1E69E76E8]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1D1766118(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1D17852A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for MTRAttributeIDType(0);
  v4 = v3;
  v5 = sub_1D1784A20(&qword_1EC643550, type metadata accessor for MTRAttributeIDType);
  result = MEMORY[0x1D38917C0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_1D17657B4(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_1D1785354(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6434D0, &qword_1D1E71C60);
  v4 = sub_1D1785400();
  result = MEMORY[0x1D38917C0](v2, v3, v4);
  v10 = result;
  if (v2)
  {
    v6 = (a1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      sub_1D1767EBC(&v9, v8, v7);

      v6 += 2;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

unint64_t sub_1D1785400()
{
  result = qword_1EC6434D8;
  if (!qword_1EC6434D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6434D0, &qword_1D1E71C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6434D8);
  }

  return result;
}

uint64_t sub_1D178547C(uint64_t a1)
{
  v2 = type metadata accessor for MatterTilePath(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1D1784A20(&qword_1EC643538, type metadata accessor for MatterTilePath);
  result = MEMORY[0x1D38917C0](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_1D1785B1C(v13, v7, type metadata accessor for MatterTilePath);
      sub_1D1768044(v9, v7);
      sub_1D1785B84(v9, type metadata accessor for MatterTilePath);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_1D1785668(unint64_t a1, unint64_t a2, uint64_t *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D1E6873C())
  {
    v12 = sub_1D1741B10(0, a2, a3);
    v13 = sub_1D1771944(a4, a2, a3);
    result = MEMORY[0x1D38917C0](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x1D3891EF0](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      ++a2;
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_1D1E6873C();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_1D17857C0()
{
  result = qword_1EC643510;
  if (!qword_1EC643510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643510);
  }

  return result;
}

unint64_t sub_1D1785814()
{
  result = qword_1EC643530;
  if (!qword_1EC643530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643530);
  }

  return result;
}

unint64_t sub_1D1785868()
{
  result = qword_1EE07ABD8[0];
  if (!qword_1EE07ABD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE07ABD8);
  }

  return result;
}

unint64_t sub_1D17858BC()
{
  result = qword_1EC643540;
  if (!qword_1EC643540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643540);
  }

  return result;
}

unint64_t sub_1D1785910()
{
  result = qword_1EE07C400[0];
  if (!qword_1EE07C400[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE07C400);
  }

  return result;
}

unint64_t sub_1D1785964()
{
  result = qword_1EC643548;
  if (!qword_1EC643548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643548);
  }

  return result;
}

unint64_t sub_1D17859B8()
{
  result = qword_1EE07C3F0;
  if (!qword_1EE07C3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07C3F0);
  }

  return result;
}

unint64_t sub_1D1785A0C()
{
  result = qword_1EE07CE70[0];
  if (!qword_1EE07CE70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE07CE70);
  }

  return result;
}

unint64_t sub_1D1785A60()
{
  result = qword_1EE07C968[0];
  if (!qword_1EE07C968[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE07C968);
  }

  return result;
}

uint64_t sub_1D1785AB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1785B1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1785B84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Action.NaturalLightAction.init(action:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = sub_1D1E66A7C();
  v5 = *(v57 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v57);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v48 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v48 - v13;
  v15 = [a1 lightProfile];
  if (!v15)
  {
    goto LABEL_15;
  }

  v16 = v15;
  v17 = [v16 accessory];
  if (!v17)
  {

LABEL_15:
    type metadata accessor for Action.NaturalLightAction.Error(0);
    sub_1D1790EF0(&qword_1EC643588, type metadata accessor for Action.NaturalLightAction.Error);
    swift_allocError();
    *v32 = a1;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v18 = v17;
  v54 = v2;
  v55 = a2;
  v19 = [v16 services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v20 = sub_1D1E67C1C();

  v56 = v20;
  if (v20 >> 62)
  {
    v21 = sub_1D1E6873C();
    v53 = v9;
    if (v21)
    {
      goto LABEL_5;
    }

LABEL_17:

    v24 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v53 = v9;
  if (!v21)
  {
    goto LABEL_17;
  }

LABEL_5:
  v49 = v18;
  v50 = v16;
  v51 = v12;
  v52 = a1;
  v58 = MEMORY[0x1E69E7CC0];
  result = sub_1D178CEFC(0, v21 & ~(v21 >> 63), 0);
  if (v21 < 0)
  {
    __break(1u);
    return result;
  }

  v23 = 0;
  v24 = v58;
  v25 = v56;
  v26 = v56 & 0xC000000000000001;
  do
  {
    if (v26)
    {
      v27 = MEMORY[0x1D3891EF0](v23, v25);
    }

    else
    {
      v27 = *(v25 + 8 * v23 + 32);
    }

    v28 = v27;
    v29 = [v28 uniqueIdentifier];
    sub_1D1E66A5C();

    v58 = v24;
    v31 = *(v24 + 16);
    v30 = *(v24 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_1D178CEFC(v30 > 1, v31 + 1, 1);
      v24 = v58;
    }

    ++v23;
    *(v24 + 16) = v31 + 1;
    (*(v5 + 32))(v24 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v31, v14, v57);
    v25 = v56;
  }

  while (v21 != v23);

  v12 = v51;
  a1 = v52;
  v18 = v49;
  v16 = v50;
LABEL_18:
  v56 = sub_1D17841EC(v24);

  v33 = [a1 isNaturalLightingEnabled];
  if (qword_1EE07B280 != -1)
  {
    swift_once();
  }

  LODWORD(v52) = byte_1EE07B288;
  if (byte_1EE07B288)
  {
    v34 = [v18 name];
    v50 = sub_1D1E6781C();
    v51 = v35;
  }

  else
  {
    v50 = 0;
    v51 = 0;
  }

  v36 = [v16 uniqueIdentifier];

  sub_1D1E66A5C();
  v37 = [v18 uniqueIdentifier];
  v38 = v12;
  v39 = v53;
  sub_1D1E66A5C();

  v40 = *(v5 + 16);
  v41 = v55;
  v42 = v57;
  v40(v55, v38, v57);
  v43 = type metadata accessor for Action.NaturalLightAction(0);
  v40(v41 + v43[5], v39, v42);
  *(v41 + v43[6]) = v56;
  *(v41 + v43[7]) = v33;
  v44 = *(v5 + 8);
  v44(v39, v42);
  result = (v44)(v38, v42);
  if (v52)
  {
    v46 = v50;
    v45 = v51;
  }

  else
  {

    v46 = 0;
    v45 = 0;
  }

  v47 = (v55 + v43[8]);
  *v47 = v46;
  v47[1] = v45;
  return result;
}

unsigned __int8 *sub_1D1786138(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Action.NaturalLightAction(0);
  v5 = &v1[*(v4 + 20)];
  v6 = sub_1D1E66A2C();
  v7 = [a1 accessoryWithUniqueIdentifier_];

  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = [v7 lightProfiles];
  sub_1D1741B10(0, &qword_1EE079CF0, 0x1E696CBB8);
  sub_1D1791558();
  v9 = sub_1D1E6816C();

  MEMORY[0x1EEE9AC00](v10);
  v17[2] = v2;
  sub_1D1746E10(sub_1D17915C0, v17, v9);
  v12 = v11;

  if (!v12)
  {

LABEL_5:
    type metadata accessor for Action.NaturalLightAction.Error(0);
    sub_1D1790EF0(&qword_1EC643588, type metadata accessor for Action.NaturalLightAction.Error);
    swift_allocError();
    v14 = v13;
    v15 = sub_1D1E66A7C();
    (*(*(v15 - 8) + 16))(v14, v2, v15);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v2;
  }

  v2 = [objc_allocWithZone(MEMORY[0x1E696CBC0]) initWithLightProfile:v12 naturalLightingEnabled:v2[*(v4 + 28)]];

  return v2;
}

uint64_t Action.NaturalLightAction.debugDescription.getter()
{
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD000000000000027, 0x80000001D1EB8BB0);
  v1 = type metadata accessor for Action.NaturalLightAction(0);
  if (*(v0 + v1[7]))
  {
    v2 = 0x64656C62616E65;
  }

  else
  {
    v2 = 0x64656C6261736964;
  }

  if (*(v0 + v1[7]))
  {
    v3 = 0xE700000000000000;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  MEMORY[0x1D3890F70](v2, v3);

  MEMORY[0x1D3890F70](0x6F727020726F6620, 0xED000020656C6966);
  sub_1D1E66A7C();
  sub_1D1790EF0(&qword_1EE07B250, MEMORY[0x1E69695A8]);
  v4 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v4);

  MEMORY[0x1D3890F70](0x65636361206E6F20, 0xEE002079726F7373);
  v5 = (v0 + v1[8]);
  if (v5[1])
  {
    v13 = *v5;
    v14 = v5[1];

    MEMORY[0x1D3890F70](10272, 0xE200000000000000);
    v6 = v0 + v1[5];
    v7 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v7);

    MEMORY[0x1D3890F70](41, 0xE100000000000000);
    v8 = v13;
    v9 = v14;
  }

  else
  {
    v10 = v0 + v1[5];
    v8 = sub_1D1E68FAC();
    v9 = v11;
  }

  MEMORY[0x1D3890F70](v8, v9);

  MEMORY[0x1D3890F70](32032, 0xE200000000000000);
  return 0;
}

void *sub_1D178659C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643688, &unk_1D1E71D98);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for BoxedTileInfoBearer(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v32 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v30 = &v26 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v18 = *(type metadata accessor for StaticUserActionPrediction() - 8);
  v27 = v12;
  v19 = (v12 + 48);
  v20 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v31 = *(v18 + 72);
  v21 = MEMORY[0x1E69E7CC0];
  v28 = v11;
  v29 = a2;
  while (1)
  {
    a1(v20);
    if (v3)
    {
      break;
    }

    if ((*v19)(v10, 1, v11) == 1)
    {
      sub_1D1741A30(v10, &qword_1EC643688, &unk_1D1E71D98);
    }

    else
    {
      v22 = v30;
      sub_1D1790FF4(v10, v30, type metadata accessor for BoxedTileInfoBearer);
      sub_1D1790FF4(v22, v32, type metadata accessor for BoxedTileInfoBearer);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1D177D020(0, v21[2] + 1, 1, v21);
      }

      v24 = v21[2];
      v23 = v21[3];
      if (v24 >= v23 >> 1)
      {
        v21 = sub_1D177D020(v23 > 1, v24 + 1, 1, v21);
      }

      v21[2] = v24 + 1;
      sub_1D1790FF4(v32, v21 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, type metadata accessor for BoxedTileInfoBearer);
      v11 = v28;
    }

    v20 += v31;
    if (!--v17)
    {
      return v21;
    }
  }

  return v21;
}

void *sub_1D17868B8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for StaticService(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v32 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v30 = &v26 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v18 = *(sub_1D1E66A7C() - 8);
  v27 = v12;
  v19 = (v12 + 48);
  v20 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v31 = *(v18 + 72);
  v21 = MEMORY[0x1E69E7CC0];
  v28 = v11;
  v29 = a2;
  while (1)
  {
    a1(v20);
    if (v3)
    {
      break;
    }

    if ((*v19)(v10, 1, v11) == 1)
    {
      sub_1D1741A30(v10, &qword_1EC6436F0, &qword_1D1E99BC0);
    }

    else
    {
      v22 = v30;
      sub_1D1790FF4(v10, v30, type metadata accessor for StaticService);
      sub_1D1790FF4(v22, v32, type metadata accessor for StaticService);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1D177D048(0, v21[2] + 1, 1, v21);
      }

      v24 = v21[2];
      v23 = v21[3];
      if (v24 >= v23 >> 1)
      {
        v21 = sub_1D177D048(v23 > 1, v24 + 1, 1, v21);
      }

      v21[2] = v24 + 1;
      sub_1D1790FF4(v32, v21 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, type metadata accessor for StaticService);
      v11 = v28;
    }

    v20 += v31;
    if (!--v17)
    {
      return v21;
    }
  }

  return v21;
}

void *sub_1D1786BD4(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v50 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v38 - v7;
  v46 = type metadata accessor for StaticService(0);
  v9 = *(v46 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v46);
  v43 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v41 = &v38 - v13;
  v14 = sub_1D1E66A7C();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3 + 56;
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a3 + 56);
  v24 = (v21 + 63) >> 6;
  v47 = v17 + 16;
  v48 = v17;
  v51 = (v17 + 8);
  v42 = v9;
  v45 = (v9 + 48);
  v25 = v16;
  v52 = a3;

  v27 = 0;
  v44 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v28 = v27;
    if (!v23)
    {
      break;
    }

LABEL_8:
    (*(v48 + 16))(v19, *(v52 + 48) + *(v48 + 72) * (__clz(__rbit64(v23)) | (v27 << 6)), v25);
    v50(v19);
    if (v3)
    {
      (*v51)(v19, v25);
      v37 = v44;

      return v37;
    }

    v23 &= v23 - 1;
    (*v51)(v19, v25);
    if ((*v45)(v8, 1, v46) == 1)
    {
      result = sub_1D1741A30(v8, &qword_1EC6436F0, &qword_1D1E99BC0);
    }

    else
    {
      v40 = v25;
      v29 = v41;
      sub_1D1790FF4(v8, v41, type metadata accessor for StaticService);
      sub_1D1790FF4(v29, v43, type metadata accessor for StaticService);
      v30 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1D177D048(0, v30[2] + 1, 1, v30);
      }

      v32 = v30[2];
      v31 = v30[3];
      v44 = v30;
      v33 = v32 + 1;
      v25 = v40;
      if (v32 >= v31 >> 1)
      {
        v39 = v32;
        v36 = sub_1D177D048(v31 > 1, v32 + 1, 1, v44);
        v32 = v39;
        v44 = v36;
      }

      v34 = v43;
      v35 = v44;
      v44[2] = v33;
      result = sub_1D1790FF4(v34, v35 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v32, type metadata accessor for StaticService);
    }
  }

  while (1)
  {
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v27 >= v24)
    {

      return v44;
    }

    v23 = *(v20 + 8 * v27);
    ++v28;
    if (v23)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D178701C(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v33 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643718, &qword_1D1E71E70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v24 - v7;
  v32 = type metadata accessor for StaticActionSet();
  v27 = *(v32 - 8);
  v9 = *(v27 + 64);
  v10 = MEMORY[0x1EEE9AC00](v32);
  v31 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v26 = &v24 - v12;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v14 = 0;
    v29 = a3 & 0xFFFFFFFFFFFFFF8;
    v30 = a3 & 0xC000000000000001;
    v15 = (v27 + 48);
    v16 = MEMORY[0x1E69E7CC0];
    v25 = a3;
    v28 = i;
    while (1)
    {
      if (v30)
      {
        v17 = MEMORY[0x1D3891EF0](v14, a3);
      }

      else
      {
        if (v14 >= *(v29 + 16))
        {
          goto LABEL_20;
        }

        v17 = *(a3 + 8 * v14 + 32);
      }

      v18 = v17;
      v19 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v34 = v17;
      v33(&v34);
      if (v3)
      {

        return v16;
      }

      if ((*v15)(v8, 1, v32) == 1)
      {
        sub_1D1741A30(v8, &qword_1EC643718, &qword_1D1E71E70);
      }

      else
      {
        v20 = v26;
        sub_1D1790FF4(v8, v26, type metadata accessor for StaticActionSet);
        sub_1D1790FF4(v20, v31, type metadata accessor for StaticActionSet);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D177D754(0, v16[2] + 1, 1, v16);
        }

        v22 = v16[2];
        v21 = v16[3];
        if (v22 >= v21 >> 1)
        {
          v16 = sub_1D177D754(v21 > 1, v22 + 1, 1, v16);
        }

        v16[2] = v22 + 1;
        sub_1D1790FF4(v31, v16 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22, type metadata accessor for StaticActionSet);
        a3 = v25;
      }

      ++v14;
      if (v19 == v28)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_1D1787364(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v33 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643770, &qword_1D1E71EC8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v24 - v7;
  v32 = type metadata accessor for StaticMediaSystem();
  v27 = *(v32 - 8);
  v9 = *(v27 + 64);
  v10 = MEMORY[0x1EEE9AC00](v32);
  v31 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v26 = &v24 - v12;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v14 = 0;
    v29 = a3 & 0xFFFFFFFFFFFFFF8;
    v30 = a3 & 0xC000000000000001;
    v15 = (v27 + 48);
    v16 = MEMORY[0x1E69E7CC0];
    v25 = a3;
    v28 = i;
    while (1)
    {
      if (v30)
      {
        v17 = MEMORY[0x1D3891EF0](v14, a3);
      }

      else
      {
        if (v14 >= *(v29 + 16))
        {
          goto LABEL_20;
        }

        v17 = *(a3 + 8 * v14 + 32);
      }

      v18 = v17;
      v19 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v34 = v17;
      v33(&v34);
      if (v3)
      {

        return v16;
      }

      if ((*v15)(v8, 1, v32) == 1)
      {
        sub_1D1741A30(v8, &qword_1EC643770, &qword_1D1E71EC8);
      }

      else
      {
        v20 = v26;
        sub_1D1790FF4(v8, v26, type metadata accessor for StaticMediaSystem);
        sub_1D1790FF4(v20, v31, type metadata accessor for StaticMediaSystem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D177D844(0, v16[2] + 1, 1, v16);
        }

        v22 = v16[2];
        v21 = v16[3];
        if (v22 >= v21 >> 1)
        {
          v16 = sub_1D177D844(v21 > 1, v22 + 1, 1, v16);
        }

        v16[2] = v22 + 1;
        sub_1D1790FF4(v31, v16 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22, type metadata accessor for StaticMediaSystem);
        a3 = v25;
      }

      ++v14;
      if (v19 == v28)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_1D17876AC(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v33 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643758, &qword_1D1E71EB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v24 - v7;
  v32 = type metadata accessor for StaticMediaProfile();
  v27 = *(v32 - 8);
  v9 = *(v27 + 64);
  v10 = MEMORY[0x1EEE9AC00](v32);
  v31 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v26 = &v24 - v12;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v14 = 0;
    v29 = a3 & 0xFFFFFFFFFFFFFF8;
    v30 = a3 & 0xC000000000000001;
    v15 = (v27 + 48);
    v16 = MEMORY[0x1E69E7CC0];
    v25 = a3;
    v28 = i;
    while (1)
    {
      if (v30)
      {
        v17 = MEMORY[0x1D3891EF0](v14, a3);
      }

      else
      {
        if (v14 >= *(v29 + 16))
        {
          goto LABEL_20;
        }

        v17 = *(a3 + 8 * v14 + 32);
      }

      v18 = v17;
      v19 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v34 = v17;
      v33(&v34);
      if (v3)
      {

        return v16;
      }

      if ((*v15)(v8, 1, v32) == 1)
      {
        sub_1D1741A30(v8, &qword_1EC643758, &qword_1D1E71EB0);
      }

      else
      {
        v20 = v26;
        sub_1D1790FF4(v8, v26, type metadata accessor for StaticMediaProfile);
        sub_1D1790FF4(v20, v31, type metadata accessor for StaticMediaProfile);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D177D86C(0, v16[2] + 1, 1, v16);
        }

        v22 = v16[2];
        v21 = v16[3];
        if (v22 >= v21 >> 1)
        {
          v16 = sub_1D177D86C(v21 > 1, v22 + 1, 1, v16);
        }

        v16[2] = v22 + 1;
        sub_1D1790FF4(v31, v16 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22, type metadata accessor for StaticMediaProfile);
        a3 = v25;
      }

      ++v14;
      if (v19 == v28)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_1D17879F4(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v50 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643878, &qword_1D1E72030);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v38 - v7;
  v46 = type metadata accessor for StaticRoom(0);
  v9 = *(v46 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v46);
  v43 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v41 = &v38 - v13;
  v14 = sub_1D1E66A7C();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3 + 56;
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a3 + 56);
  v24 = (v21 + 63) >> 6;
  v47 = v17 + 16;
  v48 = v17;
  v51 = (v17 + 8);
  v42 = v9;
  v45 = (v9 + 48);
  v25 = v16;
  v52 = a3;

  v27 = 0;
  v44 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v28 = v27;
    if (!v23)
    {
      break;
    }

LABEL_8:
    (*(v48 + 16))(v19, *(v52 + 48) + *(v48 + 72) * (__clz(__rbit64(v23)) | (v27 << 6)), v25);
    v50(v19);
    if (v3)
    {
      (*v51)(v19, v25);
      v37 = v44;

      return v37;
    }

    v23 &= v23 - 1;
    (*v51)(v19, v25);
    if ((*v45)(v8, 1, v46) == 1)
    {
      result = sub_1D1741A30(v8, &qword_1EC643878, &qword_1D1E72030);
    }

    else
    {
      v40 = v25;
      v29 = v41;
      sub_1D1790FF4(v8, v41, type metadata accessor for StaticRoom);
      sub_1D1790FF4(v29, v43, type metadata accessor for StaticRoom);
      v30 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1D177DC2C(0, v30[2] + 1, 1, v30);
      }

      v32 = v30[2];
      v31 = v30[3];
      v44 = v30;
      v33 = v32 + 1;
      v25 = v40;
      if (v32 >= v31 >> 1)
      {
        v39 = v32;
        v36 = sub_1D177DC2C(v31 > 1, v32 + 1, 1, v44);
        v32 = v39;
        v44 = v36;
      }

      v34 = v43;
      v35 = v44;
      v44[2] = v33;
      result = sub_1D1790FF4(v34, v35 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v32, type metadata accessor for StaticRoom);
    }
  }

  while (1)
  {
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v27 >= v24)
    {

      return v44;
    }

    v23 = *(v20 + 8 * v27);
    ++v28;
    if (v23)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D1787E3C(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643870, &qword_1D1E72028);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for StaticServiceCharacteristicDoublet();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v31 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v30 = &v26 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v18 = (a3 + 32);
  v27 = v15;
  v19 = (v15 + 48);
  v20 = MEMORY[0x1E69E7CC0];
  v28 = v11;
  v29 = a2;
  while (1)
  {
    v21 = *v18++;
    v32 = v21;
    a1(&v32);
    if (v3)
    {
      break;
    }

    if ((*v19)(v10, 1, v11) == 1)
    {
      sub_1D1741A30(v10, &qword_1EC643870, &qword_1D1E72028);
    }

    else
    {
      v22 = v30;
      sub_1D1790FF4(v10, v30, type metadata accessor for StaticServiceCharacteristicDoublet);
      sub_1D1790FF4(v22, v31, type metadata accessor for StaticServiceCharacteristicDoublet);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1D177DC54(0, v20[2] + 1, 1, v20);
      }

      v24 = v20[2];
      v23 = v20[3];
      if (v24 >= v23 >> 1)
      {
        v20 = sub_1D177DC54(v23 > 1, v24 + 1, 1, v20);
      }

      v20[2] = v24 + 1;
      sub_1D1790FF4(v31, v20 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, type metadata accessor for StaticServiceCharacteristicDoublet);
      v11 = v28;
    }

    if (!--v17)
    {
      return v20;
    }
  }

  return v20;
}

void *sub_1D1788104(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643860, &qword_1D1E72008);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for StaticTimer();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v29 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v28 = &v25 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v18 = a3 + 32;
  v25 = v15;
  v19 = (v15 + 48);
  v20 = MEMORY[0x1E69E7CC0];
  v26 = v11;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v19)(v10, 1, v11) == 1)
    {
      sub_1D1741A30(v10, &qword_1EC643860, &qword_1D1E72008);
    }

    else
    {
      v21 = v28;
      sub_1D1790FF4(v10, v28, type metadata accessor for StaticTimer);
      sub_1D1790FF4(v21, v29, type metadata accessor for StaticTimer);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1D177DCCC(0, v20[2] + 1, 1, v20);
      }

      v23 = v20[2];
      v22 = v20[3];
      if (v23 >= v22 >> 1)
      {
        v20 = sub_1D177DCCC(v22 > 1, v23 + 1, 1, v20);
      }

      v20[2] = v23 + 1;
      sub_1D1790FF4(v29, v20 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23, type metadata accessor for StaticTimer);
      v11 = v26;
    }

    v18 += 40;
    if (!--v17)
    {
      return v20;
    }
  }

  return v20;
}

void *sub_1D17883C8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643868, &unk_1D1E72018);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for StaticAlarm();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v29 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v28 = &v25 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v18 = a3 + 32;
  v25 = v15;
  v19 = (v15 + 48);
  v20 = MEMORY[0x1E69E7CC0];
  v26 = v11;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v19)(v10, 1, v11) == 1)
    {
      sub_1D1741A30(v10, &qword_1EC643868, &unk_1D1E72018);
    }

    else
    {
      v21 = v28;
      sub_1D1790FF4(v10, v28, type metadata accessor for StaticAlarm);
      sub_1D1790FF4(v21, v29, type metadata accessor for StaticAlarm);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1D177DCA4(0, v20[2] + 1, 1, v20);
      }

      v23 = v20[2];
      v22 = v20[3];
      if (v23 >= v22 >> 1)
      {
        v20 = sub_1D177DCA4(v22 > 1, v23 + 1, 1, v20);
      }

      v20[2] = v23 + 1;
      sub_1D1790FF4(v29, v20 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23, type metadata accessor for StaticAlarm);
      v11 = v26;
    }

    v18 += 40;
    if (!--v17)
    {
      return v20;
    }
  }

  return v20;
}

char *sub_1D178868C(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v6 = 0;
    v17 = v4 & 0xFFFFFFFFFFFFFF8;
    v18 = v4 & 0xC000000000000001;
    v20 = MEMORY[0x1E69E7CC0];
    v16 = v4;
    while (1)
    {
      if (v18)
      {
        v8 = MEMORY[0x1D3891EF0](v6, v4);
      }

      else
      {
        if (v6 >= *(v17 + 16))
        {
          goto LABEL_19;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v22 = v8;
      a1(&v21, &v22);
      if (v3)
      {

        return v20;
      }

      v11 = v21;
      v12 = BYTE1(v21);
      if (v12 <= 0xFE)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1D177E508(0, *(v20 + 2) + 1, 1, v20);
        }

        v14 = *(v20 + 2);
        v13 = *(v20 + 3);
        if (v14 >= v13 >> 1)
        {
          v20 = sub_1D177E508((v13 > 1), v14 + 1, 1, v20);
        }

        *(v20 + 2) = v14 + 1;
        v7 = &v20[2 * v14];
        v7[32] = v11;
        v7[33] = v12;
        v4 = v16;
      }

      ++v6;
      if (v10 == i)
      {
        return v20;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_1D1788858(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for StaticMatterDevice();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v31 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v30 = &v26 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v18 = (a3 + 32);
  v27 = v15;
  v19 = (v15 + 48);
  v20 = MEMORY[0x1E69E7CC0];
  v28 = v11;
  v29 = a2;
  while (1)
  {
    v21 = *v18++;
    v32 = v21;
    a1(&v32);
    if (v3)
    {
      break;
    }

    if ((*v19)(v10, 1, v11) == 1)
    {
      sub_1D1741A30(v10, &qword_1EC643650, &qword_1D1E71D40);
    }

    else
    {
      v22 = v30;
      sub_1D1790FF4(v10, v30, type metadata accessor for StaticMatterDevice);
      sub_1D1790FF4(v22, v31, type metadata accessor for StaticMatterDevice);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1D177E900(0, v20[2] + 1, 1, v20);
      }

      v24 = v20[2];
      v23 = v20[3];
      if (v24 >= v23 >> 1)
      {
        v20 = sub_1D177E900(v23 > 1, v24 + 1, 1, v20);
      }

      v20[2] = v24 + 1;
      sub_1D1790FF4(v31, v20 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, type metadata accessor for StaticMatterDevice);
      v11 = v28;
    }

    if (!--v17)
    {
      return v20;
    }
  }

  return v20;
}

void *sub_1D1788B20(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437E0, &unk_1D1E96B80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v27 - v9;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v12 = *(*(updated - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](updated);
  v33 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v31 = &v27 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v18 = *(v15 + 72);
  v28 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = a3 + v28;
  v32 = (v15 + 48);
  v20 = MEMORY[0x1E69E7CC0];
  v29 = updated;
  v30 = a2;
  while (1)
  {
    a1(v19);
    if (v3)
    {
      break;
    }

    if ((*v32)(v10, 1, updated) == 1)
    {
      sub_1D1741A30(v10, &qword_1EC6437E0, &unk_1D1E96B80);
    }

    else
    {
      v21 = v31;
      sub_1D1790FF4(v10, v31, type metadata accessor for StateSnapshot.UpdateType);
      sub_1D1790FF4(v21, v33, type metadata accessor for StateSnapshot.UpdateType);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1D177E928(0, v20[2] + 1, 1, v20);
      }

      v23 = v20[2];
      v22 = v20[3];
      if (v23 >= v22 >> 1)
      {
        v25 = sub_1D177E928(v22 > 1, v23 + 1, 1, v20);
        v24 = v18;
        v20 = v25;
      }

      else
      {
        v24 = v18;
      }

      v20[2] = v23 + 1;
      v18 = v24;
      sub_1D1790FF4(v33, v20 + v28 + v23 * v24, type metadata accessor for StateSnapshot.UpdateType);
      updated = v29;
    }

    v19 += v18;
    if (!--v17)
    {
      return v20;
    }
  }

  return v20;
}

uint64_t sub_1D1788DF8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = result;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = sub_1D1E66A7C();
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      v6(&v18, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      if (v18)
      {
        break;
      }

      result = sub_1D1791518(0);
      if (v7 == v4)
      {
        return v8;
      }
    }

    v17 = v18;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D177F29C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v14 = *(v8 + 16);
    v13 = *(v8 + 24);
    v15 = v14 + 1;
    v16 = v17;
    if (v14 >= v13 >> 1)
    {
      result = sub_1D177F29C((v13 > 1), v14 + 1, 1, v8);
      v16 = v17;
      v15 = v14 + 1;
      v8 = result;
    }

    *(v8 + 16) = v15;
    *(v8 + 16 * v14 + 32) = v16;
  }

  while (v7 != v4);
  return v8;
}

void *sub_1D1788F9C(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v50 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v38 - v7;
  v46 = type metadata accessor for StaticAccessory(0);
  v9 = *(v46 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v46);
  v43 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v41 = &v38 - v13;
  v14 = sub_1D1E66A7C();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3 + 56;
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a3 + 56);
  v24 = (v21 + 63) >> 6;
  v47 = v17 + 16;
  v48 = v17;
  v51 = (v17 + 8);
  v42 = v9;
  v45 = (v9 + 48);
  v25 = v16;
  v52 = a3;

  v27 = 0;
  v44 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v28 = v27;
    if (!v23)
    {
      break;
    }

LABEL_8:
    (*(v48 + 16))(v19, *(v52 + 48) + *(v48 + 72) * (__clz(__rbit64(v23)) | (v27 << 6)), v25);
    v50(v19);
    if (v3)
    {
      (*v51)(v19, v25);
      v37 = v44;

      return v37;
    }

    v23 &= v23 - 1;
    (*v51)(v19, v25);
    if ((*v45)(v8, 1, v46) == 1)
    {
      result = sub_1D1741A30(v8, &qword_1EC6436C8, &unk_1D1E97C40);
    }

    else
    {
      v40 = v25;
      v29 = v41;
      sub_1D1790FF4(v8, v41, type metadata accessor for StaticAccessory);
      sub_1D1790FF4(v29, v43, type metadata accessor for StaticAccessory);
      v30 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1D177F6D4(0, v30[2] + 1, 1, v30);
      }

      v32 = v30[2];
      v31 = v30[3];
      v44 = v30;
      v33 = v32 + 1;
      v25 = v40;
      if (v32 >= v31 >> 1)
      {
        v39 = v32;
        v36 = sub_1D177F6D4(v31 > 1, v32 + 1, 1, v44);
        v32 = v39;
        v44 = v36;
      }

      v34 = v43;
      v35 = v44;
      v44[2] = v33;
      result = sub_1D1790FF4(v34, v35 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v32, type metadata accessor for StaticAccessory);
    }
  }

  while (1)
  {
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v27 >= v24)
    {

      return v44;
    }

    v23 = *(v20 + 8 * v27);
    ++v28;
    if (v23)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D17893E4(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v33 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v24 - v7;
  v32 = type metadata accessor for StaticService(0);
  v27 = *(v32 - 8);
  v9 = *(v27 + 64);
  v10 = MEMORY[0x1EEE9AC00](v32);
  v31 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v26 = &v24 - v12;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v14 = 0;
    v29 = a3 & 0xFFFFFFFFFFFFFF8;
    v30 = a3 & 0xC000000000000001;
    v15 = (v27 + 48);
    v16 = MEMORY[0x1E69E7CC0];
    v25 = a3;
    v28 = i;
    while (1)
    {
      if (v30)
      {
        v17 = MEMORY[0x1D3891EF0](v14, a3);
      }

      else
      {
        if (v14 >= *(v29 + 16))
        {
          goto LABEL_20;
        }

        v17 = *(a3 + 8 * v14 + 32);
      }

      v18 = v17;
      v19 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v34 = v17;
      v33(&v34);
      if (v3)
      {

        return v16;
      }

      if ((*v15)(v8, 1, v32) == 1)
      {
        sub_1D1741A30(v8, &qword_1EC6436F0, &qword_1D1E99BC0);
      }

      else
      {
        v20 = v26;
        sub_1D1790FF4(v8, v26, type metadata accessor for StaticService);
        sub_1D1790FF4(v20, v31, type metadata accessor for StaticService);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D177D048(0, v16[2] + 1, 1, v16);
        }

        v22 = v16[2];
        v21 = v16[3];
        if (v22 >= v21 >> 1)
        {
          v16 = sub_1D177D048(v21 > 1, v22 + 1, 1, v16);
        }

        v16[2] = v22 + 1;
        sub_1D1790FF4(v31, v16 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22, type metadata accessor for StaticService);
        a3 = v25;
      }

      ++v14;
      if (v19 == v28)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_1D178972C(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v33 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643788, &qword_1D1E71EE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v24 - v7;
  v32 = type metadata accessor for StaticMediaSystemComponent();
  v27 = *(v32 - 8);
  v9 = *(v27 + 64);
  v10 = MEMORY[0x1EEE9AC00](v32);
  v31 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v26 = &v24 - v12;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v14 = 0;
    v29 = a3 & 0xFFFFFFFFFFFFFF8;
    v30 = a3 & 0xC000000000000001;
    v15 = (v27 + 48);
    v16 = MEMORY[0x1E69E7CC0];
    v25 = a3;
    v28 = i;
    while (1)
    {
      if (v30)
      {
        v17 = MEMORY[0x1D3891EF0](v14, a3);
      }

      else
      {
        if (v14 >= *(v29 + 16))
        {
          goto LABEL_20;
        }

        v17 = *(a3 + 8 * v14 + 32);
      }

      v18 = v17;
      v19 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v34 = v17;
      v33(&v34);
      if (v3)
      {

        return v16;
      }

      if ((*v15)(v8, 1, v32) == 1)
      {
        sub_1D1741A30(v8, &qword_1EC643788, &qword_1D1E71EE0);
      }

      else
      {
        v20 = v26;
        sub_1D1790FF4(v8, v26, type metadata accessor for StaticMediaSystemComponent);
        sub_1D1790FF4(v20, v31, type metadata accessor for StaticMediaSystemComponent);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D177FA64(0, v16[2] + 1, 1, v16);
        }

        v22 = v16[2];
        v21 = v16[3];
        if (v22 >= v21 >> 1)
        {
          v16 = sub_1D177FA64(v21 > 1, v22 + 1, 1, v16);
        }

        v16[2] = v22 + 1;
        sub_1D1790FF4(v31, v16 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22, type metadata accessor for StaticMediaSystemComponent);
        a3 = v25;
      }

      ++v14;
      if (v19 == v28)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D1789A74(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436A8, &unk_1D1E71DE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v38 = &v30 - v8;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643248, &qword_1D1E716A0);
  v9 = *(*(v37 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v31 = &v30 - v13;
  v32 = v12;
  v14 = a3 + 56;
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a3 + 56);
  v18 = (v15 + 63) >> 6;
  v35 = (v12 + 48);

  v20 = 0;
  v39 = MEMORY[0x1E69E7CC0];
  v33 = a1;
  v34 = a3;
  v21 = a1;
  if (v17)
  {
LABEL_10:
    while (1)
    {
      v40 = *(*(a3 + 48) + (__clz(__rbit64(v17)) | (v20 << 6)));
      v23 = v38;
      v21(&v40);
      if (v3)
      {
        break;
      }

      v17 &= v17 - 1;
      if ((*v35)(v23, 1, v37) == 1)
      {
        result = sub_1D1741A30(v23, &qword_1EC6436A8, &unk_1D1E71DE0);
        if (!v17)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v24 = v31;
        sub_1D17914A8(v23, v31);
        sub_1D17914A8(v24, v36);
        v25 = v39;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1D177FBB4(0, v25[2] + 1, 1, v25);
        }

        v27 = v25[2];
        v26 = v25[3];
        if (v27 >= v26 >> 1)
        {
          v25 = sub_1D177FBB4(v26 > 1, v27 + 1, 1, v25);
        }

        v25[2] = v27 + 1;
        v28 = (*(v32 + 80) + 32) & ~*(v32 + 80);
        v39 = v25;
        result = sub_1D17914A8(v36, v25 + v28 + *(v32 + 72) * v27);
        v21 = v33;
        a3 = v34;
        if (!v17)
        {
          goto LABEL_6;
        }
      }
    }

    v29 = v39;

    return v29;
  }

  else
  {
LABEL_6:
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v18)
      {

        return v39;
      }

      v17 = *(v14 + 8 * v22);
      ++v20;
      if (v17)
      {
        v20 = v22;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1789DAC(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v33 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v26 - v7;
  v31 = type metadata accessor for StaticMatterDevice();
  v9 = *(*(v31 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v31);
  v30 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v26 = &v26 - v13;
  v27 = v12;
  v14 = a3 + 64;
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a3 + 64);
  v18 = (v15 + 63) >> 6;
  v29 = (v12 + 48);

  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  v28 = a3;
  if (v17)
  {
LABEL_10:
    while (1)
    {
      v34 = *(*(a3 + 56) + ((v20 << 9) | (8 * __clz(__rbit64(v17)))));
      v32(&v34);
      if (v3)
      {
        break;
      }

      v17 &= v17 - 1;
      if ((*v29)(v8, 1, v31) == 1)
      {
        result = sub_1D1741A30(v8, &qword_1EC643650, &qword_1D1E71D40);
        if (!v17)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v23 = v26;
        sub_1D1790FF4(v8, v26, type metadata accessor for StaticMatterDevice);
        sub_1D1790FF4(v23, v30, type metadata accessor for StaticMatterDevice);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1D177E900(0, v21[2] + 1, 1, v21);
        }

        v25 = v21[2];
        v24 = v21[3];
        if (v25 >= v24 >> 1)
        {
          v21 = sub_1D177E900(v24 > 1, v25 + 1, 1, v21);
        }

        v21[2] = v25 + 1;
        result = sub_1D1790FF4(v30, v21 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v25, type metadata accessor for StaticMatterDevice);
        a3 = v28;
        if (!v17)
        {
          goto LABEL_6;
        }
      }
    }

LABEL_19:

    return v21;
  }

  else
  {
LABEL_6:
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v18)
      {
        goto LABEL_19;
      }

      v17 = *(v14 + 8 * v22);
      ++v20;
      if (v17)
      {
        v20 = v22;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D178A0E8(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v33 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v26 - v7;
  v31 = type metadata accessor for StaticCharacteristic();
  v9 = *(*(v31 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v31);
  v30 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v26 = &v26 - v13;
  v27 = v12;
  v14 = a3 + 56;
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a3 + 56);
  v18 = (v15 + 63) >> 6;
  v29 = (v12 + 48);

  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  v28 = a3;
  if (v17)
  {
LABEL_10:
    while (1)
    {
      v34 = *(*(a3 + 48) + (__clz(__rbit64(v17)) | (v20 << 6)));
      v32(&v34);
      if (v3)
      {
        break;
      }

      v17 &= v17 - 1;
      if ((*v29)(v8, 1, v31) == 1)
      {
        result = sub_1D1741A30(v8, &qword_1EC643630, &qword_1D1E71D10);
        if (!v17)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v23 = v26;
        sub_1D1790FF4(v8, v26, type metadata accessor for StaticCharacteristic);
        sub_1D1790FF4(v23, v30, type metadata accessor for StaticCharacteristic);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1D17800B4(0, v21[2] + 1, 1, v21);
        }

        v25 = v21[2];
        v24 = v21[3];
        if (v25 >= v24 >> 1)
        {
          v21 = sub_1D17800B4(v24 > 1, v25 + 1, 1, v21);
        }

        v21[2] = v25 + 1;
        result = sub_1D1790FF4(v30, v21 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v25, type metadata accessor for StaticCharacteristic);
        a3 = v28;
        if (!v17)
        {
          goto LABEL_6;
        }
      }
    }

LABEL_19:

    return v21;
  }

  else
  {
LABEL_6:
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v18)
      {
        goto LABEL_19;
      }

      v17 = *(v14 + 8 * v22);
      ++v20;
      if (v17)
      {
        v20 = v22;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_1D178A420(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v24 = a1;
  v5 = *(a3 + 16);

  v21 = a3;
  if (v5)
  {
    v6 = *(type metadata accessor for StaticUserActionPrediction() - 8);
    v7 = a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v22 = *(v6 + 72);
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v24(&v25, v7);
      if (v3)
      {
        break;
      }

      if (v26)
      {
        sub_1D16EEE20(&v25, v28);
        sub_1D16EEE20(v28, &v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = sub_1D177F2B8(0, v8[2] + 1, 1, v8);
          v29 = v8;
        }

        v11 = v8[2];
        v10 = v8[3];
        if (v11 >= v10 >> 1)
        {
          v12 = sub_1D177F2B8((v10 > 1), v11 + 1, 1, v8);
          v29 = v12;
        }

        else
        {
          v12 = v8;
        }

        v13 = v26;
        v14 = v27;
        v15 = __swift_mutable_project_boxed_opaque_existential_1(&v25, v26);
        v16 = *(*(v13 - 8) + 64);
        MEMORY[0x1EEE9AC00](v15);
        v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v19 + 16))(v18);
        sub_1D1D20B74(v11, v18, &v29, v13, v14);
        __swift_destroy_boxed_opaque_existential_1(&v25);
        v8 = v12;
      }

      else
      {
        sub_1D1741A30(&v25, &qword_1EC643668, &qword_1D1E71D60);
      }

      v7 += v22;
      if (!--v5)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:

  return v8;
}

uint64_t Action.NaturalLightAction.lightProfileID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Action.NaturalLightAction.accessoryID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Action.NaturalLightAction(0) + 20);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Action.NaturalLightAction.associatedServiceIDs.getter()
{
  v1 = *(v0 + *(type metadata accessor for Action.NaturalLightAction(0) + 24));
}

uint64_t Action.NaturalLightAction.init(lightProfileID:accessoryID:associatedServiceIDs:naturalLightingEnabled:accessoryName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = sub_1D1E66A7C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v14(a7, a1, v12);
  v15 = type metadata accessor for Action.NaturalLightAction(0);
  v14(a7 + v15[5], a2, v12);
  *(a7 + v15[6]) = a3;
  *(a7 + v15[7]) = a4;
  if (qword_1EE07B280 != -1)
  {
    swift_once();
  }

  v16 = byte_1EE07B288;
  v17 = *(v13 + 8);
  v17(a2, v12);
  result = (v17)(a1, v12);
  if (v16)
  {
    v20 = a5;
    v19 = a6;
  }

  else
  {

    v20 = 0;
    v19 = 0;
  }

  v21 = (a7 + v15[8]);
  *v21 = v20;
  v21[1] = v19;
  return result;
}

unint64_t Action.NaturalLightAction.Error.description.getter()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Action.NaturalLightAction.Error(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D1790F8C(v1, v10, type metadata accessor for Action.NaturalLightAction.Error);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1D1E6884C();

    v23 = 0xD000000000000024;
    v24 = 0x80000001D1EB8BE0;
    sub_1D1790EF0(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v11 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v11);

    v12 = v23;
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v13 = *v10;
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1D1E6884C();
    v14 = [v13 description];
    v15 = sub_1D1E6781C();
    v17 = v16;

    v23 = v15;
    v24 = v17;
    MEMORY[0x1D3890F70](0xD00000000000001ELL, 0x80000001D1EB8C10);
    v18 = [v13 description];
    v19 = sub_1D1E6781C();
    v21 = v20;

    MEMORY[0x1D3890F70](v19, v21);

    return v23;
  }

  return v12;
}

uint64_t Action.NaturalLightAction.hash(into:)(__int128 *a1)
{
  v2 = v1;
  sub_1D1E66A7C();
  sub_1D1790EF0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v4 = type metadata accessor for Action.NaturalLightAction(0);
  v5 = v1 + v4[5];
  sub_1D1E676EC();
  sub_1D176D4E8(a1, *(v2 + v4[6]));
  v6 = *(v2 + v4[7]);
  sub_1D1E6922C();
  v7 = (v2 + v4[8]);
  if (!v7[1])
  {
    return sub_1D1E6922C();
  }

  v8 = *v7;
  sub_1D1E6922C();

  return sub_1D1E678EC();
}

uint64_t Action.NaturalLightAction.hashValue.getter()
{
  v1 = v0;
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1790EF0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v2 = type metadata accessor for Action.NaturalLightAction(0);
  v3 = v0 + v2[5];
  sub_1D1E676EC();
  sub_1D176D4E8(v8, *(v1 + v2[6]));
  v4 = *(v1 + v2[7]);
  sub_1D1E6922C();
  v5 = (v1 + v2[8]);
  if (v5[1])
  {
    v6 = *v5;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D178AE94(__int128 *a1, int *a2)
{
  v4 = v2;
  sub_1D1E66A7C();
  sub_1D1790EF0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v6 = v2 + a2[5];
  sub_1D1E676EC();
  sub_1D176D4E8(a1, *(v4 + a2[6]));
  v7 = *(v4 + a2[7]);
  sub_1D1E6922C();
  v8 = (v4 + a2[8]);
  if (!v8[1])
  {
    return sub_1D1E6922C();
  }

  v9 = *v8;
  sub_1D1E6922C();

  return sub_1D1E678EC();
}

uint64_t sub_1D178AFB4(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1790EF0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v5 = v2 + a2[5];
  sub_1D1E676EC();
  sub_1D176D4E8(v10, *(v4 + a2[6]));
  v6 = *(v4 + a2[7]);
  sub_1D1E6922C();
  v7 = (v4 + a2[8]);
  if (v7[1])
  {
    v8 = *v7;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  return sub_1D1E6926C();
}

uint64_t Action.NaturalLightAction.staticLightProfile.getter(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for StateSnapshot(0);
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v6 = *(v5 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D178B1D4, 0, 0);
}

uint64_t sub_1D178B1D4()
{
  v1 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  v0[13] = v1;
  if (v1)
  {
    v0[14] = v1[3];
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v2 = qword_1EC64ABE8;
    v3 = sub_1D178B2CC;
    v4 = 0;
  }

  else
  {
    v0[15] = sub_1D1E67E1C();
    v0[16] = sub_1D1E67E0C();
    v5 = sub_1D1E67D4C();
    v7 = v6;
    v3 = sub_1D178B4A8;
    v2 = v5;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, v4);
}

uint64_t sub_1D178B2CC()
{
  v1 = *(v0 + 112);
  HomeState.AllHomesModel.currentStateSnapshot.getter(*(v0 + 64));

  return MEMORY[0x1EEE6DFA0](sub_1D178B338, 0, 0);
}

uint64_t sub_1D178B338()
{
  v1 = v0[8];
  v2 = (*(v0[10] + 48))(v1, 1, v0[9]);
  v3 = v0[13];
  if (v2 == 1)
  {
    v4 = v0[6];
    v5 = v0[13];

    sub_1D1741A30(v1, &unk_1EC649E30, &unk_1D1E91250);
    v6 = type metadata accessor for StaticLightProfile();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  }

  else
  {
    v7 = v0[12];
    v9 = v0[6];
    v8 = v0[7];
    sub_1D1790FF4(v1, v7, type metadata accessor for StateSnapshot);
    Action.NaturalLightAction.staticLightProfile(in:)(v7, v9);

    sub_1D1791140(v7, type metadata accessor for StateSnapshot);
  }

  v11 = v0[11];
  v10 = v0[12];
  v12 = v0[8];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D178B4A8()
{
  v1 = *(v0 + 128);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D178B540, 0, 0);
}

uint64_t sub_1D178B540()
{
  v1 = *(v0 + 120);
  *(v0 + 136) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D178B5CC, v3, v2);
}

uint64_t sub_1D178B5CC()
{
  v1 = *(v0 + 136);

  *(v0 + 144) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D178B640, 0, 0);
}

uint64_t sub_1D178B640()
{
  v1 = *(v0 + 120);
  *(v0 + 152) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D178B6CC, v3, v2);
}

uint64_t sub_1D178B6CC()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[11];

  swift_getKeyPath();
  v0[5] = v2;
  sub_1D1790EF0(&qword_1EE07CFB0, type metadata accessor for DataModel);
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
  swift_beginAccess();
  sub_1D1790F8C(v2 + v4, v3, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D178B7F4, 0, 0);
}

uint64_t sub_1D178B7F4()
{
  v1 = v0[11];
  v2 = v0[7];
  Action.NaturalLightAction.staticLightProfile(in:)(v1, v0[6]);
  sub_1D1791140(v1, type metadata accessor for StateSnapshot);
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

void Action.NaturalLightAction.staticLightProfile(in:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v71 = a2;
  v70 = sub_1D1E66A7C();
  v67 = *(v70 - 8);
  v5 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v66 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E8, &unk_1D1E71440);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v68 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v62 - v11;
  v12 = type metadata accessor for Action.NaturalLightAction(0);
  v73 = *(v12 - 8);
  v13 = *(v73 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v65 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v64 = &v62 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v62 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v62 - v20;
  v22 = type metadata accessor for StateSnapshot(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v62 - v27;
  v62 = v12;
  v72 = *(v3 + *(v12 + 24));
  sub_1D1790F8C(a1, &v62 - v27, type metadata accessor for StateSnapshot);
  v63 = v3;
  sub_1D1790F8C(v3, v21, type metadata accessor for Action.NaturalLightAction);
  sub_1D1790F8C(v28, v26, type metadata accessor for StateSnapshot);
  sub_1D1790F8C(v21, v19, type metadata accessor for Action.NaturalLightAction);
  v29 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v30 = (v24 + *(v73 + 80) + v29) & ~*(v73 + 80);
  v31 = swift_allocObject();
  sub_1D1790FF4(v28, v31 + v29, type metadata accessor for StateSnapshot);
  v32 = v21;
  v33 = v72;
  sub_1D1790FF4(v32, v31 + v30, type metadata accessor for Action.NaturalLightAction);
  v74[1] = v33;
  v74[2] = sub_1D179105C;
  v74[3] = v31;
  v74[4] = sub_1D178CCC0;
  v74[5] = 0;

  v34 = sub_1D17776CC();
  if (v36)
  {
    sub_1D1791140(v26, type metadata accessor for StateSnapshot);
    sub_1D1791140(v19, type metadata accessor for Action.NaturalLightAction);
    __break(1u);
    goto LABEL_16;
  }

  if (*(v33 + 36) != v35)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_9;
  }

  if (v34 == 1 << *(v33 + 32))
  {
    sub_1D1791140(v26, type metadata accessor for StateSnapshot);
    sub_1D1791140(v19, type metadata accessor for Action.NaturalLightAction);
    v37 = type metadata accessor for StaticLightProfile();
    v38 = v71;
    (*(*(v37 - 8) + 56))(v71, 1, 1, v37);
    goto LABEL_7;
  }

  v39 = v66;
  sub_1D17908B4(v34, v35, v33, v66);
  v40 = v69;
  sub_1D178C8E8(v39, v26, v19, v69);
  sub_1D1791140(v26, type metadata accessor for StateSnapshot);
  sub_1D1791140(v19, type metadata accessor for Action.NaturalLightAction);
  (*(v67 + 8))(v39, v70);
  v41 = v68;
  sub_1D17911A0(v40, v68);
  v37 = type metadata accessor for StaticLightProfile();
  v42 = *(v37 - 8);
  if ((*(v42 + 48))(v41, 1, v37) == 1)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v43 = v41;
  v38 = v71;
  sub_1D1790FF4(v43, v71, type metadata accessor for StaticLightProfile);
  sub_1D1741A30(v40, &qword_1EC6430E8, &unk_1D1E71440);
  (*(v42 + 56))(v38, 0, 1, v37);
LABEL_7:

  type metadata accessor for StaticLightProfile();
  if ((*(*(v37 - 8) + 48))(v38, 1, v37) != 1)
  {
    return;
  }

  if (qword_1EE07B5D0 != -1)
  {
    goto LABEL_14;
  }

LABEL_9:
  v44 = sub_1D1E6709C();
  __swift_project_value_buffer(v44, qword_1EE07B5D8);
  v46 = v63;
  v45 = v64;
  sub_1D1790F8C(v63, v64, type metadata accessor for Action.NaturalLightAction);
  v47 = v65;
  sub_1D1790F8C(v46, v65, type metadata accessor for Action.NaturalLightAction);
  v48 = sub_1D1E6707C();
  v49 = sub_1D1E6833C();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v74[0] = v73;
    *v50 = 136315394;
    v51 = MEMORY[0x1E69695A8];
    sub_1D1790EF0(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v52 = sub_1D1E68FAC();
    v54 = v53;
    sub_1D1791140(v45, type metadata accessor for Action.NaturalLightAction);
    v55 = sub_1D1B1312C(v52, v54, v74);

    *(v50 + 4) = v55;
    *(v50 + 12) = 2080;
    v56 = *(v47 + *(v62 + 24));
    sub_1D1790EF0(qword_1EE07DD78, v51);
    v57 = sub_1D1E6817C();
    v59 = v58;
    sub_1D1791140(v47, type metadata accessor for Action.NaturalLightAction);
    v60 = sub_1D1B1312C(v57, v59, v74);

    *(v50 + 14) = v60;
    _os_log_impl(&dword_1D16EC000, v48, v49, "Failed to find static light profile for id: %s in serviceIDs: %s", v50, 0x16u);
    v61 = v73;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v61, -1, -1);
    MEMORY[0x1D3893640](v50, -1, -1);
  }

  else
  {

    sub_1D1791140(v47, type metadata accessor for Action.NaturalLightAction);
    sub_1D1791140(v45, type metadata accessor for Action.NaturalLightAction);
  }
}

uint64_t Action.NaturalLightAction.lightProfile.getter()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E8, &unk_1D1E71440) - 8) + 64) + 15;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1D178C250;

  return Action.NaturalLightAction.staticLightProfile.getter(v2);
}

uint64_t sub_1D178C250()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D178C34C, 0, 0);
}

uint64_t sub_1D178C34C()
{
  v1 = v0[2];
  v2 = type metadata accessor for StaticLightProfile();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_1D1741A30(v1, &qword_1EC6430E8, &unk_1D1E71440);
    v3 = v0[2];

    v4 = v0[1];

    return v4(0);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[4] = v6;
    *v6 = v0;
    v6[1] = sub_1D178C478;
    v7 = v0[2];

    return sub_1D1B92B34();
  }
}

uint64_t sub_1D178C478(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D178C578, 0, 0);
}

uint64_t sub_1D178C578()
{
  sub_1D1791140(v0[2], type metadata accessor for StaticLightProfile);
  v1 = v0[5];
  v2 = v0[2];

  v3 = v0[1];

  return v3(v1);
}

void *Action.NaturalLightAction.associatedStaticServices(in:)(uint64_t a1)
{
  v3 = *(v1 + *(type metadata accessor for Action.NaturalLightAction(0) + 24));
  v5[2] = a1;
  return sub_1D1786BD4(sub_1D1791210, v5, v3);
}

uint64_t sub_1D178C660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + *(type metadata accessor for StateSnapshot(0) + 60));
  if (*(v5 + 16) && (v6 = sub_1D1742188(a1), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for StaticService(0);
    v11 = *(v10 - 8);
    sub_1D1790F8C(v9 + *(v11 + 72) * v8, a3, type metadata accessor for StaticService);
    return (*(v11 + 56))(a3, 0, 1, v10);
  }

  else
  {
    v13 = type metadata accessor for StaticService(0);
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }
}

uint64_t Action.NaturalLightAction.staticAccessory(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for StateSnapshot(0) + 32));
  if (*(v4 + 16) && (v5 = type metadata accessor for Action.NaturalLightAction(0), v6 = sub_1D1742188(v2 + *(v5 + 20)), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v4 + 56);
    v10 = type metadata accessor for StaticAccessory(0);
    v17 = *(v10 - 8);
    sub_1D1790F8C(v9 + *(v17 + 72) * v8, a2, type metadata accessor for StaticAccessory);
    v11 = *(v17 + 56);
    v12 = a2;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v15 = type metadata accessor for StaticAccessory(0);
    v11 = *(*(v15 - 8) + 56);
    v14 = v15;
    v12 = a2;
    v13 = 1;
  }

  return v11(v12, v13, 1, v14);
}

uint64_t sub_1D178C8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for StaticService(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - v14;
  v16 = *(a2 + *(type metadata accessor for StateSnapshot(0) + 60));
  if (*(v16 + 16) && (v17 = sub_1D1742188(a1), (v18 & 1) != 0))
  {
    sub_1D1790F8C(*(v16 + 56) + *(v9 + 72) * v17, v13, type metadata accessor for StaticService);
    sub_1D1790FF4(v13, v15, type metadata accessor for StaticService);
    v19 = *&v15[*(v8 + 132)];
    if (*(v19 + 16) && (v20 = sub_1D1742188(a3), (v21 & 1) != 0))
    {
      v22 = v20;
      v23 = *(v19 + 56);
      v24 = type metadata accessor for StaticLightProfile();
      v25 = *(v24 - 8);
      sub_1D1790F8C(v23 + *(v25 + 72) * v22, a4, type metadata accessor for StaticLightProfile);
      (*(v25 + 56))(a4, 0, 1, v24);
    }

    else
    {
      v29 = type metadata accessor for StaticLightProfile();
      (*(*(v29 - 8) + 56))(a4, 1, 1, v29);
    }

    return sub_1D1791140(v15, type metadata accessor for StaticService);
  }

  else
  {
    v26 = type metadata accessor for StaticLightProfile();
    v27 = *(*(v26 - 8) + 56);

    return v27(a4, 1, 1, v26);
  }
}

uint64_t sub_1D178CBB0(id *a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v8 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

char *sub_1D178CD24(char *a1, int64_t a2, char a3)
{
  result = sub_1D178DDAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D178CD44(void *a1, int64_t a2, char a3)
{
  result = sub_1D178DEB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D178CD64(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790670(a1, a2, a3, *v3, &qword_1EC643208, &unk_1D1E71660, type metadata accessor for BoxedTileInfoBearer);
  *v3 = result;
  return result;
}

size_t sub_1D178CDA8(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790670(a1, a2, a3, *v3, &qword_1EC6431D0, &unk_1D1E76490, type metadata accessor for StaticMatterDevice);
  *v3 = result;
  return result;
}

size_t sub_1D178CDEC(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790670(a1, a2, a3, *v3, &qword_1EC6432E0, &qword_1D1E71738, type metadata accessor for StaticMediaProfile);
  *v3 = result;
  return result;
}

size_t sub_1D178CE30(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790670(a1, a2, a3, *v3, &qword_1EC6432E8, &qword_1D1E71740, type metadata accessor for StaticMediaSystem);
  *v3 = result;
  return result;
}

size_t sub_1D178CE74(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790670(a1, a2, a3, *v3, &qword_1EC6432C8, &unk_1D1E71720, type metadata accessor for StaticActionSet);
  *v3 = result;
  return result;
}

size_t sub_1D178CEB8(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790670(a1, a2, a3, *v3, &qword_1EC643288, &qword_1D1E716E0, type metadata accessor for StaticAccessory);
  *v3 = result;
  return result;
}

size_t sub_1D178CEFC(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790670(a1, a2, a3, *v3, &qword_1EC643350, &qword_1D1E72040, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

void *sub_1D178CF40(void *a1, int64_t a2, char a3)
{
  result = sub_1D178F958(a1, a2, a3, *v3, &qword_1EC643290, &qword_1D1E716E8, &qword_1EC643298, &qword_1D1E716F0);
  *v3 = result;
  return result;
}

char *sub_1D178CF80(char *a1, int64_t a2, char a3)
{
  result = sub_1D178E110(a1, a2, a3, *v3, &qword_1EC6436B8, &unk_1D1E71E00);
  *v3 = result;
  return result;
}

void *sub_1D178CFB0(void *a1, int64_t a2, char a3)
{
  result = sub_1D178FBA0(a1, a2, a3, *v3, &qword_1EC643390, &qword_1D1E71808, &qword_1EC643398, &qword_1D1E71810);
  *v3 = result;
  return result;
}

char *sub_1D178CFF0(char *a1, int64_t a2, char a3)
{
  result = sub_1D178E1FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D178D010(void *a1, int64_t a2, char a3)
{
  result = sub_1D178FBA0(a1, a2, a3, *v3, &qword_1EC643388, &unk_1D1E71FF0, &unk_1EC64A340, &qword_1D1E71800);
  *v3 = result;
  return result;
}

size_t sub_1D178D050(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790670(a1, a2, a3, *v3, &qword_1EC643638, &qword_1D1E71D18, type metadata accessor for StaticHome);
  *v3 = result;
  return result;
}

char *sub_1D178D094(char *a1, int64_t a2, char a3)
{
  result = sub_1D178E334(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D178D0B4(char *a1, int64_t a2, char a3)
{
  result = sub_1D178E450(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D178D0D4(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790460(a1, a2, a3, *v3, &qword_1EC643708, &unk_1D1E71E60, &qword_1EC643710, &unk_1D1EA2630);
  *v3 = result;
  return result;
}

size_t sub_1D178D114(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790460(a1, a2, a3, *v3, &qword_1EC643790, &qword_1D1E71EE8, &qword_1EC643798, &qword_1D1E71EF0);
  *v3 = result;
  return result;
}

size_t sub_1D178D154(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790460(a1, a2, a3, *v3, &qword_1EC6437B0, &unk_1D1E71F10, &qword_1EC6437B8, &unk_1D1E7E730);
  *v3 = result;
  return result;
}

size_t sub_1D178D194(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790460(a1, a2, a3, *v3, &qword_1EC643738, &qword_1D1E71E90, &qword_1EC643740, &qword_1D1E71E98);
  *v3 = result;
  return result;
}

size_t sub_1D178D1D4(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790670(a1, a2, a3, *v3, &qword_1EC643458, &unk_1D1E71D80, type metadata accessor for StaticRoom);
  *v3 = result;
  return result;
}

size_t sub_1D178D218(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790460(a1, a2, a3, *v3, &qword_1EC6437D0, &unk_1D1E71F30, &qword_1EC6437D8, &unk_1D1EAAD40);
  *v3 = result;
  return result;
}

size_t sub_1D178D258(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790460(a1, a2, a3, *v3, &qword_1EC6437C0, &qword_1D1E71F20, &qword_1EC6437C8, &qword_1D1E71F28);
  *v3 = result;
  return result;
}

size_t sub_1D178D298(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790460(a1, a2, a3, *v3, &qword_1EC6437A0, &qword_1D1E71EF8, &qword_1EC6437A8, &unk_1D1E71F00);
  *v3 = result;
  return result;
}

size_t sub_1D178D2D8(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790460(a1, a2, a3, *v3, &qword_1EC6436E0, &unk_1D1E9F9E0, &qword_1EC6436E8, &unk_1D1E71E40);
  *v3 = result;
  return result;
}

size_t sub_1D178D318(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790460(a1, a2, a3, *v3, &qword_1EC643760, &qword_1D1E71EB8, &qword_1EC643768, &qword_1D1E71EC0);
  *v3 = result;
  return result;
}

size_t sub_1D178D358(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790460(a1, a2, a3, *v3, &qword_1EC643748, &unk_1D1E71EA0, &qword_1EC643750, &unk_1D1E7E6B0);
  *v3 = result;
  return result;
}

size_t sub_1D178D398(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790460(a1, a2, a3, *v3, &qword_1EC643728, &unk_1D1E71E80, &qword_1EC643730, &unk_1D1EA7CA0);
  *v3 = result;
  return result;
}

size_t sub_1D178D3D8(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790670(a1, a2, a3, *v3, &qword_1EC6436B0, &unk_1D1E71DF0, type metadata accessor for WriteInProgressStatusViewModel.ID);
  *v3 = result;
  return result;
}

char *sub_1D178D41C(char *a1, int64_t a2, char a3)
{
  result = sub_1D1790050(a1, a2, a3, *v3, &qword_1EC643210, &unk_1D1E71DD0);
  *v3 = result;
  return result;
}

char *sub_1D178D44C(char *a1, int64_t a2, char a3)
{
  result = sub_1D1790050(a1, a2, a3, *v3, &qword_1EC643220, &qword_1D1E71678);
  *v3 = result;
  return result;
}

char *sub_1D178D47C(char *a1, int64_t a2, char a3)
{
  result = sub_1D178E57C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D178D49C(char *a1, int64_t a2, char a3)
{
  result = sub_1D178E688(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D178D4BC(char *a1, int64_t a2, char a3)
{
  result = sub_1D178F1B8(a1, a2, a3, *v3, &qword_1EC643238, &qword_1D1E71690);
  *v3 = result;
  return result;
}

size_t sub_1D178D4EC(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790670(a1, a2, a3, *v3, &qword_1EC643438, &qword_1D1E72010, type metadata accessor for StaticAlarm);
  *v3 = result;
  return result;
}

size_t sub_1D178D530(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790670(a1, a2, a3, *v3, &qword_1EC643430, &unk_1D1E718B0, type metadata accessor for StaticTimer);
  *v3 = result;
  return result;
}

void *sub_1D178D574(void *a1, int64_t a2, char a3)
{
  result = sub_1D178F958(a1, a2, a3, *v3, &qword_1EC643178, &unk_1D1E715D0, &qword_1EC643180, &unk_1D1E71CD0);
  *v3 = result;
  return result;
}

char *sub_1D178D5B4(char *a1, int64_t a2, char a3)
{
  result = sub_1D178E7DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D178D5D4(char *a1, int64_t a2, char a3)
{
  result = sub_1D178E8E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D178D5F4(void *a1, int64_t a2, char a3)
{
  result = sub_1D178E9FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D178D614(char *a1, int64_t a2, char a3)
{
  result = sub_1D178EB30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D178D634(char *a1, int64_t a2, char a3)
{
  result = sub_1D178EC2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D178D654(char *a1, int64_t a2, char a3)
{
  result = sub_1D178ED48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D178D674(char *a1, int64_t a2, char a3)
{
  result = sub_1D178EE68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D178D694(char *a1, int64_t a2, char a3)
{
  result = sub_1D178EF78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D178D6B4(char *a1, int64_t a2, char a3)
{
  result = sub_1D1790050(a1, a2, a3, *v3, &qword_1EC643660, &qword_1D1E71D58);
  *v3 = result;
  return result;
}

void *sub_1D178D6E4(void *a1, int64_t a2, char a3)
{
  result = sub_1D178F084(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D178D704(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790460(a1, a2, a3, *v3, &qword_1EC643648, &unk_1D1E71D30, &qword_1EC643018, &qword_1D1E9AC00);
  *v3 = result;
  return result;
}

size_t sub_1D178D744(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790460(a1, a2, a3, *v3, &qword_1EC643640, &unk_1D1E71D20, &qword_1EC643010, &qword_1D1E90E20);
  *v3 = result;
  return result;
}

char *sub_1D178D784(char *a1, int64_t a2, char a3)
{
  result = sub_1D178F1B8(a1, a2, a3, *v3, &unk_1EC650110, &unk_1D1E71860);
  *v3 = result;
  return result;
}

size_t sub_1D178D7B4(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790670(a1, a2, a3, *v3, &qword_1EC643160, &qword_1D1E71F50, type metadata accessor for StateSnapshot.UpdateType);
  *v3 = result;
  return result;
}

char *sub_1D178D7F8(char *a1, int64_t a2, char a3)
{
  result = sub_1D178F2B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D178D818(char *a1, int64_t a2, char a3)
{
  result = sub_1D178F3C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D178D838(char *a1, int64_t a2, char a3)
{
  result = sub_1D178F5D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D178D858(void *a1, int64_t a2, char a3)
{
  result = sub_1D178F800(a1, a2, a3, *v3, &qword_1EC6435C0, &qword_1D1EA1840, &qword_1EC6434D0, &qword_1D1E71C60);
  *v3 = result;
  return result;
}

void *sub_1D178D898(void *a1, int64_t a2, char a3)
{
  result = sub_1D178F6CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D178D8B8(void *a1, int64_t a2, char a3)
{
  result = sub_1D178F800(a1, a2, a3, *v3, &qword_1EC643830, &unk_1D1E71FA0, &qword_1EC643838, &qword_1D1E8C020);
  *v3 = result;
  return result;
}

char *sub_1D178D8F8(char *a1, int64_t a2, char a3)
{
  result = sub_1D178FCD4(a1, a2, a3, *v3, &qword_1EC643828, &qword_1D1E71F98);
  *v3 = result;
  return result;
}

char *sub_1D178D930(char *a1, int64_t a2, char a3)
{
  result = sub_1D178FAA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D178D950(void *a1, int64_t a2, char a3)
{
  result = sub_1D178FBA0(a1, a2, a3, *v3, &qword_1EC6435E8, &qword_1D1E71C90, &qword_1EC6435F0, &qword_1D1E71C98);
  *v3 = result;
  return result;
}

void *sub_1D178D990(void *a1, int64_t a2, char a3)
{
  result = sub_1D178FBA0(a1, a2, a3, *v3, &qword_1EC6437F8, &qword_1D1E71F68, &qword_1EC643800, &qword_1D1E71F70);
  *v3 = result;
  return result;
}

size_t sub_1D178D9D0(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790670(a1, a2, a3, *v3, &qword_1EC6437F0, &qword_1D1E71F60, type metadata accessor for MatterTilePath);
  *v3 = result;
  return result;
}

size_t sub_1D178DA14(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790670(a1, a2, a3, *v3, &qword_1EC6437E8, &qword_1D1E71F58, type metadata accessor for StaticEndpoint);
  *v3 = result;
  return result;
}

char *sub_1D178DA58(char *a1, int64_t a2, char a3)
{
  result = sub_1D178FCD4(a1, a2, a3, *v3, &qword_1EC6431B0, &unk_1D1E71F40);
  *v3 = result;
  return result;
}

void *sub_1D178DA90(void *a1, int64_t a2, char a3)
{
  result = sub_1D178FDF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D178DAB0(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790460(a1, a2, a3, *v3, &qword_1EC643310, &qword_1D1E71768, &qword_1EC643318, &qword_1D1E71770);
  *v3 = result;
  return result;
}

size_t sub_1D178DAF0(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790460(a1, a2, a3, *v3, &qword_1EC643320, &qword_1D1E71778, &unk_1EC64A270, &qword_1D1E71780);
  *v3 = result;
  return result;
}

size_t sub_1D178DB30(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790460(a1, a2, a3, *v3, &qword_1EC6436D0, &qword_1D1E71E28, &qword_1EC6436D8, &unk_1D1E71E30);
  *v3 = result;
  return result;
}

char *sub_1D178DB70(char *a1, int64_t a2, char a3)
{
  result = sub_1D178FF4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D178DB90(char *a1, int64_t a2, char a3)
{
  result = sub_1D1790050(a1, a2, a3, *v3, &qword_1EC643628, &unk_1D1E71D00);
  *v3 = result;
  return result;
}

size_t sub_1D178DBC0(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790460(a1, a2, a3, *v3, &qword_1EC6436C0, &unk_1D1E71E10, &qword_1EC6436C8, &unk_1D1E97C40);
  *v3 = result;
  return result;
}

size_t sub_1D178DC00(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790460(a1, a2, a3, *v3, &qword_1EC643778, &unk_1D1E71ED0, &qword_1EC643780, &qword_1D1EA1130);
  *v3 = result;
  return result;
}

size_t sub_1D178DC40(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790460(a1, a2, a3, *v3, &qword_1EC6436F8, &qword_1D1E71E50, &qword_1EC643700, &qword_1D1E71E58);
  *v3 = result;
  return result;
}

size_t sub_1D178DC80(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790670(a1, a2, a3, *v3, &qword_1EC643678, &qword_1D1E71D90, type metadata accessor for ActionService);
  *v3 = result;
  return result;
}

char *sub_1D178DCC4(char *a1, int64_t a2, char a3)
{
  result = sub_1D1790304(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D178DCE4(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790670(a1, a2, a3, *v3, &qword_1EC643658, &qword_1D1E71D48, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
  *v3 = result;
  return result;
}

size_t sub_1D178DD28(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790670(a1, a2, a3, *v3, &qword_1EC6431E0, &qword_1D1E71D50, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
  *v3 = result;
  return result;
}

size_t sub_1D178DD6C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D1790460(a1, a2, a3, *v3, &qword_1EC643618, &qword_1D1E71CF0, &qword_1EC643620, &qword_1D1E71CF8);
  *v3 = result;
  return result;
}

char *sub_1D178DDAC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6434A8, &qword_1D1E8EC00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D178DEB8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643818, &qword_1D1E71F88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643820, &qword_1D1E71F90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D178E110(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_1D178E1FC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643370, &qword_1D1E7B940);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D178E334(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643880, &qword_1D1E72038);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_1D178E450(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643610, &unk_1D1E71CE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1D178E57C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643690, &qword_1D1E71DA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D178E688(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643480, &qword_1D1E71900);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1D178E7DC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6433E8, &qword_1D1E72000);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1D178E8E0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643128, &unk_1D1E71580);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D178E9FC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435D8, &qword_1D1E71C78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D178EB30(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643130, &qword_1D1E81F40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1D178EC2C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643858, &unk_1D1E71FE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D178ED48(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643850, &qword_1D1E71FD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D178EE68(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643848, &unk_1D1E71FC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1D178EF78(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643840, &unk_1D1E71FB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D178F084(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643328, &qword_1D1E71788);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643330, &qword_1D1E71790);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D178F1B8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_1D178F2B4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6433B8, &qword_1D1E71830);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D178F3C0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436A0, &unk_1D1E71DC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D178F4DC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6433B0, &qword_1D1E71FD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1D178F5D0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6433A0, &qword_1D1E71818);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void *sub_1D178F6CC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435C8, &qword_1D1E71C68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435D0, &qword_1D1E71C70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D178F800(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1D178F958(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1D178FAA0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643608, &unk_1D1E71CC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 4 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

void *sub_1D178FBA0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1D178FCD4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_1D178FDF0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643600, &unk_1D1E71CB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DC0, &qword_1D1E6F378);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D178FF4C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435F8, &unk_1D1E71CA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1D1790050(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 24 * v10;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v12;
}

char *sub_1D1790180(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643260, &qword_1D1E716B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D1790304(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643670, &qword_1D1E71D68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1D1790460(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

size_t sub_1D1790670(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1D179084C@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    *a4 = *(*(a3 + 48) + result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1D17908B4@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

void sub_1D17909B4(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1D3891D90](a1, a2, v11);
      sub_1D1741B10(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1D1741B10(0, a5, a6);
    if (sub_1D1E6871C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1D1E6872C();
    swift_dynamicCast();
    v6 = v20;
    v12 = *(a4 + 40);
    v13 = sub_1D1E684EC();
    v14 = -1 << *(a4 + 32);
    v10 = v13 & ~v14;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v15 = ~v14;
      do
      {
        v16 = *(*(a4 + 48) + 8 * v10);
        v17 = sub_1D1E684FC();

        if (v17)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v15;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v18 = *(*(a4 + 48) + 8 * v10);

  v19 = v18;
}

uint64_t sub_1D1790C0C@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t a6@<X8>)
{
  if (result < 0 || (v6 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v9 = *(a3 + 48);
    v10 = a4(0);
    return sub_1D1790F8C(v9 + *(*(v10 - 8) + 72) * v6, a6, a5);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t (*sub_1D1790CDC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D3891EF0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return j__s13HomeDataModel13WidgetManagerVwxx;
  }

  __break(1u);
  return result;
}

void (*sub_1D1790D5C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D3891EF0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return destroy for WidgetManager;
  }

  __break(1u);
  return result;
}

uint64_t _s13HomeDataModel6ActionO012NaturalLightD0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Action.NaturalLightAction(0);
  v5 = v4[5];
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || (sub_1D17A6E98(*(a1 + v4[6]), *(a2 + v4[6])) & 1) == 0 || *(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  v7 = v4[8];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v10[1];
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = *v8 == *v10 && v9 == v11;
    if (!v12 && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1D1790EF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1790F38(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1D1790F8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1790FF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D179105C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for StateSnapshot(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Action.NaturalLightAction(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1D178C8E8(a1, v2 + v6, v9, a2);
}

uint64_t sub_1D1791140(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D17911A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E8, &unk_1D1E71440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D179129C()
{
  sub_1D1E66A7C();
  if (v0 <= 0x3F)
  {
    sub_1D1791340();
    if (v1 <= 0x3F)
    {
      sub_1D17786E4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D1791340()
{
  if (!qword_1EE07D1E0)
  {
    sub_1D1E66A7C();
    sub_1D1790EF0(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    v0 = sub_1D1E681FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07D1E0);
    }
  }
}

uint64_t sub_1D17913D4()
{
  result = sub_1D1741B10(319, &qword_1EC6435B8, 0x1E696CBC0);
  if (v1 <= 0x3F)
  {
    result = sub_1D1E66A7C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1D17914A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643248, &qword_1D1E716A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1791518(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1D1791558()
{
  result = qword_1EE079CE8;
  if (!qword_1EE079CE8)
  {
    sub_1D1741B10(255, &qword_1EE079CF0, 0x1E696CBB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE079CE8);
  }

  return result;
}

uint64_t Event.CharacteristicEvent.serviceID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Event.CharacteristicEvent.characteristicKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Event.CharacteristicEvent();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for Event.CharacteristicEvent()
{
  result = qword_1EC6438A0;
  if (!qword_1EC6438A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Event.CharacteristicEvent.condition.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Event.CharacteristicEvent() + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;
  return sub_1D179178C(v4, v5, v6, sub_1D1778244);
}

uint64_t Event.CharacteristicEvent.condition.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for Event.CharacteristicEvent() + 24);
  result = sub_1D179178C(*v5, *(v5 + 8), *(v5 + 16), sub_1D1778284);
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t sub_1D179178C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 == 2)
    {
      return a4(result, a2, a3 & 0x3F);
    }
  }

  else
  {
    if (a3 >> 6)
    {
      a3 &= 0x3Fu;
    }

    else
    {
      a3 = a3;
    }

    return a4(result, a2, a3);
  }

  return result;
}

uint64_t Event.CharacteristicEvent.init(serviceID:characteristicKind:condition:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  v8 = a3[1];
  v9 = *(a3 + 16);
  v10 = sub_1D1E66A7C();
  (*(*(v10 - 8) + 32))(a4, a1, v10);
  result = type metadata accessor for Event.CharacteristicEvent();
  *(a4 + *(result + 20)) = v6;
  v12 = a4 + *(result + 24);
  *v12 = v7;
  *(v12 + 8) = v8;
  *(v12 + 16) = v9;
  return result;
}

uint64_t Event.CharacteristicEvent.Condition.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  if (v3 >> 6)
  {
    if (v3 >> 6 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x1D3892850](v4);
  return CharacteristicKind.Value.hash(into:)();
}

uint64_t Event.CharacteristicEvent.Condition.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_1D1E6920C();
  if (v3 >> 6)
  {
    if (v3 >> 6 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x1D3892850](v4);
  CharacteristicKind.Value.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D17919C8()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_1D1E6920C();
  Event.CharacteristicEvent.Condition.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t Event.CharacteristicEvent.hash(into:)()
{
  sub_1D1E66A7C();
  sub_1D1793784(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for Event.CharacteristicEvent();
  v8 = *(v0 + *(v1 + 20));
  CharacteristicKind.rawValue.getter();
  sub_1D1E678EC();

  v2 = (v0 + *(v1 + 24));
  v4 = *v2;
  v3 = v2[1];
  v5 = *(v2 + 16) >> 6;
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x1D3892850](v6);
  return CharacteristicKind.Value.hash(into:)();
}

uint64_t Event.CharacteristicEvent.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1793784(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for Event.CharacteristicEvent();
  v8 = *(v0 + *(v1 + 20));
  CharacteristicKind.rawValue.getter();
  sub_1D1E678EC();

  v2 = (v0 + *(v1 + 24));
  v4 = *v2;
  v3 = v2[1];
  v5 = *(v2 + 16) >> 6;
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x1D3892850](v6);
  CharacteristicKind.Value.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D1791C70(uint64_t a1, uint64_t a2)
{
  sub_1D1E66A7C();
  sub_1D1793784(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v6 = *(v2 + *(a2 + 20));
  CharacteristicKind.rawValue.getter();
  sub_1D1E678EC();

  v4 = (v2 + *(a2 + 24));
  v7 = *v4;
  v8 = *(v4 + 16);
  return Event.CharacteristicEvent.Condition.hash(into:)();
}

uint64_t sub_1D1791D58(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1793784(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v6 = *(v2 + *(a2 + 20));
  CharacteristicKind.rawValue.getter();
  sub_1D1E678EC();

  v4 = (v2 + *(a2 + 24));
  v7 = *v4;
  v8 = *(v4 + 16);
  Event.CharacteristicEvent.Condition.hash(into:)();
  return sub_1D1E6926C();
}

void Event.CharacteristicEvent.init(event:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 characteristic];
  v10 = [v9 service];

  if (!v10)
  {
    sub_1D1793690();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
LABEL_12:

    return;
  }

  v33 = v5;
  v34 = v4;
  v11 = [a1 characteristic];
  ObjectType = [a1 triggerValue];
  v13 = ObjectType;
  v38 = a2;
  if (ObjectType)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    v35[1] = 0;
    v35[2] = 0;
  }

  v35[0] = v13;
  v35[3] = ObjectType;
  static CharacteristicKind.Value.typedValue(for:value:)(v11, v35, v36);

  sub_1D1741A30(v35, &qword_1EC649700, &qword_1D1E6E910);
  v15 = v37;
  if (v37 == 255)
  {
    v28 = [a1 triggerValue];
    sub_1D1793690();
    swift_allocError();
    *v29 = v28;
    swift_willThrow();

    goto LABEL_12;
  }

  v31 = v36[0];
  v32 = v36[1];
  v16 = [v10 uniqueIdentifier];
  sub_1D1E66A5C();

  v17 = [a1 characteristic];
  v18 = [v17 characteristicType];
  v19 = sub_1D1E6781C();
  v21 = v20;

  v22._countAndFlagsBits = v19;
  v22._object = v21;
  CharacteristicKind.init(rawValue:)(v22);

  if (LOBYTE(v35[0]) == 174)
  {
    v23 = 0;
  }

  else
  {
    v23 = v35[0];
  }

  v24 = v38;
  (*(v33 + 32))(v38, v8, v34);
  v25 = type metadata accessor for Event.CharacteristicEvent();
  *(v24 + *(v25 + 20)) = v23;
  v26 = v24 + *(v25 + 24);
  v27 = v32;
  *v26 = v31;
  *(v26 + 8) = v27;
  *(v26 + 16) = v15;
}

void Event.CharacteristicEvent.init(event:)(id a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D1E66A7C();
  v68 = *(v4 - 8);
  v5 = *(v68 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v62 - v9;
  v11 = [a1 characteristic];
  v12 = [v11 service];

  if (!v12)
  {
    sub_1D1793690();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();
LABEL_23:

    return;
  }

  v67 = a2;
  v74 = v12;
  v13 = [a1 thresholdRange];
  v14 = [v13 minValue];

  v15 = [a1 thresholdRange];
  v16 = [v15 maxValue];

  if (v14)
  {
    if (v16)
    {
      if (qword_1EE07B5D0 != -1)
      {
        swift_once();
      }

      v17 = sub_1D1E6709C();
      __swift_project_value_buffer(v17, qword_1EE07B5D8);
      a1 = a1;
      v18 = sub_1D1E6707C();
      v19 = sub_1D1E6833C();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412290;
        *(v20 + 4) = a1;
        *v21 = a1;
        v22 = a1;
        _os_log_impl(&dword_1D16EC000, v18, v19, "Failed to snapshot event because it is falls within threshold range %@", v20, 0xCu);
        sub_1D1741A30(v21, &unk_1EC644000, &unk_1D1E75B00);
        MEMORY[0x1D3893640](v21, -1, -1);
        MEMORY[0x1D3893640](v20, -1, -1);
      }

      sub_1D1793690();
      swift_allocError();
      *v23 = 5;
      swift_willThrow();

      goto LABEL_23;
    }

    v39 = v14;
    v40 = [a1 characteristic];
    v70 = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    *v69 = v39;
    v27 = v39;
    static CharacteristicKind.Value.typedValue(for:value:)(v40, v69, &v71);

    sub_1D1741A30(v69, &qword_1EC649700, &qword_1D1E6E910);
    if (v73 == 255)
    {
      goto LABEL_17;
    }

    v64 = v73;
    v65 = v71;
    v66 = v72;
    v49 = [v74 uniqueIdentifier];
    v63 = v27;
    v50 = v49;
    sub_1D1E66A5C();

    v51 = [a1 characteristic];
    v52 = [v51 characteristicType];
    v53 = sub_1D1E6781C();
    v55 = v54;

    v56._countAndFlagsBits = v53;
    v56._object = v55;
    CharacteristicKind.init(rawValue:)(v56);

    v57 = v63;
    if (v69[0] == 174)
    {
      v37 = 0;
    }

    else
    {
      v37 = v69[0];
    }

    v38 = v64 | 0x40;
  }

  else
  {
    if (!v16)
    {
      if (qword_1EE07B5D0 != -1)
      {
        swift_once();
      }

      v42 = sub_1D1E6709C();
      __swift_project_value_buffer(v42, qword_1EE07B5D8);
      a1 = a1;
      v43 = sub_1D1E6707C();
      v44 = sub_1D1E6833C();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        *(v45 + 4) = a1;
        *v46 = a1;
        v47 = a1;
        _os_log_impl(&dword_1D16EC000, v43, v44, "Failed to snapshot event because the range is nil  %@", v45, 0xCu);
        sub_1D1741A30(v46, &unk_1EC644000, &unk_1D1E75B00);
        MEMORY[0x1D3893640](v46, -1, -1);
        MEMORY[0x1D3893640](v45, -1, -1);
      }

      sub_1D1793690();
      swift_allocError();
      *v48 = 4;
      swift_willThrow();

      goto LABEL_23;
    }

    v25 = v16;
    v26 = [a1 characteristic];
    v70 = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    *v69 = v25;
    v27 = v25;
    static CharacteristicKind.Value.typedValue(for:value:)(v26, v69, &v71);

    sub_1D1741A30(v69, &qword_1EC649700, &qword_1D1E6E910);
    if (v73 == 255)
    {
LABEL_17:
      sub_1D1793690();
      swift_allocError();
      *v41 = 3;
      swift_willThrow();

      goto LABEL_23;
    }

    v64 = v73;
    v65 = v71;
    v66 = v72;
    v28 = [v74 uniqueIdentifier];
    v63 = v27;
    v29 = v28;
    sub_1D1E66A5C();

    v30 = [a1 characteristic];
    v31 = [v30 characteristicType];
    v32 = sub_1D1E6781C();
    v34 = v33;

    v35._countAndFlagsBits = v32;
    v35._object = v34;
    CharacteristicKind.init(rawValue:)(v35);

    v36 = v63;
    if (v69[0] == 174)
    {
      v37 = 0;
    }

    else
    {
      v37 = v69[0];
    }

    v38 = v64 | 0x80;
    v10 = v8;
  }

  v58 = v67;
  (*(v68 + 32))(v67, v10, v4);
  v59 = type metadata accessor for Event.CharacteristicEvent();
  *(v58 + *(v59 + 20)) = v37;
  v60 = v58 + *(v59 + 24);
  v61 = v66;
  *v60 = v65;
  *(v60 + 8) = v61;
  *(v60 + 16) = v38;
}

HMEvent __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Event.CharacteristicEvent.createEvent(in:)(HMHome in)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v42 - v10;
  v12 = [(objc_class *)in.super.isa accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v13 = sub_1D1E67C1C();

  v44 = v11;
  v45 = v5;
  v14 = *(v5 + 16);
  v14(v11, v2, v4);
  v48 = v9;
  v43 = v2;
  v46 = v4;
  v15 = v4;
  v16 = v13;
  v14(v9, v2, v15);
  v47 = v13 >> 62;
  if (v13 >> 62)
  {
LABEL_28:
    v49 = v16 & 0xFFFFFFFFFFFFFF8;
    v17 = sub_1D1E6873C();
  }

  else
  {
    v49 = v13 & 0xFFFFFFFFFFFFFF8;
    v17 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = 0;
  v19 = v16 & 0xC000000000000001;
  v42 = v16 + 32;
  while (v17 != v18)
  {
    if (v19)
    {
      v20 = v16;
      v21 = MEMORY[0x1D3891EF0](v18, v16);
    }

    else
    {
      if (v18 >= *(v49 + 16))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v20 = v16;
      v21 = *(v16 + 8 * v18 + 32);
    }

    v22 = v21;
    v23 = [v21 services];
    sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
    v2 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v24);
    *(&v42 - 2) = v48;
    v14 = sub_1D174A6C4(sub_1D1778378, (&v42 - 4), v2);

    if (v14)
    {
      v17 = v18;
      v16 = v20;
      break;
    }

    v25 = __OFADD__(v18++, 1);
    v16 = v20;
    if (v25)
    {
      goto LABEL_27;
    }
  }

  if (!v47)
  {
    if (v17 != *(v49 + 16))
    {
      goto LABEL_16;
    }

LABEL_23:
    isa = (v45 + 8);
    v37 = *(v45 + 8);
    v38 = v46;
    v37(v44, v46);

    v37(v48, v38);
    sub_1D1793690();
    swift_allocError();
    *v39 = 1;
    swift_willThrow();
    return isa;
  }

  if (v17 == sub_1D1E6873C())
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v19)
  {
    v26 = MEMORY[0x1D3891EF0](v17, v16);
  }

  else
  {
    if (v17 >= *(v49 + 16))
    {
      __break(1u);
      goto LABEL_31;
    }

    v26 = *(v42 + 8 * v17);
  }

  v27 = v26;
  v28 = [v26 services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v29 = sub_1D1E67C1C();

  MEMORY[0x1EEE9AC00](v30);
  v31 = v44;
  *(&v42 - 2) = v44;
  v32 = sub_1D174A6C4(sub_1D177896C, (&v42 - 4), v29);

  v2 = v46;
  v14 = *(v45 + 8);
  (v14)(v31, v46);

  if (v32)
  {

    (v14)(v48, v2);
    v33 = type metadata accessor for Event.CharacteristicEvent();
    isa = v43;
    v50 = *(v43 + *(v33 + 20));
    v35 = HMService.subscript.getter(&v50);
    if (v35)
    {
      v36 = v35;
      isa = Event.CharacteristicEvent.createEvent(for:)(v35).super.isa;
    }

    else
    {
      sub_1D1793690();
      swift_allocError();
      *v40 = 2;
      swift_willThrow();
    }

    return isa;
  }

LABEL_31:
  result.super.isa = (v14)(v48, v2);
  __break(1u);
  return result;
}

HMEvent __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Event.CharacteristicEvent.createEvent(for:)(HMCharacteristic a1)
{
  v3 = v1 + *(type metadata accessor for Event.CharacteristicEvent() + 24);
  v5 = *v3;
  v4 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (v6 <= 0x3F)
  {
    v18 = *v3;
    v20 = *(v3 + 8);
    v22 = *(v3 + 16);
    sub_1D1778244(v5, v4, v6);
    v7 = CharacteristicKind.Value.rawObjectValue.getter();
    v8 = [objc_allocWithZone(MEMORY[0x1E696CB48]) initWithCharacteristic:a1.super.isa triggerValue:v7];

    sub_1D179178C(v5, v4, v6, sub_1D1778284);
    return v8;
  }

  v19 = *v3;
  v21 = *(v3 + 8);
  v9 = CharacteristicKind.Value.rawObjectValue.getter();
  if (v9)
  {
    v10 = v9;
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      v13 = objc_opt_self();
      v14 = &selRef_numberRangeWithMinValue_;
      if ((v6 & 0xC0) != 0x80)
      {
        v14 = &selRef_numberRangeWithMaxValue_;
      }

      v15 = [v13 *v14];
      v8 = [objc_allocWithZone(MEMORY[0x1E696CB60]) initWithCharacteristic:a1.super.isa thresholdRange:v15];

      return v8;
    }
  }

  sub_1D1793690();
  swift_allocError();
  *v17 = 3;
  return swift_willThrow();
}

uint64_t Event.CharacteristicEvent.debugDescription.getter()
{
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD00000000000001FLL, 0x80000001D1EB8C30);
  sub_1D1E66A7C();
  sub_1D1793784(&qword_1EE07B250, MEMORY[0x1E69695A8]);
  v1 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v1);

  MEMORY[0x1D3890F70](0xD000000000000012, 0x80000001D1EB8C50);
  v2 = type metadata accessor for Event.CharacteristicEvent();
  v6 = *(v0 + *(v2 + 20));
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](0x206E656877202CLL, 0xE700000000000000);
  v3 = (v0 + *(v2 + 24));
  v7 = *v3;
  v8 = *(v3 + 16);
  v4 = Event.CharacteristicEvent.Condition.debugDescription.getter();
  MEMORY[0x1D3890F70](v4);

  MEMORY[0x1D3890F70](32032, 0xE200000000000000);
  return 0;
}

uint64_t Event.CharacteristicEvent.Condition.debugDescription.getter()
{
  v1 = *(v0 + 16);
  if (v1 >> 6)
  {
    if (v1 >> 6 == 1)
    {
      v2 = 0x203E2065756C6176;
    }

    else
    {
      v2 = 0x203C2065756C6176;
    }
  }

  else
  {
    v2 = 0x3D3D2065756C6176;
  }

  v7 = v2;
  v5 = *v0;
  v6 = v0[1];
  v3 = CharacteristicKind.Value.description.getter();
  MEMORY[0x1D3890F70](v3);

  return v7;
}

uint64_t sub_1D17931FC(id *a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v8 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t _s13HomeDataModel5EventO014CharacteristicD0V9ConditionO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 >> 6)
  {
    if (v4 >> 6 == 1)
    {
      if ((v7 & 0xC0) != 0x40)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    if ((v7 & 0xC0) == 0x80)
    {
LABEL_8:
      v13 = *a1;
      v14 = v2;
      v15 = v4 & 0x3F;
      v10 = v6;
      v11 = v5;
      v12 = v7 & 0x3F;
      goto LABEL_9;
    }

LABEL_10:
    sub_1D179178C(*a1, v2, v4, sub_1D1778244);
    sub_1D179178C(v6, v5, v7, sub_1D1778244);
    sub_1D179178C(v3, v2, v4, sub_1D1778284);
    sub_1D179178C(v6, v5, v7, sub_1D1778284);
    v8 = 0;
    return v8 & 1;
  }

  if (v7 > 0x3F)
  {
    goto LABEL_10;
  }

  v13 = *a1;
  v14 = v2;
  v15 = v4;
  v10 = v6;
  v11 = v5;
  v12 = v7;
LABEL_9:
  sub_1D179178C(v6, v5, v7, sub_1D1778244);
  sub_1D179178C(v3, v2, v4, sub_1D1778244);
  sub_1D179178C(v3, v2, v4, sub_1D1778244);
  sub_1D179178C(v6, v5, v7, sub_1D1778244);
  v8 = _s13HomeDataModel18CharacteristicKindO5ValueO2eeoiySbAE_AEtFZ_0(&v13, &v10);
  sub_1D179178C(v3, v2, v4, sub_1D1778284);
  sub_1D179178C(v6, v5, v7, sub_1D1778284);
  sub_1D179178C(v6, v5, v7, sub_1D1778284);
  sub_1D179178C(v3, v2, v4, sub_1D1778284);
  return v8 & 1;
}

uint64_t _s13HomeDataModel5EventO014CharacteristicD0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_7;
  }

  v4 = type metadata accessor for Event.CharacteristicEvent();
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  LOBYTE(v5) = *(a2 + v5);
  LOBYTE(v23) = v6;
  LOBYTE(v20) = v5;
  v7 = CharacteristicKind.rawValue.getter();
  v9 = v8;
  if (v7 != CharacteristicKind.rawValue.getter() || v9 != v10)
  {
    v11 = sub_1D1E6904C();

    if (v11)
    {
      goto LABEL_6;
    }

LABEL_7:
    v18 = 0;
    return v18 & 1;
  }

LABEL_6:
  v12 = *(v4 + 24);
  v13 = *(a1 + v12 + 8);
  v14 = *(a1 + v12 + 16);
  v23 = *(a1 + v12);
  v24 = v13;
  v25 = v14;
  v15 = a2 + v12;
  v16 = *(v15 + 8);
  v17 = *(v15 + 16);
  v20 = *v15;
  v21 = v16;
  v22 = v17;
  sub_1D179178C(v23, v13, v14, sub_1D1778244);
  sub_1D179178C(v20, v16, v17, sub_1D1778244);
  v18 = _s13HomeDataModel5EventO014CharacteristicD0V9ConditionO2eeoiySbAG_AGtFZ_0(&v23, &v20);
  sub_1D179178C(v20, v21, v22, sub_1D1778284);
  sub_1D179178C(v23, v24, v25, sub_1D1778284);
  return v18 & 1;
}

unint64_t sub_1D1793690()
{
  result = qword_1EC643888;
  if (!qword_1EC643888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643888);
  }

  return result;
}

unint64_t sub_1D17936E8()
{
  result = qword_1EC643890;
  if (!qword_1EC643890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643890);
  }

  return result;
}

uint64_t sub_1D1793784(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D17937F4()
{
  result = sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_13HomeDataModel18CharacteristicKindO5ValueO(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFu) <= 0xA)
  {
    return *(a1 + 16) & 0xF;
  }

  else
  {
    return (*a1 + 11);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D17938D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE && *(a1 + 17))
  {
    return (*a1 + 14);
  }

  v3 = ((*(a1 + 16) >> 2) & 0xC | (*(a1 + 16) >> 6)) ^ 0xF;
  if (v3 >= 0xD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D1793924(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xD)
  {
    *(result + 16) = 0;
    *result = a2 - 14;
    *(result + 8) = 0;
    if (a3 >= 0xE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 16 * (((-a2 >> 2) & 3) - 4 * a2);
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13HomeDataModel5EventO014CharacteristicD0V5ErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D17939DC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 6)
  {
    return (v3 - 5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D1793A3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

void *sub_1D1793A8C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

void Event.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for Event.CharacteristicEvent();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Event.TimeEvent(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Event();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1794EDC(v1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v16 = *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643078, &qword_1D1E71148) + 48)];
      sub_1D1794F94(v14, v10, type metadata accessor for Event.TimeEvent);
      MEMORY[0x1D3892850](1);
      Event.TimeEvent.hash(into:)(a1);
      MEMORY[0x1D3892850](v16);
      v17 = v10;
      v18 = type metadata accessor for Event.TimeEvent;
    }

    else
    {
      sub_1D1794F94(v14, v6, type metadata accessor for Event.CharacteristicEvent);
      MEMORY[0x1D3892850](2);
      sub_1D1E66A7C();
      sub_1D1795044(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      LOBYTE(v29) = v6[*(v3 + 20)];
      CharacteristicKind.rawValue.getter();
      sub_1D1E678EC();

      v23 = &v6[*(v3 + 24)];
      v25 = *v23;
      v24 = *(v23 + 1);
      v26 = v23[16];
      v27 = v26 >> 6;
      if (v26 >> 6)
      {
        LOBYTE(v26) = v26 & 0x3F;
        if (v27 == 1)
        {
          v28 = 1;
        }

        else
        {
          v28 = 2;
        }
      }

      else
      {
        v28 = 0;
      }

      MEMORY[0x1D3892850](v28);
      v29 = v25;
      v30 = v24;
      LOBYTE(v31) = v26;
      CharacteristicKind.Value.hash(into:)();
      v18 = type metadata accessor for Event.CharacteristicEvent;
      v17 = v6;
    }

    sub_1D1795244(v17, v18);
  }

  else
  {
    v19 = *v14;
    v20 = *(v14 + 1);
    v21 = *(v14 + 2);
    v22 = v14[24];
    MEMORY[0x1D3892850](0);
    v29 = v19;
    v30 = v20;
    v31 = v21;
    v32 = v22;
    Event.LocationEvent.hash(into:)(a1);
    sub_1D1771BD4(v19, v20, v21, v22);
  }
}

uint64_t Event.hashValue.getter()
{
  sub_1D1E6920C();
  Event.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1793E2C()
{
  sub_1D1E6920C();
  Event.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1793E70()
{
  sub_1D1E6920C();
  Event.hash(into:)(v1);
  return sub_1D1E6926C();
}

void Event.init(event:in:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v86 = a3;
  v91 = a2;
  v4 = sub_1D1E662EC();
  v83 = *(v4 - 8);
  v84 = v4;
  v5 = *(v83 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v81 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v82 = &v76 - v8;
  v85 = type metadata accessor for Event();
  v9 = *(*(v85 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v85);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v76 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v76 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v76 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v76 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v76 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v76 - v28;
  objc_opt_self();
  v30 = a1;
  v31 = swift_dynamicCastObjCClass();
  if (v31)
  {
    v32 = v31;
    v33 = v30;
    v34 = v87;
    Event.LocationEvent.init(event:)(v32, &v88);
    if (!v34)
    {

      v35 = v89;
      v36 = v90;
      *v29 = v88;
      *(v29 + 2) = v35;
      v29[24] = v36;
      swift_storeEnumTagMultiPayload();
      v37 = v29;
      goto LABEL_32;
    }

    goto LABEL_13;
  }

  v76 = v12;
  v77 = v15;
  v78 = v24;
  v79 = v18;
  v80 = v21;
  objc_opt_self();
  v38 = swift_dynamicCastObjCClass();
  if (v38)
  {
    v39 = v38;
    v33 = a1;
    v40 = v87;
    Event.LocationEvent.init(event:)(v39, &v88);
    if (!v40)
    {

      v41 = v89;
      v42 = v90;
      *v27 = v88;
      *(v27 + 2) = v41;
      v27[24] = v42;
      swift_storeEnumTagMultiPayload();
      v37 = v27;
      goto LABEL_32;
    }

    goto LABEL_13;
  }

  objc_opt_self();
  v43 = swift_dynamicCastObjCClass();
  if (v43)
  {
    v79 = a1;
    v44 = v43;
    v45 = [v43 fireDateComponents];
    v46 = v82;
    sub_1D1E6621C();

    sub_1D1E6622C();
    LOBYTE(v45) = v47;
    v48 = v84;
    v49 = *(v83 + 8);
    v49(v46, v84);
    if (v45 & 1) != 0 && (v50 = [v44 fireDateComponents], v51 = v81, sub_1D1E6621C(), v50, sub_1D1E6626C(), LOBYTE(v50) = v52, v49(v51, v48), (v50))
    {
      v33 = v79;
      v53 = v78;
    }

    else
    {
      v33 = v79;
      v53 = v80;
    }

    v54 = v87;
    Event.TimeEvent.init(event:)(v44, v53);
    if (!v54)
    {
      v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643078, &qword_1D1E71148) + 48);
      objc_opt_self();
      v61 = v91;
      v62 = swift_dynamicCastObjCClass();
      if (v62)
      {
        v63 = [v62 recurrenceDays];

        sub_1D17B36EC(v63, (v53 + v60));
      }

      else
      {

        *(v53 + v60) = 0;
      }

      swift_storeEnumTagMultiPayload();
      v37 = v53;
      goto LABEL_32;
    }

LABEL_13:

    goto LABEL_14;
  }

  objc_opt_self();
  v55 = swift_dynamicCastObjCClass();
  if (v55)
  {
    v56 = v55;
    v57 = a1;
    v58 = v79;
    v59 = v87;
    Event.TimeEvent.init(event:)(v56, v79);
    if (!v59)
    {
      v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643078, &qword_1D1E71148) + 48);
      objc_opt_self();
      v70 = v91;
      v71 = swift_dynamicCastObjCClass();
      if (v71)
      {
        v72 = [v71 recurrenceDays];

        sub_1D17B36EC(v72, &v58[v69]);
      }

      else
      {

        *&v58[v69] = 0;
      }

      swift_storeEnumTagMultiPayload();
      v37 = v58;
      goto LABEL_32;
    }

LABEL_14:
    return;
  }

  objc_opt_self();
  v64 = swift_dynamicCastObjCClass();
  if (v64)
  {
    v65 = v64;
    v66 = a1;
    v67 = v77;
    v68 = v87;
    Event.CharacteristicEvent.init(event:)(v65, v77);
  }

  else
  {
    objc_opt_self();
    v73 = swift_dynamicCastObjCClass();
    v74 = v87;
    if (!v73)
    {
      sub_1D1794F40();
      swift_allocError();
      swift_willThrow();

      goto LABEL_14;
    }

    v75 = v73;
    v66 = v30;
    v67 = v76;
    v68 = v74;
    Event.CharacteristicEvent.init(event:)(v75, v76);
  }

  if (v68)
  {
    return;
  }

  swift_storeEnumTagMultiPayload();
  v37 = v67;
LABEL_32:
  sub_1D1794F94(v37, v86, type metadata accessor for Event);
}

HMEvent __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Event.createEvent(in:)(HMHome in)
{
  v2 = v1;
  v4 = type metadata accessor for Event.CharacteristicEvent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Event.TimeEvent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Event();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1794EDC(v2, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D1794F94(v15, v11, type metadata accessor for Event.TimeEvent);
      v17.super.super.isa = Event.TimeEvent.createEvent()().super.super.isa;
      sub_1D1795244(v11, type metadata accessor for Event.TimeEvent);
    }

    else
    {
      sub_1D1794F94(v15, v7, type metadata accessor for Event.CharacteristicEvent);
      v17.super = Event.CharacteristicEvent.createEvent(in:)(in);
      sub_1D1795244(v7, type metadata accessor for Event.CharacteristicEvent);
    }
  }

  else
  {
    v18 = *v15;
    v19 = *(v15 + 1);
    v20 = *(v15 + 2);
    v21 = v15[24];
    v23[0] = v18;
    v23[1] = v19;
    v23[2] = v20;
    v24 = v21;
    v17.super = Event.LocationEvent.createEvent(in:)(in);
    sub_1D1771BD4(v18, v19, v20, v21);
  }

  return v17.super;
}

uint64_t Event.Error.hashValue.getter()
{
  sub_1D1E6920C();
  MEMORY[0x1D3892850](0);
  return sub_1D1E6926C();
}

uint64_t Event.debugDescription.getter()
{
  v1 = type metadata accessor for Event.TimeEvent(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Event.CharacteristicEvent();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Event();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1794EDC(v0, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643078, &qword_1D1E71148) + 48)];
      sub_1D1794F94(v12, v4, type metadata accessor for Event.TimeEvent);
      v30 = Event.TimeEvent.debugDescription.getter();
      v31 = v15;

      MEMORY[0x1D3890F70](0x20797265766520, 0xE700000000000000);

      v17 = v30;
      v16 = v31;
      v34 = v14;
      v18 = TriggerRecurrenceWeekdays.description.getter();
      v20 = v19;
      v30 = v17;
      v31 = v16;

      MEMORY[0x1D3890F70](v18, v20);

      v21 = v30;
      v22 = v4;
      v23 = type metadata accessor for Event.TimeEvent;
    }

    else
    {
      sub_1D1794F94(v12, v8, type metadata accessor for Event.CharacteristicEvent);
      v21 = Event.CharacteristicEvent.debugDescription.getter();
      v22 = v8;
      v23 = type metadata accessor for Event.CharacteristicEvent;
    }

    sub_1D1795244(v22, v23);
  }

  else
  {
    v25 = *(v12 + 1);
    v26 = *(v12 + 2);
    v27 = v12[24];
    v30 = *v12;
    v24 = v30;
    v31 = v25;
    v32 = v26;
    v33 = v27;
    v21 = Event.LocationEvent.debugDescription.getter();
    sub_1D1771BD4(v24, v25, v26, v27);
  }

  return v21;
}

uint64_t _s13HomeDataModel5EventO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Event.CharacteristicEvent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Event.TimeEvent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Event();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v45 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = v45 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438E0, &qword_1D1E72978);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = v45 - v25;
  v27 = v45 + *(v24 + 56) - v25;
  sub_1D1794EDC(a1, v45 - v25);
  sub_1D1794EDC(a2, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1D1794EDC(v26, v21);
    v35 = *v21;
    v34 = *(v21 + 1);
    v36 = *(v21 + 2);
    v37 = v21[24];
    if (!swift_getEnumCaseMultiPayload())
    {
      v40 = *v27;
      v41 = *(v27 + 1);
      v42 = *(v27 + 2);
      v43 = v27[24];
      v47[0] = v35;
      v47[1] = v34;
      v47[2] = v36;
      v48 = v37;
      v45[0] = v40;
      v45[1] = v41;
      v45[2] = v42;
      v46 = v43;
      v33 = static Event.LocationEvent.== infix(_:_:)(v47, v45);
      sub_1D1771BD4(v40, v41, v42, v43);
      sub_1D1771BD4(v35, v34, v36, v37);
      goto LABEL_16;
    }

    sub_1D1771BD4(v35, v34, v36, v37);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1D1794EDC(v26, v16);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1D1794F94(v27, v7, type metadata accessor for Event.CharacteristicEvent);
      v33 = _s13HomeDataModel5EventO014CharacteristicD0V2eeoiySbAE_AEtFZ_0(v16, v7);
      sub_1D1795244(v7, type metadata accessor for Event.CharacteristicEvent);
      sub_1D1795244(v16, type metadata accessor for Event.CharacteristicEvent);
      goto LABEL_16;
    }

    v38 = type metadata accessor for Event.CharacteristicEvent;
    v39 = v16;
    goto LABEL_12;
  }

  sub_1D1794EDC(v26, v19);
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643078, &qword_1D1E71148) + 48);
  v30 = *&v19[v29];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v38 = type metadata accessor for Event.TimeEvent;
    v39 = v19;
LABEL_12:
    sub_1D1795244(v39, v38);
LABEL_13:
    sub_1D17951DC(v26);
    goto LABEL_14;
  }

  v31 = *&v27[v29];
  sub_1D1794F94(v27, v11, type metadata accessor for Event.TimeEvent);
  v32 = static Event.TimeEvent.== infix(_:_:)(v19, v11);
  sub_1D1795244(v11, type metadata accessor for Event.TimeEvent);
  sub_1D1795244(v19, type metadata accessor for Event.TimeEvent);
  if (v32)
  {
    v33 = v30 == v31;
LABEL_16:
    sub_1D1795244(v26, type metadata accessor for Event);
    return v33 & 1;
  }

  sub_1D1795244(v26, type metadata accessor for Event);
LABEL_14:
  v33 = 0;
  return v33 & 1;
}

uint64_t type metadata accessor for Event()
{
  result = qword_1EC6438C8;
  if (!qword_1EC6438C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1794EDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Event();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D1794F40()
{
  result = qword_1EC6438B0;
  if (!qword_1EC6438B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6438B0);
  }

  return result;
}

uint64_t sub_1D1794F94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1795044(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D1795090()
{
  result = qword_1EC6438C0;
  if (!qword_1EC6438C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6438C0);
  }

  return result;
}

void sub_1D17950E4()
{
  sub_1D1795164();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Event.CharacteristicEvent();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D1795164()
{
  if (!qword_1EC6438D8)
  {
    type metadata accessor for Event.TimeEvent(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC6438D8);
    }
  }
}

uint64_t sub_1D17951DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438E0, &qword_1D1E72978);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1795244(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void Event.LocationEvent.init(event:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 region];
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      [v7 center];
      v10 = v9;
      [v7 center];
      v12 = v11;
      [v7 radius];
      v14 = v13;

      *a2 = v10;
      *(a2 + 8) = v12;
      *(a2 + 16) = v14;
      *(a2 + 24) = 1;
      return;
    }
  }

  sub_1D179732C();
  swift_allocError();
  *v15 = 2;
  swift_willThrow();
}

{
  v28 = sub_1D1E66A7C();
  v5 = *(v28 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 presenceUserType];
  if (v9 == 1)
  {
    v10 = 0;
LABEL_21:
    v22 = [a1 presenceEventType];

    *a2 = v22;
    *(a2 + 8) = v10;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    return;
  }

  if (v9 != 3)
  {
    if (v9 != 2)
    {
      sub_1D179732C();
      swift_allocError();
      *v21 = 3;
      swift_willThrow();

      return;
    }

    v10 = 1;
    goto LABEL_21;
  }

  v11 = [a1 users];
  sub_1D1797380();
  v12 = sub_1D1E67C1C();

  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_7;
    }

LABEL_19:

    v15 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v10 = sub_1D17841EC(v15);

    goto LABEL_21;
  }

  v13 = sub_1D1E6873C();
  if (!v13)
  {
    goto LABEL_19;
  }

LABEL_7:
  v24 = a2;
  v25 = a1;
  v26 = v2;
  v29 = MEMORY[0x1E69E7CC0];
  sub_1D178CEFC(0, v13 & ~(v13 >> 63), 0);
  v27 = v13;
  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    v15 = v29;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1D3891EF0](v14, v12);
      }

      else
      {
        v16 = *(v12 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = [v17 uniqueIdentifier];
      sub_1D1E66A5C();

      v29 = v15;
      v20 = *(v15 + 16);
      v19 = *(v15 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1D178CEFC(v19 > 1, v20 + 1, 1);
        v15 = v29;
      }

      ++v14;
      *(v15 + 16) = v20 + 1;
      (*(v5 + 32))(v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20, v8, v28);
    }

    while (v27 != v14);

    a1 = v25;
    a2 = v24;
    goto LABEL_20;
  }

  __break(1u);
}

HMEvent __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Event.LocationEvent.createEvent(in:)(HMHome in)
{
  v5 = *v1;
  v4 = *(v1 + 8);
  if (*(v1 + 24) == 1)
  {
    v6 = *(v1 + 16);
    v7 = *v1;
    v8 = *(v1 + 8);
    v9 = objc_allocWithZone(MEMORY[0x1E695FBB0]);
    v10 = sub_1D1E677EC();
    v11 = [v9 initWithCenter:v10 radius:v5 identifier:{v8, v6}];

    v12 = [objc_allocWithZone(MEMORY[0x1E696CBC8]) initWithRegion_];
    return v12;
  }

  else if (v4)
  {
    if (v4 == 1)
    {
      return [objc_allocWithZone(MEMORY[0x1E696CC18]) initWithPresenceEventType:*&v5 presenceUserType:2];
    }

    else
    {
      v17[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
      v17[4] = sub_1D179747C();
      v17[0] = v4;
      sub_1D17974E0(v4);
      Event.LocationEvent.users(for:in:)(v17, in.super.isa);
      __swift_destroy_boxed_opaque_existential_1(v17);
      if (!v2)
      {
        v15 = objc_allocWithZone(MEMORY[0x1E696CC18]);
        sub_1D1797380();
        v16 = sub_1D1E67BFC();

        v3 = [v15 initWithPresenceEventType:*&v5 presenceUserType:3 users:v16];
      }

      return v3;
    }
  }

  else
  {
    return [objc_allocWithZone(MEMORY[0x1E696CC18]) initWithPresenceEventType:*&v5 presenceUserType:1];
  }
}

uint64_t Event.LocationEvent.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 24) == 1)
  {
    v3 = v0[2];
    v4 = *v0;
    v5 = v0[1];
    sub_1D1E6884C();
    MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EB8C70);
    sub_1D1E6811C();
    MEMORY[0x1D3890F70](8236, 0xE200000000000000);
    sub_1D1E6811C();
    MEMORY[0x1D3890F70](0x737569646172202CLL, 0xEA0000000000203ALL);
    sub_1D1E6811C();
  }

  else
  {
    v6 = *v0;
    v7 = HMPresenceEventTypeAsString();
    if (v7)
    {
      v8 = v7;
      v9 = sub_1D1E6781C();
      v11 = v10;
    }

    else
    {
      v12 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v12);

      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      v9 = 0x286E776F6E6B6E75;
      v11 = 0xE800000000000000;
    }

    sub_1D1E6884C();
    MEMORY[0x1D3890F70](0xD00000000000001FLL, 0x80000001D1EB8C90);
    MEMORY[0x1D3890F70](v9, v11);

    MEMORY[0x1D3890F70](0x737520726F66202CLL, 0xED0000203A737265);
    sub_1D1E68ABC();
  }

  MEMORY[0x1D3890F70](32032, 0xE200000000000000);
  return 0;
}

uint64_t Event.LocationEvent.UserType.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  if (!*v1)
  {
    v4 = 0;
    return MEMORY[0x1D3892850](v4);
  }

  if (v3 == 1)
  {
    v4 = 1;
    return MEMORY[0x1D3892850](v4);
  }

  MEMORY[0x1D3892850](2);

  return sub_1D176D4E8(a1, v3);
}

uint64_t Event.LocationEvent.UserType.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x1D3892850](2);
      sub_1D176D4E8(v4, v1);
      return sub_1D1E6926C();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1D3892850](v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D1795C14()
{
  v1 = *v0;
  sub_1D1E6920C();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x1D3892850](2);
      sub_1D176D4E8(v4, v1);
      return sub_1D1E6926C();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1D3892850](v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D1795C88(__int128 *a1)
{
  v3 = *v1;
  if (!*v1)
  {
    v4 = 0;
    return MEMORY[0x1D3892850](v4);
  }

  if (v3 == 1)
  {
    v4 = 1;
    return MEMORY[0x1D3892850](v4);
  }

  MEMORY[0x1D3892850](2);

  return sub_1D176D4E8(a1, v3);
}

uint64_t sub_1D1795D08()
{
  v1 = *v0;
  sub_1D1E6920C();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x1D3892850](2);
      sub_1D176D4E8(v4, v1);
      return sub_1D1E6926C();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1D3892850](v2);
  return sub_1D1E6926C();
}

uint64_t Event.LocationEvent.CircularRegion.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1D3892890](*&v1);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1D3892890](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  return MEMORY[0x1D3892890](*&v5);
}

uint64_t Event.LocationEvent.CircularRegion.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1D1E6920C();
  if (v1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v1;
  }

  MEMORY[0x1D3892890](*&v4);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1D3892890](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1D3892890](*&v6);
  return sub_1D1E6926C();
}

uint64_t sub_1D1795EB4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1D1E6920C();
  if (v1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v1;
  }

  MEMORY[0x1D3892890](*&v4);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1D3892890](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1D3892890](*&v6);
  return sub_1D1E6926C();
}

uint64_t Event.LocationEvent.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v5 = *v2;
  v4 = v2[1];
  if (*(v2 + 24) == 1)
  {
    v6 = v2[2];
    MEMORY[0x1D3892850](1);
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x1D3892890](v7);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v4;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x1D3892890](v8);
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }

    return MEMORY[0x1D3892890](v9);
  }

  MEMORY[0x1D3892850](0);
  MEMORY[0x1D3892850](v5);
  if (!v4)
  {
    v11 = 0;
    return MEMORY[0x1D3892850](v11);
  }

  if (v4 == 1)
  {
    v11 = 1;
    return MEMORY[0x1D3892850](v11);
  }

  MEMORY[0x1D3892850](2);

  return sub_1D176D4E8(a1, v4);
}