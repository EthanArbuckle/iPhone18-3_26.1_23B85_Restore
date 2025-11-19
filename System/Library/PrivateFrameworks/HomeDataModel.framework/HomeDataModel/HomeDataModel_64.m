uint64_t sub_1D1C57980()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1C75134(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1C57A08()
{
  sub_1D1E66A7C();
  sub_1D1C75134(qword_1EE07DD78, MEMORY[0x1E69695A8]);

  return sub_1D1E676EC();
}

uint64_t sub_1D1C57A8C()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1C75134(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1C57B70(uint64_t a1)
{
  v2 = type metadata accessor for BoxedTileInfoBearer(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D178CD64(0, v7, 0);
    v8 = v20;
    v9 = type metadata accessor for StaticCameraProfile();
    v10 = a1 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80));
    v11 = *(*(v9 - 8) + 72);
    v12 = sub_1D1C75134(&qword_1EC64C010, type metadata accessor for StaticCameraProfile);
    do
    {
      v19[3] = v9;
      v19[4] = v12;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
      sub_1D1C66B60(v10, boxed_opaque_existential_1, type metadata accessor for StaticCameraProfile);
      sub_1D17419CC(v19, v18);
      sub_1D1C572DC(v18, v6);
      __swift_destroy_boxed_opaque_existential_1(v19);
      v20 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D178CD64(v14 > 1, v15 + 1, 1);
        v8 = v20;
      }

      *(v8 + 16) = v15 + 1;
      sub_1D1C72E80(v6, v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15, type metadata accessor for BoxedTileInfoBearer);
      v10 += v11;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_1D1C57DB8(uint64_t a1)
{
  v2 = type metadata accessor for BoxedTileInfoBearer(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D178CD64(0, v7, 0);
    v8 = v20;
    v9 = type metadata accessor for StaticMediaSystem();
    v10 = a1 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80));
    v11 = *(*(v9 - 8) + 72);
    v12 = sub_1D1C75134(&qword_1EC64BFE8, type metadata accessor for StaticMediaSystem);
    do
    {
      v19[3] = v9;
      v19[4] = v12;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
      sub_1D1C66B60(v10, boxed_opaque_existential_1, type metadata accessor for StaticMediaSystem);
      sub_1D17419CC(v19, v18);
      sub_1D1C572DC(v18, v6);
      __swift_destroy_boxed_opaque_existential_1(v19);
      v20 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D178CD64(v14 > 1, v15 + 1, 1);
        v8 = v20;
      }

      *(v8 + 16) = v15 + 1;
      sub_1D1C72E80(v6, v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15, type metadata accessor for BoxedTileInfoBearer);
      v10 += v11;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_1D1C58000(uint64_t a1)
{
  v2 = type metadata accessor for BoxedTileInfoBearer(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D178CD64(0, v7, 0);
    v8 = v20;
    v9 = type metadata accessor for StaticActionSet();
    v10 = a1 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80));
    v11 = *(*(v9 - 8) + 72);
    v12 = sub_1D1C75134(&qword_1EC64C000, type metadata accessor for StaticActionSet);
    do
    {
      v19[3] = v9;
      v19[4] = v12;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
      sub_1D1C66B60(v10, boxed_opaque_existential_1, type metadata accessor for StaticActionSet);
      sub_1D17419CC(v19, v18);
      sub_1D1C572DC(v18, v6);
      __swift_destroy_boxed_opaque_existential_1(v19);
      v20 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D178CD64(v14 > 1, v15 + 1, 1);
        v8 = v20;
      }

      *(v8 + 16) = v15 + 1;
      sub_1D1C72E80(v6, v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15, type metadata accessor for BoxedTileInfoBearer);
      v10 += v11;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_1D1C58248(uint64_t a1)
{
  v2 = type metadata accessor for BoxedTileInfoBearer(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D178CD64(0, v7, 0);
    v8 = v20;
    v9 = type metadata accessor for StaticMatterDevice();
    v10 = a1 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80));
    v11 = *(*(v9 - 8) + 72);
    v12 = sub_1D1C75134(&qword_1EC649258, type metadata accessor for StaticMatterDevice);
    do
    {
      v19[3] = v9;
      v19[4] = v12;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
      sub_1D1C66B60(v10, boxed_opaque_existential_1, type metadata accessor for StaticMatterDevice);
      sub_1D17419CC(v19, v18);
      sub_1D1C572DC(v18, v6);
      __swift_destroy_boxed_opaque_existential_1(v19);
      v20 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D178CD64(v14 > 1, v15 + 1, 1);
        v8 = v20;
      }

      *(v8 + 16) = v15 + 1;
      sub_1D1C72E80(v6, v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15, type metadata accessor for BoxedTileInfoBearer);
      v10 += v11;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_1D1C58490(uint64_t a1)
{
  v2 = type metadata accessor for BoxedTileInfoBearer(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D178CD64(0, v7, 0);
    v8 = v20;
    v9 = type metadata accessor for StaticMediaProfile();
    v10 = a1 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80));
    v11 = *(*(v9 - 8) + 72);
    v12 = sub_1D1C75134(&qword_1EC64BFD0, type metadata accessor for StaticMediaProfile);
    do
    {
      v19[3] = v9;
      v19[4] = v12;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
      sub_1D1C66B60(v10, boxed_opaque_existential_1, type metadata accessor for StaticMediaProfile);
      sub_1D17419CC(v19, v18);
      sub_1D1C572DC(v18, v6);
      __swift_destroy_boxed_opaque_existential_1(v19);
      v20 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D178CD64(v14 > 1, v15 + 1, 1);
        v8 = v20;
      }

      *(v8 + 16) = v15 + 1;
      sub_1D1C72E80(v6, v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15, type metadata accessor for BoxedTileInfoBearer);
      v10 += v11;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_1D1C586D8(uint64_t a1)
{
  v2 = type metadata accessor for BoxedTileInfoBearer(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D178CD64(0, v7, 0);
    v8 = v20;
    v9 = type metadata accessor for StaticAccessory(0);
    v10 = a1 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80));
    v11 = *(*(v9 - 8) + 72);
    v12 = sub_1D1C75134(&qword_1EC64BA18, type metadata accessor for StaticAccessory);
    do
    {
      v19[3] = v9;
      v19[4] = v12;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
      sub_1D1C66B60(v10, boxed_opaque_existential_1, type metadata accessor for StaticAccessory);
      sub_1D17419CC(v19, v18);
      sub_1D1C572DC(v18, v6);
      __swift_destroy_boxed_opaque_existential_1(v19);
      v20 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D178CD64(v14 > 1, v15 + 1, 1);
        v8 = v20;
      }

      *(v8 + 16) = v15 + 1;
      sub_1D1C72E80(v6, v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15, type metadata accessor for BoxedTileInfoBearer);
      v10 += v11;
      --v7;
    }

    while (v7);
  }

  return v8;
}

void sub_1D1C58920(uint64_t a1)
{
  v2 = type metadata accessor for BoxedTileInfoBearer(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v24 - v8;
  v10 = sub_1D1919A08();
  v11 = sub_1D1C6CC64(&v25, a1, 0, 1, v10, type metadata accessor for BoxedTileInfoBearer, sub_1D1C6ED68, sub_1D1C6CDDC);
  v12 = *(a1 + 16);
  v13 = v25;
  if (v25 != v12)
  {
    if ((v25 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v12 >= v25)
    {
      v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v15 = a1 + v14;
      sub_1D19060CC(a1, a1 + v14, 0, (2 * v25) | 1);
      v26 = v11;
      v27 = v16;
      if (*(a1 + 16) >= v12)
      {
        v24[1] = v11;
        v24[2] = a1;
        v17 = *(v3 + 72);

        while (1)
        {
          sub_1D1C66B60(v15 + v17 * v13, v9, type metadata accessor for BoxedTileInfoBearer);
          v18 = v26;
          v19 = v27 + v14;
          v20 = *(v27 + 16);
          if (v26)
          {

            sub_1D1C6E730(v9, v19, v20, (v18 + 16), v18 + 32);
            v22 = v21;

            if ((v22 & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          else if (v20)
          {
            do
            {
              sub_1D1C66B60(v19, v7, type metadata accessor for BoxedTileInfoBearer);
              v23 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
              sub_1D1C72E20(v7, type metadata accessor for BoxedTileInfoBearer);
              if (v23)
              {
                goto LABEL_7;
              }

              v19 += v17;
            }

            while (--v20);
          }

          sub_1D1C6D608(v9);
LABEL_7:
          ++v13;
          sub_1D1C72E20(v9, type metadata accessor for BoxedTileInfoBearer);
          if (v13 == v12)
          {

            return;
          }
        }
      }

LABEL_19:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_19;
  }
}

void sub_1D1C58BE8(uint64_t a1)
{
  v2 = type metadata accessor for StaticService(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v24 - v8;
  v10 = sub_1D1919A08();
  v11 = sub_1D1C6CC64(&v25, a1, 0, 1, v10, type metadata accessor for StaticService, sub_1D1C6F0D8, sub_1D1C6D0B4);
  v12 = *(a1 + 16);
  v13 = v25;
  if (v25 != v12)
  {
    if ((v25 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v12 >= v25)
    {
      v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v15 = a1 + v14;
      sub_1D19060F4(a1, a1 + v14, 0, (2 * v25) | 1);
      v26 = v11;
      v27 = v16;
      if (*(a1 + 16) >= v12)
      {
        v24[1] = v11;
        v24[2] = a1;
        v17 = *(v3 + 72);

        while (1)
        {
          sub_1D1C66B60(v15 + v17 * v13, v9, type metadata accessor for StaticService);
          v18 = v26;
          v19 = v27 + v14;
          v20 = *(v27 + 16);
          if (v26)
          {

            sub_1D1C6E948(v9, v19, v20, (v18 + 16), v18 + 32);
            v22 = v21;

            if ((v22 & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          else if (v20)
          {
            do
            {
              sub_1D1C66B60(v19, v7, type metadata accessor for StaticService);
              v23 = _s13HomeDataModel13StaticServiceV2eeoiySbAC_ACtFZ_0(v7, v9);
              sub_1D1C72E20(v7, type metadata accessor for StaticService);
              if (v23)
              {
                goto LABEL_7;
              }

              v19 += v17;
            }

            while (--v20);
          }

          sub_1D1C6D858(v9);
LABEL_7:
          ++v13;
          sub_1D1C72E20(v9, type metadata accessor for StaticService);
          if (v13 == v12)
          {

            return;
          }
        }
      }

LABEL_19:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_19;
  }
}

void sub_1D1C58EB0(uint64_t a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v26 - v8;
  v10 = sub_1D1919A08();
  v11 = sub_1D1C6CC64(&v31, a1, 0, 1, v10, MEMORY[0x1E69695A8], sub_1D1C6F3F4, sub_1D1C6D31C);
  v12 = *(a1 + 16);
  v13 = v31;
  if (v31 != v12)
  {
    if ((v31 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v12 >= v31)
    {
      v29 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v28 = a1 + v29;
      sub_1D19062C0(a1, a1 + v29, 0, (2 * v31) | 1);
      v32 = v11;
      v33 = v14;
      if (*(a1 + 16) >= v12)
      {
        v26[1] = v11;
        v26[2] = a1;
        v17 = *(v3 + 16);
        v16 = v3 + 16;
        v15 = v17;
        v30 = *(v16 + 56);
        v18 = (v16 - 8);

        v27 = v12;
        while (1)
        {
          v19 = v16;
          v15(v9, v28 + v30 * v13, v2);
          v20 = v32;
          v21 = v33 + v29;
          v22 = *(v33 + 16);
          if (v32)
          {

            sub_1D1C6EB18(v9, v21, v22, (v20 + 16), v20 + 32);
            v24 = v23;

            if ((v24 & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          else if (v22)
          {
            do
            {
              v15(v7, v21, v2);
              sub_1D1C75134(&qword_1EE07D170, MEMORY[0x1E69695A8]);
              v25 = sub_1D1E6775C();
              (*v18)(v7, v2);
              if (v25)
              {
                goto LABEL_7;
              }

              v21 += v30;
            }

            while (--v22);
          }

          sub_1D1C6DAA8(v9);
LABEL_7:
          ++v13;
          (*v18)(v9, v2);
          v16 = v19;
          if (v13 == v27)
          {

            return;
          }
        }
      }

LABEL_19:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_19;
  }
}

uint64_t sub_1D1C59224@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D173FE74();

  *a1 = v2;
  return result;
}

uint64_t TileInfoBearerCollection.init(from:nativeMatterDevices:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, unint64_t a3@<X8>)
{
  v53 = a2;
  v49 = a1;
  v4 = type metadata accessor for StaticAccessory(0);
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v46 = &v46 - v17;
  v18 = type metadata accessor for TileInfoBearerCollection(0);
  *(a3 + v18[8]) = 0;
  *(a3 + v18[9]) = 78;
  *(a3 + v18[10]) = 0;
  *(a3 + v18[11]) = 0;
  *(a3 + v18[12]) = 0;
  v19 = v18[13];
  if (qword_1EC6423A8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    *(a3 + v19) = qword_1EC64C9A8;
    v20 = v18[14];
    v21 = qword_1EC642270;

    if (v21 != -1)
    {
      swift_once();
    }

    *(a3 + v20) = qword_1EC648718;
    v22 = v49;
    sub_1D1C66B60(v49, a3, type metadata accessor for StateSnapshot);
    v47 = a3;
    v48 = v18;
    *(a3 + v18[5]) = v53;
    v23 = *(v22 + *(type metadata accessor for StateSnapshot(0) + 32));

    v25 = sub_1D1781AF4(v24);
    v18 = v25;
    v19 = v25 + 56;
    v26 = 1 << *(v25 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    a3 = v27 & *(v25 + 56);
    v28 = (v26 + 63) >> 6;

    v29 = 0;
    if (a3)
    {
      break;
    }

LABEL_8:
    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v30 >= v28)
      {

        v31 = v46;
        (*(v5 + 56))(v46, 1, 1, v4);
        goto LABEL_15;
      }

      a3 = *(v19 + 8 * v30);
      ++v29;
      if (a3)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
  }

  while (1)
  {
    v30 = v29;
LABEL_11:
    sub_1D1C66B60(*(v18 + 6) + *(v5 + 72) * (__clz(__rbit64(a3)) | (v30 << 6)), v11, type metadata accessor for StaticAccessory);
    sub_1D1C72E80(v11, v9, type metadata accessor for StaticAccessory);
    if (v9[*(v4 + 15)] == 1)
    {
      break;
    }

    a3 &= a3 - 1;
    sub_1D1C72E20(v9, type metadata accessor for StaticAccessory);
    v29 = v30;
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  v31 = v46;
  sub_1D1C72E80(v9, v46, type metadata accessor for StaticAccessory);
  (*(v5 + 56))(v31, 0, 1, v4);
LABEL_15:

  v9 = sub_1D179ACDC(&unk_1F4D66098);
  v32 = v47;
  v11 = &qword_1EC6436C8;
  v18 = &unk_1D1E97C40;
  sub_1D1741C08(v31, v47 + v48[6], &qword_1EC6436C8, &unk_1D1E97C40);
  sub_1D1741C08(v31, v16, &qword_1EC6436C8, &unk_1D1E97C40);
  if ((*(v5 + 48))(v16, 1, v4) == 1)
  {
    sub_1D1741A30(v31, &qword_1EC6436C8, &unk_1D1E97C40);

    sub_1D1C72E20(v49, type metadata accessor for StateSnapshot);
    result = sub_1D1741A30(v16, &qword_1EC6436C8, &unk_1D1E97C40);
    v19 = 0;
    goto LABEL_144;
  }

  v4 = v16;
  v5 = sub_1D1C56820();
  sub_1D1C72E20(v16, type metadata accessor for StaticAccessory);
  v52 = *(v5 + 16);
  if (v52)
  {
    v19 = 0;
    v34 = 0;
    v50 = v5;
    v51 = v5 + 32;
    v53 = v9 + 56;
    a3 = "takeSnaphotsWhenBusy";
    while (v34 < *(v5 + 16))
    {
      v35 = *(v9 + 2);
      if (v35)
      {
        v16 = *(v51 + v34);
        v36 = *(v9 + 5);
        sub_1D1E6920C();
        v54 = v16;
        ServiceKind.rawValue.getter();
        sub_1D1E678EC();

        v4 = &v55;
        v37 = sub_1D1E6926C();
        v38 = -1 << v9[32];
        v11 = v37 & ~v38;
        if ((*&v53[(v11 >> 3) & 0xFFFFFFFFFFFFFF8] >> v11))
        {
          v39 = ~v38;
          while (1)
          {
            v40 = "takeSnaphotsWhenBusy";
            switch(*(*(v9 + 6) + v11))
            {
              case 1:
                v41 = "0000003E-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 2:
                v41 = "00000270-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 3:
                v41 = "000000BB-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 4:
                v41 = "0000008D-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 5:
                v41 = "00000096-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 6:
                v41 = "00000042-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 7:
                v41 = "00000110-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 8:
                v41 = "00000204-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 9:
                v41 = "00000097-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0xA:
                v41 = "0000007F-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0xB:
                v41 = "00000080-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0xC:
                v41 = "00000129-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0xD:
                v41 = "00000237-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0xE:
                v41 = "00000081-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0xF:
                v41 = "00000121-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x10:
                v41 = "00000040-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x11:
                v41 = "000000D7-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x12:
                v41 = "000000BA-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x13:
                v41 = "00000041-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x14:
                v41 = "000000BC-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x15:
                v41 = "000000BD-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x16:
                v41 = "00000082-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x17:
                v41 = "000000D9-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x18:
                v41 = "000000CF-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x19:
                v41 = "000000CC-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x1A:
                v41 = "00000083-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x1B:
                v41 = "00000084-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x1C:
                v41 = "00000043-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x1D:
                v41 = "00000044-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x1E:
                v41 = "00000045-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x1F:
                v41 = "00000112-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x20:
                v41 = "00000085-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x21:
                v41 = "00000086-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x22:
                v41 = "00000047-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x23:
                v41 = "0000007E-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x24:
                v41 = "000000B9-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x25:
                v41 = "00000087-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x26:
                v41 = "00000113-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x27:
                v41 = "00000088-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x28:
                v41 = "00000089-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x29:
                v41 = "00000049-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x2A:
                v41 = "00000125-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x2B:
                v41 = "00000122-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x2C:
                v41 = "000000D8-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x2D:
                v41 = "0000008A-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x2E:
                v41 = "0000004A-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x2F:
                v41 = "000000D0-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x30:
                v41 = "000000B7-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x31:
                v41 = "0000020A-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x32:
                v41 = "0000020F-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x33:
                v41 = "0000008B-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x34:
                v41 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_76:
                v40 = v41 - 32;
                break;
              default:
                break;
            }

            v4 = (v40 | 0x8000000000000000);
            v42 = "takeSnaphotsWhenBusy";
            switch(v16)
            {
              case 1:
                v43 = "0000003E-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 2:
                v43 = "00000270-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 3:
                v43 = "000000BB-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 4:
                v43 = "0000008D-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 5:
                v43 = "00000096-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 6:
                v43 = "00000042-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 7:
                v43 = "00000110-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 8:
                v43 = "00000204-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 9:
                v43 = "00000097-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 10:
                v43 = "0000007F-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 11:
                v43 = "00000080-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 12:
                v43 = "00000129-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 13:
                v43 = "00000237-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 14:
                v43 = "00000081-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 15:
                v43 = "00000121-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 16:
                v43 = "00000040-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 17:
                v43 = "000000D7-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 18:
                v43 = "000000BA-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 19:
                v43 = "00000041-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 20:
                v43 = "000000BC-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 21:
                v43 = "000000BD-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 22:
                v43 = "00000082-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 23:
                v43 = "000000D9-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 24:
                v43 = "000000CF-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 25:
                v43 = "000000CC-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 26:
                v43 = "00000083-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 27:
                v43 = "00000084-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 28:
                v43 = "00000043-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 29:
                v43 = "00000044-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 30:
                v43 = "00000045-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 31:
                v43 = "00000112-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 32:
                v43 = "00000085-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 33:
                v43 = "00000086-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 34:
                v43 = "00000047-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 35:
                v43 = "0000007E-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 36:
                v43 = "000000B9-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 37:
                v43 = "00000087-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 38:
                v43 = "00000113-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 39:
                v43 = "00000088-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 40:
                v43 = "00000089-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 41:
                v43 = "00000049-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 42:
                v43 = "00000125-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 43:
                v43 = "00000122-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 44:
                v43 = "000000D8-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 45:
                v43 = "0000008A-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 46:
                v43 = "0000004A-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 47:
                v43 = "000000D0-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 48:
                v43 = "000000B7-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 49:
                v43 = "0000020A-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 50:
                v43 = "0000020F-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 51:
                v43 = "0000008B-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 52:
                v43 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_130:
                v42 = v43 - 32;
                break;
              default:
                break;
            }

            v18 = (v42 | 0x8000000000000000);
            if (v4 == (v42 | 0x8000000000000000))
            {
              break;
            }

            v44 = sub_1D1E6904C();

            if (v44)
            {
              goto LABEL_137;
            }

            v11 = (v11 + 1) & v39;
            if (((*&v53[(v11 >> 3) & 0xFFFFFFFFFFFFFF8] >> v11) & 1) == 0)
            {
              v35 = 0;
              goto LABEL_138;
            }
          }

LABEL_137:
          v35 = 1;
LABEL_138:
          v5 = v50;
        }

        else
        {
          v35 = 0;
        }
      }

      v45 = __OFADD__(v19, v35);
      v19 += v35;
      if (v45)
      {
        goto LABEL_148;
      }

      if (++v34 == v52)
      {

        v31 = v46;
        v32 = v47;
        goto LABEL_143;
      }
    }

    goto LABEL_147;
  }

  v19 = 0;
LABEL_143:
  sub_1D1741A30(v31, &qword_1EC6436C8, &unk_1D1E97C40);
  result = sub_1D1C72E20(v49, type metadata accessor for StateSnapshot);
LABEL_144:
  *(v32 + v48[7]) = v19;
  return result;
}

uint64_t TileInfoBearerCollection.matterDeviceTypes(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TileInfoBearerCollection(0) + 56);
  v6 = *(v2 + v5);

  *(v2 + v5) = a1;
  return sub_1D1C72E80(v2, a2, type metadata accessor for TileInfoBearerCollection);
}

uint64_t TileInfoBearerCollection.serviceKinds(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TileInfoBearerCollection(0) + 52);
  v6 = *(v2 + v5);

  *(v2 + v5) = a1;
  return sub_1D1C72E80(v2, a2, type metadata accessor for TileInfoBearerCollection);
}

void sub_1D1C5A148()
{
  v48 = type metadata accessor for StaticService(0);
  v52 = *(v48 - 8);
  v1 = *(v52 + 64);
  v2 = MEMORY[0x1EEE9AC00](v48);
  v45 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v42 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v42 - v8;
  v10 = type metadata accessor for StaticAccessory(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TileInfoBearerCollection(0);
  sub_1D1741C08(v0 + *(v15 + 24), v9, &qword_1EC6436C8, &unk_1D1E97C40);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D1741A30(v9, &qword_1EC6436C8, &unk_1D1E97C40);
    sub_1D1C58BE8(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1D1C72E80(v9, v14, type metadata accessor for StaticAccessory);
    v16 = sub_1D179ACDC(&unk_1F4D5EE00);
    v17 = *&v14[*(v10 + 84)];
    MEMORY[0x1EEE9AC00](v16);
    v43 = v14;
    *(&v42 - 2) = v14;
    v19 = sub_1D17868B8(sub_1D1820ECC, (&v42 - 4), v18);
    v20 = v19;
    v51 = v19[2];
    if (v51)
    {
      v21 = 0;
      v22 = v16 + 56;
      v44 = MEMORY[0x1E69E7CC0];
      v46 = v19;
      v47 = v5;
      while (v21 < v20[2])
      {
        v23 = (*(v52 + 80) + 32) & ~*(v52 + 80);
        v24 = *(v52 + 72);
        sub_1D1C66B60(v20 + v23 + v24 * v21, v5, type metadata accessor for StaticService);
        if (*(v16 + 16))
        {
          v49 = v24;
          v50 = v23;
          v25 = v5[*(v48 + 104)];
          v26 = *(v16 + 40);
          sub_1D1E6920C();
          v53 = v25;
          ServiceKind.rawValue.getter();
          sub_1D1E678EC();

          v27 = sub_1D1E6926C();
          v28 = -1 << *(v16 + 32);
          v29 = v27 & ~v28;
          if ((*(v22 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
          {
            v30 = ~v28;
            while (1)
            {
              v31 = "takeSnaphotsWhenBusy";
              switch(*(*(v16 + 48) + v29))
              {
                case 1:
                  v32 = "0000003E-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 2:
                  v32 = "00000270-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 3:
                  v32 = "000000BB-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 4:
                  v32 = "0000008D-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 5:
                  v32 = "00000096-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 6:
                  v32 = "00000042-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 7:
                  v32 = "00000110-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 8:
                  v32 = "00000204-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 9:
                  v32 = "00000097-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0xA:
                  v32 = "0000007F-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0xB:
                  v32 = "00000080-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0xC:
                  v32 = "00000129-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0xD:
                  v32 = "00000237-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0xE:
                  v32 = "00000081-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0xF:
                  v32 = "00000121-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x10:
                  v32 = "00000040-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x11:
                  v32 = "000000D7-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x12:
                  v32 = "000000BA-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x13:
                  v32 = "00000041-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x14:
                  v32 = "000000BC-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x15:
                  v32 = "000000BD-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x16:
                  v32 = "00000082-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x17:
                  v32 = "000000D9-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x18:
                  v32 = "000000CF-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x19:
                  v32 = "000000CC-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x1A:
                  v32 = "00000083-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x1B:
                  v32 = "00000084-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x1C:
                  v32 = "00000043-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x1D:
                  v32 = "00000044-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x1E:
                  v32 = "00000045-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x1F:
                  v32 = "00000112-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x20:
                  v32 = "00000085-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x21:
                  v32 = "00000086-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x22:
                  v32 = "00000047-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x23:
                  v32 = "0000007E-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x24:
                  v32 = "000000B9-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x25:
                  v32 = "00000087-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x26:
                  v32 = "00000113-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x27:
                  v32 = "00000088-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x28:
                  v32 = "00000089-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x29:
                  v32 = "00000049-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x2A:
                  v32 = "00000125-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x2B:
                  v32 = "00000122-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x2C:
                  v32 = "000000D8-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x2D:
                  v32 = "0000008A-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x2E:
                  v32 = "0000004A-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x2F:
                  v32 = "000000D0-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x30:
                  v32 = "000000B7-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x31:
                  v32 = "0000020A-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x32:
                  v32 = "0000020F-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x33:
                  v32 = "0000008B-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x34:
                  v32 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_64:
                  v31 = v32 - 32;
                  break;
                default:
                  break;
              }

              v33 = v31 | 0x8000000000000000;
              v34 = "takeSnaphotsWhenBusy";
              switch(v25)
              {
                case 1:
                  v35 = "0000003E-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 2:
                  v35 = "00000270-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 3:
                  v35 = "000000BB-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 4:
                  v35 = "0000008D-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 5:
                  v35 = "00000096-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 6:
                  v35 = "00000042-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 7:
                  v35 = "00000110-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 8:
                  v35 = "00000204-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 9:
                  v35 = "00000097-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 10:
                  v35 = "0000007F-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 11:
                  v35 = "00000080-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 12:
                  v35 = "00000129-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 13:
                  v35 = "00000237-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 14:
                  v35 = "00000081-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 15:
                  v35 = "00000121-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 16:
                  v35 = "00000040-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 17:
                  v35 = "000000D7-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 18:
                  v35 = "000000BA-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 19:
                  v35 = "00000041-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 20:
                  v35 = "000000BC-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 21:
                  v35 = "000000BD-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 22:
                  v35 = "00000082-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 23:
                  v35 = "000000D9-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 24:
                  v35 = "000000CF-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 25:
                  v35 = "000000CC-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 26:
                  v35 = "00000083-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 27:
                  v35 = "00000084-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 28:
                  v35 = "00000043-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 29:
                  v35 = "00000044-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 30:
                  v35 = "00000045-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 31:
                  v35 = "00000112-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 32:
                  v35 = "00000085-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 33:
                  v35 = "00000086-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 34:
                  v35 = "00000047-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 35:
                  v35 = "0000007E-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 36:
                  v35 = "000000B9-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 37:
                  v35 = "00000087-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 38:
                  v35 = "00000113-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 39:
                  v35 = "00000088-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 40:
                  v35 = "00000089-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 41:
                  v35 = "00000049-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 42:
                  v35 = "00000125-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 43:
                  v35 = "00000122-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 44:
                  v35 = "000000D8-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 45:
                  v35 = "0000008A-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 46:
                  v35 = "0000004A-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 47:
                  v35 = "000000D0-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 48:
                  v35 = "000000B7-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 49:
                  v35 = "0000020A-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 50:
                  v35 = "0000020F-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 51:
                  v35 = "0000008B-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 52:
                  v35 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_118:
                  v34 = v35 - 32;
                  break;
                default:
                  break;
              }

              if (v33 == (v34 | 0x8000000000000000))
              {
                break;
              }

              v36 = sub_1D1E6904C();

              if (v36)
              {
                goto LABEL_124;
              }

              v29 = (v29 + 1) & v30;
              if (((*(v22 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
              {
                goto LABEL_122;
              }
            }

LABEL_124:
            v5 = v47;
            sub_1D1C72E80(v47, v45, type metadata accessor for StaticService);
            v37 = v44;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v54 = v37;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D17915E0(0, *(v37 + 16) + 1, 1);
              v37 = v54;
            }

            v39 = v49;
            v41 = *(v37 + 16);
            v40 = *(v37 + 24);
            if (v41 >= v40 >> 1)
            {
              sub_1D17915E0(v40 > 1, v41 + 1, 1);
              v37 = v54;
            }

            *(v37 + 16) = v41 + 1;
            v44 = v37;
            sub_1D1C72E80(v45, v37 + v50 + v41 * v39, type metadata accessor for StaticService);
          }

          else
          {
LABEL_122:
            v5 = v47;
            sub_1D1C72E20(v47, type metadata accessor for StaticService);
          }

          v20 = v46;
        }

        else
        {
          sub_1D1C72E20(v5, type metadata accessor for StaticService);
        }

        if (++v21 == v51)
        {
          goto LABEL_131;
        }
      }

      __break(1u);
    }

    else
    {
      v44 = MEMORY[0x1E69E7CC0];
LABEL_131:

      sub_1D1C58BE8(v44);
      sub_1D1C72E20(v43, type metadata accessor for StaticAccessory);
    }
  }
}

BOOL sub_1D1C5ABF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticServiceGroup();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TileInfoBearerCollection(0);
  if ((*(a2 + *(v8 + 36)) & 6) == 2 && (StaticServiceGroup.canBeToggled.getter() & 1) == 0)
  {
    return 0;
  }

  if (*(a2 + *(v8 + 44)))
  {
    return 1;
  }

  sub_1D1C66B60(a1, v7, type metadata accessor for StaticServiceGroup);
  v10 = *&v7[*(v4 + 56)];
  v11 = v10[2];
  if (v11)
  {
    v12 = sub_1D18042C8(v10[2], 0);
    v13 = *(type metadata accessor for StaticService(0) - 8);
    v17 = sub_1D1804A58(&v16, v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v11, v10);

    sub_1D1716918();
    if (v17 != v11)
    {
      __break(1u);
      return 0;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  sub_1D1C72E20(v7, type metadata accessor for StaticServiceGroup);
  v14 = *(v12 + 16);

  return v14 != 0;
}

uint64_t sub_1D1C5ADDC(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = sub_1D1804340(a1[2], 0);
    v4 = *(type metadata accessor for StaticServiceGroup() - 8);
    v5 = sub_1D1804A18(&v10, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, a1);

    sub_1D1716918();
    if (v5 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v6 = sub_1D1919A08();
  v7 = sub_1D1C6DDB4(v3, 0, 1, v6, sub_1D1C6E060);
  v8 = *(v3 + 16);

  if (v8 <= 0xF)
  {

    return 0;
  }

  return v7;
}

void sub_1D1C5AF24()
{
  v1 = type metadata accessor for StaticService(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for StaticServiceGroup();
  v11 = *(v56 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v64 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + *(type metadata accessor for StateSnapshot(0) + 56));

  v16 = sub_1D1781F7C(v15);
  v68 = v0;
  v17 = sub_1D1B51F30(sub_1D1C754EC, v67, v16);
  v51 = sub_1D1C5ADDC(v17);
  v55 = *(v18 + 16);
  if (!v55)
  {

    v20 = MEMORY[0x1E69E7CC0];
LABEL_37:

    sub_1D1C58EB0(v20);
    return;
  }

  v19 = 0;
  v54 = v18 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v65 = v7 + 32;
  v66 = (v7 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  v62 = v2;
  v52 = v11;
  v53 = v18;
  while (v19 < *(v18 + 16))
  {
    v22 = *(v11 + 72);
    v63 = v19;
    v23 = v64;
    sub_1D1C66B60(v54 + v22 * v19, v64, type metadata accessor for StaticServiceGroup);
    v24 = *(v23 + *(v56 + 56));
    v25 = v24[2];
    if (v25)
    {
      v61 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643258, &qword_1D1E716B0);
      v26 = *(v2 + 72);
      v27 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v28 = swift_allocObject();
      v29 = _swift_stdlib_malloc_size(v28);
      if (!v26)
      {
        goto LABEL_41;
      }

      if (v29 - v27 == 0x8000000000000000 && v26 == -1)
      {
        goto LABEL_45;
      }

      v31 = 2 * ((v29 - v27) / v26);
      v32 = v28;
      v28[2] = v25;
      v28[3] = v31;
      v33 = sub_1D1804A58(v69, v28 + v27, v25, v61);
      v59 = v69[1];
      v60 = v33;
      v57 = v69[4];
      v58 = v69[3];

      sub_1D1716918();
      if (v60 != v25)
      {
        goto LABEL_42;
      }

      v2 = v62;
    }

    else
    {
      v32 = MEMORY[0x1E69E7CC0];
    }

    sub_1D1C72E20(v64, type metadata accessor for StaticServiceGroup);
    v34 = v32[2];
    if (v34)
    {
      v61 = v20;
      v69[0] = MEMORY[0x1E69E7CC0];
      sub_1D178CEFC(0, v34, 0);
      v35 = v69[0];
      v36 = *(v2 + 80);
      v60 = v32;
      v37 = v32 + ((v36 + 32) & ~v36);
      v38 = *(v2 + 72);
      do
      {
        sub_1D1C66B60(v37, v5, type metadata accessor for StaticService);
        (*v66)(v10, v5, v6);
        sub_1D1C72E20(v5, type metadata accessor for StaticService);
        v69[0] = v35;
        v40 = *(v35 + 16);
        v39 = *(v35 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_1D178CEFC(v39 > 1, v40 + 1, 1);
          v35 = v69[0];
        }

        *(v35 + 16) = v40 + 1;
        (*(v7 + 32))(v35 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v40, v10, v6);
        v37 += v38;
        --v34;
      }

      while (v34);

      v20 = v61;
      v2 = v62;
    }

    else
    {

      v35 = MEMORY[0x1E69E7CC0];
    }

    v41 = *(v35 + 16);
    v42 = v20[2];
    v43 = v42 + v41;
    if (__OFADD__(v42, v41))
    {
      goto LABEL_39;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v43 <= v20[3] >> 1)
    {
      if (*(v35 + 16))
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v42 <= v43)
      {
        v45 = v42 + v41;
      }

      else
      {
        v45 = v42;
      }

      v20 = sub_1D177D0AC(isUniquelyReferenced_nonNull_native, v45, 1, v20);
      if (*(v35 + 16))
      {
LABEL_31:
        if ((v20[3] >> 1) - v20[2] < v41)
        {
          goto LABEL_43;
        }

        v46 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v47 = *(v7 + 72);
        swift_arrayInitWithCopy();

        v18 = v53;
        v21 = v63;
        if (v41)
        {
          v48 = v20[2];
          v49 = __OFADD__(v48, v41);
          v50 = v48 + v41;
          if (v49)
          {
            goto LABEL_44;
          }

          v20[2] = v50;
        }

        goto LABEL_4;
      }
    }

    v18 = v53;
    v21 = v63;
    if (v41)
    {
      goto LABEL_40;
    }

LABEL_4:
    v19 = v21 + 1;
    v11 = v52;
    if (v19 == v55)
    {

      goto LABEL_37;
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
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t sub_1D1C5B538()
{
  v1 = v0;
  v173[1] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v160 = v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v163 = v144 - v6;
  v7 = type metadata accessor for StaticService(0);
  v166 = *(v7 - 8);
  v8 = *(v166 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v168 = v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v144 - v11;
  v13 = type metadata accessor for StaticAccessory(0);
  v14 = *(v13 - 8);
  v161 = v13;
  v162 = v14;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v144[0] = v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v157 = v144 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v153 = v144 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v144 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v159 = v144 - v25;
  v26 = *(type metadata accessor for StateSnapshot(0) + 32);
  v146 = v1;
  v27 = *(v1 + v26);

  v29 = sub_1D1781AF4(v28);
  v30 = *(v29 + 32);
  LODWORD(v1) = v30 & 0x3F;
  v31 = ((1 << v30) + 63) >> 6;
  v32 = 8 * v31;

  v165 = v7;
  v152 = v12;
  if (v1 > 0xD)
  {
    goto LABEL_144;
  }

  while (2)
  {
    v169 = v144;
    v170 = v31;
    MEMORY[0x1EEE9AC00](v33);
    v34 = v144 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v34, v32);
    v171 = 0;
    v7 = 0;
    v35 = 1 << *(v29 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v29 + 56);
    v12 = (v35 + 63) >> 6;
    v32 = v159;
    while (v37)
    {
      v38 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
LABEL_12:
      v31 = v38 | (v7 << 6);
      sub_1D1C66B60(*(v29 + 48) + *(v162 + 72) * v31, v32, type metadata accessor for StaticAccessory);
      v41 = *(v32 + v161[15]);
      sub_1D1C72E20(v32, type metadata accessor for StaticAccessory);
      if ((v41 & 1) == 0)
      {
        *&v34[(v31 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v31;
        v42 = __OFADD__(v171++, 1);
        if (v42)
        {
          __break(1u);
          goto LABEL_16;
        }
      }
    }

    v39 = v7;
    while (1)
    {
      v7 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        goto LABEL_138;
      }

      if (v7 >= v12)
      {
        break;
      }

      v40 = *(v29 + 56 + 8 * v7);
      ++v39;
      if (v40)
      {
        v38 = __clz(__rbit64(v40));
        v37 = (v40 - 1) & v40;
        goto LABEL_12;
      }
    }

LABEL_16:
    v43 = sub_1D19E09A0(v34, v170, v171, v29);

    v156 = 0;
    v7 = v165;
    v12 = v152;
LABEL_17:
    v44 = *(v43 + 32);
    v45 = v44 & 0x3F;
    v31 = ((1 << v44) + 63) >> 6;
    v32 = 8 * v31;

    if (v45 > 0xD)
    {

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v132 = swift_slowAlloc();
        v133 = v31;
        v134 = v156;
        v56 = sub_1D1BCEE34(v132, v133, v43, sub_1D1BCD780, 0);
        v156 = v134;

        MEMORY[0x1D3893640](v132, -1, -1);
        goto LABEL_39;
      }
    }

    v170 = v144;
    v171 = v31;
    MEMORY[0x1EEE9AC00](v46);
    v29 = v144 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v29, v32);
    v32 = 0;
    v12 = 0;
    v47 = 1 << *(v43 + 32);
    v48 = -1;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    v49 = v48 & *(v43 + 56);
    v7 = (v47 + 63) >> 6;
    while (v49)
    {
      v50 = __clz(__rbit64(v49));
      v49 &= v49 - 1;
LABEL_29:
      v31 = v50 | (v12 << 6);
      sub_1D1C66B60(*(v43 + 48) + *(v162 + 72) * v31, v24, type metadata accessor for StaticAccessory);
      if (*(v24 + v161[27]) == 1)
      {
        sub_1D1C72E20(v24, type metadata accessor for StaticAccessory);
LABEL_35:
        *(v29 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        v42 = __OFADD__(v32++, 1);
        if (v42)
        {
          __break(1u);
          goto LABEL_38;
        }
      }

      else
      {
        v53 = StaticAccessory.staticServicesExcludingComponents.getter()[2];

        if (v53 >= 2 && (v54 = *(StaticAccessory.visibleStaticServices.getter() + 16), , v54))
        {
          v55 = *(v24 + v161[19]);
          sub_1D1C72E20(v24, type metadata accessor for StaticAccessory);
          if ((v55 & 1) == 0)
          {
            goto LABEL_35;
          }
        }

        else
        {
          sub_1D1C72E20(v24, type metadata accessor for StaticAccessory);
        }
      }
    }

    v51 = v12;
    while (1)
    {
      v12 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        goto LABEL_139;
      }

      if (v12 >= v7)
      {
        break;
      }

      v52 = *(v43 + 56 + 8 * v12);
      ++v51;
      if (v52)
      {
        v50 = __clz(__rbit64(v52));
        v49 = (v52 - 1) & v52;
        goto LABEL_29;
      }
    }

LABEL_38:
    v56 = sub_1D19E09A0(v29, v171, v32, v43);
    v7 = v165;
    v12 = v152;
LABEL_39:

    v57 = *(v56 + 32);
    v58 = v57 & 0x3F;
    v145 = ((1 << v57) + 63) >> 6;
    v59 = 8 * v145;

    v31 = v153;
    if (v58 > 0xD)
    {

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v135 = swift_slowAlloc();
        v136 = v156;
        v24 = sub_1D1BCEE34(v135, v145, v56, sub_1D1BCE418, 0);
        v156 = v136;

        MEMORY[0x1D3893640](v135, -1, -1);
        goto LABEL_76;
      }
    }

    v144[1] = v144;
    MEMORY[0x1EEE9AC00](v60);
    v147 = v144 - ((v59 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v147, v59);
    v148 = 0;
    v61 = 0;
    v24 = v56 + 56;
    v62 = 1 << *(v56 + 32);
    v63 = -1;
    if (v62 < 64)
    {
      v63 = ~(-1 << v62);
    }

    v64 = v63 & *(v56 + 56);
    v29 = (v62 + 63) >> 6;
    v169 = 0x80000001D1EB3580;
    v151 = v56;
    v150 = v56 + 56;
    v149 = v29;
    while (1)
    {
LABEL_44:
      if (v64)
      {
        v65 = __clz(__rbit64(v64));
        v158 = (v64 - 1) & v64;
      }

      else
      {
        v66 = v61;
        do
        {
          v61 = v66 + 1;
          if (__OFADD__(v66, 1))
          {
            goto LABEL_140;
          }

          if (v61 >= v29)
          {
            goto LABEL_75;
          }

          v67 = *(v24 + 8 * v61);
          ++v66;
        }

        while (!v67);
        v65 = __clz(__rbit64(v67));
        v158 = (v67 - 1) & v67;
      }

      v68 = v65 | (v61 << 6);
      v69 = *(v56 + 48);
      v70 = *(v162 + 72);
      v155 = v68;
      sub_1D1C66B60(v69 + v70 * v68, v31, type metadata accessor for StaticAccessory);
      if (*(v31 + v161[26]) != 1)
      {
        break;
      }

      sub_1D1C72E20(v31, type metadata accessor for StaticAccessory);
      v64 = v158;
    }

    v154 = v61;
    v24 = v31;
    v71 = StaticAccessory.staticServicesExcludingComponents.getter();
    v31 = v71;
    v167 = v71[2];
    if (v167)
    {
      v72 = 0;
      v29 = MEMORY[0x1E69E7CC0];
      v164 = v71;
      while (1)
      {
        if (v72 >= *(v31 + 16))
        {
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

        v73 = (*(v166 + 80) + 32) & ~*(v166 + 80);
        v74 = *(v166 + 72);
        sub_1D1C66B60(v31 + v73 + v74 * v72, v12, type metadata accessor for StaticService);
        v172 = *(v12 + *(v7 + 104));
        if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v169 == v75)
        {
        }

        else
        {
          v24 = v75;
          v76 = sub_1D1E6904C();

          if ((v76 & 1) == 0)
          {
            sub_1D1C72E20(v12, type metadata accessor for StaticService);
            goto LABEL_55;
          }
        }

        v170 = v74;
        v171 = v73;
        v77 = v12 + *(v7 + 116);
        v78 = v163;
        v32 = &qword_1EC642590;
        sub_1D1741C08(v77, v163, &qword_1EC642590, qword_1D1E71260);
        v24 = sub_1D1E66A7C();
        v79 = *(*(v24 - 8) + 48);
        v80 = v79(v78, 1, v24);
        sub_1D1741A30(v78, &qword_1EC642590, qword_1D1E71260);
        if (v80 != 1)
        {
          goto LABEL_65;
        }

        v7 = v165;
        v81 = v160;
        sub_1D1741C08(v12 + *(v165 + 148), v160, &qword_1EC642590, qword_1D1E71260);
        if (v79(v81, 1, v24) != 1)
        {
          sub_1D1741A30(v81, &qword_1EC642590, qword_1D1E71260);
LABEL_65:
          sub_1D1C72E80(v12, v168, type metadata accessor for StaticService);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v173[0] = v29;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v24 = v173;
            sub_1D17915E0(0, *(v29 + 16) + 1, 1);
            v29 = v173[0];
          }

          v31 = v164;
          v7 = v165;
          v32 = v170;
          v83 = v171;
          v85 = *(v29 + 16);
          v84 = *(v29 + 24);
          if (v85 >= v84 >> 1)
          {
            v24 = v173;
            sub_1D17915E0(v84 > 1, v85 + 1, 1);
            v29 = v173[0];
          }

          *(v29 + 16) = v85 + 1;
          sub_1D1C72E80(v168, v29 + v83 + v85 * v32, type metadata accessor for StaticService);
          goto LABEL_55;
        }

        sub_1D1C72E20(v12, type metadata accessor for StaticService);
        sub_1D1741A30(v81, &qword_1EC642590, qword_1D1E71260);
        v31 = v164;
LABEL_55:
        if (v167 == ++v72)
        {
          goto LABEL_71;
        }
      }
    }

    v29 = MEMORY[0x1E69E7CC0];
LABEL_71:

    v86 = *(v29 + 16);

    v31 = v153;
    sub_1D1C72E20(v153, type metadata accessor for StaticAccessory);
    v56 = v151;
    v24 = v150;
    v61 = v154;
    v29 = v149;
    v64 = v158;
    if (v86)
    {
      goto LABEL_44;
    }

    *&v147[(v155 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v155;
    v42 = __OFADD__(v148++, 1);
    if (!v42)
    {
      goto LABEL_44;
    }

    __break(1u);
LABEL_75:
    v24 = sub_1D19E09A0(v147, v145, v148, v56);
LABEL_76:

    v87 = *(v24 + 32);
    v88 = v87 & 0x3F;
    v89 = ((1 << v87) + 63) >> 6;
    v90 = 8 * v89;

    if (v88 > 0xD)
    {

      if (swift_stdlib_isStackAllocationSafe())
      {

        goto LABEL_77;
      }

      v137 = swift_slowAlloc();
      v138 = v156;
      v101 = sub_1D1BCEE34(v137, v89, v24, sub_1D1BCD3DC, 0);
      v156 = v138;

      MEMORY[0x1D3893640](v137, -1, -1);
    }

    else
    {
LABEL_77:
      v170 = v144;
      v171 = v89;
      MEMORY[0x1EEE9AC00](v91);
      v31 = v144 - ((v90 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v31, v90);
      v92 = 0;
      v32 = 0;
      v29 = v24 + 56;
      v93 = 1 << *(v24 + 32);
      v94 = -1;
      if (v93 < 64)
      {
        v94 = ~(-1 << v93);
      }

      v12 = v94 & *(v24 + 56);
      v7 = (v93 + 63) >> 6;
      while (1)
      {
        if (v12)
        {
          v95 = __clz(__rbit64(v12));
          v12 &= v12 - 1;
        }

        else
        {
          v96 = v32;
          do
          {
            v32 = v96 + 1;
            if (__OFADD__(v96, 1))
            {
              goto LABEL_141;
            }

            if (v32 >= v7)
            {
              goto LABEL_91;
            }

            v97 = *(v29 + 8 * v32);
            ++v96;
          }

          while (!v97);
          v95 = __clz(__rbit64(v97));
          v12 = (v97 - 1) & v97;
        }

        v98 = v95 | (v32 << 6);
        v99 = v159;
        sub_1D1C66B60(*(v24 + 48) + *(v162 + 72) * v98, v159, type metadata accessor for StaticAccessory);
        v100 = *(v99 + v161[37]);
        sub_1D1C72E20(v99, type metadata accessor for StaticAccessory);
        if ((v100 & 1) == 0)
        {
          *(v31 + ((v98 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v98;
          v42 = __OFADD__(v92++, 1);
          if (v42)
          {
            break;
          }
        }
      }

      __break(1u);
LABEL_91:
      v101 = sub_1D19E09A0(v31, v171, v92, v24);
    }

    v102 = *(v146 + *(type metadata accessor for TileInfoBearerCollection(0) + 36));
    if ((v102 & 8) == 0)
    {
      v103 = *(v101 + 32);
      v24 = v103 & 0x3F;
      v104 = ((1 << v103) + 63) >> 6;
      v105 = 8 * v104;

      if (v24 <= 0xD)
      {
        goto LABEL_94;
      }

      if (swift_stdlib_isStackAllocationSafe())
      {

LABEL_94:
        v170 = v144;
        v171 = v104;
        MEMORY[0x1EEE9AC00](v106);
        v31 = v144 - ((v105 + 15) & 0x3FFFFFFFFFFFFFF0);
        bzero(v31, v105);
        v107 = 0;
        v7 = 0;
        v108 = 1 << *(v101 + 32);
        v109 = -1;
        if (v108 < 64)
        {
          v109 = ~(-1 << v108);
        }

        v32 = v109 & *(v101 + 56);
        v12 = (v108 + 63) >> 6;
        while (v32)
        {
          v110 = __clz(__rbit64(v32));
          v32 &= v32 - 1;
LABEL_106:
          v29 = v110 | (v7 << 6);
          v24 = v157;
          sub_1D1C66B60(*(v101 + 48) + *(v162 + 72) * v29, v157, type metadata accessor for StaticAccessory);
          v113 = v24 + v161[23];
          v114 = *(v113 + 8);
          if (v114 <= 1)
          {
LABEL_98:
            sub_1D1C72E20(v157, type metadata accessor for StaticAccessory);
            continue;
          }

          if (v114 != 2)
          {
            if (v114 == 3)
            {
              goto LABEL_98;
            }

            sub_1D1C72E20(v157, type metadata accessor for StaticAccessory);
LABEL_112:
            *(v31 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
            v42 = __OFADD__(v107++, 1);
            if (v42)
            {
              __break(1u);
LABEL_115:
              v115 = sub_1D19E09A0(v31, v171, v107, v101);
              goto LABEL_116;
            }

            continue;
          }

          v24 = *v113;
          if ((*v113 & 1) == 0)
          {
            goto LABEL_98;
          }

          sub_1D1C72E20(v157, type metadata accessor for StaticAccessory);
          if ((v24 & 0x100) == 0)
          {
            goto LABEL_112;
          }
        }

        v111 = v7;
        while (1)
        {
          v7 = v111 + 1;
          if (__OFADD__(v111, 1))
          {
            break;
          }

          if (v7 >= v12)
          {
            goto LABEL_115;
          }

          v112 = *(v101 + 56 + 8 * v7);
          ++v111;
          if (v112)
          {
            v110 = __clz(__rbit64(v112));
            v32 = (v112 - 1) & v112;
            goto LABEL_106;
          }
        }

LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:

        if (swift_stdlib_isStackAllocationSafe())
        {

          continue;
        }

        v131 = swift_slowAlloc();
        v43 = sub_1D1BCEE34(v131, v31, v29, sub_1D1BCC3E4, 0);
        v156 = 0;

        MEMORY[0x1D3893640](v131, -1, -1);

        goto LABEL_17;
      }

      v139 = swift_slowAlloc();
      v140 = v104;
      v141 = v156;
      v115 = sub_1D1BCEE34(v139, v140, v101, sub_1D1BCDBB4, 0);
      v156 = v141;

      MEMORY[0x1D3893640](v139, -1, -1);
LABEL_116:

      v101 = v115;
    }

    break;
  }

  if ((v102 & 0x20) != 0)
  {
LABEL_136:
    v129 = *MEMORY[0x1E69E9840];
    return v101;
  }

  else
  {
    v116 = *(v101 + 32);
    v24 = v116 & 0x3F;
    v117 = ((1 << v116) + 63) >> 6;
    v31 = 8 * v117;

    if (v24 <= 0xD)
    {
      goto LABEL_119;
    }

    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_119:
      v169 = v144;
      v170 = v117;
      MEMORY[0x1EEE9AC00](v118);
      v119 = v144 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v119, v31);
      v171 = 0;
      v12 = 0;
      v32 = v101 + 56;
      v120 = 1 << *(v101 + 32);
      v121 = -1;
      if (v120 < 64)
      {
        v121 = ~(-1 << v120);
      }

      v122 = v121 & *(v101 + 56);
      v7 = (v120 + 63) >> 6;
      v123 = v144[0];
      while (v122)
      {
        v124 = __clz(__rbit64(v122));
        v122 &= v122 - 1;
LABEL_129:
        v24 = v124 | (v12 << 6);
        sub_1D1C66B60(*(v101 + 48) + *(v162 + 72) * v24, v123, type metadata accessor for StaticAccessory);
        v31 = v156;
        v127 = sub_1D1BCC724(v123);
        v156 = v31;
        if (v31)
        {
          sub_1D1C72E20(v123, type metadata accessor for StaticAccessory);

          swift_willThrow();
          __break(1u);
          goto LABEL_164;
        }

        v29 = v127;
        sub_1D1C72E20(v123, type metadata accessor for StaticAccessory);
        if (v29)
        {
          *&v119[(v24 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v24;
          v42 = __OFADD__(v171++, 1);
          if (v42)
          {
            __break(1u);
LABEL_134:
            v128 = sub_1D19E073C(v119, v170, v171, v101);
            goto LABEL_135;
          }
        }
      }

      v125 = v12;
      while (1)
      {
        v12 = v125 + 1;
        if (__OFADD__(v125, 1))
        {
          goto LABEL_143;
        }

        if (v12 >= v7)
        {
          goto LABEL_134;
        }

        v126 = *(v32 + 8 * v12);
        ++v125;
        if (v126)
        {
          v124 = __clz(__rbit64(v126));
          v122 = (v126 - 1) & v126;
          goto LABEL_129;
        }
      }
    }

    v119 = swift_slowAlloc();
    v142 = v156;
    v143 = sub_1D1BCEE08(v119, v117, v101, sub_1D1BCC724, 0);
    if (!v142)
    {
      v128 = v143;

      MEMORY[0x1D3893640](v119, -1, -1);
LABEL_135:

      v101 = v128;
      goto LABEL_136;
    }

LABEL_164:

    result = MEMORY[0x1D3893640](v119, -1, -1);
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1C5CA00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TileInfoBearerCollection(0);
  v5 = *(a1 + *(type metadata accessor for StaticMatterDevice() + 32));
  if (*(v5 + 16))
  {
    v6 = sub_1D1A46E30(*(a2 + *(v4 + 56)), v5) ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

BOOL sub_1D1C5CA74(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - v5;
  if ((*(a2 + *(type metadata accessor for TileInfoBearerCollection(0) + 36)) & 6) == 2)
  {
    if (!StaticAccessory.hasVisibleServices(minCount:)(2))
    {
      StaticAccessory.primaryStaticService.getter(v6);
      v7 = type metadata accessor for StaticService(0);
      if ((*(*(v7 - 8) + 48))(v6, 1, v7) != 1)
      {
        v8 = StaticService.canBeToggled.getter();
        sub_1D1C72E20(v6, type metadata accessor for StaticService);
        return v8;
      }

      sub_1D1741A30(v6, &qword_1EC6436F0, &qword_1D1E99BC0);
    }

    return 0;
  }

  else
  {
    return 1;
  }
}

BOOL sub_1D1C5CBC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + *(type metadata accessor for TileInfoBearerCollection(0) + 52));
  v3 = sub_1D1C56820();
  v4 = sub_1D1929F38(v3, v2);

  return (v4 & 1) == 0;
}

uint64_t sub_1D1C5CC2C()
{
  sub_1D1C5AF24();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for StateSnapshot(0);
  v6 = *(v0 + *(v5 + 60));

  v8 = sub_1D1781D38(v7);

  v9 = sub_1D1C70794(v8, v2, v4);

  v32 = v0;
  v10 = sub_1D1B52268(sub_1D1C75238, v31, v9);
  v30 = v0;
  v11 = sub_1D1B52268(sub_1D1C75258, v29, v10);
  v28 = v0;
  v12 = sub_1D1B52268(sub_1D1C75278, v27, v11);
  v13 = v0 + *(v5 + 20);
  v14 = *(type metadata accessor for StaticHome() + 60);
  v15 = *(v13 + v14);
  v16 = v12[2];
  if (!v16)
  {
    v20 = *(v13 + v14);

    v17 = MEMORY[0x1E69E7CC0];
LABEL_5:
    v33[0] = v17;

    sub_1D1D235D8(v33, v15);

    v21 = swift_bridgeObjectRelease_n();
    v22 = v33[0];
    MEMORY[0x1EEE9AC00](v21);
    v25[2] = v0;
    v23 = sub_1D18922DC(sub_1D1C752DC, v25, v22);

    return v23;
  }

  v25[4] = 0;
  v25[5] = v4;
  v25[6] = v2;
  v17 = sub_1D18042C8(v16, 0);
  v18 = *(type metadata accessor for StaticService(0) - 8);
  v26 = sub_1D1804A98(v33, v17 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v16, v12);
  v19 = v33[4];

  sub_1D1716918();
  if (v26 == v16)
  {
    goto LABEL_5;
  }

  __break(1u);
  swift_bridgeObjectRelease_n();

  __break(1u);
  return result;
}

BOOL sub_1D1C5CEE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticAccessory(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v20 - v10;
  v12 = *(a2 + *(type metadata accessor for StateSnapshot(0) + 32));
  if (*(v12 + 16))
  {
    v13 = type metadata accessor for StaticService(0);
    v14 = sub_1D1742188(a1 + *(v13 + 44));
    if (v15)
    {
      sub_1D1C66B60(*(v12 + 56) + *(v5 + 72) * v14, v9, type metadata accessor for StaticAccessory);
      sub_1D1C72E80(v9, v11, type metadata accessor for StaticAccessory);
      v16 = StaticAccessory.staticServicesExcludingComponents.getter()[2];

      if (v16 != 1 && v11[*(v4 + 76)] != 1)
      {
        v18 = StaticAccessory.visibleStaticServices.getter();
        sub_1D1C72E20(v11, type metadata accessor for StaticAccessory);
        v19 = *(v18 + 16);

        return v19 == 0;
      }

      sub_1D1C72E20(v11, type metadata accessor for StaticAccessory);
    }
  }

  return 1;
}

uint64_t sub_1D1C5D0C0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643218, &qword_1D1E71670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E6F900;
  *(inited + 32) = !StaticService.isBridgedValveService.getter();
  if (qword_1EE07AB30 != -1)
  {
    swift_once();
  }

  v5 = off_1EE07AB38;
  v6 = *(type metadata accessor for StaticService(0) + 104);
  *(inited + 33) = (sub_1D171951C(*(a1 + v6), v5) & 1) == 0;
  v7 = type metadata accessor for TileInfoBearerCollection(0);
  v8 = sub_1D171951C(*(a1 + v6), *(a2 + *(v7 + 52)));
  *(inited + 34) = v8 & 1;
  if (*(inited + 32) == 1)
  {
    v9 = *(inited + 33) & v8;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1D1C5D1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a3;
  v67 = type metadata accessor for StaticActionSet();
  v5 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v72 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BoxedTileInfoBearer.TileSort(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v68 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StaticUserActionPrediction();
  v77 = *(v10 - 8);
  v78 = v10;
  v11 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D1E66A7C();
  v69 = *(v13 - 8);
  v70 = v13;
  v14 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for BoxedTileInfoBearer(0);
  v17 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CC00, &unk_1D1EA1FA0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v71 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v76 = &v63 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v28 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v75 = &v63 - v29;
  v30 = type metadata accessor for StaticAccessory(0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v63 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v63 - v36;
  v38 = *(a2 + *(type metadata accessor for StateSnapshot(0) + 32));
  if (!*(v38 + 16))
  {
    goto LABEL_7;
  }

  v65 = type metadata accessor for StaticService(0);
  v39 = sub_1D1742188(a1 + *(v65 + 44));
  if ((v40 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_1D1C66B60(*(v38 + 56) + *(v31 + 72) * v39, v35, type metadata accessor for StaticAccessory);
  sub_1D1C72E80(v35, v37, type metadata accessor for StaticAccessory);
  if (v37[*(v30 + 76)] & 1) != 0 || (v41 = StaticAccessory.staticServicesExcludingComponents.getter()[2], , v41 < 2) || (*(a2 + *(type metadata accessor for TileInfoBearerCollection(0) + 32)))
  {
    sub_1D1C72E20(v37, type metadata accessor for StaticAccessory);
LABEL_7:
    v82 = type metadata accessor for StaticService(0);
    v83 = sub_1D1C75134(&qword_1EC646AF0, type metadata accessor for StaticService);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v81);
    sub_1D1C66B60(a1, boxed_opaque_existential_1, type metadata accessor for StaticService);
    return sub_1D1C572DC(v81, v79);
  }

  v82 = v65;
  v83 = sub_1D1C75134(&qword_1EC646AF0, type metadata accessor for StaticService);
  v44 = __swift_allocate_boxed_opaque_existential_1(v81);
  sub_1D1C66B60(a1, v44, type metadata accessor for StaticService);
  v46 = v69;
  v45 = v70;
  v47 = *(v69 + 16);
  v48 = v75;
  v47(v75, v37, v70);
  (*(v46 + 56))(v48, 0, 1, v45);
  v64 = *(v77 + 56);
  v63 = v77 + 56;
  v64(v76, 1, 1, v78);
  sub_1D1741C08(v48, v28, &qword_1EC642590, qword_1D1E71260);
  if ((*(v46 + 48))(v28, 1, v45) == 1)
  {
    sub_1D1741A30(v28, &qword_1EC642590, qword_1D1E71260);
    v49 = v74;
    v47(v74, v44, v45);
    v50 = v49;
  }

  else
  {
    v51 = *(v46 + 32);
    v51(v16, v28, v45);
    v50 = v74;
    v51(v74, v16, v45);
  }

  v52 = v71;
  v53 = v73;
  sub_1D17419CC(v81, v50 + *(v73 + 20));
  v54 = v76;
  sub_1D1741C08(v76, v52, &qword_1EC64CC00, &unk_1D1EA1FA0);
  v55 = v78;
  v56 = (*(v77 + 48))(v52, 1, v78);
  v57 = v72;
  if (v56 == 1)
  {
    sub_1D1741A30(v52, &qword_1EC64CC00, &unk_1D1EA1FA0);
    sub_1D17419CC(v81, v80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
    if (swift_dynamicCast())
    {
      sub_1D1741A30(v54, &qword_1EC64CC00, &unk_1D1EA1FA0);
      sub_1D1741A30(v75, &qword_1EC642590, qword_1D1E71260);
      sub_1D1C72E20(v37, type metadata accessor for StaticAccessory);
      sub_1D1C72E20(v57, type metadata accessor for StaticActionSet);
      v58 = 1;
    }

    else
    {
      v61 = *(v44 + *(v65 + 92));
      sub_1D1741A30(v54, &qword_1EC64CC00, &unk_1D1EA1FA0);
      sub_1D1741A30(v75, &qword_1EC642590, qword_1D1E71260);
      sub_1D1C72E20(v37, type metadata accessor for StaticAccessory);
      if (v61)
      {
        v58 = 2;
      }

      else
      {
        v58 = 3;
      }
    }

    v62 = v68;
    v64(v68, v58, 3, v55);
    sub_1D1C72E80(v62, v50 + *(v53 + 24), type metadata accessor for BoxedTileInfoBearer.TileSort);
  }

  else
  {
    sub_1D1741A30(v54, &qword_1EC64CC00, &unk_1D1EA1FA0);
    sub_1D1741A30(v75, &qword_1EC642590, qword_1D1E71260);
    sub_1D1C72E20(v37, type metadata accessor for StaticAccessory);
    v59 = v66;
    sub_1D1C72E80(v52, v66, type metadata accessor for StaticUserActionPrediction);
    v60 = *(v53 + 24);
    sub_1D1C72E80(v59, v50 + v60, type metadata accessor for StaticUserActionPrediction);
    v64(v50 + v60, 0, 3, v55);
  }

  sub_1D1C72E80(v50, v79, type metadata accessor for BoxedTileInfoBearer);
  return __swift_destroy_boxed_opaque_existential_1(v81);
}

void sub_1D1C5DB58()
{
  v1 = type metadata accessor for StaticHome();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + *(type metadata accessor for TileInfoBearerCollection(0) + 36)) & 0x80) != 0)
  {
    v6 = type metadata accessor for StateSnapshot(0);
    v7 = *(v0 + *(v6 + 40));

    v9 = sub_1D1781428(v8);
    sub_1D1C66B60(v0 + *(v6 + 20), v4, type metadata accessor for StaticHome);
    v10 = *&v4[*(v1 + 64)];

    sub_1D1C72E20(v4, type metadata accessor for StaticHome);
    v11 = v9[2];
    if (v11)
    {
      v12 = sub_1D18042F0(v9[2], 0);
      v13 = *(type metadata accessor for StaticCameraProfile() - 8);
      v14 = sub_1D1804998(&v17, v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v11, v9);

      sub_1D1716918();
      if (v14 == v11)
      {
LABEL_9:
        v17 = v12;

        sub_1D1CB94F8(&v17, v10);

        swift_bridgeObjectRelease_n();
        v15 = sub_1D1C57B70(v17);

        sub_1D1C58920(v15);
        return;
      }

      __break(1u);
    }

    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  v5 = MEMORY[0x1E69E7CC0];

  sub_1D1C58920(v5);
}

uint64_t sub_1D1C5DDD0()
{
  v2 = 0;
  v129[1] = *MEMORY[0x1E69E9840];
  v124 = sub_1D1E66A7C();
  v114 = *(v124 - 8);
  v3 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v115 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AA8, &unk_1D1E9F9F0);
  v5 = *(*(v118 - 8) + 64);
  MEMORY[0x1EEE9AC00](v118);
  v7 = &v99 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C58, &unk_1D1E995D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v108 = &v99 - v10;
  v11 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v12 = *(v11 - 8);
  v126 = v11;
  v127 = v12;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v123 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v122 = (&v99 - v17);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v99 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v128 = &v99 - v21;
  v22 = type metadata accessor for StaticMediaProfile();
  v119 = *(v22 - 8);
  v120 = v22;
  v23 = *(v119 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v100 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v113 = &v99 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v107 = &v99 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v103 = &v99 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v106 = &v99 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v116 = &v99 - v34;
  v125 = type metadata accessor for StaticMediaSystem();
  v121 = *(v125 - 8);
  v35 = v121[8];
  MEMORY[0x1EEE9AC00](v125);
  v37 = &v99 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for StateSnapshot(0);
  v38 = v117[11];
  v104 = v0;
  v39 = *(v0 + v38);

  v41 = sub_1D17818B0(v40);
  v42 = v41;
  v129[0] = MEMORY[0x1E69E7CC0];
  v43 = v41 + 56;
  v44 = 1 << *(v41 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v41 + 56);
  v47 = (v44 + 63) >> 6;

  v99 = 0;
  if (v46)
  {
    while (1)
    {
      v48 = v2;
LABEL_9:
      v49 = __clz(__rbit64(v46));
      v46 &= v46 - 1;
      sub_1D1C66B60(*(v42 + 48) + v121[9] * (v49 | (v48 << 6)), v37, type metadata accessor for StaticMediaSystem);
      v1 = *(v37 + *(v125 + 96));

      sub_1D1C72E20(v37, type metadata accessor for StaticMediaSystem);
      v0 = v129;
      sub_1D17A317C(v1);
      if (!v46)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v48 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_78;
    }

    if (v48 >= v47)
    {
      break;
    }

    v46 = *(v43 + 8 * v48);
    ++v2;
    if (v46)
    {
      v2 = v48;
      goto LABEL_9;
    }
  }

  v125 = v129[0];
  v50 = *(v104 + v117[12]);

  v0 = sub_1D178166C(v51);
  v52 = *(v0 + 32);
  v53 = v52 & 0x3F;
  v1 = ((1 << v52) + 63) >> 6;
  v37 = 8 * v1;

  v42 = v126;
  v2 = v116;
  if (v53 > 0xD)
  {
    goto LABEL_81;
  }

  while (1)
  {
    v111 = &v99;
    v112 = v1;
    MEMORY[0x1EEE9AC00](v54);
    v117 = (&v99 - ((v37 + 15) & 0x3FFFFFFFFFFFFFF0));
    bzero(v117, v37);
    v121 = 0;
    v55 = 0;
    v37 = v0 + 56;
    v56 = 1 << *(v0 + 32);
    v57 = -1;
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    v1 = v57 & *(v0 + 56);
    v58 = (v56 + 63) >> 6;
    while (v1)
    {
      v59 = __clz(__rbit64(v1));
      v1 &= v1 - 1;
LABEL_22:
      v61 = v59 | (v55 << 6);
      sub_1D1C66B60(*(v0 + 48) + *(v119 + 72) * v61, v2, type metadata accessor for StaticMediaProfile);
      v42 = *(v2 + v120[13]);
      sub_1D1C72E20(v2, type metadata accessor for StaticMediaProfile);
      if ((v42 & 1) == 0)
      {
        *(v117 + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v61;
        v63 = __OFADD__(v121, 1);
        v121 = (v121 + 1);
        if (v63)
        {
          __break(1u);
LABEL_26:
          v64 = sub_1D19E04D8(v117, v112, v121, v0);
          goto LABEL_27;
        }
      }
    }

    v60 = v55;
    v61 = v118;
    v42 = v126;
    while (1)
    {
      v55 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        break;
      }

      if (v55 >= v58)
      {
        goto LABEL_26;
      }

      v62 = *(v37 + 8 * v55);
      ++v60;
      if (v62)
      {
        v59 = __clz(__rbit64(v62));
        v1 = (v62 - 1) & v62;
        goto LABEL_22;
      }
    }

LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v37 = swift_slowAlloc();
  v98 = v99;
  v64 = sub_1D1C05EFC(v37, v1, v0, sub_1D1BFECF8, 0);
  v99 = v98;

  MEMORY[0x1D3893640](v37, -1, -1);
  v61 = v118;
LABEL_27:

  v65 = 0;
  v66 = (v64 + 56);
  v67 = -1;
  v68 = -1 << *(v64 + 32);
  if (-v68 < 64)
  {
    v67 = ~(-1 << -v68);
  }

  v69 = v67 & *(v64 + 56);
  v101 = -1 << *(v64 + 32);
  v70 = (63 - v68) >> 6;
  v112 = (v127 + 48);
  v121 = (v114 + 8);
  v114 += 32;
  v102 = MEMORY[0x1E69E7CC0];
  v1 = v108;
  v2 = v107;
  v111 = (v64 + 56);
  v110 = v70;
  v105 = v64;
  if (v69)
  {
    while (1)
    {
LABEL_35:
      v116 = ((v69 - 1) & v69);
      v117 = v65;
      v73 = *(v64 + 48);
      v109 = *(v119 + 72);
      v74 = v113;
      sub_1D1C66B60(v73 + v109 * (__clz(__rbit64(v69)) | (v65 << 6)), v113, type metadata accessor for StaticMediaProfile);
      sub_1D1C72E80(v74, v2, type metadata accessor for StaticMediaProfile);
      v37 = &qword_1EC643C58;
      v0 = &unk_1D1E995D0;
      sub_1D1741C08(v2 + v120[18], v1, &qword_1EC643C58, &unk_1D1E995D0);
      if ((*v112)(v1, 1, v42) == 1)
      {
        sub_1D1741A30(v1, &qword_1EC643C58, &unk_1D1E995D0);
LABEL_64:
        v89 = v2;
        goto LABEL_65;
      }

      sub_1D1C72E80(v1, v128, type metadata accessor for StaticAccessory.DeviceIdentifier);
      v2 = v125;
      v75 = *(v125 + 16);
      if (v75)
      {
        break;
      }

LABEL_55:
      sub_1D1C72E20(v128, type metadata accessor for StaticAccessory.DeviceIdentifier);
      v2 = v107;
      v86 = v103;
      sub_1D1C72E80(v107, v103, type metadata accessor for StaticMediaProfile);
      v87 = v86;
      v0 = v106;
      sub_1D1C72E80(v87, v106, type metadata accessor for StaticMediaProfile);
      v88 = v0 + v120[23];
      v37 = *(v88 + 8);
      v1 = v108;
      v64 = v105;
      if (v37 != 255)
      {
        v0 = *v88;
        if ((*(v104 + *(type metadata accessor for TileInfoBearerCollection(0) + 36)) & 8) != 0)
        {
          switch(v37)
          {
            case 2:
              if ((v0 & 0x100) != 0)
              {
LABEL_69:
                sub_1D1C72E80(v106, v100, type metadata accessor for StaticMediaProfile);
                v90 = v102;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v92 = v90;
                v129[0] = v90;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v0 = v129;
                  sub_1D178CDEC(0, *(v90 + 16) + 1, 1);
                  v92 = v129[0];
                }

                v94 = *(v92 + 16);
                v93 = *(v92 + 24);
                v37 = v94 + 1;
                if (v94 >= v93 >> 1)
                {
                  v0 = v129;
                  sub_1D178CDEC(v93 > 1, v94 + 1, 1);
                  v92 = v129[0];
                }

                *(v92 + 16) = v37;
                v95 = *(v119 + 80);
                v102 = v92;
                sub_1D1C72E80(v100, v92 + ((v95 + 32) & ~v95) + v94 * v109, type metadata accessor for StaticMediaProfile);
                v42 = v126;
                goto LABEL_66;
              }

              break;
            case 3:
              if (v0 == 1)
              {
                goto LABEL_69;
              }

              break;
            case 1:
              goto LABEL_69;
          }
        }
      }

      v89 = v106;
LABEL_65:
      sub_1D1C72E20(v89, type metadata accessor for StaticMediaProfile);
LABEL_66:
      v66 = v111;
      v69 = v116;
      v65 = v117;
      v70 = v110;
      if (!v116)
      {
        goto LABEL_30;
      }
    }

    v1 = 0;
    while (1)
    {
      if (v1 >= *(v2 + 16))
      {
        goto LABEL_80;
      }

      sub_1D1C66B60(v2 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v1, v20, type metadata accessor for StaticAccessory.DeviceIdentifier);
      v37 = &v7[*(v61 + 48)];
      sub_1D1C66B60(v20, v7, type metadata accessor for StaticAccessory.DeviceIdentifier);
      sub_1D1C66B60(v128, v37, type metadata accessor for StaticAccessory.DeviceIdentifier);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v0 = v123;
        sub_1D1C66B60(v7, v123, type metadata accessor for StaticAccessory.DeviceIdentifier);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          (*v121)(v0, v124);
          goto LABEL_40;
        }

        v76 = v115;
        v77 = v124;
        (*v114)(v115, v37, v124);
        v37 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
        v78 = v0;
        v0 = *v121;
        v79 = v76;
        v61 = v118;
        (*v121)(v79, v77);
        v80 = v78;
        v81 = v77;
        v2 = v125;
        v42 = v126;
        (v0)(v80, v81);
        sub_1D1C72E20(v7, type metadata accessor for StaticAccessory.DeviceIdentifier);
        if (v37)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v82 = v122;
        sub_1D1C66B60(v7, v122, type metadata accessor for StaticAccessory.DeviceIdentifier);
        v0 = *v82;
        v83 = v82[1];
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v2 = v125;
          v42 = v126;
LABEL_40:
          sub_1D1741A30(v7, &qword_1EC642AA8, &unk_1D1E9F9F0);
          goto LABEL_41;
        }

        v84 = *v37;
        v37 = *(v37 + 8);
        if (v0 == v84 && v83 == v37)
        {

LABEL_62:
          sub_1D1C72E20(v7, type metadata accessor for StaticAccessory.DeviceIdentifier);
          v42 = v126;
LABEL_63:
          v37 = type metadata accessor for StaticAccessory.DeviceIdentifier;
          sub_1D1C72E20(v20, type metadata accessor for StaticAccessory.DeviceIdentifier);
          sub_1D1C72E20(v128, type metadata accessor for StaticAccessory.DeviceIdentifier);
          v1 = v108;
          v2 = v107;
          v64 = v105;
          goto LABEL_64;
        }

        v0 = sub_1D1E6904C();

        v2 = v125;
        if (v0)
        {
          goto LABEL_62;
        }

        sub_1D1C72E20(v7, type metadata accessor for StaticAccessory.DeviceIdentifier);
        v42 = v126;
      }

LABEL_41:
      ++v1;
      sub_1D1C72E20(v20, type metadata accessor for StaticAccessory.DeviceIdentifier);
      if (v75 == v1)
      {
        goto LABEL_55;
      }
    }
  }

LABEL_30:
  v71 = v65;
  while (1)
  {
    v72 = (v71 + 1);
    if (__OFADD__(v71, 1))
    {
      goto LABEL_79;
    }

    if (v72 >= v70)
    {
      break;
    }

    v69 = v66[v72];
    ++v71;
    if (v69)
    {
      v65 = v72;
      goto LABEL_35;
    }
  }

  sub_1D1716918();

  v96 = *MEMORY[0x1E69E9840];
  return v102;
}

uint64_t sub_1D1C5EC7C(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = type metadata accessor for StaticMediaSystemComponent();
  v36 = *(v3 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + *(type metadata accessor for StaticMediaSystem() + 100));

  v9 = sub_1D1782784(v8);
  v10 = v9;
  v11 = v9 + 56;
  v12 = 1 << *(v9 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v9 + 56);
  v15 = (v12 + 63) >> 6;

  v17 = 0;
  v35 = MEMORY[0x1E69E7CC0];
  if (!v14)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      sub_1D1C66B60(*(v10 + 48) + *(v36 + 72) * (v18 | (v17 << 6)), v6, type metadata accessor for StaticMediaSystemComponent);
      v19 = &v6[*(v3 + 20)];
      v20 = &v19[*(type metadata accessor for StaticMediaProfile() + 92)];
      v21 = *v20;
      v22 = v20[8];
      sub_1D18EB144(*v20, v20[8]);
      result = sub_1D1C72E20(v6, type metadata accessor for StaticMediaSystemComponent);
      if (v22 != 255)
      {
        break;
      }

      if (!v14)
      {
        goto LABEL_6;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D177FA8C(0, *(v35 + 2) + 1, 1, v35);
      v35 = result;
    }

    v25 = *(v35 + 2);
    v24 = *(v35 + 3);
    v26 = v25 + 1;
    if (v25 >= v24 >> 1)
    {
      v32 = *(v35 + 2);
      v33 = v25 + 1;
      result = sub_1D177FA8C((v24 > 1), v25 + 1, 1, v35);
      v25 = v32;
      v26 = v33;
      v35 = result;
    }

    v27 = v35;
    *(v35 + 2) = v26;
    v28 = &v27[16 * v25];
    *(v28 + 4) = v21;
    v28[40] = v22;
  }

  while (v14);
LABEL_6:
  while (1)
  {
    v23 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v23 >= v15)
    {

      MEMORY[0x1EEE9AC00](v29);
      *(&v31 - 2) = v34;
      v30 = sub_1D18B609C(sub_1D1C751F8, (&v31 - 4), v35);

      return v30 & 1;
    }

    v14 = *(v11 + 8 * v23);
    ++v17;
    if (v14)
    {
      v17 = v23;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1D1C5EF5C(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if ((*(a2 + *(type metadata accessor for TileInfoBearerCollection(0) + 36)) & 8) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  if (v5 == 1)
  {
    return 1;
  }

  if (v5 != 2)
  {
    return v5 == 3 && v3 == 1;
  }

  return (v3 >> 8) & 1;
}

uint64_t sub_1D1C5EFE0()
{
  v111 = type metadata accessor for StaticActionSet();
  v1 = *(*(v111 - 8) + 64);
  MEMORY[0x1EEE9AC00](v111);
  v112 = &v99 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for BoxedTileInfoBearer.TileSort(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v110 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StaticUserActionPrediction();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v109 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_1D1E66A7C();
  v10 = *(v130 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v130);
  v108 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CC00, &unk_1D1EA1FA0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v129 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v128 = &v99 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v123 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v122 = &v99 - v22;
  v23 = type metadata accessor for BoxedTileInfoBearer(0);
  v121 = *(v23 - 8);
  v24 = *(v121 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v99 - v28;
  v124 = type metadata accessor for StaticService(0);
  v114 = *(v124 - 8);
  v30 = *(v114 + 64);
  v31 = MEMORY[0x1EEE9AC00](v124);
  v120 = &v99 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v105 = (&v99 - v34);
  MEMORY[0x1EEE9AC00](v33);
  v116 = (&v99 - v35);
  if ((*(v0 + *(type metadata accessor for TileInfoBearerCollection(0) + 36)) & 0x20) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v100 = v10;
  v101 = v7;
  v117 = v29;
  v102 = type metadata accessor for StateSnapshot(0);
  v36 = *(v102 + 60);
  v103 = v0;
  v37 = *(v0 + v36);
  v38 = *(v37 + 64);
  v115 = (v37 + 64);
  v39 = 1 << *(v37 + 32);
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  else
  {
    v40 = -1;
  }

  v41 = v40 & v38;
  v113 = ((v39 + 63) >> 6);
  v107 = v37;

  v42 = 0;
  v104 = MEMORY[0x1E69E7CC0];
  v119 = v6;
  v118 = v23;
  v125 = v27;
  while (v41)
  {
LABEL_12:
    v44 = *(v107 + 56);
    v106 = *(v114 + 72);
    sub_1D1C66B60(v44 + v106 * (__clz(__rbit64(v41)) | (v42 << 6)), v116, type metadata accessor for StaticService);
    if (qword_1EE07AB30 != -1)
    {
      swift_once();
    }

    v41 &= v41 - 1;
    v45 = off_1EE07AB38;
    if (!*(off_1EE07AB38 + 2))
    {
      goto LABEL_6;
    }

    v46 = *(v116 + *(v124 + 104));
    v47 = *(off_1EE07AB38 + 5);
    sub_1D1E6920C();
    v131[0] = v46;
    ServiceKind.rawValue.getter();
    sub_1D1E678EC();

    v48 = sub_1D1E6926C();
    v49 = -1 << v45[32];
    v50 = v48 & ~v49;
    v127 = v45 + 56;
    if ((*&v45[((v50 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v50))
    {
      v126 = ~v49;
      while (1)
      {
        v51 = "takeSnaphotsWhenBusy";
        switch(*(*(v45 + 6) + v50))
        {
          case 1:
            v52 = "0000003E-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 2:
            v52 = "00000270-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 3:
            v52 = "000000BB-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 4:
            v52 = "0000008D-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 5:
            v52 = "00000096-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 6:
            v52 = "00000042-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 7:
            v52 = "00000110-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 8:
            v52 = "00000204-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 9:
            v52 = "00000097-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0xA:
            v52 = "0000007F-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0xB:
            v52 = "00000080-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0xC:
            v52 = "00000129-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0xD:
            v52 = "00000237-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0xE:
            v52 = "00000081-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0xF:
            v52 = "00000121-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x10:
            v52 = "00000040-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x11:
            v52 = "000000D7-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x12:
            v52 = "000000BA-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x13:
            v52 = "00000041-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x14:
            v52 = "000000BC-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x15:
            v52 = "000000BD-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x16:
            v52 = "00000082-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x17:
            v52 = "000000D9-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x18:
            v52 = "000000CF-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x19:
            v52 = "000000CC-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x1A:
            v52 = "00000083-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x1B:
            v52 = "00000084-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x1C:
            v52 = "00000043-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x1D:
            v52 = "00000044-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x1E:
            v52 = "00000045-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x1F:
            v52 = "00000112-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x20:
            v52 = "00000085-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x21:
            v52 = "00000086-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x22:
            v52 = "00000047-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x23:
            v52 = "0000007E-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x24:
            v52 = "000000B9-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x25:
            v52 = "00000087-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x26:
            v52 = "00000113-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x27:
            v52 = "00000088-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x28:
            v52 = "00000089-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x29:
            v52 = "00000049-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x2A:
            v52 = "00000125-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x2B:
            v52 = "00000122-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x2C:
            v52 = "000000D8-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x2D:
            v52 = "0000008A-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x2E:
            v52 = "0000004A-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x2F:
            v52 = "000000D0-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x30:
            v52 = "000000B7-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x31:
            v52 = "0000020A-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x32:
            v52 = "0000020F-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x33:
            v52 = "0000008B-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x34:
            v52 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_70:
            v51 = v52 - 32;
            break;
          default:
            break;
        }

        v53 = v51 | 0x8000000000000000;
        v54 = "takeSnaphotsWhenBusy";
        switch(v46)
        {
          case 1:
            v55 = "0000003E-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 2:
            v55 = "00000270-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 3:
            v55 = "000000BB-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 4:
            v55 = "0000008D-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 5:
            v55 = "00000096-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 6:
            v55 = "00000042-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 7:
            v55 = "00000110-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 8:
            v55 = "00000204-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 9:
            v55 = "00000097-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 10:
            v55 = "0000007F-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 11:
            v55 = "00000080-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 12:
            v55 = "00000129-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 13:
            v55 = "00000237-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 14:
            v55 = "00000081-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 15:
            v55 = "00000121-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 16:
            v55 = "00000040-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 17:
            v55 = "000000D7-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 18:
            v55 = "000000BA-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 19:
            v55 = "00000041-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 20:
            v55 = "000000BC-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 21:
            v55 = "000000BD-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 22:
            v55 = "00000082-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 23:
            v55 = "000000D9-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 24:
            v55 = "000000CF-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 25:
            v55 = "000000CC-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 26:
            v55 = "00000083-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 27:
            v55 = "00000084-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 28:
            v55 = "00000043-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 29:
            v55 = "00000044-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 30:
            v55 = "00000045-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 31:
            v55 = "00000112-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 32:
            v55 = "00000085-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 33:
            v55 = "00000086-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 34:
            v55 = "00000047-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 35:
            v55 = "0000007E-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 36:
            v55 = "000000B9-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 37:
            v55 = "00000087-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 38:
            v55 = "00000113-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 39:
            v55 = "00000088-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 40:
            v55 = "00000089-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 41:
            v55 = "00000049-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 42:
            v55 = "00000125-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 43:
            v55 = "00000122-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 44:
            v55 = "000000D8-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 45:
            v55 = "0000008A-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 46:
            v55 = "0000004A-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 47:
            v55 = "000000D0-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 48:
            v55 = "000000B7-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 49:
            v55 = "0000020A-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 50:
            v55 = "0000020F-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 51:
            v55 = "0000008B-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 52:
            v55 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_124:
            v54 = v55 - 32;
            break;
          default:
            break;
        }

        if (v53 == (v54 | 0x8000000000000000))
        {
          break;
        }

        v56 = sub_1D1E6904C();

        if (v56)
        {
          goto LABEL_130;
        }

        v50 = (v50 + 1) & v126;
        if (((*&v127[(v50 >> 3) & 0xFFFFFFFFFFFFFF8] >> v50) & 1) == 0)
        {
          goto LABEL_6;
        }
      }

LABEL_130:
      sub_1D1C72E80(v116, v105, type metadata accessor for StaticService);
      v57 = v104;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = v57;
      v132 = v57;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D17915E0(0, *(v57 + 16) + 1, 1);
        v59 = v132;
      }

      v61 = *(v59 + 16);
      v60 = *(v59 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_1D17915E0(v60 > 1, v61 + 1, 1);
        v59 = v132;
      }

      *(v59 + 16) = v61 + 1;
      v62 = *(v114 + 80);
      v104 = v59;
      sub_1D1C72E80(v105, v59 + ((v62 + 32) & ~v62) + v61 * v106, type metadata accessor for StaticService);
    }

    else
    {
LABEL_6:
      sub_1D1C72E20(v116, type metadata accessor for StaticService);
    }
  }

  while (1)
  {
    v43 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    if (v43 >= v113)
    {
      break;
    }

    v41 = v115[v43];
    ++v42;
    if (v41)
    {
      v42 = v43;
      goto LABEL_12;
    }
  }

  MEMORY[0x1EEE9AC00](v63);
  v64 = v103;
  *(&v99 - 2) = v103;
  v65 = sub_1D1796660(sub_1D1C75218, (&v99 - 4), v104);
  v66 = v64 + *(v102 + 20);
  v67 = *(v66 + *(type metadata accessor for StaticHome() + 60));
  v135[0] = v65;

  sub_1D1C72CFC(v135, v67);

  v68 = v135[0];
  v69 = v135[0][2];
  if (!v69)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v134 = MEMORY[0x1E69E7CC0];
  sub_1D178CD64(0, v69, 0);
  v70 = (*(v114 + 80) + 32) & ~*(v114 + 80);
  v105 = v68;
  v71 = v68 + v70;
  v116 = (v100 + 56);
  v72 = v134;
  v127 = (v101 + 56);
  v115 = (v100 + 48);
  v114 = *(v114 + 72);
  v107 = v100 + 32;
  v106 = (v100 + 16);
  v113 = (v101 + 48);
  v73 = v119;
  do
  {
    v74 = v120;
    sub_1D1C66B60(v71, v120, type metadata accessor for StaticService);
    v135[3] = v124;
    v135[4] = sub_1D1C75134(&qword_1EC646AF0, type metadata accessor for StaticService);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v135);
    sub_1D1C72E80(v74, boxed_opaque_existential_1, type metadata accessor for StaticService);
    sub_1D17419CC(v135, &v132);
    v76 = v122;
    v77 = v130;
    (*v116)(v122, 1, 1, v130);
    v78 = v73;
    v126 = *v127;
    (v126)(v128, 1, 1, v73);
    v79 = v123;
    sub_1D1741A90(v76, v123, &qword_1EC642590, qword_1D1E71260);
    if ((*v115)(v79, 1, v77) == 1)
    {
      sub_1D1741A30(v79, &qword_1EC642590, qword_1D1E71260);
      v80 = __swift_project_boxed_opaque_existential_1(&v132, v133);
      v81 = v125;
      (*v106)(v125, v80, v130);
    }

    else
    {
      v82 = v72;
      v83 = v130;
      v84 = *v107;
      v85 = v108;
      (*v107)(v108, v79, v130);
      v81 = v125;
      v84(v125, v85, v83);
      v72 = v82;
    }

    v86 = v118;
    sub_1D17419CC(&v132, v81 + *(v118 + 20));
    v87 = v129;
    sub_1D1741A90(v128, v129, &qword_1EC64CC00, &unk_1D1EA1FA0);
    if ((*v113)(v87, 1, v78) == 1)
    {
      sub_1D1741A30(v129, &qword_1EC64CC00, &unk_1D1EA1FA0);
      sub_1D17419CC(&v132, v131);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
      if (swift_dynamicCast())
      {
        sub_1D1C72E20(v112, type metadata accessor for StaticActionSet);
        v88 = 1;
      }

      else
      {
        v92 = __swift_project_boxed_opaque_existential_1(&v132, v133);
        if (*(v92 + *(v124 + 92)))
        {
          v88 = 2;
        }

        else
        {
          v88 = 3;
        }
      }

      v93 = v110;
      v73 = v119;
      (v126)(v110, v88, 3, v119);
      v81 = v125;
      sub_1D1C72E80(v93, &v125[*(v86 + 24)], type metadata accessor for BoxedTileInfoBearer.TileSort);
    }

    else
    {
      v89 = v109;
      sub_1D1C72E80(v129, v109, type metadata accessor for StaticUserActionPrediction);
      v90 = *(v86 + 24);
      sub_1D1C72E80(v89, v81 + v90, type metadata accessor for StaticUserActionPrediction);
      v91 = v81 + v90;
      v73 = v119;
      (v126)(v91, 0, 3, v119);
    }

    v94 = v81;
    v95 = v117;
    sub_1D1C72E80(v94, v117, type metadata accessor for BoxedTileInfoBearer);
    __swift_destroy_boxed_opaque_existential_1(&v132);
    __swift_destroy_boxed_opaque_existential_1(v135);
    v134 = v72;
    v97 = *(v72 + 16);
    v96 = *(v72 + 24);
    if (v97 >= v96 >> 1)
    {
      sub_1D178CD64(v96 > 1, v97 + 1, 1);
      v72 = v134;
    }

    *(v72 + 16) = v97 + 1;
    sub_1D1C72E80(v95, v72 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v97, type metadata accessor for BoxedTileInfoBearer);
    v71 += v114;
    --v69;
  }

  while (v69);

  return v72;
}

uint64_t sub_1D1C603E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + *(type metadata accessor for TileInfoBearerCollection(0) + 52));
  v4 = type metadata accessor for StaticService(0);
  return sub_1D171951C(*(a1 + *(v4 + 104)), v3) & 1;
}

void sub_1D1C60440()
{
  v1 = type metadata accessor for StaticActionSet();
  v34 = *(v1 - 8);
  v2 = *(v34 + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v29 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - v8;
  v10 = type metadata accessor for StateSnapshot(0);
  v32 = v10;
  v33 = v0;
  v11 = *(v0 + *(v10 + 36));
  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 64);
  v15 = (v12 + 63) >> 6;
  v16 = *(v0 + *(v10 + 36));

  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v19 = v17;
    if (!v14)
    {
      break;
    }

LABEL_8:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v21 = *(v34 + 72);
    sub_1D1C66B60(*(v11 + 56) + v21 * (v20 | (v17 << 6)), v7, type metadata accessor for StaticActionSet);
    sub_1D1C72E80(v7, v9, type metadata accessor for StaticActionSet);
    if (v9[*(v1 + 32)])
    {
      sub_1D1C72E20(v9, type metadata accessor for StaticActionSet);
    }

    else
    {
      sub_1D1C72E80(v9, v31, type metadata accessor for StaticActionSet);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D178CE74(0, v18[2] + 1, 1);
        v18 = v35;
      }

      v24 = v18[2];
      v23 = v18[3];
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v29 = v18[2];
        v30 = v24 + 1;
        sub_1D178CE74(v23 > 1, v24 + 1, 1);
        v24 = v29;
        v25 = v30;
        v18 = v35;
      }

      v18[2] = v25;
      sub_1D1C72E80(v31, v18 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + v24 * v21, type metadata accessor for StaticActionSet);
    }
  }

  while (1)
  {
    v17 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      v26 = v33 + *(v32 + 20);
      v27 = *(v26 + *(type metadata accessor for StaticHome() + 56));
      v35 = v18;

      sub_1D1C74B00(&v35, v27);

      v28 = sub_1D1C58000(v35);

      sub_1D1C58920(v28);
      return;
    }

    v14 = *(v11 + 64 + 8 * v17);
    ++v19;
    if (v14)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_1D1C607AC@<X0>(unsigned __int8 *a1@<X0>, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v459 = a3;
  v457 = a2;
  v465 = a1;
  v440 = type metadata accessor for StaticServiceGroup();
  v434 = *(v440 - 8);
  v3 = *(v434 + 64);
  v4 = MEMORY[0x1EEE9AC00](v440);
  v435 = &v375 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v446 = &v375 - v6;
  v439 = type metadata accessor for StaticMediaSystem();
  v429 = *(v439 - 8);
  v7 = *(v429 + 64);
  v8 = MEMORY[0x1EEE9AC00](v439);
  v430 = &v375 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v445 = &v375 - v10;
  v448 = type metadata accessor for StaticActionSet();
  v454 = *(v448 - 8);
  v11 = v454[8];
  v12 = MEMORY[0x1EEE9AC00](v448);
  v437 = &v375 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v428 = &v375 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v453 = &v375 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v456 = &v375 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v436 = &v375 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v410 = &v375 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v385 = &v375 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v378 = &v375 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v400 = &v375 - v28;
  v29 = type metadata accessor for BoxedTileInfoBearer.TileSort(0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v422 = &v375 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v427 = &v375 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v421 = &v375 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v403 = &v375 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v386 = &v375 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v377 = &v375 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v397 = &v375 - v43;
  v44 = type metadata accessor for StaticUserActionPrediction();
  v455 = *(v44 - 8);
  v45 = *(v455 + 64);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v420 = &v375 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v431 = &v375 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v419 = &v375 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v402 = &v375 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v384 = &v375 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v376 = &v375 - v57;
  MEMORY[0x1EEE9AC00](v56);
  v396 = &v375 - v58;
  v447 = sub_1D1E66A7C();
  v449 = *(v447 - 8);
  v59 = *(v449 + 64);
  v60 = MEMORY[0x1EEE9AC00](v447);
  v418 = &v375 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x1EEE9AC00](v60);
  v452 = &v375 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v417 = &v375 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v401 = &v375 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v383 = &v375 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v375 = &v375 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v405 = &v375 - v73;
  MEMORY[0x1EEE9AC00](v72);
  v395 = &v375 - v74;
  v460 = type metadata accessor for BoxedTileInfoBearer(0);
  v458 = *(v460 - 8);
  v75 = *(v458 + 64);
  v76 = MEMORY[0x1EEE9AC00](v460);
  v433 = &v375 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = MEMORY[0x1EEE9AC00](v76);
  v451 = &v375 - v79;
  v80 = MEMORY[0x1EEE9AC00](v78);
  v432 = &v375 - v81;
  v82 = MEMORY[0x1EEE9AC00](v80);
  v415 = &v375 - v83;
  v84 = MEMORY[0x1EEE9AC00](v82);
  v390 = &v375 - v85;
  v86 = MEMORY[0x1EEE9AC00](v84);
  v387 = &v375 - v87;
  MEMORY[0x1EEE9AC00](v86);
  v404 = &v375 - v88;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CC00, &unk_1D1EA1FA0);
  v90 = *(*(v89 - 8) + 64);
  v91 = MEMORY[0x1EEE9AC00](v89 - 8);
  v426 = &v375 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = MEMORY[0x1EEE9AC00](v91);
  v444 = &v375 - v94;
  v95 = MEMORY[0x1EEE9AC00](v93);
  v97 = &v375 - v96;
  v98 = MEMORY[0x1EEE9AC00](v95);
  v100 = &v375 - v99;
  v101 = MEMORY[0x1EEE9AC00](v98);
  v425 = &v375 - v102;
  v103 = MEMORY[0x1EEE9AC00](v101);
  v441 = &v375 - v104;
  v105 = MEMORY[0x1EEE9AC00](v103);
  v412 = &v375 - v106;
  v107 = MEMORY[0x1EEE9AC00](v105);
  v414 = &v375 - v108;
  v109 = MEMORY[0x1EEE9AC00](v107);
  v389 = &v375 - v110;
  v111 = MEMORY[0x1EEE9AC00](v109);
  v392 = &v375 - v112;
  v113 = MEMORY[0x1EEE9AC00](v111);
  v381 = &v375 - v114;
  v115 = MEMORY[0x1EEE9AC00](v113);
  v382 = &v375 - v116;
  v117 = MEMORY[0x1EEE9AC00](v115);
  v399 = &v375 - v118;
  MEMORY[0x1EEE9AC00](v117);
  v438 = &v375 - v119;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v121 = *(*(v120 - 8) + 64);
  v122 = MEMORY[0x1EEE9AC00](v120 - 8);
  v424 = &v375 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = MEMORY[0x1EEE9AC00](v122);
  v443 = &v375 - v125;
  v126 = MEMORY[0x1EEE9AC00](v124);
  v128 = &v375 - v127;
  v129 = MEMORY[0x1EEE9AC00](v126);
  v131 = &v375 - v130;
  v132 = MEMORY[0x1EEE9AC00](v129);
  v423 = &v375 - v133;
  v134 = MEMORY[0x1EEE9AC00](v132);
  v442 = &v375 - v135;
  v136 = MEMORY[0x1EEE9AC00](v134);
  v411 = &v375 - v137;
  v138 = MEMORY[0x1EEE9AC00](v136);
  v416 = &v375 - v139;
  v140 = MEMORY[0x1EEE9AC00](v138);
  v388 = &v375 - v141;
  v142 = MEMORY[0x1EEE9AC00](v140);
  v391 = &v375 - v143;
  v144 = MEMORY[0x1EEE9AC00](v142);
  v379 = &v375 - v145;
  v146 = MEMORY[0x1EEE9AC00](v144);
  v380 = &v375 - v147;
  v148 = MEMORY[0x1EEE9AC00](v146);
  v393 = &v375 - v149;
  v150 = MEMORY[0x1EEE9AC00](v148);
  v413 = &v375 - v151;
  v152 = MEMORY[0x1EEE9AC00](v150);
  v398 = &v375 - v153;
  MEMORY[0x1EEE9AC00](v152);
  v407 = &v375 - v154;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v156 = *(*(v155 - 8) + 64);
  MEMORY[0x1EEE9AC00](v155 - 8);
  v158 = &v375 - v157;
  v409 = type metadata accessor for StaticService(0);
  v408 = *(v409 - 8);
  v159 = *(v408 + 64);
  v160 = MEMORY[0x1EEE9AC00](v409);
  v162 = &v375 - ((v161 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = MEMORY[0x1EEE9AC00](v160);
  v394 = &v375 - v164;
  MEMORY[0x1EEE9AC00](v163);
  v406 = &v375 - v165;
  v166 = type metadata accessor for StaticAccessory(0);
  v167 = *(v166 - 8);
  v168 = *(v167 + 64);
  v169 = MEMORY[0x1EEE9AC00](v166);
  v171 = &v375 - ((v170 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = MEMORY[0x1EEE9AC00](v169);
  v450 = v44;
  v174 = v465[*(v44 + 28)];
  if (v174 <= 1)
  {
    v189 = v128;
    v446 = v131;
    v445 = v97;
    v190 = v100;
    v191 = v452;
    v192 = v453;
    v193 = v454;
    v194 = v451;
    v195 = v456;
    v176 = v460;
    if (!v174)
    {
      return (*(v458 + 56))(v459, 1, 1, v176);
    }

    v196 = *(v457 + *(type metadata accessor for StateSnapshot(0) + 36));
    if (!*(v196 + 16))
    {
      return (*(v458 + 56))(v459, 1, 1, v176);
    }

    v197 = sub_1D1742188(v465);
    if ((v198 & 1) == 0)
    {
      return (*(v458 + 56))(v459, 1, 1, v176);
    }

    sub_1D1C66B60(*(v196 + 56) + v193[9] * v197, v192, type metadata accessor for StaticActionSet);
    sub_1D1C72E80(v192, v195, type metadata accessor for StaticActionSet);
    v463 = v448;
    v464 = sub_1D1C75134(&qword_1EC64C000, type metadata accessor for StaticActionSet);
    v454 = __swift_allocate_boxed_opaque_existential_1(&v462);
    sub_1D1C66B60(v195, v454, type metadata accessor for StaticActionSet);
    v199 = v449;
    v200 = v446;
    v201 = v447;
    (*(v449 + 56))(v446, 1, 1, v447);
    v202 = v190;
    sub_1D1C66B60(v465, v190, type metadata accessor for StaticUserActionPrediction);
    v203 = *(v455 + 56);
    v465 = (v455 + 56);
    v457 = v203;
    v203(v190, 0, 1, v450);
    sub_1D1741C08(v200, v189, &qword_1EC642590, qword_1D1E71260);
    if ((*(v199 + 48))(v189, 1, v201) == 1)
    {
      sub_1D1741A30(v189, &qword_1EC642590, qword_1D1E71260);
      v204 = v194;
      (*(v199 + 16))(v194, v454, v201);
    }

    else
    {
      v256 = *(v199 + 32);
      v256(v191, v189, v201);
      v204 = v194;
      v202 = v190;
      v256(v194, v191, v201);
    }

    v257 = v427;
    v258 = v460;
    sub_1D17419CC(&v462, v204 + *(v460 + 20));
    v259 = v445;
    sub_1D1741C08(v202, v445, &qword_1EC64CC00, &unk_1D1EA1FA0);
    v260 = v450;
    v261 = (*(v455 + 48))(v259, 1, v450);
    v262 = v428;
    v263 = v431;
    if (v261 == 1)
    {
      sub_1D1741A30(v259, &qword_1EC64CC00, &unk_1D1EA1FA0);
      sub_1D17419CC(&v462, v461);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
      v264 = v448;
      if (swift_dynamicCast())
      {
        sub_1D1741A30(v202, &qword_1EC64CC00, &unk_1D1EA1FA0);
        sub_1D1741A30(v446, &qword_1EC642590, qword_1D1E71260);
        sub_1D1C72E20(v456, type metadata accessor for StaticActionSet);
        sub_1D1C72E20(v262, type metadata accessor for StaticActionSet);
        v265 = 1;
      }

      else
      {
        v278 = *(v454 + *(v264 + 48));
        sub_1D1741A30(v202, &qword_1EC64CC00, &unk_1D1EA1FA0);
        sub_1D1741A30(v446, &qword_1EC642590, qword_1D1E71260);
        sub_1D1C72E20(v456, type metadata accessor for StaticActionSet);
        if (v278)
        {
          v265 = 2;
        }

        else
        {
          v265 = 3;
        }
      }

      v457(v257, v265, 3, v260);
      v267 = v460;
      sub_1D1C72E80(v257, v204 + *(v460 + 24), type metadata accessor for BoxedTileInfoBearer.TileSort);
    }

    else
    {
      sub_1D1741A30(v202, &qword_1EC64CC00, &unk_1D1EA1FA0);
      sub_1D1741A30(v446, &qword_1EC642590, qword_1D1E71260);
      sub_1D1C72E20(v456, type metadata accessor for StaticActionSet);
      sub_1D1C72E80(v259, v263, type metadata accessor for StaticUserActionPrediction);
      v266 = *(v258 + 24);
      sub_1D1C72E80(v263, v204 + v266, type metadata accessor for StaticUserActionPrediction);
      v457(v204 + v266, 0, 3, v260);
      v267 = v258;
    }

    v279 = v459;
    sub_1D1C72E80(v204, v459, type metadata accessor for BoxedTileInfoBearer);
    __swift_destroy_boxed_opaque_existential_1(&v462);
    return (*(v458 + 56))(v279, 0, 1, v267);
  }

  if (v174 != 2)
  {
    if (v174 == 3)
    {
      v175 = *(v457 + *(type metadata accessor for StateSnapshot(0) + 56));
      v176 = v460;
      if (*(v175 + 16))
      {
        v177 = sub_1D1742188(v465);
        if (v178)
        {
          v179 = v435;
          sub_1D1C66B60(*(v175 + 56) + *(v434 + 72) * v177, v435, type metadata accessor for StaticServiceGroup);
          v180 = v446;
          sub_1D1C72E80(v179, v446, type metadata accessor for StaticServiceGroup);
          v463 = v440;
          v464 = sub_1D1C75134(&qword_1EC64BA10, type metadata accessor for StaticServiceGroup);
          v181 = __swift_allocate_boxed_opaque_existential_1(&v462);
          sub_1D1C66B60(v180, v181, type metadata accessor for StaticServiceGroup);
          v182 = v449;
          v183 = v443;
          v184 = v447;
          (*(v449 + 56))(v443, 1, 1, v447);
          v185 = v444;
          sub_1D1C66B60(v465, v444, type metadata accessor for StaticUserActionPrediction);
          v186 = v450;
          v465 = *(v455 + 56);
          (v465)(v185, 0, 1, v450);
          v187 = v424;
          sub_1D1741C08(v183, v424, &qword_1EC642590, qword_1D1E71260);
          if ((*(v182 + 48))(v187, 1, v184) == 1)
          {
            sub_1D1741A30(v187, &qword_1EC642590, qword_1D1E71260);
            v188 = v433;
            (*(v182 + 16))(v433, v181, v184);
          }

          else
          {
            v238 = *(v182 + 32);
            v239 = v418;
            v238(v418, v187, v184);
            v188 = v433;
            v238(v433, v239, v184);
          }

          v226 = v460;
          sub_1D17419CC(&v462, &v188[*(v460 + 20)]);
          v240 = v444;
          v241 = v426;
          sub_1D1741C08(v444, v426, &qword_1EC64CC00, &unk_1D1EA1FA0);
          v242 = (*(v455 + 48))(v241, 1, v186);
          v243 = v437;
          if (v242 == 1)
          {
            sub_1D1741A30(v241, &qword_1EC64CC00, &unk_1D1EA1FA0);
            sub_1D17419CC(&v462, v461);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
            if (swift_dynamicCast())
            {
              sub_1D1741A30(v240, &qword_1EC64CC00, &unk_1D1EA1FA0);
              sub_1D1741A30(v443, &qword_1EC642590, qword_1D1E71260);
              sub_1D1C72E20(v446, type metadata accessor for StaticServiceGroup);
              sub_1D1C72E20(v243, type metadata accessor for StaticActionSet);
              v244 = 1;
            }

            else
            {
              v272 = *(v181 + *(v440 + 44));
              sub_1D1741A30(v240, &qword_1EC64CC00, &unk_1D1EA1FA0);
              sub_1D1741A30(v443, &qword_1EC642590, qword_1D1E71260);
              sub_1D1C72E20(v446, type metadata accessor for StaticServiceGroup);
              if (v272)
              {
                v244 = 2;
              }

              else
              {
                v244 = 3;
              }
            }

            v273 = v422;
            (v465)(v422, v244, 3, v186);
            v226 = v460;
            sub_1D1C72E80(v273, &v188[*(v460 + 24)], type metadata accessor for BoxedTileInfoBearer.TileSort);
          }

          else
          {
            sub_1D1741A30(v240, &qword_1EC64CC00, &unk_1D1EA1FA0);
            sub_1D1741A30(v443, &qword_1EC642590, qword_1D1E71260);
            sub_1D1C72E20(v446, type metadata accessor for StaticServiceGroup);
            v252 = v420;
            sub_1D1C72E80(v241, v420, type metadata accessor for StaticUserActionPrediction);
            v253 = *(v226 + 24);
            sub_1D1C72E80(v252, &v188[v253], type metadata accessor for StaticUserActionPrediction);
            (v465)(&v188[v253], 0, 3, v186);
          }

          v274 = v188;
LABEL_58:
          v277 = v459;
          sub_1D1C72E80(v274, v459, type metadata accessor for BoxedTileInfoBearer);
          __swift_destroy_boxed_opaque_existential_1(&v462);
          return (*(v458 + 56))(v277, 0, 1, v226);
        }
      }
    }

    else
    {
      v223 = *(v457 + *(type metadata accessor for StateSnapshot(0) + 44));
      v176 = v460;
      if (*(v223 + 16))
      {
        v224 = sub_1D1742188(v465);
        if (v225)
        {
          v226 = v176;
          v227 = v430;
          sub_1D1C66B60(*(v223 + 56) + *(v429 + 72) * v224, v430, type metadata accessor for StaticMediaSystem);
          v228 = v445;
          sub_1D1C72E80(v227, v445, type metadata accessor for StaticMediaSystem);
          v463 = v439;
          v464 = sub_1D1C75134(&qword_1EC64BFE8, type metadata accessor for StaticMediaSystem);
          v229 = __swift_allocate_boxed_opaque_existential_1(&v462);
          sub_1D1C66B60(v228, v229, type metadata accessor for StaticMediaSystem);
          v230 = v449;
          v231 = v442;
          v232 = v447;
          (*(v449 + 56))(v442, 1, 1, v447);
          v233 = v441;
          sub_1D1C66B60(v465, v441, type metadata accessor for StaticUserActionPrediction);
          v234 = v450;
          v465 = *(v455 + 56);
          (v465)(v233, 0, 1, v450);
          v235 = v423;
          sub_1D1741C08(v231, v423, &qword_1EC642590, qword_1D1E71260);
          if ((*(v230 + 48))(v235, 1, v232) == 1)
          {
            sub_1D1741A30(v235, &qword_1EC642590, qword_1D1E71260);
            v236 = v432;
            (*(v230 + 16))(v432, v229, v232);
          }

          else
          {
            v245 = *(v230 + 32);
            v246 = v417;
            v245(v417, v235, v232);
            v236 = v432;
            v247 = v246;
            v233 = v441;
            v245(v432, v247, v232);
          }

          sub_1D17419CC(&v462, &v236[*(v226 + 20)]);
          v248 = v425;
          sub_1D1741C08(v233, v425, &qword_1EC64CC00, &unk_1D1EA1FA0);
          v249 = (*(v455 + 48))(v248, 1, v234);
          v250 = v436;
          if (v249 == 1)
          {
            sub_1D1741A30(v248, &qword_1EC64CC00, &unk_1D1EA1FA0);
            sub_1D17419CC(&v462, v461);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
            if (swift_dynamicCast())
            {
              sub_1D1741A30(v233, &qword_1EC64CC00, &unk_1D1EA1FA0);
              sub_1D1741A30(v442, &qword_1EC642590, qword_1D1E71260);
              sub_1D1C72E20(v445, type metadata accessor for StaticMediaSystem);
              sub_1D1C72E20(v250, type metadata accessor for StaticActionSet);
              v251 = 1;
            }

            else
            {
              v275 = *(v229 + *(v439 + 40));
              sub_1D1741A30(v233, &qword_1EC64CC00, &unk_1D1EA1FA0);
              sub_1D1741A30(v442, &qword_1EC642590, qword_1D1E71260);
              sub_1D1C72E20(v445, type metadata accessor for StaticMediaSystem);
              if (v275)
              {
                v251 = 2;
              }

              else
              {
                v251 = 3;
              }
            }

            v276 = v421;
            (v465)(v421, v251, 3, v234);
            sub_1D1C72E80(v276, &v236[*(v226 + 24)], type metadata accessor for BoxedTileInfoBearer.TileSort);
          }

          else
          {
            sub_1D1741A30(v233, &qword_1EC64CC00, &unk_1D1EA1FA0);
            sub_1D1741A30(v442, &qword_1EC642590, qword_1D1E71260);
            sub_1D1C72E20(v445, type metadata accessor for StaticMediaSystem);
            v254 = v419;
            sub_1D1C72E80(v248, v419, type metadata accessor for StaticUserActionPrediction);
            v255 = *(v226 + 24);
            sub_1D1C72E80(v254, &v236[v255], type metadata accessor for StaticUserActionPrediction);
            (v465)(&v236[v255], 0, 3, v234);
          }

          v274 = v236;
          goto LABEL_58;
        }
      }
    }

    return (*(v458 + 56))(v459, 1, 1, v176);
  }

  v454 = v172;
  v456 = &v375 - v173;
  v205 = type metadata accessor for StateSnapshot(0);
  v206 = *(v457 + *(v205 + 32));
  if (!*(v206 + 16))
  {
    return (*(v458 + 56))(v459, 1, 1, v460);
  }

  v207 = v205;
  v208 = sub_1D1742188(v465);
  if ((v209 & 1) == 0)
  {
    return (*(v458 + 56))(v459, 1, 1, v460);
  }

  sub_1D1C66B60(*(v206 + 56) + *(v167 + 72) * v208, v171, type metadata accessor for StaticAccessory);
  v210 = v456;
  sub_1D1C72E80(v171, v456, type metadata accessor for StaticAccessory);
  v211 = v210 + *(v454 + 23);
  v212 = *(v211 + 8);
  if (v212 <= 2)
  {
    v213 = v449;
    v214 = v438;
    if (v212 >= 2)
    {
      v215 = *v211;
      if (v215 & 0x100) == 0 && (v215)
      {
        goto LABEL_19;
      }
    }

LABEL_46:
    v268 = v459;
    v269 = *(v458 + 56);
    v270 = 1;
    goto LABEL_47;
  }

  v213 = v449;
  v214 = v438;
  if (v212 == 3)
  {
    goto LABEL_46;
  }

LABEL_19:
  v216 = StaticAccessory.staticServicesExcludingComponents.getter()[2];

  if (v216 != 1)
  {
    goto LABEL_22;
  }

  StaticAccessory.primaryStaticService.getter(v158);
  v217 = v409;
  if ((*(v408 + 48))(v158, 1, v409) == 1)
  {
    sub_1D1741A30(v158, &qword_1EC6436F0, &qword_1D1E99BC0);
LABEL_22:
    v218 = v413;
    sub_1D1741C08(&v465[*(v450 + 24)], v413, &qword_1EC642590, qword_1D1E71260);
    v219 = *(v213 + 48);
    v220 = v447;
    v221 = v219(v218, 1, v447);
    v453 = (v213 + 48);
    if (v221 == 1)
    {
      v222 = v219;
      sub_1D1741A30(v218, &qword_1EC642590, qword_1D1E71260);
LABEL_75:
      v290 = v450;
LABEL_76:
      v463 = v454;
      v464 = sub_1D1C75134(&qword_1EC64BA18, type metadata accessor for StaticAccessory);
      v291 = __swift_allocate_boxed_opaque_existential_1(&v462);
      sub_1D1C66B60(v456, v291, type metadata accessor for StaticAccessory);
      v292 = v416;
      (*(v213 + 56))(v416, 1, 1, v220);
      v293 = v414;
      sub_1D1C66B60(v465, v414, type metadata accessor for StaticUserActionPrediction);
      v294 = v290;
      v465 = *(v455 + 56);
      (v465)(v293, 0, 1, v290);
      v295 = v411;
      sub_1D1741C08(v292, v411, &qword_1EC642590, qword_1D1E71260);
      if (v222(v295, 1, v220) == 1)
      {
        sub_1D1741A30(v295, &qword_1EC642590, qword_1D1E71260);
        v296 = v415;
        (*(v213 + 16))(v415, v291, v220);
      }

      else
      {
        v297 = *(v213 + 32);
        v298 = v401;
        v297(v401, v295, v220);
        v296 = v415;
        v299 = v298;
        v293 = v414;
        v297(v415, v299, v220);
      }

      v300 = v410;
      v301 = v460;
      sub_1D17419CC(&v462, v296 + *(v460 + 20));
      v302 = v412;
      sub_1D1741C08(v293, v412, &qword_1EC64CC00, &unk_1D1EA1FA0);
      if ((*(v455 + 48))(v302, 1, v294) == 1)
      {
        sub_1D1741A30(v302, &qword_1EC64CC00, &unk_1D1EA1FA0);
        sub_1D17419CC(&v462, v461);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
        if (swift_dynamicCast())
        {
          sub_1D1741A30(v293, &qword_1EC64CC00, &unk_1D1EA1FA0);
          sub_1D1741A30(v416, &qword_1EC642590, qword_1D1E71260);
          sub_1D1C72E20(v300, type metadata accessor for StaticActionSet);
          v303 = 1;
        }

        else
        {
          v320 = *(v291 + *(v454 + 16));
          sub_1D1741A30(v293, &qword_1EC64CC00, &unk_1D1EA1FA0);
          sub_1D1741A30(v416, &qword_1EC642590, qword_1D1E71260);
          if (v320)
          {
            v303 = 2;
          }

          else
          {
            v303 = 3;
          }
        }

        v321 = v403;
        (v465)(v403, v303, 3, v294);
        sub_1D1C72E80(v321, v296 + *(v301 + 24), type metadata accessor for BoxedTileInfoBearer.TileSort);
      }

      else
      {
        sub_1D1741A30(v293, &qword_1EC64CC00, &unk_1D1EA1FA0);
        sub_1D1741A30(v416, &qword_1EC642590, qword_1D1E71260);
        v304 = v402;
        sub_1D1C72E80(v302, v402, type metadata accessor for StaticUserActionPrediction);
        v305 = *(v301 + 24);
        v306 = v304;
        v296 = v415;
        sub_1D1C72E80(v306, &v415[v305], type metadata accessor for StaticUserActionPrediction);
        (v465)(v296 + v305, 0, 3, v294);
      }

      v322 = v459;
      sub_1D1C72E80(v296, v459, type metadata accessor for BoxedTileInfoBearer);
      __swift_destroy_boxed_opaque_existential_1(&v462);
      v269 = *(v458 + 56);
      v268 = v322;
      v270 = 0;
      v271 = v301;
      goto LABEL_90;
    }

    v280 = v405;
    v452 = *(v213 + 32);
    (v452)(v405, v218, v220);
    v281 = *(v457 + *(v207 + 60));
    if (!*(v281 + 16) || (v282 = sub_1D1742188(v280), (v283 & 1) == 0))
    {
      v222 = v219;
      v213 = v449;
      (*(v449 + 8))(v280, v220);
      goto LABEL_75;
    }

    sub_1D1C66B60(*(v281 + 56) + *(v408 + 72) * v282, v162, type metadata accessor for StaticService);
    v284 = v394;
    sub_1D1C72E80(v162, v394, type metadata accessor for StaticService);
    v285 = v450;
    if (qword_1EC642398 != -1)
    {
      swift_once();
    }

    v286 = v409;
    v287 = *(v409 + 104);
    v288 = sub_1D171951C(*(v284 + v287), qword_1EC6BE1B0);
    v289 = v393;
    if ((v288 & 1) == 0)
    {
      goto LABEL_73;
    }

    sub_1D1741C08(v284 + *(v286 + 116), v393, &qword_1EC642590, qword_1D1E71260);
    v220 = v447;
    if (v219(v289, 1, v447) != 1)
    {
      v222 = v219;
      sub_1D1C72E20(v284, type metadata accessor for StaticService);
      v213 = v449;
      (*(v449 + 8))(v405, v220);
      sub_1D1741A30(v289, &qword_1EC642590, qword_1D1E71260);
      goto LABEL_103;
    }

    sub_1D1741A30(v289, &qword_1EC642590, qword_1D1E71260);
    if (qword_1EE07AB30 != -1)
    {
      swift_once();
    }

    if (sub_1D171951C(*(v284 + v287), off_1EE07AB38))
    {
LABEL_73:
      v222 = v219;
      sub_1D1C72E20(v284, type metadata accessor for StaticService);
      v213 = v449;
      v220 = v447;
      (*(v449 + 8))(v405, v447);
LABEL_103:
      v290 = v285;
      goto LABEL_76;
    }

    v451 = v219;
    if (*(v456 + *(v454 + 19)) & 1) != 0 || (v337 = StaticAccessory.staticServicesExcludingComponents.getter(), v286 = v409, v338 = v337[2], , v338 < 2) || (*(v457 + *(type metadata accessor for TileInfoBearerCollection(0) + 32)))
    {
      v463 = v286;
      v464 = sub_1D1C75134(&qword_1EC646AF0, type metadata accessor for StaticService);
      v339 = __swift_allocate_boxed_opaque_existential_1(&v462);
      sub_1D1C66B60(v284, v339, type metadata accessor for StaticService);
      v340 = v391;
      v341 = v447;
      (*(v449 + 56))(v391, 1, 1, v447);
      v342 = v392;
      sub_1D1C66B60(v465, v392, type metadata accessor for StaticUserActionPrediction);
      v465 = *(v455 + 56);
      (v465)(v342, 0, 1, v285);
      v343 = v340;
      v344 = v388;
      sub_1D1741C08(v343, v388, &qword_1EC642590, qword_1D1E71260);
      if ((v451)(v344, 1, v341) == 1)
      {
        sub_1D1741A30(v344, &qword_1EC642590, qword_1D1E71260);
        v345 = v390;
        (*(v449 + 16))(v390, v339, v341);
      }

      else
      {
        v346 = v383;
        v347 = v452;
        (v452)(v383, v344, v341);
        v345 = v390;
        v347(v390, v346, v341);
      }

      v348 = v460;
      sub_1D17419CC(&v462, v345 + *(v460 + 20));
      v349 = v389;
      sub_1D1741C08(v392, v389, &qword_1EC64CC00, &unk_1D1EA1FA0);
      if ((*(v455 + 48))(v349, 1, v285) == 1)
      {
        sub_1D1741A30(v349, &qword_1EC64CC00, &unk_1D1EA1FA0);
        sub_1D17419CC(&v462, v461);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
        v350 = v385;
        if (swift_dynamicCast())
        {
          sub_1D1741A30(v392, &qword_1EC64CC00, &unk_1D1EA1FA0);
          sub_1D1741A30(v391, &qword_1EC642590, qword_1D1E71260);
          sub_1D1C72E20(v284, type metadata accessor for StaticService);
          (*(v449 + 8))(v405, v447);
          sub_1D1C72E20(v350, type metadata accessor for StaticActionSet);
          v351 = 1;
        }

        else
        {
          v354 = *(v339 + *(v409 + 92));
          sub_1D1741A30(v392, &qword_1EC64CC00, &unk_1D1EA1FA0);
          sub_1D1741A30(v391, &qword_1EC642590, qword_1D1E71260);
          sub_1D1C72E20(v284, type metadata accessor for StaticService);
          (*(v449 + 8))(v405, v447);
          if (v354)
          {
            v351 = 2;
          }

          else
          {
            v351 = 3;
          }
        }

        v355 = v386;
        (v465)(v386, v351, 3, v450);
        v348 = v460;
        v345 = v390;
        sub_1D1C72E80(v355, &v390[*(v460 + 24)], type metadata accessor for BoxedTileInfoBearer.TileSort);
      }

      else
      {
        sub_1D1741A30(v392, &qword_1EC64CC00, &unk_1D1EA1FA0);
        sub_1D1741A30(v391, &qword_1EC642590, qword_1D1E71260);
        sub_1D1C72E20(v284, type metadata accessor for StaticService);
        (*(v449 + 8))(v405, v447);
        v352 = v384;
        sub_1D1C72E80(v349, v384, type metadata accessor for StaticUserActionPrediction);
        v353 = *(v348 + 24);
        sub_1D1C72E80(v352, v345 + v353, type metadata accessor for StaticUserActionPrediction);
        (v465)(v345 + v353, 0, 3, v285);
      }

      v356 = v459;
      sub_1D1C72E80(v345, v459, type metadata accessor for BoxedTileInfoBearer);
      __swift_destroy_boxed_opaque_existential_1(&v462);
      (*(v458 + 56))(v356, 0, 1, v348);
      return sub_1D1C72E20(v456, type metadata accessor for StaticAccessory);
    }

    v463 = v454;
    v464 = sub_1D1C75134(&qword_1EC64BA18, type metadata accessor for StaticAccessory);
    v357 = __swift_allocate_boxed_opaque_existential_1(&v462);
    sub_1D1C66B60(v456, v357, type metadata accessor for StaticAccessory);
    v358 = v380;
    v359 = v285;
    v360 = v447;
    (*(v449 + 56))(v380, 1, 1, v447);
    v361 = v382;
    sub_1D1C66B60(v465, v382, type metadata accessor for StaticUserActionPrediction);
    v362 = *(v455 + 56);
    v362(v361, 0, 1, v359);
    v363 = v379;
    sub_1D1741C08(v358, v379, &qword_1EC642590, qword_1D1E71260);
    if ((v451)(v363, 1, v360) == 1)
    {
      sub_1D1741A30(v379, &qword_1EC642590, qword_1D1E71260);
      (*(v449 + 16))(v387, v357, v447);
    }

    else
    {
      v364 = v375;
      v365 = v447;
      v366 = v452;
      (v452)(v375, v379, v447);
      v366(v387, v364, v365);
    }

    sub_1D17419CC(&v462, v387 + *(v460 + 20));
    v367 = v381;
    sub_1D1741C08(v382, v381, &qword_1EC64CC00, &unk_1D1EA1FA0);
    if ((*(v455 + 48))(v367, 1, v450) == 1)
    {
      sub_1D1741A30(v381, &qword_1EC64CC00, &unk_1D1EA1FA0);
      sub_1D17419CC(&v462, v461);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
      if (swift_dynamicCast())
      {
        sub_1D1741A30(v382, &qword_1EC64CC00, &unk_1D1EA1FA0);
        sub_1D1741A30(v380, &qword_1EC642590, qword_1D1E71260);
        sub_1D1C72E20(v394, type metadata accessor for StaticService);
        (*(v449 + 8))(v405, v447);
        sub_1D1C72E20(v378, type metadata accessor for StaticActionSet);
        v368 = 1;
      }

      else
      {
        v372 = *(v357 + *(v454 + 16));
        sub_1D1741A30(v382, &qword_1EC64CC00, &unk_1D1EA1FA0);
        sub_1D1741A30(v380, &qword_1EC642590, qword_1D1E71260);
        sub_1D1C72E20(v394, type metadata accessor for StaticService);
        (*(v449 + 8))(v405, v447);
        if (v372)
        {
          v368 = 2;
        }

        else
        {
          v368 = 3;
        }
      }

      v373 = v377;
      v362(v377, v368, 3, v450);
      sub_1D1C72E80(v373, v387 + *(v460 + 24), type metadata accessor for BoxedTileInfoBearer.TileSort);
    }

    else
    {
      sub_1D1741A30(v382, &qword_1EC64CC00, &unk_1D1EA1FA0);
      sub_1D1741A30(v380, &qword_1EC642590, qword_1D1E71260);
      sub_1D1C72E20(v394, type metadata accessor for StaticService);
      (*(v449 + 8))(v405, v447);
      v369 = v376;
      sub_1D1C72E80(v381, v376, type metadata accessor for StaticUserActionPrediction);
      v370 = *(v460 + 24);
      v371 = v387;
      sub_1D1C72E80(v369, v387 + v370, type metadata accessor for StaticUserActionPrediction);
      v362(v371 + v370, 0, 3, v450);
    }

    v374 = v459;
    sub_1D1C72E80(v387, v459, type metadata accessor for BoxedTileInfoBearer);
    __swift_destroy_boxed_opaque_existential_1(&v462);
    v269 = *(v458 + 56);
    v268 = v374;
    v270 = 0;
LABEL_47:
    v271 = v460;
LABEL_90:
    v269(v268, v270, 1, v271);
    return sub_1D1C72E20(v456, type metadata accessor for StaticAccessory);
  }

  v307 = v406;
  sub_1D1C72E80(v158, v406, type metadata accessor for StaticService);
  v463 = v217;
  v464 = sub_1D1C75134(&qword_1EC646AF0, type metadata accessor for StaticService);
  v308 = __swift_allocate_boxed_opaque_existential_1(&v462);
  sub_1D1C66B60(v307, v308, type metadata accessor for StaticService);
  v309 = v407;
  v310 = v447;
  (*(v213 + 56))(v407, 1, 1, v447);
  sub_1D1C66B60(v465, v214, type metadata accessor for StaticUserActionPrediction);
  v311 = (v455 + 56);
  v312 = *(v455 + 56);
  v313 = v214;
  v314 = v450;
  (v312)(v313, 0, 1, v450);
  v315 = v309;
  v316 = v398;
  sub_1D1741C08(v315, v398, &qword_1EC642590, qword_1D1E71260);
  v317 = (*(v213 + 48))(v316, 1, v310);
  v465 = v312;
  v457 = v311;
  v454 = v308;
  v318 = v314;
  if (v317 == 1)
  {
    sub_1D1741A30(v316, &qword_1EC642590, qword_1D1E71260);
    v319 = v404;
    (*(v213 + 16))(v404, v308, v310);
  }

  else
  {
    v323 = *(v213 + 32);
    v324 = v395;
    v323(v395, v316, v310);
    v319 = v404;
    v323(v404, v324, v310);
  }

  v325 = v460;
  sub_1D17419CC(&v462, v319 + *(v460 + 20));
  v326 = v438;
  v327 = v399;
  sub_1D1741C08(v438, v399, &qword_1EC64CC00, &unk_1D1EA1FA0);
  v328 = v318;
  v329 = (*(v455 + 48))(v327, 1, v318);
  v330 = v400;
  if (v329 == 1)
  {
    sub_1D1741A30(v327, &qword_1EC64CC00, &unk_1D1EA1FA0);
    sub_1D17419CC(&v462, v461);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
    if (swift_dynamicCast())
    {
      sub_1D1741A30(v438, &qword_1EC64CC00, &unk_1D1EA1FA0);
      sub_1D1741A30(v407, &qword_1EC642590, qword_1D1E71260);
      sub_1D1C72E20(v406, type metadata accessor for StaticService);
      sub_1D1C72E20(v330, type metadata accessor for StaticActionSet);
      v331 = 1;
    }

    else
    {
      v334 = *(v454 + *(v409 + 92));
      sub_1D1741A30(v438, &qword_1EC64CC00, &unk_1D1EA1FA0);
      sub_1D1741A30(v407, &qword_1EC642590, qword_1D1E71260);
      sub_1D1C72E20(v406, type metadata accessor for StaticService);
      if (v334)
      {
        v331 = 2;
      }

      else
      {
        v331 = 3;
      }
    }

    v335 = v397;
    (v465)(v397, v331, 3, v328);
    v319 = v404;
    sub_1D1C72E80(v335, &v404[*(v325 + 24)], type metadata accessor for BoxedTileInfoBearer.TileSort);
  }

  else
  {
    sub_1D1741A30(v326, &qword_1EC64CC00, &unk_1D1EA1FA0);
    sub_1D1741A30(v407, &qword_1EC642590, qword_1D1E71260);
    sub_1D1C72E20(v406, type metadata accessor for StaticService);
    v332 = v396;
    sub_1D1C72E80(v327, v396, type metadata accessor for StaticUserActionPrediction);
    v333 = *(v325 + 24);
    sub_1D1C72E80(v332, v319 + v333, type metadata accessor for StaticUserActionPrediction);
    (v465)(v319 + v333, 0, 3, v318);
  }

  v336 = v459;
  sub_1D1C72E80(v319, v459, type metadata accessor for BoxedTileInfoBearer);
  __swift_destroy_boxed_opaque_existential_1(&v462);
  (*(v458 + 56))(v336, 0, 1, v325);
  return sub_1D1C72E20(v456, type metadata accessor for StaticAccessory);
}

uint64_t sub_1D1C6406C()
{
  v362 = type metadata accessor for StaticAccessory(0);
  v366 = *(v362 - 8);
  v1 = *(v366 + 64);
  v2 = MEMORY[0x1EEE9AC00](v362);
  v368 = &v353 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v378 = &v353 - v4;
  v5 = type metadata accessor for StaticService(0);
  v373 = *(v5 - 8);
  v6 = *(v373 + 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v353 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v365 = type metadata accessor for StaticServiceGroup();
  v369 = *(v365 - 8);
  v9 = *(v369 + 64);
  MEMORY[0x1EEE9AC00](v365);
  v391 = (&v353 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v384 = type metadata accessor for BoxedTileInfoBearer(0);
  v11 = *(v384 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v384);
  v383 = &v353 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v375 = &v353 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v377 = &v353 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v382 = &v353 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v376 = &v353 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v381 = &v353 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v380 = &v353 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v388 = &v353 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v387 = &v353 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v386 = &v353 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v379 = &v353 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v353 - v35;
  v37 = sub_1D1E66A7C();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  v40 = MEMORY[0x1EEE9AC00](v37);
  v390 = &v353 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v392 = &v353 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v353 = &v353 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v48 = &v353 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v50 = &v353 - v49;
  v355 = type metadata accessor for StateSnapshot(0);
  v51 = *&v0[v355[14]];

  v53 = sub_1D17821C0(v52);
  v396 = v0;
  v54 = 0;
  v55 = sub_1D1B51F30(sub_1D1C750D4, &v395, v53);
  v358 = 0;
  v356 = sub_1D1C5ADDC(v55);
  v367 = v56;
  v57 = sub_1D1C5CC2C();
  v361 = v0;
  v359 = sub_1D1C5EFE0();
  v58 = *(v57 + 16);
  v389 = v36;
  v360 = v11;
  v394 = v38;
  v354 = v57;
  if (v58)
  {
    v54 = v36;
    v400 = MEMORY[0x1E69E7CC0];
    v393 = v58;
    sub_1D178CEFC(0, v58, 0);
    v59 = v400;
    v60 = v11;
    v61 = v57 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v385 = *(v60 + 72);
    v374 = v38 + 32;
    do
    {
      sub_1D1C66B60(v61, v54, type metadata accessor for BoxedTileInfoBearer);
      v62 = (v54 + *(v384 + 20));
      v63 = v62[4];
      __swift_project_boxed_opaque_existential_1(v62, v62[3]);
      v64 = *(v63 + 48);
      sub_1D1E6886C();
      sub_1D1C72E20(v54, type metadata accessor for BoxedTileInfoBearer);
      v400 = v59;
      v66 = *(v59 + 2);
      v65 = *(v59 + 3);
      if (v66 >= v65 >> 1)
      {
        sub_1D178CEFC(v65 > 1, v66 + 1, 1);
        v59 = v400;
      }

      *(v59 + 2) = v66 + 1;
      (*(v394 + 32))(&v59[((*(v394 + 80) + 32) & ~*(v394 + 80)) + *(v394 + 72) * v66], v50, v37);
      v61 += v385;
      --v393;
      v54 = v389;
    }

    while (v393);
    v357 = v59;
  }

  else
  {
    v357 = MEMORY[0x1E69E7CC0];
  }

  v67 = v367;
  v68 = v394;
  v364 = *(v367 + 16);
  if (v364)
  {
    v69 = 0;
    v363 = v367 + ((*(v369 + 80) + 32) & ~*(v369 + 80));
    v70 = MEMORY[0x1E69E7CC0];
    v71 = (v394 + 16);
    v393 = v394 + 32;
    while (1)
    {
      if (v69 >= *(v67 + 16))
      {
        goto LABEL_220;
      }

      v385 = v70;
      v72 = *(v369 + 72);
      v374 = v69;
      v73 = v391;
      sub_1D1C66B60(v363 + v72 * v69, v391, type metadata accessor for StaticServiceGroup);
      v74 = *(v73 + *(v365 + 56));
      v75 = v74[2];
      if (v75)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643258, &qword_1D1E716B0);
        v76 = *(v373 + 9);
        v54 = (v373[80] + 32) & ~v373[80];
        v77 = swift_allocObject();
        v78 = _swift_stdlib_malloc_size(v77);
        if (!v76)
        {
          goto LABEL_223;
        }

        if (v78 - v54 == 0x8000000000000000 && v76 == -1)
        {
          goto LABEL_227;
        }

        v77[2] = v75;
        v77[3] = 2 * ((v78 - v54) / v76);
        v80 = v77;
        v54 = sub_1D1804A58(&v400, v77 + v54, v75, v74);
        v372 = v402;
        v371 = v403;
        v370 = v404;

        sub_1D1716918();
        if (v54 != v75)
        {
          goto LABEL_224;
        }

        v68 = v394;
      }

      else
      {
        v80 = MEMORY[0x1E69E7CC0];
      }

      sub_1D1C72E20(v391, type metadata accessor for StaticServiceGroup);
      v81 = v80[2];
      if (v81)
      {
        v400 = MEMORY[0x1E69E7CC0];
        sub_1D178CEFC(0, v81, 0);
        v82 = v400;
        v83 = (v373[80] + 32) & ~v373[80];
        v372 = v80;
        v84 = v80 + v83;
        v85 = *(v373 + 9);
        do
        {
          sub_1D1C66B60(v84, v8, type metadata accessor for StaticService);
          (*v71)(v48, v8, v37);
          sub_1D1C72E20(v8, type metadata accessor for StaticService);
          v400 = v82;
          v87 = *(v82 + 2);
          v86 = *(v82 + 3);
          if (v87 >= v86 >> 1)
          {
            sub_1D178CEFC(v86 > 1, v87 + 1, 1);
            v82 = v400;
          }

          *(v82 + 2) = v87 + 1;
          (*(v394 + 32))(&v82[((*(v394 + 80) + 32) & ~*(v394 + 80)) + *(v394 + 72) * v87], v48, v37);
          v84 += v85;
          --v81;
        }

        while (v81);

        v68 = v394;
      }

      else
      {

        v82 = MEMORY[0x1E69E7CC0];
      }

      v54 = *(v82 + 2);
      v70 = v385;
      v88 = v385[2];
      v89 = v88 + v54;
      if (__OFADD__(v88, v54))
      {
        goto LABEL_221;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v89 <= v70[3] >> 1)
      {
        if (!*(v82 + 2))
        {
          goto LABEL_10;
        }
      }

      else
      {
        if (v88 <= v89)
        {
          v91 = v88 + v54;
        }

        else
        {
          v91 = v88;
        }

        v70 = sub_1D177D0AC(isUniquelyReferenced_nonNull_native, v91, 1, v70);
        if (!*(v82 + 2))
        {
LABEL_10:

          v67 = v367;
          if (v54)
          {
            goto LABEL_222;
          }

          goto LABEL_11;
        }
      }

      if ((v70[3] >> 1) - v70[2] < v54)
      {
        goto LABEL_225;
      }

      v92 = (*(v68 + 80) + 32) & ~*(v68 + 80);
      v93 = *(v68 + 72);
      swift_arrayInitWithCopy();

      v67 = v367;
      if (v54)
      {
        v94 = v70[2];
        v95 = __OFADD__(v94, v54);
        v96 = v94 + v54;
        if (v95)
        {
          goto LABEL_226;
        }

        v70[2] = v96;
      }

LABEL_11:
      v69 = v374 + 1;
      if (v374 + 1 == v364)
      {
        goto LABEL_43;
      }
    }
  }

  v70 = MEMORY[0x1E69E7CC0];
LABEL_43:
  v400 = v357;
  sub_1D17A3840(v70);
  v97 = v400;
  v98 = v359;
  v99 = *(v359 + 16);
  v100 = MEMORY[0x1E69E7CC0];
  if (v99)
  {
    v391 = v400;
    v400 = MEMORY[0x1E69E7CC0];
    sub_1D178CEFC(0, v99, 0);
    v100 = v400;
    v101 = v98 + ((*(v360 + 80) + 32) & ~*(v360 + 80));
    v393 = *(v360 + 72);
    v102 = v353;
    v103 = v389;
    do
    {
      sub_1D1C66B60(v101, v103, type metadata accessor for BoxedTileInfoBearer);
      v104 = (v103 + *(v384 + 20));
      v105 = v104[4];
      __swift_project_boxed_opaque_existential_1(v104, v104[3]);
      v106 = *(v105 + 48);
      sub_1D1E6886C();
      sub_1D1C72E20(v103, type metadata accessor for BoxedTileInfoBearer);
      v400 = v100;
      v108 = *(v100 + 2);
      v107 = *(v100 + 3);
      if (v108 >= v107 >> 1)
      {
        sub_1D178CEFC(v107 > 1, v108 + 1, 1);
        v100 = v400;
      }

      *(v100 + 2) = v108 + 1;
      (*(v394 + 32))(&v100[((*(v394 + 80) + 32) & ~*(v394 + 80)) + *(v394 + 72) * v108], v102, v37);
      v101 += v393;
      --v99;
    }

    while (v99);
    v97 = v391;
  }

  v400 = v97;
  sub_1D17A3840(v100);
  v109 = sub_1D17841EC(v400);

  v110 = v361;
  v111 = sub_1D1C5B538();
  MEMORY[0x1EEE9AC00](v111);
  *(&v353 - 2) = v110;
  v112 = v358;
  v114 = sub_1D1B51BF8(sub_1D1C750F4, (&v353 - 4), v113);
  MEMORY[0x1EEE9AC00](v114);
  *(&v353 - 2) = v110;
  v116 = sub_1D18667F4(sub_1D1C75114, (&v353 - 4), v115);
  v117 = v116;
  v363 = v112;
  v118 = MEMORY[0x1E69E7CC0];
  v365 = *(v116 + 16);
  if (v365)
  {
    v54 = 0;
    v393 = v394 + 16;
    v391 = (v109 + 56);
    v119 = (v394 + 8);
    v364 = v116;
    while (v54 < *(v117 + 16))
    {
      v373 = v118;
      v121 = *(v366 + 72);
      v370 = (*(v366 + 80) + 32) & ~*(v366 + 80);
      v371 = v54;
      v369 = v121;
      sub_1D1C66B60(v117 + v370 + v121 * v54, v378, type metadata accessor for StaticAccessory);
      if (*(v109 + 16) && (v122 = *(v378 + *(v362 + 84)), (v372 = *(v122 + 16)) != 0))
      {
        v123 = 0;
        v374 = v122 + ((*(v394 + 80) + 32) & ~*(v394 + 80));
        v124 = *(v394 + 72);
        v125 = *(v394 + 16);
        while (1)
        {
          v385 = v123;
          v125(v392, v374 + v124 * v123, v37);
          if (*(v109 + 16))
          {
            v126 = *(v109 + 40);
            sub_1D1C75134(qword_1EE07DD78, MEMORY[0x1E69695A8]);
            v127 = sub_1D1E676DC();
            v128 = -1 << *(v109 + 32);
            v129 = v127 & ~v128;
            if ((*(v391 + ((v129 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v129))
            {
              break;
            }
          }

LABEL_57:
          v123 = (v385 + 1);
          (*v119)(v392, v37);
          if (v123 == v372)
          {
            goto LABEL_64;
          }
        }

        v130 = ~v128;
        while (1)
        {
          v131 = v109;
          v132 = *(v109 + 48) + v129 * v124;
          v133 = v390;
          v125(v390, v132, v37);
          sub_1D1C75134(&qword_1EE07D170, MEMORY[0x1E69695A8]);
          v134 = sub_1D1E6775C();
          v135 = *v119;
          (*v119)(v133, v37);
          if (v134)
          {
            break;
          }

          v129 = (v129 + 1) & v130;
          v109 = v131;
          if (((*(v391 + ((v129 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v129) & 1) == 0)
          {
            goto LABEL_57;
          }
        }

        v135(v392, v37);
        sub_1D1C72E20(v378, type metadata accessor for StaticAccessory);
        v118 = v373;
        v109 = v131;
        v117 = v364;
        v120 = v371;
      }

      else
      {
LABEL_64:
        sub_1D1C72E80(v378, v368, type metadata accessor for StaticAccessory);
        v118 = v373;
        v136 = swift_isUniquelyReferenced_nonNull_native();
        v400 = v118;
        if ((v136 & 1) == 0)
        {
          sub_1D178CEB8(0, *(v118 + 2) + 1, 1);
          v118 = v400;
        }

        v117 = v364;
        v120 = v371;
        v137 = v370;
        v139 = *(v118 + 2);
        v138 = *(v118 + 3);
        if (v139 >= v138 >> 1)
        {
          sub_1D178CEB8(v138 > 1, v139 + 1, 1);
          v118 = v400;
        }

        *(v118 + 2) = v139 + 1;
        sub_1D1C72E80(v368, &v118[v137 + v139 * v369], type metadata accessor for StaticAccessory);
      }

      v54 = v120 + 1;
      if (v54 == v365)
      {
        goto LABEL_69;
      }
    }

    __break(1u);
LABEL_220:
    __break(1u);
LABEL_221:
    __break(1u);
LABEL_222:
    __break(1u);
LABEL_223:
    __break(1u);
LABEL_224:
    __break(1u);
LABEL_225:
    __break(1u);
LABEL_226:
    __break(1u);
LABEL_227:
    __break(1u);
    goto LABEL_228;
  }

LABEL_69:
  v373 = v118;

  v398 = 0;
  v399 = MEMORY[0x1E69E7CC0];
  v393 = type metadata accessor for TileInfoBearerCollection(0);
  v394 = *&v361[*(v393 + 36)];
  if ((v394 & 0x40) != 0)
  {
    sub_1D1C60440();
    v392 = v140;
    v142 = v141;
    v143 = *(v141 + 16);
    v144 = v379;
    if (v143)
    {
      v145 = 0;
      v146 = *(v360 + 72);
      v147 = (*(v360 + 80) + 32) & ~*(v360 + 80);
      do
      {
        sub_1D1C66B60(v142 + v147 + v146 * v145, v144, type metadata accessor for BoxedTileInfoBearer);
        v148 = v398;
        v149 = &v399[v147];
        v150 = *(v399 + 2);
        if (v398)
        {

          sub_1D1C6E730(v144, v149, v150, v148 + 2, (v148 + 32));
          v152 = v151;

          if ((v152 & 1) == 0)
          {
            goto LABEL_73;
          }
        }

        else
        {
          v153 = v389;
          if (v150)
          {
            do
            {
              sub_1D1C66B60(v149, v153, type metadata accessor for BoxedTileInfoBearer);
              v154 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
              sub_1D1C72E20(v153, type metadata accessor for BoxedTileInfoBearer);
              if (v154)
              {
                goto LABEL_73;
              }

              v149 += v146;
            }

            while (--v150);
          }
        }

        sub_1D1C6D608(v379);
LABEL_73:
        ++v145;
        v144 = v379;
        sub_1D1C72E20(v379, type metadata accessor for BoxedTileInfoBearer);
      }

      while (v145 != v143);
    }
  }

  v155 = sub_1D1C74C24(v367);
  sub_1D1C58920(v155);
  v392 = v156;
  v158 = v157;
  v159 = *(v157 + 16);
  v160 = v386;
  if (v159)
  {
    v161 = 0;
    v162 = *(v360 + 72);
    v163 = (*(v360 + 80) + 32) & ~*(v360 + 80);
    do
    {
      sub_1D1C66B60(v158 + v163 + v162 * v161, v160, type metadata accessor for BoxedTileInfoBearer);
      v164 = v398;
      v165 = &v399[v163];
      v166 = *(v399 + 2);
      if (v398)
      {

        sub_1D1C6E730(v160, v165, v166, v164 + 2, (v164 + 32));
        v168 = v167;

        if ((v168 & 1) == 0)
        {
          goto LABEL_85;
        }
      }

      else
      {
        v169 = v389;
        if (v166)
        {
          do
          {
            sub_1D1C66B60(v165, v169, type metadata accessor for BoxedTileInfoBearer);
            v170 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
            sub_1D1C72E20(v169, type metadata accessor for BoxedTileInfoBearer);
            if (v170)
            {
              goto LABEL_85;
            }

            v165 += v162;
          }

          while (--v166);
        }
      }

      sub_1D1C6D608(v386);
LABEL_85:
      ++v161;
      v160 = v386;
      sub_1D1C72E20(v386, type metadata accessor for BoxedTileInfoBearer);
    }

    while (v161 != v159);
  }

  sub_1D1C58920(v354);
  v392 = v171;
  v173 = v172;
  v174 = *(v172 + 16);
  v175 = v387;
  if (v174)
  {
    v176 = 0;
    v177 = *(v360 + 72);
    v178 = (*(v360 + 80) + 32) & ~*(v360 + 80);
    do
    {
      sub_1D1C66B60(v173 + v178 + v177 * v176, v175, type metadata accessor for BoxedTileInfoBearer);
      v179 = v398;
      v180 = &v399[v178];
      v181 = *(v399 + 2);
      if (v398)
      {

        sub_1D1C6E730(v175, v180, v181, v179 + 2, (v179 + 32));
        v183 = v182;

        if ((v183 & 1) == 0)
        {
          goto LABEL_96;
        }
      }

      else
      {
        v184 = v389;
        if (v181)
        {
          do
          {
            sub_1D1C66B60(v180, v184, type metadata accessor for BoxedTileInfoBearer);
            v185 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
            sub_1D1C72E20(v184, type metadata accessor for BoxedTileInfoBearer);
            if (v185)
            {
              goto LABEL_96;
            }

            v180 += v177;
          }

          while (--v181);
        }
      }

      sub_1D1C6D608(v387);
LABEL_96:
      ++v176;
      v175 = v387;
      sub_1D1C72E20(v387, type metadata accessor for BoxedTileInfoBearer);
    }

    while (v176 != v174);
  }

  v186 = sub_1D1C586D8(v373);

  sub_1D1C58920(v186);
  v392 = v187;
  v189 = v188;
  v190 = *(v188 + 16);
  v191 = v388;
  if (v190)
  {
    v192 = 0;
    v193 = *(v360 + 72);
    v194 = (*(v360 + 80) + 32) & ~*(v360 + 80);
    do
    {
      sub_1D1C66B60(v189 + v194 + v193 * v192, v191, type metadata accessor for BoxedTileInfoBearer);
      v195 = v398;
      v196 = &v399[v194];
      v197 = *(v399 + 2);
      if (v398)
      {

        sub_1D1C6E730(v191, v196, v197, v195 + 2, (v195 + 32));
        v199 = v198;

        if ((v199 & 1) == 0)
        {
          goto LABEL_107;
        }
      }

      else
      {
        v200 = v389;
        if (v197)
        {
          do
          {
            sub_1D1C66B60(v196, v200, type metadata accessor for BoxedTileInfoBearer);
            v201 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
            sub_1D1C72E20(v200, type metadata accessor for BoxedTileInfoBearer);
            if (v201)
            {
              goto LABEL_107;
            }

            v196 += v193;
          }

          while (--v197);
        }
      }

      sub_1D1C6D608(v388);
LABEL_107:
      ++v192;
      v191 = v388;
      sub_1D1C72E20(v388, type metadata accessor for BoxedTileInfoBearer);
    }

    while (v192 != v190);
  }

  if ((~v394 & 0xC) == 0)
  {
    v203 = *&v361[v355[11]];
    MEMORY[0x1EEE9AC00](v202);
    *(&v353 - 2) = v204;

    v205 = v363;
    v206 = sub_1D18664B0(sub_1D1C751B8, (&v353 - 4), v203);
    v363 = v205;
    v207 = sub_1D1C57DB8(v206);

    sub_1D1C58920(v207);
    v392 = v208;
    v210 = v209;
    v211 = *(v209 + 16);
    v212 = v380;
    if (v211)
    {
      v213 = 0;
      v214 = *(v360 + 72);
      v215 = (*(v360 + 80) + 32) & ~*(v360 + 80);
      do
      {
        sub_1D1C66B60(v210 + v215 + v214 * v213, v212, type metadata accessor for BoxedTileInfoBearer);
        v216 = v398;
        v217 = &v399[v215];
        v218 = *(v399 + 2);
        if (v398)
        {

          sub_1D1C6E730(v212, v217, v218, v216 + 2, (v216 + 32));
          v220 = v219;

          if ((v220 & 1) == 0)
          {
            goto LABEL_119;
          }
        }

        else
        {
          v221 = v389;
          if (v218)
          {
            do
            {
              sub_1D1C66B60(v217, v221, type metadata accessor for BoxedTileInfoBearer);
              v222 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
              sub_1D1C72E20(v221, type metadata accessor for BoxedTileInfoBearer);
              if (v222)
              {
                goto LABEL_119;
              }

              v217 += v214;
            }

            while (--v218);
          }
        }

        sub_1D1C6D608(v380);
LABEL_119:
        ++v213;
        v212 = v380;
        sub_1D1C72E20(v380, type metadata accessor for BoxedTileInfoBearer);
      }

      while (v213 != v211);
    }

    v223 = sub_1D1C5DDD0();
    v224 = sub_1D1C58490(v223);

    sub_1D1C58920(v224);
    v392 = v225;
    v227 = v226;
    v228 = *(v226 + 16);
    v229 = v381;
    if (v228)
    {
      v230 = 0;
      v231 = *(v360 + 72);
      v232 = (*(v360 + 80) + 32) & ~*(v360 + 80);
      do
      {
        sub_1D1C66B60(v227 + v232 + v231 * v230, v229, type metadata accessor for BoxedTileInfoBearer);
        v233 = v398;
        v234 = &v399[v232];
        v235 = *(v399 + 2);
        if (v398)
        {

          sub_1D1C6E730(v229, v234, v235, v233 + 2, (v233 + 32));
          v237 = v236;

          if ((v237 & 1) == 0)
          {
            goto LABEL_130;
          }
        }

        else
        {
          v238 = v389;
          if (v235)
          {
            do
            {
              sub_1D1C66B60(v234, v238, type metadata accessor for BoxedTileInfoBearer);
              v239 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
              sub_1D1C72E20(v238, type metadata accessor for BoxedTileInfoBearer);
              if (v239)
              {
                goto LABEL_130;
              }

              v234 += v231;
            }

            while (--v235);
          }
        }

        sub_1D1C6D608(v381);
LABEL_130:
        ++v230;
        v229 = v381;
        sub_1D1C72E20(v381, type metadata accessor for BoxedTileInfoBearer);
      }

      while (v230 != v228);
    }
  }

  v240 = v361;
  v241 = v376;
  if ((~v394 & 0x84) == 0)
  {
    sub_1D1C5DB58();
    v392 = v242;
    v244 = v243;
    v245 = *(v243 + 16);
    if (v245)
    {
      v246 = 0;
      v247 = *(v360 + 72);
      v248 = (*(v360 + 80) + 32) & ~*(v360 + 80);
      do
      {
        sub_1D1C66B60(v244 + v248 + v247 * v246, v241, type metadata accessor for BoxedTileInfoBearer);
        v249 = v398;
        v250 = &v399[v248];
        v251 = *(v399 + 2);
        if (v398)
        {

          sub_1D1C6E730(v241, v250, v251, v249 + 2, (v249 + 32));
          v253 = v252;

          if ((v253 & 1) == 0)
          {
            goto LABEL_146;
          }
        }

        else if (v251)
        {
          v254 = v389;
          while (1)
          {
            sub_1D1C66B60(v250, v254, type metadata accessor for BoxedTileInfoBearer);
            v255 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
            sub_1D1C72E20(v254, type metadata accessor for BoxedTileInfoBearer);
            if (v255)
            {
              break;
            }

            v250 += v247;
            if (!--v251)
            {
              goto LABEL_142;
            }
          }

LABEL_146:
          v241 = v376;
          goto LABEL_143;
        }

LABEL_142:
        v241 = v376;
        sub_1D1C6D608(v376);
LABEL_143:
        ++v246;
        sub_1D1C72E20(v241, type metadata accessor for BoxedTileInfoBearer);
      }

      while (v246 != v245);
    }

    v240 = v361;
  }

  v256 = v359;
  if ((~v394 & 0x14) != 0)
  {
    v276 = v377;
  }

  else
  {
    v257 = *&v240[*(v393 + 20)];
    MEMORY[0x1EEE9AC00](v359);
    *(&v353 - 2) = v240;

    v258 = v363;
    v259 = sub_1D186645C(sub_1D1C75198, (&v353 - 4), v257);
    v363 = v258;
    v260 = sub_1D1C58248(v259);

    sub_1D1C58920(v260);
    v392 = v261;
    v263 = v262;
    v264 = *(v262 + 16);
    v265 = v382;
    if (v264)
    {
      v266 = 0;
      v267 = *(v360 + 72);
      v268 = (*(v360 + 80) + 32) & ~*(v360 + 80);
      do
      {
        sub_1D1C66B60(v263 + v268 + v267 * v266, v265, type metadata accessor for BoxedTileInfoBearer);
        v269 = v398;
        v270 = &v399[v268];
        v271 = *(v399 + 2);
        if (v398)
        {

          sub_1D1C6E730(v265, v270, v271, v269 + 2, (v269 + 32));
          v273 = v272;

          if ((v273 & 1) == 0)
          {
            goto LABEL_157;
          }
        }

        else
        {
          v274 = v389;
          if (v271)
          {
            do
            {
              sub_1D1C66B60(v270, v274, type metadata accessor for BoxedTileInfoBearer);
              v275 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
              sub_1D1C72E20(v274, type metadata accessor for BoxedTileInfoBearer);
              if (v275)
              {
                goto LABEL_157;
              }

              v270 += v267;
            }

            while (--v271);
          }
        }

        sub_1D1C6D608(v382);
LABEL_157:
        ++v266;
        v265 = v382;
        sub_1D1C72E20(v382, type metadata accessor for BoxedTileInfoBearer);
      }

      while (v266 != v264);
    }

    v276 = v377;
    v256 = v359;
  }

  v277 = v360;
  if ((v394 & 0x20) == 0)
  {

    goto LABEL_182;
  }

  sub_1D1C58920(v256);
  v394 = v279;
  v281 = v280;
  v282 = *(v280 + 16);
  if (v282)
  {
    v283 = 0;
    v284 = *(v277 + 72);
    v285 = (*(v277 + 80) + 32) & ~*(v277 + 80);
    do
    {
      sub_1D1C66B60(v281 + v285 + v284 * v283, v276, type metadata accessor for BoxedTileInfoBearer);
      v286 = v398;
      v287 = &v399[v285];
      v288 = *(v399 + 2);
      if (v398)
      {

        sub_1D1C6E730(v276, v287, v288, v286 + 2, (v286 + 32));
        v290 = v289;

        if ((v290 & 1) == 0)
        {
          goto LABEL_175;
        }
      }

      else if (v288)
      {
        v291 = v389;
        while (1)
        {
          sub_1D1C66B60(v287, v291, type metadata accessor for BoxedTileInfoBearer);
          v292 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
          sub_1D1C72E20(v291, type metadata accessor for BoxedTileInfoBearer);
          if (v292)
          {
            break;
          }

          v287 += v284;
          if (!--v288)
          {
            goto LABEL_171;
          }
        }

LABEL_175:
        v276 = v377;
        goto LABEL_172;
      }

LABEL_171:
      v276 = v377;
      sub_1D1C6D608(v377);
LABEL_172:
      ++v283;
      sub_1D1C72E20(v276, type metadata accessor for BoxedTileInfoBearer);
    }

    while (v283 != v282);
  }

LABEL_182:
  v293 = v361;
  if (v361[*(v393 + 48)] == 1)
  {
    sub_1D1C5A148();
    v295 = sub_1D1C74E6C(v294);
    sub_1D1C58920(v295);
    v394 = v296;
    v298 = v297;

    v299 = *(v298 + 16);
    if (v299)
    {
      v300 = 0;
      v301 = *(v360 + 72);
      v302 = (*(v360 + 80) + 32) & ~*(v360 + 80);
      v303 = v375;
      do
      {
        sub_1D1C66B60(v298 + v302 + v301 * v300, v303, type metadata accessor for BoxedTileInfoBearer);
        v304 = v398;
        v305 = &v399[v302];
        v306 = *(v399 + 2);
        if (v398)
        {

          sub_1D1C6E730(v303, v305, v306, v304 + 2, (v304 + 32));
          v308 = v307;

          if ((v308 & 1) == 0)
          {
            goto LABEL_189;
          }
        }

        else if (v306)
        {
          v309 = v389;
          while (1)
          {
            sub_1D1C66B60(v305, v309, type metadata accessor for BoxedTileInfoBearer);
            v310 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
            sub_1D1C72E20(v309, type metadata accessor for BoxedTileInfoBearer);
            if (v310)
            {
              break;
            }

            v305 += v301;
            if (!--v306)
            {
              goto LABEL_185;
            }
          }

LABEL_189:
          v303 = v375;
          goto LABEL_186;
        }

LABEL_185:
        v303 = v375;
        sub_1D1C6D608(v375);
LABEL_186:
        ++v300;
        sub_1D1C72E20(v303, type metadata accessor for BoxedTileInfoBearer);
      }

      while (v300 != v299);
    }

    v293 = v361;
  }

  if (v293[*(v393 + 40)])
  {
    v311 = *&v293[v355[17]];
    MEMORY[0x1EEE9AC00](v278);
    *(&v353 - 2) = v293;
    v312 = v363;
    v314 = sub_1D178659C(sub_1D1C7517C, (&v353 - 4), v313);
    v363 = v312;
    sub_1D1C58920(v314);
    v316 = v315;
    v318 = v317;
    v319 = v398;
    v320 = v399;

    v394 = v319;
    v321 = sub_1D1C66734(v319, v320, v316, v318);
    v323 = v322;
    v400 = v321;
    v401 = v322;
    v324 = *(v320 + 16);
    v393 = v321;

    v392 = v323;

    v325 = v383;
    if (v324)
    {
      v326 = 0;
      v327 = *(v360 + 72);
      v328 = (*(v360 + 80) + 32) & ~*(v360 + 80);
      do
      {
        sub_1D1C66B60(v320 + v328 + v327 * v326, v325, type metadata accessor for BoxedTileInfoBearer);
        v329 = v400;
        v330 = &v401[v328];
        v331 = *(v401 + 2);
        if (v400)
        {

          sub_1D1C6E730(v325, v330, v331, v329 + 2, (v329 + 32));
          v333 = v332;

          if ((v333 & 1) == 0)
          {
            goto LABEL_200;
          }
        }

        else if (v331)
        {
          do
          {
            v334 = v389;
            sub_1D1C66B60(v330, v389, type metadata accessor for BoxedTileInfoBearer);
            v335 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
            sub_1D1C72E20(v334, type metadata accessor for BoxedTileInfoBearer);
            if (v335)
            {
              goto LABEL_200;
            }

            v330 += v327;
          }

          while (--v331);
        }

        sub_1D1C6D608(v383);
LABEL_200:
        ++v326;
        v325 = v383;
        sub_1D1C72E20(v383, type metadata accessor for BoxedTileInfoBearer);
      }

      while (v326 != v324);
    }

    v336 = v401;
    v398 = v400;
    v399 = v401;
  }

  else
  {
    v336 = v399;
  }

  v400 = v336;

  v54 = v363;
  sub_1D1C66BC8(&v400);
  if (v54)
  {
LABEL_228:

    __break(1u);
    return result;
  }

  v337 = v400;
  v338 = *(v400 + 2);
  if (v338)
  {
    v397 = MEMORY[0x1E69E7CC0];
    sub_1D178CF40(0, v338, 0);
    v339 = v397;
    v340 = &v337[(*(v360 + 80) + 32) & ~*(v360 + 80)];
    v341 = *(v360 + 72);
    do
    {
      v342 = v389;
      sub_1D1C66B60(v340, v389, type metadata accessor for BoxedTileInfoBearer);
      sub_1D17419CC(v342 + *(v384 + 20), &v400);
      sub_1D1C72E20(v342, type metadata accessor for BoxedTileInfoBearer);
      v397 = v339;
      v344 = *(v339 + 16);
      v343 = *(v339 + 24);
      if (v344 >= v343 >> 1)
      {
        sub_1D178CF40((v343 > 1), v344 + 1, 1);
      }

      v345 = v403;
      v346 = v404;
      v347 = __swift_mutable_project_boxed_opaque_existential_1(&v400, v403);
      v348 = *(*(v345 - 8) + 64);
      MEMORY[0x1EEE9AC00](v347);
      v350 = &v353 - ((v349 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v351 + 16))(v350);
      sub_1D1D20ADC(v344, v350, &v397, v345, v346);
      __swift_destroy_boxed_opaque_existential_1(&v400);
      v339 = v397;
      v340 += v341;
      --v338;
    }

    while (v338);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v339;
}

uint64_t sub_1D1C66734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for BoxedTileInfoBearer(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v16 = &v27 - v15;
  v31 = 0;
  v32 = MEMORY[0x1E69E7CC0];
  v17 = *(a4 + 16);
  if (!v17)
  {

    return 0;
  }

  v18 = 0;
  v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v29 = a4 + v19;
  v30 = v14;
  v27 = a3;
  v28 = a2 + v19;
  while (v18 < v17)
  {
    v20 = *(v14 + 72);
    sub_1D1C66B60(v29 + v20 * v18, v16, type metadata accessor for BoxedTileInfoBearer);
    v21 = a2;
    v22 = *(a2 + 16);
    if (a1)
    {

      sub_1D1C6E730(v16, v28, v22, (a1 + 16), a1 + 32);
      v24 = v23;

      if (v24)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v25 = v28;
      if (!v22)
      {
        goto LABEL_4;
      }

      while (1)
      {
        sub_1D1C66B60(v25, v12, type metadata accessor for BoxedTileInfoBearer);
        v26 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
        sub_1D1C72E20(v12, type metadata accessor for BoxedTileInfoBearer);
        if (v26)
        {
          break;
        }

        v25 += v20;
        if (!--v22)
        {
          goto LABEL_4;
        }
      }
    }

    sub_1D1C6F794(v16);
LABEL_4:
    ++v18;
    result = sub_1D1C72E20(v16, type metadata accessor for BoxedTileInfoBearer);
    v17 = *(a4 + 16);
    a2 = v21;
    v14 = v30;
    if (v18 == v17)
    {

      return v31;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1C669BC@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1D1C6406C();
  result = sub_1D1C72E20(v1, type metadata accessor for TileInfoBearerCollection);
  *a1 = v3;
  a1[1] = 0;
  return result;
}

uint64_t sub_1D1C66A0C()
{
  v1 = sub_1D1C27794(v0);
  sub_1D1C72E20(v0, type metadata accessor for TileInfoBearerCollection);
  return v1;
}

uint64_t sub_1D1C66A58(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D1C6406C();
  result = sub_1D1C72E20(v3, type metadata accessor for TileInfoBearerCollection);
  if (!a2)
  {
    a3 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_11:
    *a1 = v7;
    a1[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(v7 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = v7 + 32;
      while (v10 < *(v7 + 16))
      {
        result = sub_1D17419CC(v11, a2);
        if (a3 - 1 == v10)
        {
          goto LABEL_11;
        }

        a2 += 40;
        ++v10;
        v11 += 40;
        if (v9 == v10)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_13;
    }

LABEL_9:
    a3 = v9;
    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1D1C66B60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1C66BC8(void **a1)
{
  v2 = *(type metadata accessor for BoxedTileInfoBearer(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D1E0BFF4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D1C66C70(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1D1C66C70(uint64_t *a1)
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
        type metadata accessor for BoxedTileInfoBearer(0);
        v6 = sub_1D1E67C8C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for BoxedTileInfoBearer(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D1C67D34(v8, v9, a1, v4);
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
    return sub_1D1C66D9C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D1C66D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v175 = a1;
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v135 = &v133[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v138 = &v133[-v13];
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v14 = *(*(v142 - 8) + 64);
  MEMORY[0x1EEE9AC00](v142);
  v161 = &v133[-v15];
  v16 = type metadata accessor for BoxedTileInfoBearer.TileSort(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v154 = &v133[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x1EEE9AC00](v18);
  v153 = &v133[-v21];
  v22 = MEMORY[0x1EEE9AC00](v20);
  v151 = &v133[-v23];
  v24 = MEMORY[0x1EEE9AC00](v22);
  v155 = &v133[-v25];
  v26 = MEMORY[0x1EEE9AC00](v24);
  v163 = &v133[-v27];
  v28 = MEMORY[0x1EEE9AC00](v26);
  v162 = &v133[-v29];
  v30 = MEMORY[0x1EEE9AC00](v28);
  v160 = &v133[-v31];
  MEMORY[0x1EEE9AC00](v30);
  v164 = &v133[-v32];
  v169 = type metadata accessor for StaticUserActionPrediction();
  v33 = *(v169 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x1EEE9AC00](v169);
  v145 = &v133[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v133[-v38];
  v40 = MEMORY[0x1EEE9AC00](v37);
  v150 = &v133[-v41];
  MEMORY[0x1EEE9AC00](v40);
  v152 = &v133[-v42];
  v167 = type metadata accessor for BoxedTileInfoBearer(0);
  v43 = *(*(v167 - 8) + 64);
  v44 = MEMORY[0x1EEE9AC00](v167);
  v158 = &v133[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = MEMORY[0x1EEE9AC00](v44);
  v48 = &v133[-v47];
  result = MEMORY[0x1EEE9AC00](v46);
  v170 = &v133[-v51];
  v144 = a2;
  if (a3 != a2)
  {
    v52 = *a4;
    v53 = *(v50 + 72);
    v54 = (v33 + 48);
    v140 = (v8 + 48);
    v134 = (v8 + 32);
    v137 = (v8 + 8);
    v55 = v52 + v53 * (a3 - 1);
    v156 = -v53;
    v157 = v52;
    v56 = v175 - a3;
    v143 = v53;
    v57 = v52 + v53 * a3;
    v159 = (v33 + 48);
    v141 = v7;
    v139 = v39;
LABEL_5:
    v149 = a3;
    v146 = v57;
    v175 = v57;
    v147 = v56;
    v58 = v56;
    v148 = v55;
    while (1)
    {
      v166 = v58;
      v59 = v39;
      v60 = v170;
      sub_1D1C66B60(v175, v170, type metadata accessor for BoxedTileInfoBearer);
      v165 = v55;
      sub_1D1C66B60(v55, v48, type metadata accessor for BoxedTileInfoBearer);
      v61 = *(v167 + 24);
      v62 = v164;
      sub_1D1C66B60(&v60[v61], v164, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v63 = *v54;
      v64 = v169;
      v65 = (*v54)(v62, 3, v169);
      v66 = v62;
      v68 = v160;
      v67 = v161;
      v168 = v61;
      if (v65)
      {
        goto LABEL_9;
      }

      v69 = v152;
      sub_1D1C72E80(v164, v152, type metadata accessor for StaticUserActionPrediction);
      sub_1D1C66B60(&v48[v61], v68, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v70 = v63;
      if (v63(v68, 3, v64))
      {
        break;
      }

      v95 = v68;
      v96 = v150;
      sub_1D1C72E80(v95, v150, type metadata accessor for StaticUserActionPrediction);
      v97 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      v98 = v96;
      v79 = v169;
      v75 = v59;
      if ((v97 & 1) == 0 || *&v69[*(v169 + 20)] != *&v98[*(v169 + 20)])
      {
        goto LABEL_35;
      }

      v99 = *(v169 + 24);
      v100 = *(v142 + 48);
      v101 = &v69[v99];
      v102 = v98;
      sub_1D1741C08(v101, v67, &qword_1EC642590, qword_1D1E71260);
      v103 = v100;
      sub_1D1741C08(&v102[v99], v67 + v100, &qword_1EC642590, qword_1D1E71260);
      v104 = *v140;
      v105 = v67;
      v106 = v67;
      v107 = v141;
      if ((*v140)(v105, 1, v141) == 1)
      {
        v108 = v104(v106 + v103, 1, v107);
        v79 = v169;
        v69 = v152;
        if (v108 != 1)
        {
          goto LABEL_34;
        }

        sub_1D1741A30(v106, &qword_1EC642590, qword_1D1E71260);
        v98 = v150;
        v75 = v139;
      }

      else
      {
        v109 = v138;
        sub_1D1741C08(v106, v138, &qword_1EC642590, qword_1D1E71260);
        if (v104(v106 + v103, 1, v107) == 1)
        {
          (*v137)(v109, v107);
          v79 = v169;
          v69 = v152;
LABEL_34:
          sub_1D1741A30(v106, &qword_1EC642980, &unk_1D1E6E6E0);
          v98 = v150;
          v75 = v139;
LABEL_35:
          sub_1D1C72E20(v98, type metadata accessor for StaticUserActionPrediction);
          sub_1D1C72E20(v69, type metadata accessor for StaticUserActionPrediction);
          goto LABEL_36;
        }

        v127 = v106 + v103;
        v128 = v135;
        (*v134)(v135, v127, v107);
        sub_1D1C75134(&qword_1EE07D170, MEMORY[0x1E69695A8]);
        v136 = sub_1D1E6775C();
        v129 = *v137;
        (*v137)(v128, v107);
        v129(v109, v107);
        sub_1D1741A30(v106, &qword_1EC642590, qword_1D1E71260);
        v79 = v169;
        v98 = v150;
        v69 = v152;
        v75 = v139;
        if ((v136 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      v130 = *(v79 + 28);
      v131 = v69[v130];
      v132 = v98[v130];
      sub_1D1C72E20(v98, type metadata accessor for StaticUserActionPrediction);
      v79 = v169;
      sub_1D1C72E20(v69, type metadata accessor for StaticUserActionPrediction);
      if (v131 == v132)
      {
LABEL_26:
        v39 = v75;
        v81 = v167;
        v82 = v170;
        v83 = &v170[*(v167 + 20)];
        v84 = v83[3];
        v85 = v83[4];
        __swift_project_boxed_opaque_existential_1(v83, v84);
        v173 = (*(v85 + 56))(v84, v85);
        v174 = v86;
        v87 = &v48[*(v81 + 20)];
        v89 = v87[3];
        v88 = v87[4];
        __swift_project_boxed_opaque_existential_1(v87, v89);
        v171 = (*(v88 + 56))(v89, v88);
        v172 = v90;
        sub_1D17D8EF0();
        v91 = sub_1D1E6860C();

        v92 = v91 == -1;
        v94 = v165;
        v93 = v166;
        goto LABEL_54;
      }

LABEL_36:
      v110 = v48;
      v111 = v170;
      v112 = v70;
      v113 = v168;
      v114 = v155;
      sub_1D1C66B60(&v170[v168], v155, type metadata accessor for BoxedTileInfoBearer.TileSort);
      if (!v112(v114, 3, v79))
      {
        sub_1D1C72E80(v155, v75, type metadata accessor for StaticUserActionPrediction);
        v114 = v151;
        sub_1D1C66B60(&v110[v113], v151, type metadata accessor for BoxedTileInfoBearer.TileSort);
        if (!v112(v114, 3, v79))
        {
          v124 = v145;
          sub_1D1C72E80(v114, v145, type metadata accessor for StaticUserActionPrediction);
          v125 = *(v75 + *(v79 + 20));
          v39 = v75;
          sub_1D1C72E20(v75, type metadata accessor for StaticUserActionPrediction);
          v126 = *&v124[*(v79 + 20)];
          sub_1D1C72E20(v124, type metadata accessor for StaticUserActionPrediction);
          v92 = v126 < v125;
          v82 = v170;
          v94 = v165;
          v93 = v166;
          v48 = v110;
          goto LABEL_54;
        }

        sub_1D1C72E20(v75, type metadata accessor for StaticUserActionPrediction);
        v111 = v170;
        v113 = v168;
      }

      sub_1D1C72E20(v114, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v115 = v153;
      sub_1D1C66B60(&v111[v113], v153, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v116 = v112(v115, 3, v79);
      if (v116 > 1)
      {
        v93 = v166;
        if (v116 == 2)
        {
          v117 = 3;
        }

        else
        {
          v117 = 4;
        }
      }

      else
      {
        v93 = v166;
        if (v116)
        {
          v117 = 2;
        }

        else
        {
          sub_1D1C72E20(v153, type metadata accessor for BoxedTileInfoBearer.TileSort);
          v117 = 1;
        }
      }

      v39 = v75;
      v118 = v154;
      sub_1D1C66B60(&v110[v168], v154, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v119 = v112(v118, 3, v169);
      if (v119 > 1)
      {
        v94 = v165;
        if (v119 == 2)
        {
          v120 = 3;
        }

        else
        {
          v120 = 4;
        }
      }

      else
      {
        v94 = v165;
        if (v119)
        {
          v120 = 2;
        }

        else
        {
          sub_1D1C72E20(v154, type metadata accessor for BoxedTileInfoBearer.TileSort);
          v120 = 1;
        }
      }

      v48 = v110;
      v92 = v117 < v120;
      v82 = v170;
LABEL_54:
      sub_1D1C72E20(v48, type metadata accessor for BoxedTileInfoBearer);
      result = sub_1D1C72E20(v82, type metadata accessor for BoxedTileInfoBearer);
      v54 = v159;
      if (!v92)
      {
        goto LABEL_4;
      }

      if (!v157)
      {
        __break(1u);
        return result;
      }

      v121 = v175;
      v122 = v158;
      sub_1D1C72E80(v175, v158, type metadata accessor for BoxedTileInfoBearer);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D1C72E80(v122, v94, type metadata accessor for BoxedTileInfoBearer);
      v55 = v94 + v156;
      v175 = v121 + v156;
      v123 = __CFADD__(v93, 1);
      v58 = v93 + 1;
      if (v123)
      {
LABEL_4:
        a3 = v149 + 1;
        v55 = v148 + v143;
        v56 = v147 - 1;
        v57 = v146 + v143;
        if (v149 + 1 == v144)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    sub_1D1C72E20(v69, type metadata accessor for StaticUserActionPrediction);
    v66 = v68;
    v64 = v169;
    v60 = v170;
    v61 = v168;
LABEL_9:
    sub_1D1C72E20(v66, type metadata accessor for BoxedTileInfoBearer.TileSort);
    v71 = v162;
    sub_1D1C66B60(&v60[v61], v162, type metadata accessor for BoxedTileInfoBearer.TileSort);
    v72 = v64;
    v73 = v63;
    v74 = v63(v71, 3, v72);
    if (v74 > 1)
    {
      v75 = v59;
      if (v74 == 2)
      {
        v76 = 3;
      }

      else
      {
        v76 = 4;
      }
    }

    else
    {
      v75 = v59;
      if (v74)
      {
        v76 = 2;
      }

      else
      {
        sub_1D1C72E20(v162, type metadata accessor for BoxedTileInfoBearer.TileSort);
        v76 = 1;
      }
    }

    v77 = v163;
    sub_1D1C66B60(&v48[v61], v163, type metadata accessor for BoxedTileInfoBearer.TileSort);
    v78 = v77;
    v79 = v169;
    v70 = v73;
    v80 = v73(v78, 3, v169);
    if (v80 > 1)
    {
      if (v80 == 2)
      {
        if (v76 == 3)
        {
          goto LABEL_26;
        }
      }

      else if (v76 == 4)
      {
        goto LABEL_26;
      }
    }

    else if (v80)
    {
      if (v76 == 2)
      {
        goto LABEL_26;
      }
    }

    else
    {
      sub_1D1C72E20(v163, type metadata accessor for BoxedTileInfoBearer.TileSort);
      if (v76 == 1)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_36;
  }

  return result;
}

uint64_t sub_1D1C67D34(int64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v298 = a1;
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v302 = &v289 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v289 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v289 - v16;
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v18 = *(*(v308 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v308);
  v342 = &v289 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v292 = &v289 - v21;
  v22 = type metadata accessor for BoxedTileInfoBearer.TileSort(0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v336 = &v289 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v335 = &v289 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v328 = &v289 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v338 = &v289 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v345 = &v289 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v344 = &v289 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v343 = &v289 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v346 = &v289 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v313 = &v289 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v312 = &v289 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v304 = &v289 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v317 = &v289 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v322 = &v289 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v321 = &v289 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v305 = &v289 - v53;
  MEMORY[0x1EEE9AC00](v52);
  v324 = &v289 - v54;
  v351 = type metadata accessor for StaticUserActionPrediction();
  v55 = *(v351 - 1);
  v56 = *(v55 + 64);
  v57 = MEMORY[0x1EEE9AC00](v351);
  v314 = &v289 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v327 = &v289 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v325 = &v289 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v337 = &v289 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v295 = &v289 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v303 = &v289 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v301 = &v289 - v70;
  MEMORY[0x1EEE9AC00](v69);
  v332 = &v289 - v71;
  v347 = type metadata accessor for BoxedTileInfoBearer(0);
  v323 = *(v347 - 8);
  v72 = *(v323 + 64);
  v73 = MEMORY[0x1EEE9AC00](v347);
  v310 = &v289 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = MEMORY[0x1EEE9AC00](v73);
  v341 = &v289 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v78 = MEMORY[0x1EEE9AC00](v77);
  v334 = &v289 - v79;
  v80 = MEMORY[0x1EEE9AC00](v78);
  v81 = MEMORY[0x1EEE9AC00](v80);
  v329 = &v289 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v294 = &v289 - v84;
  result = MEMORY[0x1EEE9AC00](v83);
  v293 = &v289 - v88;
  v326 = a3;
  v89 = a3[1];
  if (v89 < 1)
  {
    v91 = MEMORY[0x1E69E7CC0];
    v95 = v4;
LABEL_206:
    v89 = *v298;
    if (!*v298)
    {
      goto LABEL_245;
    }

    v8 = v91;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v8;
LABEL_209:
      v356 = result;
      v8 = *(result + 16);
      if (v8 >= 2)
      {
        while (*v326)
        {
          v285 = *(result + 16 * v8);
          v286 = result;
          v287 = *(result + 16 * (v8 - 1) + 40);
          sub_1D1C6ADA4(*v326 + *(v323 + 72) * v285, *v326 + *(v323 + 72) * *(result + 16 * (v8 - 1) + 32), *v326 + *(v323 + 72) * v287, v89);
          if (v95)
          {
          }

          if (v287 < v285)
          {
            goto LABEL_232;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v286 = sub_1D1E0BE44(v286);
          }

          if (v8 - 2 >= *(v286 + 2))
          {
            goto LABEL_233;
          }

          v288 = &v286[16 * v8];
          *v288 = v285;
          *(v288 + 1) = v287;
          v356 = v286;
          sub_1D1E0BDB8(v8 - 1);
          result = v356;
          v8 = *(v356 + 16);
          if (v8 <= 1)
          {
          }
        }

        goto LABEL_243;
      }
    }

LABEL_239:
    result = sub_1D1E0BE44(v8);
    goto LABEL_209;
  }

  v350 = v86;
  v299 = v15;
  v307 = v7;
  v291 = a4;
  v90 = 0;
  v349 = (v55 + 48);
  v306 = (v8 + 48);
  v296 = (v8 + 32);
  v300 = (v8 + 8);
  v91 = MEMORY[0x1E69E7CC0];
  v290 = v17;
  v92 = v332;
  v93 = v347;
  v94 = v334;
  v333 = v87;
  v95 = v4;
LABEL_5:
  v96 = v90;
  v311 = v91;
  if (v90 + 1 >= v89)
  {
    v89 = v90 + 1;
    goto LABEL_78;
  }

  v97 = v90;
  v98 = *v326;
  v340 = v98;
  v99 = *(v323 + 72);
  v348 = v98 + v99 * (v90 + 1);
  v100 = v293;
  sub_1D1C66B60(v348, v293, type metadata accessor for BoxedTileInfoBearer);
  v101 = v98 + v99 * v97;
  v102 = v294;
  sub_1D1C66B60(v101, v294, type metadata accessor for BoxedTileInfoBearer);
  LODWORD(v320) = sub_1D1C70258(v100, v102);
  v8 = type metadata accessor for BoxedTileInfoBearer;
  sub_1D1C72E20(v102, type metadata accessor for BoxedTileInfoBearer);
  sub_1D1C72E20(v100, type metadata accessor for BoxedTileInfoBearer);
  v297 = v97;
  v103 = v97 + 2;
  v104 = v333;
  v339 = v99;
  result = v340 + v99 * v103;
  v105 = v329;
  v331 = v89;
  while (v89 != v103)
  {
    v330 = v95;
    v340 = result;
    sub_1D1C66B60(result, v105, type metadata accessor for BoxedTileInfoBearer);
    sub_1D1C66B60(v348, v104, type metadata accessor for BoxedTileInfoBearer);
    v108 = *(v347 + 24);
    v109 = v324;
    sub_1D1C66B60(v105 + v108, v324, type metadata accessor for BoxedTileInfoBearer.TileSort);
    v110 = v105;
    v111 = *v349;
    if ((*v349)(v109, 3, v351))
    {
      goto LABEL_15;
    }

    sub_1D1C72E80(v324, v92, type metadata accessor for StaticUserActionPrediction);
    v109 = v305;
    sub_1D1C66B60(v333 + v108, v305, type metadata accessor for BoxedTileInfoBearer.TileSort);
    if (v111(v109, 3, v351))
    {
      sub_1D1C72E20(v92, type metadata accessor for StaticUserActionPrediction);
      v110 = v329;
LABEL_15:
      sub_1D1C72E20(v109, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v112 = v321;
      sub_1D1C66B60(&v110[v108], v321, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v113 = v111(v112, 3, v351);
      if (v113 > 1)
      {
        v114 = v333;
        if (v113 == 2)
        {
          v115 = 3;
        }

        else
        {
          v115 = 4;
        }
      }

      else
      {
        v114 = v333;
        if (v113)
        {
          v115 = 2;
        }

        else
        {
          sub_1D1C72E20(v321, type metadata accessor for BoxedTileInfoBearer.TileSort);
          v115 = 1;
        }
      }

      v116 = v114 + v108;
      v117 = v322;
      sub_1D1C66B60(v116, v322, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v118 = v111(v117, 3, v351);
      if (v118 > 1)
      {
        v92 = v332;
        if (v118 == 2)
        {
          if (v115 == 3)
          {
            goto LABEL_32;
          }
        }

        else if (v115 == 4)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v92 = v332;
        if (v118)
        {
          if (v115 == 2)
          {
            goto LABEL_32;
          }
        }

        else
        {
          sub_1D1C72E20(v322, type metadata accessor for BoxedTileInfoBearer.TileSort);
          if (v115 == 1)
          {
            goto LABEL_32;
          }
        }
      }

      goto LABEL_43;
    }

    v131 = v109;
    v132 = v301;
    sub_1D1C72E80(v131, v301, type metadata accessor for StaticUserActionPrediction);
    if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || *(v92 + v351[5]) != *(v132 + v351[5]))
    {
      goto LABEL_42;
    }

    v133 = v92;
    v134 = v351[6];
    v135 = *(v308 + 48);
    v136 = v292;
    sub_1D1741C08(v133 + v134, v292, &qword_1EC642590, qword_1D1E71260);
    v319 = v135;
    sub_1D1741C08(v132 + v134, v136 + v135, &qword_1EC642590, qword_1D1E71260);
    v137 = *v306;
    v138 = v307;
    if ((*v306)(v136, 1, v307) == 1)
    {
      if (v137(v136 + v319, 1, v138) != 1)
      {
        goto LABEL_41;
      }

      sub_1D1741A30(v136, &qword_1EC642590, qword_1D1E71260);
      v132 = v301;
      v94 = v334;
    }

    else
    {
      sub_1D1741C08(v136, v290, &qword_1EC642590, qword_1D1E71260);
      if (v137(v136 + v319, 1, v138) == 1)
      {
        (*v300)(v290, v138);
LABEL_41:
        sub_1D1741A30(v136, &qword_1EC642980, &unk_1D1E6E6E0);
        v132 = v301;
        v92 = v332;
        v94 = v334;
LABEL_42:
        sub_1D1C72E20(v132, type metadata accessor for StaticUserActionPrediction);
        sub_1D1C72E20(v92, type metadata accessor for StaticUserActionPrediction);
        goto LABEL_43;
      }

      v152 = v302;
      (*v296)(v302, v136 + v319, v138);
      sub_1D1C75134(&qword_1EE07D170, MEMORY[0x1E69695A8]);
      v153 = v290;
      LODWORD(v319) = sub_1D1E6775C();
      v154 = *v300;
      (*v300)(v152, v138);
      v154(v153, v138);
      sub_1D1741A30(v136, &qword_1EC642590, qword_1D1E71260);
      v132 = v301;
      v92 = v332;
      v94 = v334;
      if ((v319 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    v155 = v351[7];
    v156 = *(v332 + v155);
    v157 = *(v132 + v155);
    sub_1D1C72E20(v132, type metadata accessor for StaticUserActionPrediction);
    sub_1D1C72E20(v332, type metadata accessor for StaticUserActionPrediction);
    v158 = v156 == v157;
    v92 = v332;
    if (v158)
    {
LABEL_32:
      v119 = v347;
      v120 = v329;
      v121 = &v329[*(v347 + 20)];
      v123 = *(v121 + 3);
      v122 = *(v121 + 4);
      __swift_project_boxed_opaque_existential_1(v121, v123);
      v354 = (*(v122 + 56))(v123, v122);
      v355 = v124;
      v125 = v333;
      v126 = (v333 + *(v119 + 20));
      v128 = v126[3];
      v127 = v126[4];
      __swift_project_boxed_opaque_existential_1(v126, v128);
      v352 = (*(v127 + 56))(v128, v127);
      v353 = v129;
      sub_1D17D8EF0();
      v130 = sub_1D1E6860C();
      v105 = v120;
      v104 = v125;

      v107 = v130 == -1;
      goto LABEL_33;
    }

LABEL_43:
    v139 = v329;
    v140 = v317;
    sub_1D1C66B60(&v329[v108], v317, type metadata accessor for BoxedTileInfoBearer.TileSort);
    if (v111(v140, 3, v351))
    {
      goto LABEL_46;
    }

    v141 = v303;
    sub_1D1C72E80(v317, v303, type metadata accessor for StaticUserActionPrediction);
    v104 = v333;
    v140 = v304;
    sub_1D1C66B60(v333 + v108, v304, type metadata accessor for BoxedTileInfoBearer.TileSort);
    if (v111(v140, 3, v351))
    {
      sub_1D1C72E20(v141, type metadata accessor for StaticUserActionPrediction);
      v92 = v332;
      v139 = v329;
LABEL_46:
      sub_1D1C72E20(v140, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v142 = v312;
      sub_1D1C66B60(&v139[v108], v312, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v143 = v111(v142, 3, v351);
      if (v143 > 1)
      {
        v89 = v331;
        if (v143 == 2)
        {
          v144 = 3;
        }

        else
        {
          v144 = 4;
        }
      }

      else
      {
        v89 = v331;
        if (v143)
        {
          v144 = 2;
        }

        else
        {
          sub_1D1C72E20(v312, type metadata accessor for BoxedTileInfoBearer.TileSort);
          v144 = 1;
        }
      }

      v95 = v330;
      v104 = v333;
      v145 = v333 + v108;
      v146 = v313;
      sub_1D1C66B60(v145, v313, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v147 = v111(v146, 3, v351);
      if (v147 > 1)
      {
        v105 = v329;
        if (v147 == 2)
        {
          v106 = 3;
        }

        else
        {
          v106 = 4;
        }
      }

      else
      {
        v105 = v329;
        if (v147)
        {
          v106 = 2;
        }

        else
        {
          sub_1D1C72E20(v313, type metadata accessor for BoxedTileInfoBearer.TileSort);
          v106 = 1;
        }
      }

      v107 = v144 < v106;
      goto LABEL_10;
    }

    v148 = v295;
    sub_1D1C72E80(v140, v295, type metadata accessor for StaticUserActionPrediction);
    v149 = v351;
    v150 = *(v141 + v351[5]);
    sub_1D1C72E20(v141, type metadata accessor for StaticUserActionPrediction);
    v151 = *(v148 + v149[5]);
    sub_1D1C72E20(v148, type metadata accessor for StaticUserActionPrediction);
    v107 = v151 < v150;
    v92 = v332;
    v105 = v329;
LABEL_33:
    v89 = v331;
    v95 = v330;
LABEL_10:
    v8 = type metadata accessor for BoxedTileInfoBearer;
    sub_1D1C72E20(v104, type metadata accessor for BoxedTileInfoBearer);
    sub_1D1C72E20(v105, type metadata accessor for BoxedTileInfoBearer);
    ++v103;
    result = v340 + v339;
    v348 += v339;
    if ((v320 & 1) != v107)
    {
      v89 = v103 - 1;
      break;
    }
  }

  v93 = v347;
  v96 = v297;
  if (v320)
  {
    if (v89 < v297)
    {
      goto LABEL_236;
    }

    if (v297 < v89)
    {
      v330 = v95;
      v159 = v339 * (v89 - 1);
      v160 = v89 * v339;
      v331 = v89;
      v161 = v89;
      v162 = v297;
      v163 = v297 * v339;
      do
      {
        if (v162 != --v161)
        {
          v164 = *v326;
          if (!*v326)
          {
            goto LABEL_242;
          }

          v8 = v164 + v163;
          sub_1D1C72E80(v164 + v163, v310, type metadata accessor for BoxedTileInfoBearer);
          if (v163 < v159 || v8 >= v164 + v160)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v163 != v159)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_1D1C72E80(v310, v164 + v159, type metadata accessor for BoxedTileInfoBearer);
        }

        ++v162;
        v159 -= v339;
        v160 -= v339;
        v163 += v339;
      }

      while (v162 < v161);
      v95 = v330;
      v93 = v347;
      v89 = v331;
      v96 = v297;
    }
  }

LABEL_78:
  v165 = v326[1];
  if (v89 >= v165)
  {
    goto LABEL_87;
  }

  if (__OFSUB__(v89, v96))
  {
    goto LABEL_235;
  }

  if (v89 - v96 >= v291)
  {
LABEL_87:
    v167 = v89;
    if (v89 < v96)
    {
      goto LABEL_234;
    }

    goto LABEL_88;
  }

  if (__OFADD__(v96, v291))
  {
    goto LABEL_237;
  }

  if (v96 + v291 >= v165)
  {
    v166 = v326[1];
  }

  else
  {
    v166 = v96 + v291;
  }

  if (v166 < v96)
  {
LABEL_238:
    __break(1u);
    goto LABEL_239;
  }

  if (v89 == v166)
  {
    goto LABEL_87;
  }

  v330 = v95;
  v215 = *v326;
  v216 = *(v323 + 72);
  v217 = *v326 + v216 * (v89 - 1);
  v339 = -v216;
  v297 = v96;
  v218 = v96 - v89;
  v309 = v216;
  v340 = v215;
  v219 = v215 + v89 * v216;
  v315 = v166;
  while (2)
  {
    v331 = v89;
    v318 = v219;
    v220 = v219;
    v319 = v218;
    v221 = v218;
    v320 = v217;
    v222 = v217;
    v223 = v343;
LABEL_143:
    v348 = v221;
    sub_1D1C66B60(v220, v94, type metadata accessor for BoxedTileInfoBearer);
    sub_1D1C66B60(v222, v350, type metadata accessor for BoxedTileInfoBearer);
    v224 = *(v93 + 24);
    v225 = v346;
    sub_1D1C66B60(v94 + v224, v346, type metadata accessor for BoxedTileInfoBearer.TileSort);
    v226 = *v349;
    v227 = (*v349)(v225, 3, v351);
    v228 = v225;
    v229 = v342;
    if (v227)
    {
LABEL_146:
      sub_1D1C72E20(v228, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v232 = v344;
      sub_1D1C66B60(v94 + v224, v344, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v233 = v226(v232, 3, v351);
      if (v233 > 1)
      {
        v235 = v350;
        if (v233 == 2)
        {
          v234 = 3;
        }

        else
        {
          v234 = 4;
        }
      }

      else
      {
        if (v233)
        {
          v234 = 2;
        }

        else
        {
          sub_1D1C72E20(v344, type metadata accessor for BoxedTileInfoBearer.TileSort);
          v234 = 1;
        }

        v235 = v350;
      }

      v236 = v345;
      sub_1D1C66B60(v235 + v224, v345, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v237 = v226(v236, 3, v351);
      if (v237 > 1)
      {
        if (v237 == 2)
        {
          if (v234 != 3)
          {
            goto LABEL_174;
          }
        }

        else if (v234 != 4)
        {
          goto LABEL_174;
        }
      }

      else if (v237)
      {
        if (v234 != 2)
        {
          goto LABEL_174;
        }
      }

      else
      {
        sub_1D1C72E20(v345, type metadata accessor for BoxedTileInfoBearer.TileSort);
        if (v234 != 1)
        {
          goto LABEL_174;
        }
      }

      goto LABEL_164;
    }

    v230 = v94;
    v231 = v337;
    sub_1D1C72E80(v346, v337, type metadata accessor for StaticUserActionPrediction);
    sub_1D1C66B60(v350 + v224, v223, type metadata accessor for BoxedTileInfoBearer.TileSort);
    if (v226(v223, 3, v351))
    {
      sub_1D1C72E20(v231, type metadata accessor for StaticUserActionPrediction);
      v228 = v223;
      v94 = v230;
      goto LABEL_146;
    }

    v251 = v325;
    sub_1D1C72E80(v223, v325, type metadata accessor for StaticUserActionPrediction);
    v252 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
    v253 = v251;
    v254 = v337;
    v94 = v230;
    if ((v252 & 1) == 0 || *(v337 + v351[5]) != *(v253 + v351[5]))
    {
      goto LABEL_173;
    }

    v255 = v351[6];
    v256 = *(v308 + 48);
    v257 = v253;
    sub_1D1741C08(v337 + v255, v229, &qword_1EC642590, qword_1D1E71260);
    v316 = v256;
    sub_1D1741C08(v257 + v255, v229 + v256, &qword_1EC642590, qword_1D1E71260);
    v258 = *v306;
    v259 = v229;
    v260 = v229;
    v261 = v307;
    if ((*v306)(v259, 1, v307) == 1)
    {
      if (v258(v260 + v316, 1, v261) == 1)
      {
        sub_1D1741A30(v260, &qword_1EC642590, qword_1D1E71260);
        v253 = v325;
        v254 = v337;
        v94 = v334;
        goto LABEL_200;
      }

LABEL_172:
      sub_1D1741A30(v260, &qword_1EC642980, &unk_1D1E6E6E0);
      v253 = v325;
      v254 = v337;
      v94 = v334;
      goto LABEL_173;
    }

    v262 = v299;
    sub_1D1741C08(v260, v299, &qword_1EC642590, qword_1D1E71260);
    if (v258(v260 + v316, 1, v261) == 1)
    {
      (*v300)(v262, v261);
      goto LABEL_172;
    }

    (*v296)(v302, v260 + v316, v261);
    sub_1D1C75134(&qword_1EE07D170, MEMORY[0x1E69695A8]);
    LODWORD(v316) = sub_1D1E6775C();
    v281 = *v300;
    (*v300)(v302, v261);
    v281(v262, v261);
    sub_1D1741A30(v260, &qword_1EC642590, qword_1D1E71260);
    v253 = v325;
    v254 = v337;
    v94 = v334;
    if ((v316 & 1) == 0)
    {
LABEL_173:
      sub_1D1C72E20(v253, type metadata accessor for StaticUserActionPrediction);
      sub_1D1C72E20(v254, type metadata accessor for StaticUserActionPrediction);
      goto LABEL_174;
    }

LABEL_200:
    v282 = v351[7];
    v283 = *(v254 + v282);
    v284 = *(v253 + v282);
    sub_1D1C72E20(v253, type metadata accessor for StaticUserActionPrediction);
    sub_1D1C72E20(v337, type metadata accessor for StaticUserActionPrediction);
    if (v283 == v284)
    {
LABEL_164:
      v238 = v347;
      v239 = (v94 + *(v347 + 20));
      v241 = v239[3];
      v240 = v239[4];
      __swift_project_boxed_opaque_existential_1(v239, v241);
      v354 = (*(v240 + 56))(v241, v240);
      v355 = v242;
      v243 = v350;
      v244 = (v350 + *(v238 + 20));
      v246 = v244[3];
      v245 = v244[4];
      __swift_project_boxed_opaque_existential_1(v244, v246);
      v352 = (*(v245 + 56))(v246, v245);
      v353 = v247;
      sub_1D17D8EF0();
      v248 = sub_1D1E6860C();

      v249 = v243;
      v94 = v334;
      v250 = v248 == -1;
      goto LABEL_193;
    }

LABEL_174:
    v263 = v338;
    sub_1D1C66B60(v94 + v224, v338, type metadata accessor for BoxedTileInfoBearer.TileSort);
    v264 = v94;
    if (v226(v263, 3, v351))
    {
      goto LABEL_177;
    }

    v265 = v327;
    sub_1D1C72E80(v338, v327, type metadata accessor for StaticUserActionPrediction);
    v263 = v328;
    sub_1D1C66B60(v350 + v224, v328, type metadata accessor for BoxedTileInfoBearer.TileSort);
    if (v226(v263, 3, v351))
    {
      sub_1D1C72E20(v265, type metadata accessor for StaticUserActionPrediction);
      v264 = v94;
LABEL_177:
      sub_1D1C72E20(v263, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v266 = v335;
      sub_1D1C66B60(v264 + v224, v335, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v267 = v226(v266, 3, v351);
      if (v267 > 1)
      {
        v269 = v350;
        if (v267 == 2)
        {
          v268 = 3;
        }

        else
        {
          v268 = 4;
        }
      }

      else
      {
        if (v267)
        {
          v268 = 2;
        }

        else
        {
          sub_1D1C72E20(v335, type metadata accessor for BoxedTileInfoBearer.TileSort);
          v268 = 1;
        }

        v269 = v350;
      }

      v94 = v264;
      v270 = v269 + v224;
      v271 = v336;
      sub_1D1C66B60(v270, v336, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v272 = v226(v271, 3, v351);
      if (v272 > 1)
      {
        if (v272 == 2)
        {
          v273 = 3;
        }

        else
        {
          v273 = 4;
        }
      }

      else if (v272)
      {
        v273 = 2;
      }

      else
      {
        sub_1D1C72E20(v336, type metadata accessor for BoxedTileInfoBearer.TileSort);
        v273 = 1;
      }

      v249 = v350;
      v250 = v268 < v273;
    }

    else
    {
      v277 = v314;
      sub_1D1C72E80(v263, v314, type metadata accessor for StaticUserActionPrediction);
      v278 = v351;
      v279 = *(v265 + v351[5]);
      sub_1D1C72E20(v265, type metadata accessor for StaticUserActionPrediction);
      v280 = *(v277 + v278[5]);
      sub_1D1C72E20(v277, type metadata accessor for StaticUserActionPrediction);
      v250 = v280 < v279;
      v249 = v350;
    }

LABEL_193:
    v8 = type metadata accessor for BoxedTileInfoBearer;
    sub_1D1C72E20(v249, type metadata accessor for BoxedTileInfoBearer);
    result = sub_1D1C72E20(v94, type metadata accessor for BoxedTileInfoBearer);
    if (!v250)
    {
      v93 = v347;
LABEL_141:
      v89 = v331 + 1;
      v217 = v320 + v309;
      v218 = v319 - 1;
      v219 = v318 + v309;
      v167 = v315;
      if (v331 + 1 != v315)
      {
        continue;
      }

      v95 = v330;
      v96 = v297;
      if (v315 < v297)
      {
        goto LABEL_234;
      }

LABEL_88:
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v91 = v311;
      }

      else
      {
        result = sub_1D177D070(0, *(v311 + 2) + 1, 1, v311);
        v91 = result;
      }

      v169 = *(v91 + 2);
      v168 = *(v91 + 3);
      v8 = v169 + 1;
      if (v169 >= v168 >> 1)
      {
        result = sub_1D177D070((v168 > 1), v169 + 1, 1, v91);
        v91 = result;
      }

      *(v91 + 2) = v8;
      v170 = &v91[16 * v169];
      *(v170 + 4) = v96;
      *(v170 + 5) = v167;
      v171 = *v298;
      if (!*v298)
      {
        goto LABEL_244;
      }

      v315 = v167;
      if (!v169)
      {
        v92 = v332;
LABEL_4:
        v89 = v326[1];
        v90 = v315;
        if (v315 >= v89)
        {
          goto LABEL_206;
        }

        goto LABEL_5;
      }

      v92 = v332;
      while (1)
      {
        v172 = v8 - 1;
        if (v8 >= 4)
        {
          break;
        }

        if (v8 == 3)
        {
          v173 = *(v91 + 4);
          v174 = *(v91 + 5);
          v183 = __OFSUB__(v174, v173);
          v175 = v174 - v173;
          v176 = v183;
LABEL_108:
          if (v176)
          {
            goto LABEL_223;
          }

          v189 = &v91[16 * v8];
          v191 = *v189;
          v190 = *(v189 + 1);
          v192 = __OFSUB__(v190, v191);
          v193 = v190 - v191;
          v194 = v192;
          if (v192)
          {
            goto LABEL_226;
          }

          v195 = &v91[16 * v172 + 32];
          v197 = *v195;
          v196 = *(v195 + 1);
          v183 = __OFSUB__(v196, v197);
          v198 = v196 - v197;
          if (v183)
          {
            goto LABEL_229;
          }

          if (__OFADD__(v193, v198))
          {
            goto LABEL_230;
          }

          if (v193 + v198 >= v175)
          {
            if (v175 < v198)
            {
              v172 = v8 - 2;
            }

            goto LABEL_129;
          }

          goto LABEL_122;
        }

        v199 = &v91[16 * v8];
        v201 = *v199;
        v200 = *(v199 + 1);
        v183 = __OFSUB__(v200, v201);
        v193 = v200 - v201;
        v194 = v183;
LABEL_122:
        if (v194)
        {
          goto LABEL_225;
        }

        v202 = &v91[16 * v172];
        v204 = *(v202 + 4);
        v203 = *(v202 + 5);
        v183 = __OFSUB__(v203, v204);
        v205 = v203 - v204;
        if (v183)
        {
          goto LABEL_228;
        }

        if (v205 < v193)
        {
          goto LABEL_4;
        }

LABEL_129:
        v210 = v172 - 1;
        if (v172 - 1 >= v8)
        {
          __break(1u);
LABEL_219:
          __break(1u);
LABEL_220:
          __break(1u);
LABEL_221:
          __break(1u);
LABEL_222:
          __break(1u);
LABEL_223:
          __break(1u);
LABEL_224:
          __break(1u);
LABEL_225:
          __break(1u);
LABEL_226:
          __break(1u);
LABEL_227:
          __break(1u);
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
          goto LABEL_238;
        }

        if (!*v326)
        {
          goto LABEL_241;
        }

        v211 = v91;
        v8 = *&v91[16 * v210 + 32];
        v212 = *&v91[16 * v172 + 40];
        sub_1D1C6ADA4(*v326 + *(v323 + 72) * v8, *v326 + *(v323 + 72) * *&v91[16 * v172 + 32], *v326 + *(v323 + 72) * v212, v171);
        if (v95)
        {
        }

        if (v212 < v8)
        {
          goto LABEL_219;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v213 = v211;
        }

        else
        {
          v213 = sub_1D1E0BE44(v211);
        }

        if (v210 >= *(v213 + 2))
        {
          goto LABEL_220;
        }

        v214 = &v213[16 * v210];
        *(v214 + 4) = v8;
        *(v214 + 5) = v212;
        v356 = v213;
        result = sub_1D1E0BDB8(v172);
        v91 = v356;
        v8 = *(v356 + 16);
        v92 = v332;
        v93 = v347;
        if (v8 <= 1)
        {
          goto LABEL_4;
        }
      }

      v177 = &v91[16 * v8 + 32];
      v178 = *(v177 - 64);
      v179 = *(v177 - 56);
      v183 = __OFSUB__(v179, v178);
      v180 = v179 - v178;
      if (v183)
      {
        goto LABEL_221;
      }

      v182 = *(v177 - 48);
      v181 = *(v177 - 40);
      v183 = __OFSUB__(v181, v182);
      v175 = v181 - v182;
      v176 = v183;
      if (v183)
      {
        goto LABEL_222;
      }

      v184 = &v91[16 * v8];
      v186 = *v184;
      v185 = *(v184 + 1);
      v183 = __OFSUB__(v185, v186);
      v187 = v185 - v186;
      if (v183)
      {
        goto LABEL_224;
      }

      v183 = __OFADD__(v175, v187);
      v188 = v175 + v187;
      if (v183)
      {
        goto LABEL_227;
      }

      if (v188 >= v180)
      {
        v206 = &v91[16 * v172 + 32];
        v208 = *v206;
        v207 = *(v206 + 1);
        v183 = __OFSUB__(v207, v208);
        v209 = v207 - v208;
        if (v183)
        {
          goto LABEL_231;
        }

        if (v175 < v209)
        {
          v172 = v8 - 2;
        }

        goto LABEL_129;
      }

      goto LABEL_108;
    }

    break;
  }

  v93 = v347;
  v274 = v348;
  v223 = v343;
  if (v340)
  {
    v8 = type metadata accessor for BoxedTileInfoBearer;
    v275 = v341;
    sub_1D1C72E80(v220, v341, type metadata accessor for BoxedTileInfoBearer);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D1C72E80(v275, v222, type metadata accessor for BoxedTileInfoBearer);
    v222 += v339;
    v220 += v339;
    v276 = __CFADD__(v274, 1);
    v221 = v274 + 1;
    if (v276)
    {
      goto LABEL_141;
    }

    goto LABEL_143;
  }

  __break(1u);
LABEL_241:
  __break(1u);
LABEL_242:
  __break(1u);
LABEL_243:
  __break(1u);
LABEL_244:
  __break(1u);
LABEL_245:
  __break(1u);
  return result;
}

uint64_t sub_1D1C6A11C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v63 = a5;
  v62 = type metadata accessor for StaticActionSet();
  v11 = *(*(v62 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v62);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v53 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v53 - v17;
  result = MEMORY[0x1EEE9AC00](v16);
  v22 = &v53 - v21;
  v24 = *(v23 + 72);
  if (!v24)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_64;
  }

  v25 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_65;
  }

  v26 = (a2 - a1) / v24;
  v67 = a1;
  v66 = a4;
  v61 = v24;
  if (v26 >= v25 / v24)
  {
    v28 = v25 / v24 * v24;
    v60 = v20;
    if (a4 < a2 || a2 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38 = a4 + v28;
    if (v28 >= 1)
    {
      v39 = -v61;
      v40 = a4 + v28;
      v41 = v15;
      v57 = a4;
      v58 = a1;
      v56 = -v61;
      do
      {
        v42 = a1;
        v54 = v38;
        v43 = a2 + v39;
        v59 = a2;
        while (1)
        {
          if (a2 <= v42)
          {
            v67 = a2;
            v65 = v54;
            goto LABEL_62;
          }

          v45 = a3;
          v55 = v38;
          v61 = v40;
          v46 = v40 + v39;
          sub_1D1C66B60(v40 + v39, v41, type metadata accessor for StaticActionSet);
          v47 = v6;
          v48 = v41;
          v49 = v60;
          sub_1D1C66B60(v43, v60, type metadata accessor for StaticActionSet);
          v50 = sub_1D1D0CC54(v48, v49, v63);
          if (v47)
          {
            sub_1D1C72E20(v49, type metadata accessor for StaticActionSet);
            sub_1D1C72E20(v48, type metadata accessor for StaticActionSet);
            v67 = v59;
            v65 = v55;
            goto LABEL_62;
          }

          v51 = v50;
          v64 = 0;
          v52 = v45 + v39;
          sub_1D1C72E20(v49, type metadata accessor for StaticActionSet);
          sub_1D1C72E20(v48, type metadata accessor for StaticActionSet);
          v41 = v48;
          if (v51)
          {
            break;
          }

          v38 = v46;
          a3 = v45 + v39;
          if (v45 < v61 || v52 >= v61)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v46;
            v6 = v64;
          }

          else
          {
            v6 = v64;
            if (v45 != v61)
            {
              swift_arrayInitWithTakeBackToFront();
              v38 = v46;
            }
          }

          v40 = v38;
          v42 = v58;
          v44 = v46 > v57;
          v39 = v56;
          a2 = v59;
          if (!v44)
          {
            goto LABEL_58;
          }
        }

        a3 = v45 + v39;
        if (v45 < v59 || v52 >= v59)
        {
          a2 = v43;
          swift_arrayInitWithTakeFrontToBack();
          v6 = v64;
          v39 = v56;
        }

        else
        {
          a2 = v43;
          v6 = v64;
          v39 = v56;
          if (v45 != v59)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v58;
        v40 = v61;
        v38 = v55;
      }

      while (v61 > v57);
    }

LABEL_58:
    v67 = a2;
    v65 = v38;
  }

  else
  {
    v27 = v26 * v24;
    if (a4 < a1 || a1 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v60 = a4 + v27;
    v65 = a4 + v27;
    if (v27 >= 1 && a2 < a3)
    {
      v30 = v61;
      v59 = v22;
      while (1)
      {
        v31 = a3;
        sub_1D1C66B60(a2, v22, type metadata accessor for StaticActionSet);
        sub_1D1C66B60(a4, v18, type metadata accessor for StaticActionSet);
        v32 = sub_1D1D0CC54(v22, v18, v63);
        if (v6)
        {
          break;
        }

        v33 = v32;
        v64 = 0;
        v34 = v18;
        v35 = a4;
        v36 = v34;
        sub_1D1C72E20(v34, type metadata accessor for StaticActionSet);
        sub_1D1C72E20(v22, type metadata accessor for StaticActionSet);
        if (v33)
        {
          v37 = a2 + v30;
          if (a1 < a2 || a1 >= v37)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v37;
            a3 = v31;
          }

          else
          {
            a3 = v31;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v37;
          }
        }

        else
        {
          a4 += v30;
          if (a1 < v35 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v31;
          }

          else
          {
            a3 = v31;
            if (a1 != v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v66 = v35 + v30;
        }

        v18 = v36;
        v30 = v61;
        a1 += v61;
        v67 = a1;
        v22 = v59;
        v6 = v64;
        if (a4 >= v60 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_1D1C72E20(v18, type metadata accessor for StaticActionSet);
      sub_1D1C72E20(v22, type metadata accessor for StaticActionSet);
    }
  }

LABEL_62:
  sub_1D1DC7114(&v67, &v66, &v65);

  return 1;
}

uint64_t sub_1D1C6A760(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v63 = a5;
  v62 = type metadata accessor for StaticService(0);
  v11 = *(*(v62 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v62);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v53 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v53 - v17;
  result = MEMORY[0x1EEE9AC00](v16);
  v22 = &v53 - v21;
  v24 = *(v23 + 72);
  if (!v24)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_64;
  }

  v25 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_65;
  }

  v26 = (a2 - a1) / v24;
  v67 = a1;
  v66 = a4;
  v61 = v24;
  if (v26 >= v25 / v24)
  {
    v28 = v25 / v24 * v24;
    v60 = v20;
    if (a4 < a2 || a2 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38 = a4 + v28;
    if (v28 >= 1)
    {
      v39 = -v61;
      v40 = a4 + v28;
      v41 = v15;
      v57 = a4;
      v58 = a1;
      v56 = -v61;
      do
      {
        v42 = a1;
        v54 = v38;
        v43 = a2 + v39;
        v59 = a2;
        while (1)
        {
          if (a2 <= v42)
          {
            v67 = a2;
            v65 = v54;
            goto LABEL_62;
          }

          v45 = a3;
          v55 = v38;
          v61 = v40;
          v46 = v40 + v39;
          sub_1D1C66B60(v40 + v39, v41, type metadata accessor for StaticService);
          v47 = v6;
          v48 = v41;
          v49 = v60;
          sub_1D1C66B60(v43, v60, type metadata accessor for StaticService);
          v50 = sub_1D1D0D384(v48, v49, v63);
          if (v47)
          {
            sub_1D1C72E20(v49, type metadata accessor for StaticService);
            sub_1D1C72E20(v48, type metadata accessor for StaticService);
            v67 = v59;
            v65 = v55;
            goto LABEL_62;
          }

          v51 = v50;
          v64 = 0;
          v52 = v45 + v39;
          sub_1D1C72E20(v49, type metadata accessor for StaticService);
          sub_1D1C72E20(v48, type metadata accessor for StaticService);
          v41 = v48;
          if (v51)
          {
            break;
          }

          v38 = v46;
          a3 = v45 + v39;
          if (v45 < v61 || v52 >= v61)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v46;
            v6 = v64;
          }

          else
          {
            v6 = v64;
            if (v45 != v61)
            {
              swift_arrayInitWithTakeBackToFront();
              v38 = v46;
            }
          }

          v40 = v38;
          v42 = v58;
          v44 = v46 > v57;
          v39 = v56;
          a2 = v59;
          if (!v44)
          {
            goto LABEL_58;
          }
        }

        a3 = v45 + v39;
        if (v45 < v59 || v52 >= v59)
        {
          a2 = v43;
          swift_arrayInitWithTakeFrontToBack();
          v6 = v64;
          v39 = v56;
        }

        else
        {
          a2 = v43;
          v6 = v64;
          v39 = v56;
          if (v45 != v59)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v58;
        v40 = v61;
        v38 = v55;
      }

      while (v61 > v57);
    }

LABEL_58:
    v67 = a2;
    v65 = v38;
  }

  else
  {
    v27 = v26 * v24;
    if (a4 < a1 || a1 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v60 = a4 + v27;
    v65 = a4 + v27;
    if (v27 >= 1 && a2 < a3)
    {
      v30 = v61;
      v59 = v22;
      while (1)
      {
        v31 = a3;
        sub_1D1C66B60(a2, v22, type metadata accessor for StaticService);
        sub_1D1C66B60(a4, v18, type metadata accessor for StaticService);
        v32 = sub_1D1D0D384(v22, v18, v63);
        if (v6)
        {
          break;
        }

        v33 = v32;
        v64 = 0;
        v34 = v18;
        v35 = a4;
        v36 = v34;
        sub_1D1C72E20(v34, type metadata accessor for StaticService);
        sub_1D1C72E20(v22, type metadata accessor for StaticService);
        if (v33)
        {
          v37 = a2 + v30;
          if (a1 < a2 || a1 >= v37)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v37;
            a3 = v31;
          }

          else
          {
            a3 = v31;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v37;
          }
        }

        else
        {
          a4 += v30;
          if (a1 < v35 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v31;
          }

          else
          {
            a3 = v31;
            if (a1 != v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v66 = v35 + v30;
        }

        v18 = v36;
        v30 = v61;
        a1 += v61;
        v67 = a1;
        v22 = v59;
        v6 = v64;
        if (a4 >= v60 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_1D1C72E20(v18, type metadata accessor for StaticService);
      sub_1D1C72E20(v22, type metadata accessor for StaticService);
    }
  }

LABEL_62:
  sub_1D1DC712C(&v67, &v66, &v65);

  return 1;
}

uint64_t sub_1D1C6ADA4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v243 = a3;
  v7 = sub_1D1E66A7C();
  v246 = *(v7 - 8);
  v8 = *(v246 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v210 = &v209 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v211 = &v209 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v213 = &v209 - v14;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v15 = *(*(v215 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v215);
  v233 = &v209 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v240 = &v209 - v18;
  v19 = type metadata accessor for BoxedTileInfoBearer.TileSort(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v224 = &v209 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v223 = &v209 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v218 = &v209 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v227 = &v209 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v232 = (&v209 - v30);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v231 = (&v209 - v32);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v228 = (&v209 - v34);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v235 = &v209 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v230 = (&v209 - v38);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v229 = &v209 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v220 = &v209 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v234 = &v209 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v242 = &v209 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v241 = &v209 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v237 = &v209 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v245 = &v209 - v51;
  v52 = type metadata accessor for StaticUserActionPrediction();
  v53 = *(v52 - 1);
  v54 = *(v53 + 64);
  v55 = MEMORY[0x1EEE9AC00](v52);
  v212 = &v209 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v217 = &v209 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v219 = &v209 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v226 = &v209 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v216 = &v209 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v236 = &v209 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v221 = &v209 - v68;
  MEMORY[0x1EEE9AC00](v67);
  v225 = &v209 - v69;
  v248 = type metadata accessor for BoxedTileInfoBearer(0);
  v70 = *(*(v248 - 8) + 64);
  v71 = MEMORY[0x1EEE9AC00](v248);
  v72 = MEMORY[0x1EEE9AC00](v71);
  v239 = &v209 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v76 = &v209 - v75;
  result = MEMORY[0x1EEE9AC00](v74);
  v80 = &v209 - v79;
  v244 = *(v81 + 72);
  if (!v244)
  {
    __break(1u);
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  if (a2 - a1 == 0x8000000000000000 && v244 == -1)
  {
    goto LABEL_167;
  }

  v82 = v243 - a2;
  if (v243 - a2 != 0x8000000000000000 || v244 != -1)
  {
    v214 = v7;
    v83 = (a2 - a1) / v244;
    v255 = a1;
    v254 = a4;
    if (v83 < v82 / v244)
    {
      v84 = v83 * v244;
      if (a4 < a1 || a1 + v84 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v239 = (a4 + v84);
      v253 = a4 + v84;
      v87 = v84 < 1;
      v88 = v240;
      if (!v87 && a2 < v243)
      {
        v89 = (v53 + 48);
        v232 = (v246 + 48);
        v228 = (v246 + 32);
        v231 = (v246 + 8);
        v238 = v52;
        v222 = v76;
        while (1)
        {
          v246 = a2;
          sub_1D1C66B60(a2, v80, type metadata accessor for BoxedTileInfoBearer);
          v247 = a4;
          sub_1D1C66B60(a4, v76, type metadata accessor for BoxedTileInfoBearer);
          v90 = *(v248 + 24);
          v91 = v245;
          sub_1D1C66B60(&v80[v90], v245, type metadata accessor for BoxedTileInfoBearer.TileSort);
          v92 = *v89;
          v93 = (*v89)(v91, 3, v52);
          v94 = v91;
          v95 = v237;
          if (v93)
          {
            goto LABEL_22;
          }

          v235 = a1;
          v96 = v225;
          sub_1D1C72E80(v245, v225, type metadata accessor for StaticUserActionPrediction);
          sub_1D1C66B60(&v76[v90], v95, type metadata accessor for BoxedTileInfoBearer.TileSort);
          if (v92(v95, 3, v52))
          {
            break;
          }

          v114 = v95;
          v115 = v221;
          sub_1D1C72E80(v114, v221, type metadata accessor for StaticUserActionPrediction);
          if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || *&v96[v238[5]] != *(v115 + v238[5]))
          {
            goto LABEL_49;
          }

          v116 = *(v215 + 48);
          v117 = &v96[v238[6]];
          v118 = v238[6];
          sub_1D1741C08(v117, v88, &qword_1EC642590, qword_1D1E71260);
          v233 = v116;
          sub_1D1741C08(v221 + v118, v88 + v116, &qword_1EC642590, qword_1D1E71260);
          v119 = *v232;
          v120 = v88;
          v121 = v88;
          v122 = v214;
          if ((*v232)(v120, 1, v214) == 1)
          {
            v123 = v119(v121 + v233, 1, v122);
            v115 = v221;
            if (v123 != 1)
            {
              goto LABEL_48;
            }

            sub_1D1741A30(v121, &qword_1EC642590, qword_1D1E71260);
            v96 = v225;
          }

          else
          {
            sub_1D1741C08(v121, v213, &qword_1EC642590, qword_1D1E71260);
            if (v119(v121 + v233, 1, v122) == 1)
            {
              (*v231)(v213, v122);
              v115 = v221;
LABEL_48:
              sub_1D1741A30(v121, &qword_1EC642980, &unk_1D1E6E6E0);
              v96 = v225;
LABEL_49:
              sub_1D1C72E20(v115, type metadata accessor for StaticUserActionPrediction);
              sub_1D1C72E20(v96, type metadata accessor for StaticUserActionPrediction);
              v102 = v236;
              v52 = v238;
              v76 = v222;
              a1 = v235;
              goto LABEL_50;
            }

            v137 = v210;
            (*v228)(v210, v121 + v233, v122);
            sub_1D1C75134(&qword_1EE07D170, MEMORY[0x1E69695A8]);
            LODWORD(v233) = sub_1D1E6775C();
            v138 = *v231;
            (*v231)(v137, v122);
            v138(v213, v122);
            sub_1D1741A30(v121, &qword_1EC642590, qword_1D1E71260);
            v115 = v221;
            v96 = v225;
            if ((v233 & 1) == 0)
            {
              goto LABEL_49;
            }
          }

          v52 = v238;
          v139 = v238[7];
          v140 = v96[v139];
          v141 = *(v115 + v139);
          sub_1D1C72E20(v115, type metadata accessor for StaticUserActionPrediction);
          sub_1D1C72E20(v96, type metadata accessor for StaticUserActionPrediction);
          v142 = v140 == v141;
          v102 = v236;
          v76 = v222;
          a1 = v235;
          if (v142)
          {
LABEL_39:
            v103 = v248;
            v104 = &v80[*(v248 + 20)];
            v106 = *(v104 + 3);
            v105 = *(v104 + 4);
            __swift_project_boxed_opaque_existential_1(v104, v106);
            v251 = (*(v105 + 56))(v106, v105);
            v252 = v107;
            v108 = &v76[*(v103 + 20)];
            v110 = *(v108 + 3);
            v109 = *(v108 + 4);
            __swift_project_boxed_opaque_existential_1(v108, v110);
            v249 = (*(v109 + 56))(v110, v109);
            v250 = v111;
            sub_1D17D8EF0();
            v112 = sub_1D1E6860C();

            v113 = v112 == -1;
            goto LABEL_40;
          }

LABEL_50:
          v124 = v234;
          sub_1D1C66B60(&v80[v90], v234, type metadata accessor for BoxedTileInfoBearer.TileSort);
          if (v92(v124, 3, v52))
          {
            goto LABEL_53;
          }

          sub_1D1C72E80(v234, v102, type metadata accessor for StaticUserActionPrediction);
          v124 = v220;
          sub_1D1C66B60(&v76[v90], v220, type metadata accessor for BoxedTileInfoBearer.TileSort);
          if (v92(v124, 3, v52))
          {
            sub_1D1C72E20(v102, type metadata accessor for StaticUserActionPrediction);
LABEL_53:
            sub_1D1C72E20(v124, type metadata accessor for BoxedTileInfoBearer.TileSort);
            v125 = v229;
            sub_1D1C66B60(&v80[v90], v229, type metadata accessor for BoxedTileInfoBearer.TileSort);
            v126 = v92(v125, 3, v52);
            if (v126 > 1)
            {
              if (v126 == 2)
              {
                v127 = 3;
              }

              else
              {
                v127 = 4;
              }
            }

            else if (v126)
            {
              v127 = 2;
            }

            else
            {
              sub_1D1C72E20(v229, type metadata accessor for BoxedTileInfoBearer.TileSort);
              v127 = 1;
            }

            v128 = v230;
            sub_1D1C66B60(&v76[v90], v230, type metadata accessor for BoxedTileInfoBearer.TileSort);
            v129 = v92(v128, 3, v52);
            if (v129 > 1)
            {
              a2 = v246;
              a4 = v247;
              if (v129 == 2)
              {
                v130 = 3;
              }

              else
              {
                v130 = 4;
              }
            }

            else
            {
              a2 = v246;
              a4 = v247;
              if (v129)
              {
                v130 = 2;
              }

              else
              {
                sub_1D1C72E20(v230, type metadata accessor for BoxedTileInfoBearer.TileSort);
                v130 = 1;
              }
            }

            v113 = v127 < v130;
            goto LABEL_68;
          }

          v133 = v102;
          v134 = v216;
          sub_1D1C72E80(v124, v216, type metadata accessor for StaticUserActionPrediction);
          v135 = *(v133 + v52[5]);
          sub_1D1C72E20(v133, type metadata accessor for StaticUserActionPrediction);
          v136 = *(v134 + v52[5]);
          sub_1D1C72E20(v134, type metadata accessor for StaticUserActionPrediction);
          v113 = v136 < v135;
LABEL_40:
          a2 = v246;
          a4 = v247;
LABEL_68:
          sub_1D1C72E20(v76, type metadata accessor for BoxedTileInfoBearer);
          sub_1D1C72E20(v80, type metadata accessor for BoxedTileInfoBearer);
          if (v113)
          {
            v131 = v244;
            if (a1 < a2 || a1 >= a2 + v244)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v131;
          }

          else
          {
            v131 = v244;
            v132 = a4 + v244;
            if (a1 < a4 || a1 >= v132)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v254 = v132;
            a4 += v131;
          }

          a1 += v131;
          v255 = a1;
          v88 = v240;
          if (a4 >= v239 || a2 >= v243)
          {
            goto LABEL_165;
          }
        }

        sub_1D1C72E20(v96, type metadata accessor for StaticUserActionPrediction);
        v94 = v95;
        v52 = v238;
        v76 = v222;
        a1 = v235;
LABEL_22:
        sub_1D1C72E20(v94, type metadata accessor for BoxedTileInfoBearer.TileSort);
        v97 = v241;
        sub_1D1C66B60(&v80[v90], v241, type metadata accessor for BoxedTileInfoBearer.TileSort);
        v98 = v92(v97, 3, v52);
        if (v98 > 1)
        {
          if (v98 == 2)
          {
            v99 = 3;
          }

          else
          {
            v99 = 4;
          }
        }

        else if (v98)
        {
          v99 = 2;
        }

        else
        {
          sub_1D1C72E20(v241, type metadata accessor for BoxedTileInfoBearer.TileSort);
          v99 = 1;
        }

        v100 = v242;
        sub_1D1C66B60(&v76[v90], v242, type metadata accessor for BoxedTileInfoBearer.TileSort);
        v101 = v92(v100, 3, v52);
        if (v101 > 1)
        {
          v102 = v236;
          if (v101 == 2)
          {
            if (v99 == 3)
            {
              goto LABEL_39;
            }
          }

          else if (v99 == 4)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v102 = v236;
          if (v101)
          {
            if (v99 == 2)
            {
              goto LABEL_39;
            }
          }

          else
          {
            sub_1D1C72E20(v242, type metadata accessor for BoxedTileInfoBearer.TileSort);
            if (v99 == 1)
            {
              goto LABEL_39;
            }
          }
        }

        goto LABEL_50;
      }

      goto LABEL_165;
    }

    v85 = v82 / v244 * v244;
    v245 = v78;
    if (a4 < a2 || a2 + v85 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v86 = v243;
    }

    else
    {
      v86 = v243;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v143 = a4 + v85;
    if (v85 < 1)
    {
LABEL_164:
      v255 = a2;
      v253 = v143;
LABEL_165:
      sub_1D1DC7144(&v255, &v254, &v253);
      return 1;
    }

    v247 = a4;
    v144 = -v244;
    v244 = v53 + 48;
    v230 = (v246 + 48);
    v222 = (v246 + 32);
    v225 = (v246 + 8);
    v145 = a4 + v85;
    v146 = v228;
    v147 = v239;
    v238 = v52;
    v243 = v144;
LABEL_91:
    v234 = v143;
    v148 = a2;
    a2 += v144;
    v246 = a2;
    v237 = v148;
    while (1)
    {
      if (v148 <= a1)
      {
        v255 = v148;
        v253 = v234;
        goto LABEL_165;
      }

      v241 = v145;
      v242 = v86;
      v236 = v143;
      v240 = (v145 + v144);
      sub_1D1C66B60(v145 + v144, v147, type metadata accessor for BoxedTileInfoBearer);
      sub_1D1C66B60(a2, v245, type metadata accessor for BoxedTileInfoBearer);
      v149 = *(v248 + 24);
      v150 = v235;
      sub_1D1C66B60(v147 + v149, v235, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v151 = *v244;
      v152 = (*v244)(v150, 3, v52);
      v153 = v150;
      v154 = v233;
      if (v152)
      {
        goto LABEL_99;
      }

      v155 = v226;
      sub_1D1C72E80(v235, v226, type metadata accessor for StaticUserActionPrediction);
      sub_1D1C66B60(v245 + v149, v146, type metadata accessor for BoxedTileInfoBearer.TileSort);
      if (v151(v146, 3, v52))
      {
        break;
      }

      v178 = v219;
      sub_1D1C72E80(v146, v219, type metadata accessor for StaticUserActionPrediction);
      v179 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      v180 = v178;
      v181 = v226;
      a2 = v246;
      if ((v179 & 1) == 0 || *(v226 + v52[5]) != *(v178 + v52[5]))
      {
        goto LABEL_126;
      }

      v182 = v52[6];
      v183 = *(v215 + 48);
      sub_1D1741C08(v226 + v182, v154, &qword_1EC642590, qword_1D1E71260);
      v229 = v183;
      sub_1D1741C08(v219 + v182, v154 + v183, &qword_1EC642590, qword_1D1E71260);
      v184 = *v230;
      v185 = v154;
      v186 = v214;
      if ((*v230)(v185, 1, v214) == 1)
      {
        v187 = v184(v233 + v229, 1, v186);
        a2 = v246;
        v181 = v226;
        if (v187 != 1)
        {
          goto LABEL_125;
        }

        sub_1D1741A30(v233, &qword_1EC642590, qword_1D1E71260);
        v180 = v219;
      }

      else
      {
        v188 = v233;
        sub_1D1741C08(v233, v211, &qword_1EC642590, qword_1D1E71260);
        if (v184(v188 + v229, 1, v186) == 1)
        {
          (*v225)(v211, v186);
          a2 = v246;
          v181 = v226;
LABEL_125:
          sub_1D1741A30(v233, &qword_1EC642980, &unk_1D1E6E6E0);
          v180 = v219;
LABEL_126:
          sub_1D1C72E20(v180, type metadata accessor for StaticUserActionPrediction);
          sub_1D1C72E20(v181, type metadata accessor for StaticUserActionPrediction);
          v147 = v239;
          goto LABEL_127;
        }

        v204 = v210;
        (*v222)(v210, v233 + v229, v186);
        sub_1D1C75134(&qword_1EE07D170, MEMORY[0x1E69695A8]);
        LODWORD(v229) = sub_1D1E6775C();
        v205 = *v225;
        (*v225)(v204, v186);
        v205(v211, v186);
        sub_1D1741A30(v233, &qword_1EC642590, qword_1D1E71260);
        a2 = v246;
        v180 = v219;
        v181 = v226;
        if ((v229 & 1) == 0)
        {
          goto LABEL_126;
        }
      }

      v206 = v52[7];
      v207 = *(v181 + v206);
      v208 = *(v180 + v206);
      sub_1D1C72E20(v180, type metadata accessor for StaticUserActionPrediction);
      sub_1D1C72E20(v181, type metadata accessor for StaticUserActionPrediction);
      v142 = v207 == v208;
      a2 = v246;
      v147 = v239;
      if (v142)
      {
LABEL_116:
        v161 = v146;
        v162 = v248;
        v163 = (v147 + *(v248 + 20));
        v165 = v163[3];
        v164 = v163[4];
        __swift_project_boxed_opaque_existential_1(v163, v165);
        v251 = (*(v164 + 56))(v165, v164);
        v252 = v166;
        v167 = v245;
        v168 = (v245 + *(v162 + 20));
        v170 = v168[3];
        v169 = v168[4];
        __swift_project_boxed_opaque_existential_1(v168, v170);
        v171 = v170;
        a2 = v246;
        v249 = (*(v169 + 56))(v171, v169);
        v250 = v172;
        sub_1D17D8EF0();
        v173 = sub_1D1E6860C();

        v174 = v167;
        v147 = v239;
        v175 = v173 == -1;
LABEL_117:
        v177 = v242;
        v176 = v243;
        goto LABEL_147;
      }

LABEL_127:
      v189 = v227;
      sub_1D1C66B60(v147 + v149, v227, type metadata accessor for BoxedTileInfoBearer.TileSort);
      if (!v151(v189, 3, v52))
      {
        v190 = v217;
        sub_1D1C72E80(v227, v217, type metadata accessor for StaticUserActionPrediction);
        v189 = v218;
        sub_1D1C66B60(v245 + v149, v218, type metadata accessor for BoxedTileInfoBearer.TileSort);
        if (!v151(v189, 3, v52))
        {
          v200 = v52;
          v161 = v146;
          v201 = v212;
          sub_1D1C72E80(v189, v212, type metadata accessor for StaticUserActionPrediction);
          v202 = *(v190 + v200[5]);
          sub_1D1C72E20(v190, type metadata accessor for StaticUserActionPrediction);
          v203 = *(v201 + v200[5]);
          sub_1D1C72E20(v201, type metadata accessor for StaticUserActionPrediction);
          v175 = v203 < v202;
          v174 = v245;
          v147 = v239;
          goto LABEL_117;
        }

        sub_1D1C72E20(v190, type metadata accessor for StaticUserActionPrediction);
        v147 = v239;
      }

      sub_1D1C72E20(v189, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v191 = v223;
      sub_1D1C66B60(v147 + v149, v223, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v192 = v151(v191, 3, v52);
      if (v192 > 1)
      {
        if (v192 == 2)
        {
          v193 = 3;
        }

        else
        {
          v193 = 4;
        }
      }

      else if (v192)
      {
        v193 = 2;
      }

      else
      {
        sub_1D1C72E20(v223, type metadata accessor for BoxedTileInfoBearer.TileSort);
        v193 = 1;
      }

      v194 = v245 + v149;
      v195 = v224;
      sub_1D1C66B60(v194, v224, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v196 = v151(v195, 3, v52);
      if (v196 > 1)
      {
        v177 = v242;
        v176 = v243;
        if (v196 == 2)
        {
          v197 = 3;
        }

        else
        {
          v197 = 4;
        }

        v174 = v245;
      }

      else
      {
        if (v196)
        {
          v197 = 2;
        }

        else
        {
          sub_1D1C72E20(v224, type metadata accessor for BoxedTileInfoBearer.TileSort);
          v197 = 1;
        }

        v174 = v245;
        v177 = v242;
        v176 = v243;
      }

      v161 = v146;
      v175 = v193 < v197;
LABEL_147:
      v86 = v177 + v176;
      v198 = v177;
      sub_1D1C72E20(v174, type metadata accessor for BoxedTileInfoBearer);
      sub_1D1C72E20(v147, type metadata accessor for BoxedTileInfoBearer);
      if (v175)
      {
        if (v198 < v237 || v86 >= v237)
        {
          swift_arrayInitWithTakeFrontToBack();
          v143 = v236;
          v146 = v161;
        }

        else
        {
          v142 = v198 == v237;
          v143 = v236;
          v146 = v161;
          if (!v142)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v145 = v241;
        v144 = v243;
        v52 = v238;
        if (v241 <= v247)
        {
          goto LABEL_164;
        }

        goto LABEL_91;
      }

      v199 = v240;
      v143 = v240;
      if (v198 < v241 || v86 >= v241)
      {
        swift_arrayInitWithTakeFrontToBack();
        v146 = v161;
      }

      else
      {
        v142 = v198 == v241;
        v146 = v161;
        if (!v142)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v145 = v143;
      v144 = v243;
      v148 = v237;
      v52 = v238;
      if (v199 <= v247)
      {
        a2 = v237;
        goto LABEL_164;
      }
    }

    sub_1D1C72E20(v155, type metadata accessor for StaticUserActionPrediction);
    v153 = v146;
    a2 = v246;
LABEL_99:
    sub_1D1C72E20(v153, type metadata accessor for BoxedTileInfoBearer.TileSort);
    v156 = v231;
    sub_1D1C66B60(v147 + v149, v231, type metadata accessor for BoxedTileInfoBearer.TileSort);
    v157 = v151(v156, 3, v52);
    if (v157 > 1)
    {
      if (v157 == 2)
      {
        v158 = 3;
      }

      else
      {
        v158 = 4;
      }
    }

    else if (v157)
    {
      v158 = 2;
    }

    else
    {
      sub_1D1C72E20(v231, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v158 = 1;
    }

    v159 = v232;
    sub_1D1C66B60(v245 + v149, v232, type metadata accessor for BoxedTileInfoBearer.TileSort);
    v160 = v151(v159, 3, v52);
    if (v160 > 1)
    {
      v146 = v228;
      v147 = v239;
      if (v160 == 2)
      {
        if (v158 == 3)
        {
          goto LABEL_116;
        }
      }

      else if (v158 == 4)
      {
        goto LABEL_116;
      }
    }

    else
    {
      v146 = v228;
      v147 = v239;
      if (v160)
      {
        if (v158 == 2)
        {
          goto LABEL_116;
        }
      }

      else
      {
        sub_1D1C72E20(v232, type metadata accessor for BoxedTileInfoBearer.TileSort);
        if (v158 == 1)
        {
          goto LABEL_116;
        }
      }
    }

    goto LABEL_127;
  }

LABEL_168:
  __break(1u);
  return result;
}