uint64_t sub_1D19DC3B4(unint64_t a1, char a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v10 = a4[7];
  v11 = a5(0);
  result = sub_1D19DD29C(a3, v10 + *(*(v11 - 8) + 72) * a1, a6);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1D19DC45C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for RoomType(0);
  result = sub_1D19DD29C(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for RoomType);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_1D19DC508(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = a4[7] + 40 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a3 + 32);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1D19DC560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D19DC580, 0, 0);
}

uint64_t sub_1D19DC580()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D19DC644, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1D19DC644()
{
  v1 = *(v0 + 56);
  sub_1D19DA60C(&qword_1EC646FC0, &qword_1D1E840F0, &qword_1EC6486D8, &qword_1D1E91190);

  return MEMORY[0x1EEE6DFA0](sub_1D19DD800, 0, 0);
}

uint64_t sub_1D19DC6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1D19DC774;

  return sub_1D19D8654(a2, a3);
}

uint64_t sub_1D19DC774(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_1D19DC884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D19DC8A4, 0, 0);
}

uint64_t sub_1D19DC8A4()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D19DC968, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1D19DC968()
{
  v1 = *(v0 + 56);
  sub_1D19DA60C(&qword_1EC6486B8, &qword_1D1E8E2E0, &qword_1EC6486C0, &qword_1D1E8E2E8);

  return MEMORY[0x1EEE6DFA0](sub_1D19DC9F8, 0, 0);
}

uint64_t sub_1D19DCA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D17C4CF0;

  return sub_1D19D76E4(a1, a2, a3, a4, v10);
}

uint64_t _s13HomeDataModel14StaticEndpointV14GeneralCommandO2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 6)
  {
    if (v3 == 6)
    {
      return 1;
    }
  }

  else if (v2 == v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D19DCB20(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v15 = *(v2 + 64);
  v11 = *(v2 + 80);
  v12 = *(v2 + 88);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D17C4BFC;

  return sub_1D19D6C8C(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D19DCC30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D19DCC90()
{
  result = qword_1EC648680;
  if (!qword_1EC648680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648680);
  }

  return result;
}

unint64_t sub_1D19DCCE4()
{
  result = qword_1EC648688;
  if (!qword_1EC648688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648688);
  }

  return result;
}

unint64_t sub_1D19DCD3C()
{
  result = qword_1EC648690;
  if (!qword_1EC648690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648690);
  }

  return result;
}

unint64_t sub_1D19DCD94()
{
  result = qword_1EC648698;
  if (!qword_1EC648698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648698);
  }

  return result;
}

uint64_t _s14GeneralCommandOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 6)
  {
    v7 = 6;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 7;
  if (v6 < 6)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

unint64_t sub_1D19DCEA8()
{
  result = qword_1EC6486A0;
  if (!qword_1EC6486A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6486A0);
  }

  return result;
}

uint64_t sub_1D19DCEFC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D17C4CF0;

  return sub_1D19DC6D4(a1, v5, v4);
}

uint64_t sub_1D19DCFEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return sub_1D19DC884(a1, v4, v5, v6);
}

unint64_t sub_1D19DD0B4()
{
  result = qword_1EC6486C8;
  if (!qword_1EC6486C8)
  {
    sub_1D1E67D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6486C8);
  }

  return result;
}

uint64_t sub_1D19DD154(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6486B8, &qword_1D1E8E2E0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D17C4BFC;

  return sub_1D19D8C0C(a1, v8, v9, v1 + v6, v10);
}

uint64_t sub_1D19DD29C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D19DD304(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D17C4CF0;

  return sub_1D19D833C(a1, v5, v4);
}

uint64_t sub_1D19DD3E8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroy_30Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D19DD47C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return sub_1D19DC560(a1, v4, v5, v6);
}

uint64_t objectdestroy_39Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2 + v6, v3);
  v9 = *(v2 + v7);

  return MEMORY[0x1EEE6BDD0](v2, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v5 | 7);
}

uint64_t sub_1D19DD670(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D17C4CF0;

  return sub_1D19D8B2C(a1, v8, v9, v1 + v6, v10);
}

HomeDataModel::ClusterKind_optional __swiftcall ClusterKind.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue > 256)
  {
    if (rawValue > 513)
    {
      if (rawValue <= 767)
      {
        if (rawValue == 514)
        {
          *v1 = 20;
          return rawValue;
        }

        if (rawValue == 516)
        {
          *v1 = 21;
          return rawValue;
        }
      }

      else
      {
        switch(rawValue)
        {
          case 0x300u:
            *v1 = 17;
            return rawValue;
          case 0x1349FC03u:
            *v1 = 28;
            return rawValue;
          case 0x1349FC05u:
            *v1 = 29;
            return rawValue;
        }
      }
    }

    else if (rawValue <= 335)
    {
      if (rawValue == 257)
      {
        *v1 = 22;
        return rawValue;
      }

      if (rawValue == 258)
      {
        *v1 = 23;
        return rawValue;
      }
    }

    else
    {
      switch(rawValue)
      {
        case 0x150u:
          *v1 = 27;
          return rawValue;
        case 0x200u:
          *v1 = 18;
          return rawValue;
        case 0x201u:
          *v1 = 19;
          return rawValue;
      }
    }

LABEL_46:
    *v1 = 30;
    return rawValue;
  }

  v2 = 0;
  v3 = 12;
  switch(rawValue)
  {
    case 3u:
      v2 = 10;
      goto LABEL_38;
    case 6u:
      v2 = 11;
      goto LABEL_38;
    case 8u:
      goto LABEL_39;
    case 0x1Du:
      goto LABEL_38;
    case 0x28u:
      v2 = 1;
      goto LABEL_38;
    case 0x2Eu:
      v2 = 3;
      goto LABEL_38;
    case 0x2Fu:
      v2 = 2;
      goto LABEL_38;
    case 0x32u:
      v2 = 4;
      goto LABEL_38;
    case 0x33u:
      v2 = 5;
      goto LABEL_38;
    case 0x36u:
      v2 = 6;
      goto LABEL_38;
    case 0x3Bu:
      *v1 = 15;
      return rawValue;
    case 0x3Eu:
      v2 = 9;
      goto LABEL_38;
    case 0x40u:
      v2 = 7;
      goto LABEL_38;
    case 0x41u:
      v2 = 8;
LABEL_38:
      v3 = v2;
LABEL_39:
      *v1 = v3;
      break;
    case 0x45u:
      *v1 = 13;
      break;
    case 0x50u:
      *v1 = 14;
      break;
    case 0x54u:
      *v1 = 25;
      break;
    case 0x55u:
      *v1 = 26;
      break;
    case 0x60u:
      *v1 = 16;
      break;
    case 0x61u:
      *v1 = 24;
      break;
    default:
      goto LABEL_46;
  }

  return rawValue;
}

HomeDataModel::ClusterKind_optional __swiftcall ClusterKind.init(clusterID:)(NSNumber clusterID)
{
  v3 = v1;
  v4 = [(objc_class *)clusterID.super.super.isa unsignedIntValue];

  result.value = ClusterKind.init(rawValue:)(v4).value;
  *v3 = v6;
  return result;
}

HomeDataModel::ClusterKind_optional __swiftcall ClusterKind.init(clusterID:)(MTRClusterIDType clusterID)
{
  v2 = v1;
  result.value = ClusterKind.init(rawValue:)(clusterID).value;
  *v2 = v4;
  return result;
}

uint64_t sub_1D19DDAF8()
{
  v1 = *v0;
  sub_1D1E6920C();
  v2 = dword_1D1E8E56C[v1];
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19DDB80()
{
  v1 = *v0;
  sub_1D1E6920C();
  v2 = dword_1D1E8E56C[v1];
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19DDCB0()
{
  result = sub_1D179B598(&unk_1F4D658F0);
  qword_1EC6486E0 = result;
  return result;
}

BOOL ClusterKind.isRVCClusterKind.getter()
{
  v1 = *v0;
  if (qword_1EC642268 != -1)
  {
    v4 = *v0;
    swift_once();
    v1 = v4;
  }

  v2 = qword_1EC6486E0;

  return sub_1D17198DC(v1, v2);
}

unint64_t sub_1D19DDD50()
{
  result = qword_1EE07CE68;
  if (!qword_1EE07CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07CE68);
  }

  return result;
}

unint64_t sub_1D19DDDA8()
{
  result = qword_1EC6486E8;
  if (!qword_1EC6486E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6486F0, &qword_1D1E8E498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6486E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClusterKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClusterKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D19DDF5C()
{
  result = qword_1EC6486F8;
  if (!qword_1EC6486F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6486F8);
  }

  return result;
}

void MatterAttributeDataBuilder.containedValue.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  if (v4 <= 1)
  {
    if (!*(v1 + 8))
    {
      *(a1 + 24) = MEMORY[0x1E69E6370];
      *a1 = v3 & 1;
      return;
    }

    v7 = MEMORY[0x1E69E6530];
    goto LABEL_13;
  }

  if (v4 == 2)
  {
    v7 = MEMORY[0x1E69E6810];
LABEL_13:
    *(a1 + 24) = v7;
    *a1 = v3;
    return;
  }

  if (v4 == 3)
  {
    v5 = &qword_1EC646A50;
    v6 = &unk_1D1E910D0;
  }

  else
  {
    v5 = &qword_1EC646DE8;
    v6 = &unk_1D1E85520;
  }

  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  *a1 = v3;
}

unint64_t MatterAttributeDataBuilder.dictionary.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 <= 1)
  {
    if (*(v0 + 8))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648700, &qword_1D1E8E5F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D1E73A90;
      v34 = *MEMORY[0x1E696F550];
      *(inited + 32) = sub_1D1E6781C();
      v35 = *MEMORY[0x1E696F540];
      *(inited + 40) = v36;
      *(inited + 48) = v35;
      v37 = *MEMORY[0x1E696F568];
      *(inited + 56) = sub_1D1E6781C();
      *(inited + 64) = v38;
      v39 = v35;
      v20 = sub_1D1E6821C();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648700, &qword_1D1E8E5F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D1E73A90;
      v14 = *MEMORY[0x1E696F550];
      *(inited + 32) = sub_1D1E6781C();
      v15 = *MEMORY[0x1E696F508];
      *(inited + 40) = v16;
      *(inited + 48) = v15;
      v17 = *MEMORY[0x1E696F568];
      *(inited + 56) = sub_1D1E6781C();
      *(inited + 64) = v18;
      v19 = v15;
      v20 = sub_1D1E67D2C();
    }

    goto LABEL_11;
  }

  if (v2 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648700, &qword_1D1E8E5F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E73A90;
    v21 = *MEMORY[0x1E696F550];
    *(inited + 32) = sub_1D1E6781C();
    v22 = *MEMORY[0x1E696F560];
    *(inited + 40) = v23;
    *(inited + 48) = v22;
    v24 = *MEMORY[0x1E696F568];
    *(inited + 56) = sub_1D1E6781C();
    *(inited + 64) = v25;
    v26 = v22;
    v20 = sub_1D1E685DC();
LABEL_11:
    *(inited + 72) = v20;
    goto LABEL_12;
  }

  if (v2 == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648700, &qword_1D1E8E5F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E73A90;
    v4 = *MEMORY[0x1E696F550];
    *(inited + 32) = sub_1D1E6781C();
    v5 = *MEMORY[0x1E696F4F8];
    *(inited + 40) = v6;
    *(inited + 48) = v5;
    v7 = *MEMORY[0x1E696F568];
    *(inited + 56) = sub_1D1E6781C();
    *(inited + 64) = v8;
    v9 = v5;
    v10 = sub_1D18F95E0(v1);
    v11 = *MEMORY[0x1E696F560];
    v12 = sub_1D1E6781C();
    sub_1D19DE6D8(v10, v12, v13);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648700, &qword_1D1E8E5F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E73A90;
    v27 = *MEMORY[0x1E696F550];
    *(inited + 32) = sub_1D1E6781C();
    v28 = *MEMORY[0x1E696F4F8];
    *(inited + 40) = v29;
    *(inited + 48) = v28;
    v30 = *MEMORY[0x1E696F568];
    *(inited + 56) = sub_1D1E6781C();
    *(inited + 64) = v31;
    v32 = v28;
    sub_1D19DEA30(v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  v33 = sub_1D1E67BFC();

  *(inited + 72) = v33;
LABEL_12:
  v40 = sub_1D18D6D74(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647728, &unk_1D1E86830);
  swift_arrayDestroy();
  return v40;
}

void AttributeValue.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  if (v4 > 4)
  {
    if (*(v1 + 16) <= 6u)
    {
      if (v4 == 5)
      {
        v5 = 5;
        goto LABEL_14;
      }

      v9 = *(v1 + 8);
      MEMORY[0x1D3892850](6);

      sub_1D1E678EC();
    }

    else if (v4 == 7)
    {
      MEMORY[0x1D3892850](7);
      MEMORY[0x1D3892850](*(v3 + 16));
      v6 = *(v3 + 16);
      if (v6)
      {
        v7 = (v3 + 48);
        do
        {
          v10 = *(v7 - 2);
          v11 = *(v7 - 1);
          v8 = *v7;
          v7 += 24;
          sub_1D1780654(v10, v11, v8);
          AttributeValue.hash(into:)(a1);
          sub_1D1780698(v10, v11, v8);
          --v6;
        }

        while (v6);
      }
    }

    else if (v4 == 8)
    {
      MEMORY[0x1D3892850](8);
      sub_1D1E6850C();
    }

    else
    {
      MEMORY[0x1D3892850](9);

      sub_1D185BEF0(a1, v3);
    }
  }

  else if (*(v1 + 16) <= 1u)
  {
    if (*(v1 + 16))
    {
      MEMORY[0x1D3892850](1);
    }

    else
    {
      MEMORY[0x1D3892850](0);
    }

    sub_1D1E6922C();
  }

  else if (v4 == 2)
  {
    MEMORY[0x1D3892850](2);
    sub_1D1E6923C();
  }

  else
  {
    if (v4 == 3)
    {
      v5 = 3;
LABEL_14:
      MEMORY[0x1D3892850](v5);
      sub_1D1E6924C();
      return;
    }

    MEMORY[0x1D3892850](4);
    MEMORY[0x1D3892890](v3);
  }
}

uint64_t AttributeValue.hashValue.getter()
{
  v1 = *(v0 + 16);
  *&v3[9] = *v0;
  v4 = v1;
  sub_1D1E6920C();
  AttributeValue.hash(into:)(v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D19DE62C()
{
  v1 = *(v0 + 16);
  *&v3[9] = *v0;
  v4 = v1;
  sub_1D1E6920C();
  AttributeValue.hash(into:)(v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D19DE684()
{
  v1 = *(v0 + 16);
  *&v3[9] = *v0;
  v4 = v1;
  sub_1D1E6920C();
  AttributeValue.hash(into:)(v3);
  return sub_1D1E6926C();
}

unint64_t sub_1D19DE6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v35 = *MEMORY[0x1E696F568];
    v36 = *MEMORY[0x1E696F550];
    v34 = *MEMORY[0x1E696F520];
    v5 = a1 + 32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BA8, &unk_1D1E6E8F0);
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v42[0] = sub_1D1E6781C();
      v42[1] = v7;
      v42[5] = MEMORY[0x1E69E6158];
      v42[2] = a2;
      v42[3] = a3;
      v43[0] = sub_1D1E6781C();
      v43[1] = v8;
      sub_1D1741970(v5, &v44);
      v9 = sub_1D1E68BCC();

      sub_1D19DF8B4(v42, &v39);
      v11 = v39;
      v10 = v40;
      result = sub_1D171D2F0(v39, v40);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v9[6] + 16 * result);
      *v14 = v11;
      v14[1] = v10;
      result = sub_1D1742194(v41, (v9[7] + 32 * result));
      v15 = v9[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_18;
      }

      v9[2] = v17;
      sub_1D19DF8B4(v43, &v39);
      v18 = v39;
      v19 = v40;
      result = sub_1D171D2F0(v39, v40);
      if (v20)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = (v9[6] + 16 * result);
      *v21 = v18;
      v21[1] = v19;
      result = sub_1D1742194(v41, (v9[7] + 32 * result));
      v22 = v9[2];
      v16 = __OFADD__(v22, 1);
      v23 = v22 + 1;
      if (v16)
      {
        goto LABEL_18;
      }

      v9[2] = v23;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
      swift_arrayDestroy();
      v38[0] = sub_1D1E6781C();
      v38[1] = v24;
      v38[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
      v38[2] = v9;
      v25 = sub_1D1E68BCC();

      sub_1D19DF8B4(v38, &v39);
      v26 = v39;
      v27 = v40;
      result = sub_1D171D2F0(v39, v40);
      if (v28)
      {
        goto LABEL_19;
      }

      v25[(result >> 6) + 8] |= 1 << result;
      v29 = (v25[6] + 16 * result);
      *v29 = v26;
      v29[1] = v27;
      result = sub_1D1742194(v41, (v25[7] + 32 * result));
      v30 = v25[2];
      v16 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v16)
      {
        goto LABEL_20;
      }

      v25[2] = v31;

      sub_1D19DF924(v38);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1D177D2F8(0, v6[2] + 1, 1, v6);
      }

      v33 = v6[2];
      v32 = v6[3];
      if (v33 >= v32 >> 1)
      {
        v6 = sub_1D177D2F8((v32 > 1), v33 + 1, 1, v6);
      }

      v6[2] = v33 + 1;
      v6[v33 + 4] = v25;
      v5 += 32;
      if (!--v3)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void *sub_1D19DEA30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = (a1 + 52);
  v3 = MEMORY[0x1E69E7CC0];
  v34 = *MEMORY[0x1E696F520];
  v33 = *MEMORY[0x1E696F550];
  v31 = *MEMORY[0x1E696F568];
  v32 = *MEMORY[0x1E696F548];
  do
  {
    v4 = *(v2 - 5);
    v5 = *(v2 - 16);
    v6 = *(v2 - 3);
    v7 = *(v2 - 8);
    v8 = *(v2 - 1);
    v9 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643388, &unk_1D1E71FF0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D1E73A90;
    *(v10 + 32) = sub_1D19DED90(0, v4);
    *(v10 + 40) = sub_1D19DED90(1, v5);
    if ((v7 & 1) == 0)
    {
      v11 = sub_1D19DED90(2, v6);
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        v28 = v11;
        v10 = sub_1D177D2F8((v12 > 1), v13 + 1, 1, v10);
        v11 = v28;
      }

      *(v10 + 16) = v13 + 1;
      *(v10 + 8 * v13 + 32) = v11;
    }

    if ((v9 & 1) == 0)
    {
      v14 = sub_1D19DED90(3, v8);
      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      if (v16 >= v15 >> 1)
      {
        v29 = v14;
        v10 = sub_1D177D2F8((v15 > 1), v16 + 1, 1, v10);
        v14 = v29;
      }

      *(v10 + 16) = v16 + 1;
      *(v10 + 8 * v16 + 32) = v14;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    *(inited + 32) = sub_1D1E6781C();
    *(inited + 40) = v18;
    v19 = swift_initStackObject();
    *(v19 + 16) = xmmword_1D1E73A90;
    *(v19 + 32) = sub_1D1E6781C();
    *(v19 + 40) = v20;
    v21 = sub_1D1E6781C();
    *(v19 + 72) = MEMORY[0x1E69E6158];
    *(v19 + 48) = v21;
    *(v19 + 56) = v22;
    *(v19 + 80) = sub_1D1E6781C();
    *(v19 + 88) = v23;
    *(v19 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648308, &unk_1D1E8DD70);
    *(v19 + 96) = v10;
    v24 = sub_1D18D6538(v19);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
    swift_arrayDestroy();
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    *(inited + 48) = v24;
    v25 = sub_1D18D6538(inited);
    swift_setDeallocating();
    sub_1D19DF924(inited + 32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D177D2F8(0, v3[2] + 1, 1, v3);
    }

    v27 = v3[2];
    v26 = v3[3];
    if (v27 >= v26 >> 1)
    {
      v3 = sub_1D177D2F8((v26 > 1), v27 + 1, 1, v3);
    }

    v3[2] = v27 + 1;
    v3[v27 + 4] = v25;
    v2 += 24;
    --v1;
  }

  while (v1);
  return v3;
}

unint64_t sub_1D19DED90(uint64_t a1, int a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73A90;
  v5 = *MEMORY[0x1E696F518];
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 72) = MEMORY[0x1E69E6530];
  *(inited + 40) = v6;
  *(inited + 48) = a1;
  v7 = *MEMORY[0x1E696F520];
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v8;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_1D1E73A90;
  v10 = *MEMORY[0x1E696F550];
  *(v9 + 32) = sub_1D1E6781C();
  *(v9 + 40) = v11;
  v12 = *MEMORY[0x1E696F560];
  v13 = sub_1D1E6781C();
  *(v9 + 72) = MEMORY[0x1E69E6158];
  *(v9 + 48) = v13;
  *(v9 + 56) = v14;
  v15 = *MEMORY[0x1E696F568];
  *(v9 + 80) = sub_1D1E6781C();
  *(v9 + 88) = v16;
  *(v9 + 120) = MEMORY[0x1E69E7668];
  *(v9 + 96) = a2;
  v17 = sub_1D18D6538(v9);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
  swift_arrayDestroy();
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  *(inited + 96) = v17;
  v18 = sub_1D18D6538(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v18;
}

uint64_t MatterAttributeDataBuilder.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  if (v5 <= 1)
  {
    if (!v5)
    {
      MEMORY[0x1D3892850](0);
      return sub_1D1E6922C();
    }

    v10 = 1;
    goto LABEL_15;
  }

  if (v5 == 2)
  {
    v10 = 2;
LABEL_15:
    MEMORY[0x1D3892850](v10);
    return MEMORY[0x1D3892850](v4);
  }

  if (v5 == 3)
  {
    MEMORY[0x1D3892850](3);
    result = MEMORY[0x1D3892850](*(v4 + 16));
    v7 = *(v4 + 16);
    if (v7)
    {
      v8 = (v4 + 32);
      do
      {
        v9 = *v8++;
        result = sub_1D1E6924C();
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    MEMORY[0x1D3892850](4);

    return sub_1D176F7B0(a1, v4);
  }

  return result;
}

uint64_t MatterAttributeDataBuilder.hashValue.getter()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_1D1E6920C();
  MatterAttributeDataBuilder.hash(into:)(v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D19DF068()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_1D1E6920C();
  MatterAttributeDataBuilder.hash(into:)(v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D19DF0C0()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_1D1E6920C();
  MatterAttributeDataBuilder.hash(into:)(v3);
  return sub_1D1E6926C();
}

uint64_t _s13HomeDataModel015MatterAttributeB7BuilderO2eeoiySbAC_ACtFZ_0(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 <= 1)
  {
    if (!*(result + 8))
    {
      if (!*(a2 + 8))
      {
        sub_1D1757AE8(*result, 0);
        sub_1D1757AE8(v4, 0);
        v8 = v4 ^ v2 ^ 1;
        return v8 & 1;
      }

      goto LABEL_23;
    }

    if (v5 == 1)
    {
      sub_1D1757AE8(*result, 1u);
      v9 = v4;
      v10 = 1;
      goto LABEL_22;
    }

LABEL_23:
    sub_1D1741AF8(v4, v5);
    sub_1D1757AE8(v2, v3);
    v13 = v4;
    v14 = v5;
LABEL_24:
    sub_1D1757AE8(v13, v14);
    v8 = 0;
    return v8 & 1;
  }

  if (v3 == 2)
  {
    if (v5 == 2)
    {
      sub_1D1757AE8(*result, 2u);
      v9 = v4;
      v10 = 2;
LABEL_22:
      sub_1D1757AE8(v9, v10);
      v8 = v2 == v4;
      return v8 & 1;
    }

    goto LABEL_23;
  }

  if (v3 != 3)
  {
    if (v5 == 4)
    {
      v11 = sub_1D177A140(*result, *a2);
      sub_1D1741AF8(v4, 4u);
      sub_1D1741AF8(v2, 4u);
      sub_1D1757AE8(v2, 4u);
      sub_1D1757AE8(v4, 4u);
      return v11 & 1;
    }

    goto LABEL_19;
  }

  if (v5 != 3)
  {
LABEL_19:
    v12 = *result;

    goto LABEL_23;
  }

  v6 = *(v2 + 16);
  if (v6 != *(v4 + 16))
  {
LABEL_30:
    sub_1D1741AF8(*a2, 3u);
    sub_1D1741AF8(v2, 3u);
    sub_1D1757AE8(v2, 3u);
    v13 = v4;
    v14 = 3;
    goto LABEL_24;
  }

  if (v6)
  {
    v7 = v2 == v4;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
LABEL_11:
    sub_1D1741AF8(*a2, 3u);
    sub_1D1741AF8(v2, 3u);
    sub_1D1757AE8(v2, 3u);
    sub_1D1757AE8(v4, 3u);
    v8 = 1;
    return v8 & 1;
  }

  v15 = (v2 + 32);
  v16 = (v4 + 32);
  while (v6)
  {
    if (*v15 != *v16)
    {
      goto LABEL_30;
    }

    ++v15;
    ++v16;
    if (!--v6)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s13HomeDataModel14AttributeValueO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 4)
  {
    if (*(a1 + 16) <= 1u)
    {
      if (*(a1 + 16))
      {
        if (v7 == 1)
        {
          v19 = *a1;
          sub_1D1780698(*a1, v3, 1u);
          sub_1D1780698(v5, v6, 1u);
          v15 = v19 == v5;
          return v15 & 1;
        }
      }

      else if (!*(a2 + 16))
      {
        sub_1D1780698(*a1, v3, 0);
        sub_1D1780698(v5, v6, 0);
        v15 = v5 ^ v2 ^ 1;
        return v15 & 1;
      }
    }

    else if (v4 == 2)
    {
      if (v7 == 2)
      {
        v16 = *a1;
        sub_1D1780698(*a1, v3, 2u);
        sub_1D1780698(v5, v6, 2u);
        v15 = v16 == v5;
        return v15 & 1;
      }
    }

    else if (v4 == 3)
    {
      if (v7 == 3)
      {
        sub_1D1780698(*a1, v3, 3u);
        v8 = v5;
        v9 = v6;
        v10 = 3;
LABEL_18:
        sub_1D1780698(v8, v9, v10);
        v15 = v2 == v5;
        return v15 & 1;
      }
    }

    else if (v7 == 4)
    {
      sub_1D1780698(*a1, v3, 4u);
      sub_1D1780698(v5, v6, 4u);
      v15 = v2 == v5;
      return v15 & 1;
    }

    goto LABEL_37;
  }

  if (*(a1 + 16) <= 6u)
  {
    if (v4 == 5)
    {
      if (v7 == 5)
      {
        sub_1D1780698(*a1, v3, 5u);
        v8 = v5;
        v9 = v6;
        v10 = 5;
        goto LABEL_18;
      }

LABEL_37:
      sub_1D1780654(v5, v6, v7);
      sub_1D1780698(v2, v3, v4);
      sub_1D1780698(v5, v6, v7);
      v15 = 0;
      return v15 & 1;
    }

    if (v7 == 6)
    {
      if (v2 == v5 && v3 == v6)
      {
        sub_1D1780654(*a1, v3, 6u);
        sub_1D1780654(v2, v3, 6u);
        sub_1D1780698(v2, v3, 6u);
        sub_1D1780698(v2, v3, 6u);
        v15 = 1;
        return v15 & 1;
      }

      v23 = *a1;
      v11 = sub_1D1E6904C();
      sub_1D1780654(v5, v6, 6u);
      sub_1D1780654(v2, v3, 6u);
      sub_1D1780698(v2, v3, 6u);
      v12 = v5;
      v13 = v6;
      v14 = 6;
      goto LABEL_40;
    }

    v21 = *(a1 + 8);
LABEL_36:

    goto LABEL_37;
  }

  if (v4 == 7)
  {
    if (v7 == 7)
    {
      sub_1D1780654(*a2, *(a2 + 8), 7u);
      sub_1D1780654(v2, v3, 7u);
      v11 = sub_1D177AD6C(v2, v5);
      sub_1D1780698(v2, v3, 7u);
      v12 = v5;
      v13 = v6;
      v14 = 7;
      goto LABEL_40;
    }

    goto LABEL_27;
  }

  if (v4 != 8)
  {
    if (v7 == 9)
    {
      sub_1D1780654(*a2, *(a2 + 8), 9u);
      sub_1D1780654(v2, v3, 9u);
      sub_1D184DD88(v2, v5);
      v11 = v17;
      sub_1D1780698(v2, v3, 9u);
      v12 = v5;
      v13 = v6;
      v14 = 9;
      goto LABEL_40;
    }

LABEL_27:
    v18 = *a1;
    goto LABEL_36;
  }

  if (v7 != 8)
  {
    v20 = v2;
    goto LABEL_37;
  }

  sub_1D1877D48();
  sub_1D1780654(v5, v6, 8u);
  sub_1D1780654(v2, v3, 8u);
  sub_1D1780654(v5, v6, 8u);
  sub_1D1780654(v2, v3, 8u);
  v11 = sub_1D1E684FC();
  sub_1D1780698(v2, v3, 8u);
  sub_1D1780698(v5, v6, 8u);
  sub_1D1780698(v5, v6, 8u);
  v12 = v2;
  v13 = v3;
  v14 = 8;
LABEL_40:
  sub_1D1780698(v12, v13, v14);
  return v11 & 1;
}

unint64_t sub_1D19DF73C()
{
  result = qword_1EC648708;
  if (!qword_1EC648708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648708);
  }

  return result;
}

unint64_t sub_1D19DF794()
{
  result = qword_1EC648710;
  if (!qword_1EC648710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648710);
  }

  return result;
}

uint64_t sub_1D19DF7F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 17))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 16);
  if (v3 <= 9)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D19DF83C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 16) = 0;
    *result = a2 - 247;
    *(result + 8) = 0;
    if (a3 >= 0xF7)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D19DF8B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D19DF924(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static MatterDeviceType.primaryDeviceType(for:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    MEMORY[0x1EEE9AC00](v8);
    bzero(v25 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = 0;
    v10 = 0;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_12:
      if (*(*(a1 + 48) + v16) >= 3u)
      {
        *(v25 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v16;
        if (__OFADD__(v9++, 1))
        {
          __break(1u);
LABEL_16:
          v20 = sub_1D19E119C((v25 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, v9, a1);
          goto LABEL_17;
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

      if (v10 >= v14)
      {
        goto LABEL_16;
      }

      v18 = *(a1 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v23 = swift_slowAlloc();

  v24 = sub_1D19E315C(v23, v6, a1, sub_1D19E00F0);
  swift_bridgeObjectRelease_n();
  MEMORY[0x1D3893640](v23, -1, -1);
  v20 = v24;
LABEL_17:
  sub_1D1771CC0(v20, a2);

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

HomeDataModel::MatterDeviceType_optional __swiftcall MatterDeviceType.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue <= 259)
  {
    if (rawValue > 38)
    {
      if (rawValue <= 143)
      {
        switch(rawValue)
        {
          case '\'':
            *v1 = 3;
            return rawValue;
          case '+':
            *v1 = 18;
            return rawValue;
          case 't':
            *v1 = 23;
            return rawValue;
        }
      }

      else if (rawValue > 256)
      {
        if (rawValue == 257)
        {
          *v1 = 5;
          return rawValue;
        }

        if (rawValue == 259)
        {
          *v1 = 9;
          return rawValue;
        }
      }

      else
      {
        if (rawValue == 144)
        {
          *v1 = 27;
          return rawValue;
        }

        if (rawValue == 256)
        {
          *v1 = 4;
          return rawValue;
        }
      }
    }

    else if (rawValue <= 16)
    {
      switch(rawValue)
      {
        case 0xAu:
          *v1 = 21;
          return rawValue;
        case 0xBu:
          *v1 = 22;
          return rawValue;
        case 0xFu:
          *v1 = 8;
          return rawValue;
      }
    }

    else if (rawValue > 20)
    {
      if (rawValue == 21)
      {
        *v1 = 24;
        return rawValue;
      }

      if (rawValue == 22)
      {
        *v1 = 0;
        return rawValue;
      }
    }

    else
    {
      if (rawValue == 17)
      {
        *v1 = 1;
        return rawValue;
      }

      if (rawValue == 19)
      {
        *v1 = 2;
        return rawValue;
      }
    }

LABEL_66:
    *v1 = 28;
    return rawValue;
  }

  if (rawValue > 268)
  {
    if (rawValue <= 767)
    {
      switch(rawValue)
      {
        case 0x10Du:
          *v1 = 7;
          return rawValue;
        case 0x202u:
          *v1 = 16;
          return rawValue;
        case 0x203u:
          *v1 = 17;
          return rawValue;
      }
    }

    else if (rawValue > 770)
    {
      if (rawValue == 771)
      {
        *v1 = 19;
        return rawValue;
      }

      if (rawValue == 772)
      {
        *v1 = 20;
        return rawValue;
      }
    }

    else
    {
      if (rawValue == 768)
      {
        *v1 = 14;
        return rawValue;
      }

      if (rawValue == 769)
      {
        *v1 = 15;
        return rawValue;
      }
    }

    goto LABEL_66;
  }

  if (rawValue <= 262)
  {
    if (rawValue == 260)
    {
      *v1 = 10;
    }

    else if (rawValue == 261)
    {
      *v1 = 11;
    }

    else
    {
      *v1 = 25;
    }
  }

  else
  {
    if (rawValue <= 266)
    {
      if (rawValue == 263)
      {
        *v1 = 26;
        return rawValue;
      }

      if (rawValue == 266)
      {
        *v1 = 12;
        return rawValue;
      }

      goto LABEL_66;
    }

    if (rawValue == 267)
    {
      *v1 = 13;
    }

    else
    {
      *v1 = 6;
    }
  }

  return rawValue;
}

uint64_t sub_1D19DFF48()
{
  v1 = *v0;
  sub_1D1E6920C();
  v2 = dword_1D1E8EB34[v1];
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19DFFD0()
{
  v1 = *v0;
  sub_1D1E6920C();
  v2 = dword_1D1E8EB34[v1];
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19E0100()
{
  result = sub_1D19E0120();
  qword_1EC648718 = result;
  return result;
}

uint64_t sub_1D19E0120()
{
  if (qword_1EE07AE38 != -1)
  {
    swift_once();
  }

  if (qword_1EE07AE40 > 3)
  {
    if (qword_1EE07AE40 != 4 && qword_1EE07AE40 != 6 && qword_1EE07AE40 != 7)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (qword_1EE07AE40 < 2)
  {
    if (qword_1EC642278 == -1)
    {
    }

LABEL_20:
    swift_once();
  }

  if (qword_1EE07AE40 == 2 || qword_1EE07AE40 == 3)
  {
LABEL_11:
    if (qword_1EC642280 == -1)
    {
    }

    goto LABEL_20;
  }

LABEL_15:
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  __swift_project_value_buffer(v1, qword_1EE07A0B0);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6833C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1D1B1312C(0xD000000000000010, 0x80000001D1E8E9D0, &v6);
    _os_log_impl(&dword_1D16EC000, v2, v3, "%s Unsupported context. Cannot get supported devices.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1D3893640](v5, -1, -1);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t static MatterDeviceType.contextSupported.getter()
{
  if (qword_1EC642270 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D19E03A8()
{
  result = sub_1D179C134(&unk_1F4D65918);
  qword_1EC648720 = result;
  return result;
}

uint64_t sub_1D19E03D0()
{
  result = sub_1D179C134(&unk_1F4D65940);
  qword_1EC648728 = result;
  return result;
}

uint64_t MatterDeviceType.homeAppSupported.getter()
{
  v1 = *v0;
  if (qword_1EC642278 != -1)
  {
    v3 = *v0;
    swift_once();
    v1 = v3;
  }

  if (sub_1D1719A64(v1, qword_1EC648720))
  {
    return 1;
  }

  if (qword_1EC6422B0 != -1)
  {
    swift_once();
  }

  return byte_1EC649198;
}

void MatterDeviceType.umbrellaCategory.getter(_BYTE *a1@<X8>)
{
  if (*v1 - 4 > 0x16)
  {
    *a1 = 7;
  }

  else
  {
    *a1 = byte_1D1E8EB1A[(*v1 - 4)];
  }
}

uint64_t sub_1D19E04D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for StaticMediaProfile();
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v29 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647438, &unk_1D1E8EAE0);
  result = sub_1D1E6882C();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v28 = result + 56;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v31 = (v13 - 1) & v13;
LABEL_16:
    v18 = a4;
    v19 = *(a4 + 48);
    v20 = v29;
    v21 = *(v30 + 72);
    sub_1D19E33E8(v19 + v21 * (v15 | (v14 << 6)), v29, type metadata accessor for StaticMediaProfile);
    v22 = *(v11 + 40);
    sub_1D1E6920C();
    StaticMediaProfile.hash(into:)(v32);
    sub_1D1E6926C();
    v23 = -1 << *(v11 + 32);
    v24 = v28;
    v25 = sub_1D1E686CC();
    *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    result = sub_1D19E3450(v20, *(v11 + 48) + v25 * v21, type metadata accessor for StaticMediaProfile);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    a4 = v18;
    v13 = v31;
    if (!a3)
    {
LABEL_18:

      return v11;
    }
  }

  v16 = v14;
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_18;
    }

    v17 = a1[v14];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v31 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D19E073C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for StaticAccessory(0);
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v29 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647450, &qword_1D1E85630);
  result = sub_1D1E6882C();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v28 = result + 56;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v31 = (v13 - 1) & v13;
LABEL_16:
    v18 = a4;
    v19 = *(a4 + 48);
    v20 = v29;
    v21 = *(v30 + 72);
    sub_1D19E33E8(v19 + v21 * (v15 | (v14 << 6)), v29, type metadata accessor for StaticAccessory);
    v22 = *(v11 + 40);
    sub_1D1E6920C();
    StaticAccessory.hash(into:)(v32);
    sub_1D1E6926C();
    v23 = -1 << *(v11 + 32);
    v24 = v28;
    v25 = sub_1D1E686CC();
    *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    result = sub_1D19E3450(v20, *(v11 + 48) + v25 * v21, type metadata accessor for StaticAccessory);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    a4 = v18;
    v13 = v31;
    if (!a3)
    {
LABEL_18:

      return v11;
    }
  }

  v16 = v14;
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_18;
    }

    v17 = a1[v14];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v31 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D19E09A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for StaticAccessory(0);
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647450, &qword_1D1E85630);
  result = sub_1D1E6882C();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v33 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_16:
    v20 = *(a4 + 48);
    v21 = *(v34 + 72);
    sub_1D19E33E8(v20 + v21 * (v17 | (v15 << 6)), v11, type metadata accessor for StaticAccessory);
    v22 = *(v12 + 40);
    sub_1D1E6920C();
    StaticAccessory.hash(into:)(v35);
    result = sub_1D1E6926C();
    v23 = -1 << *(v12 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v16 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    result = sub_1D19E3450(v11, *(v12 + 48) + v26 * v21, type metadata accessor for StaticAccessory);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v33;
    if (!a3)
    {
LABEL_28:

      return v12;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_28;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v14 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D19E0C6C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for StaticServiceGroup();
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v29 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647430, &unk_1D1E8EAB0);
  result = sub_1D1E6882C();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v28 = result + 56;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v31 = (v13 - 1) & v13;
LABEL_16:
    v18 = a4;
    v19 = *(a4 + 48);
    v20 = v29;
    v21 = *(v30 + 72);
    sub_1D19E33E8(v19 + v21 * (v15 | (v14 << 6)), v29, type metadata accessor for StaticServiceGroup);
    v22 = *(v11 + 40);
    sub_1D1E6920C();
    StaticServiceGroup.hash(into:)(v32);
    sub_1D1E6926C();
    v23 = -1 << *(v11 + 32);
    v24 = v28;
    v25 = sub_1D1E686CC();
    *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    result = sub_1D19E3450(v20, *(v11 + 48) + v25 * v21, type metadata accessor for StaticServiceGroup);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    a4 = v18;
    v13 = v31;
    if (!a3)
    {
LABEL_18:

      return v11;
    }
  }

  v16 = v14;
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_18;
    }

    v17 = a1[v14];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v31 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D19E0ED0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for StaticService(0);
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439F0, &qword_1D1E72F68);
  result = sub_1D1E6882C();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v33 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_16:
    v20 = *(a4 + 48);
    v21 = *(v34 + 72);
    sub_1D19E33E8(v20 + v21 * (v17 | (v15 << 6)), v11, type metadata accessor for StaticService);
    v22 = *(v12 + 40);
    sub_1D1E6920C();
    StaticService.hash(into:)(v35);
    result = sub_1D1E6926C();
    v23 = -1 << *(v12 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v16 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    result = sub_1D19E3450(v11, *(v12 + 48) + v26 * v21, type metadata accessor for StaticService);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v33;
    if (!a3)
    {
LABEL_28:

      return v12;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_28;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v14 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D19E119C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439C8, &qword_1D1E8EB10);
  result = sub_1D1E6882C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    sub_1D1E6920C();
    v18 = dword_1D1E8EB34[v16];
    sub_1D1E6924C();
    result = sub_1D1E6926C();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + v22) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D19E13B0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_1D1E66A7C();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6439F8, &qword_1D1E72F70);
  result = sub_1D1E6882C();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_1D17579AC();
    result = sub_1D1E676DC();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D19E16BC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643018, &qword_1D1E9AC00);
  v38 = *(v8 - 8);
  v39 = v8;
  v9 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v37 - v10);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473F0, &unk_1D1E8EA90);
  result = sub_1D1E6882C();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v37 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v40 = (v14 - 1) & v14;
LABEL_16:
    v20 = *(a4 + 48);
    v41 = *(v38 + 72);
    sub_1D1741C08(v20 + v41 * (v17 | (v15 << 6)), v11, &qword_1EC643018, &qword_1D1E9AC00);
    v21 = *(v12 + 40);
    sub_1D1E6920C();
    v23 = v11[3];
    v22 = v11[4];
    __swift_project_boxed_opaque_existential_1(v11, v23);
    (*(v22 + 8))(v23, v22);
    sub_1D1E678EC();

    v24 = v11[3];
    v25 = v11[4];
    __swift_project_boxed_opaque_existential_1(v11, v24);
    (*(v25 + 16))(v24, v25);
    sub_1D1E678EC();

    v26 = v39;
    v27 = *(v39 + 36);
    sub_1D1E66A7C();
    sub_1D17579AC();
    sub_1D1E676EC();
    MEMORY[0x1D3892890](*(v11 + *(v26 + 40)));
    result = sub_1D1E6926C();
    v28 = -1 << *(v12 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
    {
      v32 = 0;
      v33 = (63 - v28) >> 6;
      a4 = v37;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v16 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
    a4 = v37;
LABEL_26:
    *(v16 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    result = sub_1D1741A90(v11, *(v12 + 48) + v31 * v41, &qword_1EC643018, &qword_1D1E9AC00);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v14 = v40;
    if (!a3)
    {
LABEL_28:

      return v12;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_28;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v40 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D19E1A90(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647488, &qword_1D1E85660);
  result = sub_1D1E6882C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    sub_1D1E6920C();
    sub_1D1E6923C();
    sub_1D1E678EC();
    result = sub_1D1E6926C();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + v21) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D19E1D04(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for MatterTilePath(0);
  v36 = *(v8 - 8);
  v37 = v8;
  v9 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647480, &unk_1D1E8EB00);
  result = sub_1D1E6882C();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v35 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_16:
    v20 = *(a4 + 48);
    v38 = *(v36 + 72);
    sub_1D19E33E8(v20 + v38 * (v17 | (v15 << 6)), v11, type metadata accessor for MatterTilePath);
    v21 = *(v12 + 40);
    sub_1D1E6920C();
    sub_1D1E66A7C();
    sub_1D17579AC();
    sub_1D1E676EC();
    v22 = v37;
    MEMORY[0x1D3892890](*&v11[*(v37 + 20)]);
    v23 = &v11[*(v22 + 24)];
    if (v23[2] == 1)
    {
      sub_1D1E6922C();
    }

    else
    {
      v24 = *v23;
      sub_1D1E6922C();
      sub_1D1E6923C();
    }

    result = sub_1D1E6926C();
    v25 = -1 << *(v12 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    a4 = v35;
    if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v16 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_29;
        }
      }

      goto LABEL_34;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    *(v16 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = sub_1D19E3450(v11, *(v12 + 48) + v28 * v38, type metadata accessor for MatterTilePath);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_35;
    }

    if (!a3)
    {
LABEL_31:

      return v12;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_31;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v14 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1D19E209C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t))
{
  v7 = a4;
  if (!a3)
  {
    v12 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v12;
  }

  v8 = a3;
  if (*(a4 + 16) == a3)
  {
    return v7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_1D1E6882C();
  v12 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_17:
    v19 = *(*(v7 + 48) + (v16 | (v14 << 6)));
    v20 = *(v12 + 40);
    v21 = sub_1D1E6920C();
    a7(v21);
    sub_1D1E678EC();

    result = sub_1D1E6926C();
    v22 = -1 << *(v12 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v15 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v15 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v12 + 48) + v25) = v19;
    ++*(v12 + 16);
    if (__OFSUB__(v8--, 1))
    {
      goto LABEL_32;
    }

    if (!v8)
    {
      goto LABEL_6;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_6;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D19E22C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for StaticActionSet();
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647418, &qword_1D1E85608);
  result = sub_1D1E6882C();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v33 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_16:
    v20 = *(a4 + 48);
    v21 = *(v34 + 72);
    sub_1D19E33E8(v20 + v21 * (v17 | (v15 << 6)), v11, type metadata accessor for StaticActionSet);
    v22 = *(v12 + 40);
    sub_1D1E6920C();
    StaticActionSet.hash(into:)(v35);
    result = sub_1D1E6926C();
    v23 = -1 << *(v12 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v16 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    result = sub_1D19E3450(v11, *(v12 + 48) + v26 * v21, type metadata accessor for StaticActionSet);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v33;
    if (!a3)
    {
LABEL_28:

      return v12;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_28;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v14 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D19E2594(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for StaticRoom(0);
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v29 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647410, &unk_1D1E8EAC0);
  result = sub_1D1E6882C();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v28 = result + 56;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v31 = (v13 - 1) & v13;
LABEL_16:
    v18 = a4;
    v19 = *(a4 + 48);
    v20 = v29;
    v21 = *(v30 + 72);
    sub_1D19E33E8(v19 + v21 * (v15 | (v14 << 6)), v29, type metadata accessor for StaticRoom);
    v22 = *(v11 + 40);
    sub_1D1E6920C();
    StaticRoom.hash(into:)(v32);
    sub_1D1E6926C();
    v23 = -1 << *(v11 + 32);
    v24 = v28;
    v25 = sub_1D1E686CC();
    *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    result = sub_1D19E3450(v20, *(v11 + 48) + v25 * v21, type metadata accessor for StaticRoom);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    a4 = v18;
    v13 = v31;
    if (!a3)
    {
LABEL_18:

      return v11;
    }
  }

  v16 = v14;
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_18;
    }

    v17 = a1[v14];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v31 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D19E280C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_1D1E6882C();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(v11 + 40);
    v19 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = sub_1D1E684EC();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v11 + 48) + 8 * v23) = v19;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D19E29F8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643010, &qword_1D1E90E20);
  v41 = *(v8 - 8);
  v42 = v8;
  v9 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v38 - v10);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473E8, &unk_1D1E8EAA0);
  result = sub_1D1E6882C();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v39 = result;
  v40 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v43 = (v14 - 1) & v14;
LABEL_16:
    v20 = *(a4 + 48);
    v44 = *(v41 + 72);
    sub_1D1741C08(v20 + v44 * (v17 | (v15 << 6)), v11, &qword_1EC643010, &qword_1D1E90E20);
    v21 = v12[5];
    sub_1D1E6920C();
    v23 = v11[3];
    v22 = v11[4];
    __swift_project_boxed_opaque_existential_1(v11, v23);
    (*(v22 + 8))(v23, v22);
    sub_1D1E678EC();

    v24 = v11[3];
    v25 = v11[4];
    __swift_project_boxed_opaque_existential_1(v11, v24);
    (*(v25 + 16))(v24, v25);
    sub_1D1E678EC();

    v26 = v42;
    v27 = *(v42 + 36);
    sub_1D1E66A7C();
    sub_1D17579AC();
    sub_1D1E676EC();
    v28 = v11 + *(v26 + 40);
    sub_1D1E676EC();
    result = sub_1D1E6926C();
    v12 = v39;
    v29 = -1 << *(v39 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      a4 = v40;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v16 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    a4 = v40;
LABEL_26:
    *(v16 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    result = sub_1D1741A90(v11, v12[6] + v32 * v44, &qword_1EC643010, &qword_1D1E90E20);
    ++v12[2];
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v14 = v43;
    if (!a3)
    {
LABEL_28:

      return v12;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_28;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v43 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D19E2DE0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for WriteInProgressStatusViewModel.ID(0);
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v37 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - v12;
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6473D0, &unk_1D1E8EA80);
  result = sub_1D1E6882C();
  v14 = result;
  if (a2 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *a1;
  }

  v17 = 0;
  v18 = result + 56;
  v36 = a4;
  while (v16)
  {
    v19 = __clz(__rbit64(v16));
    v39 = (v16 - 1) & v16;
LABEL_16:
    v22 = *(a4 + 48);
    v40 = *(v38 + 72);
    sub_1D19E33E8(v22 + v40 * (v19 | (v17 << 6)), v13, type metadata accessor for WriteInProgressStatusViewModel.ID);
    v23 = *(v14 + 40);
    sub_1D1E6920C();
    v24 = v13;
    v25 = v37;
    sub_1D19E33E8(v13, v37, type metadata accessor for WriteInProgressStatusViewModel.ID);
    MEMORY[0x1D3892850](0);
    v26 = sub_1D1E66A7C();
    sub_1D17579AC();
    sub_1D1E676EC();
    (*(*(v26 - 8) + 8))(v25, v26);
    result = sub_1D1E6926C();
    v27 = -1 << *(v14 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      v13 = v24;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v18 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
    v13 = v24;
LABEL_26:
    *(v18 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    result = sub_1D19E3450(v13, *(v14 + 48) + v30 * v40, type metadata accessor for WriteInProgressStatusViewModel.ID);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v36;
    v16 = v39;
    if (!a3)
    {
LABEL_28:

      return v14;
    }
  }

  v20 = v17;
  while (1)
  {
    v17 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v17 >= a2)
    {
      goto LABEL_28;
    }

    v21 = a1[v17];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v39 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_1D19E315C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1D19FAD58(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t sub_1D19E31F0()
{
  result = qword_1EE07C960;
  if (!qword_1EE07C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07C960);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MatterDeviceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE5)
  {
    goto LABEL_17;
  }

  if (a2 + 27 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 27) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 27;
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

      return (*a1 | (v4 << 8)) - 27;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 27;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v8 = v6 - 28;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MatterDeviceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE5)
  {
    v4 = 0;
  }

  if (a2 > 0xE4)
  {
    v5 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
    *result = a2 + 27;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D19E3394()
{
  result = qword_1EC648730;
  if (!qword_1EC648730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648730);
  }

  return result;
}

uint64_t sub_1D19E33E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D19E3450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t MatterDeviceType.foregroundColor.getter()
{
  if (*v0 == 23)
  {
    v1 = objc_allocWithZone(MEMORY[0x1E69DC890]);
    aBlock[4] = sub_1D19E38B0;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D19E3848;
    aBlock[3] = &block_descriptor_29;
    v2 = _Block_copy(aBlock);
    [v1 initWithDynamicProvider_];
    _Block_release(v2);

    return sub_1D1E6730C();
  }

  else
  {
    LOBYTE(aBlock[0]) = *v0;
    MatterDeviceType.umbrellaCategory.getter(&v5);
    if (v5 <= 2u)
    {
      if (!v5)
      {
        return sub_1D1E6735C();
      }

      if (v5 == 2)
      {
        return sub_1D1E673FC();
      }
    }

    else
    {
      switch(v5)
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
}

id static UIColor.rvcTintColor.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC890]);
  v4[4] = sub_1D19E38B0;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1D19E3848;
  v4[3] = &block_descriptor_3;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithDynamicProvider_];
  _Block_release(v1);

  return v2;
}

uint64_t Color.uiColor.getter()
{
  sub_1D19E39A8();

  return sub_1D1E684BC();
}

id static UIColor.rvcAccessibilityDark.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC890]);

  return [v0 initWithRed:1.0 green:0.607843137 blue:0.458823529 alpha:1.0];
}

id static UIColor.rvcDark.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC890]);

  return [v0 initWithRed:1.0 green:0.545098039 blue:0.368627451 alpha:1.0];
}

id static UIColor.rvcAccessibilityLight.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC890]);

  return [v0 initWithRed:0.615686275 green:0.0509803922 blue:0.0392156863 alpha:1.0];
}

id static UIColor.rvcLight.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC890]);

  return [v0 initWithRed:1.0 green:0.51372549 blue:0.341176471 alpha:1.0];
}

id sub_1D19E3848(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

id sub_1D19E38B0(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  v4 = objc_allocWithZone(MEMORY[0x1E69DC890]);
  if (v2 == 2)
  {
    if (v3 == 1)
    {
      v5 = 0.607843137;
      v6 = 0.458823529;
    }

    else
    {
      v5 = 0.545098039;
      v6 = 0.368627451;
    }
  }

  else
  {
    if (v3 == 1)
    {
      v7 = 0.615686275;
      v5 = 0.0509803922;
      v6 = 0.0392156863;
      goto LABEL_9;
    }

    v5 = 0.51372549;
    v6 = 0.341176471;
  }

  v7 = 1.0;
LABEL_9:

  return [v4 initWithRed:v7 green:v5 blue:v6 alpha:1.0];
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D19E39A8()
{
  result = qword_1EC648738;
  if (!qword_1EC648738)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC648738);
  }

  return result;
}

uint64_t MatterAttributeRequestPath.init(endpoint:cluster:attribute:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  *a4 = result;
  *(a4 + 2) = BYTE2(result) & 1;
  *(a4 + 3) = v4;
  *(a4 + 4) = a3;
  *(a4 + 8) = BYTE4(a3) & 1;
  return result;
}

uint64_t ClusterPath.init(clusterPath:homeID:nodeID:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = [a1 cluster];
  v9 = [v8 unsignedIntValue];

  ClusterKind.init(rawValue:)(v9);
  if (v22 == 30)
  {
    v10 = sub_1D1E66A7C();
    (*(*(v10 - 8) + 8))(a2, v10);

    v11 = type metadata accessor for ClusterPath(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = v11;
    v14 = a4;
    v15 = 1;
  }

  else
  {
    v16 = [a1 endpoint];
    v17 = [v16 unsignedShortValue];

    v18 = type metadata accessor for EndpointPath(0);
    *(a4 + *(v18 + 20)) = a3;
    *(a4 + *(v18 + 24)) = v17;
    v19 = sub_1D1E66A7C();
    (*(*(v19 - 8) + 32))(a4, a2, v19);
    v20 = type metadata accessor for ClusterPath(0);
    *(a4 + *(v20 + 20)) = v22;
    v12 = *(*(v20 - 8) + 56);
    v13 = v20;
    v14 = a4;
    v15 = 0;
  }

  return v12(v14, v15, 1, v13);
}

BOOL static EndpointPath.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) != 0 && (v4 = type metadata accessor for EndpointPath(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t EndpointPath.init(home:nodeID:endpointID:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v8 = [a1 uniqueIdentifier];
  sub_1D1E66A5C();

  result = type metadata accessor for EndpointPath(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t ClusterPath.init(endpointPath:clusterKind:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_1D19E84DC(a1, a3, type metadata accessor for EndpointPath);
  result = type metadata accessor for ClusterPath(0);
  *(a3 + *(result + 20)) = v4;
  return result;
}

uint64_t EndpointPath.clusterPath(with:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_1D19E8598(v2, a2, type metadata accessor for EndpointPath);
  result = type metadata accessor for ClusterPath(0);
  *(a2 + *(result + 20)) = v4;
  return result;
}

uint64_t ClusterPath.homeID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EndpointPath(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D19E8598(v1, v6, type metadata accessor for EndpointPath);
  v7 = sub_1D1E66A7C();
  return (*(*(v7 - 8) + 32))(a1, v6, v7);
}

uint64_t EndpointPath.nodeID.setter(uint64_t a1)
{
  result = type metadata accessor for EndpointPath(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t EndpointPath.endpointID.setter(__int16 a1)
{
  result = type metadata accessor for EndpointPath(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t EndpointPath.description.getter()
{
  v1 = type metadata accessor for EndpointPath(0);
  v5 = *(v0 + *(v1 + 20));
  v2 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v2);

  MEMORY[0x1D3890F70](3826988, 0xE300000000000000);
  LOWORD(v5) = *(v0 + *(v1 + 24));
  v3 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v3);

  MEMORY[0x1D3890F70](125, 0xE100000000000000);
  return 3829371;
}

uint64_t EndpointPath.init(homeID:nodeID:endpointID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for EndpointPath(0);
  *(a4 + *(v8 + 20)) = a2;
  *(a4 + *(v8 + 24)) = a3;
  v9 = sub_1D1E66A7C();
  v10 = *(*(v9 - 8) + 32);

  return v10(a4, a1, v9);
}

uint64_t EndpointPath.init(home:device:endpointID:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, __int16 a3@<W3>, uint64_t a4@<X8>)
{
  v8 = [a1 uniqueIdentifier];
  sub_1D1E66A5C();

  ObjectType = swift_getObjectType();
  v10 = (*(a2 + 8))(ObjectType, a2);
  swift_unknownObjectRelease();

  result = type metadata accessor for EndpointPath(0);
  *(a4 + *(result + 20)) = v10;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t sub_1D19E420C(uint64_t a1)
{
  v2 = sub_1D19E8374();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19E4248(uint64_t a1)
{
  v2 = sub_1D19E8374();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EndpointPath.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648740, &qword_1D1E8EBF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19E8374();
  sub_1D1E6930C();
  v15[15] = 0;
  sub_1D1E66A7C();
  sub_1D19E83C8(&qword_1EE07B258, MEMORY[0x1E69695A8]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for EndpointPath(0);
    v12 = *(v3 + *(v11 + 20));
    v15[14] = 1;
    sub_1D1E68F6C();
    v13 = *(v3 + *(v11 + 24));
    v15[13] = 2;
    sub_1D1E68F4C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t EndpointPath.hash(into:)()
{
  sub_1D1E66A7C();
  sub_1D19E83C8(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v0 + *(v1 + 20)));
  v2 = *(v0 + *(v1 + 24));
  return sub_1D1E6923C();
}

uint64_t EndpointPath.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D19E83C8(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v0 + *(v1 + 20)));
  v2 = *(v0 + *(v1 + 24));
  sub_1D1E6923C();
  return sub_1D1E6926C();
}

uint64_t EndpointPath.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1D1E66A7C();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648750, &qword_1D1E8EBF8);
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = type metadata accessor for EndpointPath(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19E8374();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v14;
  v17 = v25;
  v31 = 0;
  sub_1D19E83C8(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  v18 = v27;
  sub_1D1E68D7C();
  v19 = *(v17 + 32);
  v20 = v28;
  v28 = v4;
  v19(v16, v20, v4);
  v30 = 1;
  *(v16 + *(v11 + 20)) = sub_1D1E68DCC();
  v29 = 2;
  v21 = sub_1D1E68DAC();
  (*(v26 + 8))(v10, v18);
  *(v16 + *(v11 + 24)) = v21;
  sub_1D19E8598(v16, v24, type metadata accessor for EndpointPath);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D19E8600(v16, type metadata accessor for EndpointPath);
}

uint64_t sub_1D19E49C8(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D19E83C8(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  MEMORY[0x1D3892890](*(v1 + *(a1 + 20)));
  v3 = *(v1 + *(a1 + 24));
  sub_1D1E6923C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19E4A80(uint64_t a1, uint64_t a2)
{
  sub_1D1E66A7C();
  sub_1D19E83C8(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  MEMORY[0x1D3892890](*(v2 + *(a2 + 20)));
  v4 = *(v2 + *(a2 + 24));
  return sub_1D1E6923C();
}

uint64_t sub_1D19E4B24(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D19E83C8(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  MEMORY[0x1D3892890](*(v2 + *(a2 + 20)));
  v4 = *(v2 + *(a2 + 24));
  sub_1D1E6923C();
  return sub_1D1E6926C();
}

uint64_t ClusterPath.clusterKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ClusterPath(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t ClusterPath.clusterKind.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ClusterPath(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t ClusterPath.uuid.getter()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = [v7 hmf_zeroUUID];
  sub_1D1E66A5C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6434A8, &qword_1D1E8EC00);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D1E6F900;
  v10 = type metadata accessor for EndpointPath(0);
  v20 = *(v1 + *(v10 + 20));
  *(v9 + 32) = sub_1D1E68FAC();
  *(v9 + 40) = v11;
  v19 = *(v1 + *(v10 + 24));
  *(v9 + 48) = sub_1D1E68FAC();
  *(v9 + 56) = v12;
  v18 = dword_1D1E8F66C[*(v1 + *(type metadata accessor for ClusterPath(0) + 20))];
  *(v9 + 64) = sub_1D1E68FAC();
  *(v9 + 72) = v13;
  v14 = sub_1D1E66A2C();
  v15 = sub_1D1E67BFC();

  v16 = [v7 hmf:v14 UUIDWithNamespace:0 data:v15 salts:?];

  sub_1D1E66A5C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t ClusterPath.description.getter()
{
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](3829371, 0xE300000000000000);
  v1 = type metadata accessor for EndpointPath(0);
  v5 = *(v0 + *(v1 + 20));
  v2 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v2);

  MEMORY[0x1D3890F70](3826988, 0xE300000000000000);
  LOWORD(v5) = *(v0 + *(v1 + 24));
  v3 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v3);

  MEMORY[0x1D3890F70](3826476, 0xE300000000000000);
  LOBYTE(v5) = *(v0 + *(type metadata accessor for ClusterPath(0) + 20));
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](125, 0xE100000000000000);
  return 0;
}

uint64_t ClusterPath.init(homeID:nodeID:endpointID:clusterKind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = type metadata accessor for EndpointPath(0);
  *(a5 + *(v10 + 20)) = a2;
  *(a5 + *(v10 + 24)) = a3;
  v11 = sub_1D1E66A7C();
  (*(*(v11 - 8) + 32))(a5, a1, v11);
  result = type metadata accessor for ClusterPath(0);
  *(a5 + *(result + 20)) = v9;
  return result;
}

uint64_t ClusterPath.init(clusterPath:home:nodeID:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648758, &qword_1D1E8EC08);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v29 - v14;
  v16 = [a2 uniqueIdentifier];
  sub_1D1E66A5C();

  v17 = [a1 cluster];
  v18 = [v17 unsignedIntValue];

  ClusterKind.init(rawValue:)(v18);
  v19 = v30;
  if (v30 == 30)
  {

    (*(v8 + 8))(v11, v7);
    v20 = type metadata accessor for ClusterPath(0);
    (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  }

  else
  {
    v21 = [a1 endpoint];
    v22 = [v21 unsignedShortValue];

    v23 = type metadata accessor for EndpointPath(0);
    *&v15[*(v23 + 20)] = a3;
    *&v15[*(v23 + 24)] = v22;
    (*(v8 + 32))(v15, v11, v7);
    v20 = type metadata accessor for ClusterPath(0);
    v15[*(v20 + 20)] = v19;
    (*(*(v20 - 8) + 56))(v15, 0, 1, v20);
  }

  type metadata accessor for ClusterPath(0);
  v24 = *(v20 - 8);
  if ((*(v24 + 48))(v15, 1, v20))
  {
    sub_1D19E8474(v15);
    v25 = 1;
    v26 = v29;
  }

  else
  {
    v27 = v15;
    v26 = v29;
    sub_1D19E84DC(v27, v29, type metadata accessor for ClusterPath);
    v25 = 0;
  }

  return (*(v24 + 56))(v26, v25, 1, v20);
}

uint64_t sub_1D19E54C0()
{
  if (*v0)
  {
    result = 0x4B72657473756C63;
  }

  else
  {
    result = 0x746E696F70646E65;
  }

  *v0;
  return result;
}

uint64_t sub_1D19E550C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E696F70646E65 && a2 == 0xEC00000068746150;
  if (v6 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4B72657473756C63 && a2 == 0xEB00000000646E69)
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

uint64_t sub_1D19E55F0(uint64_t a1)
{
  v2 = sub_1D19E8544();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19E562C(uint64_t a1)
{
  v2 = sub_1D19E8544();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClusterPath.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648760, &qword_1D1E8EC10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19E8544();
  sub_1D1E6930C();
  v12[15] = 0;
  type metadata accessor for EndpointPath(0);
  sub_1D19E83C8(&qword_1EC646B18, type metadata accessor for EndpointPath);
  sub_1D1E68F1C();
  if (!v2)
  {
    v12[14] = *(v3 + *(type metadata accessor for ClusterPath(0) + 20));
    v12[13] = 1;
    sub_1D19002B4();
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ClusterPath.hash(into:)()
{
  sub_1D1E66A7C();
  sub_1D19E83C8(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v0 + *(v1 + 20)));
  v2 = *(v0 + *(v1 + 24));
  sub_1D1E6923C();
  v3 = dword_1D1E8F66C[*(v0 + *(type metadata accessor for ClusterPath(0) + 20))];
  return sub_1D1E6924C();
}

uint64_t ClusterPath.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D19E83C8(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v0 + *(v1 + 20)));
  v2 = *(v0 + *(v1 + 24));
  sub_1D1E6923C();
  v3 = dword_1D1E8F66C[*(v0 + *(type metadata accessor for ClusterPath(0) + 20))];
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t ClusterPath.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for EndpointPath(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648770, &qword_1D1E8EC18);
  v21 = *(v7 - 8);
  v22 = v7;
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for ClusterPath(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19E8544();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v14;
  v17 = v21;
  v26 = 0;
  sub_1D19E83C8(&qword_1EC646B80, type metadata accessor for EndpointPath);
  v18 = v22;
  sub_1D1E68D7C();
  sub_1D19E84DC(v23, v16, type metadata accessor for EndpointPath);
  v24 = 1;
  sub_1D1900460();
  sub_1D1E68D7C();
  (*(v17 + 8))(v10, v18);
  *(v16 + *(v11 + 20)) = v25;
  sub_1D19E8598(v16, v20, type metadata accessor for ClusterPath);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D19E8600(v16, type metadata accessor for ClusterPath);
}

uint64_t sub_1D19E5D00(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D19E83C8(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v3 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v1 + *(v3 + 20)));
  v4 = *(v1 + *(v3 + 24));
  sub_1D1E6923C();
  v5 = dword_1D1E8F66C[*(v1 + *(a1 + 20))];
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19E5DE0(uint64_t a1, uint64_t a2)
{
  sub_1D1E66A7C();
  sub_1D19E83C8(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v4 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v2 + *(v4 + 20)));
  v5 = *(v2 + *(v4 + 24));
  sub_1D1E6923C();
  v6 = dword_1D1E8F66C[*(v2 + *(a2 + 20))];
  return sub_1D1E6924C();
}

uint64_t sub_1D19E5EA8(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D19E83C8(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v4 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v2 + *(v4 + 20)));
  v5 = *(v2 + *(v4 + 24));
  sub_1D1E6923C();
  v6 = dword_1D1E8F66C[*(v2 + *(a2 + 20))];
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t AttributePath.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  MEMORY[0x1D3890F70](3826555, 0xE300000000000000);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](3825964, 0xE300000000000000);
  type metadata accessor for MTRAttributeIDType(0);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](125, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D19E6154()
{
  if (*v0)
  {
    result = 0x7475626972747461;
  }

  else
  {
    result = 0x4B72657473756C63;
  }

  *v0;
  return result;
}

uint64_t sub_1D19E619C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4B72657473756C63 && a2 == 0xEB00000000646E69;
  if (v6 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xE900000000000065)
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

uint64_t sub_1D19E6284(uint64_t a1)
{
  v2 = sub_1D19E8660();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19E62C0(uint64_t a1)
{
  v2 = sub_1D19E8660();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AttributePath.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648778, &qword_1D1E8EC20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = *(v1 + 1);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19E8660();
  sub_1D1E6930C();
  v17 = v9;
  v16 = 0;
  sub_1D19002B4();
  sub_1D1E68F1C();
  if (!v2)
  {
    v14 = v13;
    v15 = 1;
    type metadata accessor for MTRAttributeIDType(0);
    sub_1D19E83C8(&qword_1EC646CF0, type metadata accessor for MTRAttributeIDType);
    sub_1D1E68F1C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t AttributePath.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = dword_1D1E8F66C[*v0];
  sub_1D1E6924C();
  return sub_1D1E6924C();
}

uint64_t AttributePath.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1D1E6920C();
  v3 = dword_1D1E8F66C[v1];
  sub_1D1E6924C();
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t AttributePath.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648788, &qword_1D1E8EC28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19E8660();
  sub_1D1E692FC();
  if (!v2)
  {
    v17 = 0;
    sub_1D1900460();
    sub_1D1E68D7C();
    v11 = v18;
    type metadata accessor for MTRAttributeIDType(0);
    v16 = 1;
    sub_1D19E83C8(&qword_1EC646D00, type metadata accessor for MTRAttributeIDType);
    sub_1D1E68D7C();
    (*(v6 + 8))(v9, v5);
    v12 = v15;
    *a2 = v11;
    *(a2 + 4) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D19E67C4()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1D1E6920C();
  v3 = dword_1D1E8F66C[v1];
  sub_1D1E6924C();
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19E682C()
{
  v1 = *(v0 + 1);
  v2 = dword_1D1E8F66C[*v0];
  sub_1D1E6924C();
  return sub_1D1E6924C();
}

uint64_t sub_1D19E6878()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1D1E6920C();
  v3 = dword_1D1E8F66C[v1];
  sub_1D1E6924C();
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t BasicClusterPath.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  MEMORY[0x1D3890F70](3827067, 0xE300000000000000);
  v3 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v3);

  MEMORY[0x1D3890F70](3826476, 0xE300000000000000);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](125, 0xE100000000000000);
  return 0;
}

uint64_t BasicClusterPath.hash(into:)()
{
  v1 = *(v0 + 2);
  v2 = *v0;
  sub_1D1E6923C();
  v3 = dword_1D1E8F66C[v1];
  return sub_1D1E6924C();
}

uint64_t BasicClusterPath.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *v0;
  sub_1D1E6920C();
  sub_1D1E6923C();
  v3 = dword_1D1E8F66C[v1];
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19E6AE4()
{
  v1 = *(v0 + 2);
  v2 = *v0;
  sub_1D1E6920C();
  sub_1D1E6923C();
  v3 = dword_1D1E8F66C[v1];
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19E6B4C()
{
  v1 = *(v0 + 2);
  v2 = *v0;
  sub_1D1E6923C();
  v3 = dword_1D1E8F66C[v1];
  return sub_1D1E6924C();
}

uint64_t sub_1D19E6B94()
{
  v1 = *(v0 + 2);
  v2 = *v0;
  sub_1D1E6920C();
  sub_1D1E6923C();
  v3 = dword_1D1E8F66C[v1];
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t _s13HomeDataModel12EndpointPathV6homeID10Foundation4UUIDVvs_0(uint64_t a1)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MatterTilePath.nodeID.setter(uint64_t a1)
{
  result = type metadata accessor for MatterTilePath(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t MatterTilePath.endpointID.setter(int a1)
{
  result = type metadata accessor for MatterTilePath(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 2) = BYTE2(a1) & 1;
  return result;
}

uint64_t MatterTilePath.init(homeID:nodeID:endpointID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MatterTilePath(0);
  v9 = a4 + *(v8 + 24);
  v10 = sub_1D1E66A7C();
  result = (*(*(v10 - 8) + 32))(a4, a1, v10);
  *(a4 + *(v8 + 20)) = a2;
  *v9 = a3;
  *(v9 + 2) = BYTE2(a3) & 1;
  return result;
}

uint64_t MatterTilePath.init(endpointPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D1E66A7C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = type metadata accessor for EndpointPath(0);
  v6 = *(a1 + *(v5 + 20));
  v7 = *(a1 + *(v5 + 24));
  sub_1D19E8600(a1, type metadata accessor for EndpointPath);
  result = type metadata accessor for MatterTilePath(0);
  v9 = a2 + *(result + 24);
  *(a2 + *(result + 20)) = v6;
  *v9 = v7;
  *(v9 + 2) = 0;
  return result;
}

uint64_t MatterTilePath.description.getter()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_1D1E6884C();

  v15 = 3829371;
  v16 = 0xE300000000000000;
  v6 = type metadata accessor for MatterTilePath(0);
  v14 = *(v0 + *(v6 + 20));
  v7 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v7);

  MEMORY[0x1D3890F70](3826988, 0xE300000000000000);
  v8 = (v0 + *(v6 + 24));
  v9 = *v8;
  LOBYTE(v8) = *(v8 + 2);
  LOWORD(v14) = v9;
  BYTE2(v14) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648790, &qword_1D1E8EC30);
  v10 = sub_1D1E6789C();
  MEMORY[0x1D3890F70](v10);

  MEMORY[0x1D3890F70](0x3A646975752CLL, 0xE600000000000000);
  MatterTilePath.uuid.getter();
  sub_1D19E83C8(&qword_1EE07B250, MEMORY[0x1E69695A8]);
  v11 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v11);

  (*(v2 + 8))(v5, v1);
  MEMORY[0x1D3890F70](125, 0xE100000000000000);
  return v15;
}

uint64_t MatterTilePath.uuid.getter()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6434A8, &qword_1D1E8EC00);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D1E739C0;
  v7 = type metadata accessor for MatterTilePath(0);
  v25 = *(v0 + *(v7 + 20));
  *(v6 + 32) = sub_1D1E68FAC();
  *(v6 + 40) = v8;
  v9 = (v0 + *(v7 + 24));
  if ((v9[1] & 1) == 0)
  {
    v24 = *v9;
    v10 = sub_1D1E68FAC();
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      v23 = v10;
      v20 = v11;
      v21 = sub_1D177CF00((v12 > 1), v13 + 1, 1, v6);
      v11 = v20;
      v6 = v21;
      v10 = v23;
    }

    *(v6 + 16) = v13 + 1;
    v14 = v6 + 16 * v13;
    *(v14 + 32) = v10;
    *(v14 + 40) = v11;
  }

  v15 = objc_opt_self();
  v16 = sub_1D1E66A2C();
  v17 = sub_1D1E67BFC();

  v18 = [v15 hmf:v16 UUIDWithNamespace:0 data:v17 salts:?];

  sub_1D1E66A5C();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1D19E73F8(uint64_t a1)
{
  v2 = sub_1D19E875C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19E7434(uint64_t a1)
{
  v2 = sub_1D19E875C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MatterTilePath.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648798, &qword_1D1E8EC38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19E875C();
  sub_1D1E6930C();
  v17[15] = 0;
  sub_1D1E66A7C();
  sub_1D19E83C8(&qword_1EE07B258, MEMORY[0x1E69695A8]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for MatterTilePath(0);
    v12 = *(v3 + *(v11 + 20));
    v17[14] = 1;
    sub_1D1E68F6C();
    v13 = (v3 + *(v11 + 24));
    v14 = *v13;
    v15 = *(v13 + 2);
    v17[13] = 2;
    sub_1D1E68E9C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t MatterTilePath.hash(into:)()
{
  sub_1D1E66A7C();
  sub_1D19E83C8(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for MatterTilePath(0);
  MEMORY[0x1D3892890](*(v0 + *(v1 + 20)));
  v2 = (v0 + *(v1 + 24));
  if (*(v2 + 2) == 1)
  {
    return sub_1D1E6922C();
  }

  v4 = *v2;
  sub_1D1E6922C();
  return sub_1D1E6923C();
}

uint64_t MatterTilePath.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D19E83C8(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for MatterTilePath(0);
  MEMORY[0x1D3892890](*(v0 + *(v1 + 20)));
  v2 = (v0 + *(v1 + 24));
  if (*(v2 + 2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v3 = *v2;
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  return sub_1D1E6926C();
}

uint64_t MatterTilePath.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1D1E66A7C();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6487A8, &qword_1D1E8EC40);
  v28 = *(v7 - 8);
  v29 = v7;
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  v11 = type metadata accessor for MatterTilePath(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19E875C();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v14;
  v17 = v27;
  v33 = 0;
  sub_1D19E83C8(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  v18 = v29;
  sub_1D1E68D7C();
  v19 = *(v17 + 32);
  v20 = v30;
  v30 = v4;
  v19(v16, v20, v4);
  v32 = 1;
  v21 = sub_1D1E68DCC();
  v25 = v11;
  *(v16 + *(v11 + 20)) = v21;
  v31 = 2;
  v22 = sub_1D1E68CFC();
  v23 = v16 + *(v25 + 24);
  (*(v28 + 8))(v10, v18);
  *v23 = v22;
  *(v23 + 2) = BYTE2(v22) & 1;
  sub_1D19E8598(v16, v26, type metadata accessor for MatterTilePath);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D19E8600(v16, type metadata accessor for MatterTilePath);
}

uint64_t sub_1D19E7BCC(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D19E83C8(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  MEMORY[0x1D3892890](*(v1 + *(a1 + 20)));
  v3 = (v1 + *(a1 + 24));
  if (*(v3 + 2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v4 = *v3;
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D19E7CB4(uint64_t a1, uint64_t a2)
{
  sub_1D1E66A7C();
  sub_1D19E83C8(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  MEMORY[0x1D3892890](*(v2 + *(a2 + 20)));
  v4 = (v2 + *(a2 + 24));
  if (*(v4 + 2) == 1)
  {
    return sub_1D1E6922C();
  }

  v6 = *v4;
  sub_1D1E6922C();
  return sub_1D1E6923C();
}

uint64_t sub_1D19E7D88(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D19E83C8(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  MEMORY[0x1D3892890](*(v2 + *(a2 + 20)));
  v4 = (v2 + *(a2 + 24));
  if (*(v4 + 2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v5 = *v4;
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  return sub_1D1E6926C();
}

uint64_t MatterAttributeRequestPath.endpoint.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t MatterAttributeRequestPath.attribute.setter(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 8) = BYTE4(result) & 1;
  return result;
}

uint64_t MatterAttributeRequestPath.init(clusterPath:attribute:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + *(type metadata accessor for EndpointPath(0) + 24));
  v7 = *(a1 + *(type metadata accessor for ClusterPath(0) + 20));
  result = sub_1D19E8600(a1, type metadata accessor for ClusterPath);
  *a3 = v6;
  *(a3 + 2) = 0;
  *(a3 + 3) = v7;
  *(a3 + 4) = a2;
  *(a3 + 8) = BYTE4(a2) & 1;
  return result;
}

uint64_t MatterAttributeRequestPath.isFullyGeneric.getter()
{
  if (v0[2] == 1 && v0[3] == 30)
  {
    return v0[8];
  }

  else
  {
    return 0;
  }
}

uint64_t MatterAttributeRequestPath.hash(into:)()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 1);
  v3 = *(v0 + 8);
  if (*(v0 + 2) == 1)
  {
    sub_1D1E6922C();
    if (v1 != 30)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1D1E6922C();
    if (!v3)
    {
      goto LABEL_4;
    }

    return sub_1D1E6922C();
  }

  v6 = *v0;
  sub_1D1E6922C();
  sub_1D1E6923C();
  if (v1 == 30)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1D1E6922C();
  v4 = dword_1D1E8F66C[v1];
  sub_1D1E6924C();
  if (!v3)
  {
LABEL_4:
    sub_1D1E6922C();
    return sub_1D1E6924C();
  }

  return sub_1D1E6922C();
}

uint64_t MatterAttributeRequestPath.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 1);
  v5 = *(v0 + 8);
  sub_1D1E6920C();
  sub_1D1E6922C();
  if (v2 != 1)
  {
    sub_1D1E6923C();
  }

  if (v3 != 30)
  {
    sub_1D1E6922C();
    v6 = dword_1D1E8F66C[v3];
    sub_1D1E6924C();
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_7:
    sub_1D1E6922C();
    return sub_1D1E6926C();
  }

  sub_1D1E6922C();
  if (v5)
  {
    goto LABEL_7;
  }

LABEL_5:
  sub_1D1E6922C();
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19E81FC()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 1);
  v5 = *(v0 + 8);
  sub_1D1E6920C();
  sub_1D1E6922C();
  if (v2 != 1)
  {
    sub_1D1E6923C();
  }

  if (v3 != 30)
  {
    sub_1D1E6922C();
    v6 = dword_1D1E8F66C[v3];
    sub_1D1E6924C();
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_7:
    sub_1D1E6922C();
    return sub_1D1E6926C();
  }

  sub_1D1E6922C();
  if (v5)
  {
    goto LABEL_7;
  }

LABEL_5:
  sub_1D1E6922C();
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

BOOL _s13HomeDataModel11ClusterPathV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for EndpointPath(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)) || *(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)))
  {
    return 0;
  }

  v5 = type metadata accessor for ClusterPath(0);
  return dword_1D1E8F66C[*(a1 + *(v5 + 20))] == dword_1D1E8F66C[*(a2 + *(v5 + 20))];
}

unint64_t sub_1D19E8374()
{
  result = qword_1EC648748;
  if (!qword_1EC648748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648748);
  }

  return result;
}

uint64_t sub_1D19E83C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D19E8410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndpointPath(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D19E8474(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648758, &qword_1D1E8EC08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D19E84DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D19E8544()
{
  result = qword_1EC648768;
  if (!qword_1EC648768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648768);
  }

  return result;
}

uint64_t sub_1D19E8598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D19E8600(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D19E8660()
{
  result = qword_1EC648780;
  if (!qword_1EC648780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648780);
  }

  return result;
}

uint64_t _s13HomeDataModel14MatterTilePathV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MatterTilePath(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 2);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 2);
  if (v7)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
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

unint64_t sub_1D19E875C()
{
  result = qword_1EC6487A0;
  if (!qword_1EC6487A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6487A0);
  }

  return result;
}

BOOL _s13HomeDataModel26MatterAttributeRequestPathV2eeoiySbAC_ACtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 3);
  v3 = *(a2 + 2);
  v4 = *(a2 + 3);
  v5 = *(a2 + 8);
  if (a1[1])
  {
    if (!*(a2 + 2))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (v2 == 30)
  {
    if (v4 != 30)
    {
      return 0;
    }
  }

  else if (v4 == 30 || dword_1D1E8F66C[v2] != dword_1D1E8F66C[v4])
  {
    return 0;
  }

  if ((a1[4] & 1) == 0)
  {
    if (*(a1 + 1) == *(a2 + 1))
    {
      v7 = *(a2 + 8);
    }

    else
    {
      v7 = 1;
    }

    return (v7 & 1) == 0;
  }

  return (a2[4] & 1) != 0;
}

uint64_t sub_1D19E88DC(uint64_t a1)
{
  result = sub_1D19E83C8(&qword_1EC6487C0, type metadata accessor for ClusterPath);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D19E8938()
{
  result = qword_1EC6487C8;
  if (!qword_1EC6487C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6487C8);
  }

  return result;
}

unint64_t sub_1D19E8990()
{
  result = qword_1EC6487D0;
  if (!qword_1EC6487D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6487D0);
  }

  return result;
}

unint64_t sub_1D19E89E4(uint64_t a1)
{
  result = sub_1D19E8A0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D19E8A0C()
{
  result = qword_1EC6487D8;
  if (!qword_1EC6487D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6487D8);
  }

  return result;
}

unint64_t sub_1D19E8AAC()
{
  result = qword_1EC6487E8;
  if (!qword_1EC6487E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6487E8);
  }

  return result;
}

uint64_t sub_1D19E8B28()
{
  result = sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D19E8BD4()
{
  result = type metadata accessor for EndpointPath(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AttributePath(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE3 && a1[8])
  {
    return (*a1 + 227);
  }

  v3 = *a1;
  v4 = v3 >= 0x1E;
  v5 = v3 - 30;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AttributePath(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE2)
  {
    *result = a2 - 227;
    if (a3 >= 0xE3)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE3)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 29;
    }
  }

  return result;
}

uint64_t __swift_memcpy3_2(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BasicClusterPath(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE3)
  {
    if ((a2 + 33554205) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776989;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776989;
      }
    }
  }

  v4 = *(a1 + 2);
  v5 = v4 >= 0x1E;
  v6 = v4 - 30;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for BasicClusterPath(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554205) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xE2)
  {
    v3 = 0;
  }

  if (a2 > 0xE2)
  {
    *result = a2 - 227;
    *(result + 2) = (a2 - 227) >> 16;
    if (v3)
    {
      v4 = ((a2 - 227) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = a2 + 29;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1D19E8F34()
{
  sub_1D1E66A7C();
  if (v0 <= 0x3F)
  {
    sub_1D19E8FC0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D19E8FC0()
{
  if (!qword_1EE07D1D0)
  {
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07D1D0);
    }
  }
}

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MatterAttributeRequestPath(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE2 && *(a1 + 9))
  {
    return (*a1 + 226);
  }

  v3 = *(a1 + 3);
  if (v3 <= 0x1E)
  {
    v4 = 30;
  }

  else
  {
    v4 = *(a1 + 3);
  }

  v5 = v4 - 31;
  if (v3 < 0x1E)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for MatterAttributeRequestPath(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE1)
  {
    *(result + 8) = 0;
    *result = a2 - 226;
    if (a3 >= 0xE2)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE2)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 3) = a2 + 30;
    }
  }

  return result;
}

unint64_t sub_1D19E9110()
{
  result = qword_1EC6487F0;
  if (!qword_1EC6487F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6487F0);
  }

  return result;
}

unint64_t sub_1D19E9168()
{
  result = qword_1EC6487F8;
  if (!qword_1EC6487F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6487F8);
  }

  return result;
}

unint64_t sub_1D19E91C0()
{
  result = qword_1EC648800;
  if (!qword_1EC648800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648800);
  }

  return result;
}

unint64_t sub_1D19E9218()
{
  result = qword_1EC648808;
  if (!qword_1EC648808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648808);
  }

  return result;
}

unint64_t sub_1D19E9270()
{
  result = qword_1EC648810;
  if (!qword_1EC648810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648810);
  }

  return result;
}

unint64_t sub_1D19E92C8()
{
  result = qword_1EC648818;
  if (!qword_1EC648818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648818);
  }

  return result;
}

unint64_t sub_1D19E9320()
{
  result = qword_1EC648820;
  if (!qword_1EC648820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648820);
  }

  return result;
}

unint64_t sub_1D19E9378()
{
  result = qword_1EC648828;
  if (!qword_1EC648828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648828);
  }

  return result;
}

unint64_t sub_1D19E93D0()
{
  result = qword_1EC648830;
  if (!qword_1EC648830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648830);
  }

  return result;
}

unint64_t sub_1D19E9428()
{
  result = qword_1EC648838;
  if (!qword_1EC648838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648838);
  }

  return result;
}

unint64_t sub_1D19E9480()
{
  result = qword_1EC648840;
  if (!qword_1EC648840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648840);
  }

  return result;
}

unint64_t sub_1D19E94D8()
{
  result = qword_1EC648848;
  if (!qword_1EC648848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648848);
  }

  return result;
}

uint64_t sub_1D19E952C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656D6F68 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x444965646F6ELL && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xEA00000000004449)
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

void StaticRVCClusterGroup.OperationalState.init(rawValue:for:)(uint64_t a1@<X0>, _BYTE *a2@<X1>, __int16 *a3@<X8>)
{
  v4 = a1;
  if (a1 >= 4u)
  {
    v5 = a1;
    if (*a2 != 24 || (StaticRVCClusterGroup.OperationalState.RVC.init(rawValue:)(a1, &v23), v23 == 7))
    {
      if (v5 > 0x3Fu)
      {
        if ((v5 & 0x80) != 0)
        {
          if (v5 <= 0xBFu)
          {
            v4 = v5 | 0x200;
            goto LABEL_22;
          }

          if (qword_1EE07A0A8 != -1)
          {
            swift_once();
          }

          v19 = sub_1D1E6709C();
          __swift_project_value_buffer(v19, qword_1EE07A0B0);
          v7 = sub_1D1E6707C();
          v8 = sub_1D1E6833C();
          if (!os_log_type_enabled(v7, v8))
          {
            goto LABEL_21;
          }

          v9 = swift_slowAlloc();
          v10 = swift_slowAlloc();
          v23 = v10;
          *v9 = 16908802;
          *(v9 + 4) = v5;
          *(v9 + 5) = 2082;
          v20 = sub_1D1E6789C();
          v22 = sub_1D1B1312C(v20, v21, &v23);

          *(v9 + 7) = v22;
          v14 = "Encountered a value out of range for Operational State: '%{public}hhu for cluster %{public}s";
        }

        else
        {
          if (qword_1EE07A0A8 != -1)
          {
            swift_once();
          }

          v15 = sub_1D1E6709C();
          __swift_project_value_buffer(v15, qword_1EE07A0B0);
          v7 = sub_1D1E6707C();
          v8 = sub_1D1E6833C();
          if (!os_log_type_enabled(v7, v8))
          {
            goto LABEL_21;
          }

          v9 = swift_slowAlloc();
          v10 = swift_slowAlloc();
          v23 = v10;
          *v9 = 16908802;
          *(v9 + 4) = v5;
          *(v9 + 5) = 2082;
          v16 = sub_1D1E6789C();
          v18 = sub_1D1B1312C(v16, v17, &v23);

          *(v9 + 7) = v18;
          v14 = "Encountered an unknown value in the range for Cluster Operational States: '%{public}hhu for cluster %{public}s";
        }
      }

      else
      {
        if (qword_1EE07A0A8 != -1)
        {
          swift_once();
        }

        v6 = sub_1D1E6709C();
        __swift_project_value_buffer(v6, qword_1EE07A0B0);
        v7 = sub_1D1E6707C();
        v8 = sub_1D1E6833C();
        if (!os_log_type_enabled(v7, v8))
        {
          goto LABEL_21;
        }

        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v23 = v10;
        *v9 = 16908802;
        *(v9 + 4) = v5;
        *(v9 + 5) = 2080;
        v11 = sub_1D1E6789C();
        v13 = sub_1D1B1312C(v11, v12, &v23);

        *(v9 + 7) = v13;
        v14 = "Encountered an unknown value in the range for General Operational States: '%{public}hhu for cluster %s";
      }

      _os_log_impl(&dword_1D16EC000, v7, v8, v14, v9, 0xFu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1D3893640](v10, -1, -1);
      MEMORY[0x1D3893640](v9, -1, -1);
LABEL_21:

      v4 = -256;
      goto LABEL_22;
    }

    v4 = v23 | 0x100;
  }

LABEL_22:
  *a3 = v4;
}

uint64_t StaticRVCClusterGroup.OperationalState.rawValue.getter()
{
  if (v0[1] == 1)
  {
    return *v0 + 64;
  }

  else
  {
    return *v0;
  }
}

HomeDataModel::ModeClusterSemanticTag::Common_optional ModeClusterSemanticTag.init(rawValue:for:)@<W0>(Swift::UInt16 a1@<W0>, unsigned __int8 *a2@<X1>, char *a3@<X8>)
{
  v5 = *a2;
  result.value = ModeClusterSemanticTag.Common.init(rawValue:)(a1).value;
  v7 = v12;
  v8 = a1 | 0x40;
  if ((a1 - 0x4000) >= 3u)
  {
    v8 = -16;
  }

  v9 = a1 | 0x80;
  if ((a1 & 0xFFFC) != 0x4000)
  {
    v9 = -16;
  }

  if (v5 != 25)
  {
    v8 = v9;
  }

  if (v5 - 27 >= 3)
  {
    v10 = v8;
  }

  else
  {
    v10 = -16;
  }

  if (v5 >= 0x19)
  {
    v11 = v10;
  }

  else
  {
    v11 = -16;
  }

  if (v12 == 10)
  {
    v7 = v11;
  }

  *a3 = v7;
  return result;
}

HomeDataModel::ModeClusterSemanticTag::Common_optional __swiftcall ModeClusterSemanticTag.Common.init(rawValue:)(Swift::UInt16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 0xAu)
  {
    v2 = 10;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1D19E9AFC()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E6923C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19E9B70()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E6923C();
  return sub_1D1E6926C();
}

HomeDataModel::ModeClusterSemanticTag::RVCRun_optional __swiftcall ModeClusterSemanticTag.RVCRun.init(rawValue:)(Swift::UInt16 rawValue)
{
  v2 = rawValue;
  if (rawValue - 0x4000 >= 3)
  {
    v2 = 3;
  }

  *v1 = v2;
  return rawValue;
}

HomeDataModel::ModeClusterSemanticTag::RVCClean_optional __swiftcall ModeClusterSemanticTag.RVCClean.init(rawValue:)(Swift::UInt16 rawValue)
{
  if ((rawValue & 0xFFFC) == 0x4000)
  {
    v2 = rawValue;
  }

  else
  {
    v2 = 4;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1D19E9D70()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E6923C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19E9DB8()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E6923C();
  return sub_1D1E6926C();
}

uint64_t ModeClusterSemanticTag.rawValue.getter()
{
  v1 = *v0;
  if (v1 >> 6)
  {
    return v1 & 0x3F | 0x4000;
  }

  else
  {
    return *v0;
  }
}

uint64_t ModeClusterSemanticTag.hash(into:)()
{
  sub_1D1E6923C();

  return sub_1D1E678EC();
}

uint64_t ModeClusterSemanticTag.description.getter()
{
  v1 = *v0;
  if (v1 >> 6)
  {
    if (v1 >> 6 == 1)
    {
      v2 = v1 & 0x3F;
      if (v2)
      {
        if (v2 == 1)
        {
          return 0x632E6E7552637672;
        }

        else
        {
          return 0x6D2E6E7552637672;
        }
      }

      else
      {
        return 0x692E6E7552637672;
      }
    }

    else
    {
      v7 = 0x6E61656C43637672;
      v8 = v1 & 0x3F;
      v9 = 0x68546D7575636176;
      if (v8 == 2)
      {
        v9 = 0x6E61656C43637672;
      }

      if (!v8)
      {
        v7 = 0xD000000000000012;
      }

      if (v8 <= 1)
      {
        return v7;
      }

      else
      {
        return v9;
      }
    }
  }

  else if (*v0 > 4u)
  {
    v10 = 0x6D2E6E6F6D6D6F63;
    v11 = 0x6E2E6E6F6D6D6F63;
    if (v1 != 8)
    {
      v11 = 0x642E6E6F6D6D6F63;
    }

    if (v1 != 7)
    {
      v10 = v11;
    }

    v12 = 0x762E6E6F6D6D6F63;
    if (v1 != 5)
    {
      v12 = 0x6D2E6E6F6D6D6F63;
    }

    if (*v0 <= 6u)
    {
      return v12;
    }

    else
    {
      return v10;
    }
  }

  else
  {
    v4 = 0x612E6E6F6D6D6F63;
    v5 = 0x712E6E6F6D6D6F63;
    v6 = 0x6C2E6E6F6D6D6F63;
    if (v1 != 3)
    {
      v6 = 0xD000000000000010;
    }

    if (v1 != 2)
    {
      v5 = v6;
    }

    if (*v0)
    {
      v4 = 0x712E6E6F6D6D6F63;
    }

    if (*v0 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }
}

uint64_t sub_1D19EA22C()
{
  v1 = 0x6E7552637672;
  if (*v0 != 1)
  {
    v1 = 0x6E61656C43637672;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6D6D6F63;
  }
}

uint64_t sub_1D19EA280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D19ED638(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D19EA2A8(uint64_t a1)
{
  v2 = sub_1D19EC328();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19EA2E4(uint64_t a1)
{
  v2 = sub_1D19EC328();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19EA320(uint64_t a1)
{
  v2 = sub_1D19EC4CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19EA35C(uint64_t a1)
{
  v2 = sub_1D19EC4CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19EA398(uint64_t a1)
{
  v2 = sub_1D19EC37C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19EA3D4(uint64_t a1)
{
  v2 = sub_1D19EC37C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19EA410(uint64_t a1)
{
  v2 = sub_1D19EC424();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19EA44C(uint64_t a1)
{
  v2 = sub_1D19EC424();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ModeClusterSemanticTag.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648850, &qword_1D1E8F6F0);
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648858, &qword_1D1E8F6F8);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648860, &qword_1D1E8F700);
  v28 = *(v11 - 8);
  v12 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648868, &qword_1D1E8F708);
  v15 = *(v34 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v18 = &v28 - v17;
  v19 = *v2;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19EC328();
  sub_1D1E6930C();
  if (v19 >> 6)
  {
    v21 = v19 & 0x3F;
    if (v19 >> 6 == 1)
    {
      v38 = 1;
      sub_1D19EC424();
      v22 = v34;
      sub_1D1E68DFC();
      v37 = v21;
      sub_1D19EC478();
      v23 = v30;
      sub_1D1E68F1C();
      (*(v29 + 8))(v10, v23);
    }

    else
    {
      v40 = 2;
      sub_1D19EC37C();
      v26 = v31;
      v22 = v34;
      sub_1D1E68DFC();
      v39 = v21;
      sub_1D19EC3D0();
      v27 = v33;
      sub_1D1E68F1C();
      (*(v32 + 8))(v26, v27);
    }

    return (*(v15 + 8))(v18, v22);
  }

  else
  {
    v36 = 0;
    sub_1D19EC4CC();
    v24 = v34;
    sub_1D1E68DFC();
    v35 = v19;
    sub_1D19EC520();
    sub_1D1E68F1C();
    (*(v28 + 8))(v14, v11);
    return (*(v15 + 8))(v18, v24);
  }
}

uint64_t ModeClusterSemanticTag.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E6923C();
  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t ModeClusterSemanticTag.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6488A8, &qword_1D1E8F710);
  v39 = *(v36 - 8);
  v3 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v41 = &v35 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6488B0, &qword_1D1E8F718);
  v40 = *(v38 - 8);
  v5 = *(v40 + 8);
  MEMORY[0x1EEE9AC00](v38);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6488B8, &qword_1D1E8F720);
  v37 = *(v8 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6488C0, &unk_1D1E8F728);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D19EC328();
  v19 = v43;
  sub_1D1E692FC();
  if (!v19)
  {
    v43 = v13;
    v21 = v41;
    v20 = v42;
    v22 = sub_1D1E68DDC();
    v23 = (2 * *(v22 + 16)) | 1;
    v45 = v22;
    v46 = v22 + 32;
    v47 = 0;
    v48 = v23;
    v24 = sub_1D18085C8();
    if (v24 == 3 || v47 != v48 >> 1)
    {
      v26 = sub_1D1E688EC();
      swift_allocError();
      v27 = v16;
      v29 = v28;
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
      *v29 = &type metadata for ModeClusterSemanticTag;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v26 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
      (*(v43 + 8))(v27, v12);
      swift_unknownObjectRelease();
    }

    else if (v24)
    {
      if (v24 == 1)
      {
        v49 = 1;
        sub_1D19EC424();
        sub_1D1E68C4C();
        sub_1D19EC5C8();
        v25 = v38;
        sub_1D1E68D7C();
        (*(v40 + 1))(v7, v25);
        (*(v43 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v34 = v49 | 0x40;
      }

      else
      {
        v49 = 2;
        sub_1D19EC37C();
        sub_1D1E68C4C();
        v40 = v16;
        sub_1D19EC574();
        v32 = v36;
        sub_1D1E68D7C();
        v33 = v43;
        (*(v39 + 8))(v21, v32);
        (*(v33 + 8))(v40, v12);
        swift_unknownObjectRelease();
        v34 = v49 | 0x80;
      }

      *v20 = v34;
    }

    else
    {
      v49 = 0;
      sub_1D19EC4CC();
      sub_1D1E68C4C();
      sub_1D19EC61C();
      sub_1D1E68D7C();
      (*(v37 + 8))(v11, v8);
      (*(v43 + 8))(v16, v12);
      swift_unknownObjectRelease();
      *v20 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t sub_1D19EB024()
{
  sub_1D1E6923C();

  return sub_1D1E678EC();
}

uint64_t sub_1D19EB0D8()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E6923C();
  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t StaticRVCClusterGroup.OperationalState.Common.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result;
  if ((result & 0xFC) != 0)
  {
    v2 = 4;
  }

  *a2 = v2;
  return result;
}

uint64_t StaticRVCClusterGroup.OperationalState.RVC.init(rawValue:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = (result - 64);
  if (v2 >= 7)
  {
    LOBYTE(v2) = 7;
  }

  *a2 = v2;
  return result;
}

uint64_t StaticRVCClusterGroup.OperationalState.hash(into:)()
{
  v1 = *v0;
  v0[1];
  sub_1D1E6922C();

  return sub_1D1E678EC();
}

uint64_t sub_1D19EB41C(uint64_t a1)
{
  v2 = sub_1D19EC670();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19EB458(uint64_t a1)
{
  v2 = sub_1D19EC670();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19EB494(uint64_t a1)
{
  v2 = sub_1D19EC7C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19EB4D0(uint64_t a1)
{
  v2 = sub_1D19EC7C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19EB50C(uint64_t a1)
{
  v2 = sub_1D19EC718();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19EB548(uint64_t a1)
{
  v2 = sub_1D19EC718();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19EB584(uint64_t a1)
{
  v2 = sub_1D19EC6C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19EB5C0(uint64_t a1)
{
  v2 = sub_1D19EC6C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticRVCClusterGroup.OperationalState.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6488E0, &qword_1D1E8F738);
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6488E8, &qword_1D1E8F740);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6488F0, &qword_1D1E8F748);
  v28 = *(v11 - 8);
  v12 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - v13;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6488F8, &qword_1D1E8F750);
  v15 = *(v35 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v18 = &v27 - v17;
  v34 = *v2;
  v19 = v2[1];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19EC670();
  sub_1D1E6930C();
  if (v19)
  {
    if (v19 == 1)
    {
      v39 = 1;
      sub_1D19EC718();
      v21 = v35;
      sub_1D1E68DFC();
      v38 = v34;
      sub_1D19EC76C();
      v22 = v30;
      sub_1D1E68F1C();
      v23 = *(v29 + 8);
      v24 = v10;
    }

    else
    {
      v40 = 2;
      sub_1D19EC6C4();
      v25 = v31;
      v21 = v35;
      sub_1D1E68DFC();
      v22 = v33;
      sub_1D1E68F3C();
      v23 = *(v32 + 8);
      v24 = v25;
    }

    v23(v24, v22);
  }

  else
  {
    v37 = 0;
    sub_1D19EC7C0();
    v21 = v35;
    sub_1D1E68DFC();
    v36 = v34;
    sub_1D19EC814();
    sub_1D1E68F1C();
    (*(v28 + 8))(v14, v11);
  }

  return (*(v15 + 8))(v18, v21);
}

uint64_t StaticRVCClusterGroup.OperationalState.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D1E6920C();
  sub_1D1E6922C();
  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t StaticRVCClusterGroup.OperationalState.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v53 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648930, &qword_1D1E8F758);
  v50 = *(v52 - 8);
  v3 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648938, &qword_1D1E8F760);
  v6 = *(v5 - 8);
  v48 = v5;
  v49 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648940, &qword_1D1E8F768);
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648948, &qword_1D1E8F770);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - v17;
  v19 = a1[3];
  v20 = a1[4];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D19EC670();
  v21 = v54;
  sub_1D1E692FC();
  if (!v21)
  {
    v45 = v10;
    v46 = 0;
    v22 = v51;
    v23 = v52;
    v54 = v15;
    v24 = v53;
    v25 = v18;
    v26 = sub_1D1E68DDC();
    v27 = (2 * *(v26 + 16)) | 1;
    v56 = v26;
    v57 = v26 + 32;
    v58 = 0;
    v59 = v27;
    v28 = sub_1D18085C8();
    if (v28 == 3 || v58 != v59 >> 1)
    {
      v31 = sub_1D1E688EC();
      swift_allocError();
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
      *v33 = &type metadata for StaticRVCClusterGroup.OperationalState;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
      swift_willThrow();
      (*(v54 + 8))(v18, v14);
    }

    else
    {
      v60 = v28;
      if (v28)
      {
        if (v28 == 1)
        {
          v61 = 1;
          sub_1D19EC718();
          v29 = v46;
          sub_1D1E68C4C();
          if (!v29)
          {
            sub_1D19EC868();
            v30 = v48;
            sub_1D1E68D7C();
            (*(v49 + 8))(v9, v30);
            (*(v54 + 8))(v18, v14);
            swift_unknownObjectRelease();
            v43 = v61;
LABEL_17:
            *v24 = v43;
            v24[1] = v60;
            return __swift_destroy_boxed_opaque_existential_1(v55);
          }

          (*(v54 + 8))(v18, v14);
          goto LABEL_10;
        }

        v61 = 2;
        sub_1D19EC6C4();
        v37 = v18;
        v40 = v46;
        sub_1D1E68C4C();
        if (!v40)
        {
          v41 = sub_1D1E68D9C();
          v42 = v54;
          v43 = v41;
          (*(v50 + 8))(v22, v23);
          (*(v42 + 8))(v18, v14);
          swift_unknownObjectRelease();
          goto LABEL_17;
        }
      }

      else
      {
        v61 = 0;
        sub_1D19EC7C0();
        v36 = v13;
        v37 = v25;
        v38 = v46;
        sub_1D1E68C4C();
        if (!v38)
        {
          sub_1D19EC8BC();
          v39 = v45;
          sub_1D1E68D7C();
          (*(v47 + 8))(v36, v39);
          (*(v54 + 8))(v25, v14);
          swift_unknownObjectRelease();
          v43 = v61;
          goto LABEL_17;
        }
      }

      (*(v54 + 8))(v37, v14);
    }

LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v55);
}

uint64_t sub_1D19EC164()
{
  v1 = *v0;
  v0[1];
  sub_1D1E6922C();

  return sub_1D1E678EC();
}

uint64_t sub_1D19EC1FC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D1E6920C();
  sub_1D1E6922C();
  sub_1D1E678EC();
  return sub_1D1E6926C();
}

BOOL _s13HomeDataModel22ModeClusterSemanticTagO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 6;
  v6 = v3 < 0x40 && v2 == v3;
  v7 = v3 & 0xC0;
  v8 = v3 ^ v2;
  v9 = (v8 & 0x3F) == 0;
  if (v7 != 64)
  {
    v9 = 0;
  }

  v10 = (v8 & 0x3F) == 0;
  if (v7 != 128)
  {
    v10 = 0;
  }

  if (v4 == 1)
  {
    v10 = v9;
  }

  if (v4)
  {
    return v10;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_1D19EC328()
{
  result = qword_1EC648870;
  if (!qword_1EC648870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648870);
  }

  return result;
}

unint64_t sub_1D19EC37C()
{
  result = qword_1EC648878;
  if (!qword_1EC648878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648878);
  }

  return result;
}

unint64_t sub_1D19EC3D0()
{
  result = qword_1EC648880;
  if (!qword_1EC648880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648880);
  }

  return result;
}

unint64_t sub_1D19EC424()
{
  result = qword_1EC648888;
  if (!qword_1EC648888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648888);
  }

  return result;
}

unint64_t sub_1D19EC478()
{
  result = qword_1EC648890;
  if (!qword_1EC648890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648890);
  }

  return result;
}

unint64_t sub_1D19EC4CC()
{
  result = qword_1EC648898;
  if (!qword_1EC648898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648898);
  }

  return result;
}

unint64_t sub_1D19EC520()
{
  result = qword_1EC6488A0;
  if (!qword_1EC6488A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6488A0);
  }

  return result;
}

unint64_t sub_1D19EC574()
{
  result = qword_1EC6488C8;
  if (!qword_1EC6488C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6488C8);
  }

  return result;
}

unint64_t sub_1D19EC5C8()
{
  result = qword_1EC6488D0;
  if (!qword_1EC6488D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6488D0);
  }

  return result;
}

unint64_t sub_1D19EC61C()
{
  result = qword_1EC6488D8;
  if (!qword_1EC6488D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6488D8);
  }

  return result;
}

unint64_t sub_1D19EC670()
{
  result = qword_1EC648900;
  if (!qword_1EC648900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648900);
  }

  return result;
}

unint64_t sub_1D19EC6C4()
{
  result = qword_1EC648908;
  if (!qword_1EC648908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648908);
  }

  return result;
}

unint64_t sub_1D19EC718()
{
  result = qword_1EC648910;
  if (!qword_1EC648910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648910);
  }

  return result;
}

unint64_t sub_1D19EC76C()
{
  result = qword_1EC648918;
  if (!qword_1EC648918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648918);
  }

  return result;
}

unint64_t sub_1D19EC7C0()
{
  result = qword_1EC648920;
  if (!qword_1EC648920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648920);
  }

  return result;
}

unint64_t sub_1D19EC814()
{
  result = qword_1EC648928;
  if (!qword_1EC648928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648928);
  }

  return result;
}

unint64_t sub_1D19EC868()
{
  result = qword_1EC648950;
  if (!qword_1EC648950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648950);
  }

  return result;
}

unint64_t sub_1D19EC8BC()
{
  result = qword_1EC648958;
  if (!qword_1EC648958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648958);
  }

  return result;
}

unint64_t sub_1D19EC914()
{
  result = qword_1EC648960;
  if (!qword_1EC648960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648960);
  }

  return result;
}

unint64_t sub_1D19EC96C()
{
  result = qword_1EC648968;
  if (!qword_1EC648968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648968);
  }

  return result;
}

unint64_t sub_1D19EC9C4()
{
  result = qword_1EC648970;
  if (!qword_1EC648970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648970);
  }

  return result;
}

unint64_t sub_1D19ECA20()
{
  result = qword_1EC648978;
  if (!qword_1EC648978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648978);
  }

  return result;
}

unint64_t sub_1D19ECA78()
{
  result = qword_1EC648980;
  if (!qword_1EC648980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648980);
  }

  return result;
}

unint64_t sub_1D19ECAD0()
{
  result = qword_1EC648988;
  if (!qword_1EC648988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648988);
  }

  return result;
}

unint64_t sub_1D19ECB28()
{
  result = qword_1EC648990;
  if (!qword_1EC648990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648990);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ModeClusterSemanticTag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE)
  {
    goto LABEL_17;
  }

  if (a2 + 242 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 242) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 242;
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

      return (*a1 | (v4 << 8)) - 242;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 242;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 2) & 0xC | (*a1 >> 6)) ^ 0xF;
  if (v6 >= 0xD)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for ModeClusterSemanticTag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 242 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 242) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE)
  {
    v4 = 0;
  }

  if (a2 > 0xD)
  {
    v5 = ((a2 - 14) >> 8) + 1;
    *result = a2 - 14;
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
    *result = 16 * (((-a2 >> 2) & 3) - 4 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D19ECDFC()
{
  result = qword_1EC648998;
  if (!qword_1EC648998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648998);
  }

  return result;
}

unint64_t sub_1D19ECE54()
{
  result = qword_1EC6489A0;
  if (!qword_1EC6489A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6489A0);
  }

  return result;
}

unint64_t sub_1D19ECEAC()
{
  result = qword_1EC6489A8;
  if (!qword_1EC6489A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6489A8);
  }

  return result;
}

unint64_t sub_1D19ECF04()
{
  result = qword_1EC6489B0;
  if (!qword_1EC6489B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6489B0);
  }

  return result;
}

unint64_t sub_1D19ECF5C()
{
  result = qword_1EC6489B8;
  if (!qword_1EC6489B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6489B8);
  }

  return result;
}

unint64_t sub_1D19ECFB4()
{
  result = qword_1EC6489C0;
  if (!qword_1EC6489C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6489C0);
  }

  return result;
}

unint64_t sub_1D19ED00C()
{
  result = qword_1EC6489C8;
  if (!qword_1EC6489C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6489C8);
  }

  return result;
}

unint64_t sub_1D19ED064()
{
  result = qword_1EC6489D0;
  if (!qword_1EC6489D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6489D0);
  }

  return result;
}

unint64_t sub_1D19ED0BC()
{
  result = qword_1EC6489D8;
  if (!qword_1EC6489D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6489D8);
  }

  return result;
}

unint64_t sub_1D19ED114()
{
  result = qword_1EC6489E0;
  if (!qword_1EC6489E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6489E0);
  }

  return result;
}

unint64_t sub_1D19ED16C()
{
  result = qword_1EC6489E8;
  if (!qword_1EC6489E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6489E8);
  }

  return result;
}

unint64_t sub_1D19ED1C4()
{
  result = qword_1EC6489F0;
  if (!qword_1EC6489F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6489F0);
  }

  return result;
}

unint64_t sub_1D19ED21C()
{
  result = qword_1EC6489F8;
  if (!qword_1EC6489F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6489F8);
  }

  return result;
}

unint64_t sub_1D19ED274()
{
  result = qword_1EC648A00;
  if (!qword_1EC648A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648A00);
  }

  return result;
}

unint64_t sub_1D19ED2CC()
{
  result = qword_1EC648A08;
  if (!qword_1EC648A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648A08);
  }

  return result;
}

unint64_t sub_1D19ED324()
{
  result = qword_1EC648A10;
  if (!qword_1EC648A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648A10);
  }

  return result;
}

unint64_t sub_1D19ED37C()
{
  result = qword_1EC648A18;
  if (!qword_1EC648A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648A18);
  }

  return result;
}

unint64_t sub_1D19ED3D4()
{
  result = qword_1EC648A20;
  if (!qword_1EC648A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648A20);
  }

  return result;
}

unint64_t sub_1D19ED42C()
{
  result = qword_1EC648A28;
  if (!qword_1EC648A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648A28);
  }

  return result;
}

unint64_t sub_1D19ED484()
{
  result = qword_1EC648A30;
  if (!qword_1EC648A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648A30);
  }

  return result;
}

unint64_t sub_1D19ED4DC()
{
  result = qword_1EC648A38;
  if (!qword_1EC648A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648A38);
  }

  return result;
}

unint64_t sub_1D19ED534()
{
  result = qword_1EC648A40;
  if (!qword_1EC648A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648A40);
  }

  return result;
}

unint64_t sub_1D19ED58C()
{
  result = qword_1EC648A48;
  if (!qword_1EC648A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648A48);
  }

  return result;
}

unint64_t sub_1D19ED5E4()
{
  result = qword_1EC648A50;
  if (!qword_1EC648A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648A50);
  }

  return result;
}

uint64_t sub_1D19ED638(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6D6D6F63 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E7552637672 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E61656C43637672 && a2 == 0xE800000000000000)
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

unint64_t sub_1D19ED748()
{
  result = qword_1EC648A58;
  if (!qword_1EC648A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648A58);
  }

  return result;
}

unint64_t sub_1D19ED79C()
{
  result = qword_1EC648A60;
  if (!qword_1EC648A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648A60);
  }

  return result;
}

unint64_t sub_1D19ED7F0()
{
  result = qword_1EC648A68;
  if (!qword_1EC648A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648A68);
  }

  return result;
}

unint64_t sub_1D19ED844()
{
  result = qword_1EC648A70;
  if (!qword_1EC648A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648A70);
  }

  return result;
}

unint64_t sub_1D19ED898()
{
  result = qword_1EC648A78;
  if (!qword_1EC648A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648A78);
  }

  return result;
}

void sub_1D19ED910(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = sub_1D1E675FC();
  v8 = a1;
  sub_1D19F4834(v7, v9);
  swift_beginAccess();
  sub_1D1B0DAF8(v9, a5);
  swift_endAccess();
}

void sub_1D19EDB28(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D19EDB70(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13HomeDataModel21MockThermostatCluster_lastKnownEndpointID;
  *v2 = result;
  *(v2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_1D19EDBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = v4;
  v5[9] = a4;
  v5[7] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D19EDBC4, 0, 0);
}

uint64_t sub_1D19EDBC4()
{
  v1 = v0[8];
  v2 = v0[9];
  sub_1D17419CC(v0[7], (v0 + 2));
  sub_1D19EDF88();
  swift_allocError();
  v4 = v3;
  v5 = swift_unknownObjectRetain();
  sub_1D19F67F8(v5, v2, v0 + 2, v4);
  swift_willThrow();
  v6 = v0[1];

  return v6();
}

uint64_t ThermostatPreset.copyApplying(coolingSetpoint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v6 = *(v2 + 24);
  v5 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *(v2 + 48);
  v9 = *(v2 + 56);
  *a2 = a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v6;
  *(a2 + 32) = v5;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  sub_1D1771B38(v6, v5);
}

id sub_1D19EDD80(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1D19EDE48(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  swift_beginAccess();
  v5 = *(v3 + v4);
}

void sub_1D19EDEEC(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D19EDF34(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13HomeDataModel33MockOperationalCredentialsCluster_lastKnownEndpointID;
  *v2 = result;
  *(v2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_1D19EDF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = v4;
  v5[9] = a4;
  v5[7] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D19EDFE0, 0, 0);
}

unint64_t sub_1D19EDF88()
{
  result = qword_1EC648AE0;
  if (!qword_1EC648AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648AE0);
  }

  return result;
}

uint64_t sub_1D19EDFE4()
{
  v1 = OBJC_IVAR____TtC13HomeDataModel21MockRVCRunModeCluster_attributeStates;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!*(v2 + 16) || (v3 = sub_1D171D4E0(0), (v4 & 1) == 0))
  {
    memset(v19, 0, sizeof(v19));
    v20 = -1;
    goto LABEL_16;
  }

  sub_1D17417AC(*(v2 + 56) + 40 * v3, v19);
  if (v20 == 255)
  {
LABEL_16:
    sub_1D19F18F8(v19);
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D17417AC(v19, v18);
  sub_1D19F18F8(v19);
  result = sub_1D17417AC(v18, v16);
  if (v17 != 5)
  {
    sub_1D17805D8(v18);
    sub_1D17805D8(v16);
    return MEMORY[0x1E69E7CC0];
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  v8 = v16[0] + 32;
  v13 = v16[0] + 32;
  v9 = *(v16[0] + 16);
LABEL_6:
  v10 = v8 + 40 * v6;
  while (1)
  {
    if (v9 == v6)
    {

      sub_1D17805D8(v18);
      return v7;
    }

    if (v6 >= v9)
    {
      break;
    }

    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_22;
    }

    sub_1D19F41AC(v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    sub_1D1741B10(0, &qword_1EC648B90, 0x1E696F6A0);
    result = swift_dynamicCast();
    ++v6;
    v10 += 40;
    if (result && v14[4])
    {
      MEMORY[0x1D3891220]();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D1E67C5C();
      }

      result = sub_1D1E67CAC();
      v7 = v15;
      v6 = v11;
      v8 = v13;
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1D19EE218(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21[0] = a6;
  v21[1] = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648BA0, &qword_1D1E909C8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v21 - v15;
  (*(v13 + 16))(v21 - v15, a1, v12);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v17, v16, v12);
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  *(v19 + 32) = a5;
  *(v19 + 40) = v21[0];
  *(v19 + 48) = a7;

  sub_1D1A05A3C(sub_1D19F3FD8, v18, sub_1D19F3FF4, v19);
}

void sub_1D19EE3E0(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[0] = a2;
  v23 = 2;
  sub_1D1B0DAF8(v22, 1);
  swift_beginAccess();
  v10 = *(a3 + 16);
  if (v10 >> 8 <= 0xFE)
  {
    swift_beginAccess();
    v11 = *(a4 + 16);
    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1D1E73A90;
      *(v12 + 56) = MEMORY[0x1E69E6158];
      *(v12 + 64) = sub_1D1757D20();
      *(v12 + 32) = a5;
      *(v12 + 40) = a6;
      if ((v10 & 0xFF00) == 0x100)
      {
        v13 = v10 + 64;
      }

      else
      {
        v13 = v10;
      }

      v14 = MEMORY[0x1E69E7558];
      *(v12 + 96) = MEMORY[0x1E69E7508];
      *(v12 + 104) = v14;
      *(v12 + 72) = v13;

      v15 = v11;
      sub_1D1E66A8C();

      v22[0] = v13;
      v23 = 2;
      sub_1D19F4004(v22, v21);
      swift_beginAccess();
      sub_1D1B0DAF8(v21, 4);
      swift_endAccess();
      sub_1D19F18F8(v22);
      if ((*(v15 + OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_lastKnownEndpointID + 2) & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
      {
      }

      else
      {
        v17 = *(Strong + OBJC_IVAR____TtC13HomeDataModel16MockMatterDevice_attributeWaitingState);
        v20 = MEMORY[0x1EEE9AC00](Strong);
        v18 = *(*v17 + *MEMORY[0x1E69E6B68] + 16);
        v19 = (*(*v17 + 48) + 3) & 0x1FFFFFFFCLL;

        os_unfair_lock_lock((v17 + v19));
        sub_1D19F4074(v17 + v18);
        os_unfair_lock_unlock((v17 + v19));
      }
    }
  }
}

uint64_t sub_1D19EE818(void *a1, uint64_t a2, void *a3, void *aBlock, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    a2 = sub_1D1E67C1C();
  }

  v5[6] = a2;
  v10 = a1;
  v11 = a3;
  a5;
  v12 = swift_task_alloc();
  v5[7] = v12;
  *v12 = v5;
  v12[1] = sub_1D19EE938;

  return sub_1D19F1AE0(v10, a2);
}

uint64_t sub_1D19EE938(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 48);
  v12 = *(v5 + 40);

  if (v3)
  {
    v13 = sub_1D1E6655C();

    (v12)[2](v12, 0, v13);
    _Block_release(v12);
  }

  else
  {
    (v12)[2](v12, a1, 0);
    _Block_release(v12);
  }

  v14 = *(v10 + 8);

  return v14();
}

uint64_t sub_1D19EEB28(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D19EEB4C, 0, 0);
}

uint64_t sub_1D19EEB4C()
{
  v20 = v0;
  sub_1D17419CC(*(v0 + 168), v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643810, &qword_1D1E71F80);
  if (!swift_dynamicCast())
  {
    v6 = *(v0 + 176);
    sub_1D17419CC(*(v0 + 168), v0 + 80);
    sub_1D19EDF88();
    swift_allocError();
    v8 = v7;
    v9 = swift_unknownObjectRetain();
    sub_1D19F67F8(v9, &off_1EEC1DE98, (v0 + 80), v8);
    swift_willThrow();
    goto LABEL_5;
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  if (v2)
  {
    v3 = *(v0 + 176);
    v18 = &type metadata for StaticRVCClusterGroup.Command;
    v19 = sub_1D18FA450();
    v16 = v1;
    v17 = v2;
    sub_1D19EDF88();
    swift_allocError();
    v5 = v4;
    sub_1D19637F0(v1, v2);
    sub_1D19F67F8(v3, &off_1EEC1DE98, &v16, v5);
    swift_willThrow();
    sub_1D19630E4(v1, v2);
LABEL_5:
    v10 = *(v0 + 8);

    return v10();
  }

  v12 = *(v0 + 176);
  v13 = [objc_allocWithZone(MEMORY[0x1E696F690]) init];
  *(v0 + 184) = v13;
  v14 = sub_1D1E685DC();
  [v13 setNewMode_];

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1D19EEE20;
  v15 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647520, &qword_1D1E85850);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D19F40C0;
  *(v0 + 104) = &block_descriptor_185;
  *(v0 + 112) = v15;
  [v12 changeToModeWithParams:v13 expectedValues:0 expectedValueInterval:0 completion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D19EEE20()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_1D19EEFC4;
  }

  else
  {
    v3 = sub_1D19EEF30;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D19EEF30()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[18];
  v2[3] = sub_1D1741B10(0, &qword_1EC647528, 0x1E696F698);

  *v2 = v3;
  v4 = v0[1];

  return v4();
}

uint64_t sub_1D19EEFC4()
{
  v1 = v0[23];
  v2 = v0[24];
  swift_willThrow();

  v3 = v0[24];
  v4 = v0[1];

  return v4();
}

void sub_1D19EF180(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D19EF1C8(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13HomeDataModel21MockRVCRunModeCluster_lastKnownEndpointID;
  *v2 = result;
  *(v2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_1D19EF1F8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4BFC;

  return sub_1D19EEB28(a1, a2);
}

uint64_t sub_1D19EF2A0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648B88, &unk_1D1E90990);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  (*(v6 + 16))(&v14 - v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  sub_1D1A05A6C(sub_1D19F3D24, v11, sub_1D19F3D40, v12);
}

uint64_t sub_1D19EF5CC(void *a1, uint64_t a2, void *a3, void *aBlock, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    a2 = sub_1D1E67C1C();
  }

  v5[6] = a2;
  v10 = a1;
  v11 = a3;
  a5;
  v12 = swift_task_alloc();
  v5[7] = v12;
  *v12 = v5;
  v12[1] = sub_1D19F40A0;

  return sub_1D19F2704(v10, a2);
}

uint64_t sub_1D19EF6EC(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D19EF710, 0, 0);
}

uint64_t sub_1D19EF710()
{
  v20 = v0;
  sub_1D17419CC(*(v0 + 168), v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643810, &qword_1D1E71F80);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 144);
    v2 = *(v0 + 152);
    if (v2 == 1)
    {
      v3 = *(v0 + 176);
      v4 = [objc_allocWithZone(MEMORY[0x1E696F660]) init];
      *(v0 + 184) = v4;
      v5 = sub_1D1E685DC();
      [v4 setNewMode_];

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = sub_1D19EF9E8;
      v6 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647508, &qword_1D1E90960);
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1D19F40C0;
      *(v0 + 104) = &block_descriptor_159;
      *(v0 + 112) = v6;
      [v3 changeToModeWithParams:v4 expectedValues:0 expectedValueInterval:0 completion:v0 + 80];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    v11 = *(v0 + 176);
    v18 = &type metadata for StaticRVCClusterGroup.Command;
    v19 = sub_1D18FA450();
    v16 = v1;
    v17 = v2;
    sub_1D19EDF88();
    swift_allocError();
    v13 = v12;
    sub_1D19637F0(v1, v2);
    sub_1D19F67F8(v11, &off_1EEC1DE18, &v16, v13);
    swift_willThrow();
    sub_1D19630E4(v1, v2);
  }

  else
  {
    v7 = *(v0 + 176);
    sub_1D17419CC(*(v0 + 168), v0 + 80);
    sub_1D19EDF88();
    swift_allocError();
    v9 = v8;
    v10 = swift_unknownObjectRetain();
    sub_1D19F67F8(v10, &off_1EEC1DE18, (v0 + 80), v9);
    swift_willThrow();
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D19EF9E8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_1D19F40B4;
  }

  else
  {
    v3 = sub_1D19EFAF8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D19EFAF8()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[18];
  v2[3] = sub_1D1741B10(0, &qword_1EC647510, 0x1E696F668);

  *v2 = v3;
  v4 = v0[1];

  return v4();
}

void sub_1D19EFC94(void *a1)
{
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1D19EFCDC(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC13HomeDataModel23MockRVCCleanModeCluster_lastKnownEndpointID;
  *v2 = result;
  *(v2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_1D19EFD0C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4CF0;

  return sub_1D19EF6EC(a1, a2);
}

void sub_1D19EFDB4(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13HomeDataModel30MockRVCOperationalStateCluster_attributeStates;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!*(v4 + 16) || (v5 = sub_1D171D4E0(5), (v6 & 1) == 0))
  {
    *v13 = 0u;
    v14 = 0u;
    v15 = -1;
    goto LABEL_7;
  }

  sub_1D17417AC(*(v4 + 56) + 40 * v5, v13);
  if (v15 == 255)
  {
LABEL_7:
    sub_1D19F18F8(v13);
    goto LABEL_8;
  }

  sub_1D17417AC(v13, v12);
  sub_1D19F18F8(v13);
  sub_1D19F41AC(v16);
  sub_1D17805D8(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
  sub_1D1741B10(0, &qword_1EC647368, 0x1E696F678);
  if (swift_dynamicCast())
  {
    v7 = v13[0];
    goto LABEL_9;
  }

LABEL_8:
  v7 = [objc_allocWithZone(MEMORY[0x1E696F678]) init];
LABEL_9:
  v8 = [v7 errorStateID];
  v9 = [v8 unsignedCharValue];

  StaticRVCClusterGroup.OperationalErrorState.init(rawValue:)(v9, v13);
  v10 = v13[0];
  v11 = HIBYTE(LOWORD(v13[0]));
  if (v11 > 0xFE)
  {
    __break(1u);
  }

  else
  {

    *a1 = v10;
    a1[1] = v11;
  }
}

uint64_t sub_1D19EFF44()
{
  sub_1D19EFDB4(v4);
  v0 = v4[1] | v4[0];
  v1 = v0 == 0;
  if (v0)
  {
    sub_1D19EFDB4(v3);
    LOBYTE(v0) = v3[0];
    if (v3[1] == 1)
    {
      LOBYTE(v0) = v3[0] + 64;
    }
  }

  return v0 | (v1 << 8);
}

uint64_t sub_1D19EFFB0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648B80, &qword_1D1E90908);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - v13;
  (*(v11 + 16))(&v19 - v13, a1, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v14, v10);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  sub_1D1A05F28(a6, v16, v20, v17);
}

uint64_t sub_1D19F02BC(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v8 = sub_1D1E67C1C();
  }

  else
  {
    v8 = 0;
  }

  v4[5] = v8;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1D19F40CC;

  return sub_1D19F2BA8(v8);
}

uint64_t sub_1D19F055C(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v8 = sub_1D1E67C1C();
  }

  else
  {
    v8 = 0;
  }

  v4[5] = v8;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1D19F40CC;

  return sub_1D19F3000(v8);
}

uint64_t sub_1D19F066C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648B80, &qword_1D1E90908);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_1D1A05F28(sub_1D19F3850, v8, sub_1D19F0838, 0);
}

uint64_t sub_1D19F07CC(uint64_t a1, uint64_t a2, Class *a3, uint64_t *a4, uint64_t *a5)
{
  [objc_allocWithZone(*a3) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  return sub_1D1E67D6C();
}

unint64_t sub_1D19F0838()
{
  v1[0] = 64;
  v2 = 2;
  return sub_1D1B0DAF8(v1, 4);
}

uint64_t sub_1D19F0A0C(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v8 = sub_1D1E67C1C();
  }

  else
  {
    v8 = 0;
  }

  v4[5] = v8;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1D19F0B1C;

  return (sub_1D19F333C)(v8);
}

uint64_t sub_1D19F0B1C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 40);
  v11 = *(v5 + 32);

  if (v3)
  {
    v12 = sub_1D1E6655C();

    (v11)[2](v11, 0, v12);
    _Block_release(v11);
  }

  else
  {
    (v11)[2](v11, a1, 0);
    _Block_release(v11);
  }

  v13 = *(v9 + 8);

  return v13();
}

uint64_t sub_1D19F0CEC(uint64_t a1, uint64_t a2)
{
  v3[37] = a2;
  v3[38] = v2;
  v3[36] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D19F0D10, 0, 0);
}

uint64_t sub_1D19F0D10()
{
  v24 = v0;
  v1 = v0 + 272;
  sub_1D17419CC(*(v0 + 296), v0 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643810, &qword_1D1E71F80);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 272);
    v3 = *(v0 + 280);
    if (v3 == 4)
    {
      switch(v2)
      {
        case 0:
          v4 = v0 + 80;
          v18 = *(v0 + 304);
          *(v0 + 80) = v0;
          *(v0 + 120) = v1;
          *(v0 + 88) = sub_1D19F12B0;
          v19 = swift_continuation_init();
          *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647530, &qword_1D1E85858);
          *(v0 + 208) = MEMORY[0x1E69E9820];
          *(v0 + 216) = 1107296256;
          *(v0 + 224) = sub_1D19F40C0;
          *(v0 + 232) = &block_descriptor_95;
          *(v0 + 240) = v19;
          [v18 pauseWithExpectedValues:0 expectedValueInterval:0 completion:v0 + 208];
          goto LABEL_14;
        case 1:
          v4 = v0 + 16;
          v16 = *(v0 + 304);
          *(v0 + 16) = v0;
          *(v0 + 56) = v1;
          *(v0 + 24) = sub_1D19F13C0;
          v17 = swift_continuation_init();
          *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647530, &qword_1D1E85858);
          *(v0 + 208) = MEMORY[0x1E69E9820];
          *(v0 + 216) = 1107296256;
          *(v0 + 224) = sub_1D19F40C0;
          *(v0 + 232) = &block_descriptor_30;
          *(v0 + 240) = v17;
          [v16 resumeWithExpectedValues:0 expectedValueInterval:0 completion:v0 + 208];
          goto LABEL_14;
        case 2:
          v4 = v0 + 144;
          v5 = *(v0 + 304);
          *(v0 + 144) = v0;
          *(v0 + 184) = v1;
          *(v0 + 152) = sub_1D19F111C;
          v6 = swift_continuation_init();
          *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647530, &qword_1D1E85858);
          *(v0 + 208) = MEMORY[0x1E69E9820];
          *(v0 + 216) = 1107296256;
          *(v0 + 224) = sub_1D19F40C0;
          *(v0 + 232) = &block_descriptor_98;
          *(v0 + 240) = v6;
          [v5 goHomeWithExpectedValues:0 expectedValueInterval:0 completion:v0 + 208];
LABEL_14:

          return MEMORY[0x1EEE6DEC8](v4);
      }
    }

    v11 = *(v0 + 304);
    v22 = &type metadata for StaticRVCClusterGroup.Command;
    v23 = sub_1D18FA450();
    v20 = v2;
    v21 = v3;
    sub_1D19EDF88();
    swift_allocError();
    v13 = v12;
    sub_1D19637F0(v2, v3);
    sub_1D19F67F8(v11, &off_1EEC1DD98, &v20, v13);
    swift_willThrow();
    sub_1D19630E4(v2, v3);
  }

  else
  {
    v7 = *(v0 + 304);
    sub_1D17419CC(*(v0 + 296), v0 + 208);
    sub_1D19EDF88();
    swift_allocError();
    v9 = v8;
    v10 = swift_unknownObjectRetain();
    sub_1D19F67F8(v10, &off_1EEC1DD98, (v0 + 208), v9);
    swift_willThrow();
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D19F111C()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 312) = v2;
  if (v2)
  {
    v3 = sub_1D19F14D0;
  }

  else
  {
    v3 = sub_1D19F122C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}