uint64_t sub_1D1971FB4(uint64_t a1)
{
  v2 = sub_1D19797B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1971FF0(uint64_t a1)
{
  v2 = sub_1D19797B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServiceArea.Map.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647BD0, &qword_1D1E884F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19797B4();
  sub_1D1E6930C();
  v15 = 0;
  sub_1D1E68F5C();
  if (!v2)
  {
    v14 = 1;
    sub_1D1E68ECC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t ServiceArea.Map.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_1D1E6924C();

  return sub_1D1E678EC();
}

uint64_t ServiceArea.Map.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_1D1E6920C();
  sub_1D1E6924C();
  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t ServiceArea.Map.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647BE0, &qword_1D1E88500);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19797B4();
  sub_1D1E692FC();
  if (!v2)
  {
    v18 = 0;
    v11 = sub_1D1E68DBC();
    v17 = 1;
    v13 = sub_1D1E68D2C();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D197241C()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_1D1E6920C();
  sub_1D1E6924C();
  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1972480()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_1D1E6924C();

  return sub_1D1E678EC();
}

uint64_t sub_1D19724D4()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_1D1E6920C();
  sub_1D1E6924C();
  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1972534(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_1D1E6904C();
  }
}

uint64_t ServiceArea.selectedMap.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v2;
}

uint64_t ServiceArea.currentArea.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v1 + 88);
  return sub_1D1978DB8(v2, v3, v4, v5);
}

char *sub_1D197264C(uint64_t a1)
{
  v3 = type metadata accessor for ClusterPath(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v7 = v1[1];
  sub_1D197AF6C(a1, v6, type metadata accessor for ClusterPath);
  v9 = sub_1D19C52F0(v6, v8, v7);
  sub_1D197AFD4(v6, type metadata accessor for ClusterPath);
  v10 = *(v9 + 16);
  v11 = 32;
  do
  {
    if (!v10)
    {

      return 0;
    }

    v12 = *(v9 + v11);
    v11 += 4;
    --v10;
  }

  while (v12);

  *&v36[8] = v3;
  *&v36[16] = sub_1D197B034(&qword_1EC646A70, type metadata accessor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v35);
  sub_1D197AF6C(a1, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  v37[0] = v8;
  v37[1] = v7;
  AttributeValueSet.value(for:in:)(0, &v35, v39);
  __swift_destroy_boxed_opaque_existential_1(&v35);
  sub_1D18C20AC(v39, &v35);
  if (!*&v36[8])
  {
    sub_1D1741A30(&v35, &qword_1EC645D58, &unk_1D1E7E530);
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647D38, &qword_1D1E88FE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v25 = sub_1D1E6709C();
    __swift_project_value_buffer(v25, qword_1EE07A0B0);
    sub_1D18C20AC(v39, &v35);
    v26 = sub_1D1E6707C();
    v27 = sub_1D1E6833C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v38 = v29;
      *v28 = 136315138;
      sub_1D18C20AC(&v35, v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
      v30 = sub_1D1E678BC();
      v32 = v31;
      sub_1D1741A30(&v35, &qword_1EC645D58, &unk_1D1E7E530);
      v33 = sub_1D1B1312C(v30, v32, &v38);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_1D16EC000, v26, v27, "Couldn't create [MTRServiceAreaClusterAreaStruct] from value '%s'", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1D3893640](v29, -1, -1);
      MEMORY[0x1D3893640](v28, -1, -1);
    }

    else
    {

      sub_1D1741A30(&v35, &qword_1EC645D58, &unk_1D1E7E530);
    }

    sub_1D1741A30(v39, &qword_1EC645D58, &unk_1D1E7E530);
    return 0;
  }

  v14 = v37[0];
  if (!(v37[0] >> 62))
  {
    v15 = *((v37[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_29:

    sub_1D1741A30(v39, &qword_1EC645D58, &unk_1D1E7E530);
    return MEMORY[0x1E69E7CC0];
  }

  v15 = sub_1D1E6873C();
  if (!v15)
  {
    goto LABEL_29;
  }

LABEL_8:
  v37[0] = MEMORY[0x1E69E7CC0];
  result = sub_1D178D634(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v17 = 0;
    v18 = v37[0];
    if ((v14 & 0xC000000000000001) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    for (i = MEMORY[0x1D3891EF0](v17, v14); ; i = *(v14 + 8 * v17 + 32))
    {
      sub_1D1976D2C(i, &v35);
      v37[0] = v18;
      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1D178D634((v20 > 1), v21 + 1, 1);
        v18 = v37[0];
      }

      *(v18 + 16) = v21 + 1;
      v22 = (v18 + 48 * v21);
      v23 = v35;
      v24 = *v36;
      *(v22 + 57) = *&v36[9];
      v22[2] = v23;
      v22[3] = v24;
      if (v15 - 1 == v17)
      {
        break;
      }

      ++v17;
      if ((v14 & 0xC000000000000001) != 0)
      {
        goto LABEL_10;
      }

LABEL_11:
      ;
    }

    sub_1D1741A30(v39, &qword_1EC645D58, &unk_1D1E7E530);

    return v18;
  }

  __break(1u);
  return result;
}

uint64_t ServiceArea.Area.displayName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 39);
  v3 = *(v0 + 40);
  if (!v1)
  {
    goto LABEL_6;
  }

  v4 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v4 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = *(v0 + 16);
    v6 = *(v0 + 24);

    return v5;
  }

  else
  {
LABEL_6:
    if (*(v0 + 36))
    {
      if (*(v0 + 38))
      {
        return static String.hfLocalized(_:)(0xD000000000000014, 0x80000001D1EBF440);
      }

      else
      {
        v8 = UInt8.landmarkLocalizationKey.getter(*(v0 + 37));
        MEMORY[0x1D3890F70](v8);

        if ((v3 & 1) == 0)
        {
          v9 = UInt8.relativePositionLocalizationKey.getter(v2);
          if (v10)
          {
            v11 = v9;
            v12 = v10;

            MEMORY[0x1D3890F70](95, 0xE100000000000000);

            MEMORY[0x1D3890F70](v11, v12);
          }
        }

        v13 = static String.hfLocalized(_:)(0xD000000000000015, 0x80000001D1EBF460);

        return v13;
      }
    }

    else
    {
      return UInt8.areaTypeDisplayName.getter(*(v0 + 35));
    }
  }
}

char *sub_1D1972CD0(uint64_t a1)
{
  v3 = type metadata accessor for ClusterPath(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v7 = v1[1];
  sub_1D197AF6C(a1, v6, type metadata accessor for ClusterPath);
  v9 = sub_1D19C52F0(v6, v8, v7);
  sub_1D197AFD4(v6, type metadata accessor for ClusterPath);
  v10 = *(v9 + 16);
  v11 = 32;
  do
  {
    if (!v10)
    {

      return 0;
    }

    v12 = *(v9 + v11);
    v11 += 4;
    --v10;
  }

  while (v12 != 2);

  v42 = v3;
  v43 = sub_1D197B034(&qword_1EC646A70, type metadata accessor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
  sub_1D197AF6C(a1, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  v39[0] = v8;
  v39[1] = v7;
  AttributeValueSet.value(for:in:)(1, v41, v44);
  __swift_destroy_boxed_opaque_existential_1(v41);
  sub_1D18C20AC(v44, v41);
  if (!v42)
  {
    sub_1D1741A30(v41, &qword_1EC645D58, &unk_1D1E7E530);
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647D28, &qword_1D1E88FC8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v30 = sub_1D1E6709C();
    __swift_project_value_buffer(v30, qword_1EE07A0B0);
    sub_1D18C20AC(v44, v41);
    v31 = sub_1D1E6707C();
    v32 = sub_1D1E6833C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v40 = v34;
      *v33 = 136315138;
      sub_1D18C20AC(v41, v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
      v35 = sub_1D1E678BC();
      v37 = v36;
      sub_1D1741A30(v41, &qword_1EC645D58, &unk_1D1E7E530);
      v38 = sub_1D1B1312C(v35, v37, &v40);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_1D16EC000, v31, v32, "Couldn't create [MTRServiceAreaClusterMapStruct] from value '%s'", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1D3893640](v34, -1, -1);
      MEMORY[0x1D3893640](v33, -1, -1);
    }

    else
    {

      sub_1D1741A30(v41, &qword_1EC645D58, &unk_1D1E7E530);
    }

    sub_1D1741A30(v44, &qword_1EC645D58, &unk_1D1E7E530);
    return 0;
  }

  v14 = v39[0];
  if (!(v39[0] >> 62))
  {
    v15 = *((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_28:

    sub_1D1741A30(v44, &qword_1EC645D58, &unk_1D1E7E530);
    return MEMORY[0x1E69E7CC0];
  }

  v15 = sub_1D1E6873C();
  if (!v15)
  {
    goto LABEL_28;
  }

LABEL_8:
  v41[0] = MEMORY[0x1E69E7CC0];
  result = sub_1D178D654(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v17 = 0;
    v18 = v41[0];
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1D3891EF0](v17, v14);
      }

      else
      {
        v19 = *(v14 + 8 * v17 + 32);
      }

      v20 = v19;
      v21 = [v19 mapID];
      v22 = [v21 unsignedIntValue];

      v23 = [v20 name];
      v24 = sub_1D1E6781C();
      v26 = v25;

      v41[0] = v18;
      v28 = *(v18 + 16);
      v27 = *(v18 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1D178D654((v27 > 1), v28 + 1, 1);
        v18 = v41[0];
      }

      *(v18 + 16) = v28 + 1;
      v29 = v18 + 24 * v28;
      *(v29 + 32) = v22;
      ++v17;
      *(v29 + 40) = v24;
      *(v29 + 48) = v26;
    }

    while (v15 != v17);
    sub_1D1741A30(v44, &qword_1EC645D58, &unk_1D1E7E530);

    return v18;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D197321C(uint64_t a1)
{
  v3 = type metadata accessor for ClusterPath(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v7 = v1[1];
  sub_1D197AF6C(a1, v6, type metadata accessor for ClusterPath);
  v9 = sub_1D19C52F0(v6, v8, v7);
  sub_1D197AFD4(v6, type metadata accessor for ClusterPath);
  v10 = *(v9 + 16);
  v11 = 32;
  do
  {
    if (!v10)
    {

      return 0;
    }

    v12 = *(v9 + v11);
    v11 += 4;
    --v10;
  }

  while (v12 != 2);

  v26[3] = v3;
  v26[4] = sub_1D197B034(&qword_1EC646A70, type metadata accessor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  sub_1D197AF6C(a1, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  v25[0] = v8;
  v25[1] = v7;
  AttributeValueSet.value(for:in:)(2, v26, &v27);
  __swift_destroy_boxed_opaque_existential_1(v26);
  if (v28)
  {
    sub_1D1742194(&v27, v29);
    sub_1D1741970(v29, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646A50, &unk_1D1E910D0);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v29);
      return v27;
    }

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v15 = sub_1D1E6709C();
    __swift_project_value_buffer(v15, qword_1EE07A0B0);
    sub_1D1741970(v29, v26);
    v16 = sub_1D1E6707C();
    v17 = sub_1D1E6833C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25[0] = v19;
      *v18 = 136315138;
      sub_1D1741970(v26, &v27);
      v20 = sub_1D1E678BC();
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1(v26);
      v23 = sub_1D1B1312C(v20, v22, v25);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_1D16EC000, v16, v17, "Couldn't decode selectedAreaIDs from value '%s'", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1D3893640](v19, -1, -1);
      MEMORY[0x1D3893640](v18, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v26);
    }

    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    sub_1D1741A30(&v27, &qword_1EC645D58, &unk_1D1E7E530);
  }

  return 0;
}

unint64_t sub_1D1973598(uint64_t a1)
{
  v3 = type metadata accessor for ClusterPath(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v7 = v1[1];
  sub_1D197AF6C(a1, v6, type metadata accessor for ClusterPath);
  v9 = sub_1D19C52F0(v6, v8, v7);
  sub_1D197AFD4(v6, type metadata accessor for ClusterPath);
  v10 = *(v9 + 16);
  v11 = 32;
  do
  {
    if (!v10)
    {

      goto LABEL_15;
    }

    v12 = *(v9 + v11);
    v11 += 4;
    --v10;
  }

  while (v12 != 3);

  v28[3] = v3;
  v28[4] = sub_1D197B034(&qword_1EC646A70, type metadata accessor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  sub_1D197AF6C(a1, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  v27[0] = v8;
  v27[1] = v7;
  AttributeValueSet.value(for:in:)(3, v28, &v29);
  __swift_destroy_boxed_opaque_existential_1(v28);
  if (v30)
  {
    sub_1D1742194(&v29, v31);
    sub_1D1741970(v31, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v31);
      v14 = 0;
      v15 = v29;
      return v15 | (v14 << 32);
    }

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v16 = sub_1D1E6709C();
    __swift_project_value_buffer(v16, qword_1EE07A0B0);
    sub_1D1741970(v31, v28);
    v17 = sub_1D1E6707C();
    v18 = sub_1D1E6833C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27[0] = v20;
      *v19 = 136315138;
      sub_1D1741970(v28, &v29);
      v21 = sub_1D1E678BC();
      v23 = v22;
      __swift_destroy_boxed_opaque_existential_1(v28);
      v24 = sub_1D1B1312C(v21, v23, v27);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_1D16EC000, v17, v18, "Couldn't decode currentAreaID from value '%s'", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1D3893640](v20, -1, -1);
      MEMORY[0x1D3893640](v19, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v28);
    }

    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    sub_1D1741A30(&v29, &qword_1EC645D58, &unk_1D1E7E530);
  }

LABEL_15:
  v15 = 0;
  v14 = 1;
  return v15 | (v14 << 32);
}

unint64_t sub_1D1973918(uint64_t a1)
{
  v3 = type metadata accessor for ClusterPath(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v7 = v1[1];
  sub_1D197AF6C(a1, v6, type metadata accessor for ClusterPath);
  v9 = sub_1D19C52F0(v6, v8, v7);
  sub_1D197AFD4(v6, type metadata accessor for ClusterPath);
  v10 = *(v9 + 16);
  v11 = 32;
  do
  {
    if (!v10)
    {

      goto LABEL_15;
    }

    v12 = *(v9 + v11);
    v11 += 4;
    --v10;
  }

  while (v12 != 4);

  v28[3] = v3;
  v28[4] = sub_1D197B034(&qword_1EC646A70, type metadata accessor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  sub_1D197AF6C(a1, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  v27[0] = v8;
  v27[1] = v7;
  AttributeValueSet.value(for:in:)(4, v28, &v29);
  __swift_destroy_boxed_opaque_existential_1(v28);
  if (v30)
  {
    sub_1D1742194(&v29, v31);
    sub_1D1741970(v31, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v31);
      v14 = 0;
      v15 = v29;
      return v15 | (v14 << 32);
    }

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v16 = sub_1D1E6709C();
    __swift_project_value_buffer(v16, qword_1EE07A0B0);
    sub_1D1741970(v31, v28);
    v17 = sub_1D1E6707C();
    v18 = sub_1D1E6833C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27[0] = v20;
      *v19 = 136315138;
      sub_1D1741970(v28, &v29);
      v21 = sub_1D1E678BC();
      v23 = v22;
      __swift_destroy_boxed_opaque_existential_1(v28);
      v24 = sub_1D1B1312C(v21, v23, v27);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_1D16EC000, v17, v18, "Couldn't decode estimatedEndTime from value '%s'", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1D3893640](v20, -1, -1);
      MEMORY[0x1D3893640](v19, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v28);
    }

    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    sub_1D1741A30(&v29, &qword_1EC645D58, &unk_1D1E7E530);
  }

LABEL_15:
  v15 = 0;
  v14 = 1;
  return v15 | (v14 << 32);
}

char *sub_1D1973C98(uint64_t a1)
{
  v3 = type metadata accessor for ClusterPath(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v7 = v1[1];
  sub_1D197AF6C(a1, v6, type metadata accessor for ClusterPath);
  v9 = sub_1D19C52F0(v6, v8, v7);
  sub_1D197AFD4(v6, type metadata accessor for ClusterPath);
  v10 = *(v9 + 16);
  v11 = 32;
  do
  {
    if (!v10)
    {

      return 0;
    }

    v12 = *(v9 + v11);
    v11 += 4;
    --v10;
  }

  while (v12 != 5);

  v60 = v3;
  v61 = sub_1D197B034(&qword_1EC646A70, type metadata accessor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v59);
  sub_1D197AF6C(a1, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  v57[0] = v8;
  v57[1] = v7;
  AttributeValueSet.value(for:in:)(5, v59, v62);
  __swift_destroy_boxed_opaque_existential_1(v59);
  sub_1D18C20AC(v62, v59);
  if (!v60)
  {
    sub_1D1741A30(v59, &qword_1EC645D58, &unk_1D1E7E530);
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647D30, &unk_1D1E88FD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_33:
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v42 = sub_1D1E6709C();
    __swift_project_value_buffer(v42, qword_1EE07A0B0);
    sub_1D18C20AC(v62, v59);
    v43 = sub_1D1E6707C();
    v44 = sub_1D1E6833C();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v58 = v46;
      *v45 = 136446210;
      sub_1D18C20AC(v59, v57);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
      v47 = sub_1D1E678BC();
      v49 = v48;
      sub_1D1741A30(v59, &qword_1EC645D58, &unk_1D1E7E530);
      v50 = sub_1D1B1312C(v47, v49, &v58);

      *(v45 + 4) = v50;
      _os_log_impl(&dword_1D16EC000, v43, v44, "Couldn't create [MTRServiceAreaClusterProgressStruct] from value '%{public}s'", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x1D3893640](v46, -1, -1);
      MEMORY[0x1D3893640](v45, -1, -1);
    }

    else
    {

      sub_1D1741A30(v59, &qword_1EC645D58, &unk_1D1E7E530);
    }

    sub_1D1741A30(v62, &qword_1EC645D58, &unk_1D1E7E530);
    return 0;
  }

  v14 = v57[0];
  if (!(v57[0] >> 62))
  {
    v15 = *((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_42:

    sub_1D1741A30(v62, &qword_1EC645D58, &unk_1D1E7E530);
    return MEMORY[0x1E69E7CC0];
  }

  v51 = v57[0];
  v15 = sub_1D1E6873C();
  v14 = v51;
  if (!v15)
  {
    goto LABEL_42;
  }

LABEL_8:
  v16 = v14;
  v59[0] = MEMORY[0x1E69E7CC0];
  result = sub_1D178D674(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v19 = 0;
    v20 = v59[0];
    v21 = v16;
    v53 = v16 & 0xC000000000000001;
    v22 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    *&v18 = 16908544;
    v52 = v18;
    v54 = v15;
    v55 = v16;
    do
    {
      if (v53)
      {
        v23 = MEMORY[0x1D3891EF0](v19, v21);
      }

      else
      {
        v23 = *(v21 + 8 * v19 + 32);
      }

      v24 = v23;
      v25 = [v23 areaID];
      v56 = [v25 v22[322]];

      v26 = [v24 status];
      v27 = [v26 unsignedCharValue];
      if (v27 >= 4)
      {
        if (qword_1EE07A0A8 != -1)
        {
          swift_once();
        }

        v29 = sub_1D1E6709C();
        __swift_project_value_buffer(v29, qword_1EE07A0B0);
        v30 = v26;
        v26 = sub_1D1E6707C();
        v31 = sub_1D1E6834C();
        if (os_log_type_enabled(v26, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = v52;
          v32[4] = [v30 unsignedCharValue];

          _os_log_impl(&dword_1D16EC000, v26, v31, "Couldn't create MTRServiceAreaOperationalStatus from value '%{public}hhu'", v32, 5u);
          MEMORY[0x1D3893640](v32, -1, -1);
        }

        else
        {

          v26 = v30;
        }

        v28 = 0;
      }

      else
      {
        v28 = v27;
      }

      v33 = [v24 totalOperationalTime];
      v34 = v33;
      if (v33)
      {
        v35 = [v33 v22[322]];
      }

      else
      {
        v35 = 0;
      }

      v36 = [v24 estimatedTime];
      v37 = v36;
      if (v36)
      {
        v38 = [v36 v22[322]];
      }

      else
      {
        v38 = 0;
      }

      v59[0] = v20;
      v40 = *(v20 + 16);
      v39 = *(v20 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1D178D674((v39 > 1), v40 + 1, 1);
        v20 = v59[0];
      }

      *(v20 + 16) = v40 + 1;
      v41 = v20 + 24 * v40;
      *(v41 + 32) = v56;
      *(v41 + 36) = v28;
      ++v19;
      *(v41 + 40) = v35;
      *(v41 + 44) = v34 == 0;
      *(v41 + 48) = v38;
      *(v41 + 52) = v37 == 0;
      v21 = v55;
      v22 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    }

    while (v54 != v19);
    sub_1D1741A30(v62, &qword_1EC645D58, &unk_1D1E7E530);

    return v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D19743A8(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = result;
  v4 = 0;
  v5 = a2 + 32;
  v6 = (result + 32);
  v7 = MEMORY[0x1E69E7CC0];
  while (v4 < v2)
  {
    v13 = (v5 + 48 * v4);
    v14 = v13[1];
    v20 = *v13;
    v21[0] = v14;
    *(v21 + 9) = *(v13 + 25);
    if (__OFADD__(v4++, 1))
    {
      goto LABEL_19;
    }

    v16 = *(v3 + 16);
    v17 = v6;
    while (v16)
    {
      v18 = *v17++;
      --v16;
      if (v18 == v20)
      {
        sub_1D18B869C(&v20, &v19);
        result = swift_isUniquelyReferenced_nonNull_native();
        v22 = v7;
        if ((result & 1) == 0)
        {
          result = sub_1D178D634(0, *(v7 + 16) + 1, 1);
          v7 = v22;
        }

        v9 = *(v7 + 16);
        v8 = *(v7 + 24);
        if (v9 >= v8 >> 1)
        {
          result = sub_1D178D634((v8 > 1), v9 + 1, 1);
          v7 = v22;
        }

        *(v7 + 16) = v9 + 1;
        v10 = (v7 + 48 * v9);
        v11 = v20;
        v12 = v21[0];
        *(v10 + 57) = *(v21 + 9);
        v10[2] = v11;
        v10[3] = v12;
        break;
      }
    }

    if (v4 == v2)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

void sub_1D1974504(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 16);
      if (v3)
      {
        if ((*(a1 + 40) & 1) == 0)
        {
          v4 = *(a1 + 36);
          v5 = (a1 + 40);
          v6 = v3 + 1;
          while (--v6)
          {
            if ((*v5 & 1) == 0)
            {
              v7 = *(v5 - 1);
              v5 += 48;
              if (v7 == v4)
              {
                continue;
              }
            }

            if (qword_1EE07A0A8 != -1)
            {
              swift_once();
            }

            v10 = sub_1D1E6709C();
            __swift_project_value_buffer(v10, qword_1EE07A0B0);

            v11 = sub_1D1E6707C();
            v12 = sub_1D1E6833C();

            if (os_log_type_enabled(v11, v12))
            {
              v13 = swift_slowAlloc();
              v14 = swift_slowAlloc();
              v24 = v14;
              *v13 = 136315138;
              v15 = MEMORY[0x1D3891260](a1, &type metadata for ServiceArea.Area);
              v17 = sub_1D1B1312C(v15, v16, &v24);

              *(v13 + 4) = v17;
              _os_log_impl(&dword_1D16EC000, v11, v12, "Selected locations have a mix of map IDs!! %s", v13, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v14);
              MEMORY[0x1D3893640](v14, -1, -1);
              MEMORY[0x1D3893640](v13, -1, -1);
            }

            *a3 = 0;
            a3[1] = 0;
            a3[2] = 0;
            return;
          }

          v18 = (a2 + 32);
          v19 = *(a2 + 16) + 1;
          while (--v19)
          {
            v20 = v18 + 6;
            v21 = *v18;
            v18 += 6;
            if (v21 == v4)
            {
              v23 = *(v20 - 2);
              v22 = *(v20 - 1);
              *a3 = v4;
              a3[1] = v23;
              a3[2] = v22;

              return;
            }
          }
        }
      }
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
}

uint64_t ServiceArea.area(for:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*v2 + 16);
  if (v3)
  {
    v4 = (*v2 + 32);
    while (1)
    {
      v6 = *v4;
      v5 = v4[1];
      *&v12[9] = *(v4 + 25);
      v11 = v6;
      *v12 = v5;
      if (v6 == result)
      {
        break;
      }

      v4 += 3;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    v7 = *&v12[16];
    v8 = v12[24];
    v9 = *v12;
    *a2 = v11;
    *(a2 + 16) = v9;
    *(a2 + 32) = v7;
    *(a2 + 40) = v8;
    return sub_1D18B869C(&v11, &v10);
  }

  else
  {
LABEL_5:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = xmmword_1D1E85870;
    *(a2 + 40) = 0;
  }

  return result;
}

unint64_t sub_1D19747C4(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x7374726F70707573;
    v7 = 0xD000000000000013;
    if (a1 != 10)
    {
      v7 = 0xD000000000000017;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000029;
    if (a1 != 7)
    {
      v8 = 0xD000000000000010;
    }

    if (a1 == 6)
    {
      v8 = 0x73736572676F7270;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6574726F70707573;
    v2 = 0x64657463656C6573;
    v3 = 0x41746E6572727563;
    if (a1 != 4)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x64657463656C6573;
    if (a1 == 1)
    {
      v4 = 0x6574726F70707573;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D1974984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D197AAFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D19749AC(uint64_t a1)
{
  v2 = sub_1D1979808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19749E8(uint64_t a1)
{
  v2 = sub_1D1979808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServiceArea.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647BE8, &qword_1D1E88508);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v21 - v6;
  v9 = *v1;
  v8 = *(v1 + 8);
  v10 = *(v1 + 24);
  v33 = *(v1 + 16);
  v34 = v8;
  v11 = *(v1 + 40);
  v30 = *(v1 + 32);
  v31 = v10;
  v32 = v11;
  v12 = *(v1 + 48);
  v28 = *(v1 + 56);
  v29 = v12;
  v13 = *(v1 + 64);
  v26 = *(v1 + 72);
  v27 = v13;
  v14 = *(v1 + 80);
  v43 = *(v1 + 88);
  v24 = *(v1 + 92);
  v25 = v14;
  v23 = *(v1 + 96);
  v22 = *(v1 + 104);
  v21[7] = *(v1 + 112);
  v21[6] = *(v1 + 113);
  v21[5] = *(v1 + 114);
  v21[4] = *(v1 + 115);
  v15 = *(v1 + 116);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1979808();

  sub_1D1E6930C();
  v37 = v9;
  v44 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647548, &qword_1D1E88510);
  sub_1D197985C();
  v36 = v3;
  v17 = v35;
  sub_1D1E68F1C();
  if (v17)
  {

    return (*(v4 + 8))(v7, v36);
  }

  else
  {
    v19 = v33;
    v21[3] = v15;
    v35 = v4;

    v37 = v34;
    v44 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647C08, &unk_1D1E88518);
    sub_1D1979934();
    sub_1D1E68E5C();
    v37 = v19;
    v44 = 2;
    sub_1D1E68E5C();
    v37 = v31;
    v38 = v30;
    v39 = v32;
    v44 = 3;
    sub_1D19799B8();

    sub_1D1E68E5C();

    v37 = v29;
    v38 = v28;
    v39 = v27;
    v40 = v26;
    v41 = v25;
    v42 = v43;
    v44 = 4;
    sub_1D1978DB8(v29, v28, v27, v26);
    sub_1D19798E0();
    sub_1D1E68E5C();
    sub_1D1979A0C(v37, v38, v39, v40);
    LOBYTE(v37) = 5;
    v44 = v23;
    sub_1D1E68EAC();
    v37 = v22;
    v44 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646DE8, &unk_1D1E85520);
    sub_1D1979A20();
    sub_1D1E68E5C();
    LOBYTE(v37) = 7;
    sub_1D1E68EDC();
    LOBYTE(v37) = 8;
    sub_1D1E68EDC();
    LOBYTE(v37) = 9;
    sub_1D1E68EDC();
    LOBYTE(v37) = 10;
    sub_1D1E68EDC();
    LOBYTE(v37) = 11;
    v20 = v36;
    sub_1D1E68EDC();
    return (*(v35 + 8))(0, v20);
  }
}

uint64_t ServiceArea.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 40);
  v20 = *(v1 + 24);
  v21 = *(v1 + 32);
  v17 = *(v1 + 56);
  v18 = *(v1 + 48);
  v6 = *(v1 + 72);
  v15 = *(v1 + 80);
  v16 = *(v1 + 64);
  v14 = *(v1 + 88);
  v19 = *(v1 + 92);
  v7 = *(v1 + 104);
  v22 = *(v1 + 96);
  v23 = *(v1 + 112);
  v24 = *(v1 + 113);
  v25 = *(v1 + 114);
  v26 = *(v1 + 115);
  v27 = *(v1 + 116);
  sub_1D1770B7C(a1, *v1);
  if (v3)
  {
    sub_1D1E6922C();
    v8 = *(v3 + 16);
    MEMORY[0x1D3892850](v8);
    if (v8)
    {
      v9 = (v3 + 48);
      do
      {
        v10 = *(v9 - 4);
        v11 = *(v9 - 1);
        v12 = *v9;
        sub_1D1E6924C();

        sub_1D1E678EC();

        v9 += 3;
        --v8;
      }

      while (v8);
    }

    if (v4)
    {
LABEL_6:
      sub_1D1E6922C();
      sub_1D1770B7C(a1, v4);
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  else
  {
    sub_1D1E6922C();
    if (v4)
    {
      goto LABEL_6;
    }
  }

  sub_1D1E6922C();
  if (v5)
  {
LABEL_7:
    sub_1D1E6922C();
    sub_1D1E6924C();
    sub_1D1E678EC();
    if (v6 == 1)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

LABEL_13:
  sub_1D1E6922C();
  if (v6 == 1)
  {
LABEL_8:
    sub_1D1E6922C();
    if (!v22)
    {
      goto LABEL_9;
    }

LABEL_15:
    sub_1D1E6922C();
    if (v7)
    {
      goto LABEL_10;
    }

LABEL_16:
    sub_1D1E6922C();
    goto LABEL_17;
  }

LABEL_14:
  *&v28 = v18;
  *(&v28 + 1) = v17;
  *v29 = v16;
  *&v29[8] = v6;
  *&v29[16] = v15;
  v29[24] = v14;
  sub_1D1E6922C();
  v30[0] = v18;
  v30[1] = v17;
  v30[2] = v16;
  v30[3] = v6;
  v30[4] = v15;
  v31 = v14;
  sub_1D18B869C(v30, &v32);
  ServiceArea.Area.hash(into:)();
  v32 = v28;
  v33[0] = *v29;
  *(v33 + 9) = *&v29[9];
  sub_1D18B86F8(&v32);
  if (v22)
  {
    goto LABEL_15;
  }

LABEL_9:
  sub_1D1E6922C();
  sub_1D1E6924C();
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_10:
  sub_1D1E6922C();
  sub_1D176F7B0(a1, v7);
LABEL_17:
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  return sub_1D1E6922C();
}

uint64_t ServiceArea.hashValue.getter()
{
  sub_1D1E6920C();
  ServiceArea.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t ServiceArea.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647C30, &qword_1D1E88528);
  v5 = *(v76 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v8 = &v26 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1979808();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v44 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647548, &qword_1D1E88510);
  LOBYTE(v45) = 0;
  sub_1D1979AF8();
  sub_1D1E68D7C();
  v43 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647C08, &unk_1D1E88518);
  LOBYTE(v45) = 1;
  sub_1D1979BD0();
  sub_1D1E68CBC();
  v41 = 0;
  v42 = v51;
  LOBYTE(v45) = 2;
  sub_1D1E68CBC();
  v40 = v51;
  LOBYTE(v45) = 3;
  sub_1D1979C54();
  sub_1D1E68CBC();
  v10 = v51;
  v39 = v52;
  LOBYTE(v45) = 4;
  sub_1D1979B7C();
  sub_1D1E68CBC();
  v37 = v51;
  v38 = v52;
  v35 = *(&v53 + 1);
  v36 = v53;
  v34 = v54;
  LOBYTE(v51) = 5;
  v11 = sub_1D1E68D0C();
  v73 = BYTE4(v11) & 1;
  v32 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646DE8, &unk_1D1E85520);
  LOBYTE(v45) = 6;
  sub_1D1979CA8();
  sub_1D1E68CBC();
  v33 = v51;
  LOBYTE(v51) = 7;
  LODWORD(v41) = sub_1D1E68D3C();
  LOBYTE(v51) = 8;
  v31 = sub_1D1E68D3C();
  LOBYTE(v51) = 9;
  v30 = sub_1D1E68D3C();
  LOBYTE(v51) = 10;
  v29 = sub_1D1E68D3C();
  v71 = 11;
  v12 = sub_1D1E68D3C();
  v28 = 0;
  v13 = v12;
  LODWORD(v41) = v41 & 1;
  v14 = v41;
  v27 = v31 & 1;
  v15 = v30 & 1;
  v30 = v29 & 1;
  v31 = v15;
  (*(v44 + 8))(v8, v76);
  v16 = v13 & 1;
  LODWORD(v76) = v13 & 1;
  *&v45 = v43;
  *(&v45 + 1) = v42;
  v18 = v39;
  v17 = v40;
  *v46 = v40;
  *&v46[8] = v10;
  *&v46[24] = v39;
  v47 = v37;
  *&v48 = v38;
  *(&v48 + 1) = v36;
  *&v49 = v35;
  BYTE8(v49) = v34;
  HIDWORD(v49) = v32;
  LODWORD(v44) = v73;
  v50[0] = v73;
  *&v50[8] = v33;
  v50[16] = v14;
  v19 = v27;
  v50[17] = v27;
  v50[18] = v15;
  LOBYTE(v15) = v30;
  v50[19] = v30;
  v50[20] = v16;
  v20 = v37;
  *(a2 + 32) = *&v46[16];
  *(a2 + 48) = v20;
  v21 = *v46;
  *a2 = v45;
  *(a2 + 16) = v21;
  v22 = v48;
  v23 = v49;
  v24 = *v50;
  *(a2 + 109) = *&v50[13];
  *(a2 + 80) = v23;
  *(a2 + 96) = v24;
  *(a2 + 64) = v22;
  sub_1D192D0CC(&v45, &v51);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *&v51 = v43;
  *(&v51 + 1) = v42;
  v52 = v17;
  v53 = v10;
  v54 = v18;
  v55 = v37;
  v56 = v38;
  v57 = v36;
  v58 = v35;
  v59 = v34;
  v60 = v74;
  v61 = v75;
  v62 = v32;
  v63 = v44;
  *&v64[3] = *&v72[3];
  *v64 = *v72;
  v65 = v33;
  v66 = v41;
  v67 = v19;
  v68 = v31;
  v69 = v15;
  v70 = v76;
  return sub_1D192D128(&v51);
}

uint64_t sub_1D1975A30()
{
  sub_1D1E6920C();
  ServiceArea.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1975A74()
{
  sub_1D1E6920C();
  ServiceArea.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticRVCClusterGroup.selectCommand(areaIDs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 2;
}

uint64_t sub_1D1975AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1975B1C, 0, 0);
}

uint64_t sub_1D1975B1C()
{
  v1 = v0[21];
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

  v0[24] = v2;
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D1975C9C;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647D18, &qword_1D1E88FC0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17AFE50;
  v0[13] = &block_descriptor_63;
  v0[14] = v6;
  [v5 selectAreasWithParams:v3 expectedValues:v2 expectedValueInterval:v4 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1975C9C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_1D1975E3C;
  }

  else
  {
    v3 = sub_1D1975DAC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1975DAC()
{
  v1 = v0[24];
  v3 = v0[18];
  v2 = v0[19];
  v2[3] = sub_1D1741B10(0, &qword_1EC647D20, 0x1E696F6B8);
  *v2 = v3;

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D1975E3C()
{
  v1 = v0[24];
  v2 = v0[25];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[25];

  return v3();
}

uint64_t StaticRVCClusterGroup.select(mapID:)(int a1)
{
  *(v2 + 112) = v1;
  *(v2 + 60) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1975ED0, 0, 0);
}

uint64_t sub_1D1975ED0()
{
  v1 = *(v0 + 112);
  result = type metadata accessor for StaticRVCClusterGroup();
  v3 = *(v1 + *(result + 60));
  if (v3)
  {
    v4 = *(v3 + 16);
    v5 = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      v6 = 0;
      v7 = -v4;
      v8 = MEMORY[0x1E69E7CC0];
      do
      {
        v9 = *(v3 + 16);
        v10 = v9 >= v6;
        v11 = v9 - v6;
        if (!v10)
        {
          v11 = 0;
        }

        v12 = (v3 + 32 + 48 * v6++);
        while (1)
        {
          if (!v11)
          {
            __break(1u);
            return result;
          }

          v13 = *v12;
          v14 = v12[1];
          *(v0 + 41) = *(v12 + 25);
          *(v0 + 16) = v13;
          *(v0 + 32) = v14;
          if ((*(v0 + 24) & 1) == 0 && *(v0 + 20) == *(v0 + 60))
          {
            break;
          }

          --v11;
          ++v6;
          v12 += 3;
          if (v7 + v6 == 1)
          {
            goto LABEL_21;
          }
        }

        sub_1D18B869C(v0 + 16, v0 + 64);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D178D634(0, *(v8 + 16) + 1, 1);
        }

        v16 = *(v8 + 16);
        v15 = *(v8 + 24);
        if (v16 >= v15 >> 1)
        {
          result = sub_1D178D634((v15 > 1), v16 + 1, 1);
        }

        *(v8 + 16) = v16 + 1;
        v17 = (v8 + 48 * v16);
        v18 = *(v0 + 16);
        v19 = *(v0 + 32);
        *(v17 + 57) = *(v0 + 41);
        v17[2] = v18;
        v17[3] = v19;
      }

      while (v7 + v6);
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

LABEL_21:
    v21 = *(v8 + 16);
    if (v21)
    {
      sub_1D178D5B4(0, v21, 0);
      v22 = v5;
      v23 = *(v5 + 16);
      v24 = 32;
      do
      {
        v25 = *(v8 + v24);
        v26 = *(v5 + 24);
        if (v23 >= v26 >> 1)
        {
          sub_1D178D5B4((v26 > 1), v23 + 1, 1);
        }

        *(v5 + 16) = v23 + 1;
        *(v5 + 4 * v23 + 32) = v25;
        v24 += 48;
        ++v23;
        --v21;
      }

      while (v21);
    }

    else
    {

      v22 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + 120) = v22;
    v27 = swift_task_alloc();
    *(v0 + 128) = v27;
    *v27 = v0;
    v27[1] = sub_1D19761AC;
    v28 = *(v0 + 112);

    return StaticRVCClusterGroup.select(areaIDs:)(v22);
  }

  else
  {
    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1D19761AC()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_1D1976324;
  }

  else
  {
    v3 = sub_1D19762C0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D19762C0()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1976324()
{
  v1 = v0[15];

  v2 = v0[1];
  v3 = v0[17];

  return v2();
}

uint64_t sub_1D19763A8()
{
  v1 = v0[2];
  if (*(v1 + *(type metadata accessor for StaticRVCClusterGroup() + 60)))
  {
    v2 = swift_task_alloc();
    v0[3] = v2;
    *v2 = v0;
    v2[1] = sub_1D17D064C;
    v3 = v0[2];
    v4 = MEMORY[0x1E69E7CC0];

    return StaticRVCClusterGroup.select(areaIDs:)(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

unint64_t StaticRVCClusterGroup.skipAreaCommand(areaToSkip:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = a1;
  *(a2 + 24) = &type metadata for StaticRVCClusterGroup.Command;
  result = sub_1D18FA450();
  *(a2 + 32) = result;
  *a2 = v3;
  *(a2 + 8) = 3;
  return result;
}

uint64_t sub_1D19764D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D19764FC, 0, 0);
}

uint64_t sub_1D19764FC()
{
  v1 = v0[21];
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

  v0[24] = v2;
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D197667C;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647D08, &unk_1D1E88FB0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17AFE50;
  v0[13] = &block_descriptor_24;
  v0[14] = v6;
  [v5 skipAreaWithParams:v3 expectedValues:v2 expectedValueInterval:v4 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D197667C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_1D197B084;
  }

  else
  {
    v3 = sub_1D197678C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D197678C()
{
  v1 = v0[24];
  v3 = v0[18];
  v2 = v0[19];
  v2[3] = sub_1D1741B10(0, &qword_1EC647D10, 0x1E696F6C8);
  *v2 = v3;

  v4 = v0[1];

  return v4();
}

void ServiceArea.validAreas.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      v5 = (v1 + 32 + 48 * v3);
      v6 = v3;
      while (1)
      {
        if (v6 >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v7 = *v5;
        v8 = v5[1];
        *&v17[9] = *(v5 + 25);
        v16 = v7;
        *v17 = v8;
        if (v17[22])
        {
          break;
        }

        sub_1D18B869C(&v16, v15);
        if (qword_1EC6422C0 == -1)
        {
          if (byte_1EC64919A)
          {
            goto LABEL_13;
          }
        }

        else
        {
          swift_once();
          if (byte_1EC64919A)
          {
            goto LABEL_13;
          }
        }

        ++v6;
        sub_1D18B86F8(&v16);
        v5 += 3;
        if (v2 == v6)
        {
          return;
        }
      }

      sub_1D18B869C(&v16, v15);
LABEL_13:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D178D634(0, *(v4 + 16) + 1, 1);
        v4 = v18;
      }

      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D178D634((v10 > 1), v11 + 1, 1);
        v4 = v18;
      }

      v3 = v6 + 1;
      *(v4 + 16) = v11 + 1;
      v12 = (v4 + 48 * v11);
      v13 = v16;
      v14 = *v17;
      *(v12 + 57) = *&v17[9];
      v12[2] = v13;
      v12[3] = v14;
    }

    while (v2 - 1 != v6);
  }
}

void ServiceArea.validSelectedAreas.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = 0;
      v4 = MEMORY[0x1E69E7CC0];
      do
      {
        v5 = (v1 + 32 + 48 * v3);
        v6 = v3;
        while (1)
        {
          if (v6 >= *(v1 + 16))
          {
            __break(1u);
            return;
          }

          v7 = *v5;
          v8 = v5[1];
          *&v17[9] = *(v5 + 25);
          v16 = v7;
          *v17 = v8;
          if (v17[22])
          {
            break;
          }

          sub_1D18B869C(&v16, v15);
          if (qword_1EC6422C0 == -1)
          {
            if (byte_1EC64919A)
            {
              goto LABEL_14;
            }
          }

          else
          {
            swift_once();
            if (byte_1EC64919A)
            {
              goto LABEL_14;
            }
          }

          ++v6;
          sub_1D18B86F8(&v16);
          v5 += 3;
          if (v2 == v6)
          {
            return;
          }
        }

        sub_1D18B869C(&v16, v15);
LABEL_14:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D178D634(0, *(v4 + 16) + 1, 1);
          v4 = v18;
        }

        v11 = *(v4 + 16);
        v10 = *(v4 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1D178D634((v10 > 1), v11 + 1, 1);
          v4 = v18;
        }

        v3 = v6 + 1;
        *(v4 + 16) = v11 + 1;
        v12 = (v4 + 48 * v11);
        v13 = v16;
        v14 = *v17;
        *(v12 + 57) = *&v17[9];
        v12[2] = v13;
        v12[3] = v14;
      }

      while (v2 - 1 != v6);
    }
  }
}

uint64_t ServiceArea.validAreas(for:)(uint64_t a1)
{
  result = ServiceArea.supportedAreas(for:)(a1);
  v2 = result;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v6 = (v2 + 32 + 48 * v4);
      v7 = v4;
      while (1)
      {
        if (v7 >= *(v2 + 16))
        {
          __break(1u);
          return result;
        }

        v8 = *v6;
        v9 = v6[1];
        *&v17[9] = *(v6 + 25);
        v16 = v8;
        *v17 = v9;
        if (v17[22] == 1)
        {
          break;
        }

        sub_1D18B869C(&v16, v15);
        if (qword_1EC6422C0 == -1)
        {
          if (byte_1EC64919A)
          {
            goto LABEL_13;
          }
        }

        else
        {
          swift_once();
          if (byte_1EC64919A)
          {
            goto LABEL_13;
          }
        }

        ++v7;
        result = sub_1D18B86F8(&v16);
        v6 += 3;
        if (v3 == v7)
        {
          goto LABEL_20;
        }
      }

      sub_1D18B869C(&v16, v15);
LABEL_13:
      result = swift_isUniquelyReferenced_nonNull_native();
      v18 = v5;
      if ((result & 1) == 0)
      {
        result = sub_1D178D634(0, *(v5 + 16) + 1, 1);
        v5 = v18;
      }

      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_1D178D634((v10 > 1), v11 + 1, 1);
        v5 = v18;
      }

      v4 = v7 + 1;
      *(v5 + 16) = v11 + 1;
      v12 = (v5 + 48 * v11);
      v13 = v16;
      v14 = *v17;
      *(v12 + 57) = *&v17[9];
      v12[2] = v13;
      v12[3] = v14;
    }

    while (v3 - 1 != v7);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

LABEL_20:

  return v5;
}

void sub_1D1976D2C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 areaID];
  v5 = [v4 unsignedIntValue];

  v6 = [a1 mapID];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 unsignedIntValue];
  }

  else
  {
    v8 = 0;
  }

  v34 = v7 == 0;
  v9 = [a1 areaInfo];
  v10 = [v9 locationInfo];

  v11 = [a1 areaInfo];
  v12 = [v11 landmarkInfo];

  if (v10)
  {
    v13 = [v10 locationName];
    v14 = sub_1D1E6781C();
    v16 = v15;

    v17 = [v10 floorNumber];
    v18 = v17;
    if (v17)
    {
      WORD2(v30) = [v17 shortValue];
    }

    else
    {
      WORD2(v30) = 0;
    }

    v33 = v18 == 0;
    v19 = [v10 areaType];
    if (v19)
    {
      v20 = v19;
      LOBYTE(v30) = [v19 unsignedCharValue];

      v32 = 0;
      if (v12)
      {
        goto LABEL_12;
      }
    }

    else
    {
      LOBYTE(v30) = 0;
      v32 = 1;
      if (v12)
      {
        goto LABEL_12;
      }
    }

LABEL_15:

    v24 = 0;
    v27 = 0;
    v28 = 1;
    v31 = 1;
    goto LABEL_18;
  }

  v16 = 0;
  v14 = 0;
  v30 = 0;
  v33 = 1;
  v32 = 1;
  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_12:
  v29 = v16;
  v21 = v8;
  v22 = v5;
  v23 = [v12 landmarkTag];
  v24 = [v23 &selRef_channels];

  v31 = 0;
  v25 = [v12 relativePositionTag];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 &selRef_channels];

    v28 = 0;
  }

  else
  {

    v27 = 0;
    v28 = 1;
  }

  v5 = v22;
  v8 = v21;
  v16 = v29;
LABEL_18:
  *a2 = v5;
  *(a2 + 4) = v8;
  *(a2 + 8) = v34;
  *(a2 + 16) = v14;
  *(a2 + 24) = v16;
  *(a2 + 32) = WORD2(v30);
  *(a2 + 34) = v33;
  *(a2 + 35) = v30;
  *(a2 + 36) = v32;
  *(a2 + 37) = v24;
  *(a2 + 38) = v31;
  *(a2 + 39) = v27;
  *(a2 + 40) = v28;
}

uint64_t sub_1D197704C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D1E0C06C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1D19770B8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D19770B8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D1E68F9C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D1E67C8C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D1977624(v7, v8, a1, v4);
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
    return sub_1D19771B0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D19771B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v64 = 0x80000001D1EBF460;
    v5 = "-CleaningInProgress-Description";
    v6 = (v4 + 48 * a3);
    v7 = result - a3 + 1;
    v52 = v4;
LABEL_6:
    v54 = v6;
    v55 = a3;
    v53 = v7;
    while (1)
    {
      v8 = *v6;
      v9 = v6[1];
      *&v61[9] = *(v6 + 25);
      v60 = v8;
      *v61 = v9;
      v10 = *(v6 - 3);
      v11 = *(v6 - 2);
      *&v63[9] = *(v6 - 23);
      v62 = v10;
      *v63 = v11;
      v12 = *&v61[8];
      if (*&v61[8])
      {
        v13 = *v61;
        v14 = HIBYTE(*&v61[8]) & 0xFLL;
        if ((*&v61[8] & 0x2000000000000000) == 0)
        {
          v14 = *v61 & 0xFFFFFFFFFFFFLL;
        }

        if (v14)
        {
          sub_1D18B869C(&v60, &v57);
          sub_1D18B869C(&v60, &v57);
          sub_1D18B869C(&v62, &v57);
          v15 = *&v63[8];
          if (!*&v63[8])
          {
            goto LABEL_29;
          }

          goto LABEL_24;
        }

        sub_1D18B869C(&v60, &v57);
      }

      if ((v61[20] & 1) == 0)
      {
        break;
      }

      if (v61[22])
      {
        sub_1D18B869C(&v62, &v57);
        v16 = static String.hfLocalized(_:)(0xD000000000000014, v5 | 0x8000000000000000);
        goto LABEL_18;
      }

      v19 = v61[23];
      v20 = v61[24];
      v21 = UInt8.landmarkLocalizationKey.getter(v61[21]);
      v23 = v22;
      v56 = v64;
      sub_1D18B869C(&v62, &v57);
      MEMORY[0x1D3890F70](v21, v23);

      v24 = 0xD000000000000015;
      v25 = v56;
      if ((v20 & 1) == 0)
      {
        v26 = UInt8.relativePositionLocalizationKey.getter(v19);
        if (v27)
        {
          v28 = v26;
          v29 = v27;
          v57 = 0xD000000000000015;
          v58 = v56;

          MEMORY[0x1D3890F70](95, 0xE100000000000000);

          MEMORY[0x1D3890F70](v28, v29);

          v24 = v57;
          v25 = v58;
        }
      }

      v13 = static String.hfLocalized(_:)(v24, v25);
      v12 = v30;

      v15 = *&v63[8];
      if (!*&v63[8])
      {
        goto LABEL_29;
      }

LABEL_24:
      v31 = *v63;
      v32 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v32 = *v63 & 0xFFFFFFFFFFFFLL;
      }

      if (v32)
      {

        if (v13 != v31)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

LABEL_29:
      if (v63[20])
      {
        if ((v63[22] & 1) == 0)
        {
          v35 = v5;
          v36 = v63[23];
          v37 = v63[24];
          v38 = UInt8.landmarkLocalizationKey.getter(v63[21]);
          v57 = 0xD000000000000015;
          v58 = v64;
          MEMORY[0x1D3890F70](v38);

          v39 = v57;
          v40 = v58;
          if ((v37 & 1) == 0)
          {
            v41 = UInt8.relativePositionLocalizationKey.getter(v36);
            if (v42)
            {
              v43 = v41;
              v44 = v42;
              v57 = v39;
              v58 = v40;

              MEMORY[0x1D3890F70](95, 0xE100000000000000);

              MEMORY[0x1D3890F70](v43, v44);

              v39 = v57;
              v40 = v58;
            }
          }

          v45 = static String.hfLocalized(_:)(v39, v40);
          v15 = v46;

          v5 = v35;
          v4 = v52;
          if (v13 != v45)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        }

        v33 = static String.hfLocalized(_:)(0xD000000000000014, v5 | 0x8000000000000000);
      }

      else
      {
        v33 = UInt8.areaTypeDisplayName.getter(v63[19]);
      }

      v15 = v34;
      if (v13 != v33)
      {
        goto LABEL_40;
      }

LABEL_39:
      if (v12 == v15)
      {

        sub_1D18B86F8(&v62);
        result = sub_1D18B86F8(&v60);
LABEL_5:
        a3 = v55 + 1;
        v6 = v54 + 3;
        v7 = v53 - 1;
        if (v55 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

LABEL_40:
      v47 = sub_1D1E6904C();

      sub_1D18B86F8(&v62);
      result = sub_1D18B86F8(&v60);
      if ((v47 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v4)
      {
        __break(1u);
        return result;
      }

      v48 = v6 - 3;
      v59[0] = v6[1];
      *(v59 + 9) = *(v6 + 25);
      v49 = *v6;
      v50 = *(v6 - 2);
      *v6 = *(v6 - 3);
      v6[1] = v50;
      v6[2] = *(v6 - 1);
      *v48 = v49;
      *(v48 + 25) = *(v59 + 9);
      v48[1] = v59[0];
      if (!v7)
      {
        goto LABEL_5;
      }

      ++v7;
      v6 -= 3;
    }

    v18 = v61[19];
    sub_1D18B869C(&v62, &v57);
    v16 = UInt8.areaTypeDisplayName.getter(v18);
LABEL_18:
    v13 = v16;
    v12 = v17;
    v15 = *&v63[8];
    if (!*&v63[8])
    {
      goto LABEL_29;
    }

    goto LABEL_24;
  }

  return result;
}

uint64_t sub_1D1977624(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v175 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_162:
    v7 = *v175;
    if (!*v175)
    {
      goto LABEL_201;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_164:
      v168 = v5;
      v194 = v8;
      v169 = *(v8 + 2);
      if (v169 >= 2)
      {
        while (*a3)
        {
          v170 = v8;
          v8 = (v169 - 1);
          v171 = *&v170[16 * v169];
          v5 = *&v170[16 * v169 + 24];
          sub_1D197844C((*a3 + 48 * v171), (*a3 + 48 * *&v170[16 * v169 + 16]), (*a3 + 48 * v5), v7);
          if (v168)
          {
          }

          if (v5 < v171)
          {
            goto LABEL_188;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v170 = sub_1D1E0BE44(v170);
          }

          if (v169 - 2 >= *(v170 + 2))
          {
            goto LABEL_189;
          }

          v172 = &v170[16 * v169];
          *v172 = v171;
          *(v172 + 1) = v5;
          v194 = v170;
          result = sub_1D1E0BDB8(v8);
          v8 = v194;
          v169 = *(v194 + 2);
          if (v169 <= 1)
          {
          }
        }

        goto LABEL_199;
      }
    }

LABEL_195:
    result = sub_1D1E0BE44(v8);
    v8 = result;
    goto LABEL_164;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v9 = v7;
    v10 = v7 + 1;
    v195 = v8;
    v176 = v7;
    if ((v7 + 1) >= v6)
    {
      ++v7;
      goto LABEL_56;
    }

    v11 = *a3;
    v12 = (*a3 + 48 * v10);
    v13 = *v12;
    v14 = v12[1];
    *&v191[9] = *(v12 + 25);
    v190 = v13;
    *v191 = v14;
    v15 = (v11 + 48 * v7);
    v16 = *v15;
    v17 = v15[1];
    *&v193[9] = *(v15 + 25);
    v192 = v16;
    *v193 = v17;
    v188 = v13;
    *v189 = *v191;
    *&v189[9] = *&v191[9];
    sub_1D18B869C(&v190, &v186);
    sub_1D18B869C(&v192, &v186);
    v18 = ServiceArea.Area.displayName.getter();
    v20 = v19;
    v186 = v192;
    *v187 = *v193;
    *&v187[9] = *&v193[9];
    if (v18 == ServiceArea.Area.displayName.getter() && v20 == v21)
    {
      v181 = 0;
    }

    else
    {
      v181 = sub_1D1E6904C();
    }

    sub_1D18B86F8(&v192);
    result = sub_1D18B86F8(&v190);
    v22 = (v176 + 2);
    v8 = v195;
    if (v176 + 2 >= v6)
    {
      v7 = (v176 + 2);
      v9 = v176;
      if (v181)
      {
        goto LABEL_54;
      }

      goto LABEL_56;
    }

    v179 = v6;
    v23 = (v11 + 48 * v176 + 96);
    v9 = v176;
    while (1)
    {
      v24 = v22;
      v25 = *v23;
      v26 = v23[1];
      *&v187[9] = *(v23 + 25);
      v186 = v25;
      *v187 = v26;
      v27 = *(v23 - 3);
      v28 = *(v23 - 2);
      *&v189[9] = *(v23 - 23);
      v188 = v27;
      *v189 = v28;
      v29 = *&v187[8];
      if (*&v187[8])
      {
        v30 = *v187;
        v31 = HIBYTE(*&v187[8]) & 0xFLL;
        if ((*&v187[8] & 0x2000000000000000) == 0)
        {
          v31 = *v187 & 0xFFFFFFFFFFFFLL;
        }

        if (v31)
        {
          sub_1D18B869C(&v186, &v184);
          sub_1D18B869C(&v186, &v184);
          sub_1D18B869C(&v188, &v184);
          v32 = *&v189[8];
          if (!*&v189[8])
          {
            goto LABEL_34;
          }

          goto LABEL_29;
        }

        sub_1D18B869C(&v186, &v184);
      }

      if (v187[20])
      {
        if ((v187[22] & 1) == 0)
        {
          v36 = v187[23];
          v37 = v187[24];
          v38 = UInt8.landmarkLocalizationKey.getter(v187[21]);
          v40 = v39;
          sub_1D18B869C(&v188, &v184);
          MEMORY[0x1D3890F70](v38, v40);

          v41 = 0xD000000000000015;
          v42 = 0x80000001D1EBF460;
          if ((v37 & 1) == 0)
          {
            v43 = UInt8.relativePositionLocalizationKey.getter(v36);
            if (v44)
            {
              v45 = v43;
              v46 = v44;
              v184 = 0xD000000000000015;
              v185 = 0x80000001D1EBF460;

              MEMORY[0x1D3890F70](95, 0xE100000000000000);

              MEMORY[0x1D3890F70](v45, v46);

              v41 = v184;
              v42 = v185;
            }
          }

          v9 = v176;
          v30 = static String.hfLocalized(_:)(v41, v42);
          v29 = v47;

          v32 = *&v189[8];
          if (!*&v189[8])
          {
            goto LABEL_34;
          }

          goto LABEL_29;
        }

        sub_1D18B869C(&v188, &v184);
        v33 = static String.hfLocalized(_:)(0xD000000000000014, 0x80000001D1EBF440);
      }

      else
      {
        v35 = v187[19];
        sub_1D18B869C(&v188, &v184);
        v33 = UInt8.areaTypeDisplayName.getter(v35);
      }

      v30 = v33;
      v29 = v34;
      v32 = *&v189[8];
      if (!*&v189[8])
      {
        goto LABEL_34;
      }

LABEL_29:
      v48 = *v189;
      v49 = HIBYTE(v32) & 0xF;
      if ((v32 & 0x2000000000000000) == 0)
      {
        v49 = *v189 & 0xFFFFFFFFFFFFLL;
      }

      if (v49)
      {

        if (v30 != v48)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }

LABEL_34:
      if ((v189[20] & 1) == 0)
      {
        v50 = UInt8.areaTypeDisplayName.getter(v189[19]);
LABEL_38:
        v32 = v51;
        if (v30 != v50)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }

      if (v189[22])
      {
        v50 = static String.hfLocalized(_:)(0xD000000000000014, 0x80000001D1EBF440);
        goto LABEL_38;
      }

      v52 = v189[23];
      v53 = v189[24];
      v54 = UInt8.landmarkLocalizationKey.getter(v189[21]);
      v184 = 0xD000000000000015;
      v185 = 0x80000001D1EBF460;
      MEMORY[0x1D3890F70](v54);

      v55 = v184;
      v56 = v185;
      if ((v53 & 1) == 0)
      {
        v57 = UInt8.relativePositionLocalizationKey.getter(v52);
        if (v58)
        {
          v59 = v57;
          v60 = v58;
          v184 = v55;
          v185 = v56;

          MEMORY[0x1D3890F70](95, 0xE100000000000000);

          MEMORY[0x1D3890F70](v59, v60);

          v55 = v184;
          v56 = v185;
        }
      }

      v9 = v176;
      v61 = static String.hfLocalized(_:)(v55, v56);
      v32 = v62;

      if (v30 != v61)
      {
        goto LABEL_46;
      }

LABEL_44:
      if (v29 == v32)
      {
        v63 = 0;
        goto LABEL_47;
      }

LABEL_46:
      v63 = sub_1D1E6904C();
LABEL_47:
      v8 = v195;

      sub_1D18B86F8(&v188);
      result = sub_1D18B86F8(&v186);
      if ((v181 ^ v63))
      {
        break;
      }

      v22 = v24 + 1;
      v23 += 3;
      if (v179 == v24 + 1)
      {
        v10 = v24;
        v7 = v179;
        if (v181)
        {
          goto LABEL_54;
        }

        goto LABEL_56;
      }
    }

    v7 = v24;
    v10 = v24 - 1;
    if ((v181 & 1) == 0)
    {
      goto LABEL_56;
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_192;
    }

    if (v9 <= v10)
    {
      v111 = 48 * v7 - 48;
      v112 = 48 * v9;
      v113 = v7;
      v114 = v9;
      do
      {
        if (v114 != --v113)
        {
          v115 = *a3;
          if (!*a3)
          {
            goto LABEL_198;
          }

          v116 = (v115 + v112);
          v117 = (v115 + v111);
          *v189 = v116[1];
          *&v189[9] = *(v116 + 25);
          v118 = *v116;
          v120 = v117[1];
          v119 = v117[2];
          *v116 = *v117;
          v116[1] = v120;
          v116[2] = v119;
          *v117 = v118;
          *(v117 + 25) = *&v189[9];
          v117[1] = *v189;
        }

        ++v114;
        v111 -= 48;
        v112 += 48;
      }

      while (v114 < v113);
    }

LABEL_56:
    v64 = a3[1];
    if (v7 >= v64)
    {
      goto LABEL_111;
    }

    if (__OFSUB__(v7, v9))
    {
      goto LABEL_191;
    }

    if (&v7[-v9] >= a4)
    {
LABEL_111:
      if (v7 < v9)
      {
        goto LABEL_190;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D177D070(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
      }

      v122 = *(v8 + 2);
      v121 = *(v8 + 3);
      v123 = v122 + 1;
      if (v122 >= v121 >> 1)
      {
        result = sub_1D177D070((v121 > 1), v122 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v123;
      v124 = &v8[16 * v122];
      *(v124 + 4) = v9;
      *(v124 + 5) = v7;
      v125 = *v175;
      if (!*v175)
      {
        goto LABEL_200;
      }

      if (!v122)
      {
LABEL_3:
        v6 = a3[1];
        if (v7 >= v6)
        {
          goto LABEL_162;
        }

        continue;
      }

      while (1)
      {
        v126 = v123 - 1;
        if (v123 >= 4)
        {
          break;
        }

        if (v123 == 3)
        {
          v127 = *(v8 + 4);
          v128 = *(v8 + 5);
          v137 = __OFSUB__(v128, v127);
          v129 = v128 - v127;
          v130 = v137;
LABEL_131:
          if (v130)
          {
            goto LABEL_179;
          }

          v143 = &v8[16 * v123];
          v145 = *v143;
          v144 = *(v143 + 1);
          v146 = __OFSUB__(v144, v145);
          v147 = v144 - v145;
          v148 = v146;
          if (v146)
          {
            goto LABEL_182;
          }

          v149 = &v8[16 * v126 + 32];
          v151 = *v149;
          v150 = *(v149 + 1);
          v137 = __OFSUB__(v150, v151);
          v152 = v150 - v151;
          if (v137)
          {
            goto LABEL_185;
          }

          if (__OFADD__(v147, v152))
          {
            goto LABEL_186;
          }

          if (v147 + v152 >= v129)
          {
            if (v129 < v152)
            {
              v126 = v123 - 2;
            }

            goto LABEL_152;
          }

          goto LABEL_145;
        }

        v153 = &v8[16 * v123];
        v155 = *v153;
        v154 = *(v153 + 1);
        v137 = __OFSUB__(v154, v155);
        v147 = v154 - v155;
        v148 = v137;
LABEL_145:
        if (v148)
        {
          goto LABEL_181;
        }

        v156 = &v8[16 * v126];
        v158 = *(v156 + 4);
        v157 = *(v156 + 5);
        v137 = __OFSUB__(v157, v158);
        v159 = v157 - v158;
        if (v137)
        {
          goto LABEL_184;
        }

        if (v159 < v147)
        {
          goto LABEL_3;
        }

LABEL_152:
        v164 = v126 - 1;
        if (v126 - 1 >= v123)
        {
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
          goto LABEL_194;
        }

        if (!*a3)
        {
          goto LABEL_197;
        }

        v165 = *&v8[16 * v164 + 32];
        v166 = *&v8[16 * v126 + 40];
        sub_1D197844C((*a3 + 48 * v165), (*a3 + 48 * *&v8[16 * v126 + 32]), (*a3 + 48 * v166), v125);
        if (v5)
        {
        }

        if (v166 < v165)
        {
          goto LABEL_175;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D1E0BE44(v8);
        }

        if (v164 >= *(v8 + 2))
        {
          goto LABEL_176;
        }

        v167 = &v8[16 * v164];
        *(v167 + 4) = v165;
        *(v167 + 5) = v166;
        v194 = v8;
        result = sub_1D1E0BDB8(v126);
        v8 = v194;
        v123 = *(v194 + 2);
        if (v123 <= 1)
        {
          goto LABEL_3;
        }
      }

      v131 = &v8[16 * v123 + 32];
      v132 = *(v131 - 64);
      v133 = *(v131 - 56);
      v137 = __OFSUB__(v133, v132);
      v134 = v133 - v132;
      if (v137)
      {
        goto LABEL_177;
      }

      v136 = *(v131 - 48);
      v135 = *(v131 - 40);
      v137 = __OFSUB__(v135, v136);
      v129 = v135 - v136;
      v130 = v137;
      if (v137)
      {
        goto LABEL_178;
      }

      v138 = &v8[16 * v123];
      v140 = *v138;
      v139 = *(v138 + 1);
      v137 = __OFSUB__(v139, v140);
      v141 = v139 - v140;
      if (v137)
      {
        goto LABEL_180;
      }

      v137 = __OFADD__(v129, v141);
      v142 = v129 + v141;
      if (v137)
      {
        goto LABEL_183;
      }

      if (v142 >= v134)
      {
        v160 = &v8[16 * v126 + 32];
        v162 = *v160;
        v161 = *(v160 + 1);
        v137 = __OFSUB__(v161, v162);
        v163 = v161 - v162;
        if (v137)
        {
          goto LABEL_187;
        }

        if (v129 < v163)
        {
          v126 = v123 - 2;
        }

        goto LABEL_152;
      }

      goto LABEL_131;
    }

    break;
  }

  v65 = (v9 + a4);
  if (__OFADD__(v9, a4))
  {
    goto LABEL_193;
  }

  if (v65 >= v64)
  {
    v65 = a3[1];
  }

  if (v65 < v9)
  {
LABEL_194:
    __break(1u);
    goto LABEL_195;
  }

  if (v7 == v65)
  {
    goto LABEL_111;
  }

  v173 = v5;
  v66 = *a3;
  v67 = (*a3 + 48 * v7);
  v68 = v9 - v7 + 1;
  v177 = v65;
  while (2)
  {
    v180 = v67;
    v182 = v7;
    v178 = v68;
LABEL_68:
    v69 = *v67;
    v70 = v67[1];
    *&v191[9] = *(v67 + 25);
    v190 = v69;
    *v191 = v70;
    v71 = *(v67 - 3);
    v72 = *(v67 - 2);
    *&v193[9] = *(v67 - 23);
    v192 = v71;
    *v193 = v72;
    v73 = *&v191[8];
    if (*&v191[8])
    {
      v74 = *v191;
      v75 = HIBYTE(*&v191[8]) & 0xFLL;
      if ((*&v191[8] & 0x2000000000000000) == 0)
      {
        v75 = *v191 & 0xFFFFFFFFFFFFLL;
      }

      if (v75)
      {
        sub_1D18B869C(&v190, &v188);
        sub_1D18B869C(&v190, &v188);
        sub_1D18B869C(&v192, &v188);
        v76 = *&v193[8];
        if (!*&v193[8])
        {
          goto LABEL_90;
        }

LABEL_85:
        v92 = *v193;
        v93 = HIBYTE(v76) & 0xF;
        if ((v76 & 0x2000000000000000) == 0)
        {
          v93 = *v193 & 0xFFFFFFFFFFFFLL;
        }

        if (v93)
        {

          if (v74 != v92)
          {
            goto LABEL_101;
          }

LABEL_100:
          if (v73 == v76)
          {

            sub_1D18B86F8(&v192);
            sub_1D18B86F8(&v190);
LABEL_66:
            v7 = v182 + 1;
            v67 = v180 + 3;
            v68 = v178 - 1;
            if (v182 + 1 == v177)
            {
              v7 = v177;
              v5 = v173;
              v9 = v176;
              goto LABEL_111;
            }

            continue;
          }

          goto LABEL_101;
        }

        goto LABEL_90;
      }

      sub_1D18B869C(&v190, &v188);
    }

    break;
  }

  if (v191[20])
  {
    if ((v191[22] & 1) == 0)
    {
      v80 = v191[23];
      v81 = v191[24];
      v82 = UInt8.landmarkLocalizationKey.getter(v191[21]);
      v84 = v83;
      *&v186 = 0xD000000000000015;
      *(&v186 + 1) = 0x80000001D1EBF460;
      sub_1D18B869C(&v192, &v188);
      MEMORY[0x1D3890F70](v82, v84);

      v86 = *(&v186 + 1);
      v85 = v186;
      if ((v81 & 1) == 0)
      {
        v87 = UInt8.relativePositionLocalizationKey.getter(v80);
        if (v88)
        {
          v89 = v87;
          v90 = v88;
          v188 = __PAIR128__(v86, v85);

          MEMORY[0x1D3890F70](95, 0xE100000000000000);

          MEMORY[0x1D3890F70](v89, v90);

          v86 = *(&v188 + 1);
          v85 = v188;
        }
      }

      v8 = v195;
      v74 = static String.hfLocalized(_:)(v85, v86);
      v73 = v91;

      v76 = *&v193[8];
      if (*&v193[8])
      {
        goto LABEL_85;
      }

      goto LABEL_90;
    }

    sub_1D18B869C(&v192, &v188);
    v77 = static String.hfLocalized(_:)(0xD000000000000014, 0x80000001D1EBF440);
  }

  else
  {
    v79 = v191[19];
    sub_1D18B869C(&v192, &v188);
    v77 = UInt8.areaTypeDisplayName.getter(v79);
  }

  v74 = v77;
  v73 = v78;
  v76 = *&v193[8];
  if (*&v193[8])
  {
    goto LABEL_85;
  }

LABEL_90:
  if (v193[20])
  {
    if ((v193[22] & 1) == 0)
    {
      v96 = v193[23];
      v97 = v193[24];
      v98 = UInt8.landmarkLocalizationKey.getter(v193[21]);
      *&v188 = 0xD000000000000015;
      *(&v188 + 1) = 0x80000001D1EBF460;
      MEMORY[0x1D3890F70](v98);

      v100 = *(&v188 + 1);
      v99 = v188;
      if ((v97 & 1) == 0)
      {
        v101 = UInt8.relativePositionLocalizationKey.getter(v96);
        if (v102)
        {
          v103 = v101;
          v104 = v102;
          v188 = __PAIR128__(v100, v99);

          MEMORY[0x1D3890F70](95, 0xE100000000000000);

          MEMORY[0x1D3890F70](v103, v104);

          v100 = *(&v188 + 1);
          v99 = v188;
        }
      }

      v8 = v195;
      v105 = static String.hfLocalized(_:)(v99, v100);
      v76 = v106;

      if (v74 == v105)
      {
        goto LABEL_100;
      }

      goto LABEL_101;
    }

    v94 = static String.hfLocalized(_:)(0xD000000000000014, 0x80000001D1EBF440);
  }

  else
  {
    v94 = UInt8.areaTypeDisplayName.getter(v193[19]);
  }

  v76 = v95;
  if (v74 == v94)
  {
    goto LABEL_100;
  }

LABEL_101:
  v107 = sub_1D1E6904C();

  sub_1D18B86F8(&v192);
  result = sub_1D18B86F8(&v190);
  if ((v107 & 1) == 0)
  {
    goto LABEL_66;
  }

  if (v66)
  {
    v108 = v67 - 3;
    *v189 = v67[1];
    *&v189[9] = *(v67 + 25);
    v109 = *v67;
    v110 = *(v67 - 2);
    *v67 = *(v67 - 3);
    v67[1] = v110;
    v67[2] = *(v67 - 1);
    *v108 = v109;
    *(v108 + 25) = *&v189[9];
    v108[1] = *v189;
    if (!v68)
    {
      goto LABEL_66;
    }

    ++v68;
    v67 -= 3;
    goto LABEL_68;
  }

  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
  return result;
}

uint64_t sub_1D197844C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 48;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 48;
  if (v9 >= v11)
  {
    v55 = 48 * v11;
    if (a4 != __src || &__src[v55] <= a4)
    {
      memmove(a4, __src, 48 * v11);
    }

    v13 = &v4[v55];
    if (v10 < 48 || v6 <= v7)
    {
      goto LABEL_105;
    }

LABEL_54:
    v111 = v6;
    v56 = (v6 - 48);
    v5 -= 48;
    v57 = v13;
    v104 = v6 - 48;
    while (1)
    {
      v13 = v57;
      v60 = *(v57 - 23);
      v61 = *(v57 - 2);
      v107 = *(v57 - 3);
      *v108 = v61;
      *&v108[9] = v60;
      v62 = v56[1];
      v109 = *v56;
      *v110 = v62;
      *&v110[9] = *(v56 + 25);
      v63 = *&v108[8];
      if (*&v108[8])
      {
        v64 = *v108;
        v65 = HIBYTE(*&v108[8]) & 0xFLL;
        if ((*&v108[8] & 0x2000000000000000) == 0)
        {
          v65 = *v108 & 0xFFFFFFFFFFFFLL;
        }

        if (v65)
        {
          sub_1D18B869C(&v107, &v105);
          sub_1D18B869C(&v107, &v105);
          sub_1D18B869C(&v109, &v105);
          v66 = *&v110[8];
          if (!*&v110[8])
          {
            goto LABEL_79;
          }

          goto LABEL_74;
        }

        sub_1D18B869C(&v107, &v105);
      }

      if (v108[20])
      {
        if ((v108[22] & 1) == 0)
        {
          v70 = v108[23];
          v71 = v108[24];
          v72 = UInt8.landmarkLocalizationKey.getter(v108[21]);
          v74 = v73;
          sub_1D18B869C(&v109, &v105);
          MEMORY[0x1D3890F70](v72, v74);

          v76 = 0xD000000000000015;
          v75 = 0x80000001D1EBF460;
          if ((v71 & 1) == 0)
          {
            v77 = UInt8.relativePositionLocalizationKey.getter(v70);
            if (v78)
            {
              v79 = v77;
              v80 = v78;
              v105 = 0xD000000000000015;
              v106 = 0x80000001D1EBF460;

              MEMORY[0x1D3890F70](95, 0xE100000000000000);

              MEMORY[0x1D3890F70](v79, v80);

              v76 = v105;
              v75 = v106;
            }
          }

          v64 = static String.hfLocalized(_:)(v76, v75);
          v63 = v81;

          v66 = *&v110[8];
          if (!*&v110[8])
          {
            goto LABEL_79;
          }

          goto LABEL_74;
        }

        sub_1D18B869C(&v109, &v105);
        v67 = static String.hfLocalized(_:)(0xD000000000000014, 0x80000001D1EBF440);
      }

      else
      {
        v69 = v108[19];
        sub_1D18B869C(&v109, &v105);
        v67 = UInt8.areaTypeDisplayName.getter(v69);
      }

      v64 = v67;
      v63 = v68;
      v66 = *&v110[8];
      if (!*&v110[8])
      {
        goto LABEL_79;
      }

LABEL_74:
      v82 = *v110;
      v83 = HIBYTE(v66) & 0xF;
      if ((v66 & 0x2000000000000000) == 0)
      {
        v83 = *v110 & 0xFFFFFFFFFFFFLL;
      }

      if (v83)
      {

        if (v64 != v82)
        {
          goto LABEL_91;
        }

        goto LABEL_89;
      }

LABEL_79:
      if ((v110[20] & 1) == 0)
      {
        v84 = UInt8.areaTypeDisplayName.getter(v110[19]);
LABEL_83:
        v66 = v85;
        if (v64 != v84)
        {
          goto LABEL_91;
        }

        goto LABEL_89;
      }

      if (v110[22])
      {
        v84 = static String.hfLocalized(_:)(0xD000000000000014, 0x80000001D1EBF440);
        goto LABEL_83;
      }

      v100 = v110[23];
      v86 = v110[24];
      v87 = UInt8.landmarkLocalizationKey.getter(v110[21]);
      v105 = 0xD000000000000015;
      v106 = 0x80000001D1EBF460;
      MEMORY[0x1D3890F70](v87);

      v89 = v105;
      v88 = v106;
      if ((v86 & 1) == 0)
      {
        v90 = UInt8.relativePositionLocalizationKey.getter(v100);
        if (v91)
        {
          v92 = v91;
          v105 = v89;
          v106 = v88;
          v101 = v90;

          MEMORY[0x1D3890F70](95, 0xE100000000000000);

          MEMORY[0x1D3890F70](v101, v92);

          v89 = v105;
          v88 = v106;
        }
      }

      v93 = static String.hfLocalized(_:)(v89, v88);
      v66 = v94;

      if (v64 != v93)
      {
LABEL_91:
        v95 = sub_1D1E6904C();
        goto LABEL_92;
      }

LABEL_89:
      if (v63 != v66)
      {
        goto LABEL_91;
      }

      v95 = 0;
LABEL_92:
      v6 = v111;

      sub_1D18B86F8(&v109);
      sub_1D18B86F8(&v107);
      if (v95)
      {
        if (v5 + 48 < v6 || v5 >= v6 || v5 + 48 != v6)
        {
          v96 = *v104;
          v97 = *(v104 + 2);
          *(v5 + 1) = *(v104 + 1);
          *(v5 + 2) = v97;
          *v5 = v96;
        }

        if (v13 <= v4 || (v6 = v104, v104 <= v7))
        {
          v6 = v104;
          goto LABEL_105;
        }

        goto LABEL_54;
      }

      v57 = (v13 - 48);
      v56 = v104;
      if ((v5 + 48) < v13 || v5 >= v13 || v5 + 48 != v13)
      {
        v58 = *v57;
        v59 = *(v13 - 16);
        *(v5 + 1) = *(v13 - 32);
        *(v5 + 2) = v59;
        *v5 = v58;
      }

      v5 -= 48;
      if (v57 <= v4)
      {
        v13 -= 48;
        goto LABEL_105;
      }
    }
  }

  v12 = 48 * v9;
  if (a4 != __dst || &__dst[v12] <= a4)
  {
    memmove(a4, __dst, v12);
  }

  v13 = &v4[v12];
  if (v8 >= 48 && v6 < v5)
  {
    while (1)
    {
      v14 = *v6;
      v15 = *(v6 + 1);
      *&v108[9] = *(v6 + 25);
      v107 = v14;
      *v108 = v15;
      v16 = *v4;
      v17 = *(v4 + 1);
      *&v110[9] = *(v4 + 25);
      v109 = v16;
      *v110 = v17;
      v18 = *&v108[8];
      v111 = v6;
      if (*&v108[8])
      {
        v19 = *v108;
        v20 = HIBYTE(*&v108[8]) & 0xFLL;
        if ((*&v108[8] & 0x2000000000000000) == 0)
        {
          v20 = *v108 & 0xFFFFFFFFFFFFLL;
        }

        if (v20)
        {
          sub_1D18B869C(&v107, &v105);
          sub_1D18B869C(&v107, &v105);
          sub_1D18B869C(&v109, &v105);
          v21 = *&v110[8];
          if (!*&v110[8])
          {
            goto LABEL_29;
          }

          goto LABEL_24;
        }

        sub_1D18B869C(&v107, &v105);
      }

      if ((v108[20] & 1) == 0)
      {
        break;
      }

      if (v108[22])
      {
        sub_1D18B869C(&v109, &v105);
        v22 = static String.hfLocalized(_:)(0xD000000000000014, 0x80000001D1EBF440);
        goto LABEL_18;
      }

      v25 = v108[23];
      v26 = v108[24];
      v27 = UInt8.landmarkLocalizationKey.getter(v108[21]);
      v29 = v28;
      sub_1D18B869C(&v109, &v105);
      MEMORY[0x1D3890F70](v27, v29);

      v31 = 0xD000000000000015;
      v30 = 0x80000001D1EBF460;
      if ((v26 & 1) == 0)
      {
        v32 = UInt8.relativePositionLocalizationKey.getter(v25);
        if (v33)
        {
          v34 = v32;
          v35 = v33;
          v105 = 0xD000000000000015;
          v106 = 0x80000001D1EBF460;

          MEMORY[0x1D3890F70](95, 0xE100000000000000);

          MEMORY[0x1D3890F70](v34, v35);

          v31 = v105;
          v30 = v106;
        }
      }

      v19 = static String.hfLocalized(_:)(v31, v30);
      v18 = v36;

      v21 = *&v110[8];
      if (!*&v110[8])
      {
        goto LABEL_29;
      }

LABEL_24:
      v37 = *v110;
      v38 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v38 = *v110 & 0xFFFFFFFFFFFFLL;
      }

      if (v38)
      {

        if (v19 != v37)
        {
          goto LABEL_41;
        }

        goto LABEL_39;
      }

LABEL_29:
      if (v110[20])
      {
        if ((v110[22] & 1) == 0)
        {
          v102 = v110[23];
          v41 = v110[24];
          v42 = UInt8.landmarkLocalizationKey.getter(v110[21]);
          v105 = 0xD000000000000015;
          v106 = 0x80000001D1EBF460;
          MEMORY[0x1D3890F70](v42);

          v44 = v105;
          v43 = v106;
          if ((v41 & 1) == 0)
          {
            v45 = UInt8.relativePositionLocalizationKey.getter(v102);
            if (v46)
            {
              v47 = v46;
              v105 = v44;
              v106 = v43;
              v103 = v45;

              MEMORY[0x1D3890F70](95, 0xE100000000000000);

              MEMORY[0x1D3890F70](v103, v47);

              v44 = v105;
              v43 = v106;
            }
          }

          v48 = static String.hfLocalized(_:)(v44, v43);
          v21 = v49;

          if (v19 != v48)
          {
            goto LABEL_41;
          }

          goto LABEL_39;
        }

        v39 = static String.hfLocalized(_:)(0xD000000000000014, 0x80000001D1EBF440);
      }

      else
      {
        v39 = UInt8.areaTypeDisplayName.getter(v110[19]);
      }

      v21 = v40;
      if (v19 != v39)
      {
        goto LABEL_41;
      }

LABEL_39:
      if (v18 == v21)
      {

        sub_1D18B86F8(&v109);
        sub_1D18B86F8(&v107);
LABEL_44:
        v51 = v4;
        v52 = v7 == v4;
        v4 += 48;
        v6 = v111;
        if (v52)
        {
          goto LABEL_46;
        }

LABEL_45:
        v53 = *v51;
        v54 = *(v51 + 2);
        *(v7 + 1) = *(v51 + 1);
        *(v7 + 2) = v54;
        *v7 = v53;
        goto LABEL_46;
      }

LABEL_41:
      v50 = sub_1D1E6904C();

      sub_1D18B86F8(&v109);
      sub_1D18B86F8(&v107);
      if ((v50 & 1) == 0)
      {
        goto LABEL_44;
      }

      v51 = v111;
      v6 = v111 + 48;
      if (v7 != v111)
      {
        goto LABEL_45;
      }

LABEL_46:
      v7 += 48;
      if (v4 >= v13 || v6 >= v5)
      {
        goto LABEL_48;
      }
    }

    v24 = v108[19];
    sub_1D18B869C(&v109, &v105);
    v22 = UInt8.areaTypeDisplayName.getter(v24);
LABEL_18:
    v19 = v22;
    v18 = v23;
    v21 = *&v110[8];
    if (!*&v110[8])
    {
      goto LABEL_29;
    }

    goto LABEL_24;
  }

LABEL_48:
  v6 = v7;
LABEL_105:
  v98 = 48 * ((v13 - v4) / 48);
  if (v6 != v4 || v6 >= &v4[v98])
  {
    memmove(v6, v4, v98);
  }

  return 1;
}

uint64_t sub_1D1978DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

BOOL _s13HomeDataModel11ServiceAreaV0E0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 34);
  v8 = *(a1 + 35);
  v9 = *(a1 + 36);
  v10 = *(a1 + 37);
  v11 = *(a1 + 38);
  v12 = *(a1 + 39);
  v13 = *(a1 + 40);
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v17 = *(a2 + 34);
  v18 = *(a2 + 35);
  v19 = *(a2 + 36);
  v20 = *(a2 + 37);
  v21 = *(a2 + 38);
  v22 = *(a2 + 39);
  v23 = *(a2 + 40);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 4) == *(a2 + 4))
    {
      v25 = *(a2 + 8);
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!v15)
    {
      return 0;
    }

    if (v4 != v14 || v5 != v15)
    {
      v35 = *(a1 + 40);
      v36 = *(a1 + 39);
      v33 = *(a1 + 37);
      v34 = v23;
      v31 = *(a1 + 38);
      v32 = v22;
      v26 = sub_1D1E6904C();
      v11 = v31;
      v22 = v32;
      v10 = v33;
      v23 = v34;
      v13 = v35;
      v12 = v36;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v7)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (v6 == v16)
    {
      v27 = v17;
    }

    else
    {
      v27 = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  if (v9)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (v8 == v18)
    {
      v28 = v19;
    }

    else
    {
      v28 = 1;
    }

    if (v28)
    {
      return 0;
    }
  }

  if (v11)
  {
    if (!v21)
    {
      return 0;
    }
  }

  else
  {
    if (v10 == v20)
    {
      v29 = v21;
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  if ((v13 & 1) == 0)
  {
    if (v12 == v22)
    {
      v30 = v23;
    }

    else
    {
      v30 = 1;
    }

    return (v30 & 1) == 0;
  }

  return (v23 & 1) != 0;
}

uint64_t _s13HomeDataModel11ServiceAreaV8ProgressV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 4) == *(a2 + 4))
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 20);
    v6 = *(a2 + 20);
    if (*(a1 + 12))
    {
      if (!*(a2 + 12))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 8) == *(a2 + 8))
      {
        v7 = *(a2 + 12);
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        return 0;
      }
    }

    if (v5)
    {
      if ((*(a2 + 20) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v4 == *(a2 + 16))
      {
        v8 = *(a2 + 20);
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t _s13HomeDataModel11ServiceAreaV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 40);
  v37 = *(a1 + 32);
  v42 = *(a1 + 48);
  v41 = *(a1 + 72);
  v43 = *(a1 + 64);
  v44 = *(a1 + 80);
  v45 = *(a1 + 88);
  v33 = *(a1 + 92);
  v35 = *(a1 + 96);
  v34 = *(a1 + 104);
  v30 = *(a1 + 112);
  v28 = *(a1 + 113);
  v26 = *(a1 + 114);
  v24 = *(a1 + 115);
  v22 = *(a1 + 116);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 56);
  v48 = *(a2 + 64);
  v46 = *(a2 + 72);
  v39 = *(a2 + 48);
  v40 = *(a2 + 80);
  v47 = *(a2 + 88);
  v31 = *(a2 + 92);
  v36 = *(a2 + 96);
  v32 = *(a2 + 104);
  v29 = *(a2 + 112);
  v27 = *(a2 + 113);
  v25 = *(a2 + 114);
  v23 = *(a2 + 115);
  v21 = *(a2 + 116);
  if ((sub_1D177B36C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (!v6 || (sub_1D177B590(v2, v6) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7)
    {
      return 0;
    }

    v12 = v11;
    if ((sub_1D177B36C(v4, v7) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v12 = v11;
    if (v7)
    {
      return 0;
    }
  }

  if (!v5)
  {
    v13 = v48;
    if (!v9)
    {

      goto LABEL_22;
    }

LABEL_20:

    return 0;
  }

  v13 = v48;
  if (!v9)
  {
    goto LABEL_20;
  }

  if (v3 != v8 || (v37 != v10 || v5 != v9) && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  if (v41 == 1)
  {
    v14 = *(&v42 + 1);
    v15 = v42;
    v16 = v43;
    sub_1D1978DB8(v42, *(&v42 + 1), v43, 1);
    if (v46 == 1)
    {
      sub_1D1978DB8(v39, v12, v13, 1);
      sub_1D1979A0C(v42, *(&v42 + 1), v43, 1);
      goto LABEL_32;
    }

    v17 = v39;
    sub_1D1978DB8(v39, v12, v13, v46);
LABEL_28:
    sub_1D1979A0C(v15, v14, v16, v41);
    sub_1D1979A0C(v17, v12, v13, v46);
    return 0;
  }

  v14 = *(&v42 + 1);
  v15 = v42;
  v55 = v42;
  v16 = v43;
  *v56 = v43;
  *&v56[8] = v41;
  *&v56[16] = v44;
  v56[24] = v45;
  if (v46 == 1)
  {
    v53 = v55;
    v54[0] = *v56;
    *(v54 + 9) = *&v56[9];
    sub_1D1978DB8(v42, *(&v42 + 1), v43, v41);
    v17 = v39;
    v13 = v48;
    sub_1D1978DB8(v39, v12, v48, 1);
    sub_1D1978DB8(v42, *(&v42 + 1), v43, v41);
    sub_1D18B86F8(&v53);
    goto LABEL_28;
  }

  *&v49 = v39;
  *(&v49 + 1) = v12;
  *v50 = v48;
  *&v50[8] = v46;
  *&v50[16] = v40;
  v50[24] = v47;
  v38 = _s13HomeDataModel11ServiceAreaV0E0V2eeoiySbAE_AEtFZ_0(&v55, &v49);
  v51 = v49;
  v52[0] = *v50;
  *(v52 + 9) = *&v50[9];
  sub_1D1978DB8(v42, *(&v42 + 1), v43, v41);
  sub_1D1978DB8(v39, v12, v48, v46);
  sub_1D1978DB8(v42, *(&v42 + 1), v43, v41);
  sub_1D18B86F8(&v51);
  v53 = v55;
  v54[0] = *v56;
  *(v54 + 9) = *&v56[9];
  sub_1D18B86F8(&v53);
  sub_1D1979A0C(v42, *(&v42 + 1), v43, v41);
  if (!v38)
  {
    return 0;
  }

LABEL_32:
  if (v35)
  {
    if (!v36)
    {
      return 0;
    }
  }

  else
  {
    v19 = v36;
    if (v33 != v31)
    {
      v19 = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  result = v34;
  if (v34)
  {
    if (v32)
    {
      v20 = sub_1D177A140(v34, v32);
      result = 0;
      if ((v20 & 1) == 0)
      {
        return result;
      }

      goto LABEL_43;
    }

    return 0;
  }

  if (v32)
  {
    return result;
  }

LABEL_43:
  if (((v30 ^ v29) & 1) == 0 && ((v28 ^ v27) & 1) == 0 && ((v26 ^ v25) & 1) == 0 && ((v24 ^ v23) & 1) == 0)
  {
    return v22 ^ v21 ^ 1u;
  }

  return result;
}

uint64_t sub_1D19794D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D17C4BFC;

  return sub_1D1975AF4(a1, a2, a3, a4, v10);
}

uint64_t sub_1D197959C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D17C4CF0;

  return sub_1D19764D4(a1, a2, a3, a4, v10);
}

unint64_t sub_1D1979664()
{
  result = qword_1EC647B98;
  if (!qword_1EC647B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B98);
  }

  return result;
}

unint64_t sub_1D19796B8()
{
  result = qword_1EC647BA0;
  if (!qword_1EC647BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647BA0);
  }

  return result;
}

unint64_t sub_1D197970C()
{
  result = qword_1EC647BB0;
  if (!qword_1EC647BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647BB0);
  }

  return result;
}

unint64_t sub_1D1979760()
{
  result = qword_1EC647BC0;
  if (!qword_1EC647BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647BC0);
  }

  return result;
}

unint64_t sub_1D19797B4()
{
  result = qword_1EC647BD8;
  if (!qword_1EC647BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647BD8);
  }

  return result;
}

unint64_t sub_1D1979808()
{
  result = qword_1EC647BF0;
  if (!qword_1EC647BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647BF0);
  }

  return result;
}

unint64_t sub_1D197985C()
{
  result = qword_1EC647BF8;
  if (!qword_1EC647BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC647548, &qword_1D1E88510);
    sub_1D19798E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647BF8);
  }

  return result;
}

unint64_t sub_1D19798E0()
{
  result = qword_1EC647C00;
  if (!qword_1EC647C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647C00);
  }

  return result;
}

unint64_t sub_1D1979934()
{
  result = qword_1EC647C10;
  if (!qword_1EC647C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC647C08, &unk_1D1E88518);
    sub_1D19799B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647C10);
  }

  return result;
}

unint64_t sub_1D19799B8()
{
  result = qword_1EC647C18;
  if (!qword_1EC647C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647C18);
  }

  return result;
}

uint64_t sub_1D1979A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

unint64_t sub_1D1979A20()
{
  result = qword_1EC647C20;
  if (!qword_1EC647C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC646DE8, &unk_1D1E85520);
    sub_1D1979AA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647C20);
  }

  return result;
}

unint64_t sub_1D1979AA4()
{
  result = qword_1EC647C28;
  if (!qword_1EC647C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647C28);
  }

  return result;
}

unint64_t sub_1D1979AF8()
{
  result = qword_1EC647C38;
  if (!qword_1EC647C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC647548, &qword_1D1E88510);
    sub_1D1979B7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647C38);
  }

  return result;
}

unint64_t sub_1D1979B7C()
{
  result = qword_1EC647C40;
  if (!qword_1EC647C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647C40);
  }

  return result;
}

unint64_t sub_1D1979BD0()
{
  result = qword_1EC647C48;
  if (!qword_1EC647C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC647C08, &unk_1D1E88518);
    sub_1D1979C54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647C48);
  }

  return result;
}

unint64_t sub_1D1979C54()
{
  result = qword_1EC647C50;
  if (!qword_1EC647C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647C50);
  }

  return result;
}

unint64_t sub_1D1979CA8()
{
  result = qword_1EC647C58;
  if (!qword_1EC647C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC646DE8, &unk_1D1E85520);
    sub_1D1979D2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647C58);
  }

  return result;
}

unint64_t sub_1D1979D2C()
{
  result = qword_1EC647C60;
  if (!qword_1EC647C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647C60);
  }

  return result;
}

unint64_t sub_1D1979D84()
{
  result = qword_1EC647C68;
  if (!qword_1EC647C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647C68);
  }

  return result;
}

unint64_t sub_1D1979DDC()
{
  result = qword_1EC647C70;
  if (!qword_1EC647C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC647C78, &qword_1D1E885E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647C70);
  }

  return result;
}

unint64_t sub_1D1979E44()
{
  result = qword_1EC647C80;
  if (!qword_1EC647C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647C80);
  }

  return result;
}

unint64_t sub_1D1979EA8()
{
  result = qword_1EC647C88;
  if (!qword_1EC647C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647C88);
  }

  return result;
}

unint64_t sub_1D1979F00()
{
  result = qword_1EC647C90;
  if (!qword_1EC647C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647C90);
  }

  return result;
}

unint64_t sub_1D1979F58()
{
  result = qword_1EC647C98;
  if (!qword_1EC647C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647C98);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13HomeDataModel11ServiceAreaV0E0VSg(uint64_t a1)
{
  v1 = *(a1 + 24);
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

__n128 __swift_memcpy117_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 109) = *(a2 + 109);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1D1979FFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 117))
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

uint64_t sub_1D197A044(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 116) = 0;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 117) = 1;
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

    *(result + 117) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy21_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ServiceArea.Progress(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 21))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ServiceArea.Progress(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 3;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D197A18C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1D197A1E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1D197A258(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D197A2A0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1D197A334()
{
  result = qword_1EC647CA0;
  if (!qword_1EC647CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647CA0);
  }

  return result;
}

unint64_t sub_1D197A38C()
{
  result = qword_1EC647CA8;
  if (!qword_1EC647CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647CA8);
  }

  return result;
}

unint64_t sub_1D197A3E4()
{
  result = qword_1EC647CB0;
  if (!qword_1EC647CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647CB0);
  }

  return result;
}

unint64_t sub_1D197A43C()
{
  result = qword_1EC647CB8;
  if (!qword_1EC647CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647CB8);
  }

  return result;
}

unint64_t sub_1D197A494()
{
  result = qword_1EC647CC0;
  if (!qword_1EC647CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647CC0);
  }

  return result;
}

unint64_t sub_1D197A4EC()
{
  result = qword_1EC647CC8;
  if (!qword_1EC647CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647CC8);
  }

  return result;
}

unint64_t sub_1D197A544()
{
  result = qword_1EC647CD0;
  if (!qword_1EC647CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647CD0);
  }

  return result;
}

unint64_t sub_1D197A59C()
{
  result = qword_1EC647CD8;
  if (!qword_1EC647CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647CD8);
  }

  return result;
}

unint64_t sub_1D197A5F4()
{
  result = qword_1EC647CE0;
  if (!qword_1EC647CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647CE0);
  }

  return result;
}

unint64_t sub_1D197A64C()
{
  result = qword_1EC647CE8;
  if (!qword_1EC647CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647CE8);
  }

  return result;
}

unint64_t sub_1D197A6A4()
{
  result = qword_1EC647CF0;
  if (!qword_1EC647CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647CF0);
  }

  return result;
}

unint64_t sub_1D197A6FC()
{
  result = qword_1EC647CF8;
  if (!qword_1EC647CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647CF8);
  }

  return result;
}

uint64_t sub_1D197A750(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D1EBF480 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574616D69747365 && a2 == 0xED0000656D695464)
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

uint64_t sub_1D197A8B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x444970616DLL && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F6F6C66 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6570795461657261 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6B72616D646E616CLL && a2 == 0xEB00000000676154 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D1EBF4A0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1D197AAFC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6574726F70707573 && a2 == 0xEE00736165724164;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574726F70707573 && a2 == 0xED00007370614D64 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xED00007361657241 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xEB0000000070614DLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x41746E6572727563 && a2 == 0xEB00000000616572 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EBF4C0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000029 && 0x80000001D1EBF4E0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EBF510 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7374726F70707573 && a2 == 0xEC0000007370614DLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D1EBF530 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1EBF550 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

unint64_t sub_1D197AED8()
{
  result = qword_1EC647D00;
  if (!qword_1EC647D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647D00);
  }

  return result;
}

uint64_t sub_1D197AF6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D197AFD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D197B034(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t UInt8.areaTypeDisplayName.getter(unsigned __int8 a1)
{
  v1 = a1;
  v2 = 0xD000000000000012;
  v3 = "HFVacuumArea_Attic";
  switch(v1)
  {
    case 0:
      goto LABEL_109;
    case 1:
      v4 = "HFVacuumArea_Attic";
      goto LABEL_89;
    case 2:
      v8 = "HFVacuumArea_BackDoor";
      goto LABEL_106;
    case 3:
      v8 = "HFVacuumArea_BackYard";
      goto LABEL_106;
    case 4:
      v11 = "HFVacuumArea_Balcony";
      goto LABEL_108;
    case 5:
      v8 = "HFVacuumArea_Ballroom";
      goto LABEL_106;
    case 6:
      v8 = "HFVacuumArea_Bathroom";
      goto LABEL_106;
    case 7:
      v11 = "HFVacuumArea_Bedroom";
      goto LABEL_108;
    case 8:
      v5 = "HFVacuumArea_Border";
      goto LABEL_101;
    case 9:
      v11 = "HFVacuumArea_Boxroom";
      goto LABEL_108;
    case 10:
      v15 = "HFVacuumArea_BreakfastRoom";
      return static String.hfLocalized(_:)(0xD00000000000001ALL, (v15 - 32) | 0x8000000000000000);
    case 11:
      v11 = "HFVacuumArea_Carport";
      goto LABEL_108;
    case 12:
      v5 = "HFVacuumArea_Cellar";
      goto LABEL_101;
    case 13:
      v14 = "HFVacuumArea_Cloakroom";
      return static String.hfLocalized(_:)(0xD000000000000016, (v14 - 32) | 0x8000000000000000);
    case 14:
      v5 = "HFVacuumArea_Closet";
      goto LABEL_101;
    case 15:
      v13 = "HFVacuumArea_Conservatory";
      return static String.hfLocalized(_:)(0xD000000000000019, (v13 - 32) | 0x8000000000000000);
    case 16:
      v8 = "HFVacuumArea_Corridor";
      goto LABEL_106;
    case 17:
      v14 = "HFVacuumArea_CraftRoom";
      return static String.hfLocalized(_:)(0xD000000000000016, (v14 - 32) | 0x8000000000000000);
    case 18:
      v8 = "HFVacuumArea_Cupboard";
      goto LABEL_106;
    case 19:
      v6 = "HFVacuumArea_Deck";
      goto LABEL_97;
    case 20:
      v7 = "HFVacuumArea_Den";
      return static String.hfLocalized(_:)(0xD000000000000010, (v7 - 32) | 0x8000000000000000);
    case 21:
      v5 = "HFVacuumArea_Dining";
      goto LABEL_101;
    case 22:
      v10 = "HFVacuumArea_DrawingRoom";
      goto LABEL_93;
    case 23:
      v13 = "HFVacuumArea_DressingRoom";
      return static String.hfLocalized(_:)(0xD000000000000019, (v13 - 32) | 0x8000000000000000);
    case 24:
      v8 = "HFVacuumArea_Driveway";
      goto LABEL_106;
    case 25:
      v8 = "HFVacuumArea_Elevator";
      goto LABEL_106;
    case 26:
      v11 = "HFVacuumArea_Ensuite";
      goto LABEL_108;
    case 27:
      v8 = "HFVacuumArea_Entrance";
      goto LABEL_106;
    case 28:
      v8 = "HFVacuumArea_Entryway";
      goto LABEL_106;
    case 29:
      v12 = "HFVacuumArea_FamilyRoom";
      return static String.hfLocalized(_:)(0xD000000000000017, (v12 - 32) | 0x8000000000000000);
    case 30:
      v4 = "HFVacuumArea_Foyer";
      goto LABEL_89;
    case 31:
      v14 = "HFVacuumArea_FrontDoor";
      return static String.hfLocalized(_:)(0xD000000000000016, (v14 - 32) | 0x8000000000000000);
    case 32:
      v14 = "HFVacuumArea_FrontYard";
      return static String.hfLocalized(_:)(0xD000000000000016, (v14 - 32) | 0x8000000000000000);
    case 33:
      v8 = "HFVacuumArea_GameRoom";
      goto LABEL_106;
    case 34:
      v5 = "HFVacuumArea_Garage";
      goto LABEL_101;
    case 35:
      v12 = "HFVacuumArea_GarageDoor";
      return static String.hfLocalized(_:)(0xD000000000000017, (v12 - 32) | 0x8000000000000000);
    case 36:
      v5 = "HFVacuumArea_Garden";
      goto LABEL_101;
    case 37:
      v12 = "HFVacuumArea_GardenDoor";
      return static String.hfLocalized(_:)(0xD000000000000017, (v12 - 32) | 0x8000000000000000);
    case 38:
      v15 = "HFVacuumArea_GuestBathroom";
      return static String.hfLocalized(_:)(0xD00000000000001ALL, (v15 - 32) | 0x8000000000000000);
    case 39:
      v13 = "HFVacuumArea_GuestBedroom";
      return static String.hfLocalized(_:)(0xD000000000000019, (v13 - 32) | 0x8000000000000000);
    case 41:
      v14 = "HFVacuumArea_GuestRoom";
      return static String.hfLocalized(_:)(0xD000000000000016, (v14 - 32) | 0x8000000000000000);
    case 42:
      v7 = "HFVacuumArea_Gym";
      return static String.hfLocalized(_:)(0xD000000000000010, (v7 - 32) | 0x8000000000000000);
    case 43:
      v11 = "HFVacuumArea_Hallway";
      goto LABEL_108;
    case 44:
      v12 = "HFVacuumArea_HearthRoom";
      return static String.hfLocalized(_:)(0xD000000000000017, (v12 - 32) | 0x8000000000000000);
    case 45:
      v8 = "HFVacuumArea_KidsRoom";
      goto LABEL_106;
    case 46:
      v10 = "HFVacuumArea_KidsBedroom";
      goto LABEL_93;
    case 47:
      v11 = "HFVacuumArea_Kitchen";
      goto LABEL_108;
    case 49:
      v10 = "HFVacuumArea_LaundryRoom";
      goto LABEL_93;
    case 50:
      v6 = "HFVacuumArea_Lawn";
      goto LABEL_97;
    case 51:
      v11 = "HFVacuumArea_Library";
      goto LABEL_108;
    case 52:
      v12 = "HFVacuumArea_LivingRoom";
      return static String.hfLocalized(_:)(0xD000000000000017, (v12 - 32) | 0x8000000000000000);
    case 53:
      v5 = "HFVacuumArea_Lounge";
      goto LABEL_101;
    case 54:
      v10 = "HFVacuumArea_MediaTVRoom";
      goto LABEL_93;
    case 55:
      v11 = "HFVacuumArea_MudRoom";
      goto LABEL_108;
    case 56:
      v14 = "HFVacuumArea_MusicRoom";
      return static String.hfLocalized(_:)(0xD000000000000016, (v14 - 32) | 0x8000000000000000);
    case 57:
      v11 = "HFVacuumArea_Nursery";
      goto LABEL_108;
    case 58:
      v5 = "HFVacuumArea_Office";
      goto LABEL_101;
    case 59:
      v17 = "HFVacuumArea_OutdoorKitchen";
      return static String.hfLocalized(_:)(0xD00000000000001BLL, (v17 - 32) | 0x8000000000000000);
    case 60:
      v11 = "HFVacuumArea_Outside";
      goto LABEL_108;
    case 61:
      v5 = "HFVacuumArea_Pantry";
      goto LABEL_101;
    case 62:
      v12 = "HFVacuumArea_ParkingLot";
      return static String.hfLocalized(_:)(0xD000000000000017, (v12 - 32) | 0x8000000000000000);
    case 63:
      v5 = "HFVacuumArea_Parlor";
      goto LABEL_101;
    case 64:
      v4 = "HFVacuumArea_Patio";
      goto LABEL_89;
    case 65:
      v8 = "HFVacuumArea_PlayRoom";
      goto LABEL_106;
    case 66:
      v8 = "HFVacuumArea_PoolRoom";
      goto LABEL_106;
    case 67:
      v4 = "HFVacuumArea_Porch";
      goto LABEL_89;
    case 68:
      v2 = 0xD00000000000001CLL;
      v9 = 0x80000001D1EBF950;
      goto LABEL_11;
    case 69:
      v17 = "HFVacuumArea_PrimaryBedroom";
      return static String.hfLocalized(_:)(0xD00000000000001BLL, (v17 - 32) | 0x8000000000000000);
    case 70:
      v6 = "HFVacuumArea_Ramp";
      goto LABEL_97;
    case 71:
      v15 = "HFVacuumArea_ReceptionRoom";
      return static String.hfLocalized(_:)(0xD00000000000001ALL, (v15 - 32) | 0x8000000000000000);
    case 72:
      v17 = "HFVacuumArea_RecreationRoom";
      return static String.hfLocalized(_:)(0xD00000000000001BLL, (v17 - 32) | 0x8000000000000000);
    case 74:
      v6 = "HFVacuumArea_Roof";
      goto LABEL_97;
    case 75:
      v4 = "HFVacuumArea_Sauna";
      goto LABEL_89;
    case 76:
      v8 = "HFVacuumArea_Scullery";
      goto LABEL_106;
    case 77:
      v12 = "HFVacuumArea_SewingRoom";
      return static String.hfLocalized(_:)(0xD000000000000017, (v12 - 32) | 0x8000000000000000);
    case 78:
      v6 = "HFVacuumArea_Shed";
      goto LABEL_97;
    case 79:
      v8 = "HFVacuumArea_SideDoor";
      goto LABEL_106;
    case 80:
      v8 = "HFVacuumArea_SideYard";
      goto LABEL_106;
    case 81:
      v10 = "HFVacuumArea_SittingRoom";
      goto LABEL_93;
    case 82:
      v6 = "HFVacuumArea_Snug";
      goto LABEL_97;
    case 83:
      v7 = "HFVacuumArea_Spa";
      return static String.hfLocalized(_:)(0xD000000000000010, (v7 - 32) | 0x8000000000000000);
    case 84:
      v14 = "HFVacuumArea_Staircase";
      return static String.hfLocalized(_:)(0xD000000000000016, (v14 - 32) | 0x8000000000000000);
    case 85:
      v14 = "HFVacuumArea_SteamRoom";
      return static String.hfLocalized(_:)(0xD000000000000016, (v14 - 32) | 0x8000000000000000);
    case 86:
      v10 = "HFVacuumArea_StorageRoom";
      goto LABEL_93;
    case 87:
      v5 = "HFVacuumArea_Studio";
      goto LABEL_101;
    case 88:
      v4 = "HFVacuumArea_Study";
LABEL_89:
      v9 = (v4 - 32) | 0x8000000000000000;
      goto LABEL_11;
    case 89:
      v11 = "HFVacuumArea_SunRoom";
      goto LABEL_108;
    case 90:
      v13 = "HFVacuumArea_SwimmingPool";
      return static String.hfLocalized(_:)(0xD000000000000019, (v13 - 32) | 0x8000000000000000);
    case 91:
      v11 = "HFVacuumArea_Terrace";
      goto LABEL_108;
    case 92:
      v10 = "HFVacuumArea_UtilityRoom";
LABEL_93:
      result = static String.hfLocalized(_:)(0xD000000000000018, (v10 - 32) | 0x8000000000000000);
      break;
    case 93:
      v6 = "HFVacuumArea_Ward";
LABEL_97:
      result = static String.hfLocalized(_:)(0xD000000000000011, (v6 - 32) | 0x8000000000000000);
      break;
    case 94:
      v8 = "HFVacuumArea_Workshop";
LABEL_106:
      result = static String.hfLocalized(_:)(0xD000000000000015, (v8 - 32) | 0x8000000000000000);
      break;
    case 95:
      v5 = "HFVacuumArea_Toilet";
LABEL_101:
      result = static String.hfLocalized(_:)(0xD000000000000013, (v5 - 32) | 0x8000000000000000);
      break;
    default:
      v11 = "HFVacuumArea_Unknown";
LABEL_108:
      v3 = v11 - 32;
      v2 = 0xD000000000000014;
LABEL_109:
      v9 = v3 | 0x8000000000000000;
LABEL_11:
      result = static String.hfLocalized(_:)(v2, v9);
      break;
  }

  return result;
}

uint64_t UInt8.landmarkLocalizationKey.getter(unsigned __int8 a1)
{
  v1 = a1;
  result = 0x69646E6F43726941;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      return 0x6669727550726941;
    case 2:
      v4 = 1801675074;
      goto LABEL_31;
    case 3:
      return 0x6C6F6F7453726142;
    case 4:
      return 0x74614D68746142;
    case 5:
      return 0x62757468746142;
    case 6:
      return 6579522;
    case 7:
      return 0x6C6568736B6F6F42;
    case 8:
      return 0x7269616843;
    case 9:
      return 0x616D747369726843;
    case 10:
      v5 = 1952542531;
      goto LABEL_46;
    case 11:
      v3 = 0x656566666F43;
      goto LABEL_38;
    case 12:
      return 0x52676E696B6F6F43;
    case 13:
      return 0x6863756F43;
    case 14:
      return 0x747265746E756F43;
    case 15:
      return 0x656C64617243;
    case 16:
      return 1651077699;
    case 17:
      return 1802724676;
    case 18:
      v3 = 0x676E696E6944;
LABEL_38:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6154000000000000;
      break;
    case 19:
      result = 0x6873617768736944;
      break;
    case 20:
      result = 1919905604;
      break;
    case 21:
      result = 0x72657373657244;
      break;
    case 22:
      result = 0x447972646E75614CLL;
      break;
    case 23:
      result = 7233862;
      break;
    case 24:
      result = 0x63616C7065726946;
      break;
    case 25:
      result = 0x72657A65657246;
      break;
    case 26:
      result = 0x6F6F44746E6F7246;
      break;
    case 27:
      result = 0x6961684368676948;
      break;
    case 28:
      result = 0x496E65686374694BLL;
      break;
    case 29:
      result = 1886216524;
      break;
    case 30:
      result = 0x6F4272657474694CLL;
      break;
    case 31:
      result = 0x726F7272694DLL;
      break;
    case 32:
      result = 0x617473746867694ELL;
      break;
    case 33:
      result = 1852143183;
      break;
    case 34:
      result = 0x646542746550;
      break;
    case 35:
      result = 0x6C776F42746550;
      break;
    case 36:
      result = 0x6574617243746550;
      break;
    case 37:
      result = 0x7265676972666552;
      break;
    case 38:
      result = 0x6968637461726353;
      break;
    case 39:
      v5 = 1701800019;
LABEL_46:
      result = v5 | 0x6B63615200000000;
      break;
    case 40:
      result = 0x7265776F6853;
      break;
    case 41:
      v4 = 1701079379;
LABEL_31:
      result = v4 | 0x726F6F4400000000;
      break;
    case 42:
      result = 1802398035;
      break;
    case 43:
      result = 1634103123;
      break;
    case 44:
      result = 0x65766F7453;
      break;
    case 45:
      result = 0x656C626154;
      break;
    case 46:
      result = 0x74656C696F54;
      break;
    case 47:
      result = 0x6E61436873617254;
      break;
    case 48:
      result = 0x577972646E75614CLL;
      break;
    case 49:
      result = 0x776F646E6957;
      break;
    case 50:
      result = 0x6C6F6F43656E6957;
      break;
    default:
      result = 0x6E776F6E6B6E55;
      break;
  }

  return result;
}

uint64_t UInt8.relativePositionLocalizationKey.getter(unsigned __int8 a1)
{
  if (a1 > 6u)
  {
    return 0;
  }

  v1 = a1;
  result = *&aUnder[8 * a1];
  v3 = qword_1D1E89028[v1];
  return result;
}

uint64_t StaticRVCClusterGroup.longStateStatusString.getter()
{
  v1 = 0xD00000000000001ALL;
  v2 = type metadata accessor for StaticRVCClusterGroup();
  v3 = *(v0 + *(v2 + 20));
  if (v3 > 5)
  {
    if (*(v0 + *(v2 + 20)) > 8u)
    {
      if (v3 == 9)
      {
        v4 = "HFStatusVacuumStateUpdatingMaps";
        v1 = 0xD000000000000027;
        goto LABEL_31;
      }

      if (v3 == 10)
      {
        v4 = "HFStatusVacuumStateUnknown";
        v1 = 0xD00000000000001FLL;
        goto LABEL_31;
      }

      v8 = "HFStatusVacuumStateUnknown";
      goto LABEL_30;
    }

    if (v3 == 6)
    {
      v9 = (v0 + *(v2 + 24));
      v19 = *v9;
      v22 = v9[1];
      v10 = StaticRVCClusterGroup.RunMode.isIdle.getter();
      v4 = "HFStatusVacuumStateMapping";
      if (v10)
      {
        v4 = "ateIdlePendingResume";
        v1 = 0xD000000000000017;
      }

      else
      {
        v1 = 0xD000000000000024;
      }
    }

    else if (v3 == 7)
    {
      v4 = "HFStatusVacuumStateCleaningMop";
      v1 = 0xD000000000000026;
    }

    else
    {
      v4 = "ateFillingWaterTankLong";
      v1 = 0xD00000000000001ELL;
    }
  }

  else
  {
    if (*(v0 + *(v2 + 20)) <= 2u)
    {
      if (*(v0 + *(v2 + 20)))
      {
        if (v3 == 1)
        {
          v4 = "ateIdlePendingResume";
          v1 = 0xD000000000000017;
        }

        else
        {
          v4 = "HFStatusVacuumStateIdle";
          v1 = 0xD000000000000019;
        }

        goto LABEL_31;
      }

      v6 = v2;
      v7 = (v0 + *(v2 + 24));
      v18 = *v7;
      v21 = v7[1];
      if (StaticRVCClusterGroup.RunMode.isMapping.getter())
      {
        v8 = "HFStatusVacuumStateMapping";
        goto LABEL_30;
      }

      if ((sub_1D197C190() & 1) == 0)
      {
        v14 = (v0 + *(v6 + 28));
        if (!v14[2])
        {
          goto LABEL_43;
        }

        v15 = *v14;
        v16 = v14[1];
        v17 = v14[3];
        v24 = v14[2];
        if (StaticRVCClusterGroup.CleanMode.isVacuumAndMop.getter())
        {
          v4 = "HFStatusVacuumStateVacuuming";
          v1 = 0xD000000000000024;
          goto LABEL_31;
        }

        if (StaticRVCClusterGroup.CleanMode.isVacuum.getter())
        {
          v4 = "HFStatusVacuumStateMopping";
          v1 = 0xD00000000000001CLL;
          goto LABEL_31;
        }

        if (!StaticRVCClusterGroup.CleanMode.isMop.getter())
        {
LABEL_43:
          v4 = "HFStatusVacuumStateCharging";
          v1 = 0xD00000000000001BLL;
          goto LABEL_31;
        }

        v8 = "HFStatusVacuumStateMopping";
LABEL_30:
        v4 = (v8 - 32);
        goto LABEL_31;
      }

      v5 = "HFStatusVacuumStateTravelingLong";
LABEL_13:
      v4 = (v5 - 32);
      v1 = 0xD000000000000020;
      goto LABEL_31;
    }

    if (v3 == 3)
    {
      v1 = 0xD000000000000018;
      v8 = "HFStatusVacuumStateError";
      goto LABEL_30;
    }

    if (v3 == 4)
    {
      v5 = "HFStatusVacuumStateReturningLong";
      goto LABEL_13;
    }

    v11 = (v0 + *(v2 + 24));
    v20 = *v11;
    v23 = v11[1];
    v12 = StaticRVCClusterGroup.RunMode.isIdle.getter();
    v4 = "ateReturningLong";
    if (v12)
    {
      v4 = "ateChargingPendingResume";
      v1 = 0xD00000000000001BLL;
    }

    else
    {
      v1 = 0xD000000000000028;
    }
  }

LABEL_31:

  return static String.hfLocalized(_:)(v1, v4 | 0x8000000000000000);
}

uint64_t StaticRVCClusterGroup.shortStateStatusString.getter()
{
  v1 = 0xD00000000000001ALL;
  v2 = type metadata accessor for StaticRVCClusterGroup();
  v3 = *(v0 + *(v2 + 20));
  if (v3 > 5)
  {
    if (*(v0 + *(v2 + 20)) > 8u)
    {
      if (v3 == 9)
      {
        v4 = "HFStatusVacuumStateError";
        v1 = 0xD000000000000028;
        goto LABEL_25;
      }

      if (v3 == 10)
      {
        v4 = "HFStatusVacuumStateUnknown";
        v1 = 0xD00000000000001FLL;
        goto LABEL_25;
      }

      v6 = "HFStatusVacuumStateUnknown";
      goto LABEL_24;
    }

    if (v3 == 6)
    {
LABEL_16:
      v4 = "ateIdlePendingResume";
      v1 = 0xD000000000000017;
      goto LABEL_25;
    }

    if (v3 == 7)
    {
      v4 = "ateFillingWaterTankShort";
      v1 = 0xD000000000000027;
    }

    else
    {
      v4 = "ateFillingWaterTankLong";
      v1 = 0xD00000000000001ELL;
    }
  }

  else if (*(v0 + *(v2 + 20)) > 2u)
  {
    if (v3 == 3)
    {
      v1 = 0xD000000000000018;
      v6 = "HFStatusVacuumStateError";
      goto LABEL_24;
    }

    if (v3 == 4)
    {
      v4 = "ateEmptyingDustBinShort";
      v1 = 0xD000000000000021;
    }

    else
    {
      v4 = "ateChargingPendingResume";
      v1 = 0xD00000000000001BLL;
    }
  }

  else
  {
    if (*(v0 + *(v2 + 20)))
    {
      if (v3 != 1)
      {
        v4 = "HFStatusVacuumStateIdle";
        v1 = 0xD000000000000019;
        goto LABEL_25;
      }

      goto LABEL_16;
    }

    v5 = (v0 + *(v2 + 24));
    v9 = *v5;
    v10 = v5[1];
    if (StaticRVCClusterGroup.RunMode.isMapping.getter())
    {
      v6 = "HFStatusVacuumStateMapping";
LABEL_24:
      v4 = (v6 - 32);
      goto LABEL_25;
    }

    v8 = sub_1D197C190();
    v4 = "HFStatusVacuumStateCharging";
    if (v8)
    {
      v4 = "ateReturningShort";
      v1 = 0xD000000000000021;
    }

    else
    {
      v1 = 0xD00000000000001BLL;
    }
  }

LABEL_25:

  return static String.hfLocalized(_:)(v1, v4 | 0x8000000000000000);
}

uint64_t StaticRVCClusterGroup.errorStateString.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticRVCClusterGroup() + 32));
  v2 = *v1;
  v3 = v1[1];
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = 0xD00000000000002BLL;
      v5 = "HFStatusVacuumErrorStuck";
      switch(v2)
      {
        case 1:
          v5 = "rorDustBinMissing";
          v4 = 0xD000000000000018;
          return static String.hfLocalized(_:)(v4, v5 | 0x8000000000000000);
        case 2:
          v8 = "HFStatusVacuumErrorDustBinMissing";
          goto LABEL_20;
        case 3:
          v9 = "HFStatusVacuumErrorDustBinFull";
          goto LABEL_25;
        case 4:
          v8 = "HFStatusVacuumErrorWaterTankEmpty";
LABEL_20:
          v5 = (v8 - 32);
          v4 = 0xD000000000000021;
          return static String.hfLocalized(_:)(v4, v5 | 0x8000000000000000);
        case 5:
          v10 = "HFStatusVacuumErrorWaterTankMissing";
          goto LABEL_27;
        case 6:
          v10 = "HFStatusVacuumErrorWaterTankLidOpen";
LABEL_27:
          v5 = (v10 - 32);
          v4 = 0xD000000000000023;
          break;
        case 7:
          v7 = "HFStatusVacuumErrorMopCleaningPadMissing";
          goto LABEL_9;
        case 8:
          v5 = "rorCannotReachTargetArea";
          v4 = 0xD00000000000001DLL;
          break;
        case 9:
          v7 = "HFStatusVacuumErrorCannotReachTargetArea";
          goto LABEL_9;
        case 10:
          v5 = "rorDirtyWaterTankMissing";
          v4 = 0xD000000000000025;
          break;
        case 11:
          v7 = "HFStatusVacuumErrorDirtyWaterTankMissing";
          goto LABEL_9;
        case 12:
          v5 = "HFStatusVacuumErrorBrushJammed";
          v4 = 0xD00000000000001FLL;
          break;
        case 13:
          v9 = "HFStatusVacuumErrorBrushJammed";
LABEL_25:
          v5 = (v9 - 32);
          v4 = 0xD00000000000001ELL;
          break;
        case 14:
          v5 = "tterErrorVendorSpecified";
          v4 = 0xD00000000000002BLL;
          break;
        default:
          return static String.hfLocalized(_:)(v4, v5 | 0x8000000000000000);
      }
    }

    else
    {
      v7 = "HFStatusCommonMatterErrorVendorSpecified";
LABEL_9:
      v5 = (v7 - 32);
      v4 = 0xD000000000000028;
    }

    return static String.hfLocalized(_:)(v4, v5 | 0x8000000000000000);
  }

  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v5 = "tterErrorCommandInvalidInState";
      v4 = 0xD000000000000032;
      return static String.hfLocalized(_:)(v4, v5 | 0x8000000000000000);
    }

    v6 = "HFStatusCommonMatterErrorCommandInvalidInState";
LABEL_13:
    v5 = (v6 - 32);
    v4 = 0xD00000000000002ELL;
    return static String.hfLocalized(_:)(v4, v5 | 0x8000000000000000);
  }

  if (v2)
  {
    v6 = "HFStatusCommonMatterErrorUnableToStartOrResume";
    goto LABEL_13;
  }

  return v2;
}

uint64_t sub_1D197C190()
{
  v1 = type metadata accessor for StaticRVCClusterGroup();
  v2 = v0 + *(v1 + 60);
  if (*v2)
  {
    v3 = *(v2 + 16);
    v4 = *(v2 + 48);
    v5 = *(v2 + 56);
    v6 = *(v2 + 64);
    v7 = *(v2 + 72);
    v8 = *(v2 + 80);
    v9 = *(v2 + 88);
    v10 = *(v2 + 115);
    if ((*(v2 + 113) & 1) != 0 && (v11 = *(v2 + 104)) != 0 && (v12 = *(v11 + 16)) != 0)
    {
      v13 = (v11 + 36);
      v14 = v12 + 1;
      do
      {
        LOBYTE(v15) = --v14 == 0;
        if (!v14)
        {
          break;
        }

        v16 = *v13;
        v13 += 24;
      }

      while (v16 != 1);
    }

    else
    {
      LOBYTE(v15) = 0;
      if (v10)
      {
        if (v3)
        {
          v15 = *(v3 + 16);
          if (v15)
          {
            if (v7 == 1)
            {
              LOBYTE(v15) = 1;
            }

            else
            {
              v36 = v5 & 1;
              v35 = BYTE2(v8) & 1;
              v34 = BYTE4(v8) & 1;
              v33 = BYTE6(v8) & 1;
              v21 = v5 & 1;
              v32 = v9 & 1;
              v20 = v4;
              v22 = v6;
              v23 = v7;
              v24 = v8;
              v25 = BYTE2(v8) & 1;
              v26 = BYTE3(v8);
              v27 = BYTE4(v8) & 1;
              v28 = BYTE5(v8);
              v29 = BYTE6(v8) & 1;
              v30 = HIBYTE(v8);
              v31 = v9 & 1;
              MEMORY[0x1EEE9AC00](v1);
              v19[2] = &v20;

              sub_1D1978DB8(v4, v5, v6, v7);
              v18 = sub_1D18B5D24(sub_1D197C9D0, v19, v3);

              sub_1D1979A0C(v4, v5, v6, v7);
              LOBYTE(v15) = v18 ^ 1;
            }
          }
        }
      }
    }
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15 & 1;
}

uint64_t StaticRVCClusterGroup.primaryCleanModeStatusString.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticRVCClusterGroup() + 28));
  if (!v1[2])
  {
    return 0;
  }

  v2 = *v1;
  v3 = v1[1];
  v4 = 0xD000000000000015;
  v5 = v1[3];
  if (*(v5 + 16))
  {
    v6 = *(v5 + 40);
    sub_1D1E6920C();
    sub_1D1E6923C();
    sub_1D1E678EC();
    v7 = sub_1D1E6926C();
    v8 = -1 << *(v5 + 32);
    v9 = v7 & ~v8;
    if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
    {
      v10 = ~v8;
      while ((*(*(v5 + 48) + v9) & 0xBF) != 0x83)
      {
        v9 = (v9 + 1) & v10;
        if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v11 = "HFVacuumCleanMode_Auto";
      v4 = 0xD00000000000001FLL;
      return static String.hfLocalized(_:)(v4, v11 | 0x8000000000000000);
    }
  }

LABEL_7:
  if (!StaticRVCClusterGroup.CleanMode.isVacuumAndMop.getter())
  {
    if (StaticRVCClusterGroup.CleanMode.isMop.getter())
    {
      v11 = "HFVacuumCleanMode_VacuumThenMop";
      return static String.hfLocalized(_:)(v4, v11 | 0x8000000000000000);
    }

    if (StaticRVCClusterGroup.CleanMode.isVacuum.getter())
    {
      v11 = "HFVacuumCleanMode_Mop";
      v4 = 0xD000000000000018;
      return static String.hfLocalized(_:)(v4, v11 | 0x8000000000000000);
    }

    return 0;
  }

  v11 = "tterErrorUnableToStartOrResume";
  v4 = 0xD000000000000023;
  return static String.hfLocalized(_:)(v4, v11 | 0x8000000000000000);
}

uint64_t StaticRVCClusterGroup.secondaryCleanModeStatusString.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticRVCClusterGroup() + 28));
  v2 = *(v1 + 2);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v1 + 3);
  v7 = *v1;
  v8 = v2;
  v9 = v3;
  v4 = StaticRVCClusterGroup.CleanMode.secondaryTags.getter();
  sub_1D17722E4(v4, &v6);

  if (v6 > 0xEFu)
  {
    return 0;
  }

  LOBYTE(v7) = v6;
  return _s13HomeDataModel21StaticRVCClusterGroupV16localizedNameFor3tagSSAA22ModeClusterSemanticTagO_tFZ_0(&v7);
}

uint64_t StaticRVCClusterGroup.errorStateIcon.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticRVCClusterGroup() + 32));
  v2 = *v1;
  v3 = v1[1];
  if (!v3)
  {
    result = qword_1D1E89090[v2];
    v5 = &unk_1D1E890B0;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    result = qword_1D1E890D0[v2];
    v5 = &unk_1D1E89148;
LABEL_5:
    v6 = v5[v2];
    return result;
  }

  return static String.hfLocalized(_:)(0x74616D616C637865, 0xEF6B72616D6E6F69);
}

uint64_t StaticRVCClusterGroup.CleanMode.debugDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D1E6884C();

  v5 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v5);

  MEMORY[0x1D3890F70](0x206C6562616C202CLL, 0xE900000000000022);
  MEMORY[0x1D3890F70](v1, v4);
  MEMORY[0x1D3890F70](0x3A73676174202C22, 0xE900000000000020);
  sub_1D17858BC();
  v6 = sub_1D1E6817C();
  MEMORY[0x1D3890F70](v6);

  MEMORY[0x1D3890F70](125, 0xE100000000000000);
  return 0x6F4D6E61656C637BLL;
}

unint64_t sub_1D197C780(int a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (v2 < 0x18)
  {
    return 0;
  }

  if (*a2 > 0x1Au)
  {
    if (v2 - 28 < 2)
    {
      return 0;
    }

    if (a1 <= 2)
    {
      v4 = 0x6574726F70707573;
      v5 = 0x6574726F70707573;
      v7 = a1 == 2;
      v8 = 0x64657463656C6573;
      goto LABEL_14;
    }

    v10 = 0x41746E6572727563;
    v9 = 0xD000000000000010;
    v12 = a1 == 5;
    v11 = 0x73736572676F7270;
  }

  else
  {
    if (v2 - 25 < 2)
    {
      v4 = 0x4D746E6572727563;
      v5 = 0x6574726F70707573;
      if (a1)
      {
        v5 = 0;
      }

      v6 = a1 == 1;
LABEL_19:
      if (v6)
      {
        return v4;
      }

      else
      {
        return v5;
      }
    }

    if (a1 <= 2)
    {
      v4 = 0x73694C6573616870;
      v5 = 0x50746E6572727563;
      v7 = a1 == 2;
      v8 = 0x776F64746E756F63;
LABEL_14:
      if (!v7)
      {
        v8 = 0;
      }

      if (a1 != 1)
      {
        v5 = v8;
      }

      v6 = a1 == 0;
      goto LABEL_19;
    }

    v9 = 0xD000000000000010;
    v10 = 0xD000000000000015;
    v11 = 0xD000000000000010;
    v12 = a1 == 5;
  }

  if (!v12)
  {
    v11 = 0;
  }

  if (a1 != 4)
  {
    v9 = v11;
  }

  if (a1 != 3)
  {
    return v9;
  }

  return v10;
}

BOOL sub_1D197C9D0(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v8 = *a1;
  v9[0] = v3;
  *(v9 + 9) = *(a1 + 25);
  v4 = v2[1];
  v6 = *v2;
  v7[0] = v4;
  *(v7 + 9) = *(v2 + 25);
  return _s13HomeDataModel11ServiceAreaV0E0V2eeoiySbAE_AEtFZ_0(&v8, &v6);
}

void StaticThermostatClusterGroup.Command.init(clusterKind:commandID:expectedValues:commandFields:)(unsigned __int8 *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v6 = 0x3FFFFFEFELL;

  v7 = *a1;
  v8 = *a2;
  if (v7 == 29)
  {
    if (v8)
    {
      sub_1D197CCD0();
      v17 = sub_1D1E684DC();
      v18 = v17;
      if (*(v8 + 16) && (v19 = sub_1D171D228(v17), (v20 & 1) != 0))
      {
        v21 = *(v8 + 56) + 16 * v19;
        v22 = *v21;
        v23 = *(v21 + 8);
        sub_1D1741AF8(*v21, *(v21 + 8));

        if (!v23)
        {
          v24 = 0;
          v6 = v22 & 1;
          v25 = 0x80;
          goto LABEL_19;
        }

        sub_1D1757AE8(v22, v23);
      }

      else
      {
      }
    }

    goto LABEL_18;
  }

  if (v7 != 19)
  {
LABEL_9:

    goto LABEL_18;
  }

  if (!v8)
  {
LABEL_18:
    v24 = 0;
    v25 = 0;
LABEL_19:
    *a3 = v6;
    *(a3 + 8) = v24;
    *(a3 + 16) = v25;
    return;
  }

  sub_1D197CCD0();

  v9 = sub_1D1E684DC();
  v10 = v9;
  if (!*(v8 + 16) || (v11 = sub_1D171D228(v9), (v12 & 1) == 0))
  {

LABEL_16:
    swift_bridgeObjectRelease_n();
    goto LABEL_18;
  }

  v13 = *(v8 + 56) + 16 * v11;
  v14 = *v13;
  v15 = *(v13 + 8);
  sub_1D1741AF8(*v13, *(v13 + 8));

  if (v15)
  {
    v16 = v14;
LABEL_8:
    sub_1D1757AE8(v16, v15);
    goto LABEL_9;
  }

  v26 = sub_1D1E684DC();
  v27 = v26;
  if (!*(v8 + 16) || (v28 = sub_1D171D228(v26), (v29 & 1) == 0))
  {

    goto LABEL_16;
  }

  v30 = *(v8 + 56) + 16 * v28;
  v31 = *v30;
  v15 = *(v30 + 8);
  sub_1D1741AF8(*v30, *(v30 + 8));

  if (v15)
  {
    v16 = v31;
    goto LABEL_8;
  }

  v32 = sub_1D1E684DC();
  v33 = v32;
  if (!*(v8 + 16) || (v34 = sub_1D171D228(v32), (v35 & 1) == 0))
  {

LABEL_32:
    v24 = 0;
    v25 = 1;
    goto LABEL_33;
  }

  v36 = *(v8 + 56) + 16 * v34;
  v24 = *v36;
  v37 = *(v36 + 8);
  sub_1D1741AF8(*v36, *(v36 + 8));

  if (v37 != 2)
  {
    sub_1D1757AE8(v24, v37);
    goto LABEL_32;
  }

  if ((v24 & 0x8000000000000000) == 0)
  {
    v25 = 0;
LABEL_33:
    v6 = v14 & 1 | ((v31 & 1) << 8);
    goto LABEL_19;
  }

  __break(1u);
}

unint64_t sub_1D197CCD0()
{
  result = qword_1EC6445D0;
  if (!qword_1EC6445D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC6445D0);
  }

  return result;
}

uint64_t StaticThermostatClusterGroup.Command.commandID.getter()
{
  v1 = 323551481;
  if (*(v0 + 16) < 0)
  {
    return 0;
  }

  return v1;
}

unint64_t StaticThermostatClusterGroup.Command.description.getter()
{
  v1 = *v0;
  if (v0[2] < 0)
  {
    sub_1D1E6884C();

    v14 = 0xD00000000000001CLL;
    if (v1)
    {
      v11 = 1702195828;
    }

    else
    {
      v11 = 0x65736C6166;
    }

    if (v1)
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    MEMORY[0x1D3890F70](v11, v12);

    v9 = 41;
    v10 = 0xE100000000000000;
  }

  else
  {
    v2 = v0[1];
    v14 = 0;
    sub_1D1E6884C();
    MEMORY[0x1D3890F70](0xD000000000000012, 0x80000001D1EC0920);
    v3 = "setpointHold(hold:";
    if (v1)
    {
      v3 = ", holdUntilPresetChange:";
      v4 = 0xD000000000000016;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    v5 = static String.hfLocalized(_:)(v4, v3 | 0x8000000000000000);
    MEMORY[0x1D3890F70](v5);

    MEMORY[0x1D3890F70](0xD000000000000018, 0x80000001D1EC0960);
    if ((v1 & 0x100) != 0)
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    if ((v1 & 0x100) != 0)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    MEMORY[0x1D3890F70](v6, v7);

    MEMORY[0x1D3890F70](0x697461727564202CLL, 0xEB000000003A6E6FLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647D40, &qword_1D1E891C0);
    v8 = sub_1D1E6789C();
    MEMORY[0x1D3890F70](v8);

    v9 = 2695212;
    v10 = 0xE300000000000000;
  }

  MEMORY[0x1D3890F70](v9, v10);
  return v14;
}

uint64_t sub_1D197CFA4()
{
  if (*v0)
  {
    result = 0x6975476573756170;
  }

  else
  {
    result = 0x746E696F70746573;
  }

  *v0;
  return result;
}

uint64_t sub_1D197CFF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E696F70746573 && a2 == 0xEC000000646C6F48;
  if (v6 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6975476573756170 && a2 == 0xED000065636E6164)
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

uint64_t sub_1D197D0DC(uint64_t a1)
{
  v2 = sub_1D197E498();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D197D118(uint64_t a1)
{
  v2 = sub_1D197E498();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D197D178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D6F546C69746E75 && a2 == 0xED0000776F72726FLL)
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

uint64_t sub_1D197D208(uint64_t a1)
{
  v2 = sub_1D197E4EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D197D244(uint64_t a1)
{
  v2 = sub_1D197E4EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D197D280()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697461727564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684828008;
  }
}

uint64_t sub_1D197D2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D197EC3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D197D300(uint64_t a1)
{
  v2 = sub_1D197E540();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D197D33C(uint64_t a1)
{
  v2 = sub_1D197E540();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticThermostatClusterGroup.Command.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647D48, &qword_1D1E891C8);
  v26 = *(v3 - 8);
  v27 = v3;
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647D50, &qword_1D1E891D0);
  v28 = *(v7 - 8);
  v29 = v7;
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647D58, &qword_1D1E891D8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v25 - v14;
  v16 = v1[1];
  v30 = *v1;
  v25[1] = v16;
  v18 = a1[3];
  v17 = a1[4];
  v19 = a1;
  LODWORD(a1) = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(v19, v18);
  sub_1D197E498();
  sub_1D1E6930C();
  if ((a1 & 0x80000000) != 0)
  {
    v37 = 1;
    sub_1D197E4EC();
    sub_1D1E68DFC();
    v20 = v27;
    sub_1D1E68EDC();
    v22 = *(v26 + 8);
    v23 = v6;
LABEL_6:
    v22(v23, v20);
    return (*(v12 + 8))(v15, v11);
  }

  v36 = 0;
  sub_1D197E540();
  sub_1D1E68DFC();
  v35 = v30 & 1;
  v34 = 0;
  sub_1D197E594();
  v20 = v29;
  v21 = v31;
  sub_1D1E68F1C();
  if (!v21)
  {
    v33 = 1;
    sub_1D1E68EDC();
    v32 = 2;
    sub_1D1E68E3C();
    v22 = *(v28 + 8);
    v23 = v10;
    goto LABEL_6;
  }

  (*(v28 + 8))(v10, v20);
  return (*(v12 + 8))(v15, v11);
}

uint64_t StaticThermostatClusterGroup.Command.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1D1E6920C();
  sub_1D1E6922C();
  sub_1D1E6924C();
  sub_1D1E6924C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  StaticThermostatClusterGroup.Command.description.getter();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t StaticThermostatClusterGroup.Command.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647D80, &qword_1D1E891E0);
  v48 = *(v50 - 8);
  v3 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v5 = &v46 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647D88, &qword_1D1E891E8);
  v49 = *(v6 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647D90, &unk_1D1E891F0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v46 - v13;
  v15 = a1[3];
  v16 = a1[4];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D197E498();
  v17 = v52;
  sub_1D1E692FC();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  v47 = v6;
  v18 = v50;
  v19 = v51;
  v52 = v11;
  v20 = sub_1D1E68DDC();
  v21 = (2 * *(v20 + 16)) | 1;
  v54 = v20;
  v55 = v20 + 32;
  v56 = 0;
  v57 = v21;
  v22 = sub_1D18085D0();
  v23 = v14;
  if (v22 == 2 || v56 != v57 >> 1)
  {
    v24 = sub_1D1E688EC();
    swift_allocError();
    v26 = v25;
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
    *v26 = &type metadata for StaticThermostatClusterGroup.Command;
    sub_1D1E68C5C();
    sub_1D1E688DC();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
    swift_willThrow();
    (*(v52 + 8))(v23, v10);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  if (v22)
  {
    v59 = 1;
    sub_1D197E4EC();
    sub_1D1E68C4C();
    v30 = v19;
    v31 = sub_1D1E68D3C();
    (*(v48 + 8))(v5, v18);
    (*(v52 + 8))(v14, v10);
    swift_unknownObjectRelease();
    v32 = 0;
    v33 = v31 & 1;
    v34 = 0x80;
  }

  else
  {
    v59 = 0;
    sub_1D197E540();
    v29 = v9;
    sub_1D1E68C4C();
    v30 = v19;
    v35 = v23;
    v58 = 0;
    sub_1D197E5E8();
    v36 = v29;
    v37 = v47;
    sub_1D1E68D7C();
    v38 = v52;
    v39 = v59;
    v58 = 1;
    v40 = sub_1D1E68D3C();
    v48 = v39;
    LODWORD(v50) = v40;
    v58 = 2;
    v41 = sub_1D1E68C9C();
    v42 = v37;
    v32 = v41;
    v44 = v43;
    (*(v49 + 8))(v36, v42);
    (*(v38 + 8))(v35, v10);
    swift_unknownObjectRelease();
    v45 = 256;
    if ((v50 & 1) == 0)
    {
      v45 = 0;
    }

    v33 = v45 | v48;
    v34 = v44 & 1;
  }

  *v30 = v33;
  *(v30 + 8) = v32;
  *(v30 + 16) = v34;
  return __swift_destroy_boxed_opaque_existential_1(v53);
}

uint64_t sub_1D197DDE0()
{
  v1 = 323551481;
  if (*(v0 + 16) < 0)
  {
    return 0;
  }

  return v1;
}

uint64_t sub_1D197DE44()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_1D1E6922C();
  sub_1D1E6924C();
  sub_1D1E6924C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  StaticThermostatClusterGroup.Command.description.getter();
  sub_1D1E678EC();
}

uint64_t sub_1D197DEF0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1D1E6920C();
  sub_1D1E6922C();
  sub_1D1E6924C();
  sub_1D1E6924C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  StaticThermostatClusterGroup.Command.description.getter();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t StaticThermostatClusterGroup.run(command:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  if (v3 < 0)
  {
    v7 = swift_task_alloc();
    *(v1 + 32) = v7;
    *v7 = v1;
    v7[1] = sub_1D17D0740;

    return StaticThermostatClusterGroup.pauseFollowingGuidance(untilTomorrow:)(v2 & 1);
  }

  else
  {
    v4 = a1[1];
    *(v1 + 40) = v2 & 1;
    v5 = swift_task_alloc();
    *(v1 + 16) = v5;
    *v5 = v1;
    v5[1] = sub_1D197E0F4;

    return StaticThermostatClusterGroup.updateSetpointHold(hold:holdUntilPresetChange:duration:)((v1 + 40), BYTE1(v2) & 1, v4, v3 & 1);
  }
}

uint64_t sub_1D197E0F4()
{
  v2 = *(*v1 + 16);
  v3 = *v1;
  *(v3 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D197E228, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

unint64_t StaticThermostatClusterGroup.Command.matterCommand(endpoint:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644790, &unk_1D1E75B48);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v22[-v7];
  v9 = type metadata accessor for StaticClusterGroups();
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *v2;
  v15 = v2[1];
  v23 = *(v2 + 16);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  (*(v17 + 16))(v16, v17);
  sub_1D18B85C4(&v13[*(v10 + 28)], v8);
  sub_1D197E63C(v13);
  v18 = type metadata accessor for StaticThermostatClusterGroup();
  v19 = (*(*(v18 - 8) + 48))(v8, 1, v18);
  sub_1D197E698(v8);
  if (v19 == 1)
  {
    v14 = 0;
    v15 = 0;
    v20 = 0;
    result = 0;
    a2[2] = 0;
  }

  else
  {
    result = sub_1D197E700();
    *(a2 + 16) = v23;
    v20 = &type metadata for StaticThermostatClusterGroup.Command;
  }

  *a2 = v14;
  a2[1] = v15;
  a2[3] = v20;
  a2[4] = result;
  return result;
}

uint64_t _s13HomeDataModel28StaticThermostatClusterGroupV7CommandO2eeoiySbAE_AEtFZ_0(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 16);
  if (v3 < 0)
  {
    v6 = v4 ^ v2 ^ 1;
    if (v5 >= 0)
    {
      v6 = 0;
    }

    return v6 & 1;
  }

  else
  {
    if ((v5 & 0x80000000) == 0 && ((v4 ^ v2) & 1) == 0 && ((v2 >> 8) & 1) != ((*a2 & 0x100) == 0))
    {
      if (v3)
      {
        if (v5)
        {
          return 1;
        }
      }

      else if ((v5 & 1) == 0 && a1[1] == a2[1])
      {
        return 1;
      }
    }

    return 0;
  }
}

unint64_t sub_1D197E498()
{
  result = qword_1EC647D60;
  if (!qword_1EC647D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647D60);
  }

  return result;
}

unint64_t sub_1D197E4EC()
{
  result = qword_1EC647D68;
  if (!qword_1EC647D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647D68);
  }

  return result;
}

unint64_t sub_1D197E540()
{
  result = qword_1EC647D70;
  if (!qword_1EC647D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647D70);
  }

  return result;
}

unint64_t sub_1D197E594()
{
  result = qword_1EC647D78;
  if (!qword_1EC647D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647D78);
  }

  return result;
}

unint64_t sub_1D197E5E8()
{
  result = qword_1EC647D98;
  if (!qword_1EC647D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647D98);
  }

  return result;
}

uint64_t sub_1D197E63C(uint64_t a1)
{
  v2 = type metadata accessor for StaticClusterGroups();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D197E698(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644790, &unk_1D1E75B48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D197E700()
{
  result = qword_1EC647DA0;
  if (!qword_1EC647DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647DA0);
  }

  return result;
}

unint64_t sub_1D197E754()
{
  result = qword_1EC647DA8;
  if (!qword_1EC647DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647DA8);
  }

  return result;
}

unint64_t sub_1D197E7AC()
{
  result = qword_1EC647DB0;
  if (!qword_1EC647DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647DB0);
  }

  return result;
}

uint64_t _s7CommandOwet_0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*a1 >> 2) & 0xFFFFFF80 | (*a1 >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t _s7CommandOwst_0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *result = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
      *(result + 8) = 0;
      *(result + 16) = 0;
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D197E8C0(uint64_t result, char a2)
{
  v2 = *(result + 16) & 1 | (a2 << 7);
  *result &= 0x101uLL;
  *(result + 16) = v2;
  return result;
}

unint64_t sub_1D197E928()
{
  result = qword_1EC647DB8;
  if (!qword_1EC647DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647DB8);
  }

  return result;
}

unint64_t sub_1D197E980()
{
  result = qword_1EC647DC0;
  if (!qword_1EC647DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647DC0);
  }

  return result;
}

unint64_t sub_1D197E9D8()
{
  result = qword_1EC647DC8;
  if (!qword_1EC647DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647DC8);
  }

  return result;
}

unint64_t sub_1D197EA30()
{
  result = qword_1EC647DD0;
  if (!qword_1EC647DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647DD0);
  }

  return result;
}

unint64_t sub_1D197EA88()
{
  result = qword_1EC647DD8;
  if (!qword_1EC647DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647DD8);
  }

  return result;
}

unint64_t sub_1D197EAE0()
{
  result = qword_1EC647DE0;
  if (!qword_1EC647DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647DE0);
  }

  return result;
}

unint64_t sub_1D197EB38()
{
  result = qword_1EC647DE8;
  if (!qword_1EC647DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647DE8);
  }

  return result;
}

unint64_t sub_1D197EB90()
{
  result = qword_1EC647DF0;
  if (!qword_1EC647DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647DF0);
  }

  return result;
}

unint64_t sub_1D197EBE8()
{
  result = qword_1EC647DF8;
  if (!qword_1EC647DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647DF8);
  }

  return result;
}

uint64_t sub_1D197EC3C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684828008 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC09A0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
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

void sub_1D197ED64(void *a1@<X0>, unsigned __int8 a2@<W1>, char *a3@<X8>)
{
  if (a2 <= 1u)
  {
    if (!a2)
    {
      sub_1D197EF4C(a1, &v19);
      v8 = v19;
      if (v19 != 6)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    sub_1D197CCD0();
    v5 = sub_1D1E684DC();
    if (!a1)
    {
      goto LABEL_18;
    }

    v11 = v5;
    v12 = sub_1D1E684FC();

    if (v12)
    {

      v8 = 32;
      goto LABEL_20;
    }

    v17 = sub_1D1E684DC();
    v18 = sub_1D1E684FC();

    if (v18)
    {
      v8 = 33;
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (a2 == 2)
  {
    sub_1D197F138(a1, &v20);
    if (v20 != 3)
    {
      v8 = v20 | 0x40;
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (a2 != 3)
  {
    sub_1D197CCD0();
    v5 = sub_1D1E684DC();
    if (!a1)
    {
      goto LABEL_18;
    }

    v9 = v5;
    v10 = sub_1D1E684FC();

    if (v10)
    {

      v8 = 0x80;
      goto LABEL_20;
    }

    v15 = sub_1D1E684DC();
    v16 = sub_1D1E684FC();

    if (v16)
    {
      v8 = -127;
      goto LABEL_20;
    }

LABEL_19:
    v8 = -8;
    goto LABEL_20;
  }

  sub_1D197CCD0();
  v5 = sub_1D1E684DC();
  if (!a1)
  {
LABEL_18:

    goto LABEL_19;
  }

  v6 = v5;
  v7 = sub_1D1E684FC();

  if ((v7 & 1) == 0)
  {
    v13 = sub_1D1E684DC();
    v14 = sub_1D1E684FC();

    if (v14)
    {
      v8 = 97;
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v8 = 96;
LABEL_20:
  *a3 = v8;
}

void sub_1D197EF4C(void *a1@<X0>, char *a2@<X8>)
{
  sub_1D197CCD0();
  v4 = a1;
  v5 = sub_1D1E684DC();
  if (!a1)
  {

    v9 = v4;
    v10 = v9;

    v11 = v10;
    v12 = v11;

LABEL_5:
    v8 = 6;
    goto LABEL_15;
  }

  v6 = v5;
  v7 = sub_1D1E684FC();

  if ((v7 & 1) == 0)
  {
    v13 = v4;
    v14 = sub_1D1E684DC();
    v15 = sub_1D1E684FC();

    if (v15)
    {

      v8 = 1;
      goto LABEL_15;
    }

    v16 = v13;
    v17 = sub_1D1E684DC();
    v18 = sub_1D1E684FC();

    if (v18)
    {

      v8 = 2;
      goto LABEL_15;
    }

    v19 = v16;
    v20 = sub_1D1E684DC();
    v21 = sub_1D1E684FC();

    if (v21)
    {

      v8 = 3;
      goto LABEL_15;
    }

    v22 = v19;
    v23 = sub_1D1E684DC();
    v24 = sub_1D1E684FC();

    if (v24)
    {

      v8 = 4;
      goto LABEL_15;
    }

    v8 = 5;
    v25 = sub_1D1E684DC();
    v26 = sub_1D1E684FC();

    if (v26)
    {
      goto LABEL_15;
    }

    goto LABEL_5;
  }

  v8 = 0;
LABEL_15:
  *a2 = v8;
}

void sub_1D197F138(void *a1@<X0>, char *a2@<X8>)
{
  sub_1D197CCD0();
  v4 = a1;
  v5 = sub_1D1E684DC();
  if (!a1)
  {

    v9 = v4;
LABEL_5:
    v8 = 3;
    goto LABEL_9;
  }

  v6 = v5;
  v7 = sub_1D1E684FC();

  if ((v7 & 1) == 0)
  {
    v10 = v4;
    v11 = sub_1D1E684DC();
    v12 = sub_1D1E684FC();

    if (v12)
    {

      v8 = 1;
      goto LABEL_9;
    }

    v8 = 2;
    v13 = sub_1D1E684DC();
    v14 = sub_1D1E684FC();

    if (v14)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

  v8 = 0;
LABEL_9:
  *a2 = v8;
}

uint64_t MatterThermostatPresetContextTag.dataTypeString.getter()
{
  v1 = *v0;
  v2 = v1 >> 5;
  if (v1 >> 5 <= 1)
  {
    if (!v2)
    {
      v7 = *v0;
      return MatterThermostatPresetContextTag.PresetsContextTag.dataTypeString.getter();
    }
  }

  else
  {
    if (v2 == 2)
    {
      v4 = v1 & 0x1F;
      if (!v4)
      {
LABEL_13:
        v5 = MEMORY[0x1E696F538];
        goto LABEL_14;
      }

      if (v4 == 1)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    if (v2 == 3)
    {
      if ((v1 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    if ((v1 & 1) == 0)
    {
LABEL_12:
      v5 = MEMORY[0x1E696F508];
      goto LABEL_14;
    }
  }

LABEL_10:
  v5 = MEMORY[0x1E696F560];
LABEL_14:
  v6 = *v5;
  return sub_1D1E6781C();
}

uint64_t sub_1D197F334(uint64_t *a1)
{
  if (*v1)
  {
    v2 = MEMORY[0x1E696F560];
  }

  else
  {
    v2 = a1;
  }

  v3 = *v2;
  return sub_1D1E6781C();
}

HomeDataModel::MatterThermostatPresetContextTag::PresetsContextTag_optional __swiftcall MatterThermostatPresetContextTag.PresetsContextTag.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

HomeDataModel::MatterThermostatPresetContextTag::PresetInfoContextTag_optional __swiftcall MatterThermostatPresetContextTag.PresetInfoContextTag.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

HomeDataModel::MatterThermostatPresetContextTag::HoldPolicyContextTag_optional __swiftcall MatterThermostatPresetContextTag.HoldPolicyContextTag.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1D197F474(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*v3)
  {
    v4 = MEMORY[0x1E696F560];
  }

  else
  {
    v4 = a3;
  }

  v5 = *v4;
  return sub_1D1E6781C();
}

uint64_t MatterThermostatPresetContextTag.hash(into:)()
{
  v1 = *v0;
  v2 = v1 >> 5;
  if (v1 >> 5 <= 1)
  {
    if (v2)
    {
      v3 = 1;
LABEL_11:
      MEMORY[0x1D3892850](v3);
      v1 &= 1u;
      return MEMORY[0x1D3892850](v1);
    }

    v4 = 0;
  }

  else
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        v3 = 3;
      }

      else
      {
        v3 = 4;
      }

      goto LABEL_11;
    }

    v1 &= 0x1Fu;
    v4 = 2;
  }

  MEMORY[0x1D3892850](v4);
  return MEMORY[0x1D3892850](v1);
}

uint64_t MatterThermostatPresetContextTag.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  v2 = v1 >> 5;
  if (v1 >> 5 <= 1)
  {
    if (v2)
    {
      v3 = 1;
LABEL_11:
      MEMORY[0x1D3892850](v3);
      v1 &= 1u;
      goto LABEL_12;
    }

    v4 = 0;
  }

  else
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        v3 = 3;
      }

      else
      {
        v3 = 4;
      }

      goto LABEL_11;
    }

    v1 &= 0x1Fu;
    v4 = 2;
  }

  MEMORY[0x1D3892850](v4);
LABEL_12:
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D197F5D8()
{
  v2 = *v0;
  sub_1D1E6920C();
  MatterThermostatPresetContextTag.hash(into:)();
  return sub_1D1E6926C();
}

BOOL _s13HomeDataModel32MatterThermostatPresetContextTagO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 5;
  if (v2 >> 5 <= 1)
  {
    v12 = v3 < 0x20 && v2 == v3;
    v13 = ((v3 ^ v2) & 1) == 0;
    if ((v3 & 0xE0) != 0x20)
    {
      v13 = 0;
    }

    if (v4)
    {
      return v13;
    }

    else
    {
      return v12;
    }
  }

  else
  {
    v5 = v3 & 0xE0;
    v6 = v3 ^ v2;
    v7 = (v6 & 0x1F) == 0;
    if (v5 != 64)
    {
      v7 = 0;
    }

    v8 = (v6 & 1) == 0;
    if (v5 != 96)
    {
      v8 = 0;
    }

    v9 = (v6 & 1) == 0;
    if (v5 != 128)
    {
      v9 = 0;
    }

    if (v4 == 3)
    {
      v9 = v8;
    }

    if (v4 == 2)
    {
      return v7;
    }

    else
    {
      return v9;
    }
  }
}

unint64_t sub_1D197F6B8()
{
  result = qword_1EC647E00;
  if (!qword_1EC647E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647E00);
  }

  return result;
}

unint64_t sub_1D197F738()
{
  result = qword_1EC647E08;
  if (!qword_1EC647E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647E08);
  }

  return result;
}

unint64_t sub_1D197F78C()
{
  result = qword_1EC647E10;
  if (!qword_1EC647E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647E10);
  }

  return result;
}

unint64_t sub_1D197F814()
{
  result = qword_1EC647E28;
  if (!qword_1EC647E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647E28);
  }

  return result;
}

unint64_t sub_1D197F894()
{
  result = qword_1EC647E30;
  if (!qword_1EC647E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647E30);
  }

  return result;
}

unint64_t sub_1D197F8E8()
{
  result = qword_1EC647E38;
  if (!qword_1EC647E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647E38);
  }

  return result;
}

unint64_t sub_1D197F970()
{
  result = qword_1EC647E50;
  if (!qword_1EC647E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647E50);
  }

  return result;
}

unint64_t sub_1D197F9F0()
{
  result = qword_1EC647E58;
  if (!qword_1EC647E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647E58);
  }

  return result;
}

unint64_t sub_1D197FA44()
{
  result = qword_1EC647E60;
  if (!qword_1EC647E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647E60);
  }

  return result;
}

unint64_t sub_1D197FACC()
{
  result = qword_1EC647E78;
  if (!qword_1EC647E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647E78);
  }

  return result;
}

unint64_t sub_1D197FB4C()
{
  result = qword_1EC647E80;
  if (!qword_1EC647E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647E80);
  }

  return result;
}

unint64_t sub_1D197FBA0()
{
  result = qword_1EC647E88;
  if (!qword_1EC647E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647E88);
  }

  return result;
}

unint64_t sub_1D197FC28()
{
  result = qword_1EC647EA0;
  if (!qword_1EC647EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647EA0);
  }

  return result;
}

uint64_t sub_1D197FCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D197FCE4()
{
  result = qword_1EC647EA8;
  if (!qword_1EC647EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647EA8);
  }

  return result;
}

unint64_t sub_1D197FD38()
{
  result = qword_1EC647EB0;
  if (!qword_1EC647EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647EB0);
  }

  return result;
}

unint64_t sub_1D197FDC0()
{
  result = qword_1EC647EC8;
  if (!qword_1EC647EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647EC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MatterThermostatPresetContextTag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1C)
  {
    goto LABEL_17;
  }

  if (a2 + 228 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 228) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 228;
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

      return (*a1 | (v4 << 8)) - 228;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 228;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x18 | (*a1 >> 5)) ^ 0x1F;
  if (v6 >= 0x1B)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for MatterThermostatPresetContextTag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 228 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 228) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1C)
  {
    v4 = 0;
  }

  if (a2 > 0x1B)
  {
    v5 = ((a2 - 28) >> 8) + 1;
    *result = a2 - 28;
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
    *result = 8 * (((-a2 >> 3) & 3) - 4 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t PresetInfo.presetHandle.getter()
{
  v1 = *v0;
  sub_1D1771B38(*v0, *(v0 + 8));
  return v1;
}

uint64_t PresetInfo.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1D171DB60(0x40u), (v5 & 1) != 0) && (sub_1D1741970(*(a1 + 56) + 32 * v4, v19), sub_1D1980BE0(), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v18;
    v7 = sub_1D1E668BC();
    v9 = v8;

    if (!*(a1 + 16))
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = 0;
    v9 = 0xF000000000000000;
    if (!*(a1 + 16))
    {
LABEL_10:
      v12 = 0;
      goto LABEL_11;
    }
  }

  v10 = sub_1D171DB60(0x41u);
  if ((v11 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_1D1741970(*(a1 + 56) + 32 * v10, v19);
  v12 = swift_dynamicCast();
  if (v12)
  {
    v12 = v18;
  }

LABEL_11:
  StaticThermostatClusterGroup.SystemMode.init(rawValue:)(v12, v19);
  v13 = v19[0];
  if (!*(a1 + 16) || (v14 = sub_1D171DB60(0x42u), (v15 & 1) == 0))
  {

    goto LABEL_16;
  }

  sub_1D1741970(*(a1 + 56) + 32 * v14, v19);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

  v17 = v18;
LABEL_17:
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v13;
  *(a2 + 17) = v17;
  return result;
}

uint64_t PresetInfo.copyApplying(automationEnabled:newSystemMode:)@<X0>(char a1@<W0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v6 = *v3;
  v5 = *(v3 + 8);
  if (v4 == 9)
  {
    LOBYTE(v4) = *(v3 + 16);
  }

  *a3 = v6;
  *(a3 + 8) = v5;
  *(a3 + 16) = v4;
  *(a3 + 17) = a1;
  return sub_1D1771B38(v6, v5);
}

uint64_t PresetInfo.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  if (v2 >> 60 == 15)
  {
    v15 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643838, &qword_1D1E8C020);
    v5 = sub_1D1E6789C();
    v7 = v6;
  }

  else
  {
    sub_1D1741854(*v0, *(v0 + 8));
    v5 = sub_1D1E6689C();
    v7 = v8;
    sub_1D1716AA4(v1, v2);
  }

  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD000000000000019, 0x80000001D1EC09C0);
  MEMORY[0x1D3890F70](v5, v7);

  MEMORY[0x1D3890F70](0x6D6574737973202CLL, 0xEE00203A65646F4DLL);
  if (v3 == 9)
  {
    v9 = 0xE300000000000000;
    v10 = 7104878;
  }

  else
  {
    v10 = StaticThermostatClusterGroup.SystemMode.label.getter();
    v9 = v11;
  }

  MEMORY[0x1D3890F70](v10, v9);

  MEMORY[0x1D3890F70](0xD000000000000015, 0x80000001D1EC09E0);
  if (v4)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v4)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v12, v13);

  MEMORY[0x1D3890F70](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D198041C()
{
  v1 = 0x6F4D6D6574737973;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6148746573657270;
  }
}

uint64_t sub_1D1980488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D19811B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D19804B0(uint64_t a1)
{
  v2 = sub_1D1980D8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19804EC(uint64_t a1)
{
  v2 = sub_1D1980D8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PresetInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647ED8, &qword_1D1E89D18);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v17 = *(v1 + 16);
  v13[1] = *(v1 + 17);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1771B38(v8, v9);
  sub_1D1980D8C();
  sub_1D1E6930C();
  v15 = v8;
  v16 = v9;
  v18 = 0;
  sub_1D18CAD0C();
  v11 = v14;
  sub_1D1E68E5C();
  sub_1D1716AA4(v15, v16);
  if (!v11)
  {
    LOBYTE(v15) = v17;
    v18 = 1;
    sub_1D1980DE0();
    sub_1D1E68E5C();
    LOBYTE(v15) = 2;
    sub_1D1E68EDC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t PresetInfo.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  if (v0[1] >> 60 != 15)
  {
    v4 = *v0;
    sub_1D1E6922C();
    sub_1D1E668CC();
    if (v1 == 9)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  sub_1D1E6922C();
  if (v1 != 9)
  {
LABEL_3:
    sub_1D1E6922C();
    v3 = byte_1D1E8A01E[v1];
  }

LABEL_5:
  sub_1D1E6922C();
  return sub_1D1E6922C();
}

uint64_t PresetInfo.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  sub_1D1E6920C();
  if (v2 >> 60 != 15)
  {
    sub_1D1E6922C();
    sub_1D1E668CC();
    if (v3 == 9)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  sub_1D1E6922C();
  if (v3 != 9)
  {
LABEL_3:
    sub_1D1E6922C();
    v5 = byte_1D1E8A01E[v3];
  }

LABEL_5:
  sub_1D1E6922C();
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t PresetInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647EF0, &qword_1D1E89D20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1980D8C();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_1D18CB0FC();
  sub_1D1E68CBC();
  v12 = v15[0];
  v11 = v15[1];
  v17 = 1;
  sub_1D1980E34();
  sub_1D1E68CBC();
  v16 = LOBYTE(v15[0]);
  LOBYTE(v15[0]) = 2;
  v13 = sub_1D1E68D3C();
  (*(v6 + 8))(v9, v5);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v16;
  *(a2 + 17) = v13 & 1;
  sub_1D1771B38(v12, v11);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D1716AA4(v12, v11);
}

uint64_t sub_1D1980B08()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  sub_1D1E6920C();
  if (v2 >> 60 != 15)
  {
    sub_1D1E6922C();
    sub_1D1E668CC();
    if (v3 == 9)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  sub_1D1E6922C();
  if (v3 != 9)
  {
LABEL_3:
    sub_1D1E6922C();
    v5 = byte_1D1E8A01E[v3];
  }

LABEL_5:
  sub_1D1E6922C();
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t sub_1D1980BD0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_1D1771B38(v2, v3);
}

unint64_t sub_1D1980BE0()
{
  result = qword_1EC647ED0;
  if (!qword_1EC647ED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC647ED0);
  }

  return result;
}

uint64_t _s13HomeDataModel10PresetInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 17);
  if (v2 >> 60 == 15)
  {
    if (v6 >> 60 == 15)
    {
      sub_1D1771B38(*a1, v2);
      sub_1D1771B38(v7, v6);
      sub_1D1716AA4(v3, v2);
      goto LABEL_8;
    }

LABEL_5:
    sub_1D1771B38(*a1, v2);
    sub_1D1771B38(v7, v6);
    sub_1D1716AA4(v3, v2);
    sub_1D1716AA4(v7, v6);
    return 0;
  }

  if (v6 >> 60 == 15)
  {
    goto LABEL_5;
  }

  sub_1D1771B38(*a1, v2);
  sub_1D1771B38(v7, v6);
  v11 = sub_1D199F344(v3, v2, v7, v6);
  sub_1D1716AA4(v7, v6);
  sub_1D1716AA4(v3, v2);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  if (v4 != 9)
  {
    if (v8 != 9 && byte_1D1E8A01E[v4] == byte_1D1E8A01E[v8])
    {
      return v5 ^ v9 ^ 1u;
    }

    return 0;
  }

  if (v8 != 9)
  {
    return 0;
  }

  return v5 ^ v9 ^ 1u;
}

unint64_t sub_1D1980D8C()
{
  result = qword_1EC647EE0;
  if (!qword_1EC647EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647EE0);
  }

  return result;
}

unint64_t sub_1D1980DE0()
{
  result = qword_1EC647EE8;
  if (!qword_1EC647EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647EE8);
  }

  return result;
}

unint64_t sub_1D1980E34()
{
  result = qword_1EC647EF8;
  if (!qword_1EC647EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647EF8);
  }

  return result;
}

unint64_t sub_1D1980E8C()
{
  result = qword_1EC647F00;
  if (!qword_1EC647F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647F00);
  }

  return result;
}

unint64_t sub_1D1980EE4()
{
  result = qword_1EC647F08;
  if (!qword_1EC647F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC643838, &qword_1D1E8C020);
    sub_1D1980F68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647F08);
  }

  return result;
}

unint64_t sub_1D1980F68()
{
  result = qword_1EC647F10;
  if (!qword_1EC647F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647F10);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D1980FF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D198104C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1D19810B4()
{
  result = qword_1EC647F18;
  if (!qword_1EC647F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647F18);
  }

  return result;
}

unint64_t sub_1D198110C()
{
  result = qword_1EC647F20;
  if (!qword_1EC647F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647F20);
  }

  return result;
}

unint64_t sub_1D1981164()
{
  result = qword_1EC647F28;
  if (!qword_1EC647F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647F28);
  }

  return result;
}

uint64_t sub_1D19811B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6148746573657270 && a2 == 0xEC000000656C646ELL;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F4D6D6574737973 && a2 == 0xEA00000000006564 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC0A00 == a2)
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

uint64_t StaticThermostatClusterGroup.TemperatureSetpointHold.label.getter()
{
  v1 = "setpointHold(hold:";
  if (*v0)
  {
    v1 = ", holdUntilPresetChange:";
    v2 = 0xD000000000000016;
  }

  else
  {
    v2 = 0xD000000000000010;
  }

  return static String.hfLocalized(_:)(v2, v1 | 0x8000000000000000);
}

uint64_t StaticThermostatClusterGroup.updateSetpointHold(hold:holdUntilPresetChange:duration:)(_BYTE *a1, char a2, uint64_t a3, char a4)
{
  *(v5 + 298) = a4;
  *(v5 + 56) = a3;
  *(v5 + 64) = v4;
  *(v5 + 297) = a2;
  v7 = *(type metadata accessor for StaticThermostatClusterGroup() - 8);
  *(v5 + 72) = v7;
  *(v5 + 80) = *(v7 + 64);
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  v8 = type metadata accessor for EndpointPath(0);
  *(v5 + 104) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  v10 = sub_1D1E66A7C();
  *(v5 + 120) = v10;
  v11 = *(v10 - 8);
  *(v5 + 128) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  v13 = type metadata accessor for ClusterPath(0);
  *(v5 + 144) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 299) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1D19814F0, 0, 0);
}

uint64_t sub_1D19814F0()
{
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  sub_1D19A1778(v0[8], v1, type metadata accessor for EndpointPath);
  *(v1 + *(v3 + 20)) = 19;
  v8 = *(v1 + *(v7 + 20));
  sub_1D19A1778(v1, v6, type metadata accessor for EndpointPath);
  (*(v5 + 32))(v2, v6, v4);
  v9 = swift_task_alloc();
  v0[23] = v9;
  *v9 = v0;
  v9[1] = sub_1D1981610;
  v10 = v0[17];

  return sub_1D1A0A508(v8, v10);
}