uint64_t sub_1D19083E8(void **__dst, void **__src, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v31 = __src;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v14 = &v4[v12];
    if (v10 < 8 || v31 <= v6)
    {
      goto LABEL_49;
    }

    v60 = v4;
LABEL_32:
    v51 = v31;
    v32 = v31 - 1;
    --v5;
    v33 = v14;
    while (1)
    {
      v34 = *--v33;
      v35 = *v32;
      v36 = v34;
      v37 = v35;
      HMMatterCommand.associatedMatterCommand.getter(&v54);
      if (v55)
      {
        sub_1D1742190(&v54, v57);
        HMMatterCommand.associatedMatterCommand.getter(&v52);
        if (v53)
        {
          sub_1D1742190(&v52, &v54);
          v49 = v14;
          v38 = v58;
          v39 = v59;
          __swift_project_boxed_opaque_existential_1(v57, v58);
          v48 = (*(v39 + 48))(v38, v39);
          v40 = v32;
          v41 = v55;
          v42 = v56;
          __swift_project_boxed_opaque_existential_1(&v54, v55);
          v43 = *(v42 + 48);
          v44 = v41;
          v4 = v60;
          v45 = v42;
          v32 = v40;
          v46 = v43(v44, v45);
          __swift_destroy_boxed_opaque_existential_1(&v54);
          __swift_destroy_boxed_opaque_existential_1(v57);

          v14 = v49;
          if (v48 < v46)
          {
            if (v5 + 1 != v51)
            {
              *v5 = *v32;
            }

            if (v49 <= v4 || (v31 = v32, v32 <= v6))
            {
              v31 = v32;
              goto LABEL_49;
            }

            goto LABEL_32;
          }

          goto LABEL_41;
        }

        sub_1D1741A30(&v52, &qword_1EC646A98, &unk_1D1E858B0);
        __swift_destroy_boxed_opaque_existential_1(v57);
      }

      else
      {
        sub_1D1741A30(&v54, &qword_1EC646A98, &unk_1D1E858B0);
      }

LABEL_41:
      if (v5 + 1 != v14)
      {
        *v5 = *v33;
      }

      --v5;
      v14 = v33;
      if (v33 <= v4)
      {
        v14 = v33;
        v31 = v51;
        goto LABEL_49;
      }
    }
  }

  if (a4 != __dst || &__dst[v9] <= a4)
  {
    memmove(a4, __dst, 8 * v9);
  }

  v14 = &v4[v9];
  if (v7 >= 8 && __src < v5)
  {
    v15 = __src;
    while (1)
    {
      v16 = *v4;
      v17 = *v15;
      v18 = v16;
      HMMatterCommand.associatedMatterCommand.getter(&v54);
      if (!v55)
      {
        break;
      }

      sub_1D1742190(&v54, v57);
      HMMatterCommand.associatedMatterCommand.getter(&v52);
      if (!v53)
      {
        sub_1D1741A30(&v52, &qword_1EC646A98, &unk_1D1E858B0);
        __swift_destroy_boxed_opaque_existential_1(v57);
LABEL_20:

LABEL_21:
        v29 = v4;
        if (v6 == v4++)
        {
          goto LABEL_23;
        }

LABEL_22:
        *v6 = *v29;
        goto LABEL_23;
      }

      sub_1D1742190(&v52, &v54);
      v50 = v15;
      v60 = v4;
      v19 = v58;
      v20 = v59;
      __swift_project_boxed_opaque_existential_1(v57, v58);
      v21 = (*(v20 + 48))(v19, v20);
      v22 = v14;
      v24 = v55;
      v23 = v56;
      __swift_project_boxed_opaque_existential_1(&v54, v55);
      v25 = *(v23 + 48);
      v26 = v23;
      v14 = v22;
      v27 = v25(v24, v26);
      __swift_destroy_boxed_opaque_existential_1(&v54);
      __swift_destroy_boxed_opaque_existential_1(v57);

      v28 = v21 < v27;
      v4 = v60;
      v15 = v50;
      if (!v28)
      {
        goto LABEL_21;
      }

      v29 = v50;
      v15 = v50 + 1;
      if (v6 != v50)
      {
        goto LABEL_22;
      }

LABEL_23:
      ++v6;
      if (v4 >= v14 || v15 >= v5)
      {
        goto LABEL_25;
      }
    }

    sub_1D1741A30(&v54, &qword_1EC646A98, &unk_1D1E858B0);
    goto LABEL_20;
  }

LABEL_25:
  v31 = v6;
LABEL_49:
  if (v31 != v4 || v31 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v31, v4, 8 * (v14 - v4));
  }

  return 1;
}

_BYTE *ClusterValue.init(clusterKind:endpointID:attributeValues:)@<X0>(_BYTE *result@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 2) = a2;
  *(a4 + 8) = a3;
  return result;
}

uint64_t MatterClusterAttributeID.init(attributeID:clusterKind:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 4) = v3;
  return result;
}

uint64_t sub_1D19088E4()
{
  if (*v0)
  {
    result = 0x4B72657473756C63;
  }

  else
  {
    result = 0x7475626972747461;
  }

  *v0;
  return result;
}

uint64_t sub_1D1908930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7475626972747461 && a2 == 0xEB00000000444965;
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

uint64_t sub_1D1908A14(uint64_t a1)
{
  v2 = sub_1D1909094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1908A50(uint64_t a1)
{
  v2 = sub_1D1909094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MatterClusterAttributeID.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646CE0, &qword_1D1E829D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = *(v1 + 4);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1909094();
  sub_1D1E6930C();
  v17 = v9;
  v16 = 0;
  type metadata accessor for MTRAttributeIDType(0);
  sub_1D19090E8(&qword_1EC646CF0);
  sub_1D1E68F1C();
  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_1D19002B4();
    sub_1D1E68F1C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t MatterClusterAttributeID.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1D1E6924C();
  v3 = dword_1D1E82C34[v2];
  return sub_1D1E6924C();
}

uint64_t MatterClusterAttributeID.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1D1E6920C();
  sub_1D1E6924C();
  v3 = dword_1D1E82C34[v2];
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t MatterClusterAttributeID.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646CF8, &qword_1D1E829D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1909094();
  sub_1D1E692FC();
  if (!v2)
  {
    type metadata accessor for MTRAttributeIDType(0);
    v17 = 0;
    sub_1D19090E8(&qword_1EC646D00);
    sub_1D1E68D7C();
    v11 = v18;
    v15 = 1;
    sub_1D1900460();
    sub_1D1E68D7C();
    (*(v6 + 8))(v9, v5);
    v12 = v16;
    *a2 = v11;
    *(a2 + 4) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1908EF8()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1D1E6920C();
  sub_1D1E6924C();
  v3 = dword_1D1E82C34[v2];
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t sub_1D1908F60()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1D1E6924C();
  v3 = dword_1D1E82C34[v2];
  return sub_1D1E6924C();
}

uint64_t sub_1D1908FA8()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1D1E6920C();
  sub_1D1E6924C();
  v3 = dword_1D1E82C34[v2];
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

unint64_t sub_1D1909094()
{
  result = qword_1EC646CE8;
  if (!qword_1EC646CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646CE8);
  }

  return result;
}

uint64_t sub_1D19090E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MTRAttributeIDType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1909130()
{
  result = qword_1EC646D08;
  if (!qword_1EC646D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646D08);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MatterClusterAttributeID(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE3 && *(a1 + 5))
  {
    return (*a1 + 227);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 0x1E;
  v5 = v3 - 30;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MatterClusterAttributeID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE2)
  {
    *(result + 4) = 0;
    *result = a2 - 227;
    if (a3 >= 0xE3)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE3)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 29;
    }
  }

  return result;
}

unint64_t sub_1D1909254()
{
  result = qword_1EC646D10;
  if (!qword_1EC646D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646D10);
  }

  return result;
}

unint64_t sub_1D19092AC()
{
  result = qword_1EC646D18;
  if (!qword_1EC646D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646D18);
  }

  return result;
}

unint64_t sub_1D1909304()
{
  result = qword_1EC646D20;
  if (!qword_1EC646D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646D20);
  }

  return result;
}

unsigned __int8 *static MatterCommandFactory.matterCommand(clusterKind:commandID:expectedValues:commandFields:)@<X0>(unsigned __int8 *result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *result;
  v8 = *a4;
  if ((v7 - 24) >= 4)
  {
    if (v7 == 11)
    {
      v21 = a2;
      v9 = &type metadata for StaticOnOffCluster.Command;
      v10 = sub_1D18FA3A8();
    }

    else
    {
      if (v7 != 17)
      {
        goto LABEL_8;
      }

      v21 = a2;
      v9 = &type metadata for StaticColorControlCluster.Command;
      v10 = sub_1D18FA3FC();
    }
  }

  else
  {
    v21 = a2;
    v9 = &type metadata for StaticRVCClusterGroup.Command;
    v10 = sub_1D18FA450();
  }

  v11 = v10;
  v23 = v7;
  v22 = v8;
  v12 = *(v10 + 16);
  v13 = sub_1D1E685AC();
  v20 = &v20;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v20 - v16;

  v12(&v23, v21, a3, &v22, v9, v11);
  Description = v9[-1].Description;
  if (Description[6](v17, 1, v9) == 1)
  {
    result = (*(v14 + 8))(v17, v13);
LABEL_8:
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return result;
  }

  *(a5 + 24) = v9;
  *(a5 + 32) = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  return (Description[4])(boxed_opaque_existential_1, v17, v9);
}

uint64_t static MatterCommandFactory.template(for:device:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StaticMatterDevice();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = static MatterDeviceType.primaryDeviceType(for:)(*(a2 + *(v8 + 40)), &v21);
  if (v21 != 23)
  {
    goto LABEL_4;
  }

  v12 = sub_1D1909778();
  sub_1D19097CC(a2, v10);
  v13 = sub_1D1E685AC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v20[-v16];
  StaticRVCClusterGroup.Command.Template.init(matterCommand:device:)(a1, v10, &v20[-v16]);
  v18 = off_1F4D71968;
  if ((*(off_1F4D71968 + 6))(v17, 1, &type metadata for StaticRVCClusterGroup.Command.Template) == 1)
  {
    result = (*(v14 + 8))(v17, v13);
LABEL_4:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  *(a3 + 24) = &type metadata for StaticRVCClusterGroup.Command.Template;
  *(a3 + 32) = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  return v18[4](boxed_opaque_existential_1, v17, &type metadata for StaticRVCClusterGroup.Command.Template);
}

unint64_t sub_1D1909778()
{
  result = qword_1EC646D28;
  if (!qword_1EC646D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646D28);
  }

  return result;
}

uint64_t sub_1D19097CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticMatterDevice();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D19098E4()
{
  result = qword_1EC646D30;
  if (!qword_1EC646D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646D30);
  }

  return result;
}

uint64_t HMHome.device(for:)(uint64_t a1)
{
  v3 = [v1 accessories];
  sub_1D190A1D0();
  v4 = sub_1D1E67C1C();

  if (v4 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D3891EF0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = sub_1D1E682DC();
      if ((v11 & 1) == 0 && v10 == a1)
      {

        v12 = HMAccessory.matterDevice.getter();

        return v12;
      }

      ++v6;
      if (v9 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

uint64_t HMHome.allMatterNodeIDs.getter()
{
  v0 = HMHome.matterAccessories.getter();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
LABEL_25:
    v3 = sub_1D1E6873C();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_26:
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

  v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_26;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D3891EF0](v6, v1);
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_24;
        }

        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v9 = sub_1D1E682DC();
      if (v10 & 1) == 0 && v9 && (_s13HomeDataModel19MatterStateSnapshotV17allowSnapshotting9accessorySbSo11HMAccessoryC_tFZ_0(v8))
      {
        break;
      }

LABEL_6:
      ++v6;
      if (v4 == v3)
      {
        goto LABEL_27;
      }
    }

    v11 = sub_1D1E682DC();
    v13 = v12;

    if (v13)
    {
      goto LABEL_6;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_1D177EA60(0, *(v5 + 2) + 1, 1, v5);
    }

    v16 = *(v5 + 2);
    v15 = *(v5 + 3);
    if (v16 >= v15 >> 1)
    {
      v5 = sub_1D177EA60((v15 > 1), v16 + 1, 1, v5);
    }

    *(v5 + 2) = v16 + 1;
    *&v5[8 * v16 + 32] = v11;
  }

  while (v4 != v3);
LABEL_27:

  v17 = sub_1D1785204(v5);

  return v17;
}

uint64_t HMHome.matterAccessories.getter()
{
  v1 = [v0 accessories];
  sub_1D190A1D0();
  v2 = sub_1D1E67C1C();

  v14 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
LABEL_19:
    v3 = sub_1D1E6873C();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1D3891EF0](v4, v2);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:
            v12 = v14;
            goto LABEL_21;
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v5 = *(v2 + 8 * v4 + 32);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_16;
          }
        }

        v7 = v5;
        v8 = sub_1D1E682DC();
        if ((v9 & 1) != 0 || !v8)
        {
        }

        else
        {
          v10 = _s13HomeDataModel19MatterStateSnapshotV17allowSnapshotting9accessorySbSo11HMAccessoryC_tFZ_0(v7);

          if (v10)
          {
            sub_1D1E6896C();
            v11 = *(v14 + 16);
            sub_1D1E689AC();
            sub_1D1E689BC();
            sub_1D1E6897C();
            goto LABEL_6;
          }
        }

LABEL_6:
        ++v4;
        if (v6 == v3)
        {
          goto LABEL_17;
        }
      }
    }
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_21:

  return v12;
}

uint64_t sub_1D1909DC8()
{
  v0 = HMHome.matterAccessories.getter();
  v1 = sub_1D18DA170(MEMORY[0x1E69E7CC0]);
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (!(v0 >> 62))
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_34:

    return v1;
  }

LABEL_37:
  v3 = sub_1D1E6873C();
  if (!v3)
  {
    goto LABEL_34;
  }

LABEL_3:
  v4 = 0;
  v5 = v0 & 0xC000000000000001;
  v42 = v0 & 0xC000000000000001;
  v43 = v0;
  while (2)
  {
    v41 = v1;
    v1 = v4;
    while (1)
    {
      if (v5)
      {
        v6 = MEMORY[0x1D3891EF0](v1, v0);
      }

      else
      {
        if (v1 >= *(v2 + 16))
        {
          goto LABEL_36;
        }

        v6 = *(v0 + 8 * v1 + 32);
      }

      v7 = v6;
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v8 = sub_1D1E682DC();
      if ((v9 & 1) == 0)
      {
        v10 = v8;
        if (v8)
        {
          v11 = sub_1D1E682DC();
          if ((v12 & 1) == 0)
          {
            v13 = v11;
            if (v11)
            {
              break;
            }
          }
        }
      }

LABEL_6:

      ++v1;
      if (v4 == v3)
      {
        v1 = v41;
        goto LABEL_34;
      }
    }

    v14 = v3;
    v15 = HMAccessory.matterDevice.getter();
    if (!v15)
    {
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v17 = sub_1D1E6709C();
      __swift_project_value_buffer(v17, qword_1EE07A0B0);
      v18 = v7;
      v7 = sub_1D1E6707C();
      v19 = sub_1D1E6835C();

      if (os_log_type_enabled(v7, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 134218242;
        *(v20 + 4) = v13;
        *(v20 + 12) = 2112;
        *(v20 + 14) = v18;
        *v21 = v18;
        v22 = v18;
        _os_log_impl(&dword_1D16EC000, v7, v19, "HMAccessory had a matter node ID (%llu) but didn't return a device: (%@)", v20, 0x16u);
        sub_1D179F28C(v21);
        MEMORY[0x1D3893640](v21, -1, -1);
        MEMORY[0x1D3893640](v20, -1, -1);
      }

      v3 = v14;
      v5 = v42;
      v0 = v43;
      goto LABEL_6;
    }

    v23 = v15;
    v24 = v16;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = sub_1D17420B0(v10);
    v28 = *(v41 + 16);
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      __break(1u);
      goto LABEL_40;
    }

    v32 = v27;
    if (*(v41 + 24) >= v31)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = v26;
        sub_1D173AC34();
        v26 = v36;
        v1 = v41;
        if (v32)
        {
          goto LABEL_27;
        }

LABEL_29:
        *(v1 + 8 * (v26 >> 6) + 64) |= 1 << v26;
        *(*(v1 + 48) + 8 * v26) = v10;
        v37 = (*(v1 + 56) + 16 * v26);
        *v37 = v23;
        v37[1] = v24;
        swift_unknownObjectRelease();

        v38 = *(v1 + 16);
        v30 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (!v30)
        {
          *(v1 + 16) = v39;
LABEL_31:
          v3 = v14;
          v5 = v42;
          v0 = v43;
          if (v4 != v3)
          {
            continue;
          }

          goto LABEL_34;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

LABEL_26:
      v1 = v41;
      if (v32)
      {
LABEL_27:
        v34 = (*(v1 + 56) + 16 * v26);
        v35 = *v34;
        *v34 = v23;
        v34[1] = v24;
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        goto LABEL_31;
      }

      goto LABEL_29;
    }

    break;
  }

  sub_1D172BA84(v31, isUniquelyReferenced_nonNull_native);
  v26 = sub_1D17420B0(v10);
  if ((v32 & 1) == (v33 & 1))
  {
    goto LABEL_26;
  }

LABEL_41:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

unint64_t sub_1D190A1D0()
{
  result = qword_1EE07B690;
  if (!qword_1EE07B690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE07B690);
  }

  return result;
}

uint64_t _sSo6HMHomeC13HomeDataModelE6device3forAC12MatterDevice_pSgSo11HMAccessoryC_tF_0(void *a1)
{
  v2 = sub_1D1E682DC();
  result = 0;
  if ((v4 & 1) == 0)
  {
    if (v2)
    {
      v5 = v2;
      result = HMAccessory.matterDevice.getter();
      if (!result)
      {
        if (qword_1EE07A0A8 != -1)
        {
          swift_once();
        }

        v6 = sub_1D1E6709C();
        __swift_project_value_buffer(v6, qword_1EE07A0B0);
        v7 = a1;
        v8 = sub_1D1E6707C();
        v9 = sub_1D1E6835C();

        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          *v10 = 134218242;
          *(v10 + 4) = v5;
          *(v10 + 12) = 2112;
          *(v10 + 14) = v7;
          *v11 = v7;
          v12 = v7;
          _os_log_impl(&dword_1D16EC000, v8, v9, "HMAccessory had a matter node ID (%llu) but didn't return a device: (%@)", v10, 0x16u);
          sub_1D179F28C(v11);
          MEMORY[0x1D3893640](v11, -1, -1);
          MEMORY[0x1D3893640](v10, -1, -1);
        }

        return 0;
      }
    }
  }

  return result;
}

void *HMHomeManager.accessory(with:inHomeWithID:)(uint64_t a1, uint64_t a2)
{
  v5 = [v2 homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v6 = sub_1D1E67C1C();

  v18[2] = a2;
  v7 = sub_1D174A6C4(sub_1D190A884, v18, v6);

  if (v7)
  {
    v8 = [v7 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v9 = sub_1D1E67C1C();

    if (v9 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
    {
      v11 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1D3891EF0](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v15 = sub_1D1E682DC();
        if ((v16 & 1) == 0 && v15 == a1)
        {

          return v13;
        }

        ++v11;
        if (v14 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  return 0;
}

uint64_t HMHomeManager.matterDevice(with:inHomeWithID:)(uint64_t a1, uint64_t a2)
{
  v5 = [v2 homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v6 = sub_1D1E67C1C();

  v19[2] = a2;
  v7 = sub_1D174A6C4(sub_1D190A864, v19, v6);

  if (v7)
  {
    v8 = [v7 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v9 = sub_1D1E67C1C();

    if (v9 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
    {
      v11 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1D3891EF0](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v15 = sub_1D1E682DC();
        if ((v16 & 1) == 0 && v15 == a1)
        {

          v17 = _sSo6HMHomeC13HomeDataModelE6device3forAC12MatterDevice_pSgSo11HMAccessoryC_tF_0(v13);

          return v17;
        }

        ++v11;
        if (v14 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  return 0;
}

uint64_t sub_1D190A758(id *a1)
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

uint64_t HMAccessory.matterDevice.getter()
{
  if (_s13HomeDataModel19MatterStateSnapshotV17allowSnapshotting9accessorySbSo11HMAccessoryC_tFZ_0(v0))
  {
    if ([v0 hdm_matterDevice])
    {
      sub_1D1E6866C();
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    v17 = v15;
    v18 = v16;
    if (*(&v16 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A370, &qword_1D1EAF8F0);
      if (swift_dynamicCast())
      {
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        (*(v14 + 24))([v0 home], ObjectType);
        swift_unknownObjectRelease();
        return v13;
      }
    }

    else
    {
      sub_1D1741A30(&v17, &qword_1EC649700, &qword_1D1E6E910);
    }

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v3 = sub_1D1E6709C();
    __swift_project_value_buffer(v3, qword_1EE07A0B0);
    v4 = v0;
    v5 = sub_1D1E6707C();
    v6 = sub_1D1E6833C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *&v15 = v9;
      *v7 = 136315650;
      *(v7 + 4) = sub_1D1B1312C(0xD00000000000002BLL, 0x80000001D1EBE060, &v15);
      *(v7 + 12) = 2112;
      *(v7 + 14) = v4;
      *v8 = v4;
      *(v7 + 22) = 2082;
      if ([v4 hdm_matterDevice])
      {
        sub_1D1E6866C();
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0u;
        v18 = 0u;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649700, &qword_1D1E6E910);
      v10 = sub_1D1E678BC();
      v12 = sub_1D1B1312C(v10, v11, &v15);

      *(v7 + 24) = v12;
      _os_log_impl(&dword_1D16EC000, v5, v6, "%s Failed to create device from HMAccessory (%@). device: %{public}s", v7, 0x20u);
      sub_1D1741A30(v8, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v8, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v9, -1, -1);
      MEMORY[0x1D3893640](v7, -1, -1);
    }
  }

  return 0;
}

uint64_t MTRClusterDescriptor.endpointPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 device];
  v4 = [v3 hdm_getNodeID];

  sub_1D1E692EC();
  v5 = type metadata accessor for EndpointPath(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, 1, 1, v5);
}

uint64_t MTRDeviceState.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6E776F6E6B6E75;
    case 2:
      return 0x6168636165726E75;
    case 1:
      return 0x6C62616863616572;
  }

  sub_1D1E6884C();

  v2 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v2);

  return 0xD000000000000010;
}

uint64_t sub_1D190B784(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D190B7CC(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v44 = a4;
  v45 = a5;
  v43 = a2;
  v12 = sub_1D1E6702C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D1E66FDC();
  v18 = *(*(v17 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v17);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  if (*a1)
  {
    v40 = v20;
    v41 = result;
    v42 = v7;
    if (qword_1EE07A050 != -1)
    {
      swift_once();
    }

    v23 = sub_1D1E6701C();
    __swift_project_value_buffer(v23, qword_1EE07A058);
    sub_1D18C20AC(a7, v48);

    v24 = sub_1D1E66FFC();
    sub_1D1E6703C();
    v39 = sub_1D1E683DC();

    if (sub_1D1E6855C())
    {

      sub_1D1E6706C();

      if ((*(v13 + 88))(v16, v12) == *MEMORY[0x1E69E93E8])
      {
        v25 = 0;
        v26 = 0;
        v38 = "[Error] Interval already ended";
      }

      else
      {
        (*(v13 + 8))(v16, v12);
        v26 = 2;
        v25 = 4;
      }

      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v49 = v28;
      *v27 = v26;
      *(v27 + 1) = v25;
      *(v27 + 2) = 2082;
      *(v27 + 4) = sub_1D1B1312C(v43, a3, &v49);
      *(v27 + 12) = 2082;
      v29 = sub_1D1E6940C();
      v31 = sub_1D1B1312C(v29, v30, &v49);

      *(v27 + 14) = v31;
      *(v27 + 22) = 2082;
      *(v27 + 24) = sub_1D1B1312C(v45, a6, &v49);
      *(v27 + 32) = 2082;
      sub_1D18C20AC(v48, v47);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
      v32 = sub_1D1E678BC();
      v34 = v33;
      sub_1D1741A30(v48, &qword_1EC645D58, &unk_1D1E7E530);
      v35 = sub_1D1B1312C(v32, v34, &v49);

      *(v27 + 34) = v35;
      v36 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v24, v39, v36, "ExecutingMatterCommand", v38, v27, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v28, -1, -1);
      MEMORY[0x1D3893640](v27, -1, -1);

      result = (*(v40 + 8))(v22, v41);
    }

    else
    {

      (*(v40 + 8))(v22, v41);
      result = sub_1D1741A30(v48, &qword_1EC645D58, &unk_1D1E7E530);
    }

    *v46 = 0;
  }

  return result;
}

uint64_t sub_1D190BC38(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  v58 = a6;
  v56 = a4;
  v13 = sub_1D1E6702C();
  v55 = *(v13 - 8);
  v14 = *(v55 + 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D1E66FDC();
  v18 = *(*(v17 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v17);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v48 = v13;
    v50 = a2;
    v51 = a5;
    v57 = v22;
    v52 = v20;
    v53 = result;
    v54 = a1;
    if (qword_1EE07A050 != -1)
    {
      swift_once();
    }

    v23 = sub_1D1E6701C();
    __swift_project_value_buffer(v23, qword_1EE07A058);

    v24 = a7;
    v25 = a3;
    v26 = sub_1D1E66FFC();
    v27 = v57;
    sub_1D1E6703C();
    v49 = sub_1D1E683DC();

    if (sub_1D1E6855C())
    {
      v47 = v7;

      sub_1D1E6706C();

      v28 = v55;
      v29 = v48;
      v30 = (*(v55 + 11))(v16, v48);
      v31 = *MEMORY[0x1E69E93E8];
      v46 = v26;
      if (v30 == v31)
      {
        v32 = 0;
        v33 = 0;
        v55 = "[Error] Interval already ended";
      }

      else
      {
        (*(v28 + 1))(v16, v29);
        v33 = 2;
        v32 = 4;
      }

      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v59 = v36;
      *v34 = v33;
      *(v34 + 1) = v32;
      *(v34 + 2) = 2082;
      *(v34 + 4) = sub_1D1B1312C(v50, v25, &v59);
      *(v34 + 12) = 2082;
      v37 = sub_1D1E6940C();
      v39 = sub_1D1B1312C(v37, v38, &v59);

      *(v34 + 14) = v39;
      *(v34 + 22) = 2082;
      *(v34 + 24) = sub_1D1B1312C(v51, v58, &v59);
      *(v34 + 32) = 2114;
      v40 = a7;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 34) = v41;
      *v35 = v41;
      v42 = v57;
      v43 = sub_1D1E66FBC();
      v44 = v46;
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v46, v49, v43, "ExecutingMatterCommand", v55, v34, 0x2Au);
      sub_1D1741A30(v35, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v35, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v36, -1, -1);
      MEMORY[0x1D3893640](v34, -1, -1);

      result = (*(v52 + 8))(v42, v53);
    }

    else
    {

      result = (*(v52 + 8))(v27, v53);
    }

    *v54 = 0;
  }

  return result;
}

uint64_t sub_1D190C0A4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v39 = a4;
  v40 = a5;
  v38 = a2;
  v10 = sub_1D1E6702C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D1E66FDC();
  v16 = *(*(v15 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v15);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v34 = v18;
    v35 = result;
    v36 = a1;
    v37 = v6;
    if (qword_1EE07A050 != -1)
    {
      swift_once();
    }

    v21 = sub_1D1E6701C();
    __swift_project_value_buffer(v21, qword_1EE07A058);

    v22 = sub_1D1E66FFC();
    sub_1D1E6703C();
    v33 = sub_1D1E683DC();

    if (sub_1D1E6855C())
    {

      sub_1D1E6706C();

      if ((*(v11 + 88))(v14, v10) == *MEMORY[0x1E69E93E8])
      {
        v23 = 0;
        v24 = 0;
        v32 = "[Error] Interval already ended";
      }

      else
      {
        (*(v11 + 8))(v14, v10);
        v24 = 2;
        v23 = 3;
      }

      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v41 = v26;
      *v25 = v24;
      *(v25 + 1) = v23;
      *(v25 + 2) = 2082;
      *(v25 + 4) = sub_1D1B1312C(v38, a3, &v41);
      *(v25 + 12) = 2082;
      v27 = sub_1D1E6940C();
      v29 = sub_1D1B1312C(v27, v28, &v41);

      *(v25 + 14) = v29;
      *(v25 + 22) = 2082;
      *(v25 + 24) = sub_1D1B1312C(v40, a6, &v41);
      v30 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v22, v33, v30, "ExecutingMatterCommand", v32, v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v26, -1, -1);
      MEMORY[0x1D3893640](v25, -1, -1);
    }

    result = (*(v34 + 8))(v20, v35);
    *v36 = 0;
  }

  return result;
}

uint64_t sub_1D190C444(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v58 = a4;
  v11 = sub_1D1E66FDC();
  v61 = *(v11 - 8);
  v62 = v11;
  v12 = *(v61 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v60 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v55 - v15;
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v17 = sub_1D1E6709C();
  __swift_project_value_buffer(v17, qword_1EE07A0B0);

  v18 = sub_1D1E6707C();
  v19 = sub_1D1E6835C();

  v20 = os_log_type_enabled(v18, v19);
  v59 = a5;
  v57 = a2;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v64 = v55;
    *v21 = 136446978;
    *(v21 + 4) = sub_1D1B1312C(a1, a2, &v64);
    *(v21 + 12) = 2082;
    v22 = sub_1D1E6940C();
    v24 = sub_1D1B1312C(v22, v23, &v64);
    v56 = a3;
    v25 = v24;

    *(v21 + 14) = v25;
    *(v21 + 22) = 2082;
    *(v21 + 24) = sub_1D1B1312C(v58, a5, &v64);
    *(v21 + 32) = 2082;
    v63 = a6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646D70, &qword_1D1E830B8);
    v26 = sub_1D1E678BC();
    v28 = sub_1D1B1312C(v26, v27, &v64);

    *(v21 + 34) = v28;
    v29 = v55;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v29, -1, -1);
    MEMORY[0x1D3893640](v21, -1, -1);
  }

  if (qword_1EE07A050 != -1)
  {
    swift_once();
  }

  v30 = sub_1D1E6701C();
  __swift_project_value_buffer(v30, qword_1EE07A058);
  sub_1D1E66FFC();
  sub_1D1E66FAC();
  v31 = v57;

  v32 = v59;

  v33 = sub_1D1E66FFC();
  v34 = sub_1D1E683EC();

  if (sub_1D1E6855C())
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    LODWORD(v56) = v34;
    v37 = v32;
    v38 = v36;
    v64 = v36;
    *v35 = 136446978;
    *(v35 + 4) = sub_1D1B1312C(a1, v31, &v64);
    *(v35 + 12) = 2082;
    v39 = sub_1D1E6940C();
    v41 = sub_1D1B1312C(v39, v40, &v64);

    *(v35 + 14) = v41;
    *(v35 + 22) = 2082;
    *(v35 + 24) = sub_1D1B1312C(v58, v37, &v64);
    *(v35 + 32) = 2082;
    v63 = a6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646D70, &qword_1D1E830B8);
    v42 = sub_1D1E678BC();
    v44 = sub_1D1B1312C(v42, v43, &v64);

    *(v35 + 34) = v44;
    v45 = sub_1D1E66FBC();
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v38, -1, -1);
    MEMORY[0x1D3893640](v35, -1, -1);
  }

  v46 = v61;
  v47 = v16;
  v48 = v16;
  v49 = v62;
  (*(v61 + 16))(v60, v47, v62);
  v50 = sub_1D1E6705C();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  v53 = sub_1D1E6704C();
  (*(v46 + 8))(v48, v49);
  return v53;
}

void sub_1D190C9A8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  os_unfair_lock_lock((a7 + 24));
  sub_1D190D0D0((a7 + 16));
  os_unfair_lock_unlock((a7 + 24));
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v13 = sub_1D1E6709C();
  __swift_project_value_buffer(v13, qword_1EE07A0B0);
  sub_1D18C20AC(a6, v27);

  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6835C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v17;
    *v16 = 136446978;
    *(v16 + 4) = sub_1D1B1312C(a1, a2, &v26);
    *(v16 + 12) = 2082;
    v18 = sub_1D1E6940C();
    v20 = sub_1D1B1312C(v18, v19, &v26);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2082;
    *(v16 + 24) = sub_1D1B1312C(a4, a5, &v26);
    *(v16 + 32) = 2082;
    sub_1D18C20AC(v27, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
    v21 = sub_1D1E678BC();
    v23 = v22;
    sub_1D1741A30(v27, &qword_1EC645D58, &unk_1D1E7E530);
    v24 = sub_1D1B1312C(v21, v23, &v26);

    *(v16 + 34) = v24;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v17, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {

    sub_1D1741A30(v27, &qword_1EC645D58, &unk_1D1E7E530);
  }
}

void sub_1D190CC44(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7)
{
  os_unfair_lock_lock((a7 + 24));
  sub_1D190D0F4((a7 + 16));
  os_unfair_lock_unlock((a7 + 24));
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v13 = sub_1D1E6709C();
  __swift_project_value_buffer(v13, qword_1EE07A0B0);

  v14 = a6;
  v15 = sub_1D1E6707C();
  v16 = sub_1D1E6833C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = a4;
    v19 = swift_slowAlloc();
    v26[0] = v19;
    *v17 = 136446978;
    *(v17 + 4) = sub_1D1B1312C(a1, a2, v26);
    *(v17 + 12) = 2082;
    v20 = sub_1D1E6940C();
    v22 = sub_1D1B1312C(v20, v21, v26);

    *(v17 + 14) = v22;
    *(v17 + 22) = 2082;
    *(v17 + 24) = sub_1D1B1312C(v25, a5, v26);
    *(v17 + 32) = 2114;
    v23 = a6;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 34) = v24;
    *v18 = v24;
    sub_1D1741A30(v18, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v18, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v19, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }
}

void sub_1D190CEB0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  os_unfair_lock_lock((a6 + 24));
  sub_1D190D0AC((a6 + 16));
  os_unfair_lock_unlock((a6 + 24));
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EE07A0B0);

  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6833C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19[0] = v15;
    *v14 = 136446722;
    *(v14 + 4) = sub_1D1B1312C(a1, a2, v19);
    *(v14 + 12) = 2082;
    v16 = sub_1D1E6940C();
    v18 = sub_1D1B1312C(v16, v17, v19);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2082;
    *(v14 + 24) = sub_1D1B1312C(a4, a5, v19);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    MEMORY[0x1D3893640](v14, -1, -1);
  }
}

uint64_t type metadata accessor for StaticColorControlCluster()
{
  result = qword_1EE07BF38;
  if (!qword_1EE07BF38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StaticColorControlCluster.primaries.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticColorControlCluster() + 40));
}

uint64_t StaticColorControlCluster.colorPointR.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for StaticColorControlCluster();
  v4 = (v1 + *(result + 52));
  v5 = *v4;
  v6 = *(v4 + 8);
  LOBYTE(v4) = *(v4 + 9);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 9) = v4;
  return result;
}

uint64_t StaticColorControlCluster.colorPointG.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for StaticColorControlCluster();
  v4 = (v1 + *(result + 56));
  v5 = *v4;
  v6 = *(v4 + 8);
  LOBYTE(v4) = *(v4 + 9);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 9) = v4;
  return result;
}

uint64_t StaticColorControlCluster.colorPointB.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for StaticColorControlCluster();
  v4 = (v1 + *(result + 60));
  v5 = *v4;
  v6 = *(v4 + 8);
  LOBYTE(v4) = *(v4 + 9);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 9) = v4;
  return result;
}

uint64_t StaticColorControlCluster.currentColorMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticColorControlCluster();
  *a1 = *(v1 + *(result + 80));
  return result;
}

uint64_t StaticColorControlCluster.compensationText.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticColorControlCluster() + 88));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

int *StaticColorControlCluster.init(id:currentHue:currentSaturation:enhancedCurrentHue:currentX:currentY:primaries:whitePointX:whitePointY:colorPointR:colorPointG:colorPointB:currentColorTemperature:colorTemperatureMin:colorTemperatureMax:supportedColorModes:currentColorMode:driftCompensation:compensationText:)@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, __int16 a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, __int16 a10, char a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, __int16 a15, char a16, __int16 a17, char a18, __int16 a19, char a20, __int16 a21, char *a22, char a23, char a24, uint64_t a25, uint64_t a26)
{
  v51 = *a12;
  v49 = *(a12 + 9);
  v50 = *(a12 + 8);
  v54 = *a13;
  v52 = *(a13 + 9);
  v53 = *(a13 + 8);
  v57 = *a14;
  v55 = *(a14 + 9);
  v56 = *(a14 + 8);
  v59 = *a22;
  sub_1D190D804(a1, a9);
  result = type metadata accessor for StaticColorControlCluster();
  v34 = (a9 + result[5]);
  *v34 = a2;
  v34[1] = HIBYTE(a2) & 1;
  v35 = (a9 + result[6]);
  *v35 = a3;
  v35[1] = HIBYTE(a3) & 1;
  v36 = a9 + result[7];
  *v36 = a4;
  *(v36 + 2) = BYTE2(a4) & 1;
  v37 = a9 + result[8];
  *v37 = a5;
  *(v37 + 2) = BYTE2(a5) & 1;
  v38 = a9 + result[9];
  *v38 = a6;
  *(v38 + 2) = BYTE2(a6) & 1;
  *(a9 + result[10]) = a7;
  v39 = a9 + result[11];
  *v39 = a8;
  *(v39 + 2) = BYTE2(a8) & 1;
  v40 = a9 + result[12];
  *v40 = a10;
  *(v40 + 2) = a11 & 1;
  v41 = a9 + result[13];
  *v41 = v51;
  *(v41 + 8) = v50;
  *(v41 + 9) = v49;
  v42 = a9 + result[14];
  *v42 = v54;
  *(v42 + 8) = v53;
  *(v42 + 9) = v52;
  v43 = a9 + result[15];
  *v43 = v57;
  *(v43 + 8) = v56;
  *(v43 + 9) = v55;
  v44 = a9 + result[16];
  *v44 = a15;
  *(v44 + 2) = a16 & 1;
  v45 = a9 + result[17];
  *v45 = a17;
  *(v45 + 2) = a18 & 1;
  v46 = a9 + result[18];
  *v46 = a19;
  *(v46 + 2) = a20 & 1;
  *(a9 + result[19]) = a21;
  *(a9 + result[20]) = v59;
  v47 = (a9 + result[21]);
  *v47 = a23;
  v47[1] = a24 & 1;
  v48 = (a9 + result[22]);
  *v48 = a25;
  v48[1] = a26;
  return result;
}

uint64_t sub_1D190D804(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClusterPath(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D190D86C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x48746E6572727563;
      break;
    case 2:
    case 17:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x58746E6572727563;
      break;
    case 5:
      result = 0x59746E6572727563;
      break;
    case 6:
      result = 0x656972616D697270;
      break;
    case 7:
      result = 0x696F506574696877;
      break;
    case 8:
      result = 0x696F506574696877;
      break;
    case 9:
      result = 0x696F50726F6C6F63;
      break;
    case 10:
      result = 0x696F50726F6C6F63;
      break;
    case 11:
      result = 0x696F50726F6C6F63;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
    case 18:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D190DA9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D19143B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D190DAD0(uint64_t a1)
{
  v2 = sub_1D1913890();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D190DB0C(uint64_t a1)
{
  v2 = sub_1D1913890();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticColorControlCluster.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646D78, &qword_1D1E830E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v58 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1913890();
  sub_1D1E6930C();
  LOBYTE(v59) = 0;
  type metadata accessor for ClusterPath(0);
  sub_1D1914B04(&qword_1EC646D88, type metadata accessor for ClusterPath);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for StaticColorControlCluster();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v59) = 1;
    sub_1D1E68E8C();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v59) = 2;
    sub_1D1E68E8C();
    v18 = (v3 + v11[7]);
    v19 = *v18;
    v20 = *(v18 + 2);
    LOBYTE(v59) = 3;
    sub_1D1E68E9C();
    v21 = (v3 + v11[8]);
    v22 = *v21;
    v23 = *(v21 + 2);
    LOBYTE(v59) = 4;
    sub_1D1E68E9C();
    v24 = (v3 + v11[9]);
    v25 = *v24;
    v26 = *(v24 + 2);
    LOBYTE(v59) = 5;
    sub_1D1E68E9C();
    v59 = *(v3 + v11[10]);
    v62 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646D90, &qword_1D1E830E8);
    sub_1D191398C(&qword_1EC646D98, sub_1D19138E4);
    sub_1D1E68F1C();
    v27 = (v3 + v11[11]);
    v28 = *v27;
    v29 = *(v27 + 2);
    LOBYTE(v59) = 7;
    sub_1D1E68E9C();
    v30 = (v3 + v11[12]);
    v31 = *v30;
    v32 = *(v30 + 2);
    LOBYTE(v59) = 8;
    sub_1D1E68E9C();
    v33 = (v3 + v11[13]);
    v34 = *v33;
    v35 = *(v33 + 8);
    LOBYTE(v33) = *(v33 + 9);
    v59 = v34;
    v60 = v35;
    v61 = v33;
    v62 = 9;
    sub_1D19138E4();
    sub_1D1E68E5C();
    v36 = (v3 + v11[14]);
    v37 = *v36;
    v38 = *(v36 + 8);
    LOBYTE(v36) = *(v36 + 9);
    v59 = v37;
    v60 = v38;
    v61 = v36;
    v62 = 10;
    sub_1D1E68E5C();
    v39 = (v3 + v11[15]);
    v40 = *v39;
    v41 = *(v39 + 8);
    LOBYTE(v39) = *(v39 + 9);
    v59 = v40;
    v60 = v41;
    v61 = v39;
    v62 = 11;
    sub_1D1E68E5C();
    v42 = (v3 + v11[16]);
    v43 = *v42;
    v44 = *(v42 + 2);
    LOBYTE(v59) = 12;
    sub_1D1E68E9C();
    v45 = (v3 + v11[17]);
    v46 = *v45;
    v47 = *(v45 + 2);
    LOBYTE(v59) = 13;
    sub_1D1E68E9C();
    v48 = (v3 + v11[18]);
    v49 = *v48;
    v50 = *(v48 + 2);
    LOBYTE(v59) = 14;
    sub_1D1E68E9C();
    LOWORD(v59) = *(v3 + v11[19]);
    v62 = 15;
    type metadata accessor for MTRColorControlColorCapabilitiesBitmap(0);
    sub_1D1914B04(&qword_1EC646DA8, type metadata accessor for MTRColorControlColorCapabilitiesBitmap);
    sub_1D1E68F1C();
    LOBYTE(v59) = *(v3 + v11[20]);
    v62 = 16;
    sub_1D1913938();
    sub_1D1E68F1C();
    v51 = (v3 + v11[21]);
    v52 = *v51;
    v53 = v51[1];
    LOBYTE(v59) = 17;
    sub_1D1E68E8C();
    v54 = (v3 + v11[22]);
    v55 = *v54;
    v56 = v54[1];
    LOBYTE(v59) = 18;
    sub_1D1E68E0C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticColorControlCluster.hash(into:)(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D1914B04(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v3 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v1 + *(v3 + 20)));
  v4 = *(v1 + *(v3 + 24));
  sub_1D1E6923C();
  v5 = dword_1D1E83794[*(v1 + *(type metadata accessor for ClusterPath(0) + 20))];
  sub_1D1E6924C();
  v6 = type metadata accessor for StaticColorControlCluster();
  v7 = (v1 + v6[5]);
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  v9 = (v1 + v6[6]);
  if ((v9[1] & 1) == 0)
  {
    v10 = *v9;
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  v11 = (v1 + v6[7]);
  if (*(v11 + 2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v12 = *v11;
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  v13 = (v1 + v6[8]);
  if (*(v13 + 2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v14 = *v13;
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  v15 = (v1 + v6[9]);
  if (*(v15 + 2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v16 = *v15;
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  sub_1D17704D0(a1, *(v1 + v6[10]));
  v17 = (v1 + v6[11]);
  if (*(v17 + 2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v18 = *v17;
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  v19 = (v1 + v6[12]);
  if (*(v19 + 2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v20 = *v19;
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  v21 = (v1 + v6[13]);
  if ((*(v21 + 9) & 1) == 0)
  {
    v22 = *(v21 + 8);
    v23 = *v21;
    sub_1D1E6922C();
    if ((v23 & 0x10000) != 0)
    {
      sub_1D1E6922C();
      if ((v23 & 0x1000000000000) != 0)
      {
LABEL_24:
        sub_1D1E6922C();
        if (v22)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }
    }

    else
    {
      sub_1D1E6922C();
      sub_1D1E6923C();
      if ((v23 & 0x1000000000000) != 0)
      {
        goto LABEL_24;
      }
    }

    sub_1D1E6922C();
    sub_1D1E6923C();
    if (v22)
    {
      goto LABEL_29;
    }

LABEL_28:
    sub_1D1E6922C();
  }

LABEL_29:
  sub_1D1E6922C();
  v24 = (v1 + v6[14]);
  if (*(v24 + 9))
  {
    goto LABEL_38;
  }

  v25 = *(v24 + 8);
  v26 = *v24;
  sub_1D1E6922C();
  if ((v26 & 0x10000) != 0)
  {
    sub_1D1E6922C();
    if ((v26 & 0x1000000000000) != 0)
    {
LABEL_33:
      sub_1D1E6922C();
      if ((v25 & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_38;
    }
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6923C();
    if ((v26 & 0x1000000000000) != 0)
    {
      goto LABEL_33;
    }
  }

  sub_1D1E6922C();
  sub_1D1E6923C();
  if ((v25 & 1) == 0)
  {
LABEL_37:
    sub_1D1E6922C();
  }

LABEL_38:
  sub_1D1E6922C();
  v27 = (v1 + v6[15]);
  if (*(v27 + 9))
  {
    goto LABEL_47;
  }

  v28 = *(v27 + 8);
  v29 = *v27;
  sub_1D1E6922C();
  if ((v29 & 0x10000) != 0)
  {
    sub_1D1E6922C();
    if ((v29 & 0x1000000000000) != 0)
    {
LABEL_42:
      sub_1D1E6922C();
      if ((v28 & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_47;
    }
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6923C();
    if ((v29 & 0x1000000000000) != 0)
    {
      goto LABEL_42;
    }
  }

  sub_1D1E6922C();
  sub_1D1E6923C();
  if ((v28 & 1) == 0)
  {
LABEL_46:
    sub_1D1E6922C();
  }

LABEL_47:
  sub_1D1E6922C();
  v30 = (v1 + v6[16]);
  if (v30[1])
  {
    sub_1D1E6922C();
  }

  else
  {
    v31 = *v30;
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  v32 = (v1 + v6[17]);
  if (*(v32 + 2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v33 = *v32;
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  v34 = (v1 + v6[18]);
  if (*(v34 + 2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v35 = *v34;
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  v36 = *(v1 + v6[19]);
  sub_1D1E6923C();
  v37 = *(v1 + v6[20]);
  sub_1D1E6922C();
  v38 = (v1 + v6[21]);
  if ((v38[1] & 1) == 0)
  {
    v39 = *v38;
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  v40 = (v1 + v6[22]);
  if (!v40[1])
  {
    return sub_1D1E6922C();
  }

  v41 = *v40;
  sub_1D1E6922C();

  return sub_1D1E678EC();
}

uint64_t StaticColorControlCluster.hashValue.getter()
{
  sub_1D1E6920C();
  StaticColorControlCluster.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticColorControlCluster.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v4 = type metadata accessor for ClusterPath(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646DB8, &unk_1D1E830F0);
  v60 = *(v8 - 8);
  v61 = v8;
  v9 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v58 - v10;
  v12 = type metadata accessor for StaticColorControlCluster();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D1913890();
  v62 = v11;
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v63);
  }

  v18 = v60;
  v58 = v12;
  v19 = v15;
  LOBYTE(v64) = 0;
  sub_1D1914B04(&qword_1EC646DC0, type metadata accessor for ClusterPath);
  sub_1D1E68D7C();
  sub_1D190D804(v7, v15);
  LOBYTE(v64) = 1;
  v20 = sub_1D1E68CEC();
  v21 = v58;
  v22 = (v19 + v58[5]);
  *v22 = v20;
  v22[1] = HIBYTE(v20) & 1;
  LOBYTE(v64) = 2;
  v23 = sub_1D1E68CEC();
  v24 = (v19 + v21[6]);
  *v24 = v23;
  v24[1] = HIBYTE(v23) & 1;
  LOBYTE(v64) = 3;
  v25 = sub_1D1E68CFC();
  v26 = v19 + v21[7];
  *v26 = v25;
  *(v26 + 2) = BYTE2(v25) & 1;
  LOBYTE(v64) = 4;
  v27 = sub_1D1E68CFC();
  v28 = v19 + v21[8];
  *v28 = v27;
  *(v28 + 2) = BYTE2(v27) & 1;
  LOBYTE(v64) = 5;
  v29 = sub_1D1E68CFC();
  v30 = v19 + v21[9];
  *v30 = v29;
  *(v30 + 2) = BYTE2(v29) & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646D90, &qword_1D1E830E8);
  v67 = 6;
  sub_1D191398C(&qword_1EC646DC8, sub_1D1913A04);
  sub_1D1E68D7C();
  *(v19 + v21[10]) = v64;
  LOBYTE(v64) = 7;
  v31 = sub_1D1E68CFC();
  v32 = v19 + v21[11];
  *v32 = v31;
  *(v32 + 2) = BYTE2(v31) & 1;
  LOBYTE(v64) = 8;
  v33 = sub_1D1E68CFC();
  v34 = v19 + v21[12];
  *v34 = v33;
  *(v34 + 2) = BYTE2(v33) & 1;
  v67 = 9;
  sub_1D1913A04();
  sub_1D1E68CBC();
  v35 = v65;
  v36 = v66;
  v37 = v19 + v58[13];
  *v37 = v64;
  *(v37 + 8) = v35;
  *(v37 + 9) = v36;
  v67 = 10;
  sub_1D1E68CBC();
  v38 = v65;
  v39 = v66;
  v40 = v19 + v58[14];
  *v40 = v64;
  *(v40 + 8) = v38;
  *(v40 + 9) = v39;
  v67 = 11;
  sub_1D1E68CBC();
  v41 = v65;
  v42 = v66;
  v43 = v19 + v58[15];
  *v43 = v64;
  *(v43 + 8) = v41;
  *(v43 + 9) = v42;
  LOBYTE(v64) = 12;
  v44 = sub_1D1E68CFC();
  v45 = v19 + v58[16];
  *v45 = v44;
  *(v45 + 2) = BYTE2(v44) & 1;
  LOBYTE(v64) = 13;
  v46 = sub_1D1E68CFC();
  v47 = v19 + v58[17];
  *v47 = v46;
  *(v47 + 2) = BYTE2(v46) & 1;
  LOBYTE(v64) = 14;
  v48 = sub_1D1E68CFC();
  v49 = v19 + v58[18];
  *v49 = v48;
  *(v49 + 2) = BYTE2(v48) & 1;
  type metadata accessor for MTRColorControlColorCapabilitiesBitmap(0);
  v67 = 15;
  sub_1D1914B04(&qword_1EC646DD8, type metadata accessor for MTRColorControlColorCapabilitiesBitmap);
  sub_1D1E68D7C();
  *(v19 + v58[19]) = v64;
  v67 = 16;
  sub_1D1913A58();
  sub_1D1E68D7C();
  *(v19 + v58[20]) = v64;
  LOBYTE(v64) = 17;
  v50 = sub_1D1E68CEC();
  v51 = (v19 + v58[21]);
  *v51 = v50;
  v51[1] = HIBYTE(v50) & 1;
  LOBYTE(v64) = 18;
  v52 = sub_1D1E68C6C();
  v54 = v53;
  (*(v18 + 8))(v62, v61);
  v55 = v59;
  v56 = (v19 + v58[22]);
  *v56 = v52;
  v56[1] = v54;
  sub_1D1913AAC(v19, v55, type metadata accessor for StaticColorControlCluster);
  __swift_destroy_boxed_opaque_existential_1(v63);
  return sub_1D1913B14(v19, type metadata accessor for StaticColorControlCluster);
}

uint64_t sub_1D190F070()
{
  sub_1D1E6920C();
  StaticColorControlCluster.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D190F0B4()
{
  sub_1D1E6920C();
  StaticColorControlCluster.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticColorControlCluster.description.getter()
{
  v1 = 7104878;
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD00000000000001BLL, 0x80000001D1EBE0D0);
  v2 = ClusterPath.description.getter();
  MEMORY[0x1D3890F70](v2);

  MEMORY[0x1D3890F70](0x6E6572727563202CLL, 0xED00003A65754874);
  v3 = type metadata accessor for StaticColorControlCluster();
  v4 = (v0 + v3[5]);
  if (v4[1])
  {
    v5 = 0xE300000000000000;
    v6 = 7104878;
  }

  else
  {
    v39 = *v4;
    v6 = sub_1D1E68FAC();
    v5 = v7;
  }

  MEMORY[0x1D3890F70](v6, v5);

  MEMORY[0x1D3890F70](0xD000000000000015, 0x80000001D1EBE0F0);
  v8 = (v0 + v3[6]);
  if (v8[1])
  {
    v9 = 0xE300000000000000;
    v10 = 7104878;
  }

  else
  {
    v40 = *v8;
    v10 = sub_1D1E68FAC();
    v9 = v11;
  }

  MEMORY[0x1D3890F70](v10, v9);

  MEMORY[0x1D3890F70](0x6572727563200A2CLL, 0xED0000203A58746ELL);
  v12 = (v0 + v3[8]);
  if (v12[1])
  {
    v13 = 0xE300000000000000;
    v14 = 7104878;
  }

  else
  {
    v41 = *v12;
    v14 = sub_1D1E68FAC();
    v13 = v15;
  }

  MEMORY[0x1D3890F70](v14, v13);

  MEMORY[0x1D3890F70](0x6E6572727563202CLL, 0xEC000000203A5974);
  v16 = (v0 + v3[9]);
  if (v16[1])
  {
    v17 = 0xE300000000000000;
    v18 = 7104878;
  }

  else
  {
    v42 = *v16;
    v18 = sub_1D1E68FAC();
    v17 = v19;
  }

  MEMORY[0x1D3890F70](v18, v17);

  MEMORY[0x1D3890F70](0xD00000000000001CLL, 0x80000001D1EBE110);
  v20 = (v0 + v3[16]);
  if (v20[1])
  {
    v21 = 0xE300000000000000;
    v22 = 7104878;
  }

  else
  {
    v43 = *v20;
    v22 = sub_1D1E68FAC();
    v21 = v23;
  }

  MEMORY[0x1D3890F70](v22, v21);

  MEMORY[0x1D3890F70](0xD000000000000018, 0x80000001D1EBE130);
  v24 = (v0 + v3[17]);
  if (v24[1])
  {
    v25 = 0xE300000000000000;
    v26 = 7104878;
  }

  else
  {
    v44 = *v24;
    v26 = sub_1D1E68FAC();
    v25 = v27;
  }

  MEMORY[0x1D3890F70](v26, v25);

  MEMORY[0x1D3890F70](0xD000000000000018, 0x80000001D1EBE150);
  v28 = (v0 + v3[18]);
  if (v28[1])
  {
    v29 = 0xE300000000000000;
    v30 = 7104878;
  }

  else
  {
    v45 = *v28;
    v30 = sub_1D1E68FAC();
    v29 = v31;
  }

  MEMORY[0x1D3890F70](v30, v29);

  MEMORY[0x1D3890F70](0xD000000000000018, 0x80000001D1EBE170);
  v46 = *(v0 + v3[19]);
  type metadata accessor for MTRColorControlColorCapabilitiesBitmap(0);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EBE190);
  LOBYTE(v46) = *(v0 + v3[20]);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](0xD000000000000016, 0x80000001D1EBE1B0);
  v32 = (v0 + v3[21]);
  if (v32[1])
  {
    v33 = 0xE300000000000000;
    v34 = 7104878;
  }

  else
  {
    v47 = *v32;
    v34 = sub_1D1E68FAC();
    v33 = v35;
  }

  MEMORY[0x1D3890F70](v34, v33);

  MEMORY[0x1D3890F70](0xD000000000000015, 0x80000001D1EBE1D0);
  v36 = (v0 + v3[22]);
  if (v36[1])
  {
    v1 = *v36;
    v37 = v36[1];
  }

  else
  {
    v37 = 0xE300000000000000;
  }

  MEMORY[0x1D3890F70](v1, v37);

  return 0;
}

uint64_t StaticColorControlCluster.init(path:valueSource:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ClusterPath(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2[1];
  v74 = *a2;
  v11 = v74;
  v75 = v10;
  sub_1D190FDA4(a1, &v76);
  v73 = v76;
  v74 = v11;
  v75 = v10;
  v72 = sub_1D19101E0(a1);
  sub_1D1913AAC(a1, v9, type metadata accessor for ClusterPath);
  v71 = sub_1D1912E6C(0, v9, v11, v10);
  sub_1D1913B14(v9, type metadata accessor for ClusterPath);
  sub_1D1913AAC(a1, v9, type metadata accessor for ClusterPath);
  v70 = sub_1D1912E6C(1, v9, v11, v10);
  sub_1D1913B14(v9, type metadata accessor for ClusterPath);
  sub_1D1913AAC(a1, v9, type metadata accessor for ClusterPath);
  v69 = sub_1D18F5A60(0x4000, v9, v11, v10);
  sub_1D1913B14(v9, type metadata accessor for ClusterPath);
  sub_1D1913AAC(a1, v9, type metadata accessor for ClusterPath);
  v68 = sub_1D18F5A60(3, v9, v11, v10);
  sub_1D1913B14(v9, type metadata accessor for ClusterPath);
  sub_1D1913AAC(a1, v9, type metadata accessor for ClusterPath);
  v67 = sub_1D18F5A60(4, v9, v11, v10);
  sub_1D1913B14(v9, type metadata accessor for ClusterPath);
  v74 = v11;
  v75 = v10;
  v66 = sub_1D19103F4(a1);
  sub_1D1913AAC(a1, v9, type metadata accessor for ClusterPath);
  v65 = sub_1D18F5A60(48, v9, v11, v10);
  sub_1D1913B14(v9, type metadata accessor for ClusterPath);
  sub_1D1913AAC(a1, v9, type metadata accessor for ClusterPath);
  v64 = sub_1D18F5A60(49, v9, v11, v10);
  sub_1D1913B14(v9, type metadata accessor for ClusterPath);
  v12 = sub_1D18F5A60(50, a1, v11, v10);
  v13 = sub_1D18F5A60(51, a1, v11, v10);
  v14 = sub_1D1912E6C(52, a1, v11, v10);
  v63 = ((v13 & v12) >> 16) & ((v14 & 0x100) >> 8);
  if (v63)
  {
    v62 = 0;
    v61 = 0;
  }

  else
  {
    v62 = v12 & 0x1FFFF | ((v13 & 0x1FFFF) << 32) | (v14 << 56);
    v61 = (v14 & 0x100) >> 8;
  }

  v15 = sub_1D18F5A60(54, a1, v11, v10);
  v16 = sub_1D18F5A60(55, a1, v11, v10);
  v17 = sub_1D1912E6C(56, a1, v11, v10);
  v60 = ((v16 & v15) >> 16) & ((v17 & 0x100) >> 8);
  if (v60)
  {
    v59 = 0;
    v58 = 0;
  }

  else
  {
    v59 = v15 & 0x1FFFF | ((v16 & 0x1FFFF) << 32) | (v17 << 56);
    v58 = (v17 & 0x100) >> 8;
  }

  v18 = sub_1D18F5A60(58, a1, v11, v10);
  v19 = sub_1D18F5A60(59, a1, v11, v10);
  v20 = sub_1D1912E6C(60, a1, v11, v10);
  v57 = ((v19 & v18) >> 16) & ((v20 & 0x100) >> 8);
  if (v57)
  {
    v56 = 0;
    v55 = 0;
  }

  else
  {
    v56 = v18 & 0x1FFFF | ((v19 & 0x1FFFF) << 32) | (v20 << 56);
    v55 = (v20 & 0x100) >> 8;
  }

  sub_1D1913AAC(a1, v9, type metadata accessor for ClusterPath);
  v21 = sub_1D18F5A60(7, v9, v11, v10);
  sub_1D1913B14(v9, type metadata accessor for ClusterPath);
  sub_1D1913AAC(a1, v9, type metadata accessor for ClusterPath);
  v22 = sub_1D18F5A60(16395, v9, v11, v10);
  sub_1D1913B14(v9, type metadata accessor for ClusterPath);
  sub_1D1913AAC(a1, v9, type metadata accessor for ClusterPath);
  v23 = sub_1D18F5A60(16396, v9, v11, v10);
  sub_1D1913B14(v9, type metadata accessor for ClusterPath);
  sub_1D1913AAC(a1, v9, type metadata accessor for ClusterPath);
  v24 = sub_1D1912E6C(5, v9, v11, v10);
  sub_1D1913B14(v9, type metadata accessor for ClusterPath);
  sub_1D1913AAC(a1, v9, type metadata accessor for ClusterPath);
  v25 = sub_1D1912A98(6, v9, v11, v10);
  v54 = v26;

  sub_1D1913B14(v9, type metadata accessor for ClusterPath);
  sub_1D190D804(a1, a3);
  v27 = type metadata accessor for StaticColorControlCluster();
  v28 = (a3 + v27[5]);
  v29 = BYTE1(v71);
  *v28 = v71;
  v28[1] = v29 & 1;
  v30 = (a3 + v27[6]);
  v31 = BYTE1(v70);
  *v30 = v70;
  v30[1] = v31 & 1;
  v32 = a3 + v27[7];
  v33 = BYTE2(v69);
  *v32 = v69;
  *(v32 + 2) = v33 & 1;
  v34 = a3 + v27[8];
  v35 = BYTE2(v68);
  *v34 = v68;
  *(v34 + 2) = v35 & 1;
  v36 = a3 + v27[9];
  v37 = BYTE2(v67);
  *v36 = v67;
  *(v36 + 2) = v37 & 1;
  *(a3 + v27[10]) = v66;
  v38 = a3 + v27[11];
  v39 = BYTE2(v65);
  *v38 = v65;
  *(v38 + 2) = v39 & 1;
  v40 = a3 + v27[12];
  v41 = BYTE2(v64);
  *v40 = v64;
  *(v40 + 2) = v41 & 1;
  v42 = a3 + v27[13];
  *v42 = v62;
  *(v42 + 8) = v61;
  *(v42 + 9) = v63;
  v43 = a3 + v27[14];
  *v43 = v59;
  *(v43 + 8) = v58;
  *(v43 + 9) = v60;
  v44 = a3 + v27[15];
  *v44 = v56;
  *(v44 + 8) = v55;
  *(v44 + 9) = v57;
  v45 = a3 + v27[16];
  *v45 = v21;
  *(v45 + 2) = BYTE2(v21) & 1;
  v46 = a3 + v27[17];
  *v46 = v22;
  *(v46 + 2) = BYTE2(v22) & 1;
  v47 = a3 + v27[18];
  *v47 = v23;
  *(v47 + 2) = BYTE2(v23) & 1;
  v48 = v73;
  *(a3 + v27[19]) = v72;
  *(a3 + v27[20]) = v48;
  v49 = (a3 + v27[21]);
  *v49 = v24;
  v49[1] = HIBYTE(v24) & 1;
  v50 = (a3 + v27[22]);
  v51 = v54;
  *v50 = v25;
  v50[1] = v51;
  return (*(*(v27 - 1) + 56))(a3, 0, 1, v27);
}

uint64_t sub_1D190FDA4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = type metadata accessor for ClusterPath(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v38[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v38[-v10];
  v12 = *v2;
  v13 = v2[1];
  if ((sub_1D1912E6C(16385, a1, *v2, v13) & 0x1FF) != 3)
  {
    result = sub_1D1912E6C(8, a1, v12, v13);
    if ((result & 0x100) != 0)
    {
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v28 = sub_1D1E6709C();
      __swift_project_value_buffer(v28, qword_1EE07A0B0);
      sub_1D1913AAC(a1, v9, type metadata accessor for ClusterPath);
      v29 = sub_1D1E6707C();
      v30 = sub_1D1E6833C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v39 = v32;
        *v31 = 136446210;
        v33 = ClusterPath.description.getter();
        v35 = v34;
        sub_1D1913B14(v9, type metadata accessor for ClusterPath);
        v36 = sub_1D1B1312C(v33, v35, &v39);

        *(v31 + 4) = v36;
        _os_log_impl(&dword_1D16EC000, v29, v30, "Couldn't get value for color mode. path:'%{public}s'. Defaulting to HueSaturation.", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v32);
        MEMORY[0x1D3893640](v32, -1, -1);
        MEMORY[0x1D3893640](v31, -1, -1);

        goto LABEL_16;
      }

      v37 = v9;
    }

    else
    {
      if (result < 4u)
      {
        goto LABEL_17;
      }

      v15 = result;
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v16 = sub_1D1E6709C();
      __swift_project_value_buffer(v16, qword_1EE07A0B0);
      sub_1D1913AAC(a1, v11, type metadata accessor for ClusterPath);
      v17 = sub_1D1E6707C();
      v18 = sub_1D1E6833C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v39 = v20;
        *v19 = 136446466;
        v38[7] = v15;
        v21 = sub_1D1E678BC();
        v23 = sub_1D1B1312C(v21, v22, &v39);

        *(v19 + 4) = v23;
        *(v19 + 12) = 2082;
        v24 = ClusterPath.description.getter();
        v26 = v25;
        sub_1D1913B14(v11, type metadata accessor for ClusterPath);
        v27 = sub_1D1B1312C(v24, v26, &v39);

        *(v19 + 14) = v27;
        _os_log_impl(&dword_1D16EC000, v17, v18, "Couldn't create ColorMode enum from value : (%{public}s path:'%{public}s'. Defaulting to HueSaturation.", v19, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v20, -1, -1);
        MEMORY[0x1D3893640](v19, -1, -1);

LABEL_16:
        result = 0;
        goto LABEL_17;
      }

      v37 = v11;
    }

    sub_1D1913B14(v37, type metadata accessor for ClusterPath);
    goto LABEL_16;
  }

  result = 3;
LABEL_17:
  *a2 = result;
  return result;
}

uint64_t sub_1D19101E0(uint64_t a1)
{
  v3 = type metadata accessor for ClusterPath(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D18F5A60(16394, a1, *v1, v1[1]);
  if ((result & 0x10000) != 0)
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v8 = sub_1D1E6709C();
    __swift_project_value_buffer(v8, qword_1EE07A0B0);
    sub_1D1913AAC(a1, v6, type metadata accessor for ClusterPath);
    v9 = sub_1D1E6707C();
    v10 = sub_1D1E6833C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136446210;
      v13 = ClusterPath.description.getter();
      v15 = v14;
      sub_1D1913B14(v6, type metadata accessor for ClusterPath);
      v16 = sub_1D1B1312C(v13, v15, &v18);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_1D16EC000, v9, v10, "Couldn't get value for color capabilities. path:'%{public}s'. Defaulting to HueSaturation.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1D3893640](v12, -1, -1);
      MEMORY[0x1D3893640](v11, -1, -1);
    }

    else
    {

      sub_1D1913B14(v6, type metadata accessor for ClusterPath);
    }

    return 1;
  }

  return result;
}

char *sub_1D19103F4(uint64_t a1)
{
  v3 = type metadata accessor for ClusterPath(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v45 = v1[1];
  v46 = v7;
  v8 = sub_1D1912E6C(16, a1, v7, v45);
  v47 = MEMORY[0x1E69E7CC0];
  if ((v8 & 0x100) == 0)
  {
    v44 = v6;
    LODWORD(v6) = v8;
    if (v8)
    {
      if (v8 >= 7u)
      {
        if (qword_1EE07A0A8 != -1)
        {
          goto LABEL_32;
        }

        goto LABEL_5;
      }

LABEL_8:
      v14 = 0;
      v47 = MEMORY[0x1E69E7CC0];
      v15 = &dword_1F4D60068;
      v49 = v6;
      *&v9 = 134218498;
      v42 = v9;
      v43 = a1;
      do
      {
        v16 = __OFADD__(v14, 1);
        v48 = v16;
        v17 = *(v15 - 1);
        v18 = *v15;
        v19 = v45;
        v6 = v46;
        v20 = sub_1D18F5A60(*(v15 - 2), a1, v46, v45);
        v21 = sub_1D18F5A60(v17, a1, v6, v19);
        v22 = sub_1D1912E6C(v18, a1, v6, v19);
        v23 = v22;
        if ((v20 & 0x10000) == 0 || ((v21 & 0x10000) != 0 ? (v24 = (v22 & 0x100) == 0) : (v24 = 1), v24))
        {
          v37 = v47;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = sub_1D177E1C0(0, *(v37 + 2) + 1, 1, v37);
          }

          v28 = v14 + 1;
          v39 = *(v37 + 2);
          v38 = *(v37 + 3);
          if (v39 >= v38 >> 1)
          {
            v37 = sub_1D177E1C0((v38 > 1), v39 + 1, 1, v37);
          }

          *(v37 + 2) = v39 + 1;
          v47 = v37;
          v40 = &v37[10 * v39];
          *(v40 + 16) = v20;
          v40[34] = BYTE2(v20) & 1;
          *(v40 + 18) = v21;
          v40[38] = BYTE2(v21) & 1;
          v40[39] = v23;
          v40[40] = HIBYTE(v23) & 1;
        }

        else
        {
          if (qword_1EE07A0A8 != -1)
          {
            swift_once();
          }

          v25 = sub_1D1E6709C();
          __swift_project_value_buffer(v25, qword_1EE07A0B0);
          v26 = v44;
          sub_1D1913AAC(a1, v44, type metadata accessor for ClusterPath);
          v27 = sub_1D1E6707C();
          a1 = sub_1D1E6833C();
          v28 = v14 + 1;
          if (os_log_type_enabled(v27, a1))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v50 = v30;
            *v29 = v42;
            if (v48)
            {
              __break(1u);
LABEL_32:
              swift_once();
LABEL_5:
              v10 = sub_1D1E6709C();
              __swift_project_value_buffer(v10, qword_1EE07A0B0);
              v11 = sub_1D1E6707C();
              v12 = sub_1D1E6833C();
              if (os_log_type_enabled(v11, v12))
              {
                v13 = swift_slowAlloc();
                *v13 = 16908544;
                v13[4] = v6;
                _os_log_impl(&dword_1D16EC000, v11, v12, "StaticColorControlCluster.swift:AttributeValueSet.primaries(): numberOfPrimaries is greater than 6. This is unexpected, and we still stop reading primaries at 6. numberOfPrimaries:%{public}hhu", v13, 5u);
                MEMORY[0x1D3893640](v13, -1, -1);
              }

              LODWORD(v6) = 6;
              goto LABEL_8;
            }

            v31 = v30;
            *(v29 + 4) = v14 + 1;
            *(v29 + 12) = 256;
            *(v29 + 14) = v49;
            *(v29 + 15) = 2082;
            v32 = v44;
            v33 = ClusterPath.description.getter();
            v35 = v34;
            sub_1D1913B14(v32, type metadata accessor for ClusterPath);
            v36 = sub_1D1B1312C(v33, v35, &v50);

            *(v29 + 17) = v36;
            _os_log_impl(&dword_1D16EC000, v27, a1, "Got nil ColorPoint struct for primary %ld, even though numberOfPrimaries is %hhu. path:'%{public}s'.", v29, 0x19u);
            __swift_destroy_boxed_opaque_existential_1(v31);
            MEMORY[0x1D3893640](v31, -1, -1);
            MEMORY[0x1D3893640](v29, -1, -1);
          }

          else
          {

            sub_1D1913B14(v26, type metadata accessor for ClusterPath);
          }

          a1 = v43;
        }

        v15 += 3;
        ++v14;
      }

      while (v28 != v49);
    }
  }

  return v47;
}

uint64_t StaticColorControlCluster.copyApplying(overridingAttributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for StaticColorControlCluster();
  v6 = v5;
  v7 = v5[6];
  v8 = (v2 + v5[5]);
  v114 = *v8;
  v115 = v8[1];
  v111 = *(v2 + v7);
  v9 = *(v2 + v7 + 1);
  v10 = v5[8];
  v11 = v2 + v5[7];
  v12 = *v11;
  v97 = *(v11 + 2);
  v98 = v9;
  v108 = *(v2 + v10);
  v13 = v2 + v5[9];
  v106 = v12;
  v107 = *v13;
  v101 = *(v13 + 2);
  v14 = v2 + v5[11];
  v15 = *v14;
  v99 = *(v2 + v10 + 2);
  v100 = *(v14 + 2);
  v16 = v2 + v5[12];
  v104 = v15;
  v105 = *v16;
  v102 = *(v16 + 2);
  v17 = v5[17];
  v18 = (v2 + v5[16]);
  v19 = *v18;
  v109 = *(v18 + 2);
  v96 = *(v2 + v17);
  v112 = *(v2 + v17 + 2);
  v20 = v2 + v5[18];
  v21 = 1 << *(a1 + 32);
  v110 = *v20;
  v22 = -1;
  v103 = *(v20 + 2);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a1 + 64);
  v24 = (v21 + 63) >> 6;
  v113 = *(v2 + v5[20]);

  v26 = 0;
LABEL_4:
  while (2)
  {
    while (1)
    {
      v27 = &unk_1D1E85520;
      while (1)
      {
        while (1)
        {
          do
          {
            if (!v23)
            {
              while (1)
              {
                v31 = v26 + 1;
                if (__OFADD__(v26, 1))
                {
                  break;
                }

                if (v31 >= v24)
                {

                  sub_1D1913AAC(v2, a2, type metadata accessor for ClusterPath);
                  v66 = v6[10];
                  v68 = v6[13];
                  v67 = v6[14];
                  v69 = v6[15];
                  v70 = v6[19];
                  v71 = (a2 + v6[5]);
                  v73 = v6[21];
                  v72 = v6[22];
                  *v71 = v114;
                  v71[1] = v115 & 1;
                  v74 = (a2 + v6[6]);
                  *v74 = v111;
                  v74[1] = v98 & 1;
                  v75 = a2 + v6[7];
                  *v75 = v106;
                  *(v75 + 2) = v97 & 1;
                  v76 = a2 + v6[8];
                  *v76 = v108;
                  *(v76 + 2) = v99 & 1;
                  v77 = a2 + v6[9];
                  *v77 = v107;
                  *(v77 + 2) = v101 & 1;
                  *(a2 + v6[10]) = *(v2 + v66);
                  v78 = a2 + v6[11];
                  *v78 = v104;
                  *(v78 + 2) = v100 & 1;
                  v79 = a2 + v6[12];
                  *v79 = v105;
                  v80 = v2 + v68;
                  *(v79 + 2) = v102 & 1;
                  v81 = a2 + v6[13];
                  *v81 = *v80;
                  *(v81 + 8) = *(v80 + 8);
                  v82 = v2 + v67;
                  *(v81 + 9) = *(v80 + 9);
                  v83 = a2 + v6[14];
                  *v83 = *v82;
                  *(v83 + 8) = *(v82 + 8);
                  v84 = v2 + v69;
                  *(v83 + 9) = *(v82 + 9);
                  v85 = a2 + v6[15];
                  *v85 = *v84;
                  *(v85 + 8) = *(v84 + 8);
                  *(v85 + 9) = *(v84 + 9);
                  v86 = a2 + v6[16];
                  *v86 = v19;
                  *(v86 + 2) = v109 & 1;
                  v87 = a2 + v6[17];
                  *v87 = v96;
                  *(v87 + 2) = v112 & 1;
                  v88 = a2 + v6[18];
                  *v88 = v110;
                  *(v88 + 2) = v103 & 1;
                  *(a2 + v6[19]) = *(v2 + v70);
                  *(a2 + v6[20]) = v113;
                  v89 = (a2 + v6[21]);
                  *v89 = *(v2 + v73);
                  v89[1] = *(v2 + v73 + 1);
                  v90 = (v2 + v72);
                  v91 = (a2 + v6[22]);
                  v92 = v90[1];
                  *v91 = *v90;
                  v91[1] = v92;
                }

                v23 = *(a1 + 64 + 8 * v31);
                ++v26;
                if (v23)
                {
                  v26 = v31;
                  goto LABEL_5;
                }
              }

              __break(1u);
LABEL_135:
              __break(1u);
              goto LABEL_136;
            }

LABEL_5:
            v28 = __clz(__rbit64(v23));
            v23 &= v23 - 1;
            v29 = v28 | (v26 << 6);
            v30 = *(a1 + 48) + 8 * v29;
          }

          while (*(v30 + 4) != 17);
          v95 = v19;
          v32 = *v30;
          v33 = *(a1 + 56) + 16 * v29;
          v34 = *v33;
          v35 = *(v33 + 8);
          if (v32)
          {
            break;
          }

          if (*(v33 + 8) > 2u)
          {
            v36 = *v33;
            v37 = *(v33 + 8);
            if (v35 == 3)
            {
              v38 = &qword_1EC646A50;
              v27 = &unk_1D1E910D0;
            }

            else
            {
              v38 = &unk_1EC646DE8;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(v38, v27);

            LOBYTE(v35) = v37;
          }

          v39 = v34;
          v40 = v35;
          sub_1D1741AF8(v34, v35);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
          if ((swift_dynamicCast() & 1) == 0)
          {
            v47 = v39;
            v19 = v95;
            result = sub_1D1757AE8(v47, v40);
            goto LABEL_4;
          }

          result = sub_1D1757AE8(v39, v40);
          v115 = 0;
          v114 = v116;
          v27 = &unk_1D1E85520;
          v19 = v95;
          if (v116 > 0xFF)
          {
            goto LABEL_135;
          }
        }

        v94 = *v33;
        v93 = *(v33 + 8);
        sub_1D1741AF8(v34, v35);
        if (v32 > 47)
        {
          if (v32 < 0x4000)
          {
            v41 = v93;
            if (v32 == 48)
            {
              if (v93 <= 2)
              {
                v19 = v95;
              }

              else
              {
                v19 = v95;
                if (v93 == 3)
                {
                  v54 = &qword_1EC646A50;
                  v55 = &unk_1D1E910D0;
                }

                else
                {
                  v54 = &unk_1EC646DE8;
                  v55 = &unk_1D1E85520;
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(v54, v55);
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_131;
              }

              result = sub_1D1757AE8(v94, v93);
              v104 = v116;
              if (!(v116 >> 16))
              {
                v100 = 0;
                goto LABEL_4;
              }

              goto LABEL_140;
            }

            v42 = v32 == 49;
            v43 = v94;
            v19 = v95;
            if (!v42)
            {
              goto LABEL_132;
            }

            if (v93 > 2)
            {
              if (v93 == 3)
              {
                v50 = &qword_1EC646A50;
                v51 = &unk_1D1E910D0;
              }

              else
              {
                v50 = &unk_1EC646DE8;
                v51 = &unk_1D1E85520;
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(v50, v51);
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_131;
            }

            result = sub_1D1757AE8(v94, v93);
            v105 = v116;
            if (!(v116 >> 16))
            {
              v102 = 0;
              goto LABEL_4;
            }

LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
            goto LABEL_144;
          }

          v41 = v93;
          if (v32 == 0x4000)
          {
            if (v93 <= 2)
            {
              v19 = v95;
            }

            else
            {
              v19 = v95;
              if (v93 == 3)
              {
                v56 = &qword_1EC646A50;
                v57 = &unk_1D1E910D0;
              }

              else
              {
                v56 = &unk_1EC646DE8;
                v57 = &unk_1D1E85520;
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(v56, v57);
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_131;
            }

            result = sub_1D1757AE8(v94, v93);
            v106 = v116;
            if (!(v116 >> 16))
            {
              v97 = 0;
              goto LABEL_4;
            }

            goto LABEL_138;
          }

          if (v32 == 16395)
          {
            if (v93 <= 2)
            {
              v19 = v95;
            }

            else
            {
              v19 = v95;
              if (v93 == 3)
              {
                v58 = &qword_1EC646A50;
                v59 = &unk_1D1E910D0;
              }

              else
              {
                v58 = &unk_1EC646DE8;
                v59 = &unk_1D1E85520;
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(v58, v59);
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_131;
            }

            result = sub_1D1757AE8(v94, v93);
            v96 = v116;
            if (!(v116 >> 16))
            {
              v112 = 0;
              goto LABEL_4;
            }

            goto LABEL_137;
          }

          v42 = v32 == 16396;
          v43 = v94;
          v19 = v95;
          if (!v42)
          {
            goto LABEL_132;
          }

          if (v93 > 2)
          {
            if (v93 == 3)
            {
              v48 = &qword_1EC646A50;
              v49 = &unk_1D1E910D0;
            }

            else
            {
              v48 = &unk_1EC646DE8;
              v49 = &unk_1D1E85520;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(v48, v49);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_131;
          }

          result = sub_1D1757AE8(v94, v93);
          v110 = v116;
          if (!(v116 >> 16))
          {
            v103 = 0;
            goto LABEL_4;
          }

LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (v32 <= 3)
        {
          break;
        }

        v41 = v93;
        if (v32 == 4)
        {
          if (v93 <= 2)
          {
            v19 = v95;
          }

          else
          {
            v19 = v95;
            if (v93 == 3)
            {
              v60 = &qword_1EC646A50;
              v61 = &unk_1D1E910D0;
            }

            else
            {
              v60 = &unk_1EC646DE8;
              v61 = &unk_1D1E85520;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(v60, v61);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_131;
          }

          result = sub_1D1757AE8(v94, v93);
          v107 = v116;
          if (!(v116 >> 16))
          {
            v101 = 0;
            goto LABEL_4;
          }

          goto LABEL_143;
        }

        if (v32 == 7)
        {
          if (v93 <= 2)
          {
            v19 = v95;
          }

          else
          {
            v19 = v95;
            if (v93 == 3)
            {
              v62 = &qword_1EC646A50;
              v63 = &unk_1D1E910D0;
            }

            else
            {
              v62 = &unk_1EC646DE8;
              v63 = &unk_1D1E85520;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(v62, v63);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
          if (swift_dynamicCast())
          {
            result = sub_1D1757AE8(v94, v93);
            v19 = v116;
            if (!(v116 >> 16))
            {
              v109 = 0;
              goto LABEL_4;
            }

            goto LABEL_142;
          }

LABEL_131:
          v43 = v94;
          v41 = v93;
LABEL_132:
          result = sub_1D1757AE8(v43, v41);
          goto LABEL_4;
        }

        v42 = v32 == 8;
        v19 = v95;
        v43 = v94;
        if (!v42)
        {
          goto LABEL_132;
        }

        if (v93 > 2)
        {
          if (v93 == 3)
          {
            v44 = &qword_1EC646A50;
            v45 = &unk_1D1E910D0;
          }

          else
          {
            v44 = &unk_1EC646DE8;
            v45 = &unk_1D1E85520;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(v44, v45);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
        result = swift_dynamicCast();
        if ((result & 1) == 0)
        {
          goto LABEL_4;
        }

        v27 = &unk_1D1E85520;
        if (v116 > 0xFF)
        {
          goto LABEL_141;
        }

        v46 = v113;
        if (v116 < 4)
        {
          v46 = v116;
        }

        v113 = v46;
      }

      v43 = v94;
      v41 = v93;
      if (v32 != 1)
      {
        break;
      }

      if (v93 <= 2)
      {
        v19 = v95;
      }

      else
      {
        v19 = v95;
        if (v93 == 3)
        {
          v64 = &qword_1EC646A50;
          v65 = &unk_1D1E910D0;
        }

        else
        {
          v64 = &unk_1EC646DE8;
          v65 = &unk_1D1E85520;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(v64, v65);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_131;
      }

      result = sub_1D1757AE8(v94, v93);
      v111 = v116;
      if (v116 > 0xFF)
      {
        goto LABEL_145;
      }

      v98 = 0;
    }

    v42 = v32 == 3;
    v19 = v95;
    if (!v42)
    {
      goto LABEL_132;
    }

    if (v93 > 2)
    {
      if (v93 == 3)
      {
        v52 = &qword_1EC646A50;
        v53 = &unk_1D1E910D0;
      }

      else
      {
        v52 = &unk_1EC646DE8;
        v53 = &unk_1D1E85520;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(v52, v53);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_131;
    }

    result = sub_1D1757AE8(v94, v93);
    v108 = v116;
    if (!(v116 >> 16))
    {
      v99 = 0;
      continue;
    }

    break;
  }

LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
  return result;
}

HomeDataModel::StaticColorControlCluster::ColorMode_optional __swiftcall StaticColorControlCluster.ColorMode.init(rawValue:)(HomeDataModel::StaticColorControlCluster::ColorMode_optional rawValue)
{
  value = rawValue.value;
  if ((rawValue.value & 0xFC) != 0)
  {
    value = HomeDataModel_StaticColorControlCluster_ColorMode_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

uint64_t sub_1D19118B0()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E6923C();
  return sub_1D1E6926C();
}

uint64_t sub_1D1911924()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E6923C();
  return sub_1D1E6926C();
}

uint64_t sub_1D1911B3C()
{
  v1 = 121;
  if (*v0 != 1)
  {
    v1 = 0x7469736E65746E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 120;
  }
}

uint64_t sub_1D1911B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D19149A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1911BAC(uint64_t a1)
{
  v2 = sub_1D1913B74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1911BE8(uint64_t a1)
{
  v2 = sub_1D1913B74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticColorControlCluster.ColorPoint.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646DF0, &qword_1D1E83100);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = *(v1 + 2);
  v10 = v1[2];
  v15[4] = *(v1 + 6);
  v15[5] = v10;
  v11 = *(v1 + 7);
  v15[2] = *(v1 + 8);
  v15[3] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1913B74();
  sub_1D1E6930C();
  v19 = 0;
  v13 = v16;
  sub_1D1E68E9C();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v18 = 1;
  sub_1D1E68E9C();
  v17 = 2;
  sub_1D1E68E8C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t StaticColorControlCluster.ColorPoint.hash(into:)()
{
  v1 = v0[2];
  v2 = *(v0 + 6);
  v3 = *(v0 + 7);
  v4 = *(v0 + 8);
  if (*(v0 + 2) == 1)
  {
    sub_1D1E6922C();
    if (!v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1D1E6922C();
    if (v4)
    {
      return sub_1D1E6922C();
    }

    goto LABEL_4;
  }

  v5 = *v0;
  sub_1D1E6922C();
  sub_1D1E6923C();
  if (v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1D1E6922C();
  sub_1D1E6923C();
  if ((v4 & 1) == 0)
  {
LABEL_4:
    sub_1D1E6922C();
  }

  return sub_1D1E6922C();
}

uint64_t StaticColorControlCluster.ColorPoint.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = v0[2];
  v4 = *(v0 + 6);
  v5 = *(v0 + 7);
  v6 = *(v0 + 8);
  sub_1D1E6920C();
  if (v2 == 1)
  {
    sub_1D1E6922C();
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1D1E6922C();
    if (v6)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  sub_1D1E6922C();
  sub_1D1E6923C();
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1D1E6922C();
  sub_1D1E6923C();
  if ((v6 & 1) == 0)
  {
LABEL_4:
    sub_1D1E6922C();
  }

LABEL_7:
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t StaticColorControlCluster.ColorPoint.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E00, &qword_1D1E83108);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1913B74();
  sub_1D1E692FC();
  if (!v2)
  {
    v18 = 0;
    v11 = sub_1D1E68CFC();
    v17 = 1;
    v12 = sub_1D1E68CFC();
    v16 = 2;
    v14 = sub_1D1E68CEC();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 2) = BYTE2(v11) & 1;
    *(a2 + 4) = v12;
    *(a2 + 6) = BYTE2(v12) & 1;
    *(a2 + 7) = v14;
    *(a2 + 8) = HIBYTE(v14) & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1912174()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = v0[2];
  v4 = *(v0 + 6);
  v5 = *(v0 + 7);
  v6 = *(v0 + 8);
  sub_1D1E6920C();
  if (v2 == 1)
  {
    sub_1D1E6922C();
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1D1E6922C();
    if (v6)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  sub_1D1E6922C();
  sub_1D1E6923C();
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1D1E6922C();
  sub_1D1E6923C();
  if ((v6 & 1) == 0)
  {
LABEL_4:
    sub_1D1E6922C();
  }

LABEL_7:
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

void StaticColorControlCluster.lightbulbColor.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StaticColorControlCluster();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v68 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v14 = &v68 - v13;
  if (*(v1 + v11[20]) > 1u)
  {
    if (*(v1 + v11[20]) == 2)
    {
      v26 = (v1 + v11[16]);
      if ((v26[1] & 1) == 0)
      {
        v48 = *v26;
        *(a1 + 16) = 0;
        *a1 = v48;
        goto LABEL_24;
      }

      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v27 = sub_1D1E6709C();
      __swift_project_value_buffer(v27, qword_1EE07A0B0);
      sub_1D1913AAC(v1, v14, type metadata accessor for StaticColorControlCluster);
      v28 = sub_1D1E6707C();
      v29 = sub_1D1E6835C();
      if (!os_log_type_enabled(v28, v29))
      {

        v47 = v14;
        goto LABEL_37;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v69 = v31;
      *v30 = 136446210;
      v32 = StaticColorControlCluster.description.getter();
      v34 = v33;
      sub_1D1913B14(v14, type metadata accessor for StaticColorControlCluster);
      v35 = sub_1D1B1312C(v32, v34, &v69);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_1D16EC000, v28, v29, "ColorMode is set to color temperature, but we failed to retrieve a color temperature value. %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1D3893640](v31, -1, -1);
      v36 = v30;
LABEL_21:
      MEMORY[0x1D3893640](v36, -1, -1);

      goto LABEL_38;
    }

LABEL_15:
    v37 = (v1 + v11[5]);
    if ((v37[1] & 1) == 0)
    {
      v38 = (v1 + v11[6]);
      if ((v38[1] & 1) == 0)
      {
        v50 = *v37 / 254.0;
        LOBYTE(v12) = *v38;
        v51 = v12;
LABEL_26:
        *a1 = v50;
        *(a1 + 8) = v51 / 254.0;
        *(a1 + 16) = 0;
        v49 = 1;
        goto LABEL_39;
      }
    }

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v39 = sub_1D1E6709C();
    __swift_project_value_buffer(v39, qword_1EE07A0B0);
    sub_1D1913AAC(v1, v10, type metadata accessor for StaticColorControlCluster);
    v28 = sub_1D1E6707C();
    v40 = sub_1D1E6835C();
    if (!os_log_type_enabled(v28, v40))
    {

      v47 = v10;
      goto LABEL_37;
    }

    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v69 = v42;
    *v41 = 136446210;
    v43 = StaticColorControlCluster.description.getter();
    v45 = v44;
    sub_1D1913B14(v10, type metadata accessor for StaticColorControlCluster);
    v46 = sub_1D1B1312C(v43, v45, &v69);

    *(v41 + 4) = v46;
    _os_log_impl(&dword_1D16EC000, v28, v40, "ColorMode is set to hueSaturation, but we failed to retrieve hue/saturation values. %{public}s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x1D3893640](v42, -1, -1);
    v36 = v41;
    goto LABEL_21;
  }

  if (!*(v1 + v11[20]))
  {
    goto LABEL_15;
  }

  v15 = v1 + v11[8];
  if (*(v15 + 2) & 1) != 0 || (v16 = v1 + v11[9], (*(v16 + 2)))
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v17 = sub_1D1E6709C();
    __swift_project_value_buffer(v17, qword_1EE07A0B0);
    sub_1D1913AAC(v1, v7, type metadata accessor for StaticColorControlCluster);
    v18 = sub_1D1E6707C();
    v19 = sub_1D1E6835C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v69 = v21;
      *v20 = 136446210;
      v22 = StaticColorControlCluster.description.getter();
      v24 = v23;
      sub_1D1913B14(v7, type metadata accessor for StaticColorControlCluster);
      v25 = sub_1D1B1312C(v22, v24, &v69);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_1D16EC000, v18, v19, "ColorMode is set to XY, but we failed to retrieve XY values. %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1D3893640](v21, -1, -1);
      MEMORY[0x1D3893640](v20, -1, -1);

LABEL_38:
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      v49 = -1;
      goto LABEL_39;
    }

    v47 = v7;
LABEL_37:
    sub_1D1913B14(v47, type metadata accessor for StaticColorControlCluster);
    goto LABEL_38;
  }

  v52 = *v15;
  v53 = *v16;
  v54 = (v1 + v11[16]);
  if (v54[1])
  {
    v55 = (v1 + v11[5]);
    if (v55[1])
    {
      goto LABEL_38;
    }

    v56 = (v1 + v11[6]);
    if (v56[1])
    {
      goto LABEL_38;
    }

    v57 = *v55;
    v58 = *v56;
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v59 = sub_1D1E6709C();
    __swift_project_value_buffer(v59, qword_1EE07A0B0);
    v60 = sub_1D1E6707C();
    v61 = sub_1D1E6835C();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 33555456;
      *(v62 + 4) = v52;
      *(v62 + 6) = 512;
      *(v62 + 8) = v53;
      *(v62 + 10) = 256;
      *(v62 + 12) = v57;
      *(v62 + 13) = 256;
      *(v62 + 15) = v58;
      _os_log_impl(&dword_1D16EC000, v60, v61, "ColorMode is set to XY (%hu,%hu), but we are falling back to hue: %hhu saturation: %hhu", v62, 0x10u);
      MEMORY[0x1D3893640](v62, -1, -1);
    }

    v50 = v57 / 254.0;
    v51 = v58;
    goto LABEL_26;
  }

  v63 = *v54;
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v64 = sub_1D1E6709C();
  __swift_project_value_buffer(v64, qword_1EE07A0B0);
  v65 = sub_1D1E6707C();
  v66 = sub_1D1E6835C();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 33555200;
    *(v67 + 4) = v52;
    *(v67 + 6) = 512;
    *(v67 + 8) = v53;
    *(v67 + 10) = 512;
    *(v67 + 12) = v63;
    _os_log_impl(&dword_1D16EC000, v65, v66, "ColorMode is set to XY (%hu,%hu), but we are falling back to color temperature: %hu", v67, 0xEu);
    MEMORY[0x1D3893640](v67, -1, -1);
  }

  *(a1 + 16) = 0;
  *a1 = v63;
LABEL_24:
  *(a1 + 8) = 0;
  v49 = 2;
LABEL_39:
  *(a1 + 24) = v49;
}

uint64_t sub_1D1912A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ClusterPath(0);
  v39[3] = v8;
  v39[4] = sub_1D1914B04(&qword_1EC646A70, type metadata accessor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
  sub_1D1913AAC(a2, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  *&v32 = a3;
  *(&v32 + 1) = a4;
  AttributeValueSet.value(for:in:)(a1, v39, v38);
  sub_1D18C20AC(v38, &v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v36 = 0;
    v37 = 0;
  }

  sub_1D18C20AC(v38, &v32);
  if (v33)
  {
    sub_1D1742194(&v32, v35);
    if (!v37)
    {
      LOBYTE(v32) = *(boxed_opaque_existential_1 + *(v8 + 20));
      v10 = sub_1D1A38104(a1, &v32);
      v12 = v11;
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v13 = sub_1D1E6709C();
      __swift_project_value_buffer(v13, qword_1EE07A0B0);
      sub_1D1741970(v35, v34);
      sub_1D17419CC(v39, &v32);

      v14 = sub_1D1E6707C();
      v15 = sub_1D1E6833C();

      if (!os_log_type_enabled(v14, v15))
      {

        __swift_destroy_boxed_opaque_existential_1(v34);
        __swift_destroy_boxed_opaque_existential_1(v35);
        sub_1D18F49A8(v38);
        __swift_destroy_boxed_opaque_existential_1(&v32);
        goto LABEL_12;
      }

      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v31 = v17;
      *v16 = 136446978;
      v18 = sub_1D1B1312C(v10, v12, &v31);

      *(v16 + 4) = v18;
      *(v16 + 12) = 2082;
      *(v16 + 14) = sub_1D1B1312C(0x676E69727453, 0xE600000000000000, &v31);
      *(v16 + 22) = 2082;
      sub_1D1741970(v34, v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      v19 = sub_1D1E678BC();
      v21 = v20;
      __swift_destroy_boxed_opaque_existential_1(v34);
      v22 = sub_1D1B1312C(v19, v21, &v31);

      *(v16 + 24) = v22;
      *(v16 + 32) = 2082;
      __swift_project_boxed_opaque_existential_1(&v32, v33);
      v23 = ClusterPath.description.getter();
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_1(&v32);
      v26 = sub_1D1B1312C(v23, v25, &v31);

      *(v16 + 34) = v26;
      _os_log_impl(&dword_1D16EC000, v14, v15, "Retrieved value for (%{public}s) but could not decoded it to %{public}s. result:(%{public}s) path:'%{public}s'", v16, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v17, -1, -1);
      MEMORY[0x1D3893640](v16, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v35);
    v27 = v38;
  }

  else
  {
    sub_1D18F49A8(v38);
    v27 = &v32;
  }

  sub_1D18F49A8(v27);
LABEL_12:
  v28 = v36;
  __swift_destroy_boxed_opaque_existential_1(v39);
  return v28;
}

uint64_t sub_1D1912E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ClusterPath(0);
  v41[3] = v8;
  v41[4] = sub_1D1914B04(&qword_1EC646A70, type metadata accessor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
  sub_1D1913AAC(a2, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  *&v34 = a3;
  *(&v34 + 1) = a4;
  AttributeValueSet.value(for:in:)(a1, v41, v40);
  sub_1D18C20AC(v40, &v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  v10 = swift_dynamicCast();
  if ((v10 & 1) == 0)
  {
    v38 = 0;
  }

  v39 = v10 ^ 1;
  sub_1D18C20AC(v40, &v34);
  if (v35)
  {
    sub_1D1742194(&v34, v37);
    if (v39)
    {
      LOBYTE(v34) = *(boxed_opaque_existential_1 + *(v8 + 20));
      v11 = sub_1D1A38104(a1, &v34);
      v13 = v12;
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v14 = sub_1D1E6709C();
      __swift_project_value_buffer(v14, qword_1EE07A0B0);
      sub_1D1741970(v37, v36);
      sub_1D17419CC(v41, &v34);

      v15 = sub_1D1E6707C();
      v16 = sub_1D1E6833C();

      if (!os_log_type_enabled(v15, v16))
      {

        __swift_destroy_boxed_opaque_existential_1(v36);
        __swift_destroy_boxed_opaque_existential_1(v37);
        sub_1D18F49A8(v40);
        __swift_destroy_boxed_opaque_existential_1(&v34);
        goto LABEL_12;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v33 = v18;
      *v17 = 136446978;
      v19 = sub_1D1B1312C(v11, v13, &v33);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_1D1B1312C(0x38746E4955, 0xE500000000000000, &v33);
      *(v17 + 22) = 2082;
      sub_1D1741970(v36, v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      v20 = sub_1D1E678BC();
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1(v36);
      v23 = sub_1D1B1312C(v20, v22, &v33);

      *(v17 + 24) = v23;
      *(v17 + 32) = 2082;
      __swift_project_boxed_opaque_existential_1(&v34, v35);
      v24 = ClusterPath.description.getter();
      v26 = v25;
      __swift_destroy_boxed_opaque_existential_1(&v34);
      v27 = sub_1D1B1312C(v24, v26, &v33);

      *(v17 + 34) = v27;
      _os_log_impl(&dword_1D16EC000, v15, v16, "Retrieved value for (%{public}s) but could not decoded it to %{public}s. result:(%{public}s) path:'%{public}s'", v17, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v18, -1, -1);
      MEMORY[0x1D3893640](v17, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v37);
    v28 = v40;
  }

  else
  {
    sub_1D18F49A8(v40);
    v28 = &v34;
  }

  sub_1D18F49A8(v28);
LABEL_12:
  v29 = v38;
  v30 = v39;
  __swift_destroy_boxed_opaque_existential_1(v41);
  return v29 | (v30 << 8);
}

BOOL _s13HomeDataModel25StaticColorControlClusterV0E5PointV2eeoiySbAE_AEtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *(a2 + 2);
  v3 = *(a2 + 8);
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
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (a1[3])
  {
    if (!*(a2 + 6))
    {
      return 0;
    }
  }

  else
  {
    if (a1[2] == a2[2])
    {
      v4 = *(a2 + 6);
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  if ((a1[4] & 1) == 0)
  {
    if (*(a1 + 7) == *(a2 + 7))
    {
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 1;
    }

    return (v6 & 1) == 0;
  }

  return (a2[4] & 1) != 0;
}

BOOL _s13HomeDataModel25StaticColorControlClusterV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for EndpointPath(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  if (*(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)))
  {
    return 0;
  }

  v5 = type metadata accessor for ClusterPath(0);
  if (dword_1D1E83794[*(a1 + *(v5 + 20))] != dword_1D1E83794[*(a2 + *(v5 + 20))])
  {
    return 0;
  }

  v6 = type metadata accessor for StaticColorControlCluster();
  v7 = v6[5];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 1);
  v10 = (a2 + v7);
  v11 = *(a2 + v7 + 1);
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (*v8 != *v10)
    {
      LOBYTE(v11) = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  v12 = v6[6];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 1);
  v15 = (a2 + v12);
  v16 = *(a2 + v12 + 1);
  if (v14)
  {
    if (!v16)
    {
      return 0;
    }
  }

  else
  {
    if (*v13 != *v15)
    {
      LOBYTE(v16) = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  v17 = v6[7];
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 2);
  v20 = (a2 + v17);
  v21 = *(a2 + v17 + 2);
  if (v19)
  {
    if (!v21)
    {
      return 0;
    }
  }

  else
  {
    if (*v18 != *v20)
    {
      LOBYTE(v21) = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  v22 = v6[8];
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 2);
  v25 = (a2 + v22);
  v26 = *(a2 + v22 + 2);
  if (v24)
  {
    if (!v26)
    {
      return 0;
    }
  }

  else
  {
    if (*v23 != *v25)
    {
      LOBYTE(v26) = 1;
    }

    if (v26)
    {
      return 0;
    }
  }

  v27 = v6[9];
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 2);
  v30 = (a2 + v27);
  v31 = *(a2 + v27 + 2);
  if (v29)
  {
    if (!v31)
    {
      return 0;
    }
  }

  else
  {
    if (*v28 != *v30)
    {
      LOBYTE(v31) = 1;
    }

    if (v31)
    {
      return 0;
    }
  }

  v32 = v6;
  if ((sub_1D177B0AC(*(a1 + v6[10]), *(a2 + v6[10])) & 1) == 0)
  {
    return 0;
  }

  v33 = v32;
  v34 = v32[11];
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 2);
  v37 = (a2 + v34);
  v38 = *(a2 + v34 + 2);
  if (v36)
  {
    if (!v38)
    {
      return 0;
    }
  }

  else
  {
    if (*v35 != *v37)
    {
      LOBYTE(v38) = 1;
    }

    if (v38)
    {
      return 0;
    }
  }

  v39 = v32[12];
  v40 = (a1 + v39);
  v41 = *(a1 + v39 + 2);
  v42 = (a2 + v39);
  v43 = *(a2 + v39 + 2);
  if (v41)
  {
    if (!v43)
    {
      return 0;
    }
  }

  else
  {
    if (*v40 != *v42)
    {
      LOBYTE(v43) = 1;
    }

    if (v43)
    {
      return 0;
    }
  }

  v44 = v32[13];
  v45 = (a1 + v44);
  v46 = *(a1 + v44 + 9);
  v47 = (a2 + v44);
  v48 = *(a2 + v44 + 9);
  if (v46)
  {
    if ((v48 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v48)
    {
      return 0;
    }

    v64 = *v47;
    v65 = *(v47 + 8);
    if (v45[1])
    {
      if ((v64 & 0x10000) == 0)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if ((v64 & 0x10000) != 0 || *v45 != v64)
      {
        return result;
      }
    }

    if (v45[3])
    {
      if ((v64 & 0x1000000000000) == 0)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if ((v64 & 0x1000000000000) != 0 || (*(v45 + 3) | (*(v45 + 5) << 16)) >> 8 != WORD2(v64))
      {
        return result;
      }
    }

    if (v45[4])
    {
      v33 = v32;
      if ((v65 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (v65)
      {
        return result;
      }

      v33 = v32;
      if (*(v45 + 7) != HIBYTE(v64))
      {
        return result;
      }
    }
  }

  v49 = v33[14];
  v50 = (a1 + v49);
  v51 = (a2 + v49);
  v52 = *(a2 + v49 + 9);
  if (*(a1 + v49 + 9))
  {
    v53 = v32;
    if ((v52 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + v49 + 9))
    {
      return 0;
    }

    v66 = *v51;
    v67 = *(v51 + 8);
    if (v50[1])
    {
      if ((v66 & 0x10000) == 0)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if ((v66 & 0x10000) != 0 || *v50 != v66)
      {
        return result;
      }
    }

    if (v50[3])
    {
      if ((v66 & 0x1000000000000) == 0)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if ((v66 & 0x1000000000000) != 0 || (*(v50 + 3) | (*(v50 + 5) << 16)) >> 8 != WORD2(v66))
      {
        return result;
      }
    }

    if (v50[4])
    {
      v53 = v32;
      if ((v67 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (v67)
      {
        return result;
      }

      v53 = v32;
      if (*(v50 + 7) != HIBYTE(v66))
      {
        return result;
      }
    }
  }

  v54 = v53[15];
  v55 = (a1 + v54);
  v56 = (a2 + v54);
  v57 = *(a2 + v54 + 9);
  if (*(a1 + v54 + 9))
  {
    v58 = v32;
    if ((v57 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_54;
  }

  if (*(a2 + v54 + 9))
  {
    return 0;
  }

  v69 = *v56;
  v70 = *(v56 + 8);
  if (v55[1])
  {
    if ((v69 & 0x10000) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((v69 & 0x10000) != 0 || *v55 != v69)
    {
      return result;
    }
  }

  if (v55[3])
  {
    if ((v69 & 0x1000000000000) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((v69 & 0x1000000000000) != 0 || (*(v55 + 3) | (*(v55 + 5) << 16)) >> 8 != WORD2(v69))
    {
      return result;
    }
  }

  if (v55[4])
  {
    v58 = v32;
    if ((v70 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_54;
  }

  result = 0;
  if ((v70 & 1) == 0)
  {
    v58 = v32;
    if (*(v55 + 7) == HIBYTE(v69))
    {
LABEL_54:
      v59 = v58[16];
      v60 = (a1 + v59);
      v61 = *(a1 + v59 + 2);
      v62 = (a2 + v59);
      v63 = *(a2 + v59 + 2);
      if (v61)
      {
        if (!v63)
        {
          return 0;
        }
      }

      else
      {
        if (*v60 != *v62)
        {
          LOBYTE(v63) = 1;
        }

        if (v63)
        {
          return 0;
        }
      }

      v71 = v32[17];
      v72 = (a1 + v71);
      v73 = *(a1 + v71 + 2);
      v74 = (a2 + v71);
      v75 = *(a2 + v71 + 2);
      if (v73)
      {
        if (!v75)
        {
          return 0;
        }
      }

      else
      {
        if (*v72 != *v74)
        {
          LOBYTE(v75) = 1;
        }

        if (v75)
        {
          return 0;
        }
      }

      v76 = v32[18];
      v77 = (a1 + v76);
      v78 = *(a1 + v76 + 2);
      v79 = (a2 + v76);
      v80 = *(a2 + v76 + 2);
      if (v78)
      {
        if (!v80)
        {
          return 0;
        }
      }

      else
      {
        if (*v77 != *v79)
        {
          LOBYTE(v80) = 1;
        }

        if (v80)
        {
          return 0;
        }
      }

      if (*(a1 + v32[19]) != *(a2 + v32[19]) || *(a1 + v32[20]) != *(a2 + v32[20]))
      {
        return 0;
      }

      v81 = v32[21];
      v82 = (a1 + v81);
      v83 = *(a1 + v81 + 1);
      v84 = (a2 + v81);
      v85 = *(a2 + v81 + 1);
      if (v83)
      {
        if (!v85)
        {
          return 0;
        }
      }

      else
      {
        if (*v82 != *v84)
        {
          LOBYTE(v85) = 1;
        }

        if (v85)
        {
          return 0;
        }
      }

      v86 = v32[22];
      v87 = (a1 + v86);
      v88 = *(a1 + v86 + 8);
      v89 = (a2 + v86);
      v90 = v89[1];
      if (v88)
      {
        return v90 && (*v87 == *v89 && v88 == v90 || (sub_1D1E6904C() & 1) != 0);
      }

      return !v90;
    }
  }

  return result;
}

unint64_t sub_1D1913890()
{
  result = qword_1EC646D80;
  if (!qword_1EC646D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646D80);
  }

  return result;
}

unint64_t sub_1D19138E4()
{
  result = qword_1EC646DA0;
  if (!qword_1EC646DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646DA0);
  }

  return result;
}

unint64_t sub_1D1913938()
{
  result = qword_1EC646DB0;
  if (!qword_1EC646DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646DB0);
  }

  return result;
}

uint64_t sub_1D191398C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC646D90, &qword_1D1E830E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1913A04()
{
  result = qword_1EC646DD0;
  if (!qword_1EC646DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646DD0);
  }

  return result;
}

unint64_t sub_1D1913A58()
{
  result = qword_1EC646DE0;
  if (!qword_1EC646DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646DE0);
  }

  return result;
}

uint64_t sub_1D1913AAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1913B14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D1913B74()
{
  result = qword_1EC646DF8;
  if (!qword_1EC646DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646DF8);
  }

  return result;
}

unint64_t sub_1D1913CA4()
{
  result = qword_1EC646E18;
  if (!qword_1EC646E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646E18);
  }

  return result;
}

unint64_t sub_1D1913CFC()
{
  result = qword_1EC646E20;
  if (!qword_1EC646E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646E20);
  }

  return result;
}

void sub_1D1913D78()
{
  type metadata accessor for ClusterPath(319);
  if (v0 <= 0x3F)
  {
    sub_1D1913F78(319, &qword_1EE07B608, MEMORY[0x1E69E7508], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D1913F78(319, &qword_1EE07D1D0, MEMORY[0x1E69E75F8], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1D1913F78(319, &qword_1EE079E38, &type metadata for StaticColorControlCluster.ColorPoint, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1D1913F78(319, qword_1EE07A0F0, &type metadata for StaticColorControlCluster.ColorPoint, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for MTRColorControlColorCapabilitiesBitmap(319);
            if (v5 <= 0x3F)
            {
              sub_1D1913F78(319, qword_1EE07D1F8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D1913F78(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t __swift_memcpy9_2(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for StaticColorControlCluster.ColorPoint(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StaticColorControlCluster.ColorPoint(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for StaticColorControlCluster.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StaticColorControlCluster.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D19141AC()
{
  result = qword_1EC646E28;
  if (!qword_1EC646E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646E28);
  }

  return result;
}

unint64_t sub_1D1914204()
{
  result = qword_1EC646E30;
  if (!qword_1EC646E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646E30);
  }

  return result;
}

unint64_t sub_1D191425C()
{
  result = qword_1EC646E38;
  if (!qword_1EC646E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646E38);
  }

  return result;
}

unint64_t sub_1D19142B4()
{
  result = qword_1EC646E40;
  if (!qword_1EC646E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646E40);
  }

  return result;
}

unint64_t sub_1D191430C()
{
  result = qword_1EC646E48;
  if (!qword_1EC646E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646E48);
  }

  return result;
}

unint64_t sub_1D1914364()
{
  result = qword_1EC646E50;
  if (!qword_1EC646E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646E50);
  }

  return result;
}

uint64_t sub_1D19143B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x48746E6572727563 && a2 == 0xEA00000000006575 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EBE1F0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EBE210 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x58746E6572727563 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x59746E6572727563 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656972616D697270 && a2 == 0xE900000000000073 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x696F506574696877 && a2 == 0xEB0000000058746ELL || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x696F506574696877 && a2 == 0xEB0000000059746ELL || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x696F50726F6C6F63 && a2 == 0xEB0000000052746ELL || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x696F50726F6C6F63 && a2 == 0xEB0000000047746ELL || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x696F50726F6C6F63 && a2 == 0xEB0000000042746ELL || (sub_1D1E6904C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1EBE230 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D1EBE250 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D1EBE270 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D1EBE290 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EBE2B0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EBE2D0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EBE2F0 == a2)
  {

    return 18;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 18;
    }

    else
    {
      return 19;
    }
  }
}

uint64_t sub_1D19149A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 120 && a2 == 0xE100000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7469736E65746E69 && a2 == 0xE900000000000079)
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

unint64_t sub_1D1914AB0()
{
  result = qword_1EC646E58;
  if (!qword_1EC646E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646E58);
  }

  return result;
}

uint64_t sub_1D1914B04(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D1914B4C@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (result = sub_1D171D228(result), (v5 & 1) != 0))
  {
    v6 = *(a2 + 56) + 16 * result;
    v7 = *v6;
    *a3 = *v6;
    v8 = *(v6 + 8);
    *(a3 + 8) = v8;

    return sub_1D1741AF8(v7, v8);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = -1;
  }

  return result;
}

unint64_t sub_1D1914BC0@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (result = sub_1D171D1A4(result & 0xFFFFFFFFFFLL), (v5 & 1) != 0))
  {
    v6 = *(a2 + 56) + 16 * result;
    v7 = *v6;
    *a3 = *v6;
    v8 = *(v6 + 8);
    *(a3 + 8) = v8;

    return sub_1D1741AF8(v7, v8);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = -1;
  }

  return result;
}

uint64_t sub_1D1914C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1914C64, 0, 0);
}

uint64_t sub_1D1914C64()
{
  v44 = v0;
  if (qword_1EC6422E8 != -1)
  {
    swift_once();
  }

  if (qword_1EC649398)
  {
    v1 = v0[5];

    v2 = v0[4];
    if (v2)
    {
LABEL_5:
      v39 = v0[8];
      v40 = v0[9];
      v4 = v0[6];
      v3 = v0[7];
      v6 = v0[2];
      v5 = v0[3];
      v38 = v3;
      ObjectType = swift_getObjectType();
      v8 = v2;
      v9 = v3;
      v10 = ObjectType;
      v11 = ObjectType;
      v41 = ObjectType;
      v42 = v6;
      v12 = v6;
      v13 = sub_1D190C444(v4, v9, v10, v6, v5, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB0, &qword_1D1E840D8);
      v14 = swift_allocObject();
      v0[10] = v14;
      *(v14 + 24) = 0;
      *(v14 + 16) = v13;
      v15 = swift_allocObject();
      v15[2] = v39;
      v15[3] = v40;
      v15[4] = v8;
      v15[5] = v1;
      v15[6] = v4;
      v15[7] = v38;
      v15[8] = v11;
      v15[9] = v12;
      v15[10] = v5;
      v15[11] = v14;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB8, &qword_1D1E840E8);
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      v19 = swift_allocObject();
      v0[11] = v19;

      v20 = v8;

      swift_defaultActor_initialize();
      *(v19 + 16) = 0;
      v21 = *(*v19 + 112);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
      (*(*(v22 - 8) + 56))(&v19[v21], 1, 1, v22);
      v23 = &v19[*(*v19 + 120)];
      *v23 = 0;
      *(v23 + 1) = 0;
      *(v19 + 14) = &unk_1D1E84158;
      *(v19 + 15) = v15;
      v24 = swift_allocObject();
      v0[12] = v24;
      v24[2] = v4;
      v24[3] = v38;
      v24[4] = v41;
      v24[5] = v42;
      v24[6] = v5;
      v24[7] = v14;

      return MEMORY[0x1EEE6DFA0](sub_1D19150CC, v19, 0);
    }
  }

  else
  {
    v1 = 0;
    v2 = v0[4];
    if (v2)
    {
      goto LABEL_5;
    }
  }

  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v25 = v0[7];
  v26 = v0[3];
  v27 = sub_1D1E6709C();
  __swift_project_value_buffer(v27, qword_1EE07A0B0);

  v28 = sub_1D1E6707C();
  v29 = sub_1D1E6833C();

  if (os_log_type_enabled(v28, v29))
  {
    v31 = v0[6];
    v30 = v0[7];
    v33 = v0[2];
    v32 = v0[3];
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v43 = v35;
    *v34 = 136446466;
    *(v34 + 4) = sub_1D1B1312C(v31, v30, &v43);
    *(v34 + 12) = 2082;
    *(v34 + 14) = sub_1D1B1312C(v33, v32, &v43);
    _os_log_impl(&dword_1D16EC000, v28, v29, "%{public}s: tried running command %{public}s but cluster was nil", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v35, -1, -1);
    MEMORY[0x1D3893640](v34, -1, -1);
  }

  v36 = v0[1];

  return v36();
}

uint64_t sub_1D19150CC()
{
  v1 = v0[12];
  v2 = (v0[11] + *(*v0[11] + 120));
  v3 = *v2;
  v4 = v2[1];
  *v2 = sub_1D191E8BC;
  v2[1] = v1;
  sub_1D17169C0(v3);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_1D19151A8;
  v6 = v0[11];

  return sub_1D19D7D10(sub_1D19D7D10);
}

uint64_t sub_1D19151A8()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1D191F20C;
  }

  else
  {
    v3 = sub_1D191F250;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D19152BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D19152E8, 0, 0);
}

uint64_t sub_1D19152E8()
{
  v44 = v0;
  if (qword_1EC6422E8 != -1)
  {
    swift_once();
  }

  if (qword_1EC649398)
  {
    v1 = v0[5];

    v2 = v0[4];
    if (v2)
    {
LABEL_5:
      v39 = v0[8];
      v40 = v0[9];
      v4 = v0[6];
      v3 = v0[7];
      v6 = v0[2];
      v5 = v0[3];
      v38 = v3;
      ObjectType = swift_getObjectType();
      v8 = v2;
      v9 = v3;
      v10 = ObjectType;
      v11 = ObjectType;
      v41 = ObjectType;
      v42 = v6;
      v12 = v6;
      v13 = sub_1D190C444(v4, v9, v10, v6, v5, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB0, &qword_1D1E840D8);
      v14 = swift_allocObject();
      v0[10] = v14;
      *(v14 + 24) = 0;
      *(v14 + 16) = v13;
      v15 = swift_allocObject();
      v15[2] = v39;
      v15[3] = v40;
      v15[4] = v8;
      v15[5] = v1;
      v15[6] = v4;
      v15[7] = v38;
      v15[8] = v11;
      v15[9] = v12;
      v15[10] = v5;
      v15[11] = v14;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB8, &qword_1D1E840E8);
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      v19 = swift_allocObject();
      v0[11] = v19;

      v20 = v8;

      swift_defaultActor_initialize();
      *(v19 + 16) = 0;
      v21 = *(*v19 + 112);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
      (*(*(v22 - 8) + 56))(&v19[v21], 1, 1, v22);
      v23 = &v19[*(*v19 + 120)];
      *v23 = 0;
      *(v23 + 1) = 0;
      *(v19 + 14) = &unk_1D1E84150;
      *(v19 + 15) = v15;
      v24 = swift_allocObject();
      v0[12] = v24;
      v24[2] = v4;
      v24[3] = v38;
      v24[4] = v41;
      v24[5] = v42;
      v24[6] = v5;
      v24[7] = v14;

      return MEMORY[0x1EEE6DFA0](sub_1D19150CC, v19, 0);
    }
  }

  else
  {
    v1 = 0;
    v2 = v0[4];
    if (v2)
    {
      goto LABEL_5;
    }
  }

  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v25 = v0[7];
  v26 = v0[3];
  v27 = sub_1D1E6709C();
  __swift_project_value_buffer(v27, qword_1EE07A0B0);

  v28 = sub_1D1E6707C();
  v29 = sub_1D1E6833C();

  if (os_log_type_enabled(v28, v29))
  {
    v31 = v0[6];
    v30 = v0[7];
    v33 = v0[2];
    v32 = v0[3];
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v43 = v35;
    *v34 = 136446466;
    *(v34 + 4) = sub_1D1B1312C(v31, v30, &v43);
    *(v34 + 12) = 2082;
    *(v34 + 14) = sub_1D1B1312C(v33, v32, &v43);
    _os_log_impl(&dword_1D16EC000, v28, v29, "%{public}s: tried running command %{public}s but cluster was nil", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v35, -1, -1);
    MEMORY[0x1D3893640](v34, -1, -1);
  }

  v36 = v0[1];

  return v36();
}

uint64_t sub_1D1915750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D191577C, 0, 0);
}

uint64_t sub_1D191577C()
{
  v44 = v0;
  if (qword_1EC6422E8 != -1)
  {
    swift_once();
  }

  if (qword_1EC649398)
  {
    v1 = v0[5];

    v2 = v0[4];
    if (v2)
    {
LABEL_5:
      v39 = v0[8];
      v40 = v0[9];
      v4 = v0[6];
      v3 = v0[7];
      v6 = v0[2];
      v5 = v0[3];
      v38 = v3;
      ObjectType = swift_getObjectType();
      v8 = v2;
      v9 = v3;
      v10 = ObjectType;
      v11 = ObjectType;
      v41 = ObjectType;
      v42 = v6;
      v12 = v6;
      v13 = sub_1D190C444(v4, v9, v10, v6, v5, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB0, &qword_1D1E840D8);
      v14 = swift_allocObject();
      v0[10] = v14;
      *(v14 + 24) = 0;
      *(v14 + 16) = v13;
      v15 = swift_allocObject();
      v15[2] = v39;
      v15[3] = v40;
      v15[4] = v8;
      v15[5] = v1;
      v15[6] = v4;
      v15[7] = v38;
      v15[8] = v11;
      v15[9] = v12;
      v15[10] = v5;
      v15[11] = v14;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB8, &qword_1D1E840E8);
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      v19 = swift_allocObject();
      v0[11] = v19;

      v20 = v8;

      swift_defaultActor_initialize();
      *(v19 + 16) = 0;
      v21 = *(*v19 + 112);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
      (*(*(v22 - 8) + 56))(&v19[v21], 1, 1, v22);
      v23 = &v19[*(*v19 + 120)];
      *v23 = 0;
      *(v23 + 1) = 0;
      *(v19 + 14) = &unk_1D1E84140;
      *(v19 + 15) = v15;
      v24 = swift_allocObject();
      v0[12] = v24;
      v24[2] = v4;
      v24[3] = v38;
      v24[4] = v41;
      v24[5] = v42;
      v24[6] = v5;
      v24[7] = v14;

      return MEMORY[0x1EEE6DFA0](sub_1D1915BE4, v19, 0);
    }
  }

  else
  {
    v1 = 0;
    v2 = v0[4];
    if (v2)
    {
      goto LABEL_5;
    }
  }

  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v25 = v0[7];
  v26 = v0[3];
  v27 = sub_1D1E6709C();
  __swift_project_value_buffer(v27, qword_1EE07A0B0);

  v28 = sub_1D1E6707C();
  v29 = sub_1D1E6833C();

  if (os_log_type_enabled(v28, v29))
  {
    v31 = v0[6];
    v30 = v0[7];
    v33 = v0[2];
    v32 = v0[3];
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v43 = v35;
    *v34 = 136446466;
    *(v34 + 4) = sub_1D1B1312C(v31, v30, &v43);
    *(v34 + 12) = 2082;
    *(v34 + 14) = sub_1D1B1312C(v33, v32, &v43);
    _os_log_impl(&dword_1D16EC000, v28, v29, "%{public}s: tried running command %{public}s but cluster was nil", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v35, -1, -1);
    MEMORY[0x1D3893640](v34, -1, -1);
  }

  v36 = v0[1];

  return v36();
}

uint64_t sub_1D1915BE4()
{
  v1 = v0[12];
  v2 = (v0[11] + *(*v0[11] + 120));
  v3 = *v2;
  v4 = v2[1];
  *v2 = sub_1D191E8BC;
  v2[1] = v1;
  sub_1D17169C0(v3);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_1D1915CC0;
  v6 = v0[11];

  return sub_1D19D7D10(sub_1D19D7D10);
}

uint64_t sub_1D1915CC0()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1D1915E48;
  }

  else
  {
    v3 = sub_1D1915DD4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1915DD4()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[4];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D1915E48()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[4];

  v4 = v0[1];
  v5 = v0[14];

  return v4();
}

uint64_t sub_1D1915EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1915EE8, 0, 0);
}

uint64_t sub_1D1915EE8()
{
  v44 = v0;
  if (qword_1EC6422E8 != -1)
  {
    swift_once();
  }

  if (qword_1EC649398)
  {
    v1 = v0[5];

    v2 = v0[4];
    if (v2)
    {
LABEL_5:
      v39 = v0[8];
      v40 = v0[9];
      v4 = v0[6];
      v3 = v0[7];
      v6 = v0[2];
      v5 = v0[3];
      v38 = v3;
      ObjectType = swift_getObjectType();
      v8 = v2;
      v9 = v3;
      v10 = ObjectType;
      v11 = ObjectType;
      v41 = ObjectType;
      v42 = v6;
      v12 = v6;
      v13 = sub_1D190C444(v4, v9, v10, v6, v5, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB0, &qword_1D1E840D8);
      v14 = swift_allocObject();
      v0[10] = v14;
      *(v14 + 24) = 0;
      *(v14 + 16) = v13;
      v15 = swift_allocObject();
      v15[2] = v39;
      v15[3] = v40;
      v15[4] = v8;
      v15[5] = v1;
      v15[6] = v4;
      v15[7] = v38;
      v15[8] = v11;
      v15[9] = v12;
      v15[10] = v5;
      v15[11] = v14;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB8, &qword_1D1E840E8);
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      v19 = swift_allocObject();
      v0[11] = v19;

      v20 = v8;

      swift_defaultActor_initialize();
      *(v19 + 16) = 0;
      v21 = *(*v19 + 112);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
      (*(*(v22 - 8) + 56))(&v19[v21], 1, 1, v22);
      v23 = &v19[*(*v19 + 120)];
      *v23 = 0;
      *(v23 + 1) = 0;
      *(v19 + 14) = &unk_1D1E84130;
      *(v19 + 15) = v15;
      v24 = swift_allocObject();
      v0[12] = v24;
      v24[2] = v4;
      v24[3] = v38;
      v24[4] = v41;
      v24[5] = v42;
      v24[6] = v5;
      v24[7] = v14;

      return MEMORY[0x1EEE6DFA0](sub_1D19150CC, v19, 0);
    }
  }

  else
  {
    v1 = 0;
    v2 = v0[4];
    if (v2)
    {
      goto LABEL_5;
    }
  }

  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v25 = v0[7];
  v26 = v0[3];
  v27 = sub_1D1E6709C();
  __swift_project_value_buffer(v27, qword_1EE07A0B0);

  v28 = sub_1D1E6707C();
  v29 = sub_1D1E6833C();

  if (os_log_type_enabled(v28, v29))
  {
    v31 = v0[6];
    v30 = v0[7];
    v33 = v0[2];
    v32 = v0[3];
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v43 = v35;
    *v34 = 136446466;
    *(v34 + 4) = sub_1D1B1312C(v31, v30, &v43);
    *(v34 + 12) = 2082;
    *(v34 + 14) = sub_1D1B1312C(v33, v32, &v43);
    _os_log_impl(&dword_1D16EC000, v28, v29, "%{public}s: tried running command %{public}s but cluster was nil", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v35, -1, -1);
    MEMORY[0x1D3893640](v34, -1, -1);
  }

  v36 = v0[1];

  return v36();
}

uint64_t sub_1D1916350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D191637C, 0, 0);
}

uint64_t sub_1D191637C()
{
  v44 = v0;
  if (qword_1EC6422E8 != -1)
  {
    swift_once();
  }

  if (qword_1EC649398)
  {
    v1 = v0[5];

    v2 = v0[4];
    if (v2)
    {
LABEL_5:
      v39 = v0[8];
      v40 = v0[9];
      v4 = v0[6];
      v3 = v0[7];
      v6 = v0[2];
      v5 = v0[3];
      v38 = v3;
      ObjectType = swift_getObjectType();
      v8 = v2;
      v9 = v3;
      v10 = ObjectType;
      v11 = ObjectType;
      v41 = ObjectType;
      v42 = v6;
      v12 = v6;
      v13 = sub_1D190C444(v4, v9, v10, v6, v5, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB0, &qword_1D1E840D8);
      v14 = swift_allocObject();
      v0[10] = v14;
      *(v14 + 24) = 0;
      *(v14 + 16) = v13;
      v15 = swift_allocObject();
      v15[2] = v39;
      v15[3] = v40;
      v15[4] = v8;
      v15[5] = v1;
      v15[6] = v4;
      v15[7] = v38;
      v15[8] = v11;
      v15[9] = v12;
      v15[10] = v5;
      v15[11] = v14;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB8, &qword_1D1E840E8);
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      v19 = swift_allocObject();
      v0[11] = v19;

      v20 = v8;

      swift_defaultActor_initialize();
      *(v19 + 16) = 0;
      v21 = *(*v19 + 112);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
      (*(*(v22 - 8) + 56))(&v19[v21], 1, 1, v22);
      v23 = &v19[*(*v19 + 120)];
      *v23 = 0;
      *(v23 + 1) = 0;
      *(v19 + 14) = &unk_1D1E84120;
      *(v19 + 15) = v15;
      v24 = swift_allocObject();
      v0[12] = v24;
      v24[2] = v4;
      v24[3] = v38;
      v24[4] = v41;
      v24[5] = v42;
      v24[6] = v5;
      v24[7] = v14;

      return MEMORY[0x1EEE6DFA0](sub_1D19150CC, v19, 0);
    }
  }

  else
  {
    v1 = 0;
    v2 = v0[4];
    if (v2)
    {
      goto LABEL_5;
    }
  }

  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v25 = v0[7];
  v26 = v0[3];
  v27 = sub_1D1E6709C();
  __swift_project_value_buffer(v27, qword_1EE07A0B0);

  v28 = sub_1D1E6707C();
  v29 = sub_1D1E6833C();

  if (os_log_type_enabled(v28, v29))
  {
    v31 = v0[6];
    v30 = v0[7];
    v33 = v0[2];
    v32 = v0[3];
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v43 = v35;
    *v34 = 136446466;
    *(v34 + 4) = sub_1D1B1312C(v31, v30, &v43);
    *(v34 + 12) = 2082;
    *(v34 + 14) = sub_1D1B1312C(v33, v32, &v43);
    _os_log_impl(&dword_1D16EC000, v28, v29, "%{public}s: tried running command %{public}s but cluster was nil", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v35, -1, -1);
    MEMORY[0x1D3893640](v34, -1, -1);
  }

  v36 = v0[1];

  return v36();
}

uint64_t sub_1D19167E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1916810, 0, 0);
}

uint64_t sub_1D1916810()
{
  v44 = v0;
  if (qword_1EC6422E8 != -1)
  {
    swift_once();
  }

  if (qword_1EC649398)
  {
    v1 = v0[5];

    v2 = v0[4];
    if (v2)
    {
LABEL_5:
      v39 = v0[8];
      v40 = v0[9];
      v4 = v0[6];
      v3 = v0[7];
      v6 = v0[2];
      v5 = v0[3];
      v38 = v3;
      ObjectType = swift_getObjectType();
      v8 = v2;
      v9 = v3;
      v10 = ObjectType;
      v11 = ObjectType;
      v41 = ObjectType;
      v42 = v6;
      v12 = v6;
      v13 = sub_1D190C444(v4, v9, v10, v6, v5, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB0, &qword_1D1E840D8);
      v14 = swift_allocObject();
      v0[10] = v14;
      *(v14 + 24) = 0;
      *(v14 + 16) = v13;
      v15 = swift_allocObject();
      v15[2] = v39;
      v15[3] = v40;
      v15[4] = v8;
      v15[5] = v1;
      v15[6] = v4;
      v15[7] = v38;
      v15[8] = v11;
      v15[9] = v12;
      v15[10] = v5;
      v15[11] = v14;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB8, &qword_1D1E840E8);
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      v19 = swift_allocObject();
      v0[11] = v19;

      v20 = v8;

      swift_defaultActor_initialize();
      *(v19 + 16) = 0;
      v21 = *(*v19 + 112);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
      (*(*(v22 - 8) + 56))(&v19[v21], 1, 1, v22);
      v23 = &v19[*(*v19 + 120)];
      *v23 = 0;
      *(v23 + 1) = 0;
      *(v19 + 14) = &unk_1D1E84110;
      *(v19 + 15) = v15;
      v24 = swift_allocObject();
      v0[12] = v24;
      v24[2] = v4;
      v24[3] = v38;
      v24[4] = v41;
      v24[5] = v42;
      v24[6] = v5;
      v24[7] = v14;

      return MEMORY[0x1EEE6DFA0](sub_1D19150CC, v19, 0);
    }
  }

  else
  {
    v1 = 0;
    v2 = v0[4];
    if (v2)
    {
      goto LABEL_5;
    }
  }

  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v25 = v0[7];
  v26 = v0[3];
  v27 = sub_1D1E6709C();
  __swift_project_value_buffer(v27, qword_1EE07A0B0);

  v28 = sub_1D1E6707C();
  v29 = sub_1D1E6833C();

  if (os_log_type_enabled(v28, v29))
  {
    v31 = v0[6];
    v30 = v0[7];
    v33 = v0[2];
    v32 = v0[3];
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v43 = v35;
    *v34 = 136446466;
    *(v34 + 4) = sub_1D1B1312C(v31, v30, &v43);
    *(v34 + 12) = 2082;
    *(v34 + 14) = sub_1D1B1312C(v33, v32, &v43);
    _os_log_impl(&dword_1D16EC000, v28, v29, "%{public}s: tried running command %{public}s but cluster was nil", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v35, -1, -1);
    MEMORY[0x1D3893640](v34, -1, -1);
  }

  v36 = v0[1];

  return v36();
}

uint64_t sub_1D1916C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1916CA4, 0, 0);
}

uint64_t sub_1D1916CA4()
{
  v44 = v0;
  if (qword_1EC6422E8 != -1)
  {
    swift_once();
  }

  if (qword_1EC649398)
  {
    v1 = v0[5];

    v2 = v0[4];
    if (v2)
    {
LABEL_5:
      v39 = v0[8];
      v40 = v0[9];
      v4 = v0[6];
      v3 = v0[7];
      v6 = v0[2];
      v5 = v0[3];
      v38 = v3;
      ObjectType = swift_getObjectType();
      v8 = v2;
      v9 = v3;
      v10 = ObjectType;
      v11 = ObjectType;
      v41 = ObjectType;
      v42 = v6;
      v12 = v6;
      v13 = sub_1D190C444(v4, v9, v10, v6, v5, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB0, &qword_1D1E840D8);
      v14 = swift_allocObject();
      v0[10] = v14;
      *(v14 + 24) = 0;
      *(v14 + 16) = v13;
      v15 = swift_allocObject();
      v15[2] = v39;
      v15[3] = v40;
      v15[4] = v8;
      v15[5] = v1;
      v15[6] = v4;
      v15[7] = v38;
      v15[8] = v11;
      v15[9] = v12;
      v15[10] = v5;
      v15[11] = v14;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB8, &qword_1D1E840E8);
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      v19 = swift_allocObject();
      v0[11] = v19;

      v20 = v8;

      swift_defaultActor_initialize();
      *(v19 + 16) = 0;
      v21 = *(*v19 + 112);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
      (*(*(v22 - 8) + 56))(&v19[v21], 1, 1, v22);
      v23 = &v19[*(*v19 + 120)];
      *v23 = 0;
      *(v23 + 1) = 0;
      *(v19 + 14) = &unk_1D1E84100;
      *(v19 + 15) = v15;
      v24 = swift_allocObject();
      v0[12] = v24;
      v24[2] = v4;
      v24[3] = v38;
      v24[4] = v41;
      v24[5] = v42;
      v24[6] = v5;
      v24[7] = v14;

      return MEMORY[0x1EEE6DFA0](sub_1D19150CC, v19, 0);
    }
  }

  else
  {
    v1 = 0;
    v2 = v0[4];
    if (v2)
    {
      goto LABEL_5;
    }
  }

  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v25 = v0[7];
  v26 = v0[3];
  v27 = sub_1D1E6709C();
  __swift_project_value_buffer(v27, qword_1EE07A0B0);

  v28 = sub_1D1E6707C();
  v29 = sub_1D1E6833C();

  if (os_log_type_enabled(v28, v29))
  {
    v31 = v0[6];
    v30 = v0[7];
    v33 = v0[2];
    v32 = v0[3];
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v43 = v35;
    *v34 = 136446466;
    *(v34 + 4) = sub_1D1B1312C(v31, v30, &v43);
    *(v34 + 12) = 2082;
    *(v34 + 14) = sub_1D1B1312C(v33, v32, &v43);
    _os_log_impl(&dword_1D16EC000, v28, v29, "%{public}s: tried running command %{public}s but cluster was nil", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v35, -1, -1);
    MEMORY[0x1D3893640](v34, -1, -1);
  }

  v36 = v0[1];

  return v36();
}

uint64_t sub_1D191710C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1917138, 0, 0);
}

uint64_t sub_1D1917138()
{
  v44 = v0;
  if (qword_1EC6422E8 != -1)
  {
    swift_once();
  }

  if (qword_1EC649398)
  {
    v1 = v0[5];

    v2 = v0[4];
    if (v2)
    {
LABEL_5:
      v39 = v0[8];
      v40 = v0[9];
      v4 = v0[6];
      v3 = v0[7];
      v6 = v0[2];
      v5 = v0[3];
      v38 = v3;
      ObjectType = swift_getObjectType();
      v8 = v2;
      v9 = v3;
      v10 = ObjectType;
      v11 = ObjectType;
      v41 = ObjectType;
      v42 = v6;
      v12 = v6;
      v13 = sub_1D190C444(v4, v9, v10, v6, v5, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB0, &qword_1D1E840D8);
      v14 = swift_allocObject();
      v0[10] = v14;
      *(v14 + 24) = 0;
      *(v14 + 16) = v13;
      v15 = swift_allocObject();
      v15[2] = v39;
      v15[3] = v40;
      v15[4] = v8;
      v15[5] = v1;
      v15[6] = v4;
      v15[7] = v38;
      v15[8] = v11;
      v15[9] = v12;
      v15[10] = v5;
      v15[11] = v14;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB8, &qword_1D1E840E8);
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      v19 = swift_allocObject();
      v0[11] = v19;

      v20 = v8;

      swift_defaultActor_initialize();
      *(v19 + 16) = 0;
      v21 = *(*v19 + 112);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
      (*(*(v22 - 8) + 56))(&v19[v21], 1, 1, v22);
      v23 = &v19[*(*v19 + 120)];
      *v23 = 0;
      *(v23 + 1) = 0;
      *(v19 + 14) = &unk_1D1E840E0;
      *(v19 + 15) = v15;
      v24 = swift_allocObject();
      v0[12] = v24;
      v24[2] = v4;
      v24[3] = v38;
      v24[4] = v41;
      v24[5] = v42;
      v24[6] = v5;
      v24[7] = v14;

      return MEMORY[0x1EEE6DFA0](sub_1D19150CC, v19, 0);
    }
  }

  else
  {
    v1 = 0;
    v2 = v0[4];
    if (v2)
    {
      goto LABEL_5;
    }
  }

  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v25 = v0[7];
  v26 = v0[3];
  v27 = sub_1D1E6709C();
  __swift_project_value_buffer(v27, qword_1EE07A0B0);

  v28 = sub_1D1E6707C();
  v29 = sub_1D1E6833C();

  if (os_log_type_enabled(v28, v29))
  {
    v31 = v0[6];
    v30 = v0[7];
    v33 = v0[2];
    v32 = v0[3];
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v43 = v35;
    *v34 = 136446466;
    *(v34 + 4) = sub_1D1B1312C(v31, v30, &v43);
    *(v34 + 12) = 2082;
    *(v34 + 14) = sub_1D1B1312C(v33, v32, &v43);
    _os_log_impl(&dword_1D16EC000, v28, v29, "%{public}s: tried running command %{public}s but cluster was nil", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v35, -1, -1);
    MEMORY[0x1D3893640](v34, -1, -1);
  }

  v36 = v0[1];

  return v36();
}

void StaticColorControlCluster.Command.init(clusterKind:commandID:expectedValues:commandFields:)(_BYTE *a1@<X0>, int a2@<W1>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{

  v8 = *a3;
  if (*a1 != 17)
  {
    goto LABEL_26;
  }

  if (a2 <= 9)
  {
    if (a2 != 6)
    {
      if (a2 == 7)
      {
        if (!v8)
        {
          goto LABEL_56;
        }

        sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
        swift_bridgeObjectRetain_n();
        v9 = sub_1D1E684DC();
        v10 = v9;
        if (!*(v8 + 16) || (v11 = sub_1D171D228(v9), (v12 & 1) == 0))
        {

          swift_bridgeObjectRelease_n();
          goto LABEL_56;
        }

        v13 = *(v8 + 56) + 16 * v11;
        v14 = *v13;
        v15 = *(v13 + 8);
        sub_1D1741AF8(*v13, *(v13 + 8));

        if (v15 == 2)
        {
          v16 = sub_1D1E684DC();
          v17 = v16;
          if (*(v8 + 16))
          {
            v18 = sub_1D171D228(v16);
            if (v19)
            {
              v20 = *(v8 + 56) + 16 * v18;
              v21 = *v20;
              v22 = *(v20 + 8);
              sub_1D1741AF8(*v20, *(v20 + 8));

              if (v22 == 2)
              {

                if (!((v21 | v14) >> 16))
                {
                  v23 = v14 | (v21 << 16) | 0x200000000;
LABEL_76:
                  *a4 = v23;
                  *(a4 + 4) = BYTE4(v23);
                  return;
                }

                goto LABEL_81;
              }

              sub_1D1757AE8(v21, v22);
LABEL_56:
              if (qword_1EE07A0A8 != -1)
              {
                swift_once();
              }

              v71 = sub_1D1E6709C();
              __swift_project_value_buffer(v71, qword_1EE07A0B0);

              v60 = sub_1D1E6707C();
              v61 = sub_1D1E6833C();

              if (os_log_type_enabled(v60, v61))
              {
                v62 = swift_slowAlloc();
                v63 = swift_slowAlloc();
                v92 = v63;
                *v62 = 136446722;
                v72 = sub_1D1E6789C();
                v74 = sub_1D1B1312C(v72, v73, &v92);

                *(v62 + 4) = v74;
                *(v62 + 12) = 1026;
                *(v62 + 14) = 7;
                *(v62 + 18) = 2082;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E60, &qword_1D1E83820);
                v75 = sub_1D1E678BC();
                v77 = sub_1D1B1312C(v75, v76, &v92);

                *(v62 + 20) = v77;
                v70 = "Couldn't get expected x/y values from command fields. clusterKind:%{public}s commandID:%{public}u. commandFields: (%{public}s)";
                goto LABEL_72;
              }

              goto LABEL_73;
            }
          }
        }

        else
        {
          sub_1D1757AE8(v14, v15);
        }

        goto LABEL_56;
      }

LABEL_26:

LABEL_75:
      v23 = 0xFF00000000;
      goto LABEL_76;
    }

    if (v8)
    {
      sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
      swift_bridgeObjectRetain_n();
      v38 = sub_1D1E684DC();
      v39 = v38;
      if (!*(v8 + 16) || (v40 = sub_1D171D228(v38), (v41 & 1) == 0))
      {

        swift_bridgeObjectRelease_n();
        goto LABEL_68;
      }

      v42 = *(v8 + 56) + 16 * v40;
      v43 = *v42;
      v44 = *(v42 + 8);
      sub_1D1741AF8(*v42, *(v42 + 8));

      if (v44 == 2)
      {
        v45 = sub_1D1E684DC();
        v46 = v45;
        if (*(v8 + 16))
        {
          v47 = sub_1D171D228(v45);
          if (v48)
          {
            v49 = *(v8 + 56) + 16 * v47;
            v50 = *v49;
            v51 = *(v49 + 8);
            sub_1D1741AF8(*v49, *(v49 + 8));

            if (v51 == 2)
            {

              if ((v50 | v43) <= 0xFF)
              {
                v23 = v43 | (v50 << 8);
                goto LABEL_76;
              }

              goto LABEL_82;
            }

            sub_1D1757AE8(v50, v51);
            goto LABEL_68;
          }
        }
      }

      else
      {
        sub_1D1757AE8(v43, v44);
      }
    }

LABEL_68:
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v85 = sub_1D1E6709C();
    __swift_project_value_buffer(v85, qword_1EE07A0B0);

    v60 = sub_1D1E6707C();
    v61 = sub_1D1E6833C();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v92 = v63;
      *v62 = 136446722;
      v86 = sub_1D1E6789C();
      v88 = sub_1D1B1312C(v86, v87, &v92);

      *(v62 + 4) = v88;
      *(v62 + 12) = 1026;
      *(v62 + 14) = 6;
      *(v62 + 18) = 2082;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E60, &qword_1D1E83820);
      v89 = sub_1D1E678BC();
      v91 = sub_1D1B1312C(v89, v90, &v92);

      *(v62 + 20) = v91;
      v70 = "Couldn't get expected hue/saturation values from command fields. clusterKind:%{public}s commandID:%{public}u. commandFields: (%{public}s)";
      goto LABEL_72;
    }

    goto LABEL_73;
  }

  if (a2 == 10)
  {
    if (v8)
    {
      sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);

      v52 = sub_1D1E684DC();
      v53 = v52;
      if (*(v8 + 16) && (v54 = sub_1D171D228(v52), (v55 & 1) != 0))
      {
        v56 = *(v8 + 56) + 16 * v54;
        v57 = *v56;
        v58 = *(v56 + 8);
        sub_1D1741AF8(*v56, *(v56 + 8));

        if (v58 == 2)
        {

          if (!(v57 >> 16))
          {
            v23 = v57 | 0x300000000;
            goto LABEL_76;
          }

          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

        sub_1D1757AE8(v57, v58);
      }

      else
      {
      }
    }

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v59 = sub_1D1E6709C();
    __swift_project_value_buffer(v59, qword_1EE07A0B0);

    v60 = sub_1D1E6707C();
    v61 = sub_1D1E6833C();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v92 = v63;
      *v62 = 136446722;
      v64 = sub_1D1E6789C();
      v66 = sub_1D1B1312C(v64, v65, &v92);

      *(v62 + 4) = v66;
      *(v62 + 12) = 1026;
      *(v62 + 14) = 10;
      *(v62 + 18) = 2082;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E60, &qword_1D1E83820);
      v67 = sub_1D1E678BC();
      v69 = sub_1D1B1312C(v67, v68, &v92);

      *(v62 + 20) = v69;
      v70 = "Couldn't get expected colorTemperature values from command fields. clusterKind:%{public}s commandID:%{public}u. commandFields: (%{public}s)";
LABEL_72:
      _os_log_impl(&dword_1D16EC000, v60, v61, v70, v62, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v63, -1, -1);
      MEMORY[0x1D3893640](v62, -1, -1);
LABEL_74:

      goto LABEL_75;
    }

LABEL_73:

    goto LABEL_74;
  }

  if (a2 != 67)
  {
    goto LABEL_26;
  }

  if (!v8)
  {
LABEL_62:
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v78 = sub_1D1E6709C();
    __swift_project_value_buffer(v78, qword_1EE07A0B0);

    v60 = sub_1D1E6707C();
    v61 = sub_1D1E6833C();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v92 = v63;
      *v62 = 136446722;
      v79 = sub_1D1E6789C();
      v81 = sub_1D1B1312C(v79, v80, &v92);

      *(v62 + 4) = v81;
      *(v62 + 12) = 1026;
      *(v62 + 14) = 67;
      *(v62 + 18) = 2082;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E60, &qword_1D1E83820);
      v82 = sub_1D1E678BC();
      v84 = sub_1D1B1312C(v82, v83, &v92);

      *(v62 + 20) = v84;
      v70 = "Couldn't get expected Ehue/saturation values from command fields. clusterKind:%{public}s commandID:%{public}u. commandFields: (%{public}s)";
      goto LABEL_72;
    }

    goto LABEL_73;
  }

  sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  swift_bridgeObjectRetain_n();
  v24 = sub_1D1E684DC();
  v25 = v24;
  if (!*(v8 + 16) || (v26 = sub_1D171D228(v24), (v27 & 1) == 0))
  {

    swift_bridgeObjectRelease_n();
    goto LABEL_62;
  }

  v28 = *(v8 + 56) + 16 * v26;
  v29 = *v28;
  v30 = *(v28 + 8);
  sub_1D1741AF8(*v28, *(v28 + 8));

  if (v30 != 2)
  {
    sub_1D1757AE8(v29, v30);
LABEL_61:

    goto LABEL_62;
  }

  v31 = sub_1D1E684DC();
  v32 = v31;
  if (!*(v8 + 16) || (v33 = sub_1D171D228(v31), (v34 & 1) == 0))
  {

    goto LABEL_61;
  }

  v35 = *(v8 + 56) + 16 * v33;
  v36 = *v35;
  v37 = *(v35 + 8);
  sub_1D1741AF8(*v35, *(v35 + 8));

  if (v37 != 2)
  {
    sub_1D1757AE8(v36, v37);
    goto LABEL_62;
  }

  if (!(v29 >> 16) && v36 <= 0xFF)
  {
    v23 = v29 | (v36 << 16) | 0x100000000;
    goto LABEL_76;
  }

LABEL_83:
  __break(1u);
}

unint64_t StaticColorControlCluster.Command.expectedValues.getter()
{
  v1 = *v0;
  if (*(v0 + 4) > 1u)
  {
    if (*(v0 + 4) != 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E68, &qword_1D1E83828);
      inited = swift_initStackObject();
      *(inited + 32) = 7;
      *(inited + 16) = xmmword_1D1E73A90;
      *(inited + 36) = 17;
      *(inited + 40) = v1;
      *(inited + 48) = 2;
      *(inited + 56) = 8;
      *(inited + 60) = 17;
      *(inited + 64) = 2;
      *(inited + 72) = 2;
      v4 = sub_1D18D4B28(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E70, &qword_1D1E83830);
      goto LABEL_10;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E68, &qword_1D1E83828);
    v2 = swift_initStackObject();
    *(v2 + 32) = 8;
    *(v2 + 16) = xmmword_1D1E6F900;
    *(v2 + 36) = 17;
    *(v2 + 40) = 1;
    *(v2 + 48) = 2;
    *(v2 + 56) = 3;
    *(v2 + 60) = 17;
    *(v2 + 64) = v1;
    *(v2 + 72) = 2;
    *(v2 + 80) = 4;
    *(v2 + 84) = 17;
    *(v2 + 88) = v1 >> 16;
  }

  else
  {
    if (*(v0 + 4))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E68, &qword_1D1E83828);
      v2 = swift_initStackObject();
      *(v2 + 16) = xmmword_1D1E6F900;
      *(v2 + 32) = 8;
      *(v2 + 36) = 17;
      *(v2 + 40) = 3;
      *(v2 + 48) = 2;
      *(v2 + 56) = 0x4000;
      *(v2 + 60) = 17;
      *(v2 + 64) = v1;
      *(v2 + 72) = 2;
      *(v2 + 80) = 1;
      *(v2 + 84) = 17;
      v3 = BYTE2(v1);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E68, &qword_1D1E83828);
      v2 = swift_initStackObject();
      *(v2 + 16) = xmmword_1D1E6F900;
      *(v2 + 32) = 8;
      *(v2 + 36) = 17;
      *(v2 + 40) = 0;
      *(v2 + 48) = 2;
      *(v2 + 56) = 0;
      *(v2 + 60) = 17;
      *(v2 + 64) = v1;
      *(v2 + 72) = 2;
      *(v2 + 80) = 1;
      *(v2 + 84) = 17;
      v3 = BYTE1(v1);
    }

    *(v2 + 88) = v3;
  }

  *(v2 + 96) = 2;
  v4 = sub_1D18D4B28(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E70, &qword_1D1E83830);
LABEL_10:
  swift_arrayDestroy();
  return v4;
}

HomeDataModel::MatterCommandFields StaticColorControlCluster.Command.commandFields.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 4) <= 1u)
  {
    if (*(v1 + 4))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E78, &qword_1D1E83838);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D1E73A90;
      *(inited + 32) = v3;
      *(inited + 40) = 2;
      v5 = BYTE2(v3);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E78, &qword_1D1E83838);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D1E73A90;
      *(inited + 32) = v3;
      *(inited + 40) = 2;
      v5 = BYTE1(v3);
    }

    *(inited + 48) = v5;
    goto LABEL_8;
  }

  if (*(v1 + 4) == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E78, &qword_1D1E83838);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E73A90;
    *(inited + 32) = v3;
    *(inited + 40) = 2;
    *(inited + 48) = v3 >> 16;
LABEL_8:
    *(inited + 56) = 2;
    result.values._rawValue = MatterCommandFields.init(values:)(inited).values._rawValue;
    *a1 = v10;
    return result;
  }

  sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  v7 = sub_1D1E684DC();
  v8 = sub_1D18D4C50(MEMORY[0x1E69E7CC0]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D17524E4(v3, 2, v7, isUniquelyReferenced_nonNull_native);

  *a1 = v8;
  return result;
}

unint64_t StaticColorControlCluster.Command.overridingAttributes.getter()
{
  v2 = *v0;
  v3 = *(v0 + 4);
  return StaticColorControlCluster.Command.expectedValues.getter();
}

unint64_t StaticColorControlCluster.Command.description.getter()
{
  v1 = *v0;
  if (*(v0 + 4) > 1u)
  {
    if (*(v0 + 4) == 2)
    {
      sub_1D1E6884C();

      v6 = 0x6F436F5465766F6DLL;
      v3 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v3);

      MEMORY[0x1D3890F70](3832096, 0xE300000000000000);
    }

    else
    {
      sub_1D1E6884C();

      v6 = 0xD000000000000018;
    }
  }

  else
  {
    if (*(v0 + 4))
    {
      v6 = 0;
      sub_1D1E6884C();
      MEMORY[0x1D3890F70](0xD000000000000024, 0x80000001D1EBE330);
    }

    else
    {
      sub_1D1E6884C();

      v6 = 0xD00000000000001CLL;
    }

    v2 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v2);

    MEMORY[0x1D3890F70](0x7461727574617320, 0xEC0000003A6E6F69);
  }

  v4 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v4);

  return v6;
}

unint64_t sub_1D19187AC()
{
  v1 = 0x59586F5465766F6DLL;
  v2 = 0xD000000000000016;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    v2 = 0xD00000000000001ELL;
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

uint64_t sub_1D1918828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D191E648(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1918850(uint64_t a1)
{
  v2 = sub_1D191D894();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D191888C(uint64_t a1)
{
  v2 = sub_1D191D894();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19188C8(uint64_t a1)
{
  v2 = sub_1D191D990();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1918904(uint64_t a1)
{
  v2 = sub_1D191D990();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1918940(uint64_t a1)
{
  v2 = sub_1D191D8E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D191897C(uint64_t a1)
{
  v2 = sub_1D191D8E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19189B8(uint64_t a1)
{
  v2 = sub_1D191D9E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19189F4(uint64_t a1)
{
  v2 = sub_1D191D9E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1918A30(uint64_t a1)
{
  v2 = sub_1D191D93C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1918A6C(uint64_t a1)
{
  v2 = sub_1D191D93C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticColorControlCluster.Command.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E80, &qword_1D1E83840);
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v36 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E88, &qword_1D1E83848);
  v43 = *(v7 - 8);
  v44 = v7;
  v8 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E90, &qword_1D1E83850);
  v38 = *(v11 - 8);
  v39 = v11;
  v12 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E98, &qword_1D1E83858);
  v37 = *(v15 - 8);
  v16 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v36 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646EA0, &qword_1D1E83860);
  v20 = *(v19 - 8);
  v47 = v19;
  v48 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v36 - v22;
  v45 = *v2;
  v24 = *(v2 + 4);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D191D894();
  sub_1D1E6930C();
  if (v24 > 1)
  {
    if (v24 == 2)
    {
      v57 = 2;
      sub_1D191D93C();
      v26 = v47;
      sub_1D1E68DFC();
      v56 = 0;
      v30 = v44;
      v31 = v46;
      sub_1D1E68F4C();
      if (v31)
      {
        (*(v43 + 8))(v10, v30);
        return (*(v48 + 8))(v23, v26);
      }

      v55 = 1;
      sub_1D1E68F4C();
      v28 = *(v43 + 8);
      v29 = v10;
    }

    else
    {
      v58 = 3;
      sub_1D191D8E8();
      v34 = v40;
      v26 = v47;
      sub_1D1E68DFC();
      v30 = v42;
      sub_1D1E68F4C();
      v28 = *(v41 + 8);
      v29 = v34;
    }

    v33 = v30;
    goto LABEL_15;
  }

  if (v24)
  {
    v54 = 1;
    sub_1D191D990();
    v26 = v47;
    sub_1D1E68DFC();
    v53 = 0;
    v15 = v39;
    v32 = v46;
    sub_1D1E68F4C();
    if (!v32)
    {
      v52 = 1;
      sub_1D1E68F3C();
      (*(v38 + 8))(v14, v15);
      return (*(v48 + 8))(v23, v26);
    }

    v28 = *(v38 + 8);
    v29 = v14;
    goto LABEL_10;
  }

  v51 = 0;
  sub_1D191D9E4();
  v26 = v47;
  sub_1D1E68DFC();
  v50 = 0;
  v27 = v46;
  sub_1D1E68F3C();
  if (v27)
  {
    v28 = *(v37 + 8);
    v29 = v18;
LABEL_10:
    v33 = v15;
LABEL_15:
    v28(v29, v33);
    return (*(v48 + 8))(v23, v26);
  }

  v49 = 1;
  sub_1D1E68F3C();
  (*(v37 + 8))(v18, v15);
  return (*(v48 + 8))(v23, v26);
}

uint64_t StaticColorControlCluster.Command.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1D1E6920C();
  sub_1D1919AE4(v4, v1 | (v2 << 32));
  return sub_1D1E6926C();
}

uint64_t StaticColorControlCluster.Command.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646ED0, &qword_1D1E83868);
  v68 = *(v63 - 8);
  v3 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v72 = &v61 - v4;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646ED8, &qword_1D1E83870);
  v69 = *(v65 - 8);
  v5 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v71 = &v61 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646EE0, &qword_1D1E83878);
  v66 = *(v7 - 8);
  v67 = v7;
  v8 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v61 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646EE8, &qword_1D1E83880);
  v64 = *(v11 - 8);
  v12 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v61 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646EF0, &unk_1D1E83888);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v61 - v18;
  v21 = a1[3];
  v20 = a1[4];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D191D894();
  v22 = v73;
  sub_1D1E692FC();
  if (!v22)
  {
    v23 = v14;
    v61 = v11;
    v62 = v16;
    v25 = v71;
    v24 = v72;
    v73 = v15;
    v26 = sub_1D1E68DDC();
    v27 = (2 * *(v26 + 16)) | 1;
    v75 = v26;
    v76 = v26 + 32;
    v77 = 0;
    v78 = v27;
    v28 = sub_1D18085BC();
    if (v28 == 4 || v77 != v78 >> 1)
    {
      v29 = sub_1D1E688EC();
      swift_allocError();
      v31 = v30;
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
      *v31 = &type metadata for StaticColorControlCluster.Command;
      v33 = v73;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
      swift_willThrow();
      (*(v62 + 8))(v19, v33);
      swift_unknownObjectRelease();
    }

    else
    {
      v79 = v28;
      if (v28 > 1u)
      {
        if (v28 == 2)
        {
          v80 = 2;
          sub_1D191D93C();
          v35 = v25;
          v36 = v73;
          sub_1D1E68C4C();
          v37 = v62;
          v38 = v19;
          v39 = v70;
          v47 = v38;
          v80 = 0;
          v48 = v65;
          v57 = sub_1D1E68DAC();
          v80 = 1;
          v58 = sub_1D1E68DAC();
          (*(v69 + 8))(v35, v48);
          (*(v37 + 8))(v47, v36);
          swift_unknownObjectRelease();
          v56 = v57 | (v58 << 16);
        }

        else
        {
          v80 = 3;
          sub_1D191D8E8();
          v42 = v24;
          v43 = v73;
          sub_1D1E68C4C();
          v44 = v62;
          v45 = v19;
          v39 = v70;
          v71 = v45;
          v53 = v63;
          v60 = sub_1D1E68DAC();
          (*(v68 + 8))(v42, v53);
          (*(v44 + 8))(v71, v43);
          swift_unknownObjectRelease();
          v56 = v60;
        }
      }

      else
      {
        if (v28)
        {
          v80 = 1;
          sub_1D191D990();
          v40 = v19;
          v41 = v73;
          sub_1D1E68C4C();
          v49 = v40;
          v80 = 0;
          v50 = v67;
          v51 = sub_1D1E68DAC();
          v52 = v62;
          v59 = v51;
          v80 = 1;
          LOBYTE(v40) = sub_1D1E68D9C();
          (*(v66 + 8))(v10, v50);
          (*(v52 + 8))(v49, v41);
          swift_unknownObjectRelease();
          v56 = v59 | (v40 << 16);
        }

        else
        {
          v80 = 0;
          sub_1D191D9E4();
          sub_1D1E68C4C();
          v80 = 0;
          v46 = v61;
          v54 = sub_1D1E68D9C();
          v80 = 1;
          v55 = sub_1D1E68D9C();
          (*(v64 + 8))(v23, v46);
          (*(v62 + 8))(v19, v73);
          swift_unknownObjectRelease();
          v56 = v54 | (v55 << 8);
        }

        v39 = v70;
      }

      *v39 = v56;
      *(v39 + 4) = v79;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v74);
}

unint64_t sub_1D1919A18()
{
  v2 = *v0;
  v3 = *(v0 + 4);
  return StaticColorControlCluster.Command.expectedValues.getter();
}

uint64_t sub_1D1919A88()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1D1E6920C();
  sub_1D1919AE4(v4, v1 | (v2 << 32));
  return sub_1D1E6926C();
}

uint64_t sub_1D1919AE4(__int128 *a1, uint64_t a2)
{
  v9 = a2;
  v10 = BYTE4(a2);
  v3 = dword_1D1E83810[a2 << 24 >> 56];
  sub_1D1E6922C();
  sub_1D1E6924C();
  sub_1D1E6924C();
  v4 = StaticColorControlCluster.Command.expectedValues.getter();
  if (v4)
  {
    v5 = v4;
    sub_1D1E6922C();
    sub_1D18560F4(a1, v5);
  }

  else
  {
    sub_1D1E6922C();
  }

  StaticColorControlCluster.Command.commandFields.getter(&v8);
  v6 = v8;
  if (v8)
  {
    sub_1D1E6922C();
    sub_1D1855E28(a1, v6);
  }

  else
  {
    sub_1D1E6922C();
  }

  StaticColorControlCluster.Command.description.getter();
  sub_1D1E678EC();
}

uint64_t sub_1D1919C00(__int128 *a1, unint64_t a2, unsigned __int8 a3)
{
  v11[1] = a2;
  v12 = a3;
  if (a3 >= 3u)
  {
    if (a3 != 3)
    {
      v6 = dword_1D1E84188[a2];
    }

    sub_1D1E6922C();
    sub_1D1E6924C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6924C();
    v5 = dword_1D1E84194[a3];
  }

  sub_1D1E6924C();
  v7 = StaticRVCClusterGroup.Command.expectedValues.getter();
  if (v7)
  {
    v8 = v7;
    sub_1D1E6922C();
    sub_1D18560F4(a1, v8);
  }

  else
  {
    sub_1D1E6922C();
  }

  StaticRVCClusterGroup.Command.commandFields.getter(v11);
  v9 = v11[0];
  if (v11[0])
  {
    sub_1D1E6922C();
    sub_1D1855E28(a1, v9);
  }

  else
  {
    sub_1D1E6922C();
  }

  StaticRVCClusterGroup.Command.description.getter();
  sub_1D1E678EC();
}

uint64_t sub_1D1919D70(__int128 *a1, char a2)
{
  v3 = a2 ^ 1;
  sub_1D1E6922C();
  sub_1D1E6924C();
  sub_1D1E6924C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E68, &qword_1D1E83828);
  inited = swift_initStackObject();
  *(inited + 32) = 0;
  v5 = inited + 32;
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 36) = 11;
  *(inited + 40) = v3 & 1;
  *(inited + 48) = 0;
  v6 = sub_1D18D4B28(inited);
  swift_setDeallocating();
  sub_1D1741A30(v5, &qword_1EC646E70, &qword_1D1E83830);
  sub_1D1E6922C();
  sub_1D18560F4(a1, v6);

  sub_1D1E6922C();
  sub_1D1E678EC();
}

uint64_t sub_1D1919E90(__int128 *a1, unsigned __int8 a2)
{
  v4 = a2;
  sub_1D1E6922C();
  sub_1D1E6924C();
  sub_1D1E6924C();
  if (v4 == 6)
  {
    sub_1D1E6922C();
    sub_1D1E6922C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E68, &qword_1D1E83828);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    *(inited + 32) = 0;
    v6 = inited + 32;
    *(inited + 36) = 10;
    v7 = (a2 - 1);
    if (v7 > 3)
    {
      v8 = 5;
    }

    else
    {
      v8 = qword_1D1E841A0[(a2 - 1)];
    }

    *(inited + 40) = v8;
    *(inited + 48) = 2;
    v9 = sub_1D18D4B28(inited);
    swift_setDeallocating();
    sub_1D1741A30(v6, &qword_1EC646E70, &qword_1D1E83830);
    sub_1D1E6922C();
    sub_1D18560F4(a1, v9);

    if (v7 > 3)
    {
      v10 = 5;
    }

    else
    {
      v10 = qword_1D1E841A0[(a2 - 1)];
    }

    sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    v11 = sub_1D1E684DC();
    v12 = sub_1D18D4C50(MEMORY[0x1E69E7CC0]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D17524E4(v10, 2, v11, isUniquelyReferenced_nonNull_native);

    sub_1D1E6922C();
    sub_1D1855E28(a1, v12);
  }

  return sub_1D1E678EC();
}

uint64_t sub_1D191A088()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1D1E6920C();
  sub_1D1919AE4(v4, v1 | (v2 << 32));
  return sub_1D1E6926C();
}

uint64_t StaticColorControlCluster.run(command:)(uint64_t a1)
{
  *(v2 + 88) = v1;
  v4 = *(*(type metadata accessor for ClusterPath(0) - 8) + 64) + 15;
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 176) = *a1;
  *(v2 + 180) = *(a1 + 4);

  return MEMORY[0x1EEE6DFA0](sub_1D191A174, 0, 0);
}

uint64_t sub_1D191A174()
{
  v19 = v0;
  v1 = *(v0 + 180);
  v2 = *(v0 + 176);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  *(v0 + 40) = &type metadata for StaticColorControlCluster.Command;
  v5 = sub_1D18FA3FC();
  *(v0 + 16) = v2;
  *(v0 + 48) = v5;
  *(v0 + 20) = v1;
  sub_1D191EED4(v3, v4, type metadata accessor for ClusterPath);
  v6 = *(v4 + *(type metadata accessor for EndpointPath(0) + 24));
  sub_1D191EF3C(v4, type metadata accessor for EndpointPath);
  v17 = MEMORY[0x1E69E7CC8];
  ExpectedValuesBuilder.addValues(from:in:)((v0 + 16), v6, &v18);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  *(v0 + 104) = v17;
  v7 = *(v0 + 176);
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      *(v0 + 64) = v17;
      v11 = swift_task_alloc();
      *(v0 + 144) = v11;
      *v11 = v0;
      v11[1] = sub_1D191A70C;
      v12 = *(v0 + 88);

      return StaticColorControlCluster.moveToColor(x:y:expectedValues:)(v7, SHIWORD(v7), (v0 + 64));
    }

    else
    {
      *(v0 + 56) = v17;
      v15 = swift_task_alloc();
      *(v0 + 160) = v15;
      *v15 = v0;
      v15[1] = sub_1D191A850;
      v16 = *(v0 + 88);

      return StaticColorControlCluster.moveToColorTemperature(colorTemperature:expectedValues:)(v7, (v0 + 56));
    }
  }

  else if (v1)
  {
    *(v0 + 72) = v17;
    v13 = swift_task_alloc();
    *(v0 + 128) = v13;
    *v13 = v0;
    v13[1] = sub_1D191A5C8;
    v14 = *(v0 + 88);

    return StaticColorControlCluster.enhancedMoveToHueAndSaturation(hue:saturation:expectedValues:)(v7, SBYTE2(v7), (v0 + 72));
  }

  else
  {
    *(v0 + 80) = v17;
    v8 = swift_task_alloc();
    *(v0 + 112) = v8;
    *v8 = v0;
    v8[1] = sub_1D191A484;
    v9 = *(v0 + 88);

    return StaticColorControlCluster.moveToHueAndSaturation(hue:saturation:expectedValues:)(v7, SBYTE1(v7), (v0 + 80));
  }
}

uint64_t sub_1D191A484()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D191A994, 0, 0);
  }

  else
  {
    v4 = v3[13];

    v5 = v3[12];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1D191A5C8()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D191AA00, 0, 0);
  }

  else
  {
    v4 = v3[13];

    v5 = v3[12];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1D191A70C()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  v3[19] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D191AA6C, 0, 0);
  }

  else
  {
    v4 = v3[13];

    v5 = v3[12];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1D191A850()
{
  v2 = *(*v1 + 160);
  v3 = *v1;
  v3[21] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D191AAD8, 0, 0);
  }

  else
  {
    v4 = v3[13];

    v5 = v3[12];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1D191A994()
{
  v1 = v0[13];

  v2 = v0[15];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D191AA00()
{
  v1 = v0[13];

  v2 = v0[17];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D191AA6C()
{
  v1 = v0[13];

  v2 = v0[19];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D191AAD8()
{
  v1 = v0[13];

  v2 = v0[21];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t StaticColorControlCluster.moveToHueAndSaturation(hue:saturation:expectedValues:)(char a1, char a2, uint64_t *a3)
{
  *(v4 + 32) = v3;
  *(v4 + 137) = a2;
  *(v4 + 136) = a1;
  v6 = type metadata accessor for ClusterPath(0);
  *(v4 + 40) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *a3;
  *(v4 + 56) = v8;
  *(v4 + 64) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D191ABF4, 0, 0);
}

uint64_t sub_1D191ABF4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 136);
  v6 = *(v0 + 137);
  v7 = [objc_allocWithZone(MEMORY[0x1E696F5F8]) init];
  *(v0 + 72) = v7;
  v8 = sub_1D1E691BC();
  [v7 setHue_];

  v9 = sub_1D1E691BC();
  [v7 setSaturation_];

  sub_1D1741B10(0, &qword_1EC646EF8, 0x1E696F590);
  sub_1D191EED4(v3, v1, type metadata accessor for ClusterPath);
  sub_1D191EF9C(v1, v2, type metadata accessor for EndpointPath);
  *(v2 + *(v4 + 20)) = 17;
  v10 = swift_task_alloc();
  *(v0 + 80) = v10;
  *v10 = v0;
  v10[1] = sub_1D191AD84;
  v11 = *(v0 + 56);

  return sub_1D1A092C4(v11);
}

uint64_t sub_1D191AD84(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 88) = a1;

  sub_1D191EF3C(v3, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D191AEB8, 0, 0);
}

uint64_t sub_1D191AEB8()
{
  v16 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[4];
  v13 = MEMORY[0x1E69E7CC0];
  v14 = v1;
  sub_1D1A1456C(&v14, &v13);
  v4 = v13;
  v0[12] = v13;
  v5 = swift_allocObject();
  v0[13] = v5;
  *(v5 + 16) = v2;
  v6 = v2;
  v14 = 0xD00000000000001ALL;
  v15 = 0x80000001D1EBE3A0;
  v7 = ClusterPath.description.getter();
  MEMORY[0x1D3890F70](v7);

  v8 = v14;
  v9 = v15;
  v0[14] = v15;
  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_1D191B034;
  v11 = v0[11];

  return sub_1D1914C38(0xD000000000000016, 0x80000001D1EBE380, v11, v4, v8, v9, &unk_1D1E838C8, v5);
}

uint64_t sub_1D191B034()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  v2[16] = v0;

  v5 = v2[14];
  if (v0)
  {
    v6 = v2[12];

    v7 = sub_1D191F230;
  }

  else
  {
    v9 = v2[12];
    v8 = v2[13];
    v10 = v2[11];

    v7 = sub_1D191F21C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t StaticColorControlCluster.enhancedMoveToHueAndSaturation(hue:saturation:expectedValues:)(__int16 a1, char a2, uint64_t *a3)
{
  *(v4 + 32) = v3;
  *(v4 + 138) = a2;
  *(v4 + 136) = a1;
  v6 = type metadata accessor for ClusterPath(0);
  *(v4 + 40) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *a3;
  *(v4 + 56) = v8;
  *(v4 + 64) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D191B244, 0, 0);
}

uint64_t sub_1D191B244()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 136);
  v6 = *(v0 + 138);
  v7 = [objc_allocWithZone(MEMORY[0x1E696F5E0]) init];
  *(v0 + 72) = v7;
  v8 = sub_1D1E692AC();
  [v7 setEnhancedHue_];

  v9 = sub_1D1E691BC();
  [v7 setSaturation_];

  sub_1D1741B10(0, &qword_1EC646EF8, 0x1E696F590);
  sub_1D191EED4(v3, v1, type metadata accessor for ClusterPath);
  sub_1D191EF9C(v1, v2, type metadata accessor for EndpointPath);
  *(v2 + *(v4 + 20)) = 17;
  v10 = swift_task_alloc();
  *(v0 + 80) = v10;
  *v10 = v0;
  v10[1] = sub_1D191B3D4;
  v11 = *(v0 + 56);

  return sub_1D1A092C4(v11);
}

uint64_t sub_1D191B3D4(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 88) = a1;

  sub_1D191EF3C(v3, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D191B508, 0, 0);
}

uint64_t sub_1D191B508()
{
  v16 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[4];
  v13 = MEMORY[0x1E69E7CC0];
  v14 = v1;
  sub_1D1A1456C(&v14, &v13);
  v4 = v13;
  v0[12] = v13;
  v5 = swift_allocObject();
  v0[13] = v5;
  *(v5 + 16) = v2;
  v6 = v2;
  v14 = 0xD00000000000001ALL;
  v15 = 0x80000001D1EBE3A0;
  v7 = ClusterPath.description.getter();
  MEMORY[0x1D3890F70](v7);

  v8 = v14;
  v9 = v15;
  v0[14] = v15;
  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_1D191B034;
  v11 = v0[11];

  return sub_1D1914C38(0xD00000000000001ELL, 0x80000001D1EBE3C0, v11, v4, v8, v9, &unk_1D1E838E8, v5);
}

uint64_t StaticColorControlCluster.moveToColor(x:y:expectedValues:)(__int16 a1, __int16 a2, uint64_t *a3)
{
  *(v4 + 32) = v3;
  *(v4 + 138) = a2;
  *(v4 + 136) = a1;
  v6 = type metadata accessor for ClusterPath(0);
  *(v4 + 40) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *a3;
  *(v4 + 56) = v8;
  *(v4 + 64) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D191B730, 0, 0);
}

uint64_t sub_1D191B730()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 136);
  v6 = *(v0 + 138);
  v7 = [objc_allocWithZone(MEMORY[0x1E696F5E8]) init];
  *(v0 + 72) = v7;
  v8 = sub_1D1E692AC();
  [v7 setColorX_];

  v9 = sub_1D1E692AC();
  [v7 setColorY_];

  sub_1D1741B10(0, &qword_1EC646EF8, 0x1E696F590);
  sub_1D191EED4(v3, v1, type metadata accessor for ClusterPath);
  sub_1D191EF9C(v1, v2, type metadata accessor for EndpointPath);
  *(v2 + *(v4 + 20)) = 17;
  v10 = swift_task_alloc();
  *(v0 + 80) = v10;
  *v10 = v0;
  v10[1] = sub_1D191B8C0;
  v11 = *(v0 + 56);

  return sub_1D1A092C4(v11);
}

uint64_t sub_1D191B8C0(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 88) = a1;

  sub_1D191EF3C(v3, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D191B9F4, 0, 0);
}

uint64_t sub_1D191B9F4()
{
  v16 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[4];
  v13 = MEMORY[0x1E69E7CC0];
  v14 = v1;
  sub_1D1A1456C(&v14, &v13);
  v4 = v13;
  v0[12] = v13;
  v5 = swift_allocObject();
  v0[13] = v5;
  *(v5 + 16) = v2;
  v6 = v2;
  v14 = 0xD00000000000001ALL;
  v15 = 0x80000001D1EBE3A0;
  v7 = ClusterPath.description.getter();
  MEMORY[0x1D3890F70](v7);

  v8 = v14;
  v9 = v15;
  v0[14] = v15;
  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_1D191BB74;
  v11 = v0[11];

  return sub_1D1914C38(0x6F436F5465766F6DLL, 0xEB00000000726F6CLL, v11, v4, v8, v9, &unk_1D1E838F8, v5);
}

uint64_t sub_1D191BB74()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  v2[16] = v0;

  v5 = v2[14];
  if (v0)
  {
    v6 = v2[12];

    v7 = sub_1D191BD4C;
  }

  else
  {
    v9 = v2[12];
    v8 = v2[13];
    v10 = v2[11];

    v7 = sub_1D191BCD4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D191BCD4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D191BD4C()
{
  v1 = *(v0 + 128);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 56);
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);

    v6 = *(v0 + 24);
    sub_1D191EED4(v4, v3, type metadata accessor for ClusterPath);
    v7 = type metadata accessor for MatterCommandError.MatterError();
    sub_1D191DEF4(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError);
    swift_allocError();
    v9 = v8;
    v10 = v7[7];
    v11 = type metadata accessor for StaticEndpoint();
    (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
    *v9 = v6;
    sub_1D191EED4(v3, &v9[v7[5]], type metadata accessor for EndpointPath);
    LOBYTE(v10) = *(v3 + *(v5 + 20));
    v12 = v6;
    sub_1D191EF3C(v3, type metadata accessor for ClusterPath);
    v9[v7[6]] = v10;
    swift_willThrow();
  }

  v13 = *(v0 + 104);
  v14 = *(v0 + 88);
  v15 = *(v0 + 72);
  v17 = *(v0 + 48);
  v16 = *(v0 + 56);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t StaticColorControlCluster.moveToColorTemperature(colorTemperature:expectedValues:)(__int16 a1, uint64_t *a2)
{
  *(v3 + 32) = v2;
  *(v3 + 136) = a1;
  v5 = type metadata accessor for ClusterPath(0);
  *(v3 + 40) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *a2;
  *(v3 + 56) = v7;
  *(v3 + 64) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D191C028, 0, 0);
}

uint64_t sub_1D191C028()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 136);
  v6 = [objc_allocWithZone(MEMORY[0x1E696F5F0]) init];
  *(v0 + 72) = v6;
  v7 = sub_1D1E692AC();
  [v6 setColorTemperatureMireds_];

  sub_1D1741B10(0, &qword_1EC646EF8, 0x1E696F590);
  sub_1D191EED4(v3, v1, type metadata accessor for ClusterPath);
  sub_1D191EF9C(v1, v2, type metadata accessor for EndpointPath);
  *(v2 + *(v4 + 20)) = 17;
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *v8 = v0;
  v8[1] = sub_1D191C188;
  v9 = *(v0 + 56);

  return sub_1D1A092C4(v9);
}

uint64_t sub_1D191C188(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 88) = a1;

  sub_1D191EF3C(v3, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D191C2BC, 0, 0);
}

uint64_t sub_1D191C2BC()
{
  v16 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[4];
  v13 = MEMORY[0x1E69E7CC0];
  v14 = v1;
  sub_1D1A1456C(&v14, &v13);
  v4 = v13;
  v0[12] = v13;
  v5 = swift_allocObject();
  v0[13] = v5;
  *(v5 + 16) = v2;
  v6 = v2;
  v14 = 0xD00000000000001ALL;
  v15 = 0x80000001D1EBE3A0;
  v7 = ClusterPath.description.getter();
  MEMORY[0x1D3890F70](v7);

  v8 = v14;
  v9 = v15;
  v0[14] = v15;
  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_1D191B034;
  v11 = v0[11];

  return sub_1D1914C38(0xD000000000000016, 0x80000001D1EBE3E0, v11, v4, v8, v9, &unk_1D1E83908, v5);
}

uint64_t sub_1D191C444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D191C46C, 0, 0);
}

uint64_t sub_1D191C46C()
{
  v1 = v0[20];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[23] = v2;
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D191C5E4;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_157;
  v0[14] = v6;
  [v5 moveToHueAndSaturationWithParams:v3 expectedValues:v2 expectedValueInterval:v4 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D191C5E4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_1D191F224;
  }

  else
  {
    v3 = sub_1D191F1FC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D191C6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D191C71C, 0, 0);
}

uint64_t sub_1D191C71C()
{
  v1 = v0[20];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[23] = v2;
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D191C5E4;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_144;
  v0[14] = v6;
  [v5 enhancedMoveToHueAndSaturationWithParams:v3 expectedValues:v2 expectedValueInterval:v4 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D191C894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D191C8BC, 0, 0);
}

uint64_t sub_1D191C8BC()
{
  v1 = v0[20];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[23] = v2;
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D191CA34;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_140;
  v0[14] = v6;
  [v5 moveToColorWithParams:v3 expectedValues:v2 expectedValueInterval:v4 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D191CA34()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_1D191CBBC;
  }

  else
  {
    v3 = sub_1D191CB44;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D191CB44()
{
  v1 = v0[23];
  *(v0[18] + 24) = MEMORY[0x1E69E7CA8] + 8;

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D191CBBC()
{
  v1 = v0[23];
  v2 = v0[24];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[24];

  return v3();
}

uint64_t sub_1D191CC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D191CC54, 0, 0);
}

uint64_t sub_1D191CC54()
{
  v1 = v0[20];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[23] = v2;
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D191C5E4;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_22;
  v0[14] = v6;
  [v5 moveToColorTemperatureWithParams:v3 expectedValues:v2 expectedValueInterval:v4 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D191CDD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D17C4BFC;

  return StaticColorControlCluster.run(command:)(a1);
}

void static StaticColorControlCluster.Command.Template.moveToHueAndSaturation(_:_:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v3 = a2 * 254.0;
  if (v3 <= -1.0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 256.0)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = a3 * 254.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  if (v4 <= -1.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 < 256.0)
  {
    *a1 = v3 | (v4 << 8);
    *(a1 + 4) = 0;
    return;
  }

LABEL_12:
  __break(1u);
}

id StaticColorControlCluster.Command.Template.command(with:endpoint:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646F08, &unk_1D1E83910);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v24[-1] - v7;
  v9 = type metadata accessor for StaticEndpoint();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  v14 = *(v2 + 4);
  sub_1D191EED4(a2, v12, type metadata accessor for StaticEndpoint);
  sub_1D191D31C(v8);
  v15 = type metadata accessor for StaticColorControlCluster();
  v16 = (*(*(v15 - 8) + 48))(v8, 1, v15);
  sub_1D1741A30(v8, &qword_1EC646F08, &unk_1D1E83910);
  if (v16 == 1)
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    goto LABEL_9;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      goto LABEL_8;
    }

LABEL_7:
    v13 = v13;
    goto LABEL_8;
  }

  if (!v14)
  {
    goto LABEL_7;
  }

  v13 &= 0xFFFFFFu;
LABEL_8:
  *(&v28 + 1) = &type metadata for StaticColorControlCluster.Command;
  v29 = sub_1D18FA3FC();
  LODWORD(v27) = v13;
  BYTE4(v27) = v14;
LABEL_9:
  sub_1D191EF3C(v12, type metadata accessor for StaticEndpoint);
  sub_1D191DD58(&v27, v24);
  v17 = v25;
  if (v25)
  {
    v18 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v19 = a2 + *(v9 + 20);
    v20 = type metadata accessor for EndpointPath(0);
    v21 = MatterCommand.hm_matterCommand(for:endpointID:)(a1, *(v19 + *(v20 + 24)), v17, v18);
    sub_1D1741A30(&v27, &qword_1EC646A98, &unk_1D1E858B0);
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    sub_1D1741A30(&v27, &qword_1EC646A98, &unk_1D1E858B0);
    sub_1D1741A30(v24, &qword_1EC646A98, &unk_1D1E858B0);
    return 0;
  }

  return v21;
}

unint64_t StaticColorControlCluster.Command.Template.matterCommand(endpoint:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646F08, &unk_1D1E83910);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v18 - v7;
  v9 = *v2;
  v10 = *(v2 + 4);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  MatterEndpoint.colorControlCluster.getter(v11, v12, v8);
  v13 = type metadata accessor for StaticColorControlCluster();
  LODWORD(v11) = (*(*(v13 - 8) + 48))(v8, 1, v13);
  result = sub_1D1741A30(v8, &qword_1EC646F08, &unk_1D1E83910);
  if (v11 == 1)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v15 = v9;
    if (v10 == 2)
    {
      v16 = v9;
    }

    else
    {
      v16 = v9;
    }

    if (v10)
    {
      v15 = v9 & 0xFFFFFF;
    }

    if (v10 <= 1)
    {
      v17 = v15;
    }

    else
    {
      v17 = v16;
    }

    *(a2 + 24) = &type metadata for StaticColorControlCluster.Command;
    result = sub_1D18FA3FC();
    *(a2 + 32) = result;
    *a2 = v17;
    *(a2 + 4) = v10;
  }

  return result;
}

uint64_t sub_1D191D31C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StaticCluster();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + *(type metadata accessor for StaticEndpoint() + 36));
  if (!*(v8 + 16))
  {
    goto LABEL_6;
  }

  v9 = sub_1D171D278(17);
  if ((v10 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1D191EED4(*(v8 + 56) + *(v4 + 72) * v9, v7, type metadata accessor for StaticCluster);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1D191EF3C(v7, type metadata accessor for StaticCluster);
LABEL_6:
    v11 = 1;
    goto LABEL_7;
  }

  sub_1D191EF9C(v7, a1, type metadata accessor for StaticColorControlCluster);
  v11 = 0;
LABEL_7:
  v12 = type metadata accessor for StaticColorControlCluster();
  return (*(*(v12 - 8) + 56))(a1, v11, 1, v12);
}

uint64_t StaticColorControlCluster.Command.Template.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 4) > 1u)
  {
    if (*(v0 + 4) == 2)
    {
      MEMORY[0x1D3892850](2);
      sub_1D1E6923C();
    }

    else
    {
      MEMORY[0x1D3892850](3);
    }

    return sub_1D1E6923C();
  }

  else
  {
    if (*(v0 + 4))
    {
      MEMORY[0x1D3892850](1);
      sub_1D1E6923C();
    }

    else
    {
      MEMORY[0x1D3892850](0);
      sub_1D1E6922C();
    }

    return sub_1D1E6922C();
  }
}

uint64_t StaticColorControlCluster.Command.Template.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1D1E6920C();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      MEMORY[0x1D3892850](2);
      sub_1D1E6923C();
    }

    else
    {
      MEMORY[0x1D3892850](3);
    }

    sub_1D1E6923C();
  }

  else
  {
    if (v2)
    {
      MEMORY[0x1D3892850](1);
      sub_1D1E6923C();
    }

    else
    {
      MEMORY[0x1D3892850](0);
      sub_1D1E6922C();
    }

    sub_1D1E6922C();
  }

  return sub_1D1E6926C();
}